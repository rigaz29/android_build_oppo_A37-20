#!/usr/bin/env python3
"""Index every backport in the CentOS 7 / RHEL 7 kernel changelog against the A37 kernel.

For each changelog entry ("- [subsys] subject (author) [bz] {CVE}") this finds:
  * the mainline commit with the same subject (sha + first release containing it),
  * whether the A37 kernel history already has a commit with that subject,
  * whether the code is relevant to the A37 build (arch, hardware, .config),
and writes the full table plus summaries.

Inputs (all local):
  --spec      CentOS 7 kernel.spec (has the full %changelog)
  --mainline  mainline git repo with tags (commit metadata is enough: clone with
              --filter=tree:0)
  --a37       A37 kernel git repo, --a37-ref branch to read history from
  --config    A37 .config used for the build

Subject matching is a heuristic: reworded RHEL subjects or squashed upstream
fixes will not match. See plan-64bit/centos7-backport/README.md.
"""
import argparse
import collections
import csv
import lzma
import os
import re
import subprocess
import sys

# ---------------------------------------------------------------- parsing

HDR = re.compile(r'^\* (\w{3} \w{3} +\d{1,2} \d{4}) (.*?)(?: \[(3\.10\.0-[^\]]+)\])?\s*$')
ENT = re.compile(r'^- (?:\[(?P<tag>[^\]]+)\] )?(?P<subj>.+?) \((?P<author>[^()]*)\)'
                 r'(?: \[(?P<bz>[^\]]*)\])?(?: \{(?P<cve>[^}]*)\})?\s*$')
ENT_LOOSE = re.compile(r'^- (?:\[(?P<tag>[^\]]+)\] )?(?P<subj>.+?)\s*$')

PREFIX_STRIP = re.compile(
    r'^(?:upstream|backport|fromlist|fromgit|android|chromium|noupstream|cherry-pick|'
    r'pick|rhel(?:[- ]?\d+(?:\.\d+)*)?|partial backport|partial|revert)\s*:\s*', re.I)


def norm(s):
    s = s.strip()
    for _ in range(4):
        n = PREFIX_STRIP.sub('', s)
        if n == s:
            break
        s = n
    s = re.sub(r'\s+', ' ', s).strip().rstrip('.').strip()
    return s.lower()


LOOSE_LEAD = re.compile(r'^(?:net|alsa|sound|mm|fs|kernel|block|crypto|usb|drivers|lib|include|'
                        r'scsi|md|security|core|treewide)\s*:\s*')


def loose(s):
    """Second-chance key: RHEL often rewrites prefixes ("alsa: asoc:" for "ASoC:",
    "mm: oom:" for "mm, oom:", drops "net: " in front of "sched:")."""
    s = norm(s).replace(', ', ': ')
    s = re.sub(r'\s*:\s*', ': ', s)
    for _ in range(3):
        n = LOOSE_LEAD.sub('', s)
        if n == s:
            break
        s = n
    return s


def parse_changelog(path):
    text = open(path, encoding='utf-8', errors='replace').read().split('\n')
    start = next(i for i, l in enumerate(text) if l.startswith('%changelog'))
    rel, date, rows = 'pre-GA', '', []
    for line in text[start + 1:]:
        if line.startswith('* '):
            m = HDR.match(line)
            if m:
                date, rel = m.group(1), (m.group(3) or 'pre-GA')
            continue
        if not line.startswith('- '):
            continue
        m = ENT.match(line) or ENT_LOOSE.match(line)
        d = m.groupdict()
        subj = d['subj']
        revert = False
        rm = re.match(r'^Revert:? "?(?:\[([^\]]+)\] )?(.*?)"?$', subj)
        if rm:
            revert = True
            if not d.get('tag') and rm.group(1):
                d['tag'] = rm.group(1)
            subj = rm.group(2)
        rows.append({
            'rhel_release': rel, 'date': date, 'tag': (d.get('tag') or '').strip(),
            'subject': subj.strip(), 'rh_author': (d.get('author') or '').strip(),
            'bz': (d.get('bz') or '').strip(), 'cve': (d.get('cve') or '').strip(),
            'revert': revert,
        })
    return rows


# ---------------------------------------------------------------- git data

def git(repo, *args):
    return subprocess.run(['git', '-C', repo] + list(args), check=True,
                          capture_output=True, text=True, errors='replace').stdout


def mainline_index(repo):
    tags = [t for t in git(repo, 'tag', '-l', 'v*').split()
            if re.fullmatch(r'v\d+\.\d+', t)]
    tags.sort(key=lambda t: tuple(int(x) for x in t[1:].split('.')))
    tags = tags[tags.index('v3.10'):]
    ranges = [(tags[i - 1], tags[i], tags[i][1:]) for i in range(1, len(tags))]
    ranges.append((tags[-1], 'HEAD', 'post-' + tags[-1][1:]))
    idx, lidx, count = {}, {}, collections.Counter()
    for a, b, ver in ranges:
        out = git(repo, 'log', '--no-merges', '--format=%H%x09%s', f'{a}..{b}')
        for line in out.splitlines():
            sha, _, s = line.partition('\t')
            k = norm(s)
            count[k] += 1
            idx.setdefault(k, (sha[:12], ver))
            lidx.setdefault(loose(s), (sha[:12], ver))
    return idx, lidx, count


def a37_subjects(repo, ref):
    subs = git(repo, 'log', '--format=%s', ref).splitlines()
    return {norm(s) for s in subs}, {loose(s) for s in subs}


def a37_references(repo, ref):
    """Upstream SHAs and CVE ids named in A37 commit messages. Stable backports say
    "commit <sha> upstream.", Android/CAF backports "(cherry picked from commit <sha>)",
    security backports often name the CVE."""
    shas, cves = set(), set()
    p = subprocess.Popen(['git', '-C', repo, 'log', '--format=%B', ref], stdout=subprocess.PIPE,
                         text=True, errors='replace')
    sha_rx, cve_rx = re.compile(r'\b[0-9a-f]{40}\b'), re.compile(r'CVE-\d{4}-\d{4,}')
    for line in p.stdout:
        if 'upstream' in line or 'cherry picked' in line or 'commit ' in line:
            for m in sha_rx.findall(line):
                shas.add(m[:12])
        if 'CVE-' in line:
            cves.update(cve_rx.findall(line))
    p.wait()
    return shas, cves


def kconfig_symbols(tree):
    syms = set()
    for root, _, files in os.walk(tree):
        if '/.git' in root or root.startswith(os.path.join(tree, 'out')):
            continue
        for f in files:
            if f.startswith('Kconfig'):
                for line in open(os.path.join(root, f), errors='replace'):
                    m = re.match(r'\s*(?:menu)?config\s+([A-Z0-9_]+)', line)
                    if m:
                        syms.add(m.group(1))
    return syms


def enabled_symbols(config):
    return {m.group(1) for m in (re.match(r'CONFIG_([A-Z0-9_]+)=(y|m)', l)
                                 for l in open(config)) if m}


# ---------------------------------------------------------------- relevance

TOOLS_TAGS = {'tools', 'scripts', 'documentation', 'samples', 'maintainers', 'makefile',
              'redhat', 'rhel', 'fedora', 'cpupower'}
ARCH_TAGS = {'x86', 'x86_64', 'powerpc', 'ppc64', 's390', 's390x', 'kvm', 'hv', 'xen', 'virt',
             'vfio', 'vhost', 'virtio', 'virtio_scsi', 'acpi', 'pci', 'pci/aer', 'pnp', 'edac',
             'iommu', 'efi', 'eisa', 'mcheck', 'ras', 'agp', 'vga', 'platform', 'powercap',
             'idle', 'thunderbolt', 'ntb', 'nvdimm', 'dax', 'unisys', 'hwtracing', 'mei', 'ipmi',
             'pcmcia', 'firewire', 'isdn', 'atm', 'ioat', 'arch', 'kdump', 'cpufreq', 'cpuidle',
             'hwrng'}
HW_TAGS = {'netdrv', 'ethernet', 'infiniband', 'inifniband', 'infinband', 'ib', 'rdma',
           'ib_isert', 'scsi', 'qla_target', 'qla2_target', 'qla2xxx', 'lpfc', 'bfa', 'bnx2fc',
           'target', 'iscsi-target', 'iser-target', 'iscsi', 'tcm', 'tcm_fc', 'sbp-target',
           'xcopy', 'enclosure', 'qscsi', 'tcmu', 'nvme', 'nvme-fc', 'nvme-rdma', 'nvme-loop',
           'nvme-pci', 'nvme-fabrics', 'nvmet-fc', 'ata', 'ahci', 'libata', 'gpu', 'drm',
           'video', 'iio', 'hwmon', 'mfd', 'mailbox', 'dma', 'rtc', 'spi', 'pwm', 'leds',
           'devfreq', 'nvmem', 'mtd', 'nfc', 'ptp', 'uio', 'cdrom', 'message', 'irq_poll',
           'drivers', 'oprofile', 'staging', 'scsi/block', 'qla2xxx'}
# hardware tags that still contain generic code used on the A37: go through the rules
REFINE_TAGS = {'usb', 'mmc', 'tty', 'serial', 'vt', 'char', 'sound', 'alsa', 'audio',
               'bluetooth', 'wireless', 'input', 'hid', 'i2c', 'gpio', 'pinctrl', 'media',
               'watchdog', 'md', 'dm', 'thermal', 'clocksource', 'clk', 'of', 'base', 'zram',
               'misc', 'dma-buf', 'firmware', 'power', 'fwnode', 'whatchdog'}

P = r'(?:[:/ ]|$|-)'      # what may follow a prefix

RULES = [
    # architectures and platforms, whatever the tag
    (r'^(x86|x86_64|i386|powerpc|ppc|s390|kvm|xen|hv|hv_\w+|hyper-?v|vmbus|acpi|pci|efi|'
     r'intel_\w+|amd\w*|iommu/(vt-d|amd)|vfio|vhost|virtio\w*|kexec|kdump|crash|microcode|'
     r'mce|edac|ras|apic|ioapic|hpet|tsc|dmar|tboot|perf/x86|perf x86|sev|tdx|nvdimm|'
     r'libnvdimm|cxl|ntb|thunderbolt|ipmi|mei|platform/x86|cpufreq: intel|intel_pstate|'
     r'intel_idle|powercap|rapl|tpm_crb|tpm_tis)' + P, 'na-arch'),
    (r'^(arm64|arm|aarch64)' + P, 'review'),

    # filesystems
    (r'^xfs' + P, 'XFS_FS'), (r'^(nfs|nfsv[234][.0-9]*|nfs4|pnfs|nfs_common|nfs41)' + P, 'NFS_FS'),
    (r'^nfsd' + P, 'NFSD'), (r'^lockd' + P, 'LOCKD'),
    (r'^(sunrpc|rpc|svcrdma|xprtrdma|rpcrdma|svcrpc|rpc_pipefs|gss|rpcsec_gss|auth_gss)' + P, 'SUNRPC'),
    (r'^(cifs|smb|smb2|smb3|smb311)' + P, 'CIFS'), (r'^gfs2' + P, 'GFS2_FS'), (r'^dlm' + P, 'DLM'),
    (r'^btrfs' + P, 'BTRFS_FS'), (r'^(ceph|libceph)' + P, 'CEPH_LIB'), (r'^rbd' + P, 'BLK_DEV_RBD'),
    (r'^(ext4|jbd2)' + P, 'EXT4_FS'), (r'^(ext3|jbd)' + P, 'EXT3_FS'), (r'^ext2' + P, 'EXT2_FS'),
    (r'^(fuse|virtiofs|cuse)' + P, 'FUSE_FS'), (r'^(overlayfs|ovl|overlay)' + P, 'OVERLAY_FS'),
    (r'^squashfs' + P, 'SQUASHFS'), (r'^isofs' + P, 'ISO9660_FS'), (r'^udf' + P, 'UDF_FS'),
    (r'^(fat|vfat|msdos)' + P, 'FAT_FS'), (r'^(autofs|autofs4)' + P, 'AUTOFS4_FS'),
    (r'^fscache' + P, 'FSCACHE'), (r'^cachefiles' + P, 'CACHEFILES'),
    (r'^configfs' + P, 'CONFIGFS_FS'), (r'^debugfs' + P, 'DEBUG_FS'), (r'^pstore' + P, 'PSTORE'),
    (r'^(quota|dquot)' + P, 'QUOTA'), (r'^ecryptfs' + P, 'ECRYPT_FS'), (r'^nilfs2?' + P, 'NILFS2_FS'),
    (r'^(hfs|hfsplus)' + P, 'HFSPLUS_FS'), (r'^ocfs2' + P, 'OCFS2_FS'), (r'^jffs2' + P, 'JFFS2_FS'),
    (r'^ubifs' + P, 'UBIFS_FS'), (r'^afs' + P, 'AFS_FS'), (r'^(9p|net/9p)' + P, 'NET_9P'),
    (r'^cramfs' + P, 'CRAMFS'), (r'^ntfs' + P, 'NTFS_FS'), (r'^exportfs' + P, 'EXPORTFS'),
    (r'^(userfaultfd|uffd)' + P, 'USERFAULTFD'), (r'^(fs/)?dax' + P, 'FS_DAX'),
    (r'^iomap' + P, 'FS_DAX'), (r'^fanotify' + P, 'FANOTIFY'), (r'^inotify' + P, 'INOTIFY_USER'),
    (r'^dnotify' + P, 'DNOTIFY'), (r'^kernfs' + P, 'KERNFS'), (r'^posix_acl' + P, 'FS_POSIX_ACL'),
    (r'^aio' + P, 'AIO'), (r'^(eventpoll|epoll)' + P, 'EPOLL'), (r'^eventfd' + P, 'EVENTFD'),
    (r'^signalfd' + P, 'SIGNALFD'), (r'^timerfd' + P, 'TIMERFD'),
    (r'^binfmt_misc' + P, 'BINFMT_MISC'), (r'^(binfmt_elf|binfmt)' + P, 'BINFMT_ELF'),
    (r'^coredump' + P, 'COREDUMP'), (r'^(proc|procfs|fs/proc)' + P, 'PROC_FS'),
    (r'^sysfs' + P, 'SYSFS'), (r'^(hugetlbfs)' + P, 'HUGETLBFS'),

    # block
    (r'^(blk-mq|blk_mq|null_blk|scsi-mq)' + P, 'BLK_MQ'), (r'^(bfq|block/bfq|bfq-iosched)' + P, 'IOSCHED_BFQ'),
    (r'^(blk-throttle|blk-throtl|throttle)' + P, 'BLK_DEV_THROTTLING'),
    (r'^(blk-cgroup|blkcg)' + P, 'BLK_CGROUP'), (r'^(cfq|cfq-iosched)' + P, 'IOSCHED_CFQ'),
    (r'^loop' + P, 'BLK_DEV_LOOP'), (r'^nbd' + P, 'BLK_DEV_NBD'), (r'^(bcache)' + P, 'BCACHE'),
    (r'^drbd' + P, 'BLK_DEV_DRBD'), (r'^brd' + P, 'BLK_DEV_RAM'), (r'^zram' + P, 'ZRAM'),
    (r'^(dm|dm-[\w-]+|device-mapper|dm raid|dm thin|dm cache|dm mpath|dm crypt|dm verity|dm snapshot|'
     r'dm mirror|dm bufio|dm integrity|dm writecache|dm zoned|dm era|dm stats|dm ioctl|dm table|'
     r'dm log writes|dm-raid|dm-crypt|dm-verity|dm-thin|dm-cache|dm-mpath)' + P, 'BLK_DEV_DM'),
    (r'^(md|raid0|raid1|raid5|raid10|raid456|raid6|md-cluster|md/raid\d*|md/bitmap|bitmap)' + P, 'MD'),
    (r'^(sd|sr|sg|scsi|scsi_dh|scsi_debug|ses|st)' + P, 'na-hw'),

    # networking
    (r'^(sctp)' + P, 'IP_SCTP'), (r'^dccp' + P, 'IP_DCCP'), (r'^rds' + P, 'RDS'), (r'^tipc' + P, 'TIPC'),
    (r'^(openvswitch|ovs)' + P, 'OPENVSWITCH'), (r'^(bridge|br_netfilter|br)' + P, 'BRIDGE'),
    (r'^(bonding|bond)' + P, 'BONDING'), (r'^team' + P, 'NET_TEAM'), (r'^(vlan|8021q)' + P, 'VLAN_8021Q'),
    (r'^(vxlan)' + P, 'VXLAN'), (r'^geneve' + P, 'GENEVE'), (r'^(macvlan|macvtap)' + P, 'MACVLAN'),
    (r'^ipvlan' + P, 'IPVLAN'), (r'^veth' + P, 'VETH'), (r'^(tun|tap|tuntap)' + P, 'TUN'),
    (r'^(l2tp)' + P, 'L2TP'), (r'^(ppp|pppoe|pptp|ppp_generic|pppox)' + P, 'PPP'),
    (r'^(ip_gre|gre|ipgre)' + P, 'NET_IPGRE'), (r'^ip6_gre' + P, 'IPV6_GRE'), (r'^ipip' + P, 'NET_IPIP'),
    (r'^sit' + P, 'IPV6_SIT'), (r'^(can)' + P, 'CAN'), (r'^(bluetooth|bt)' + P, 'BT'),
    (r'^mac80211' + P, 'MAC80211'), (r'^(cfg80211|nl80211|wireless|wext)' + P, 'CFG80211'),
    (r'^(iwlwifi|iwlmvm|iwl\w*|ath\d*k?|ath|brcmfmac|brcmsmac|brcm\w*|rtl\w*|rtlwifi|rt2x00|mwifiex|'
     r'mt76|mt7\w+|wil6210|qtnfmac|libertas|ipw2x00|wlcore|wl\d+|b43\w*|carl9170|p54|zd1211rw)' + P, 'na-hw'),
    (r'^nfc' + P, 'NFC'),
    (r'^(af_key|pf_key|key)' + P, 'NET_KEY'),
    (r'^(xfrm|ipsec|esp|esp4|esp6|ah|ah4|ah6|ipcomp|ipcomp6|xfrm4|xfrm6|vti|ip_vti|ip6_vti)' + P, 'XFRM'),
    (r'^(netfilter: )?(nf_tables|nft_\w+|nftables|nf_flow_table)' + P, 'NF_TABLES'),
    (r'^netfilter: (ipset|ip_set)' + P, 'IP_SET'), (r'^(ipset|ip_set)' + P, 'IP_SET'),
    (r'^(netfilter: )?(ipvs|ip_vs)' + P, 'IP_VS'),
    (r'^netfilter: (ebtables|ebt_\w+|bridge)' + P, 'BRIDGE_NF_EBTABLES'),
    (r'^netfilter: (arptables|arp_tables)' + P, 'IP_NF_ARPTABLES'),
    (r'^netfilter: (nf_conntrack\w*|conntrack|ctnetlink|nf_ct_\w+|cttimeout)' + P, 'NF_CONNTRACK'),
    (r'^netfilter: (nf_nat\w*|nat)' + P, 'NF_NAT'),
    (r'^netfilter: (x_tables|xt_\w+|iptables|ip6tables|ip_tables|ip6_tables|ip6t_\w+|ipt_\w+)' + P,
     'NETFILTER_XTABLES'),
    (r'^netfilter: (nfnetlink_queue|nfqueue|nf_queue)' + P, 'NETFILTER_NETLINK_QUEUE'),
    (r'^netfilter: (nfnetlink_log|nf_log)' + P, 'NETFILTER_NETLINK_LOG'),
    (r'^(netfilter|nf|nfnetlink)' + P, 'NETFILTER'),
    (r'^(net[/_ ]?sched|sch_\w+|cls_\w+|act_\w+|tc|net/sched)' + P, 'NET_SCHED'),
    (r'^(mpls)' + P, 'MPLS'), (r'^(dsa|net: dsa)' + P, 'NET_DSA'),
    (r'^(switchdev|devlink|dcb|dcbnl)' + P, 'na-hw'), (r'^hsr' + P, 'HSR'),
    (r'^(ieee802154|6lowpan|mac802154)' + P, 'IEEE802154'), (r'^batman' + P, 'BATMAN_ADV'),
    (r'^caif' + P, 'CAIF'), (r'^phonet' + P, 'PHONET'), (r'^llc' + P, 'LLC'), (r'^ax25' + P, 'AX25'),
    (r'^x25' + P, 'X25'), (r'^rxrpc' + P, 'AF_RXRPC'), (r'^(vsock|vmw_vsock|vhost/vsock)' + P, 'VSOCKETS'),
    (r'^smc' + P, 'SMC'), (r'^kcm' + P, 'AF_KCM'), (r'^psample' + P, 'PSAMPLE'),
    (r'^netlabel' + P, 'NETLABEL'), (r'^dns_resolver' + P, 'DNS_RESOLVER'),
    (r'^(af_packet|packet)' + P, 'PACKET'), (r'^(af_unix|unix)' + P, 'UNIX'),
    (r'^(irda)' + P, 'IRDA'), (r'^(appletalk|atalk)' + P, 'ATALK'), (r'^ipx' + P, 'IPX'),
    (r'^(usbnet|cdc_ether|cdc_ncm|rndis_host|r8152|ax88179\w*|asix|qmi_wwan|smsc\w+|lan78xx)' + P,
     'USB_USBNET'),

    # memory management
    (r'^(mm/)?(thp|huge_memory|khugepaged|transparent|mm, thp|mm: thp)' + P, 'TRANSPARENT_HUGEPAGE'),
    (r'^(mm/)?(hugetlb|hugetlbfs|mm/hugetlb|mm, hugetlb)' + P, 'HUGETLBFS'),
    (r'^(mm/)?(numa|mempolicy|sched/numa|mm, numa|mm/numa)' + P, 'NUMA'),
    (r'^(mm/)?(memory_hotplug|memory-hotplug|mem-hotplug|mm, memory_hotplug)' + P, 'MEMORY_HOTPLUG'),
    (r'^(mm/)?(hmm)' + P, 'HMM_MIRROR'), (r'^(mm/)?(zone_device|memremap|devm_memremap)' + P, 'ZONE_DEVICE'),
    (r'^(mm/)?ksm' + P, 'KSM'), (r'^(mm/)?(memory-failure|hwpoison|mm, hwpoison)' + P, 'MEMORY_FAILURE'),
    (r'^(mm/)?(memcg|memcontrol|mm: memcg|mm, memcg)' + P, 'MEMCG'),
    (r'^(mm/)?zswap' + P, 'ZSWAP'), (r'^(mm/)?zsmalloc' + P, 'ZSMALLOC'), (r'^(mm/)?zbud' + P, 'ZBUD'),
    (r'^(mm/)?cma' + P, 'CMA'), (r'^(mm/)?kasan' + P, 'KASAN'), (r'^(mm/)?kmemleak' + P, 'DEBUG_KMEMLEAK'),
    (r'^(mm/)?slab' + P, 'SLAB'), (r'^(mm/)?slub' + P, 'SLUB'), (r'^(mm/)?(frontswap)' + P, 'FRONTSWAP'),
    (r'^(mm/)?(cleancache)' + P, 'CLEANCACHE'), (r'^(mm/)?(balloon|balloon_compaction)' + P, 'BALLOON_COMPACTION'),

    # core kernel
    (r'^(cgroup|cgroups|cpuset|cgroup/cpuset|cgroup2)' + P, 'CGROUPS'), (r'^audit' + P, 'AUDIT'),
    (r'^(bpf|ebpf|bpf/verifier|libbpf|bpftool|xdp)' + P, 'BPF_SYSCALL'),
    (r'^seccomp' + P, 'SECCOMP'), (r'^(uprobes?)' + P, 'UPROBES'), (r'^(kprobes?|kretprobe)' + P, 'KPROBES'),
    (r'^(ftrace|tracing|trace|tracepoint|ring-buffer|ring_buffer|trace/\w+)' + P, 'FTRACE'),
    (r'^(perf|perf_event|perf/core|perf_events|events)' + P, 'PERF_EVENTS'),
    (r'^(livepatch|klp)' + P, 'LIVEPATCH'), (r'^(module|modules|kmod|modsign|module signing)' + P, 'MODULES'),
    (r'^(user_namespace|userns|user namespace|ns: user)' + P, 'USER_NS'),
    (r'^(pid_namespace|pidns|pid namespace)' + P, 'PID_NS'), (r'^(utsns|uts_namespace)' + P, 'UTS_NS'),
    (r'^(ipc|shm|msg|sem|ipc/shm|ipc/msg|ipc/sem|sysvipc)' + P, 'SYSVIPC'), (r'^(mqueue|ipc/mqueue)' + P, 'POSIX_MQUEUE'),
    (r'^(keys|key|keyring|keyctl|asymmetric_keys|pkcs7|x509)' + P, 'KEYS'),
    (r'^taskstats' + P, 'TASKSTATS'), (r'^delayacct' + P, 'TASK_DELAY_ACCT'),
    (r'^(hibernate|hibernation|swsusp|pm/hibernate)' + P, 'HIBERNATION'),
    (r'^(kcov)' + P, 'KCOV'), (r'^(kgdb|kdb)' + P, 'KGDB'), (r'^(acct|bsd_acct)' + P, 'BSD_PROCESS_ACCT'),
    (r'^(lockdep)' + P, 'LOCKDEP'), (r'^(kmemcheck)' + P, 'KMEMCHECK'),

    # security
    (r'^selinux' + P, 'SECURITY_SELINUX'), (r'^apparmor' + P, 'SECURITY_APPARMOR'),
    (r'^smack' + P, 'SECURITY_SMACK'), (r'^tomoyo' + P, 'SECURITY_TOMOYO'), (r'^yama' + P, 'SECURITY_YAMA'),
    (r'^(ima|evm|integrity)' + P, 'IMA'), (r'^(lockdown|security/lockdown)' + P, 'SECURITY_LOCKDOWN_LSM'),

    # crypto
    (r'^crypto: (aesni|aes-ni|x86|sha\d*[-_](ssse3|avx|mb|ni)|\w+[-_](avx\d*|ssse3|sse\d)|ccp|qat|chelsio|'
     r'chcr|nx|vmx|s390|caam|marvell|cavium|nitrox|hisilicon|virtio|padlock|ccree|talitos|omap|atmel|'
     r'mxs|inside-secure|safexcel|amcc|ux500|sahara|picoxcell|qce|axis|bcm|mediatek|rockchip|stm32|'
     r'sun\dl|allwinner|exynos|keembay|ixp4xx|mv_cesa|n2|geode|ghash-clmulni|crc32c-intel|crct10dif-pclmul|'
     r'poly1305[-_]x86|chacha20[-_]x86|camellia[-_]x86|serpent[-_](avx|sse)|twofish[-_](x86|avx)|cast\d[-_]avx|'
     r'des3_ede-x86|blowfish-x86|salsa20-x86|aegis\d*-aesni|morus\d*-sse2)' + P, 'na-hw'),
    (r'^(crypto|testmgr)' + P, 'CRYPTO'),

    # generic drivers present on the A37
    (r'^(usb: )?(gadget|f_fs|ffs|composite|f_mass_storage|f_\w+|g_\w+|udc|configfs|libcomposite|'
     r'usb: gadget|usb/gadget)' + P, 'USB_GADGET'),
    (r'^(usb: )?(host: )?(xhci|xhci-pci|xhci-hcd|xhci-plat|xhci-\w+|xhci\.h)' + P, 'USB_XHCI_HCD'),
    (r'^(usb: )?(host: )?(ehci|ehci-pci|ehci-hcd|ehci-\w+|ehci\.h)' + P, 'USB_EHCI_HCD'), (r'^(usb: )?(host: )?(ohci|ohci-pci|ohci-\w+|ohci\.h)' + P, 'USB_OHCI_HCD'),
    (r'^(usb: )?(host: )?(uhci|uhci-\w+)' + P, 'USB_UHCI_HCD'), (r'^(usb: )?(uas)' + P, 'USB_UAS'),
    (r'^(usb: )?(usb-storage|storage|usb_storage)' + P, 'USB_STORAGE'),
    (r'^(usb: )?(cdc-acm|cdc_acm)' + P, 'USB_ACM'),
    (r'^(usb: )?(serial|usb-serial|ftdi_sio|ftdi|pl2303|cp210x|option|qcserial|ch341|io_ti|mos7840|'
     r'keyspan|sierra|usb_wwan|ti_usb_3410_5052|digi_acceleport|whiteheat|visor|kl5kusb105|ark3116|'
     r'garmin_gps|iuu_phoenix|mct_u232|metro-usb|omninet|opticon|oti6858|quatech2|safe_serial|spcp8x5|ssu100|'
     r'symbolserial|cypress_m8|cyberjack|empeg|f81232|io_edgeport|ipaq|ipw|ir-usb|kobil_sct|mxuport|navman)' + P,
     'USB_SERIAL'),
    (r'^(usb: )?(typec|ucsi|tcpm)' + P, 'TYPEC'), (r'^(usb: )?dwc3' + P, 'USB_DWC3'),
    (r'^(usb: )?dwc2' + P, 'USB_DWC2'), (r'^(usb: )?musb' + P, 'USB_MUSB_HDRC'),
    (r'^(usb: )?chipidea' + P, 'USB_CHIPIDEA'), (r'^(usb: )?(usbip)' + P, 'USBIP_CORE'),
    (r'^(usb: )?(uvc|uvcvideo|media: uvcvideo)' + P, 'USB_VIDEO_CLASS'),
    (r'^(usb: )?(usbhid|hid: usbhid)' + P, 'USB_HID'),
    (r'^(usb|usb: core|usb: hub|usb: devio|usbfs|usb: quirks|usbcore|usb: storage)' + P, 'USB'),
    (r'^(mmc: )?(sdhci-pci|rtsx\w*|toshsd|sdhci-acpi|alcor\w*|vub300|usdhi\w*|via-sdmmc|mmc_spi|dw_mmc|'
     r'sunxi|meson\w*|mtk\w*|omap\w*|tegra|renesas|bcm\w*|sdhci-of-\w+|sdhci-esdhc\w*|cqhci|wbsd|'
     r'tifm_sd|ricoh|jz4740)' + P, 'na-hw'),
    (r'^(mmc|sdhci|sdio|mmc: core|mmc: block|mmc: card|mmc: host|mmc: sdhci)' + P, 'MMC'),
    (r'^(alsa: |sound: )?(usb-audio|snd-usb-audio|usb audio)' + P, 'SND_USB_AUDIO'),
    (r'^(alsa: |sound: )?(hda|hda-intel|hda/\w+|hda_\w+|hdmi|ca0132|realtek|conexant|sigmatel|cs4206|'
     r'via|intel|sof|soundwire|firewire|emu10k1|ice1712|ice1724|oxygen|ctxfi|cs46xx|ymfpci|au88x0|'
     r'echoaudio|lola|lx6464es|rme\w*|hdsp\w*|korg1212|mixart|pcxhr|riptide|asihpi|bt87x|es1968|maestro3|'
     r'fm801|via82xx|intel8x0\w*|atiixp\w*|ac97|line6|caiaq|6fire|bebob|dice|fireworks|oxfw|digi00x|'
     r'tascam|motu|ff|x86|lpe|skl|cht|byt|bxt|hdac\w*|amd\w*|rt\d+\w*|da7\w+|nau88\w+|max98\w+|'
     r'es83\w+|cs42\w+|wm\d+|sst|soc-acpi|acpi)' + P, 'na-hw'),
    (r'^(asoc: )(intel|sof|skl|cht|byt|bxt|hdac\w*|amd\w*|rt\d+\w*|da7\w+|nau88\w+|max98\w+|es83\w+|'
     r'cs42\w+|wm\d+|sst\w*|soc-acpi|fsl\w*|imx\w*|samsung|rockchip|sunxi|tegra|omap|davinci|qcom|'
     r'mediatek|mtk\w*|stm32|atmel|sh|uniphier|meson|ti|tlv320\w*|pcm\d+\w*|ak\d+\w*|ssm\d+\w*|adau\d+\w*|'
     r'sgtl5000|sta\d+\w*|tas\d+\w*|twl\d+\w*)' + P, 'na-hw'),
    (r'^(asoc|alsa: soc|soc|asoc: core|asoc: dapm|asoc: soc-\w+|asoc: pcm)' + P, 'SND_SOC'),
    (r'^(alsa|sound|alsa: (pcm|timer|seq|control|core|compress|rawmidi|info|jack|hwdep|memalloc|oss|'
     r'usx2y|virmidi|aloop|dummy|ump))' + P, 'SND'),
    (r'^(n_tty|tty|pty|serial_core|vt|console|ldisc|tty_\w+|serial: core|tty: serial: core|devpts)' + P, 'TTY'),
    (r'^(n_hdlc)' + P, 'N_HDLC'), (r'^(n_gsm)' + P, 'N_GSM'),
    (r'^(serial: 8250|8250\w*|tty: serial: 8250)' + P, 'SERIAL_8250'),
    (r'^(hvc|hvc_\w+|hvcs)' + P, 'na-arch'),
    (r'^(serial|tty: serial)' + P, 'na-hw'),
    (r'^(random|/dev/random|urandom|char: random|crng)' + P, 'generic'),
    (r'^(tpm|tpm_\w+|char: tpm)' + P, 'TCG_TPM'), (r'^(mem|/dev/mem|devmem|char: mem)' + P, 'DEVMEM'),
    (r'^(hw_random|hwrng|char: hw_random)' + P, 'HW_RANDOM'), (r'^(raw|char: raw)' + P, 'RAW_DRIVER'),
    (r'^(hid: (core|hid-core|input|hidraw|uhid|hid-generic|debug|quirks|hid-input|ll_driver)|hidraw|uhid|hid)'
     r'(?=: core|: hid-core|: input|: hidraw|: uhid|: hid-generic|: debug|: quirks|: hid-input|$|:)', 'HID'),
    (r'^(hid-multitouch|hid: multitouch|hid: hid-multitouch)' + P, 'HID_MULTITOUCH'),
    (r'^(hid: )' r'(\w+)' + P, 'na-hw'),
    (r'^(input: )?(evdev|uinput|input-mt|joydev|mousedev|ff-core|ff-memless|input: core|input)' + P, 'INPUT'),
    (r'^(input: )?(i8042|psmouse|synaptics\w*|elantech|alps|atkbd|serio|wacom\w*|xpad|elan_i2c|goodix|'
     r'silead|edt-ft5x06|ims-pcu|gtco|aiptek|powermate|yealink|cm109|ati_remote2|keyspan_remote|'
     r'appletouch|bcm5974|cyapa|trackpoint|sentelic|lifebook|vmmouse|sparse-keymap|soc_button_array)' + P, 'na-hw'),
    (r'^(of|of/\w+|of_\w+|dt|dtc|device tree|of: \w+)' + P, 'OF'),
    (r'^(firmware_class|firmware loader|fw_loader)' + P, 'FW_LOADER'), (r'^regmap' + P, 'REGMAP'),
    (r'^(driver core|base|drivers/base|devres|component|platform|devtmpfs|kobject|klist|bus)' + P, 'generic'),
    (r'^(watchdog: (core|dev|watchdog_core|watchdog_dev)|watchdog)(?=$|: core|: dev|: watchdog_core|: watchdog_dev)', 'WATCHDOG'),
    (r'^(watchdog: )?(itco_wdt|iTCO\w*|hpwdt|sp5100\w*|sbc\w+|w83\w+|wdat\w*|i6300esb|ipmi\w*|nv_tco|'
     r'pcwd\w*|wdt_pci|mei_wdt|intel\w*|softdog)' + P, 'na-hw'),
    (r'^(i2c: )?(i801|ismt|piix4|designware|i2c-designware\w*|amd\w*|nvidia\w*|i2c-i801|i2c-piix4|'
     r'i2c-ismt|i2c-scmi|cht-wc)' + P, 'na-hw'),
    (r'^(i2c|i2c: core|i2c-core|i2c: dev|i2c-dev)' + P, 'I2C'),
    (r'^(gpio|gpiolib|gpio: core|pinctrl|pinctrl: core)' + P, 'GPIOLIB'),
    (r'^(media: )?(v4l2-core|v4l2|videobuf\w*|media core|media-device|v4l|videodev|v4l2-ioctl|vb2)' + P,
     'VIDEO_V4L2'),
    (r'^(media|dvb|rc|cec|lirc)' + P, 'na-hw'),
    (r'^(thermal|thermal: core|thermal_core)' r'(?=$|: core|: of|: cpu_cooling|:$)', 'THERMAL'),
    (r'^(thermal: )?(intel\w*|int340x\w*|x86_pkg_temp|powerclamp|acpi\w*)' + P, 'na-arch'),
    (r'^(clocksource: )?(arm_arch_timer|arch_timer)' + P, 'ARM_ARCH_TIMER'),
    (r'^(clocksource|clockevents)' + P, 'generic'),
    (r'^(power: supply|power_supply)' + P, 'POWER_SUPPLY'),
    (r'^(dma-buf|dma_buf|sync_file|dma-fence|fence)' + P, 'DMA_SHARED_BUFFER'),
    (r'^(efi|dmi|firmware: dmi|firmware: efi|edd|ibft|qemu_fw_cfg|google|firmware: google)' + P, 'na-arch'),
]
RULES = [(re.compile(r, re.I), d) for r, d in RULES]

GENERIC_TAGS = {'fs', 'net', 'mm', 'kernel', 'block', 'blk-mq', 'crypto', 'lib', 'security', 'include',
                'uapi', 'ipc', 'base', 'trace', 'tracing', 'perf', 'sched', 'init', 'locking', 'core', 'asm',
                'asm-generic', 'linux', 'treewide', 'kenrel', 'networking', 'net-next', 'modsign', 'testmgr',
                'audit', 'keys', 'cgroup', 'zram', 'of', 'base', 'mcheck', ''}

# features with no Kconfig symbol of their own: detect by path in the A37 tree
PATH_FEATURES = {'BLK_MQ': 'block/blk-mq.c', 'KERNFS': 'fs/kernfs', 'RHASHTABLE': 'lib/rhashtable.c',
                 'SCHED_DEADLINE': 'kernel/sched/deadline.c'}

# rules checked before RULES (more specific, or needed for every tag)
PRE_RULES = [(re.compile(r, re.I), d) for r, d in [
    (r'^(nvme|nvmet|nvme-\w+|nvme_\w+)' + P, 'na-hw'),
    (r'^(net: |kernel: )?(mlx4|mlx5|mlx5e|mlx5_core|mlxsw|mlxfw|ixgbe|ixgbevf|i40e|i40evf|iavf|ice|igb|igbvf|igc|'
     r'e1000|e1000e|fm10k|bnxt|bnxt_en|bnx2|bnx2x|tg3|qed|qede|qedr|qedi|qedf|qlcnic|qlge|netxen|be2net|benet|'
     r'cxgb\d*|cxgb4\w*|enic|sfc|nfp|hns\d*|hinic|ena|vmxnet3|netvsc|hv_netvsc|r8169|liquidio|ionic|atlantic|'
     r'aquantia|myri10ge|ibmvnic|ibmveth|ehea|vxge|s2io|forcedeth|sky2|skge|bna|i40iw|hfi1|ib_\w+|rdma\w*|rxe|'
     r'siw|irdma|ocrdma|usnic|pvrdma|bnxt_re|efa|mana|ixgb|ipoib|iw_cxgb\d|srp|srpt|iser|isert|nfs-rdma|'
     r'lpfc|qla2xxx|qla4xxx|megaraid\w*|mpt\dsas|mpt3sas|smartpqi|hpsa|aacraid|be2iscsi|bnx2i|bnx2fc|fnic|'
     r'csiostor|storvsc|virtio_scsi|ipr|pm8001|mvsas|isci|arcmsr|esas2r|3w-\w+|hptiop|ahci|libata|ata_\w+|'
     r'nouveau|amdgpu|radeon|i915|drm/\w+|drm|ast|mgag200|qxl|bochs|cirrus|vmwgfx|udl|gma500|virtio_gpu|hyperv_fb)'
     + P, 'na-hw'),
    (r'^perf (tools|report|record|stat|top|trace|script|probe|test|tests|bench|annotate|evsel|evlist|hists|'
     r'ui|build|jit|c2c|mem|kmem|sched|lock|diff|list|inject|buildid|data|config|help|ftrace|vendor events|'
     r'pmu-events|tui|gtk|session|symbols|map|machine|thread|dso|util|scripting|python|kvm|timechart|'
     r'version|header|callchain|srcline|sort|stdio|bpf|llvm|beauty|augmented|arm-spe|intel-pt|cs-etm|'
     r'auxtrace|time-utils|string|strbuf|cpumap|thread_map|parse-events|pmu|record:|report:)' + P, 'na-tools'),
    (r'^(tools|tools/\w+|selftests|kselftest|testing/selftests|libtraceevent|lib/traceevent|objtool|'
     r'bpftool|libbpf|turbostat|cpupower|x86_energy_perf_policy)' + P, 'na-tools'),
    (r'^(mm/)?(fs/)?(dax|device-dax|fs/dax|iomap|nvdimm|libnvdimm|pmem|nd_\w+)' + P, 'na-hw'),
    (r'^(mm/)?(hmm|zone_device|memremap|devm_memremap|mm/hmm)' + P, 'na-hw'),
    (r'^(usb: )?(typec|ucsi|tcpm|usb: typec)' + P, 'na-hw'),
    (r'^(lib/)?rhashtable' + P, 'RHASHTABLE'),
    (r'^(sched/deadline|sched: deadline|sched_deadline)' + P, 'SCHED_DEADLINE'),
    (r'^(net: )?pktgen' + P, 'NET_PKTGEN'),
    (r'^(usb: )?(wusbcore|wusb|uwb|hwa-hc|whci\w*|wa-xfer)' + P, 'USB_WUSB'),
    (r'^(usb: )?usbtmc' + P, 'USB_TMC'), (r'^(usb: )?usbtest' + P, 'USB_TEST'),
    (r'^(usb: )?(atm|usbatm|cxacru|speedtch|ueagle-atm|xusbatm)' + P, 'USB_ATM'),
    (r'^(usb: )?cdc-wdm' + P, 'USB_WDM'), (r'^(usb: )?(usb: )?misc' + P, 'na-hw'),
    (r'^(misc: )?(genwqe|cxl|ocxl|mei|vmw_balloon|vmw_vmci|sgi-\w+|hpilo|ibmasm)' + P, 'na-hw'),
    (r'^(md: )?(r5cache|raid5-cache|raid5-ppl|raid456|raid5|raid6)' + P, 'MD_RAID456'),
    (r'^(md: )?(raid1|md/raid1)' + P, 'MD_RAID1'), (r'^(md: )?(raid10|md/raid10)' + P, 'MD_RAID10'),
    (r'^(md: )?(raid0|md/raid0)' + P, 'MD_RAID0'), (r'^(md-cluster|md/md-cluster)' + P, 'MD_CLUSTER'),
    (r'^(dm[- ]thin|dm thin provisioning|dm-thin-metadata|dm persistent data|dm-persistent-data|'
     r'dm space map|dm btree)' + P, 'DM_THIN_PROVISIONING'),
    (r'^(dm[- ]cache|dm-cache-policy\w*|dm cache policy\w*)' + P, 'DM_CACHE'),
    (r'^(dm[- ]raid)' + P, 'DM_RAID'), (r'^(dm[- ]mpath|dm[- ]multipath|dm-path-selector|dm-queue-length|'
     r'dm-service-time|dm-round-robin)' + P, 'DM_MULTIPATH'),
    (r'^(dm[- ]crypt)' + P, 'DM_CRYPT'), (r'^(dm[- ]verity)' + P, 'DM_VERITY'),
    (r'^(dm[- ]snapshot|dm[- ]snap\w*|dm-exception-store)' + P, 'DM_SNAPSHOT'),
    (r'^(dm[- ]mirror|dm[- ]raid1|dm-region-hash|dm-log)' + P, 'DM_MIRROR'),
    (r'^(dm[- ]integrity)' + P, 'DM_INTEGRITY'), (r'^(dm[- ]writecache)' + P, 'DM_WRITECACHE'),
    (r'^(dm[- ]zoned)' + P, 'DM_ZONED'), (r'^(dm[- ]era)' + P, 'DM_ERA'),
    (r'^(dm[- ]log[- ]writes)' + P, 'DM_LOG_WRITES'), (r'^(dm[- ]delay)' + P, 'DM_DELAY'),
    (r'^(dm[- ]flakey)' + P, 'DM_FLAKEY'), (r'^(dm[- ]switch)' + P, 'DM_SWITCH'),
    (r'^(dm[- ]bufio)' + P, 'DM_BUFIO'), (r'^(dm[- ]vdo|vdo|kvdo)' + P, 'na-hw'),
    (r'^(hid: )?(hid-sensor-hub|hid-sensor\w*|sensor-hub)' + P, 'HID_SENSOR_HUB'),
    (r'^(bluetooth: )?(btusb)' + P, 'BT_HCIBTUSB'), (r'^(bluetooth: )?(hci_uart|btintel|btrtl|btbcm|'
     r'btqca|ath3k|bcm203x|bfusb|bpa10x|btmrvl\w*|btsdio|hci_bcm|hci_intel|hci_qca|hci_ll|hci_h5)' + P, 'na-hw'),
    (r'^(firmware: )?(dmi_scan|dmi|fw_cfg|qemu_fw_cfg|efi\w*|edd|ibft|google|dcdbas|dell_rbu|memmap)' + P, 'na-arch'),
    (r'^(pinctrl: )?(baytrail|cherryview|lynxpoint|broxton|sunrisepoint|cannonlake|icelake|tigerlake|'
     r'geminilake|denverton|lewisburg|intel\w*|amd\w*)' + P, 'na-arch'),
    (r'^(gpio: )?(ich|lynxpoint|intel\w*|amd\w*|ml-ioh|sch|it87|f7188x|ws16c48|104-\w+|pch|merrifield)' + P, 'na-arch'),
]]

SND_CORE = {'pcm', 'timer', 'seq', 'control', 'core', 'compress', 'rawmidi', 'info', 'jack', 'hwdep',
            'memalloc', 'oss', 'ump', 'init', 'ctl', 'vmaster', 'sound', 'snd', 'pcm_native', 'pcm_lib',
            'pcm_misc', 'seq_oss', 'pcm_oss', 'mixer_oss', 'compress_offload', 'sgbuf', 'memory', 'ac97_bus'}
SND_SYM = {'aloop': 'SND_ALOOP', 'dummy': 'SND_DUMMY', 'virmidi': 'SND_VIRMIDI', 'usb-audio': 'SND_USB_AUDIO',
           'usb': 'SND_USB_AUDIO', 'snd-usb-audio': 'SND_USB_AUDIO', 'usb audio': 'SND_USB_AUDIO'}
ASOC_CORE = {'core', 'dapm', 'soc-core', 'soc-pcm', 'soc-dapm', 'soc-ops', 'soc-utils', 'soc-jack', 'compress',
             'generic-dmaengine-pcm', 'pcm', 'dmaengine', 'topology', 'soc-topology', 'soc-component', 'soc-dai',
             'soc-card', 'soc-compress', 'soc-io', 'soc-cache', 'jack', 'soc', 'dpcm', 'simple-card', 'utils'}
HID_CORE = {'core', 'hid-core', 'input', 'hidraw', 'uhid', 'hid-generic', 'debug', 'quirks', 'hid-input',
            'll_driver', 'usbhid', 'hid-debug', 'generic', 'hid-quirks', 'multitouch', 'hid-multitouch'}
INPUT_CORE = {'evdev', 'uinput', 'input-mt', 'joydev', 'mousedev', 'ff-core', 'ff-memless', 'core', 'input',
              'misc', 'keyboard', 'touchscreen', 'matrix_keypad', 'gpio_keys', 'gpio-keys', 'sparse-keymap'}
TAG_CTX = {'alsa': 'alsa: ', 'sound': 'alsa: ', 'audio': 'alsa: ', 'usb': 'usb: ', 'mmc': 'mmc: ', 'hid': 'hid: ',
           'input': 'input: ', 'i2c': 'i2c: ', 'bluetooth': 'bluetooth: ', 'watchdog': 'watchdog: ',
           'whatchdog': 'watchdog: ', 'thermal': 'thermal: ', 'pinctrl': 'pinctrl: ', 'gpio': 'gpio: ',
           'firmware': 'firmware: '}

USB_SERIAL_SYM = {'ftdi_sio': 'FTDI_SIO', 'ftdi': 'FTDI_SIO', 'option': 'OPTION', 'qcserial': 'QUALCOMM',
                  'pl2303': 'PL2303', 'cp210x': 'CP210X', 'ch341': 'CH341', 'io_ti': 'EDGEPORT_TI',
                  'io_edgeport': 'EDGEPORT', 'mos7840': 'MOS7840', 'mos7720': 'MOS7720', 'sierra': 'SIERRAWIRELESS',
                  'usb_wwan': 'WWAN', 'keyspan': 'KEYSPAN', 'cypress_m8': 'CYPRESS_M8', 'garmin_gps': 'GARMIN',
                  'ti_usb_3410_5052': 'TI', 'whiteheat': 'WHITEHEAT', 'visor': 'VISOR', 'mct_u232': 'MCT_U232',
                  'kl5kusb105': 'KLSI', 'oti6858': 'OTI6858', 'spcp8x5': 'SPCP8X5', 'ark3116': 'ARK3116',
                  'f81232': 'F81232', 'mxuport': 'MXUPORT', 'quatech2': 'QT2', 'ssu100': 'SSU100',
                  'digi_acceleport': 'DIGI_ACCELEPORT', 'iuu_phoenix': 'IUU', 'metro-usb': 'METRO',
                  'opticon': 'OPTICON', 'safe_serial': 'SAFE', 'symbolserial': 'SYMBOL', 'cyberjack': 'CYBERJACK',
                  'empeg': 'EMPEG', 'ipaq': 'IPAQ', 'ipw': 'IPW', 'ir-usb': 'IR', 'kobil_sct': 'KOBIL_SCT',
                  'navman': 'NAVMAN', 'omninet': 'OMNINET', 'belkin_sa': 'BELKIN', 'upd78f0730': 'UPD78F0730',
                  'usb-serial-simple': 'SIMPLE', 'wishbone-serial': 'WISHBONE', 'xsens_mt': 'XSENS_MT',
                  'f81534': 'F81534', 'aircable': 'AIRCABLE', 'qcaux': 'QCAUX', 'mxu11x0': 'MXU11X0',
                  'flashloader': 'FLASHLOADER', 'debug': 'DEBUG', 'xr_serial': 'XR'}


def special(tag, s):
    """Decisions that need more than a prefix regex. s is lowercase, with tag context."""
    m = re.match(r'^(?:alsa|sound)\s*[:-]\s*(?:asoc\s*:\s*)?', s)
    if s.startswith('asoc') or re.match(r'^(?:alsa|sound)\s*[:-]\s*asoc', s):
        rest = re.sub(r'^(?:alsa\s*[:-]\s*)?asoc\s*:\s*', '', s)
        comp = re.split(r'[:/ ,]', rest, 1)[0]
        has_comp = re.match(r'^[\w.+-]+\s*[:/]', rest) is not None
        if not has_comp or comp in ASOC_CORE:
            return 'SND_SOC'
        return 'na-hw'
    if m:
        rest = s[m.end():]
        comp = re.split(r'[:/ ,]', rest, 1)[0]
        has_comp = re.match(r'^[\w.+-]+\s*(?::|/|\s-\s)', rest) is not None
        if not has_comp or comp in SND_CORE:
            return 'SND'
        if comp in SND_SYM:
            return SND_SYM[comp]
        return 'na-hw'
    m = re.match(r'^usb: (?:serial: )?(?:serial: )?([\w-]+)\s*:', s)
    if m and (s.startswith('usb: serial:') or tag == 'usb' and m.group(1) in USB_SERIAL_SYM):
        name = m.group(1)
        if s.startswith('usb: serial:') and name in ('core', 'generic', 'bus', 'console', 'usb-serial',
                                                     'serial'):
            return 'USB_SERIAL'
        if name in USB_SERIAL_SYM:
            return 'USB_SERIAL_' + USB_SERIAL_SYM[name]
        if s.startswith('usb: serial:'):
            return 'na-hw'
    m = re.match(r'^(?:net: )?(?:net[/_ ]?sched: |sched: )?(cls|act|sch|em)_(\w+)', s)
    if m:
        kind = {'cls': 'NET_CLS_', 'act': 'NET_ACT_', 'sch': 'NET_SCH_', 'em': 'NET_EMATCH_'}[m.group(1)]
        return kind + m.group(2).upper()
    if tag == 'net' and re.match(r'^(?:net: )?(?:sched|net_sched|net/sched)\s*:', s):
        return 'NET_SCHED'
    m = re.match(r'^hid: ([\w-]+)\s*:', s)
    if m:
        return 'HID' if m.group(1) in HID_CORE else 'na-hw'
    m = re.match(r'^input: ([\w-]+)\s*:', s)
    if m:
        return 'INPUT' if m.group(1) in INPUT_CORE else 'na-hw'
    return None


def classify(row, kconf, enabled, tree):
    tag = row['tag'].lower()
    subj = row['subject'].lower().strip()
    if tag in TOOLS_TAGS or tag == 'documentation':
        return 'NA-TOOLS', f'tag [{tag}]'
    if row['a37'] != 'no':
        return 'PRESENT', f'same subject in A37 history ({row["a37"]})'
    ctx = TAG_CTX.get(tag)
    if ctx and not subj.startswith(ctx.split(':')[0]) and not subj.startswith('asoc'):
        subj = ctx + subj
    subj = re.sub(r'^alsa\s*-\s*', 'alsa: ', subj)
    decision = special(tag, subj)
    if decision is None:
        for rx, d in PRE_RULES + RULES:
            if rx.search(subj):
                decision = d
                break
    if decision == 'na-tools':
        return 'NA-TOOLS', 'subject prefix'
    if tag in ARCH_TAGS and decision not in ('review',):
        return 'NA-ARCH', f'tag [{tag}]'
    if decision == 'na-arch':
        return 'NA-ARCH', 'subject prefix'
    if tag in HW_TAGS:
        return 'NA-HW', f'tag [{tag}]'
    if decision == 'na-hw':
        return 'NA-HW', 'subject prefix'
    if decision == 'generic':
        return 'CANDIDATE', f'generic code, tag [{tag or "none"}]'
    if decision is None:
        if tag in REFINE_TAGS:
            return 'REVIEW', f'tag [{tag}], no specific rule'
        return 'CANDIDATE', f'generic code, tag [{tag or "none"}]'
    if decision == 'review':
        return 'REVIEW', 'arm/arm64 or unclear'
    sym = decision
    if sym in enabled:
        return 'CANDIDATE', f'CONFIG_{sym}=y in A37'
    path = PATH_FEATURES.get(sym)
    if path is not None:
        if os.path.exists(os.path.join(tree, path)):
            return 'CANDIDATE', f'{path} present'
        return 'FEATURE-MISSING', f'{path} not in A37 tree'
    if sym in kconf:
        return 'NA-CONFIG', f'CONFIG_{sym} not set in A37'
    if sym.startswith(('NET_CLS_', 'NET_ACT_', 'NET_SCH_', 'NET_EMATCH_', 'USB_SERIAL_')):
        return 'NA-CONFIG', f'CONFIG_{sym} not in A37 (driver not built)'
    return 'FEATURE-MISSING', f'CONFIG_{sym} does not exist in A37 tree'


# ---------------------------------------------------------------- main

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--spec', required=True)
    ap.add_argument('--mainline', required=True)
    ap.add_argument('--a37', required=True)
    ap.add_argument('--a37-ref', default='HEAD')
    ap.add_argument('--config', required=True)
    ap.add_argument('--out', required=True)
    a = ap.parse_args()

    rows = parse_changelog(a.spec)
    print(f'{len(rows)} changelog entries', file=sys.stderr)
    idx, lidx, mcount = mainline_index(a.mainline)
    print(f'{len(idx)} mainline subjects indexed', file=sys.stderr)
    a37, a37l = a37_subjects(a.a37, a.a37_ref)
    a37sha, a37cve = a37_references(a.a37, a.a37_ref)
    print(f'A37: {len(a37sha)} upstream shas and {len(a37cve)} CVE ids referenced', file=sys.stderr)
    kconf, enabled = kconfig_symbols(a.a37), enabled_symbols(a.config)
    reverted = {norm(r['subject']) for r in rows if r['revert']}

    for r in rows:
        k, lk = norm(r['subject']), loose(r['subject'])
        if k in idx:
            (sha, ver), how = idx[k], 'exact'
        elif lk in lidx:
            (sha, ver), how = lidx[lk], 'loose'
        else:
            sha, ver, how = '', '', ''
        r['upstream_sha'], r['upstream_version'], r['upstream_match'] = sha, ver, how
        r['upstream_ambiguous'] = 'yes' if mcount.get(k, 0) > 1 else ''
        if sha and sha in a37sha:
            r['a37'] = 'sha'
        else:
            r['a37'] = 'exact' if k in a37 else ('loose' if lk in a37l else 'no')
        r['a37_cve'] = ' '.join(c for c in re.findall(r'CVE-\d{4}-\d+', r['cve']) if c in a37cve)
        r['rhel_reverted'] = 'yes' if (k in reverted and not r['revert']) else ''
        r['status'], r['reason'] = classify(r, kconf, enabled, a.a37)

    os.makedirs(a.out, exist_ok=True)
    cols = ['status', 'reason', 'tag', 'subject', 'upstream_sha', 'upstream_version', 'upstream_match',
            'upstream_ambiguous',
            'a37', 'cve', 'a37_cve', 'rhel_release', 'date', 'bz', 'rh_author', 'revert', 'rhel_reverted']
    with lzma.open(os.path.join(a.out, 'all-entries.tsv.xz'), 'wt') as f:
        w = csv.writer(f, delimiter='\t', lineterminator='\n')
        w.writerow(cols)
        for r in rows:
            w.writerow([r[c] for c in cols])
    keep = ('CANDIDATE', 'FEATURE-MISSING', 'REVIEW')
    with open(os.path.join(a.out, 'candidates.tsv'), 'w') as f:
        w = csv.writer(f, delimiter='\t', lineterminator='\n')
        w.writerow(cols)
        for r in sorted((r for r in rows if r['status'] in keep and not r['revert']),
                        key=lambda r: (r['status'], r['tag'], r['subject'].lower())):
            w.writerow([r[c] for c in cols])
    st = collections.Counter(r['status'] for r in rows)
    print('\n'.join(f'{k}\t{v}' for k, v in st.most_common()), file=sys.stderr)


if __name__ == '__main__':
    main()
