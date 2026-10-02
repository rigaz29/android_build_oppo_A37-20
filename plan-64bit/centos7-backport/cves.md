# CVEs fixed in the CentOS 7 kernel, and the A37 kernel

511 distinct CVEs.

| Group | Meaning | CVEs |
|---|---|---|
| MISSING-RELEVANT | relevant fix entries, none found in the A37 history | 185 |
| PARTIAL | some fix entries found in the A37 history, others not | 19 |
| NAMED-IN-A37 | entries not matched, but an A37 commit message names this CVE | 18 |
| PRESENT | every relevant fix entry found in the A37 history | 122 |
| NOT-APPLICABLE | only arch / hardware / disabled-config code | 167 |

A missing subject does not prove the A37 kernel is vulnerable: LineageOS/CAF may carry the fix under another subject, or the vulnerable code may predate 3.10 changes. Verify each one in the code before porting.

## MISSING-RELEVANT

| CVE | Status | First in | Upstream | Tag | Subject | Why |
|---|---|---|---|---|---|---|
| CVE-2013-7026 | CANDIDATE | — | — (RHEL wording, check by hand) | [ipc] | change kern_ipc_perm.deleted type to bool | generic code, tag [ipc] |
| CVE-2013-7026 | CANDIDATE | — | — (RHEL wording, check by hand) | [ipc] | introduce ipc_valid_object() helper to sort out IPC_RMID races | generic code, tag [ipc] |
| CVE-2013-7026 | NA-CONFIG | — | — (RHEL wording, check by hand) | [ipc] | shm: fix shm_file deletion races | CONFIG_SYSVIPC not set in A37 |
| CVE-2014-0100 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | inet: fix for a race condition in the inet frag code | generic code, tag [net] |
| CVE-2014-0102 | CANDIDATE | 3.14 | [`979e0d74651b`](https://git.kernel.org/torvalds/c/979e0d74651b) | [security] | keys: Make the keyring cycle detector ignore other keyrings of the same name | CONFIG_KEYS=y in A37 |
| CVE-2014-3122 | CANDIDATE | — | — (RHEL wording, check by hand) | [mm] | rmap: try_to_unmap_cluster() should lock_page() before mlocking | generic code, tag [mm] |
| CVE-2014-3181 | CANDIDATE | — | — (RHEL wording, check by hand) | [hid] | fix OOB write in magicmouse driver | CONFIG_HID=y in A37 |
| CVE-2014-3184 | CANDIDATE | — | — (RHEL wording, check by hand) | [hid] | fix off by one error in various _report_fixup routines | CONFIG_HID=y in A37 |
| CVE-2014-3185 | CANDIDATE | — | — (RHEL wording, check by hand) | [usb] | serial/whiteheat: fix memory corruption flaw | CONFIG_USB_SERIAL=y in A37 |
| CVE-2014-3631 | CANDIDATE | — | — (RHEL wording, check by hand) | [lib] | assoc_array: Fix termination condition in assoc array garbage collection | generic code, tag [lib] |
| CVE-2014-3940 | CANDIDATE | — | — (RHEL wording, check by hand) | [fs] | proc/task_mmu: fix missing check during hugepage migration | CONFIG_PROC_FS=y in A37 |
| CVE-2014-4653 | CANDIDATE | — | — (RHEL wording, check by hand) | [sound] | alsa/control: Don't access controls outside of protected regions | CONFIG_SND=y in A37 |
| CVE-2014-4943 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | l2tp: don't fall back on UDP [get\|set]sockopt | CONFIG_L2TP=y in A37 |
| CVE-2014-5045 | CANDIDATE | — | — (RHEL wording, check by hand) | [fs] | vfs: fix ref count leak in path_mountpoint() | generic code, tag [fs] |
| CVE-2014-7825 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | trace: insufficient syscall number validation in perf and ftrace subsystems | CONFIG_FTRACE=y in A37 |
| CVE-2014-7826 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | trace: insufficient syscall number validation in perf and ftrace subsystems | CONFIG_FTRACE=y in A37 |
| CVE-2014-8086 | CANDIDATE | — | — (RHEL wording, check by hand) | [fs] | ext4: fix overwrite race condition | CONFIG_EXT4_FS=y in A37 |
| CVE-2014-8559 | CANDIDATE | — | — (RHEL wording, check by hand) | [fs] | dcache: d_walk() might skip too much | generic code, tag [fs] |
| CVE-2014-8559 | CANDIDATE | — | — (RHEL wording, check by hand) | [fs] | dcache: deal with deadlock in d_walk() | generic code, tag [fs] |
| CVE-2014-8559 | CANDIDATE | — | — (RHEL wording, check by hand) | [fs] | dcache: move d_rcu from overlapping d_child to overlapping d_alias | generic code, tag [fs] |
| CVE-2014-8559 | CANDIDATE | — | — (RHEL wording, check by hand) | [fs] | dcache: fold try_to_ascend() into the sole remaining caller | generic code, tag [fs] |
| CVE-2014-8884 | REVIEW | — | — (RHEL wording, check by hand) | [media] | ttusb-dec: buffer overflow in ioctl | tag [media], no specific rule |
| CVE-2014-9715 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | nf_conntrack: reserve two bytes for nf_ct_ext->len | generic code, tag [net] |
| CVE-2015-0275 | CANDIDATE | 4.1 | [`0f2af21aae11`](https://git.kernel.org/torvalds/c/0f2af21aae11) | [fs] | ext4: allocate entire range in zero range | CONFIG_EXT4_FS=y in A37 |
| CVE-2015-1333 | CANDIDATE | 4.2 | [`ca4da5dd1f99`](https://git.kernel.org/torvalds/c/ca4da5dd1f99) | [security] | keys: Ensure we free the assoc array edit if edit is valid | CONFIG_KEYS=y in A37 |
| CVE-2015-1573 | FEATURE-MISSING | 3.19 | [`a2f18db0c68f`](https://git.kernel.org/torvalds/c/a2f18db0c68f) | [net] | netfilter: nf_tables: fix flush ruleset chain dependencies | CONFIG_NF_TABLES does not exist in A37 tree |
| CVE-2015-3339 | CANDIDATE | — | — (RHEL wording, check by hand) | [fs] | exec: take i_mutex during prepare_binprm for set[ug]id executables | generic code, tag [fs] |
| CVE-2015-3339 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | locking: Remove atomicy checks from {READ, WRITE}_ONCE | generic code, tag [kernel] |
| CVE-2015-3339 | CANDIDATE | 4.0 | [`dd36929720f4`](https://git.kernel.org/torvalds/c/dd36929720f4) | [kernel] | make READ_ONCE() valid on const arguments | generic code, tag [kernel] |
| CVE-2015-3339 | CANDIDATE | 3.19 | [`43239cbe79fc`](https://git.kernel.org/torvalds/c/43239cbe79fc) | [kernel] | Change ASSIGN_ONCE(val, x) to WRITE_ONCE(x, val) | generic code, tag [kernel] |
| CVE-2015-3339 | CANDIDATE | 3.19 | [`230fa253df63`](https://git.kernel.org/torvalds/c/230fa253df63) | [kernel] | Provide READ_ONCE and ASSIGN_ONCE | generic code, tag [kernel] |
| CVE-2016-4581 | CANDIDATE | 4.6 | [`5ec0811d3037`](https://git.kernel.org/torvalds/c/5ec0811d3037) | [fs] | propogate_mnt: Handle the first propogated copy being a slave | generic code, tag [fs] |
| CVE-2016-4794 | CANDIDATE | 4.7 | [`6710e594f71c`](https://git.kernel.org/torvalds/c/6710e594f71c) | [mm] | percpu: fix synchronization between synchronous map extension and chunk destruction | generic code, tag [mm] |
| CVE-2016-4794 | CANDIDATE | 4.7 | [`4f996e234dad`](https://git.kernel.org/torvalds/c/4f996e234dad) | [mm] | percpu: fix synchronization between chunk->map_extend_work and chunk destruction | generic code, tag [mm] |
| CVE-2016-4794 | CANDIDATE | 3.18 | [`23cb8981ed92`](https://git.kernel.org/torvalds/c/23cb8981ed92) | [mm] | percpu: fix locking regression in the failure path of pcpu_alloc() | generic code, tag [mm] |
| CVE-2016-6213 | CANDIDATE | 4.9 | [`537f7ccb3968`](https://git.kernel.org/torvalds/c/537f7ccb3968) | [kernel] | mntns: Add a limit on the number of mount namespaces | generic code, tag [kernel] |
| CVE-2016-7039 | CANDIDATE | 4.9 | [`fcd91dd44986`](https://git.kernel.org/torvalds/c/fcd91dd44986) | [net] | add recursion limit to GRO | generic code, tag [net] |
| CVE-2016-10147 | CANDIDATE | 4.9 | [`48a992727d82`](https://git.kernel.org/torvalds/c/48a992727d82) | [crypto] | mcryptd - Check mcryptd algorithm compatibility | generic code, tag [crypto] |
| CVE-2016-10147 | CANDIDATE | 4.1 | [`f52bbf55d195`](https://git.kernel.org/torvalds/c/f52bbf55d195) | [crypto] | mcryptd - process CRYPTO_ALG_INTERNAL | generic code, tag [crypto] |
| CVE-2016-10200 | CANDIDATE | 4.11 | [`94d7ee0baa8b`](https://git.kernel.org/torvalds/c/94d7ee0baa8b) | [net] | l2tp: hold tunnel socket when handling control frames in l2tp_ip and l2tp_ip6 | CONFIG_L2TP=y in A37 |
| CVE-2016-10200 | CANDIDATE | 4.9 | [`31e2f21fb35b`](https://git.kernel.org/torvalds/c/31e2f21fb35b) | [net] | l2tp: fix address test in __l2tp_ip6_bind_lookup() | CONFIG_L2TP=y in A37 |
| CVE-2016-10200 | CANDIDATE | 4.9 | [`df90e6886146`](https://git.kernel.org/torvalds/c/df90e6886146) | [net] | l2tp: fix lookup for sockets not bound to a device in l2tp_ip | CONFIG_L2TP=y in A37 |
| CVE-2016-10200 | CANDIDATE | 4.9 | [`d5e3a190937a`](https://git.kernel.org/torvalds/c/d5e3a190937a) | [net] | l2tp: fix racy socket lookup in l2tp_ip and l2tp_ip6 bind() | CONFIG_L2TP=y in A37 |
| CVE-2016-10200 | CANDIDATE | 4.9 | [`a3c18422a4b4`](https://git.kernel.org/torvalds/c/a3c18422a4b4) | [net] | l2tp: hold socket before dropping lock in l2tp_ip{, 6}_recv() | CONFIG_L2TP=y in A37 |
| CVE-2016-10200 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | l2tp: fix racy SOCK_ZAPPED flag check in l2tp_ip{, 6}_bind() | CONFIG_L2TP=y in A37 |
| CVE-2017-1219 | CANDIDATE | 4.14 | [`ea6789980fda`](https://git.kernel.org/torvalds/c/ea6789980fda) | [lib] | assoc_array: Fix a buggy node-splitting case | generic code, tag [lib] |
| CVE-2017-5715 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | fs: prevent speculative execution | generic code, tag [kernel] |
| CVE-2017-5715 | CANDIDATE | — | — (RHEL wording, check by hand) | [media] | uvcvideo: prevent speculative execution | CONFIG_USB_VIDEO_CLASS=y in A37 |
| CVE-2017-5715 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | locking/barriers: introduce new memory barrier gmb() | generic code, tag [kernel] |
| CVE-2017-5715 | CANDIDATE | 3.14 | [`887843961c4b`](https://git.kernel.org/torvalds/c/887843961c4b) | [mm] | fix bad rss-counter if remap_file_pages raced migration | generic code, tag [mm] |
| CVE-2017-5715 | NA-CONFIG | — | — (RHEL wording, check by hand) | [fs] | udf: prevent speculative execution | CONFIG_UDF_FS not set in A37 |
| CVE-2017-5715 | NA-CONFIG | — | — (RHEL wording, check by hand) | [kernel] | userns: prevent speculative execution | CONFIG_USER_NS not set in A37 |
| CVE-2017-5715 | NA-HW | — | — (RHEL wording, check by hand) | [scsi] | qla2xxx: prevent speculative execution | tag [scsi] |
| CVE-2017-5715 | NA-HW | — | — (RHEL wording, check by hand) | [netdrv] | p54: prevent speculative execution | tag [netdrv] |
| CVE-2017-5715 | NA-HW | — | — (RHEL wording, check by hand) | [netdrv] | carl9170: prevent speculative execution | tag [netdrv] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry: Invoke TRACE_IRQS_IRETQ in paranoid_userspace_restore_all | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu: fix get_scattered_cpu_leaf for IBPB feature | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: show added cpuid flags in /proc/cpuinfo after late microcode update | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: svm: spec_ctrl at vmexit needs per-cpu areas functional | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: init_tss is supposed to go in the PAGE_ALIGNED per-cpu section | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Eliminate redundnat FEATURE Not Present messages | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kaiser/mm: skip IBRS/CR3 restore when paranoid exception returns to userland | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: set IBRS during resume from RAM if ibrs_enabled is 2 | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: allow use_ibp_disable only if both SPEC_CTRL and IBPB_SUPPORT are missing | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Documentation spec_ctrl.txt | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: remove irqs_disabled() check from intel_idle() | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: use enum when setting ibrs/ibpb_enabled | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: undo speculation barrier for ibrs_enabled and noibrs_cmdline | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: introduce ibpb_enabled = 2 for IBPB instead of IBRS | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: introduce SPEC_CTRL_PCP_ONLY_IBPB | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: cleanup s/flush/sync/ naming when sending IPIs | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: set IBRS during CPU init if in ibrs_enabled == 2 | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: use IBRS_ENABLED instead of 1 | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: allow the IBP disable feature to be toggled at runtime | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: always initialize save_reg in ENABLE_IBRS_SAVE_AND_CLOBBER | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: ibrs_enabled() is expected to return > 1 | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: issue a __spec_ctrl_ibpb if a credential check isn't possible | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | ibpb: don't optimize spec_cntrl_ibpb on PREEMPT_RCU | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: clear registers after 32bit syscall stackframe is setup | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: reload spec_ctrl cpuid in all microcode load paths | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Prevent unwanted speculation without IBRS | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry: Remove trampoline check from paranoid entry path | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry: Fix paranoid_exit() trampoline clobber | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry: Simplify trampoline stack restore code | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: remove SPEC_CTRL_DEBUG code | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: add noibrs noibpb boot options | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | syscall: Clear unused extra registers on 32-bit compatible syscall entrance | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: cleanup unnecessary ptregscall_common function | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: CLEAR_EXTRA_REGS and extra regs save/restore | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | syscall: Clear unused extra registers on syscall entrance | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: rescan cpuid after a late microcode update | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: add debugfs ibrs_enabled ibpb_enabled | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: consolidate the spec control boot detection | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm/spec_ctrl: allow IBRS to stay enabled in host userland | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: add debug aid to test the entry code without microcode | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: move stuff_RSB in spec_ctrl.h | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry: Stuff RSB for entry to kernel for non-SMEP platform | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Only set IBPB when the new thread cannot ptrace current thread | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Set IBPB upon context switch | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | idle: Disable IBRS when offlining cpu and re-enable on wakeup | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | idle: Disable IBRS entering idle and enable it on wakeup | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: implement spec ctrl C methods | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: save IBRS MSR value in save_paranoid for NMI | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | enter: Use IBRS on syscall and interrupts | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: swap rdx with rsi for nmi nesting detection | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: spec_ctrl_pcp and kaiser_enabled_pcp in same cachline | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: use per-cpu knob instead of ALTERNATIVES for ibpb and ibrs | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | enter: MACROS to set/clear IBRS and set IBPB | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: x86: add SPEC_CTRL to MSR and CPUID lists | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: svm: add MSR_IA32_SPEC_CTRL and MSR_IA32_PRED_CMD | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | svm: Set IBPB when running a different VCPU | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: vmx: add MSR_IA32_SPEC_CTRL and MSR_IA32_PRED_CMD | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: vmx: Set IBPB when running a different VCPU | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: x86: clear registers on VM exit | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: Pad RSB on VM transition | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu/amd: Control indirect branch predictor when SPEC_CTRL not available | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | feature: Report presence of IBPB and IBRS control | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | feature: Enable the x86 feature to control Speculation | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu/amd: Remove now unused definition of MFENCE_RDTSC feature | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu/amd: Make the LFENCE instruction serialized | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kaiser/mm: consider the init_mm.pgd a kaiser pgd | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kaiser/mm: convert userland visible "kpti" name to "pti" | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kaiser/mm: __load_cr3 in resume from RAM after kernel gs has been restored | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kaiser/mm: fix pgd freeing in error path | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: disable global pages by default with KAISER | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | revert "x86/mm/kaiser: Disable global pages by default with KAISER" | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: Replace kaiser with kpti to sync with upstream | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: add "kaiser" and "nokaiser" boot options | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: map the trace idt tables in userland shadow pgd | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: fix RESTORE_CR3 crash in kaiser_stop_machine | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [security] | x86/mm/kaiser: use stop_machine for enable/disable knob | subject prefix |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: use atomic ops to poison/unpoison user pagetables | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: use invpcid to flush the two kaiser PCID AISD | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: use two PCID ASIDs optimize the TLB during enter/exit kernel | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: stop patching flush_tlb_single | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: use PCID feature to make user and kernel switches faster | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: If INVPCID is available, use it to flush global mappings | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/64: Fix reboot interaction with CR4.PCIDE | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/64: Initialize CR4.PCIDE early | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Add a 'noinvpcid' boot option to turn off INVPCID | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Add the 'nopcid' boot option to turn off PCID | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: validate trampoline stack | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry: Move SYSENTER_stack to the beginning of struct tss_struct | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [kernel] | x86/mm/kaiser: isolate the user mapped per cpu areas | subject prefix |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: selective boot time defaults | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: handle call to xen_pv_domain() on PREEMPT_RT | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser/xen: Dynamically disable KAISER when running under Xen PV | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [security] | x86/mm/kaiser: add Kconfig | subject prefix |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: avoid false positives during non-kaiser pgd updates | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: Respect disabled CPU features | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: trampoline stack comments | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: stack trampoline | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: remove paravirt clock warning | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: re-enable vsyscalls | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: allow to build KAISER with KASRL | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: allow KAISER to be enabled/disabled at runtime | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: un-poison PGDs at runtime | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: add a function to check for KAISER being enabled | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: add debugfs file to turn KAISER on/off at runtime | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: disable native VSYSCALL | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: map virtually-addressed performance monitoring buffers | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: map debug IDT tables | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: add kprobes text section | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: map trace interrupt entry | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: map entry stack per-cpu areas | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: map dynamically-allocated LDTs | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: make sure static PGDs are 8k in size | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: allow NX poison to be set in p4d/pgd | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: unmap kernel from userspace page tables (core patch) | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: mark per-cpu data structures required for entry/exit | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: introduce user-mapped per-cpu areas | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: add cr3 switches to entry code | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: remove scratch registers | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: prepare assembly for entry/exit CR3 switching | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: Disable global pages by default with KAISER | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Document X86_CR4_PGE toggling behavior | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/tlb: Make CR4-based TLB flushes more robust | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Do not set _PAGE_USER for init_mm page tables | tag [x86] |
| CVE-2017-5715 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | increase robusteness of bad_iret fixup handler | tag [x86] |
| CVE-2017-5715 | NA-ARCH | 4.14 | [`629eb703d3e4`](https://git.kernel.org/torvalds/c/629eb703d3e4) | [x86] | perf/x86/intel/uncore: Fix memory leaks on allocation failures | tag [x86] |
| CVE-2017-5715 | NA-TOOLS | — | — (RHEL wording, check by hand) | [tools] | objtool: Don't print 'call dest' warnings for ignored functions | tag [tools] |
| CVE-2017-5753 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | locking/barriers: prevent speculative execution based on Coverity scan results | generic code, tag [kernel] |
| CVE-2017-5753 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | fs: prevent speculative execution | generic code, tag [kernel] |
| CVE-2017-5753 | CANDIDATE | — | — (RHEL wording, check by hand) | [media] | uvcvideo: prevent speculative execution | CONFIG_USB_VIDEO_CLASS=y in A37 |
| CVE-2017-5753 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | locking/barriers: introduce new memory barrier gmb() | generic code, tag [kernel] |
| CVE-2017-5753 | CANDIDATE | 3.14 | [`887843961c4b`](https://git.kernel.org/torvalds/c/887843961c4b) | [mm] | fix bad rss-counter if remap_file_pages raced migration | generic code, tag [mm] |
| CVE-2017-5753 | NA-CONFIG | — | — (RHEL wording, check by hand) | [fs] | udf: prevent speculative execution | CONFIG_UDF_FS not set in A37 |
| CVE-2017-5753 | NA-CONFIG | — | — (RHEL wording, check by hand) | [kernel] | userns: prevent speculative execution | CONFIG_USER_NS not set in A37 |
| CVE-2017-5753 | NA-HW | — | — (RHEL wording, check by hand) | [scsi] | qla2xxx: prevent speculative execution | tag [scsi] |
| CVE-2017-5753 | NA-HW | — | — (RHEL wording, check by hand) | [netdrv] | p54: prevent speculative execution | tag [netdrv] |
| CVE-2017-5753 | NA-HW | — | — (RHEL wording, check by hand) | [netdrv] | carl9170: prevent speculative execution | tag [netdrv] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry: Invoke TRACE_IRQS_IRETQ in paranoid_userspace_restore_all | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu: fix get_scattered_cpu_leaf for IBPB feature | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: show added cpuid flags in /proc/cpuinfo after late microcode update | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: svm: spec_ctrl at vmexit needs per-cpu areas functional | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: init_tss is supposed to go in the PAGE_ALIGNED per-cpu section | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Eliminate redundnat FEATURE Not Present messages | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kaiser/mm: skip IBRS/CR3 restore when paranoid exception returns to userland | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: set IBRS during resume from RAM if ibrs_enabled is 2 | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: allow use_ibp_disable only if both SPEC_CTRL and IBPB_SUPPORT are missing | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Documentation spec_ctrl.txt | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: remove irqs_disabled() check from intel_idle() | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: use enum when setting ibrs/ibpb_enabled | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: undo speculation barrier for ibrs_enabled and noibrs_cmdline | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: introduce ibpb_enabled = 2 for IBPB instead of IBRS | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: introduce SPEC_CTRL_PCP_ONLY_IBPB | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: cleanup s/flush/sync/ naming when sending IPIs | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: set IBRS during CPU init if in ibrs_enabled == 2 | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: use IBRS_ENABLED instead of 1 | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: allow the IBP disable feature to be toggled at runtime | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: always initialize save_reg in ENABLE_IBRS_SAVE_AND_CLOBBER | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: ibrs_enabled() is expected to return > 1 | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: issue a __spec_ctrl_ibpb if a credential check isn't possible | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | ibpb: don't optimize spec_cntrl_ibpb on PREEMPT_RCU | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: clear registers after 32bit syscall stackframe is setup | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: reload spec_ctrl cpuid in all microcode load paths | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Prevent unwanted speculation without IBRS | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry: Remove trampoline check from paranoid entry path | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry: Fix paranoid_exit() trampoline clobber | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry: Simplify trampoline stack restore code | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: remove SPEC_CTRL_DEBUG code | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: add noibrs noibpb boot options | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | syscall: Clear unused extra registers on 32-bit compatible syscall entrance | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: cleanup unnecessary ptregscall_common function | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: CLEAR_EXTRA_REGS and extra regs save/restore | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | syscall: Clear unused extra registers on syscall entrance | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: rescan cpuid after a late microcode update | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: add debugfs ibrs_enabled ibpb_enabled | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: consolidate the spec control boot detection | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm/spec_ctrl: allow IBRS to stay enabled in host userland | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: add debug aid to test the entry code without microcode | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: move stuff_RSB in spec_ctrl.h | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry: Stuff RSB for entry to kernel for non-SMEP platform | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Only set IBPB when the new thread cannot ptrace current thread | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Set IBPB upon context switch | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | idle: Disable IBRS when offlining cpu and re-enable on wakeup | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | idle: Disable IBRS entering idle and enable it on wakeup | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: implement spec ctrl C methods | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: save IBRS MSR value in save_paranoid for NMI | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | enter: Use IBRS on syscall and interrupts | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: swap rdx with rsi for nmi nesting detection | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: spec_ctrl_pcp and kaiser_enabled_pcp in same cachline | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: use per-cpu knob instead of ALTERNATIVES for ibpb and ibrs | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | enter: MACROS to set/clear IBRS and set IBPB | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: x86: add SPEC_CTRL to MSR and CPUID lists | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: svm: add MSR_IA32_SPEC_CTRL and MSR_IA32_PRED_CMD | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | svm: Set IBPB when running a different VCPU | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: vmx: add MSR_IA32_SPEC_CTRL and MSR_IA32_PRED_CMD | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: vmx: Set IBPB when running a different VCPU | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: x86: clear registers on VM exit | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: Pad RSB on VM transition | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu/amd: Control indirect branch predictor when SPEC_CTRL not available | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | feature: Report presence of IBPB and IBRS control | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | feature: Enable the x86 feature to control Speculation | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu/amd: Remove now unused definition of MFENCE_RDTSC feature | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu/amd: Make the LFENCE instruction serialized | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kaiser/mm: consider the init_mm.pgd a kaiser pgd | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kaiser/mm: convert userland visible "kpti" name to "pti" | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kaiser/mm: __load_cr3 in resume from RAM after kernel gs has been restored | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kaiser/mm: fix pgd freeing in error path | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: disable global pages by default with KAISER | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | revert "x86/mm/kaiser: Disable global pages by default with KAISER" | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: Replace kaiser with kpti to sync with upstream | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: add "kaiser" and "nokaiser" boot options | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: map the trace idt tables in userland shadow pgd | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: fix RESTORE_CR3 crash in kaiser_stop_machine | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [security] | x86/mm/kaiser: use stop_machine for enable/disable knob | subject prefix |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: use atomic ops to poison/unpoison user pagetables | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: use invpcid to flush the two kaiser PCID AISD | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: use two PCID ASIDs optimize the TLB during enter/exit kernel | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: stop patching flush_tlb_single | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: use PCID feature to make user and kernel switches faster | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: If INVPCID is available, use it to flush global mappings | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/64: Fix reboot interaction with CR4.PCIDE | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/64: Initialize CR4.PCIDE early | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Add a 'noinvpcid' boot option to turn off INVPCID | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Add the 'nopcid' boot option to turn off PCID | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: validate trampoline stack | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry: Move SYSENTER_stack to the beginning of struct tss_struct | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [kernel] | x86/mm/kaiser: isolate the user mapped per cpu areas | subject prefix |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: selective boot time defaults | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: handle call to xen_pv_domain() on PREEMPT_RT | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser/xen: Dynamically disable KAISER when running under Xen PV | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [security] | x86/mm/kaiser: add Kconfig | subject prefix |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: avoid false positives during non-kaiser pgd updates | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: Respect disabled CPU features | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: trampoline stack comments | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: stack trampoline | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: remove paravirt clock warning | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: re-enable vsyscalls | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: allow to build KAISER with KASRL | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: allow KAISER to be enabled/disabled at runtime | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: un-poison PGDs at runtime | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: add a function to check for KAISER being enabled | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: add debugfs file to turn KAISER on/off at runtime | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: disable native VSYSCALL | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: map virtually-addressed performance monitoring buffers | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: map debug IDT tables | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: add kprobes text section | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: map trace interrupt entry | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: map entry stack per-cpu areas | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: map dynamically-allocated LDTs | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: make sure static PGDs are 8k in size | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: allow NX poison to be set in p4d/pgd | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: unmap kernel from userspace page tables (core patch) | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: mark per-cpu data structures required for entry/exit | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: introduce user-mapped per-cpu areas | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: add cr3 switches to entry code | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: remove scratch registers | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: prepare assembly for entry/exit CR3 switching | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: Disable global pages by default with KAISER | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Document X86_CR4_PGE toggling behavior | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/tlb: Make CR4-based TLB flushes more robust | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Do not set _PAGE_USER for init_mm page tables | tag [x86] |
| CVE-2017-5753 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | increase robusteness of bad_iret fixup handler | tag [x86] |
| CVE-2017-5753 | NA-ARCH | 4.14 | [`629eb703d3e4`](https://git.kernel.org/torvalds/c/629eb703d3e4) | [x86] | perf/x86/intel/uncore: Fix memory leaks on allocation failures | tag [x86] |
| CVE-2017-5753 | NA-TOOLS | — | — (RHEL wording, check by hand) | [tools] | objtool: Don't print 'call dest' warnings for ignored functions | tag [tools] |
| CVE-2017-5754 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | fs: prevent speculative execution | generic code, tag [kernel] |
| CVE-2017-5754 | CANDIDATE | — | — (RHEL wording, check by hand) | [media] | uvcvideo: prevent speculative execution | CONFIG_USB_VIDEO_CLASS=y in A37 |
| CVE-2017-5754 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | locking/barriers: introduce new memory barrier gmb() | generic code, tag [kernel] |
| CVE-2017-5754 | CANDIDATE | 3.14 | [`887843961c4b`](https://git.kernel.org/torvalds/c/887843961c4b) | [mm] | fix bad rss-counter if remap_file_pages raced migration | generic code, tag [mm] |
| CVE-2017-5754 | NA-CONFIG | — | — (RHEL wording, check by hand) | [fs] | udf: prevent speculative execution | CONFIG_UDF_FS not set in A37 |
| CVE-2017-5754 | NA-CONFIG | — | — (RHEL wording, check by hand) | [kernel] | userns: prevent speculative execution | CONFIG_USER_NS not set in A37 |
| CVE-2017-5754 | NA-HW | — | — (RHEL wording, check by hand) | [scsi] | qla2xxx: prevent speculative execution | tag [scsi] |
| CVE-2017-5754 | NA-HW | — | — (RHEL wording, check by hand) | [netdrv] | p54: prevent speculative execution | tag [netdrv] |
| CVE-2017-5754 | NA-HW | — | — (RHEL wording, check by hand) | [netdrv] | carl9170: prevent speculative execution | tag [netdrv] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [powerpc] | kvm: book3s: Provide information about hardware/firmware CVE workarounds | tag [powerpc] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry: Invoke TRACE_IRQS_IRETQ in paranoid_userspace_restore_all | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu: fix get_scattered_cpu_leaf for IBPB feature | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: show added cpuid flags in /proc/cpuinfo after late microcode update | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: svm: spec_ctrl at vmexit needs per-cpu areas functional | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: init_tss is supposed to go in the PAGE_ALIGNED per-cpu section | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Eliminate redundnat FEATURE Not Present messages | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kaiser/mm: skip IBRS/CR3 restore when paranoid exception returns to userland | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: set IBRS during resume from RAM if ibrs_enabled is 2 | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: allow use_ibp_disable only if both SPEC_CTRL and IBPB_SUPPORT are missing | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Documentation spec_ctrl.txt | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: remove irqs_disabled() check from intel_idle() | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: use enum when setting ibrs/ibpb_enabled | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: undo speculation barrier for ibrs_enabled and noibrs_cmdline | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: introduce ibpb_enabled = 2 for IBPB instead of IBRS | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: introduce SPEC_CTRL_PCP_ONLY_IBPB | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: cleanup s/flush/sync/ naming when sending IPIs | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: set IBRS during CPU init if in ibrs_enabled == 2 | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: use IBRS_ENABLED instead of 1 | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: allow the IBP disable feature to be toggled at runtime | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: always initialize save_reg in ENABLE_IBRS_SAVE_AND_CLOBBER | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: ibrs_enabled() is expected to return > 1 | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: issue a __spec_ctrl_ibpb if a credential check isn't possible | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | ibpb: don't optimize spec_cntrl_ibpb on PREEMPT_RCU | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: clear registers after 32bit syscall stackframe is setup | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: reload spec_ctrl cpuid in all microcode load paths | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Prevent unwanted speculation without IBRS | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry: Remove trampoline check from paranoid entry path | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry: Fix paranoid_exit() trampoline clobber | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry: Simplify trampoline stack restore code | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: remove SPEC_CTRL_DEBUG code | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: add noibrs noibpb boot options | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | syscall: Clear unused extra registers on 32-bit compatible syscall entrance | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: cleanup unnecessary ptregscall_common function | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: CLEAR_EXTRA_REGS and extra regs save/restore | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | syscall: Clear unused extra registers on syscall entrance | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: rescan cpuid after a late microcode update | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: add debugfs ibrs_enabled ibpb_enabled | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: consolidate the spec control boot detection | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm/spec_ctrl: allow IBRS to stay enabled in host userland | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: add debug aid to test the entry code without microcode | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: move stuff_RSB in spec_ctrl.h | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry: Stuff RSB for entry to kernel for non-SMEP platform | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Only set IBPB when the new thread cannot ptrace current thread | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Set IBPB upon context switch | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | idle: Disable IBRS when offlining cpu and re-enable on wakeup | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | idle: Disable IBRS entering idle and enable it on wakeup | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: implement spec ctrl C methods | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: save IBRS MSR value in save_paranoid for NMI | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | enter: Use IBRS on syscall and interrupts | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: swap rdx with rsi for nmi nesting detection | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: spec_ctrl_pcp and kaiser_enabled_pcp in same cachline | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: use per-cpu knob instead of ALTERNATIVES for ibpb and ibrs | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | enter: MACROS to set/clear IBRS and set IBPB | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: x86: add SPEC_CTRL to MSR and CPUID lists | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: svm: add MSR_IA32_SPEC_CTRL and MSR_IA32_PRED_CMD | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | svm: Set IBPB when running a different VCPU | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: vmx: add MSR_IA32_SPEC_CTRL and MSR_IA32_PRED_CMD | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: vmx: Set IBPB when running a different VCPU | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: x86: clear registers on VM exit | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: Pad RSB on VM transition | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu/amd: Control indirect branch predictor when SPEC_CTRL not available | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | feature: Report presence of IBPB and IBRS control | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | feature: Enable the x86 feature to control Speculation | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu/amd: Remove now unused definition of MFENCE_RDTSC feature | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu/amd: Make the LFENCE instruction serialized | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kaiser/mm: consider the init_mm.pgd a kaiser pgd | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kaiser/mm: convert userland visible "kpti" name to "pti" | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kaiser/mm: __load_cr3 in resume from RAM after kernel gs has been restored | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kaiser/mm: fix pgd freeing in error path | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: disable global pages by default with KAISER | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | revert "x86/mm/kaiser: Disable global pages by default with KAISER" | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: Replace kaiser with kpti to sync with upstream | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: add "kaiser" and "nokaiser" boot options | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: map the trace idt tables in userland shadow pgd | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: fix RESTORE_CR3 crash in kaiser_stop_machine | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [security] | x86/mm/kaiser: use stop_machine for enable/disable knob | subject prefix |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: use atomic ops to poison/unpoison user pagetables | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: use invpcid to flush the two kaiser PCID AISD | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: use two PCID ASIDs optimize the TLB during enter/exit kernel | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: stop patching flush_tlb_single | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: use PCID feature to make user and kernel switches faster | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: If INVPCID is available, use it to flush global mappings | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/64: Fix reboot interaction with CR4.PCIDE | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/64: Initialize CR4.PCIDE early | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Add a 'noinvpcid' boot option to turn off INVPCID | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Add the 'nopcid' boot option to turn off PCID | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: validate trampoline stack | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry: Move SYSENTER_stack to the beginning of struct tss_struct | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [kernel] | x86/mm/kaiser: isolate the user mapped per cpu areas | subject prefix |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: selective boot time defaults | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: handle call to xen_pv_domain() on PREEMPT_RT | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser/xen: Dynamically disable KAISER when running under Xen PV | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [security] | x86/mm/kaiser: add Kconfig | subject prefix |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: avoid false positives during non-kaiser pgd updates | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: Respect disabled CPU features | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: trampoline stack comments | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: stack trampoline | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: remove paravirt clock warning | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: re-enable vsyscalls | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: allow to build KAISER with KASRL | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: allow KAISER to be enabled/disabled at runtime | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: un-poison PGDs at runtime | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: add a function to check for KAISER being enabled | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: add debugfs file to turn KAISER on/off at runtime | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: disable native VSYSCALL | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: map virtually-addressed performance monitoring buffers | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: map debug IDT tables | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: add kprobes text section | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: map trace interrupt entry | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: map entry stack per-cpu areas | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: map dynamically-allocated LDTs | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: make sure static PGDs are 8k in size | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: allow NX poison to be set in p4d/pgd | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: unmap kernel from userspace page tables (core patch) | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: mark per-cpu data structures required for entry/exit | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: introduce user-mapped per-cpu areas | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: add cr3 switches to entry code | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: remove scratch registers | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: prepare assembly for entry/exit CR3 switching | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/kaiser: Disable global pages by default with KAISER | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Document X86_CR4_PGE toggling behavior | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm/tlb: Make CR4-based TLB flushes more robust | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Do not set _PAGE_USER for init_mm page tables | tag [x86] |
| CVE-2017-5754 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | increase robusteness of bad_iret fixup handler | tag [x86] |
| CVE-2017-5754 | NA-ARCH | 4.14 | [`629eb703d3e4`](https://git.kernel.org/torvalds/c/629eb703d3e4) | [x86] | perf/x86/intel/uncore: Fix memory leaks on allocation failures | tag [x86] |
| CVE-2017-5754 | NA-TOOLS | — | — (RHEL wording, check by hand) | [tools] | objtool: Don't print 'call dest' warnings for ignored functions | tag [tools] |
| CVE-2017-7308 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | packet: fix overflow in check for tp_reserve | CONFIG_PACKET=y in A37 |
| CVE-2017-7308 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | packet: fix overflow in check for tp_frame_nr | CONFIG_PACKET=y in A37 |
| CVE-2017-7308 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | packet: fix overflow in check for priv area size | CONFIG_PACKET=y in A37 |
| CVE-2017-7477 | CANDIDATE | 4.11 | [`5294b83086cc`](https://git.kernel.org/torvalds/c/5294b83086cc) | [net] | macsec: dynamically allocate space for sglist | generic code, tag [net] |
| CVE-2017-7477 | CANDIDATE | 4.11 | [`4d6fa57b4dab`](https://git.kernel.org/torvalds/c/4d6fa57b4dab) | [net] | macsec: avoid heap overflow in skb_to_sgvec | generic code, tag [net] |
| CVE-2017-7542 | CANDIDATE | 4.13 | [`3de33e1ba050`](https://git.kernel.org/torvalds/c/3de33e1ba050) | [net] | ipv6: accept 64k - 1 packet length in ip6_find_1stfragopt() | generic code, tag [net] |
| CVE-2017-7542 | CANDIDATE | 4.13 | [`6399f1fae4ec`](https://git.kernel.org/torvalds/c/6399f1fae4ec) | [net] | ipv6: avoid overflow of offset in ip6_find_1stfragopt | generic code, tag [net] |
| CVE-2017-7616 | CANDIDATE | — | — (RHEL wording, check by hand) | [mm] | mempolicy.c: fix error handling in set_mempolicy and mbind | generic code, tag [mm] |
| CVE-2017-7895 | CANDIDATE | 4.11 | [`db44bac41bbf`](https://git.kernel.org/torvalds/c/db44bac41bbf) | [fs] | nfsd4: minor NFSv2/v3 write decoding cleanup | generic code, tag [fs] |
| CVE-2017-7895 | NA-CONFIG | 4.11 | [`13bf9fbff0e5`](https://git.kernel.org/torvalds/c/13bf9fbff0e5) | [fs] | nfsd: stricter decoding of write-like NFSv2/v3 ops | CONFIG_NFSD not set in A37 |
| CVE-2017-12190 | CANDIDATE | 4.14 | [`2b04e8f6bbb1`](https://git.kernel.org/torvalds/c/2b04e8f6bbb1) | [fs] | more bio_map_user_iov() leak fixes | generic code, tag [fs] |
| CVE-2017-12190 | CANDIDATE | 4.14 | [`95d78c28b5a8`](https://git.kernel.org/torvalds/c/95d78c28b5a8) | [fs] | fix unbalanced page refcounting in bio_map_user_iov | generic code, tag [fs] |
| CVE-2017-13166 | CANDIDATE | — | — (RHEL wording, check by hand) | [media] | v4l2-compat-ioctl32.c: refactor compat ioctl32 logic fixup | CONFIG_VIDEO_V4L2=y in A37 |
| CVE-2017-13166 | CANDIDATE | — | — (RHEL wording, check by hand) | [media] | v4l2-compat-ioctl32.c: refactor compat ioctl32 logic | CONFIG_VIDEO_V4L2=y in A37 |
| CVE-2017-13215 | CANDIDATE | — | — (RHEL wording, check by hand) | [crypto] | algif_skcipher: Load TX SG list after waiting | generic code, tag [crypto] |
| CVE-2017-15129 | CANDIDATE | 4.15 | [`21b594435005`](https://git.kernel.org/torvalds/c/21b594435005) | [net] | Fix double free and memory corruption in get_net_ns_by_id() | generic code, tag [net] |
| CVE-2017-16939 | CANDIDATE | 4.14 | [`1137b5e2529a`](https://git.kernel.org/torvalds/c/1137b5e2529a) | [net] | ipsec: Fix aborted xfrm policy dump crash | CONFIG_XFRM=y in A37 |
| CVE-2017-17448 | CANDIDATE | 4.15 | [`916a27901de0`](https://git.kernel.org/torvalds/c/916a27901de0) | [net] | netfilter: xt_osf: Add missing permission checks | CONFIG_NETFILTER_XTABLES=y in A37 |
| CVE-2017-17448 | CANDIDATE | 4.15 | [`4b380c42f7d0`](https://git.kernel.org/torvalds/c/4b380c42f7d0) | [net] | netfilter: nfnetlink_cthelper: Add missing permission checks | CONFIG_NETFILTER=y in A37 |
| CVE-2017-17449 | CANDIDATE | 4.15 | [`93c647643b48`](https://git.kernel.org/torvalds/c/93c647643b48) | [net] | netlink: Add netns check on taps | generic code, tag [net] |
| CVE-2017-17558 | CANDIDATE | 4.15 | [`48a4ff1c7bb5`](https://git.kernel.org/torvalds/c/48a4ff1c7bb5) | [usb] | core: prevent malicious bNumInterfaces overflow | CONFIG_USB=y in A37 |
| CVE-2017-17805 | CANDIDATE | — | — (RHEL wording, check by hand) | [crypto] | salsa20: fix blkcipher_walk API usage | generic code, tag [crypto] |
| CVE-2017-17807 | CANDIDATE | 4.15 | [`4dca6ea1d943`](https://git.kernel.org/torvalds/c/4dca6ea1d943) | [security] | KEYS: add missing permission check for request_key() destination | CONFIG_KEYS=y in A37 |
| CVE-2017-17807 | CANDIDATE | 4.15 | [`a2d8737d5c78`](https://git.kernel.org/torvalds/c/a2d8737d5c78) | [security] | KEYS: remove unnecessary get/put of explicit dest_keyring | CONFIG_KEYS=y in A37 |
| CVE-2017-17807 | CANDIDATE | 4.8 | [`965475acca2c`](https://git.kernel.org/torvalds/c/965475acca2c) | [security] | KEYS: Strip trailing spaces | CONFIG_KEYS=y in A37 |
| CVE-2017-18208 | CANDIDATE | — | — (RHEL wording, check by hand) | [mm] | madvise: fix madvise() infinite loop under special circumstances | generic code, tag [mm] |
| CVE-2017-18344 | CANDIDATE | 4.15 | [`cef31d9af908`](https://git.kernel.org/torvalds/c/cef31d9af908) | [kernel] | posix-timer: Properly check sigevent->sigev_notify | generic code, tag [kernel] |
| CVE-2017-18551 | CANDIDATE | 4.15 | [`89c6efa61f57`](https://git.kernel.org/torvalds/c/89c6efa61f57) | [i2c] | i2c: core-smbus: prevent stack corruption on read I2C_BLOCK_DATA | CONFIG_I2C=y in A37 |
| CVE-2017-18595 | CANDIDATE | 4.15 | [`4397f04575c4`](https://git.kernel.org/torvalds/c/4397f04575c4) | [kernel] | tracing: Fix possible double free on failure of allocating trace buffer | CONFIG_FTRACE=y in A37 |
| CVE-2017-18595 | CANDIDATE | 4.15 | [`24f2aaf952ee`](https://git.kernel.org/torvalds/c/24f2aaf952ee) | [kernel] | tracing: Fix crash when it fails to alloc ring buffer | CONFIG_FTRACE=y in A37 |
| CVE-2017-1000251 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | l2cap: prevent stack overflow on incoming bluetooth packet | generic code, tag [net] |
| CVE-2017-1000410 | CANDIDATE | 4.15 | [`06e7e776ca4d`](https://git.kernel.org/torvalds/c/06e7e776ca4d) | [net] | bluetooth: Prevent stack info leak from the EFS element | CONFIG_BT=y in A37 |
| CVE-2018-1068 | CANDIDATE | 4.16 | [`932909d9b28d`](https://git.kernel.org/torvalds/c/932909d9b28d) | [net] | netfilter: ebtables: fix erroneous reject of last rule | CONFIG_BRIDGE_NF_EBTABLES=y in A37 |
| CVE-2018-1068 | CANDIDATE | 4.16 | [`b71812168571`](https://git.kernel.org/torvalds/c/b71812168571) | [net] | netfilter: ebtables: CONFIG_COMPAT: don't trust userland offsets | CONFIG_BRIDGE_NF_EBTABLES=y in A37 |
| CVE-2018-1068 | CANDIDATE | 4.16 | [`c8d70a700a5b`](https://git.kernel.org/torvalds/c/c8d70a700a5b) | [net] | netfilter: bridge: ebt_among: add more missing match size checks | CONFIG_BRIDGE_NF_EBTABLES=y in A37 |
| CVE-2018-1068 | CANDIDATE | 4.16 | [`c4585a2823ed`](https://git.kernel.org/torvalds/c/c4585a2823ed) | [net] | netfilter: bridge: ebt_among: add missing match size checks | CONFIG_BRIDGE_NF_EBTABLES=y in A37 |
| CVE-2018-1094 | CANDIDATE | 4.17 | [`18db4b4e6fc3`](https://git.kernel.org/torvalds/c/18db4b4e6fc3) | [fs] | ext4: don't allow r/w mounts if metadata blocks overlap the superblock | CONFIG_EXT4_FS=y in A37 |
| CVE-2018-1120 | CANDIDATE | 4.17 | [`7f7ccc2ccc2e`](https://git.kernel.org/torvalds/c/7f7ccc2ccc2e) | [fs] | proc: do not access cmdline nor environ from file-backed areas | CONFIG_PROC_FS=y in A37 |
| CVE-2018-3620 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | cpu/hotplug: Fix 'online' sysfs entry with 'nosmt' | generic code, tag [kernel] |
| CVE-2018-3620 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | cpu/hotplug: Enable 'nosmt' as late as possible | generic code, tag [kernel] |
| CVE-2018-3620 | CANDIDATE | 4.19 | [`73d5e2b47264`](https://git.kernel.org/torvalds/c/73d5e2b47264) | [kernel] | cpu/hotplug: detect SMT disabled by BIOS | generic code, tag [kernel] |
| CVE-2018-3620 | CANDIDATE | 4.19 | [`fee0aede6f47`](https://git.kernel.org/torvalds/c/fee0aede6f47) | [kernel] | cpu/hotplug: set cpu_smt_not_supported early | generic code, tag [kernel] |
| CVE-2018-3620 | CANDIDATE | 4.19 | [`8e1b706b6e81`](https://git.kernel.org/torvalds/c/8e1b706b6e81) | [kernel] | cpu/hotplug: expose smt control init function | generic code, tag [kernel] |
| CVE-2018-3620 | CANDIDATE | 4.19 | [`215af5499d9e`](https://git.kernel.org/torvalds/c/215af5499d9e) | [kernel] | cpu/hotplug: online siblings when smt control is turned on | generic code, tag [kernel] |
| CVE-2018-3620 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | cpu/hotplug: boot ht siblings at least once, part 2 | generic code, tag [kernel] |
| CVE-2018-3620 | CANDIDATE | — | — (RHEL wording, check by hand) | [mm] | x86, l1tf: protect _page_file ptes against speculation | generic code, tag [mm] |
| CVE-2018-3620 | CANDIDATE | 4.19 | [`0cc3cd21657b`](https://git.kernel.org/torvalds/c/0cc3cd21657b) | [kernel] | cpu/hotplug: boot ht siblings at least once | generic code, tag [kernel] |
| CVE-2018-3620 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | cpu/hotplug: provide knobs to control smt, part 2 | generic code, tag [kernel] |
| CVE-2018-3620 | CANDIDATE | 4.19 | [`05736e4ac13c`](https://git.kernel.org/torvalds/c/05736e4ac13c) | [kernel] | cpu/hotplug: provide knobs to control smt | generic code, tag [kernel] |
| CVE-2018-3620 | CANDIDATE | 4.19 | [`cc1fe215e1ef`](https://git.kernel.org/torvalds/c/cc1fe215e1ef) | [kernel] | cpu/hotplug: split do_cpu_down() | generic code, tag [kernel] |
| CVE-2018-3620 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | [x86] [kernel] x86, l1tf: sync with latest l1tf patches | generic code, tag [kernel] |
| CVE-2018-3620 | CANDIDATE | — | — (RHEL wording, check by hand) | [mm] | l1tf: disallow non privileged high mmio prot_none mappings | generic code, tag [mm] |
| CVE-2018-3620 | CANDIDATE | — | — (RHEL wording, check by hand) | [mm] | x86, l1tf: limit swap file size to max_pa/2 | generic code, tag [mm] |
| CVE-2018-3620 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | x86, l1tf: add sysfs reporting for l1tf | generic code, tag [kernel] |
| CVE-2018-3620 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | spec_ctrl: sync with upstream cpu_set_bug_bits() | generic code, tag [kernel] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: remove extra newline in 'vmentry_l1d_flush' sysfs file | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm/vmx: initialize the vmx_l1d_flush_pages' content | tag [x86] |
| CVE-2018-3620 | NA-ARCH | 4.19 | [`6c26fcd2abfe`](https://git.kernel.org/torvalds/c/6c26fcd2abfe) | [kernel] | x86/speculation/l1tf: Unbreak !__HAVE_ARCH_PFN_MODIFY_ALLOWED architectures | subject prefix |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | bugs, kvm: introduce boot-time control of l1tf mitigations | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: allow runtime control of l1d flush | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: serialize l1d flush parameter setter | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: add static key for flush always | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: move l1tf setup function | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | l1tf: handle ept disabled state proper | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: drop l1tf msr list approach | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | litf: introduce vmx status variable | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | bugs: make cpu_show_common() static | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | bugs: concentrate bug reporting into a separate function | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm/vmx: use msr save list for ia32_flush_cmd if required | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm/vmx: extend add_atomic_switch_msr() to allow vmenter only msrs | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm/vmx: separate the vmx autoload guest/host number accounting | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm/vmx: add find_msr() helper function | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm/vmx: split the vmx msr load structures to have an host/guest numbers | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: x86: mitigation for l1 cache terminal fault vulnerabilities, part 3 | tag [x86] |
| CVE-2018-3620 | NA-ARCH | 4.19 | [`26acfb666a47`](https://git.kernel.org/torvalds/c/26acfb666a47) | [kernel] | x86/kvm: warn user if kvm is loaded smt and l1tf cpu bug being present | subject prefix |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/l1tf: fix typo in l1tf mitigation string | tag [x86] |
| CVE-2018-3620 | NA-ARCH | 4.19 | [`0cc3cd21657b`](https://git.kernel.org/torvalds/c/0cc3cd21657b) | [x86] | cpu/hotplug: boot ht siblings at least once | tag [x86] |
| CVE-2018-3620 | NA-ARCH | 4.19 | [`506a66f37489`](https://git.kernel.org/torvalds/c/506a66f37489) | [x86] | revert "x86/apic: ignore secondary threads if nosmt=force" | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/l1tf: fix up pte->pfn conversion for pae | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/l1tf: protect pae swap entries against l1tf | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu/amd: move topoext reenablement before reading smp_num_siblings | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/l1tf: extend 64bit swap file size limit | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu/amd: remove the pointless detect_ht() call | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | bugs: move the l1tf function and define pr_fmt properly | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | topology: provide topology_smt_supported() | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | smp: provide topology_is_primary_thread(), part 2 | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | apic: ignore secondary threads if nosmt=force | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu/amd: evaluate smp_num_siblings early | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu/amd: do not check cpuid max ext level before parsing smp info | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu/intel: evaluate smp_num_siblings early | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu/topology: provide detect_extended_topology_early() | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu/common: provide detect_ht_early() | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu: remove the pointless cpu printout | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | smp: provide topology_is_primary_thread() | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | l1tf: fix build for config_numa_balancing=n | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | l1tf: protect _page_numa ptes and pmds against speculation | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | l1tf: report if too much memory for l1tf workaround | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | l1tf: make sure the first page is always reserved | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | l1tf: protect prot_none ptes against speculation | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | l1tf: Protect swap entries against L1TF | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | l1tf: Increase 32bit PAE __PHYSICAL_PAGE_MASK | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: fix swap entry comment and macro | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | add support for l1d flush msr | tag [x86] |
| CVE-2018-3620 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: mitigation for L1 cache terminal fault vulnerabilities | tag [x86] |
| CVE-2018-3620 | NA-TOOLS | — | — (RHEL wording, check by hand) | [documentation] | l1tf: fix typos | tag [documentation] |
| CVE-2018-3620 | NA-TOOLS | — | — (RHEL wording, check by hand) | [documentation] | add section about cpu vulnerabilities | tag [documentation] |
| CVE-2018-3639 | CANDIDATE | 4.17 | [`e96f46ee8587`](https://git.kernel.org/torvalds/c/e96f46ee8587) | [fs] | proc: Use underscores for SSBD in 'status' | CONFIG_PROC_FS=y in A37 |
| CVE-2018-3639 | CANDIDATE | 4.17 | [`5c3070890d06`](https://git.kernel.org/torvalds/c/5c3070890d06) | [kernel] | seccomp: Enable speculation flaw mitigations | CONFIG_SECCOMP=y in A37 |
| CVE-2018-3639 | CANDIDATE | 4.17 | [`fae1fa0fc6cc`](https://git.kernel.org/torvalds/c/fae1fa0fc6cc) | [fs] | proc: Provide details on speculation flaw mitigations | CONFIG_PROC_FS=y in A37 |
| CVE-2018-3639 | CANDIDATE | 4.17 | [`7bbf1373e228`](https://git.kernel.org/torvalds/c/7bbf1373e228) | [kernel] | nospec: Allow getting/setting on non-current task | generic code, tag [kernel] |
| CVE-2018-3639 | CANDIDATE | 4.17 | [`b617cfc85816`](https://git.kernel.org/torvalds/c/b617cfc85816) | [kernel] | prctl: Add speculation control prctls | generic code, tag [kernel] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | bugs: Switch the selection of mitigation from CPU vendor to CPU features | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | bugs: Add AMD's SPEC_CTRL MSR usage | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | bugs: Add AMD's variant of SSB_NO | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Fix VM guest SSBD problems | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Eliminate TIF_SSBD checks in IBRS on/off functions | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Disable SSBD update from scheduler if not user settable | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Make ssbd_enabled writtable | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Remove thread_info check in __wrmsr_on_cpu() | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Write per-thread SSBD state to spec_ctrl_pcp | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Add a read-only ssbd_enabled debugfs file | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | bugs/intel: Set proper CPU features and setup RDS | tag [x86] |
| CVE-2018-3639 | NA-ARCH | 4.16 | [`28c1c9fabf48`](https://git.kernel.org/torvalds/c/28c1c9fabf48) | [x86] | kvm/vmx: Emulate MSR_IA32_ARCH_CAPABILITIES | tag [x86] |
| CVE-2018-3639 | NA-ARCH | 4.17 | [`bc226f07dcd3`](https://git.kernel.org/torvalds/c/bc226f07dcd3) | [x86] | kvm: svm: Implement VIRT_SPEC_CTRL support for SSBD | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation, kvm: Implement support for VIRT_SPEC_CTRL/LS_CFG | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | bugs: Rework spec_ctrl base and mask logic | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Rework SPEC_CTRL update after late microcode loading | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Make sync_all_cpus_ibrs() write spec_ctrl_pcp value | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | bugs: Unify x86_spec_ctrl_(set_guest, restore_host) | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Rework speculative_store_bypass_update() | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Add virtualized speculative store bypass disable support | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | bugs, kvm: Extend speculation control for VIRT_SPEC_CTRL | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: Rename KVM SPEC_CTRL MSR functions to match upstream | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Handle HT correctly on AMD | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpufeatures: Add FEATURE_ZEN | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpufeatures: Disentangle SSBD enumeration | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpufeatures: Disentangle MSR_SPEC_CTRL enumeration from IBRS | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Use synthetic bits for IBRS/IBPB/STIBP | tag [x86] |
| CVE-2018-3639 | NA-ARCH | 4.17 | [`dd0792699c40`](https://git.kernel.org/torvalds/c/dd0792699c40) | [x86] | documentation/spec_ctrl: Do some minor cleanups | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Make "seccomp" the default mode for Speculative Store Bypass | tag [x86] |
| CVE-2018-3639 | NA-ARCH | 4.17 | [`8bf37d8c067b`](https://git.kernel.org/torvalds/c/8bf37d8c067b) | [x86] | seccomp: Move speculation migitation control to arch code | tag [x86] |
| CVE-2018-3639 | NA-ARCH | 4.17 | [`00a02d0c502a`](https://git.kernel.org/torvalds/c/00a02d0c502a) | [x86] | seccomp: Add filter flag to opt-out of SSB mitigation | tag [x86] |
| CVE-2018-3639 | NA-ARCH | 4.17 | [`b849a812f7eb`](https://git.kernel.org/torvalds/c/b849a812f7eb) | [x86] | seccomp: Use PR_SPEC_FORCE_DISABLE | tag [x86] |
| CVE-2018-3639 | NA-ARCH | 4.17 | [`356e4bfff2c5`](https://git.kernel.org/torvalds/c/356e4bfff2c5) | [x86] | prctl: Add force disable speculation | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spectre_v2: No mitigation if CPU not affected and no command override | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | pti: Do not enable PTI on CPUs which are not vulnerable to Meltdown | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | bug: Add X86_BUG_CPU_MELTDOWN and X86_BUG_SPECTRE_V(12) | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | pti: Rename CONFIG_KAISER to CONFIG_PAGE_TABLE_ISOLATION | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Sync up naming of SPEC_CTRL MSR bits with upstream | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Fix late microcode problem with AMD | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Clean up entry code & remove unused APIs | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Mask off SPEC_CTRL MSR bits that are managed by kernel | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: add support for SSBD to RHEL IBRS entry/exit macros | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | bugs: Rename _RDS to _SSBD | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Add prctl for Speculative Store Bypass mitigation | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | process: Allow runtime control of Speculative Store Bypass | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm/vmx: Expose SPEC_CTRL Bit(2) to the guest | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | bugs/amd: Add support to disable RDS on Fam(15, 16, 17)h if requested | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Sync up RDS setting with IBRS code | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | bugs: Provide boot parameters for the spec_store_bypass_disable mitigation | tag [x86] |
| CVE-2018-3639 | NA-ARCH | 4.17 | [`c456442cd3a5`](https://git.kernel.org/torvalds/c/c456442cd3a5) | [base] | x86/bugs: Expose /sys/../spec_store_bypass | subject prefix |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | bugs: Read SPEC_CTRL MSR during boot and re-use | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Use separate PCP variables for IBRS entry and exit | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpufeatures: Make CPU bugs sticky | tag [x86] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [powerpc] | 64s: Move the data access exception out-of-line | tag [powerpc] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [powerpc] | 64s: Move the hdecrementer exception out-of-line | tag [powerpc] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [powerpc] | 64s: Move the decrementer exception out-of-line | tag [powerpc] |
| CVE-2018-3639 | NA-ARCH | — | — (RHEL wording, check by hand) | [powerpc] | 64s: Add support for a store forwarding barrier at kernel entry/exit | tag [powerpc] |
| CVE-2018-3693 | CANDIDATE | 4.17 | [`8d218dd81166`](https://git.kernel.org/torvalds/c/8d218dd81166) | [sound] | seq: oss: Hardening for potential Spectre v1 | CONFIG_SND=y in A37 |
| CVE-2018-3693 | CANDIDATE | 4.17 | [`f5e94b4c6ebd`](https://git.kernel.org/torvalds/c/f5e94b4c6ebd) | [sound] | seq: oss: Fix unbalanced use lock for synth MIDI device | CONFIG_SND=y in A37 |
| CVE-2018-3693 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | time: Protect posix clock array access against speculation | generic code, tag [kernel] |
| CVE-2018-3693 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | sys.c: fix potential Spectre v1 issue | generic code, tag [kernel] |
| CVE-2018-3693 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | autogroup: Fix possible Spectre-v1 indexing for sched_prio_to_weight | generic code, tag [kernel] |
| CVE-2018-3693 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | core: Fix possible Spectre-v1 indexing for ->aux_pages | generic code, tag [kernel] |
| CVE-2018-3693 | CANDIDATE | 4.17 | [`088e861edffb`](https://git.kernel.org/torvalds/c/088e861edffb) | [sound] | control: Hardening for potential Spectre v1 | CONFIG_SND=y in A37 |
| CVE-2018-3693 | CANDIDATE | — | — (RHEL wording, check by hand) | [usb] | vhci_sysfs: fix potential Spectre v1 | CONFIG_USB=y in A37 |
| CVE-2018-3693 | CANDIDATE | 4.16 | [`259d8c1e9843`](https://git.kernel.org/torvalds/c/259d8c1e9843) | [net] | nl80211: Sanitize array index in parse_txq_params | CONFIG_CFG80211=y in A37 |
| CVE-2018-3693 | CANDIDATE | 4.16 | [`56c30ba7b348`](https://git.kernel.org/torvalds/c/56c30ba7b348) | [kernel] | vfs, fdtable: Prevent bounds-check bypass via speculative execution | generic code, tag [kernel] |
| CVE-2018-3693 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | nospec: Introduce barrier_nospec for other arches | generic code, tag [kernel] |
| CVE-2018-3693 | CANDIDATE | 4.16 | [`eb6174f6d1be`](https://git.kernel.org/torvalds/c/eb6174f6d1be) | [kernel] | nospec: Include <asm/barrier.h> dependency | generic code, tag [kernel] |
| CVE-2018-3693 | CANDIDATE | 4.16 | [`b98c6a160a05`](https://git.kernel.org/torvalds/c/b98c6a160a05) | [kernel] | nospec: Allow index argument to have const-qualified type | generic code, tag [kernel] |
| CVE-2018-3693 | CANDIDATE | 4.16 | [`1d91c1d2c80c`](https://git.kernel.org/torvalds/c/1d91c1d2c80c) | [kernel] | nospec: Kill array_index_nospec_mask_check() | generic code, tag [kernel] |
| CVE-2018-3693 | CANDIDATE | 4.16 | [`8fa80c503b48`](https://git.kernel.org/torvalds/c/8fa80c503b48) | [kernel] | nospec: Move array_index_nospec() parameter checking into separate macro | generic code, tag [kernel] |
| CVE-2018-3693 | CANDIDATE | 4.16 | [`f3804203306e`](https://git.kernel.org/torvalds/c/f3804203306e) | [kernel] | array_index_nospec: Sanitize speculative array de-references | generic code, tag [kernel] |
| CVE-2018-3693 | REVIEW | — | — (RHEL wording, check by hand) | [media] | dvb_ca_en50221: prevent using slot_info for Spectre attacs | tag [media], no specific rule |
| CVE-2018-3693 | REVIEW | — | — (RHEL wording, check by hand) | [media] | dvb_ca_en50221: sanity check slot number from userspace | tag [media], no specific rule |
| CVE-2018-3693 | NA-CONFIG | 4.17 | [`acf784bd0ce2`](https://git.kernel.org/torvalds/c/acf784bd0ce2) | [net] | atm: Fix potential Spectre v1 | CONFIG_USB_ATM not set in A37 |
| CVE-2018-3693 | NA-CONFIG | — | — (RHEL wording, check by hand) | [ipc] | sem: mitigate semnum index against spectre v1 | CONFIG_SYSVIPC not set in A37 |
| CVE-2018-3693 | NA-HW | 4.17 | [`f526afcd8f71`](https://git.kernel.org/torvalds/c/f526afcd8f71) | [sound] | rme9652: Hardening for potential Spectre v1 | subject prefix |
| CVE-2018-3693 | NA-HW | 4.17 | [`10513142a711`](https://git.kernel.org/torvalds/c/10513142a711) | [sound] | hdspm: Hardening for potential Spectre v1 | subject prefix |
| CVE-2018-3693 | NA-HW | 4.17 | [`f9d94b57e30f`](https://git.kernel.org/torvalds/c/f9d94b57e30f) | [sound] | asihpi: Hardening for potential Spectre v1 | subject prefix |
| CVE-2018-3693 | NA-HW | 4.17 | [`7f054a5bee09`](https://git.kernel.org/torvalds/c/7f054a5bee09) | [sound] | opl3: Hardening for potential Spectre v1 | subject prefix |
| CVE-2018-3693 | NA-HW | 4.17 | [`69fa6f19b955`](https://git.kernel.org/torvalds/c/69fa6f19b955) | [sound] | hda: Hardening for potential Spectre v1 | subject prefix |
| CVE-2018-3693 | NA-ARCH | — | — (RHEL wording, check by hand) | [powerpc] | add missing barrier_nospec() in __get_user64_nocheck() | tag [powerpc] |
| CVE-2018-3693 | NA-ARCH | — | — (RHEL wording, check by hand) | [atm] | zatm: Fix potential Spectre v1 | tag [atm] |
| CVE-2018-3693 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: Update spectre-v1 mitigation | tag [x86] |
| CVE-2018-3693 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: Add memory barrier on vmcs field lookup | tag [x86] |
| CVE-2018-3693 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | perf/msr: Fix possible Spectre-v1 indexing in the MSR driver | tag [x86] |
| CVE-2018-3693 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | perf: Fix possible Spectre-v1 indexing for x86_pmu::event_map() | tag [x86] |
| CVE-2018-3693 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | perf: Fix possible Spectre-v1 indexing for hw_perf_event cache_* | tag [x86] |
| CVE-2018-3693 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | syscall: Sanitize syscall table de-references under speculation | tag [x86] |
| CVE-2018-3693 | NA-ARCH | — | — (RHEL wording, check by hand) | [powerpc] | Use barrier_nospec in copy_from_user() | tag [powerpc] |
| CVE-2018-3693 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | Introduce barrier_nospec | tag [x86] |
| CVE-2018-3693 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spectre_v1: Disable compiler optimizations over array_index_mask_nospec() | tag [x86] |
| CVE-2018-3693 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | Implement array_index_mask_nospec | tag [x86] |
| CVE-2018-3693 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | uaccess: Use __uaccess_begin_nospec() and uaccess_try_nospec | tag [x86] |
| CVE-2018-3693 | NA-TOOLS | — | — (RHEL wording, check by hand) | [Documentation] | Document array_index_nospec | tag [documentation] |
| CVE-2018-5344 | CANDIDATE | 4.15 | [`ae6650163c66`](https://git.kernel.org/torvalds/c/ae6650163c66) | [block] | loop: fix concurrent lo_open/lo_release | CONFIG_BLK_DEV_LOOP=y in A37 |
| CVE-2018-5390 | CANDIDATE | 4.18 | [`58152ecbbcc6`](https://git.kernel.org/torvalds/c/58152ecbbcc6) | [net] | tcp: add tcp_ooo_try_coalesce() helper | generic code, tag [net] |
| CVE-2018-5390 | CANDIDATE | 4.18 | [`8541b21e781a`](https://git.kernel.org/torvalds/c/8541b21e781a) | [net] | tcp: call tcp_drop() from tcp_data_queue_ofo() | generic code, tag [net] |
| CVE-2018-5390 | CANDIDATE | 4.18 | [`3d4bf93ac120`](https://git.kernel.org/torvalds/c/3d4bf93ac120) | [net] | tcp: detect malicious patterns in tcp_collapse_ofo_queue() | generic code, tag [net] |
| CVE-2018-5390 | CANDIDATE | 4.18 | [`f4a3313d8e2c`](https://git.kernel.org/torvalds/c/f4a3313d8e2c) | [net] | tcp: avoid collapses in tcp_prune_queue() if possible | generic code, tag [net] |
| CVE-2018-5390 | CANDIDATE | 4.18 | [`72cd43ba64fc`](https://git.kernel.org/torvalds/c/72cd43ba64fc) | [net] | tcp: free batches of packets in tcp_prune_ofo_queue() | generic code, tag [net] |
| CVE-2018-5390 | CANDIDATE | 4.15 | [`18a4c0eab262`](https://git.kernel.org/torvalds/c/18a4c0eab262) | [net] | add rb_to_skb() and other rb tree helpers | generic code, tag [net] |
| CVE-2018-5390 | CANDIDATE | 4.9 | [`76f0dcbb5ae1`](https://git.kernel.org/torvalds/c/76f0dcbb5ae1) | [net] | tcp: fix a stale ooo_last_skb after a replace | generic code, tag [net] |
| CVE-2018-5390 | CANDIDATE | 4.9 | [`9f5afeae5152`](https://git.kernel.org/torvalds/c/9f5afeae5152) | [net] | tcp: use an RB tree for ooo receive queue | generic code, tag [net] |
| CVE-2018-5390 | CANDIDATE | 4.9 | [`36a6503fedda`](https://git.kernel.org/torvalds/c/36a6503fedda) | [net] | tcp: refine tcp_prune_ofo_queue() to not drop all packets | generic code, tag [net] |
| CVE-2018-5390 | CANDIDATE | 4.7 | [`532182cd6107`](https://git.kernel.org/torvalds/c/532182cd6107) | [net] | tcp: increment sk_drops for dropped rx packets | generic code, tag [net] |
| CVE-2018-5391 | CANDIDATE | 4.19 | [`a4fd284a1f8f`](https://git.kernel.org/torvalds/c/a4fd284a1f8f) | [net] | ip: process in-order fragments efficiently | generic code, tag [net] |
| CVE-2018-5391 | CANDIDATE | 4.19 | [`0ed4229b08c1`](https://git.kernel.org/torvalds/c/0ed4229b08c1) | [net] | ipv6: defrag: drop non-last frags smaller than min mtu | generic code, tag [net] |
| CVE-2018-5391 | CANDIDATE | 4.19 | [`fa0f527358bd`](https://git.kernel.org/torvalds/c/fa0f527358bd) | [net] | ip: use rb trees for IP frag queue | generic code, tag [net] |
| CVE-2018-5391 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | revert ipv4: use skb coalescing in defragmentation | generic code, tag [net] |
| CVE-2018-5391 | CANDIDATE | 4.19 | [`385114dec8a4`](https://git.kernel.org/torvalds/c/385114dec8a4) | [net] | modify skb_rbtree_purge to return the truesize of all purged skbs | generic code, tag [net] |
| CVE-2018-5391 | CANDIDATE | 4.19 | [`7969e5c40dfd`](https://git.kernel.org/torvalds/c/7969e5c40dfd) | [net] | ip: discard IPv4 datagrams with overlapping segments | generic code, tag [net] |
| CVE-2018-5391 | CANDIDATE | 4.15 | [`7c90584c66cc`](https://git.kernel.org/torvalds/c/7c90584c66cc) | [net] | speed up skb_rbtree_purge() | generic code, tag [net] |
| CVE-2018-6927 | CANDIDATE | 4.15 | [`fbe0e839d1e2`](https://git.kernel.org/torvalds/c/fbe0e839d1e2) | [kernel] | futex: Prevent overflow by strengthen input validation | generic code, tag [kernel] |
| CVE-2018-7191 | CANDIDATE | 4.14 | [`5c25f65fd1e4`](https://git.kernel.org/torvalds/c/5c25f65fd1e4) | [net] | tun: allow positive return values on dev_get_valid_name() call | CONFIG_TUN=y in A37 |
| CVE-2018-7191 | CANDIDATE | 4.14 | [`0ad646c81b21`](https://git.kernel.org/torvalds/c/0ad646c81b21) | [net] | tun: call dev_get_valid_name() before register_netdevice() | CONFIG_TUN=y in A37 |
| CVE-2018-7566 | CANDIDATE | 4.16 | [`d15d662e89fc`](https://git.kernel.org/torvalds/c/d15d662e89fc) | [sound] | alsa: seq: Fix racy pool initializations | CONFIG_SND=y in A37 |
| CVE-2018-7740 | CANDIDATE | — | — (RHEL wording, check by hand) | [mm] | hugetlb.c: clean up VM_WARN usage | generic code, tag [mm] |
| CVE-2018-7740 | CANDIDATE | — | — (RHEL wording, check by hand) | [linux] | include/linux/mmdebug.h: fix VM_WARN(_*)() with CONFIG_DEBUG_VM=n | generic code, tag [linux] |
| CVE-2018-7740 | CANDIDATE | 3.17 | [`ef6b571fb892`](https://git.kernel.org/torvalds/c/ef6b571fb892) | [linux] | include/linux/mmdebug.h: add VM_WARN_ONCE() | generic code, tag [linux] |
| CVE-2018-7740 | CANDIDATE | 4.8 | [`a54f9aebaa9f`](https://git.kernel.org/torvalds/c/a54f9aebaa9f) | [linux] | include/linux/mmdebug.h: add VM_WARN which maps to WARN() | generic code, tag [linux] |
| CVE-2018-7740 | NA-CONFIG | — | — (RHEL wording, check by hand) | [fs] | hugetlbfs: check for pgoff value overflow v3 fix fix | CONFIG_HUGETLBFS not set in A37 |
| CVE-2018-7740 | NA-CONFIG | — | — (RHEL wording, check by hand) | [fs] | hugetlbfs: check for pgoff value overflow v3 | CONFIG_HUGETLBFS not set in A37 |
| CVE-2018-7740 | NA-CONFIG | 4.16 | [`63489f8e8211`](https://git.kernel.org/torvalds/c/63489f8e8211) | [fs] | hugetlbfs: check for pgoff value overflow | CONFIG_HUGETLBFS not set in A37 |
| CVE-2018-7755 | CANDIDATE | 4.19 | [`65eea8edc315`](https://git.kernel.org/torvalds/c/65eea8edc315) | [block] | floppy: Do not copy a kernel pointer to user memory in FDGETPRM ioctl | generic code, tag [block] |
| CVE-2018-9363 | CANDIDATE | 4.19 | [`7992c18810e5`](https://git.kernel.org/torvalds/c/7992c18810e5) | [net] | bluetooth: hidp: buffer overflow in hidp_process_report | CONFIG_BT=y in A37 |
| CVE-2018-9516 | CANDIDATE | — | — (RHEL wording, check by hand) | [hid] | debug: fix the ring buffer implementation | CONFIG_HID=y in A37 |
| CVE-2018-9516 | CANDIDATE | — | — (RHEL wording, check by hand) | [hid] | debug: check length before copy_to_user() | CONFIG_HID=y in A37 |
| CVE-2018-9517 | CANDIDATE | 4.14 | [`f026bc29a8e0`](https://git.kernel.org/torvalds/c/f026bc29a8e0) | [net] | l2tp: pass tunnel pointer to ->session_create() | CONFIG_L2TP=y in A37 |
| CVE-2018-10902 | CANDIDATE | 4.18 | [`39675f7a7c7e`](https://git.kernel.org/torvalds/c/39675f7a7c7e) | [sound] | alsa: rawmidi: Change resized buffers atomically | CONFIG_SND=y in A37 |
| CVE-2018-12126 | CANDIDATE | 5.2 | [`98af8452945c`](https://git.kernel.org/torvalds/c/98af8452945c) | [kernel] | cpu/speculation: Add 'mitigations=' cmdline option | generic code, tag [kernel] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spectre: Fix an error message | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add 'mitigations=' support for MDS | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/l1tf: Increase l1tf memory limit for Nehalem+ | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spectre: Simplify spectre_v2 command line parsing | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Properly set/clear mds_idle_clear static key | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Print SMT vulnerable on MSBDS with mitigations off | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Fix comment | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add SMT warning message | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Move arch_smt_update() call to after mitigation decisions | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add mds=full, nosmt cmdline option | tag [x86] |
| CVE-2018-12126 | NA-ARCH | 5.0 | [`34d66caf251d`](https://git.kernel.org/torvalds/c/34d66caf251d) | [kernel] | x86/speculation: Remove redundant arch_smt_update() invocation | subject prefix |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Update MDS mitigation status after late microcode load | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Add debugfs x86/smt_present file | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Disable automatic enabling of STIBP with SMT on | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add sysfs reporting for MDS | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add mitigation control for MDS | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm/vmx: Add MDS protection when L1D Flush is not active | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Clear CPU buffers on exit to user | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: Expose X86_FEATURE_MD_CLEAR to guests | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add BUG_MSBDS_ONLY | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add basic bug infrastructure for MDS | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Consolidate CPU whitelists | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | msr-index: Cleanup bit defines | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | l1tf: Show actual SMT state | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Simplify sysfs report of VMX L1TF vulnerability | tag [x86] |
| CVE-2018-12126 | NA-ARCH | 4.20 | [`a74cfffb03b7`](https://git.kernel.org/torvalds/c/a74cfffb03b7) | [kernel] | x86/speculation: Rework SMT state change | subject prefix |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Disable STIBP when enhanced IBRS is in use | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Move STIPB/IBPB string conditionals out of cpu_show_common() | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Enable cross-hyperthread spectre v2 STIBP mitigation | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spectre_v2: Make spectre_v2_mitigation mode available | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Add X86_FEATURE_USE_IBPB | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Add casting to fix compilation error | tag [x86] |
| CVE-2018-12126 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpufeatures: Add Intel PCONFIG cpufeature | tag [x86] |
| CVE-2018-12126 | NA-TOOLS | 5.2 | [`95310e348a32`](https://git.kernel.org/torvalds/c/95310e348a32) | [documentation] | x86/speculation/mds: Fix documentation typo | tag [documentation] |
| CVE-2018-12126 | NA-TOOLS | — | — (RHEL wording, check by hand) | [documentation] | Correct the possible MDS sysfs values | tag [documentation] |
| CVE-2018-12126 | NA-TOOLS | 5.2 | [`e672f8bf71c6`](https://git.kernel.org/torvalds/c/e672f8bf71c6) | [documentation] | x86/mds: Add MDSUM variant to the MDS documentation | tag [documentation] |
| CVE-2018-12126 | NA-TOOLS | 5.2 | [`0336e04a6520`](https://git.kernel.org/torvalds/c/0336e04a6520) | [documentation] | s390/speculation: Support 'mitigations=' cmdline option | tag [documentation] |
| CVE-2018-12126 | NA-TOOLS | 5.2 | [`782e69efb3df`](https://git.kernel.org/torvalds/c/782e69efb3df) | [documentation] | powerpc/speculation: Support 'mitigations=' cmdline option | tag [documentation] |
| CVE-2018-12126 | NA-TOOLS | 5.2 | [`d68be4c4d312`](https://git.kernel.org/torvalds/c/d68be4c4d312) | [documentation] | x86/speculation: Support 'mitigations=' cmdline option | tag [documentation] |
| CVE-2018-12126 | NA-TOOLS | 5.2 | [`5999bbe7a6ea`](https://git.kernel.org/torvalds/c/5999bbe7a6ea) | [documentation] | documentation: Add MDS vulnerability documentation | tag [documentation] |
| CVE-2018-12126 | NA-TOOLS | 5.2 | [`65fd4cb65b2d`](https://git.kernel.org/torvalds/c/65fd4cb65b2d) | [documentation] | documentation: Move L1TF to separate directory | tag [documentation] |
| CVE-2018-12126 | NA-TOOLS | 5.2 | [`22dd8365088b`](https://git.kernel.org/torvalds/c/22dd8365088b) | [documentation] | x86/speculation/mds: Add mitigation mode VMWERV | tag [documentation] |
| CVE-2018-12126 | NA-TOOLS | 5.2 | [`07f07f55a29c`](https://git.kernel.org/torvalds/c/07f07f55a29c) | [documentation] | x86/speculation/mds: Conditionally clear CPU buffers on idle entry | tag [documentation] |
| CVE-2018-12126 | NA-TOOLS | 5.2 | [`6a9e52927251`](https://git.kernel.org/torvalds/c/6a9e52927251) | [documentation] | x86/speculation/mds: Add mds_clear_cpu_buffers() | tag [documentation] |
| CVE-2018-12126 | NA-TOOLS | 4.20 | [`f2c4db1bd807`](https://git.kernel.org/torvalds/c/f2c4db1bd807) | [tools] | x86/cpu: Sanitize FAM6_ATOM naming | tag [tools] |
| CVE-2018-12127 | CANDIDATE | 5.2 | [`98af8452945c`](https://git.kernel.org/torvalds/c/98af8452945c) | [kernel] | cpu/speculation: Add 'mitigations=' cmdline option | generic code, tag [kernel] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spectre: Fix an error message | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add 'mitigations=' support for MDS | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/l1tf: Increase l1tf memory limit for Nehalem+ | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spectre: Simplify spectre_v2 command line parsing | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Properly set/clear mds_idle_clear static key | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Print SMT vulnerable on MSBDS with mitigations off | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Fix comment | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add SMT warning message | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Move arch_smt_update() call to after mitigation decisions | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add mds=full, nosmt cmdline option | tag [x86] |
| CVE-2018-12127 | NA-ARCH | 5.0 | [`34d66caf251d`](https://git.kernel.org/torvalds/c/34d66caf251d) | [kernel] | x86/speculation: Remove redundant arch_smt_update() invocation | subject prefix |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Update MDS mitigation status after late microcode load | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Add debugfs x86/smt_present file | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Disable automatic enabling of STIBP with SMT on | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add sysfs reporting for MDS | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add mitigation control for MDS | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm/vmx: Add MDS protection when L1D Flush is not active | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Clear CPU buffers on exit to user | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: Expose X86_FEATURE_MD_CLEAR to guests | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add BUG_MSBDS_ONLY | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add basic bug infrastructure for MDS | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Consolidate CPU whitelists | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | msr-index: Cleanup bit defines | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | l1tf: Show actual SMT state | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Simplify sysfs report of VMX L1TF vulnerability | tag [x86] |
| CVE-2018-12127 | NA-ARCH | 4.20 | [`a74cfffb03b7`](https://git.kernel.org/torvalds/c/a74cfffb03b7) | [kernel] | x86/speculation: Rework SMT state change | subject prefix |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Disable STIBP when enhanced IBRS is in use | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Move STIPB/IBPB string conditionals out of cpu_show_common() | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Enable cross-hyperthread spectre v2 STIBP mitigation | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spectre_v2: Make spectre_v2_mitigation mode available | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Add X86_FEATURE_USE_IBPB | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Add casting to fix compilation error | tag [x86] |
| CVE-2018-12127 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpufeatures: Add Intel PCONFIG cpufeature | tag [x86] |
| CVE-2018-12127 | NA-TOOLS | 5.2 | [`95310e348a32`](https://git.kernel.org/torvalds/c/95310e348a32) | [documentation] | x86/speculation/mds: Fix documentation typo | tag [documentation] |
| CVE-2018-12127 | NA-TOOLS | — | — (RHEL wording, check by hand) | [documentation] | Correct the possible MDS sysfs values | tag [documentation] |
| CVE-2018-12127 | NA-TOOLS | 5.2 | [`e672f8bf71c6`](https://git.kernel.org/torvalds/c/e672f8bf71c6) | [documentation] | x86/mds: Add MDSUM variant to the MDS documentation | tag [documentation] |
| CVE-2018-12127 | NA-TOOLS | 5.2 | [`0336e04a6520`](https://git.kernel.org/torvalds/c/0336e04a6520) | [documentation] | s390/speculation: Support 'mitigations=' cmdline option | tag [documentation] |
| CVE-2018-12127 | NA-TOOLS | 5.2 | [`782e69efb3df`](https://git.kernel.org/torvalds/c/782e69efb3df) | [documentation] | powerpc/speculation: Support 'mitigations=' cmdline option | tag [documentation] |
| CVE-2018-12127 | NA-TOOLS | 5.2 | [`d68be4c4d312`](https://git.kernel.org/torvalds/c/d68be4c4d312) | [documentation] | x86/speculation: Support 'mitigations=' cmdline option | tag [documentation] |
| CVE-2018-12127 | NA-TOOLS | 5.2 | [`5999bbe7a6ea`](https://git.kernel.org/torvalds/c/5999bbe7a6ea) | [documentation] | documentation: Add MDS vulnerability documentation | tag [documentation] |
| CVE-2018-12127 | NA-TOOLS | 5.2 | [`65fd4cb65b2d`](https://git.kernel.org/torvalds/c/65fd4cb65b2d) | [documentation] | documentation: Move L1TF to separate directory | tag [documentation] |
| CVE-2018-12127 | NA-TOOLS | 5.2 | [`22dd8365088b`](https://git.kernel.org/torvalds/c/22dd8365088b) | [documentation] | x86/speculation/mds: Add mitigation mode VMWERV | tag [documentation] |
| CVE-2018-12127 | NA-TOOLS | 5.2 | [`07f07f55a29c`](https://git.kernel.org/torvalds/c/07f07f55a29c) | [documentation] | x86/speculation/mds: Conditionally clear CPU buffers on idle entry | tag [documentation] |
| CVE-2018-12127 | NA-TOOLS | 5.2 | [`6a9e52927251`](https://git.kernel.org/torvalds/c/6a9e52927251) | [documentation] | x86/speculation/mds: Add mds_clear_cpu_buffers() | tag [documentation] |
| CVE-2018-12127 | NA-TOOLS | 4.20 | [`f2c4db1bd807`](https://git.kernel.org/torvalds/c/f2c4db1bd807) | [tools] | x86/cpu: Sanitize FAM6_ATOM naming | tag [tools] |
| CVE-2018-12130 | CANDIDATE | 5.2 | [`98af8452945c`](https://git.kernel.org/torvalds/c/98af8452945c) | [kernel] | cpu/speculation: Add 'mitigations=' cmdline option | generic code, tag [kernel] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spectre: Fix an error message | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add 'mitigations=' support for MDS | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/l1tf: Increase l1tf memory limit for Nehalem+ | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spectre: Simplify spectre_v2 command line parsing | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Properly set/clear mds_idle_clear static key | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Print SMT vulnerable on MSBDS with mitigations off | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Fix comment | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add SMT warning message | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Move arch_smt_update() call to after mitigation decisions | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add mds=full, nosmt cmdline option | tag [x86] |
| CVE-2018-12130 | NA-ARCH | 5.0 | [`34d66caf251d`](https://git.kernel.org/torvalds/c/34d66caf251d) | [kernel] | x86/speculation: Remove redundant arch_smt_update() invocation | subject prefix |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Update MDS mitigation status after late microcode load | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Add debugfs x86/smt_present file | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Disable automatic enabling of STIBP with SMT on | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add sysfs reporting for MDS | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add mitigation control for MDS | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm/vmx: Add MDS protection when L1D Flush is not active | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Clear CPU buffers on exit to user | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: Expose X86_FEATURE_MD_CLEAR to guests | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add BUG_MSBDS_ONLY | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add basic bug infrastructure for MDS | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Consolidate CPU whitelists | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | msr-index: Cleanup bit defines | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | l1tf: Show actual SMT state | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Simplify sysfs report of VMX L1TF vulnerability | tag [x86] |
| CVE-2018-12130 | NA-ARCH | 4.20 | [`a74cfffb03b7`](https://git.kernel.org/torvalds/c/a74cfffb03b7) | [kernel] | x86/speculation: Rework SMT state change | subject prefix |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Disable STIBP when enhanced IBRS is in use | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Move STIPB/IBPB string conditionals out of cpu_show_common() | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Enable cross-hyperthread spectre v2 STIBP mitigation | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spectre_v2: Make spectre_v2_mitigation mode available | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Add X86_FEATURE_USE_IBPB | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Add casting to fix compilation error | tag [x86] |
| CVE-2018-12130 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpufeatures: Add Intel PCONFIG cpufeature | tag [x86] |
| CVE-2018-12130 | NA-TOOLS | 5.2 | [`95310e348a32`](https://git.kernel.org/torvalds/c/95310e348a32) | [documentation] | x86/speculation/mds: Fix documentation typo | tag [documentation] |
| CVE-2018-12130 | NA-TOOLS | — | — (RHEL wording, check by hand) | [documentation] | Correct the possible MDS sysfs values | tag [documentation] |
| CVE-2018-12130 | NA-TOOLS | 5.2 | [`e672f8bf71c6`](https://git.kernel.org/torvalds/c/e672f8bf71c6) | [documentation] | x86/mds: Add MDSUM variant to the MDS documentation | tag [documentation] |
| CVE-2018-12130 | NA-TOOLS | 5.2 | [`0336e04a6520`](https://git.kernel.org/torvalds/c/0336e04a6520) | [documentation] | s390/speculation: Support 'mitigations=' cmdline option | tag [documentation] |
| CVE-2018-12130 | NA-TOOLS | 5.2 | [`782e69efb3df`](https://git.kernel.org/torvalds/c/782e69efb3df) | [documentation] | powerpc/speculation: Support 'mitigations=' cmdline option | tag [documentation] |
| CVE-2018-12130 | NA-TOOLS | 5.2 | [`d68be4c4d312`](https://git.kernel.org/torvalds/c/d68be4c4d312) | [documentation] | x86/speculation: Support 'mitigations=' cmdline option | tag [documentation] |
| CVE-2018-12130 | NA-TOOLS | 5.2 | [`5999bbe7a6ea`](https://git.kernel.org/torvalds/c/5999bbe7a6ea) | [documentation] | documentation: Add MDS vulnerability documentation | tag [documentation] |
| CVE-2018-12130 | NA-TOOLS | 5.2 | [`65fd4cb65b2d`](https://git.kernel.org/torvalds/c/65fd4cb65b2d) | [documentation] | documentation: Move L1TF to separate directory | tag [documentation] |
| CVE-2018-12130 | NA-TOOLS | 5.2 | [`22dd8365088b`](https://git.kernel.org/torvalds/c/22dd8365088b) | [documentation] | x86/speculation/mds: Add mitigation mode VMWERV | tag [documentation] |
| CVE-2018-12130 | NA-TOOLS | 5.2 | [`07f07f55a29c`](https://git.kernel.org/torvalds/c/07f07f55a29c) | [documentation] | x86/speculation/mds: Conditionally clear CPU buffers on idle entry | tag [documentation] |
| CVE-2018-12130 | NA-TOOLS | 5.2 | [`6a9e52927251`](https://git.kernel.org/torvalds/c/6a9e52927251) | [documentation] | x86/speculation/mds: Add mds_clear_cpu_buffers() | tag [documentation] |
| CVE-2018-12130 | NA-TOOLS | 4.20 | [`f2c4db1bd807`](https://git.kernel.org/torvalds/c/f2c4db1bd807) | [tools] | x86/cpu: Sanitize FAM6_ATOM naming | tag [tools] |
| CVE-2018-12207 | CANDIDATE | 5.4 | [`731dc9df975a`](https://git.kernel.org/torvalds/c/731dc9df975a) | [kernel] | cpu/speculation: Uninline and export CPU mitigations helpers | generic code, tag [kernel] |
| CVE-2018-12207 | NA-ARCH | 5.4 | [`1aa9b9572b10`](https://git.kernel.org/torvalds/c/1aa9b9572b10) | [x86] | kvm: x86: mmu: Recovery of shattered NX large pages | tag [x86] |
| CVE-2018-12207 | NA-ARCH | 5.4 | [`c57c80467f90`](https://git.kernel.org/torvalds/c/c57c80467f90) | [virt] | kvm: Add helper function for creating VM worker threads | tag [virt] |
| CVE-2018-12207 | NA-ARCH | 5.4 | [`b8e8c8303ff2`](https://git.kernel.org/torvalds/c/b8e8c8303ff2) | [x86] | kvm: mmu: ITLB_MULTIHIT mitigation | tag [x86] |
| CVE-2018-12207 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpu: Add Tremont to the cpu vulnerability whitelist | tag [x86] |
| CVE-2018-12207 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | Add ITLB_MULTIHIT bug infrastructure | tag [x86] |
| CVE-2018-12207 | NA-ARCH | 5.4 | [`9167ab799362`](https://git.kernel.org/torvalds/c/9167ab799362) | [x86] | kvm: vmx, svm: always run with EFER.NXE=1 when shadow paging is active | tag [x86] |
| CVE-2018-12207 | NA-ARCH | 5.3 | [`335e192a3fa4`](https://git.kernel.org/torvalds/c/335e192a3fa4) | [x86] | kvm: x86: add tracepoints around __direct_map and FNAME(fetch) | tag [x86] |
| CVE-2018-12207 | NA-ARCH | 5.3 | [`e9f2a760b158`](https://git.kernel.org/torvalds/c/e9f2a760b158) | [x86] | kvm: x86: change kvm_mmu_page_get_gfn BUG_ON to WARN_ON | tag [x86] |
| CVE-2018-12207 | NA-ARCH | 5.3 | [`d679b32611c0`](https://git.kernel.org/torvalds/c/d679b32611c0) | [x86] | kvm: x86: remove now unneeded hugepage gfn adjustment | tag [x86] |
| CVE-2018-12207 | NA-ARCH | 5.3 | [`3fcf2d1bdeb6`](https://git.kernel.org/torvalds/c/3fcf2d1bdeb6) | [x86] | kvm: x86: make FNAME(fetch) and __direct_map more similar | tag [x86] |
| CVE-2018-12207 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: mmu: Do not release the page inside mmu_set_spte() | tag [x86] |
| CVE-2018-12207 | NA-ARCH | 4.5 | [`7ee0e5b29d27`](https://git.kernel.org/torvalds/c/7ee0e5b29d27) | [x86] | kvm: x86: mmu: Remove unused parameter of __direct_map() | tag [x86] |
| CVE-2018-12207 | NA-ARCH | 5.3 | [`0d9ce162cf46`](https://git.kernel.org/torvalds/c/0d9ce162cf46) | [virt] | kvm: Convert kvm_lock to a mutex | tag [virt] |
| CVE-2018-12207 | NA-ARCH | 4.19 | [`42522d08cdba`](https://git.kernel.org/torvalds/c/42522d08cdba) | [x86] | kvm: mmu: drop vcpu param in gpte_access | tag [x86] |
| CVE-2018-12207 | NA-ARCH | 5.4 | [`833b45de69a6`](https://git.kernel.org/torvalds/c/833b45de69a6) | [virt] | kvm: x86, powerpc: do not allow clearing largepages debugfs entry | tag [virt] |
| CVE-2018-12207 | NA-TOOLS | 5.4 | [`7f00cc8d4a51`](https://git.kernel.org/torvalds/c/7f00cc8d4a51) | [documentation] | documentation: Add ITLB_MULTIHIT documentation | tag [documentation] |
| CVE-2018-13053 | CANDIDATE | 4.19 | [`5f936e19cc0e`](https://git.kernel.org/torvalds/c/5f936e19cc0e) | [kernel] | alarmtimer: Prevent overflow for relative nanosleep | generic code, tag [kernel] |
| CVE-2018-13405 | CANDIDATE | 6.0 | [`1639a49ccdce`](https://git.kernel.org/torvalds/c/1639a49ccdce) | [] | fs: move S_ISGID stripping into the vfs_*() helpers | generic code, tag [none] |
| CVE-2018-13405 | CANDIDATE | 6.0 | [`ac6800e279a2`](https://git.kernel.org/torvalds/c/ac6800e279a2) | [] | fs: Add missing umask strip in vfs_tmpfile | generic code, tag [none] |
| CVE-2018-13405 | CANDIDATE | 6.0 | [`2b3416ceff5e`](https://git.kernel.org/torvalds/c/2b3416ceff5e) | [] | fs: add mode_strip_sgid() helper | generic code, tag [none] |
| CVE-2018-13405 | CANDIDATE | 4.18 | [`0fa3ecd87848`](https://git.kernel.org/torvalds/c/0fa3ecd87848) | [fs] | Fix up non-directory creation in SGID directories | generic code, tag [fs] |
| CVE-2018-14634 | CANDIDATE | — | — (RHEL wording, check by hand) | [fs] | exec: Limit arg stack to at most 75 of _STK_LIM | generic code, tag [fs] |
| CVE-2018-14634 | CANDIDATE | — | — (RHEL wording, check by hand) | [fs] | exec: account for argv/envp pointers | generic code, tag [fs] |
| CVE-2018-16884 | CANDIDATE | 4.10 | [`4d712ef1db05`](https://git.kernel.org/torvalds/c/4d712ef1db05) | [fs] | svcauth_gss: Close connection when dropping an incoming message | generic code, tag [fs] |
| CVE-2018-16884 | NA-CONFIG | 5.0 | [`8f7766c805d2`](https://git.kernel.org/torvalds/c/8f7766c805d2) | [fs] | sunrpc: make visible processing error in bc_svc_process() | CONFIG_SUNRPC not set in A37 |
| CVE-2018-16884 | NA-CONFIG | 5.0 | [`64e20ba204df`](https://git.kernel.org/torvalds/c/64e20ba204df) | [fs] | sunrpc: remove unused xpo_prep_reply_hdr callback | CONFIG_SUNRPC not set in A37 |
| CVE-2018-16884 | NA-CONFIG | 5.0 | [`7f3915460987`](https://git.kernel.org/torvalds/c/7f3915460987) | [fs] | sunrpc: remove svc_tcp_bc_class | CONFIG_SUNRPC not set in A37 |
| CVE-2018-16884 | NA-CONFIG | 5.0 | [`a289ce5311f4`](https://git.kernel.org/torvalds/c/a289ce5311f4) | [fs] | sunrpc: replace svc_serv->sv_bc_xprt by boolean flag | CONFIG_SUNRPC not set in A37 |
| CVE-2018-16884 | NA-CONFIG | 5.0 | [`d4b09acf924b`](https://git.kernel.org/torvalds/c/d4b09acf924b) | [fs] | sunrpc: use-after-free in svc_process_common() | CONFIG_SUNRPC not set in A37 |
| CVE-2018-17972 | CANDIDATE | 4.19 | [`f8a00cef1720`](https://git.kernel.org/torvalds/c/f8a00cef1720) | [fs] | proc: restrict kernel stack dumps to root | CONFIG_PROC_FS=y in A37 |
| CVE-2018-17972 | CANDIDATE | 4.18 | [`5d008fb414f7`](https://git.kernel.org/torvalds/c/5d008fb414f7) | [fs] | proc: use "unsigned int" for /proc/*/stack | CONFIG_PROC_FS=y in A37 |
| CVE-2018-18281 | CANDIDATE | 4.19 | [`eb66ae030829`](https://git.kernel.org/torvalds/c/eb66ae030829) | [mm] | mremap: properly flush TLB before releasing the page | generic code, tag [mm] |
| CVE-2018-18397 | CANDIDATE | — | — (RHEL wording, check by hand) | [fs] | userfaultfd.c: remove redundant pointer uwq | generic code, tag [fs] |
| CVE-2018-18397 | CANDIDATE | 4.16 | [`a365ac09d334`](https://git.kernel.org/torvalds/c/a365ac09d334) | [fs] | mm, userfaultfd, thp: avoid waiting when PMD under THP migration | generic code, tag [fs] |
| CVE-2018-18397 | FEATURE-MISSING | 4.20 | [`01e881f5a1fc`](https://git.kernel.org/torvalds/c/01e881f5a1fc) | [fs] | userfaultfd: check VM_MAYWRITE was set after verifying the uffd is registered | CONFIG_USERFAULTFD does not exist in A37 tree |
| CVE-2018-18397 | FEATURE-MISSING | 4.20 | [`3b9aadf7278d`](https://git.kernel.org/torvalds/c/3b9aadf7278d) | [mm] | userfaultfd: allow get_mempolicy(MPOL_F_NODE\|MPOL_F_ADDR) to trigger userfaults | CONFIG_USERFAULTFD does not exist in A37 tree |
| CVE-2018-18397 | FEATURE-MISSING | 4.20 | [`dcf7fe9d8976`](https://git.kernel.org/torvalds/c/dcf7fe9d8976) | [mm] | userfaultfd: shmem: uffdio_copy: set the page dirty if VM_WRITE is not set | CONFIG_USERFAULTFD does not exist in A37 tree |
| CVE-2018-18397 | FEATURE-MISSING | 4.20 | [`e2a50c1f6414`](https://git.kernel.org/torvalds/c/e2a50c1f6414) | [mm] | userfaultfd: shmem: add i_size checks | CONFIG_USERFAULTFD does not exist in A37 tree |
| CVE-2018-18397 | FEATURE-MISSING | 4.20 | [`29ec90660d68`](https://git.kernel.org/torvalds/c/29ec90660d68) | [mm] | userfaultfd: shmem/hugetlbfs: only allow to register VM_MAYWRITE vmas | CONFIG_USERFAULTFD does not exist in A37 tree |
| CVE-2018-18397 | FEATURE-MISSING | 4.20 | [`5b51072e97d5`](https://git.kernel.org/torvalds/c/5b51072e97d5) | [mm] | userfaultfd: shmem: allocate anonymous memory for MAP_PRIVATE shmem | CONFIG_USERFAULTFD does not exist in A37 tree |
| CVE-2018-18397 | FEATURE-MISSING | 4.20 | [`9e368259ad98`](https://git.kernel.org/torvalds/c/9e368259ad98) | [mm] | userfaultfd: use ENOENT instead of EFAULT if the atomic copy user fails | CONFIG_USERFAULTFD does not exist in A37 tree |
| CVE-2018-18397 | FEATURE-MISSING | 4.20 | [`ae62c16e105a`](https://git.kernel.org/torvalds/c/ae62c16e105a) | [fs] | userfaultfd: disable irqs when taking the waitqueue lock | CONFIG_USERFAULTFD does not exist in A37 tree |
| CVE-2018-18397 | FEATURE-MISSING | 4.18 | [`31e810aa1033`](https://git.kernel.org/torvalds/c/31e810aa1033) | [fs] | userfaultfd: remove uffd flags from vma->vm_flags if UFFD_EVENT_FORK fails | CONFIG_USERFAULTFD does not exist in A37 tree |
| CVE-2018-18397 | FEATURE-MISSING | 4.18 | [`1e2c043628c7`](https://git.kernel.org/torvalds/c/1e2c043628c7) | [fs] | userfaultfd: hugetlbfs: fix userfaultfd_huge_must_wait() pte access | CONFIG_USERFAULTFD does not exist in A37 tree |
| CVE-2018-18397 | FEATURE-MISSING | 4.18 | [`df2cc96e7701`](https://git.kernel.org/torvalds/c/df2cc96e7701) | [mm] | userfaultfd: prevent non-cooperative events vs mcopy_atomic races | CONFIG_USERFAULTFD does not exist in A37 tree |
| CVE-2018-18397 | FEATURE-MISSING | 4.16 | [`284cd241a18e`](https://git.kernel.org/torvalds/c/284cd241a18e) | [fs] | userfaultfd: convert to use anon_inode_getfd() | CONFIG_USERFAULTFD does not exist in A37 tree |
| CVE-2018-18445 | CANDIDATE | 4.19 | [`b799207e1e18`](https://git.kernel.org/torvalds/c/b799207e1e18) | [kernel] | bpf: 32-bit RSH verification must truncate input before the ALU op | CONFIG_BPF_SYSCALL=y in A37 |
| CVE-2018-18559 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | packet: fix a race in packet_bind() and packet_notifier() | CONFIG_PACKET=y in A37 |
| CVE-2018-19985 | CANDIDATE | 4.20 | [`5146f95df782`](https://git.kernel.org/torvalds/c/5146f95df782) | [usb] | hso: Fix OOB memory access in hso_probe/hso_get_config_data | CONFIG_USB=y in A37 |
| CVE-2018-19985 | CANDIDATE | 4.20 | [`704620afc70c`](https://git.kernel.org/torvalds/c/704620afc70c) | [usb] | check usb_get_extra_descriptor for proper size | CONFIG_USB=y in A37 |
| CVE-2018-20169 | CANDIDATE | 4.20 | [`5146f95df782`](https://git.kernel.org/torvalds/c/5146f95df782) | [usb] | hso: Fix OOB memory access in hso_probe/hso_get_config_data | CONFIG_USB=y in A37 |
| CVE-2018-20169 | CANDIDATE | 4.20 | [`704620afc70c`](https://git.kernel.org/torvalds/c/704620afc70c) | [usb] | check usb_get_extra_descriptor for proper size | CONFIG_USB=y in A37 |
| CVE-2018-20856 | CANDIDATE | 4.19 | [`54648cf1ec2d`](https://git.kernel.org/torvalds/c/54648cf1ec2d) | [block] | block: blk_init_allocated_queue() set q->fq as NULL in the fail case | generic code, tag [block] |
| CVE-2018-1000004 | CANDIDATE | — | — (RHEL wording, check by hand) | [sound] | alsa: seq: Make ioctls race-free (CVE-2018-1000004) | CONFIG_SND=y in A37 |
| CVE-2018-1000026 | CANDIDATE | 4.16 | [`2b16f048729b`](https://git.kernel.org/torvalds/c/2b16f048729b) | [net] | create skb_gso_validate_mac_len() | generic code, tag [net] |
| CVE-2018-1000026 | NA-HW | 4.16 | [`8914a595110a`](https://git.kernel.org/torvalds/c/8914a595110a) | [netdrv] | bnx2x: disable GSO where gso_size is too big for hardware | tag [netdrv] |
| CVE-2018-1000199 | CANDIDATE | 4.16 | [`f67b15037a7a`](https://git.kernel.org/torvalds/c/f67b15037a7a) | [kernel] | perf/hwbp: Simplify the perf-hwbp code, fix documentation | CONFIG_PERF_EVENTS=y in A37 |
| CVE-2019-3459 | CANDIDATE | 5.1 | [`7c9cbd0b5e38`](https://git.kernel.org/torvalds/c/7c9cbd0b5e38) | [net] | bluetooth: Verify that l2cap_get_conf_opt provides large enough buffer | CONFIG_BT=y in A37 |
| CVE-2019-3819 | CANDIDATE | — | — (RHEL wording, check by hand) | [hid] | debug: fix the ring buffer implementation | CONFIG_HID=y in A37 |
| CVE-2019-3819 | CANDIDATE | — | — (RHEL wording, check by hand) | [hid] | debug: check length before copy_to_user() | CONFIG_HID=y in A37 |
| CVE-2019-3892 | CANDIDATE | 5.1 | [`04f5866e41fb`](https://git.kernel.org/torvalds/c/04f5866e41fb) | [linux] | coredump: fix race condition between mmget_not_zero()/get_task_mm() and core dumping | CONFIG_COREDUMP=y in A37 |
| CVE-2019-3901 | CANDIDATE | 4.6 | [`79c9ce57eb2d`](https://git.kernel.org/torvalds/c/79c9ce57eb2d) | [kernel] | perf/core: Fix perf_event_open() vs. execve() race | CONFIG_PERF_EVENTS=y in A37 |
| CVE-2019-5489 | CANDIDATE | — | — (RHEL wording, check by hand) | [mm] | mincore.c: make mincore() more conservative | generic code, tag [mm] |
| CVE-2019-7308 | CANDIDATE | 5.0 | [`9d5564ddcf2a`](https://git.kernel.org/torvalds/c/9d5564ddcf2a) | [kernel] | bpf: fix inner map masking to prevent oob under speculation | CONFIG_BPF_SYSCALL=y in A37 |
| CVE-2019-7308 | CANDIDATE | 5.0 | [`979d63d50c0c`](https://git.kernel.org/torvalds/c/979d63d50c0c) | [kernel] | bpf: prevent out of bounds speculation on pointer arithmetic | CONFIG_BPF_SYSCALL=y in A37 |
| CVE-2019-7308 | CANDIDATE | 5.0 | [`9d7eceede769`](https://git.kernel.org/torvalds/c/9d7eceede769) | [kernel] | bpf: restrict unknown scalars of mixed signed bounds for unprivileged | CONFIG_BPF_SYSCALL=y in A37 |
| CVE-2019-7308 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | bpf: move {prev_, }insn_idx into verifier env | CONFIG_BPF_SYSCALL=y in A37 |
| CVE-2019-7308 | CANDIDATE | 4.20 | [`aad2eeaf4697`](https://git.kernel.org/torvalds/c/aad2eeaf4697) | [kernel] | bpf: Simplify ptr_min_max_vals adjustment | CONFIG_BPF_SYSCALL=y in A37 |
| CVE-2019-9458 | CANDIDATE | 4.20 | [`92539d3eda2c`](https://git.kernel.org/torvalds/c/92539d3eda2c) | [media] | media: v4l: event: Add subscription to list before calling "add" operation | CONFIG_VIDEO_V4L2=y in A37 |
| CVE-2019-9458 | CANDIDATE | 4.19 | [`ad608fbcf166`](https://git.kernel.org/torvalds/c/ad608fbcf166) | [media] | media: v4l: event: Prevent freeing event subscriptions while accessed | CONFIG_VIDEO_V4L2=y in A37 |
| CVE-2019-9506 | CANDIDATE | 5.2 | [`eca94432934f`](https://git.kernel.org/torvalds/c/eca94432934f) | [net] | Bluetooth: Fix faulty expression for minimum encryption key size check | CONFIG_BT=y in A37 |
| CVE-2019-9506 | CANDIDATE | 5.2 | [`693cd8ce3f88`](https://git.kernel.org/torvalds/c/693cd8ce3f88) | [net] | Bluetooth: Fix regression with minimum encryption key size alignment | CONFIG_BT=y in A37 |
| CVE-2019-9506 | CANDIDATE | 5.2 | [`d5bb334a8e17`](https://git.kernel.org/torvalds/c/d5bb334a8e17) | [net] | Bluetooth: Align minimum encryption key size for LE and BR/EDR connections | CONFIG_BT=y in A37 |
| CVE-2019-10638 | CANDIDATE | 5.2 | [`df453700e8d8`](https://git.kernel.org/torvalds/c/df453700e8d8) | [net] | inet: switch IP ID generator to siphash | generic code, tag [net] |
| CVE-2019-10638 | CANDIDATE | 4.11 | [`2c956a60778c`](https://git.kernel.org/torvalds/c/2c956a60778c) | [lib] | siphash: add cryptographically secure PRF | generic code, tag [lib] |
| CVE-2019-10638 | CANDIDATE | 3.13 | [`a5c21dcefa1c`](https://git.kernel.org/torvalds/c/a5c21dcefa1c) | [fs] | dcache: allow word-at-a-time name hashing with big-endian CPUs | generic code, tag [fs] |
| CVE-2019-10639 | CANDIDATE | 5.1 | [`355b98553789`](https://git.kernel.org/torvalds/c/355b98553789) | [net] | netns: provide pure entropy for net_hash_mix() | generic code, tag [net] |
| CVE-2019-11091 | CANDIDATE | 5.2 | [`98af8452945c`](https://git.kernel.org/torvalds/c/98af8452945c) | [kernel] | cpu/speculation: Add 'mitigations=' cmdline option | generic code, tag [kernel] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spectre: Fix an error message | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add 'mitigations=' support for MDS | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/l1tf: Increase l1tf memory limit for Nehalem+ | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spectre: Simplify spectre_v2 command line parsing | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Properly set/clear mds_idle_clear static key | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Print SMT vulnerable on MSBDS with mitigations off | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Fix comment | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add SMT warning message | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Move arch_smt_update() call to after mitigation decisions | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add mds=full, nosmt cmdline option | tag [x86] |
| CVE-2019-11091 | NA-ARCH | 5.0 | [`34d66caf251d`](https://git.kernel.org/torvalds/c/34d66caf251d) | [kernel] | x86/speculation: Remove redundant arch_smt_update() invocation | subject prefix |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Update MDS mitigation status after late microcode load | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Add debugfs x86/smt_present file | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Disable automatic enabling of STIBP with SMT on | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add sysfs reporting for MDS | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add mitigation control for MDS | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm/vmx: Add MDS protection when L1D Flush is not active | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Clear CPU buffers on exit to user | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: Expose X86_FEATURE_MD_CLEAR to guests | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add BUG_MSBDS_ONLY | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation/mds: Add basic bug infrastructure for MDS | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Consolidate CPU whitelists | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | msr-index: Cleanup bit defines | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | l1tf: Show actual SMT state | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Simplify sysfs report of VMX L1TF vulnerability | tag [x86] |
| CVE-2019-11091 | NA-ARCH | 4.20 | [`a74cfffb03b7`](https://git.kernel.org/torvalds/c/a74cfffb03b7) | [kernel] | x86/speculation: Rework SMT state change | subject prefix |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Disable STIBP when enhanced IBRS is in use | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Move STIPB/IBPB string conditionals out of cpu_show_common() | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | speculation: Enable cross-hyperthread spectre v2 STIBP mitigation | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spectre_v2: Make spectre_v2_mitigation mode available | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Add X86_FEATURE_USE_IBPB | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | spec_ctrl: Add casting to fix compilation error | tag [x86] |
| CVE-2019-11091 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | cpufeatures: Add Intel PCONFIG cpufeature | tag [x86] |
| CVE-2019-11091 | NA-TOOLS | 5.2 | [`95310e348a32`](https://git.kernel.org/torvalds/c/95310e348a32) | [documentation] | x86/speculation/mds: Fix documentation typo | tag [documentation] |
| CVE-2019-11091 | NA-TOOLS | — | — (RHEL wording, check by hand) | [documentation] | Correct the possible MDS sysfs values | tag [documentation] |
| CVE-2019-11091 | NA-TOOLS | 5.2 | [`e672f8bf71c6`](https://git.kernel.org/torvalds/c/e672f8bf71c6) | [documentation] | x86/mds: Add MDSUM variant to the MDS documentation | tag [documentation] |
| CVE-2019-11091 | NA-TOOLS | 5.2 | [`0336e04a6520`](https://git.kernel.org/torvalds/c/0336e04a6520) | [documentation] | s390/speculation: Support 'mitigations=' cmdline option | tag [documentation] |
| CVE-2019-11091 | NA-TOOLS | 5.2 | [`782e69efb3df`](https://git.kernel.org/torvalds/c/782e69efb3df) | [documentation] | powerpc/speculation: Support 'mitigations=' cmdline option | tag [documentation] |
| CVE-2019-11091 | NA-TOOLS | 5.2 | [`d68be4c4d312`](https://git.kernel.org/torvalds/c/d68be4c4d312) | [documentation] | x86/speculation: Support 'mitigations=' cmdline option | tag [documentation] |
| CVE-2019-11091 | NA-TOOLS | 5.2 | [`5999bbe7a6ea`](https://git.kernel.org/torvalds/c/5999bbe7a6ea) | [documentation] | documentation: Add MDS vulnerability documentation | tag [documentation] |
| CVE-2019-11091 | NA-TOOLS | 5.2 | [`65fd4cb65b2d`](https://git.kernel.org/torvalds/c/65fd4cb65b2d) | [documentation] | documentation: Move L1TF to separate directory | tag [documentation] |
| CVE-2019-11091 | NA-TOOLS | 5.2 | [`22dd8365088b`](https://git.kernel.org/torvalds/c/22dd8365088b) | [documentation] | x86/speculation/mds: Add mitigation mode VMWERV | tag [documentation] |
| CVE-2019-11091 | NA-TOOLS | 5.2 | [`07f07f55a29c`](https://git.kernel.org/torvalds/c/07f07f55a29c) | [documentation] | x86/speculation/mds: Conditionally clear CPU buffers on idle entry | tag [documentation] |
| CVE-2019-11091 | NA-TOOLS | 5.2 | [`6a9e52927251`](https://git.kernel.org/torvalds/c/6a9e52927251) | [documentation] | x86/speculation/mds: Add mds_clear_cpu_buffers() | tag [documentation] |
| CVE-2019-11091 | NA-TOOLS | 4.20 | [`f2c4db1bd807`](https://git.kernel.org/torvalds/c/f2c4db1bd807) | [tools] | x86/cpu: Sanitize FAM6_ATOM naming | tag [tools] |
| CVE-2019-11190 | CANDIDATE | 4.8 | [`9f834ec18def`](https://git.kernel.org/torvalds/c/9f834ec18def) | [fs] | binfmt_elf: switch to new creds when switching to new mm | CONFIG_BINFMT_ELF=y in A37 |
| CVE-2019-11487 | CANDIDATE | 5.1 | [`8fde12ca79af`](https://git.kernel.org/torvalds/c/8fde12ca79af) | [mm] | mm: prevent get_user_pages() from overflowing page refcount | generic code, tag [mm] |
| CVE-2019-11487 | CANDIDATE | 4.13 | [`2be7cfed995e`](https://git.kernel.org/torvalds/c/2be7cfed995e) | [mm] | mm/hugetlb.c: __get_user_pages ignores certain follow_hugetlb_page errors | generic code, tag [mm] |
| CVE-2019-11884 | CANDIDATE | 5.2 | [`a1616a5ac99e`](https://git.kernel.org/torvalds/c/a1616a5ac99e) | [net] | bluetooth: hidp: fix buffer overflow | CONFIG_BT=y in A37 |
| CVE-2019-14283 | CANDIDATE | 5.3 | [`da99466ac243`](https://git.kernel.org/torvalds/c/da99466ac243) | [block] | floppy: fix out-of-bounds read in copy_buffer | generic code, tag [block] |
| CVE-2019-15239 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | tcp: reset sk_send_head in tcp_write_queue_purge | generic code, tag [net] |
| CVE-2019-15916 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | sysfs: Fix mem leak in netdev_register_kobject | CONFIG_SYSFS=y in A37 |
| CVE-2019-15917 | CANDIDATE | 5.1 | [`56897b217a1d`](https://git.kernel.org/torvalds/c/56897b217a1d) | [bluetooth] | Bluetooth: hci_ldisc: Postpone HCI_UART_PROTO_READY bit set in hci_uart_set_proto() | CONFIG_BT=y in A37 |
| CVE-2019-16994 | CANDIDATE | 5.0 | [`07f12b26e21a`](https://git.kernel.org/torvalds/c/07f12b26e21a) | [net] | sit: fix memory leak in sit_init_net() | CONFIG_IPV6_SIT=y in A37 |
| CVE-2019-18282 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | flow_dissector: switch to siphash | generic code, tag [net] |
| CVE-2019-18808 | CANDIDATE | 5.5 | [`ffdde5932042`](https://git.kernel.org/torvalds/c/ffdde5932042) | [crypto] | crypto: user - fix memory leak in crypto_report | CONFIG_CRYPTO=y in A37 |
| CVE-2019-18808 | NA-HW | 5.5 | [`128c66429247`](https://git.kernel.org/torvalds/c/128c66429247) | [crypto] | crypto: ccp - Release all allocated memory if sha type is invalid | subject prefix |
| CVE-2019-19055 | CANDIDATE | 5.4 | [`1399c59fa929`](https://git.kernel.org/torvalds/c/1399c59fa929) | [net] | nl80211: fix memory leak in nl80211_get_ftm_responder_stats | CONFIG_CFG80211=y in A37 |
| CVE-2019-19062 | CANDIDATE | 5.5 | [`ffdde5932042`](https://git.kernel.org/torvalds/c/ffdde5932042) | [crypto] | crypto: user - fix memory leak in crypto_report | CONFIG_CRYPTO=y in A37 |
| CVE-2019-19523 | CANDIDATE | 5.4 | [`44efc269db79`](https://git.kernel.org/torvalds/c/44efc269db79) | [usb] | USB: adutux: fix use-after-free on disconnect | CONFIG_USB=y in A37 |
| CVE-2019-19524 | CANDIDATE | 5.4 | [`fa3a5a1880c9`](https://git.kernel.org/torvalds/c/fa3a5a1880c9) | [input] | Input: ff-memless - kill timer in destroy() | CONFIG_INPUT=y in A37 |
| CVE-2019-19530 | CANDIDATE | 5.3 | [`c52873e5a1ef`](https://git.kernel.org/torvalds/c/c52873e5a1ef) | [usb] | usb: cdc-acm: make sure a refcount is taken early enough | CONFIG_USB_ACM=y in A37 |
| CVE-2019-19532 | CANDIDATE | — | — (RHEL wording, check by hand) | [hid] | Fix assumption that devices have inputs | CONFIG_HID=y in A37 |
| CVE-2019-19532 | CANDIDATE | 4.9 | [`52dc085a50c6`](https://git.kernel.org/torvalds/c/52dc085a50c6) | [hid] | revert "hid: microsoft: fix invalid rdesc for 3k kbd" | CONFIG_HID=y in A37 |
| CVE-2019-19532 | CANDIDATE | — | — (RHEL wording, check by hand) | [hid] | input: ignore System Control application usages if not System Controls | CONFIG_HID=y in A37 |
| CVE-2019-19532 | REVIEW | — | — (RHEL wording, check by hand) | [hid] | hid-microsoft: Do the check for the ms usage page per device | tag [hid], no specific rule |
| CVE-2019-19532 | NA-HW | — | — (RHEL wording, check by hand) | [hid] | microsoft: the driver now neeed MEMLESS_FF infrastructure | subject prefix |
| CVE-2019-19532 | NA-HW | — | — (RHEL wording, check by hand) | [hid] | microsoft: Add rumble support for Xbox One S controller | subject prefix |
| CVE-2019-19532 | NA-HW | — | — (RHEL wording, check by hand) | [hid] | microsoft: Convert private data to be a proper struct | subject prefix |
| CVE-2019-19537 | CANDIDATE | 5.3 | [`303911cfc5b9`](https://git.kernel.org/torvalds/c/303911cfc5b9) | [usb] | USB: core: Fix races in character device registration and deregistraion | CONFIG_USB=y in A37 |
| CVE-2019-19767 | CANDIDATE | 5.6 | [`4f97a68192bd`](https://git.kernel.org/torvalds/c/4f97a68192bd) | [fs] | ext4: fix support for inode sizes > 1024 bytes | CONFIG_EXT4_FS=y in A37 |
| CVE-2019-19767 | CANDIDATE | 5.5 | [`4ea99936a163`](https://git.kernel.org/torvalds/c/4ea99936a163) | [fs] | ext4: add more paranoia checking in ext4_expand_extra_isize handling | CONFIG_EXT4_FS=y in A37 |
| CVE-2019-19767 | CANDIDATE | 4.10 | [`2dc8d9e19b0d`](https://git.kernel.org/torvalds/c/2dc8d9e19b0d) | [fs] | ext4: forbid i_extra_isize not divisible by 4 | CONFIG_EXT4_FS=y in A37 |
| CVE-2019-19767 | CANDIDATE | 5.5 | [`9803387c55f7`](https://git.kernel.org/torvalds/c/9803387c55f7) | [fs] | ext4: validate the debug_want_extra_isize mount option at parse time | CONFIG_EXT4_FS=y in A37 |
| CVE-2019-19768 | CANDIDATE | 5.6 | [`153031a301bb`](https://git.kernel.org/torvalds/c/153031a301bb) | [kernel] | blktrace: fix dereference after null check | generic code, tag [kernel] |
| CVE-2019-19768 | CANDIDATE | 5.6 | [`c780e86dd48e`](https://git.kernel.org/torvalds/c/c780e86dd48e) | [kernel] | blktrace: Protect q->blk_trace with RCU | generic code, tag [kernel] |
| CVE-2019-19768 | CANDIDATE | 4.15 | [`2967acbb257a`](https://git.kernel.org/torvalds/c/2967acbb257a) | [kernel] | blktrace: fix trace mutex deadlock | generic code, tag [kernel] |
| CVE-2019-19768 | CANDIDATE | 4.15 | [`a6da0024ffc1`](https://git.kernel.org/torvalds/c/a6da0024ffc1) | [kernel] | blktrace: fix unlocked registration of tracepoints | generic code, tag [kernel] |
| CVE-2019-19768 | CANDIDATE | 4.15 | [`1f2cac107c59`](https://git.kernel.org/torvalds/c/1f2cac107c59) | [kernel] | blktrace: fix unlocked access to init/start-stop/teardown | generic code, tag [kernel] |
| CVE-2019-19807 | CANDIDATE | 5.4 | [`e7af6307a8a5`](https://git.kernel.org/torvalds/c/e7af6307a8a5) | [sound] | ALSA: timer: Fix incorrectly assigned timer instance | CONFIG_SND=y in A37 |
| CVE-2019-20054 | CANDIDATE | 5.1 | [`89189557b47b`](https://git.kernel.org/torvalds/c/89189557b47b) | [fs] | fs/proc/proc_sysctl.c: Fix a NULL pointer dereference | CONFIG_PROC_FS=y in A37 |
| CVE-2019-20054 | CANDIDATE | 5.1 | [`23da9588037e`](https://git.kernel.org/torvalds/c/23da9588037e) | [fs] | fs/proc/proc_sysctl.c: fix NULL pointer dereference in put_links | CONFIG_PROC_FS=y in A37 |
| CVE-2019-20636 | CANDIDATE | 5.5 | [`cb222aed03d7`](https://git.kernel.org/torvalds/c/cb222aed03d7) | [input] | Input: add safety guards to input_set_keycode() | CONFIG_INPUT=y in A37 |
| CVE-2019-20811 | CANDIDATE | 5.5 | [`ddd9b5e3e765`](https://git.kernel.org/torvalds/c/ddd9b5e3e765) | [net] | net-sysfs: Call dev_hold always in rx_queue_add_kobject | generic code, tag [net] |
| CVE-2019-20811 | CANDIDATE | 5.5 | [`e0b60903b434`](https://git.kernel.org/torvalds/c/e0b60903b434) | [net] | net-sysfs: Call dev_hold always in netdev_queue_add_kobject | generic code, tag [net] |
| CVE-2019-20811 | CANDIDATE | 5.1 | [`a3e23f719f5c`](https://git.kernel.org/torvalds/c/a3e23f719f5c) | [net] | net-sysfs: call dev_hold if kobject_init_and_add success | generic code, tag [net] |
| CVE-2019-20934 | CANDIDATE | 5.3 | [`cb361d8cdef6`](https://git.kernel.org/torvalds/c/cb361d8cdef6) | [] | sched/fair: Use RCU accessors consistently for ->numa_group | generic code, tag [none] |
| CVE-2019-20934 | CANDIDATE | 5.3 | [`16d51a590a8c`](https://git.kernel.org/torvalds/c/16d51a590a8c) | [] | sched/fair: Don't free p->numa_faults with concurrent readers | generic code, tag [none] |
| CVE-2019-20934 | NA-CONFIG | 3.17 | [`1c5d3eb37590`](https://git.kernel.org/torvalds/c/1c5d3eb37590) | [] | sched/numa: Simplify task_numa_compare() | CONFIG_NUMA not set in A37 |
| CVE-2019-20934 | NA-CONFIG | 3.15 | [`60e69eed85bb`](https://git.kernel.org/torvalds/c/60e69eed85bb) | [] | sched/numa: Fix task_numa_free() lockdep splat | CONFIG_NUMA not set in A37 |
| CVE-2019-20934 | NA-CONFIG | 3.15 | [`156654f491dd`](https://git.kernel.org/torvalds/c/156654f491dd) | [] | sched/numa: Move task_numa_free() to __put_task_struct() | CONFIG_NUMA not set in A37 |
| CVE-2020-0427 | CANDIDATE | — | — (RHEL wording, check by hand) | [pinctrl] | devicetree: Avoid taking direct reference to device name string | CONFIG_GPIOLIB=y in A37 |
| CVE-2020-0427 | CANDIDATE | — | — (RHEL wording, check by hand) | [pinctrl] | Delete an error message | CONFIG_GPIOLIB=y in A37 |
| CVE-2020-0465 | CANDIDATE | 5.9 | [`35556bed836f`](https://git.kernel.org/torvalds/c/35556bed836f) | [] | HID: core: Sanitize event code and type when mapping input | CONFIG_HID=y in A37 |
| CVE-2020-0466 | CANDIDATE | 5.9 | [`77f4689de17c`](https://git.kernel.org/torvalds/c/77f4689de17c) | [] | fix regression in "epoll: Keep a reference on files added to the check list" | generic code, tag [none] |
| CVE-2020-0466 | CANDIDATE | 5.9 | [`a9ed4a6560b8`](https://git.kernel.org/torvalds/c/a9ed4a6560b8) | [] | epoll: Keep a reference on files added to the check list | CONFIG_EPOLL=y in A37 |
| CVE-2020-1749 | CANDIDATE | 5.5 | [`6c8991f41546`](https://git.kernel.org/torvalds/c/6c8991f41546) | [net] | ipv6_stub: use ip6_dst_lookup_flow instead of ip6_dst_lookup | generic code, tag [net] |
| CVE-2020-1749 | CANDIDATE | 5.5 | [`c4e85f73afb6`](https://git.kernel.org/torvalds/c/c4e85f73afb6) | [net] | ipv6: add net argument to ip6_dst_lookup_flow | generic code, tag [net] |
| CVE-2020-1749 | CANDIDATE | 4.4 | [`3aef934f4d4b`](https://git.kernel.org/torvalds/c/3aef934f4d4b) | [net] | ipv6: constify ip6_dst_lookup_{flow\|tail}() sock arguments | generic code, tag [net] |
| CVE-2020-8648 | CANDIDATE | 5.6 | [`07e6124a1a46`](https://git.kernel.org/torvalds/c/07e6124a1a46) | [] | vt: selection, close sel_buffer race | CONFIG_TTY=y in A37 |
| CVE-2020-9383 | CANDIDATE | 5.6 | [`2e90ca68b0d2`](https://git.kernel.org/torvalds/c/2e90ca68b0d2) | [block] | floppy: check FDC index for errors before assigning it | generic code, tag [block] |
| CVE-2020-10732 | CANDIDATE | 5.7 | [`1d605416fb71`](https://git.kernel.org/torvalds/c/1d605416fb71) | [fs] | fs/binfmt_elf.c: allocate initialized memory in fill_thread_core_info() | generic code, tag [fs] |
| CVE-2020-10751 | CANDIDATE | 5.7 | [`fb73974172ff`](https://git.kernel.org/torvalds/c/fb73974172ff) | [security] | selinux: properly handle multiple messages in selinux_netlink_send() | CONFIG_SECURITY_SELINUX=y in A37 |
| CVE-2020-10757 | CANDIDATE | 4.5 | [`6b9116a652bd`](https://git.kernel.org/torvalds/c/6b9116a652bd) | [mm] | mm, dax: check for pmd_none() after split_huge_pmd() | generic code, tag [mm] |
| CVE-2020-10757 | CANDIDATE | — | — (RHEL wording, check by hand) | [mm] | mm: mremap: streamline move_page_tables()'s move_huge_pmd() corner case | generic code, tag [mm] |
| CVE-2020-10757 | CANDIDATE | 3.11 | [`9a2458a633d4`](https://git.kernel.org/torvalds/c/9a2458a633d4) | [mm] | mm: mremap: validate input before taking lock | generic code, tag [mm] |
| CVE-2020-10757 | NA-ARCH | 5.8 | [`5bfea2d9b17f`](https://git.kernel.org/torvalds/c/5bfea2d9b17f) | [x86] | mm: Fix mremap not considering huge pmd devmap | tag [x86] |
| CVE-2020-10769 | CANDIDATE | 5.0 | [`8f9c46934848`](https://git.kernel.org/torvalds/c/8f9c46934848) | [crypto] | crypto: authenc - fix parsing key with misaligned rta_len | CONFIG_CRYPTO=y in A37 |
| CVE-2020-11565 | CANDIDATE | 5.7 | [`aa9f7d5172fa`](https://git.kernel.org/torvalds/c/aa9f7d5172fa) | [mm] | mm: mempolicy: require at least one nodeid for MPOL_PREFERRED | generic code, tag [mm] |
| CVE-2020-12351 | CANDIDATE | 5.10 | [`f19425641cb2`](https://git.kernel.org/torvalds/c/f19425641cb2) | [net] | bluetooth: l2cap: Fix calling sk_filter on non-socket based channel | CONFIG_BT=y in A37 |
| CVE-2020-12352 | CANDIDATE | 5.10 | [`eddb7732119d`](https://git.kernel.org/torvalds/c/eddb7732119d) | [net] | bluetooth: a2mp: Fix not initializing all members | CONFIG_BT=y in A37 |
| CVE-2020-12826 | CANDIDATE | 5.7 | [`d1e7fd6462ca`](https://git.kernel.org/torvalds/c/d1e7fd6462ca) | [fs] | signal: Extend exec_id to 64bits | generic code, tag [fs] |
| CVE-2020-14351 | CANDIDATE | 5.10 | [`f91072ed1b72`](https://git.kernel.org/torvalds/c/f91072ed1b72) | [kernel] | perf/core: Fix race in the perf_mmap_close() function | CONFIG_PERF_EVENTS=y in A37 |
| CVE-2020-15436 | CANDIDATE | 5.8 | [`2d3a8e2dedde`](https://git.kernel.org/torvalds/c/2d3a8e2dedde) | [fs] | block: Fix use-after-free in blkdev_get() | generic code, tag [fs] |
| CVE-2020-25211 | CANDIDATE | 5.9 | [`1cc5ef91d2ff`](https://git.kernel.org/torvalds/c/1cc5ef91d2ff) | [net] | netfilter: ctnetlink: add a range check for l3/l4 protonum | CONFIG_NF_CONNTRACK=y in A37 |
| CVE-2020-25656 | CANDIDATE | 5.11 | [`07edff926520`](https://git.kernel.org/torvalds/c/07edff926520) | [tty] | vt: keyboard, reorder user buffer handling in vt_do_kdgkb_ioctl | CONFIG_TTY=y in A37 |
| CVE-2020-25656 | CANDIDATE | 5.11 | [`9788c950ed4a`](https://git.kernel.org/torvalds/c/9788c950ed4a) | [tty] | vt: keyboard, rename i to kb_func in vt_do_kdgkb_ioctl | CONFIG_TTY=y in A37 |
| CVE-2020-25656 | CANDIDATE | 5.10 | [`82e61c3909db`](https://git.kernel.org/torvalds/c/82e61c3909db) | [tty] | vt: keyboard, extend func_buf_lock to readers | CONFIG_TTY=y in A37 |
| CVE-2020-25656 | CANDIDATE | 5.10 | [`6ca03f90527e`](https://git.kernel.org/torvalds/c/6ca03f90527e) | [tty] | vt: keyboard, simplify vt_kdgkbsent | CONFIG_TTY=y in A37 |
| CVE-2020-25656 | CANDIDATE | — | — (RHEL wording, check by hand) | [tty] | vt: fix write/write race in ioctl(KDSKBSENT) handler | CONFIG_TTY=y in A37 |
| CVE-2020-25656 | REVIEW | — | — (RHEL wording, check by hand) | [tty] | keyboard, do not speculate on func_table index | tag [tty], no specific rule |
| CVE-2020-25705 | CANDIDATE | 5.10 | [`b38e7819cae9`](https://git.kernel.org/torvalds/c/b38e7819cae9) | [net] | icmp: randomize the global rate limiter | generic code, tag [net] |
| CVE-2020-27170 | CANDIDATE | — | — (RHEL wording, check by hand) | [] | pf: Prohibit alu ops for pointer types not defining ptr_limit | generic code, tag [none] |
| CVE-2020-27170 | CANDIDATE | 5.12 | [`1b1597e64e1a`](https://git.kernel.org/torvalds/c/1b1597e64e1a) | [] | bpf: Add sanity check for upper ptr_limit | CONFIG_BPF_SYSCALL=y in A37 |
| CVE-2020-27170 | CANDIDATE | 5.12 | [`b5871dca250c`](https://git.kernel.org/torvalds/c/b5871dca250c) | [] | bpf: Simplify alu_limit masking for pointer arithmetic | CONFIG_BPF_SYSCALL=y in A37 |
| CVE-2020-27170 | CANDIDATE | 5.12 | [`10d2bb2e6b1d`](https://git.kernel.org/torvalds/c/10d2bb2e6b1d) | [] | bpf: Fix off-by-one for area size in creating mask to left | CONFIG_BPF_SYSCALL=y in A37 |
| CVE-2020-27777 | CANDIDATE | — | — (RHEL wording, check by hand) | [] | redhat: ppc64: CONFIG_RTAS_FILTER | generic code, tag [none] |
| CVE-2020-27777 | NA-ARCH | 5.11 | [`f10881a46f89`](https://git.kernel.org/torvalds/c/f10881a46f89) | [] | powerpc/rtas: Fix typo of ibm,open-errinjct in RTAS filter | subject prefix |
| CVE-2020-27777 | NA-ARCH | 5.10 | [`bd59380c5ba4`](https://git.kernel.org/torvalds/c/bd59380c5ba4) | [] | powerpc/rtas: Restrict RTAS requests from userspace | subject prefix |
| CVE-2020-29661 | REVIEW | — | — (RHEL wording, check by hand) | [tty] | Fix ->pgrp locking in tiocspgrp() | tag [tty], no specific rule |
| CVE-2020-36558 | CANDIDATE | 5.6 | [`6cd1ed50efd8`](https://git.kernel.org/torvalds/c/6cd1ed50efd8) | [] | vt: vt_ioctl: fix race in VT_RESIZEX | CONFIG_TTY=y in A37 |
| CVE-2021-0920 | CANDIDATE | 5.14 | [`cbcf01128d0a`](https://git.kernel.org/torvalds/c/cbcf01128d0a) | [] | af_unix: fix garbage collect vs MSG_PEEK | CONFIG_UNIX=y in A37 |
| CVE-2021-3347 | CANDIDATE | 5.11 | [`34b1a1ce1458`](https://git.kernel.org/torvalds/c/34b1a1ce1458) | [] | futex: Handle faults correctly for PI futexes | generic code, tag [none] |
| CVE-2021-3347 | CANDIDATE | 5.11 | [`c5cade200ab9`](https://git.kernel.org/torvalds/c/c5cade200ab9) | [] | futex: Provide and use pi_state_update_owner() | generic code, tag [none] |
| CVE-2021-3347 | CANDIDATE | 5.11 | [`04b79c55201f`](https://git.kernel.org/torvalds/c/04b79c55201f) | [] | futex: Replace pointless printk in fixup_owner() | generic code, tag [none] |
| CVE-2021-3347 | CANDIDATE | 5.11 | [`12bb3f7f1b03`](https://git.kernel.org/torvalds/c/12bb3f7f1b03) | [] | futex: Ensure the correct return value from futex_lock_pi() | generic code, tag [none] |
| CVE-2021-3564 | CANDIDATE | 5.13 | [`6a137caec23a`](https://git.kernel.org/torvalds/c/6a137caec23a) | [] | Bluetooth: fix the erroneous flush_work() order | CONFIG_BT=y in A37 |
| CVE-2021-3573 | CANDIDATE | 5.13 | [`e305509e678b`](https://git.kernel.org/torvalds/c/e305509e678b) | [] | Bluetooth: use correct lock to prevent UAF of hdev object | CONFIG_BT=y in A37 |
| CVE-2021-4037 | CANDIDATE | 6.0 | [`1639a49ccdce`](https://git.kernel.org/torvalds/c/1639a49ccdce) | [] | fs: move S_ISGID stripping into the vfs_*() helpers | generic code, tag [none] |
| CVE-2021-4037 | CANDIDATE | 6.0 | [`ac6800e279a2`](https://git.kernel.org/torvalds/c/ac6800e279a2) | [] | fs: Add missing umask strip in vfs_tmpfile | generic code, tag [none] |
| CVE-2021-4037 | CANDIDATE | 6.0 | [`2b3416ceff5e`](https://git.kernel.org/torvalds/c/2b3416ceff5e) | [] | fs: add mode_strip_sgid() helper | generic code, tag [none] |
| CVE-2021-4083 | CANDIDATE | 5.16 | [`e386dfc56f83`](https://git.kernel.org/torvalds/c/e386dfc56f83) | [] | fget: clarify and improve __fget_files() implementation | generic code, tag [none] |
| CVE-2021-4083 | CANDIDATE | 5.16 | [`054aa8d439b9`](https://git.kernel.org/torvalds/c/054aa8d439b9) | [] | fget: check that the fd still exists after getting a ref to it | generic code, tag [none] |
| CVE-2021-4083 | CANDIDATE | 5.9 | [`ce787a5a074a`](https://git.kernel.org/torvalds/c/ce787a5a074a) | [] | net: Set fput_needed iff FDPUT_FPUT is set | generic code, tag [none] |
| CVE-2021-4083 | CANDIDATE | 5.6 | [`5e876fb43dbf`](https://git.kernel.org/torvalds/c/5e876fb43dbf) | [] | vfs, fdtable: Add fget_task helper | generic code, tag [none] |
| CVE-2021-4083 | CANDIDATE | 5.1 | [`091141a42e15`](https://git.kernel.org/torvalds/c/091141a42e15) | [] | fs: add fget_many() and fput_many() | generic code, tag [none] |
| CVE-2021-4083 | CANDIDATE | 4.2 | [`5ba97d2832f8`](https://git.kernel.org/torvalds/c/5ba97d2832f8) | [] | fs/file.c: __fget() and dup2() atomicity rules | generic code, tag [none] |
| CVE-2021-4083 | CANDIDATE | 3.14 | [`99aea68134f3`](https://git.kernel.org/torvalds/c/99aea68134f3) | [] | vfs: Don't let __fdget_pos() get FMODE_PATH files | generic code, tag [none] |
| CVE-2021-4083 | CANDIDATE | 3.14 | [`bd2a31d52234`](https://git.kernel.org/torvalds/c/bd2a31d52234) | [] | get rid of fget_light() | generic code, tag [none] |
| CVE-2021-4083 | CANDIDATE | 3.14 | [`00e188ef6a7e`](https://git.kernel.org/torvalds/c/00e188ef6a7e) | [] | sockfd_lookup_light(): switch to fdget^W^Waway from fget_light | generic code, tag [none] |
| CVE-2021-4083 | CANDIDATE | 3.14 | [`e6ff9a9fa4e0`](https://git.kernel.org/torvalds/c/e6ff9a9fa4e0) | [] | fs: __fget_light() can use __fget() in slow path | generic code, tag [none] |
| CVE-2021-4083 | CANDIDATE | 3.14 | [`ad4618344504`](https://git.kernel.org/torvalds/c/ad4618344504) | [] | fs: factor out common code in fget_light() and fget_raw_light() | generic code, tag [none] |
| CVE-2021-4083 | CANDIDATE | 3.14 | [`1deb46e25625`](https://git.kernel.org/torvalds/c/1deb46e25625) | [] | fs: factor out common code in fget() and fget_raw() | generic code, tag [none] |
| CVE-2021-4083 | CANDIDATE | 3.14 | [`a8d4b8345e0e`](https://git.kernel.org/torvalds/c/a8d4b8345e0e) | [] | introduce __fcheck_files() to fix rcu_dereference_check_fdtable(), kill rcu_my_thread_group_empty() | generic code, tag [none] |
| CVE-2021-22555 | CANDIDATE | 5.12 | [`b29c457a6511`](https://git.kernel.org/torvalds/c/b29c457a6511) | [] | netfilter: x_tables: fix compat match/target pad out-of-bound write | CONFIG_NETFILTER_XTABLES=y in A37 |
| CVE-2021-29154 | CANDIDATE | 5.12 | [`e4d4d456436b`](https://git.kernel.org/torvalds/c/e4d4d456436b) | [] | bpf, x86: Validate computation of branch displacements for x86-64 | generic code, tag [none] |
| CVE-2021-29650 | CANDIDATE | 5.12 | [`175e476b8cdf`](https://git.kernel.org/torvalds/c/175e476b8cdf) | [] | netfilter: x_tables: Use correct memory barriers. | CONFIG_NETFILTER_XTABLES=y in A37 |
| CVE-2021-33034 | CANDIDATE | 5.13 | [`5c4c8c954409`](https://git.kernel.org/torvalds/c/5c4c8c954409) | [] | Bluetooth: verify AMP hci_chan before amp_destroy | CONFIG_BT=y in A37 |
| CVE-2022-0492 | CANDIDATE | 5.17 | [`24f600856418`](https://git.kernel.org/torvalds/c/24f600856418) | [] | cgroup-v1: Require capabilities to set release_agent | CONFIG_CGROUPS=y in A37 |
| CVE-2022-1966 | FEATURE-MISSING | 5.19 | [`520778042ccc`](https://git.kernel.org/torvalds/c/520778042ccc) | [] | netfilter: nf_tables: disallow non-stateful expression in sets earlier | CONFIG_NF_TABLES does not exist in A37 tree |
| CVE-2022-2964 | CANDIDATE | 5.19 | [`f8ebb3ac881b`](https://git.kernel.org/torvalds/c/f8ebb3ac881b) | [] | net: usb: ax88179_178a: Fix packet receiving | generic code, tag [none] |
| CVE-2022-2964 | CANDIDATE | 5.17 | [`57bc3d3ae8c1`](https://git.kernel.org/torvalds/c/57bc3d3ae8c1) | [] | net: usb: ax88179_178a: Fix out-of-bounds accesses in RX fixup | generic code, tag [none] |
| CVE-2022-2964 | CANDIDATE | 5.4 | [`7e24b4ed5ac4`](https://git.kernel.org/torvalds/c/7e24b4ed5ac4) | [] | net: usb: Merge cpu_to_le32s + memcpy to put_unaligned_le32 | generic code, tag [none] |
| CVE-2022-2964 | CANDIDATE | 5.4 | [`d1854d509d61`](https://git.kernel.org/torvalds/c/d1854d509d61) | [] | ax88179_178a: Merge memcpy + le32_to_cpus to get_unaligned_le32 | CONFIG_USB_USBNET=y in A37 |
| CVE-2022-2964 | CANDIDATE | 5.8 | [`e869e7a17798`](https://git.kernel.org/torvalds/c/e869e7a17798) | [] | net: usb: ax88179_178a: fix packet alignment padding | generic code, tag [none] |
| CVE-2022-3564 | CANDIDATE | 6.1 | [`3aff8aaca4e3`](https://git.kernel.org/torvalds/c/3aff8aaca4e3) | [] | Bluetooth: L2CAP: Fix use-after-free caused by l2cap_reassemble_sdu | CONFIG_BT=y in A37 |
| CVE-2022-4378 | CANDIDATE | 6.1 | [`bce9332220bd`](https://git.kernel.org/torvalds/c/bce9332220bd) | [] | proc: proc_skip_spaces() shouldn't think it is working on C strings | CONFIG_PROC_FS=y in A37 |
| CVE-2022-4378 | CANDIDATE | 6.1 | [`e6cfaf34be9f`](https://git.kernel.org/torvalds/c/e6cfaf34be9f) | [] | proc: avoid integer type confusion in get_proc_long | CONFIG_PROC_FS=y in A37 |
| CVE-2022-21123 | CANDIDATE | 5.9 | [`2accfa69050c`](https://git.kernel.org/torvalds/c/2accfa69050c) | [] | cpu/speculation: Add prototype for cpu_show_srbds() | generic code, tag [none] |
| CVE-2022-21123 | CANDIDATE | 5.19 | [`441947019138`](https://git.kernel.org/torvalds/c/441947019138) | [] | Documentation: Add documentation for Processor MMIO Stale Data | generic code, tag [none] |
| CVE-2022-21123 | NA-ARCH | 5.19 | [`1dc6ff02c8bf`](https://git.kernel.org/torvalds/c/1dc6ff02c8bf) | [] | x86/speculation/mmio: Print SMT warning | subject prefix |
| CVE-2022-21123 | NA-ARCH | 5.19 | [`027bbb884be0`](https://git.kernel.org/torvalds/c/027bbb884be0) | [] | KVM: x86/speculation: Disable Fill buffer clear within guests | subject prefix |
| CVE-2022-21123 | NA-ARCH | 5.19 | [`a992b8a4682f`](https://git.kernel.org/torvalds/c/a992b8a4682f) | [] | x86/speculation/mmio: Reuse SRBDS mitigation for SBDS | subject prefix |
| CVE-2022-21123 | NA-ARCH | 5.19 | [`22cac9c677c9`](https://git.kernel.org/torvalds/c/22cac9c677c9) | [] | x86/speculation/srbds: Update SRBDS mitigation selection | subject prefix |
| CVE-2022-21123 | NA-ARCH | 5.19 | [`8d50cdf8b834`](https://git.kernel.org/torvalds/c/8d50cdf8b834) | [] | x86/speculation/mmio: Add sysfs reporting for Processor MMIO Stale Data | subject prefix |
| CVE-2022-21123 | NA-ARCH | 5.19 | [`99a83db5a605`](https://git.kernel.org/torvalds/c/99a83db5a605) | [] | x86/speculation/mmio: Enable CPU Fill buffer clearing on idle | subject prefix |
| CVE-2022-21123 | NA-ARCH | 5.19 | [`e5925fb86729`](https://git.kernel.org/torvalds/c/e5925fb86729) | [] | x86/bugs: Group MDS, TAA & Processor MMIO Stale Data mitigations | subject prefix |
| CVE-2022-21123 | NA-ARCH | 5.19 | [`8cb861e9e3c9`](https://git.kernel.org/torvalds/c/8cb861e9e3c9) | [] | x86/speculation/mmio: Add mitigation for Processor MMIO Stale Data | subject prefix |
| CVE-2022-21123 | NA-ARCH | 5.19 | [`f52ea6c26953`](https://git.kernel.org/torvalds/c/f52ea6c26953) | [] | x86/speculation: Add a common function for MD_CLEAR mitigation update | subject prefix |
| CVE-2022-21123 | NA-ARCH | 5.19 | [`51802186158c`](https://git.kernel.org/torvalds/c/51802186158c) | [] | x86/speculation/mmio: Enumerate Processor MMIO Stale Data bug | subject prefix |
| CVE-2022-21125 | CANDIDATE | 5.9 | [`2accfa69050c`](https://git.kernel.org/torvalds/c/2accfa69050c) | [] | cpu/speculation: Add prototype for cpu_show_srbds() | generic code, tag [none] |
| CVE-2022-21125 | CANDIDATE | 5.19 | [`441947019138`](https://git.kernel.org/torvalds/c/441947019138) | [] | Documentation: Add documentation for Processor MMIO Stale Data | generic code, tag [none] |
| CVE-2022-21125 | NA-ARCH | 5.19 | [`1dc6ff02c8bf`](https://git.kernel.org/torvalds/c/1dc6ff02c8bf) | [] | x86/speculation/mmio: Print SMT warning | subject prefix |
| CVE-2022-21125 | NA-ARCH | 5.19 | [`027bbb884be0`](https://git.kernel.org/torvalds/c/027bbb884be0) | [] | KVM: x86/speculation: Disable Fill buffer clear within guests | subject prefix |
| CVE-2022-21125 | NA-ARCH | 5.19 | [`a992b8a4682f`](https://git.kernel.org/torvalds/c/a992b8a4682f) | [] | x86/speculation/mmio: Reuse SRBDS mitigation for SBDS | subject prefix |
| CVE-2022-21125 | NA-ARCH | 5.19 | [`22cac9c677c9`](https://git.kernel.org/torvalds/c/22cac9c677c9) | [] | x86/speculation/srbds: Update SRBDS mitigation selection | subject prefix |
| CVE-2022-21125 | NA-ARCH | 5.19 | [`8d50cdf8b834`](https://git.kernel.org/torvalds/c/8d50cdf8b834) | [] | x86/speculation/mmio: Add sysfs reporting for Processor MMIO Stale Data | subject prefix |
| CVE-2022-21125 | NA-ARCH | 5.19 | [`99a83db5a605`](https://git.kernel.org/torvalds/c/99a83db5a605) | [] | x86/speculation/mmio: Enable CPU Fill buffer clearing on idle | subject prefix |
| CVE-2022-21125 | NA-ARCH | 5.19 | [`e5925fb86729`](https://git.kernel.org/torvalds/c/e5925fb86729) | [] | x86/bugs: Group MDS, TAA & Processor MMIO Stale Data mitigations | subject prefix |
| CVE-2022-21125 | NA-ARCH | 5.19 | [`8cb861e9e3c9`](https://git.kernel.org/torvalds/c/8cb861e9e3c9) | [] | x86/speculation/mmio: Add mitigation for Processor MMIO Stale Data | subject prefix |
| CVE-2022-21125 | NA-ARCH | 5.19 | [`f52ea6c26953`](https://git.kernel.org/torvalds/c/f52ea6c26953) | [] | x86/speculation: Add a common function for MD_CLEAR mitigation update | subject prefix |
| CVE-2022-21125 | NA-ARCH | 5.19 | [`51802186158c`](https://git.kernel.org/torvalds/c/51802186158c) | [] | x86/speculation/mmio: Enumerate Processor MMIO Stale Data bug | subject prefix |
| CVE-2022-21166 | CANDIDATE | 5.9 | [`2accfa69050c`](https://git.kernel.org/torvalds/c/2accfa69050c) | [] | cpu/speculation: Add prototype for cpu_show_srbds() | generic code, tag [none] |
| CVE-2022-21166 | CANDIDATE | 5.19 | [`441947019138`](https://git.kernel.org/torvalds/c/441947019138) | [] | Documentation: Add documentation for Processor MMIO Stale Data | generic code, tag [none] |
| CVE-2022-21166 | NA-ARCH | 5.19 | [`1dc6ff02c8bf`](https://git.kernel.org/torvalds/c/1dc6ff02c8bf) | [] | x86/speculation/mmio: Print SMT warning | subject prefix |
| CVE-2022-21166 | NA-ARCH | 5.19 | [`027bbb884be0`](https://git.kernel.org/torvalds/c/027bbb884be0) | [] | KVM: x86/speculation: Disable Fill buffer clear within guests | subject prefix |
| CVE-2022-21166 | NA-ARCH | 5.19 | [`a992b8a4682f`](https://git.kernel.org/torvalds/c/a992b8a4682f) | [] | x86/speculation/mmio: Reuse SRBDS mitigation for SBDS | subject prefix |
| CVE-2022-21166 | NA-ARCH | 5.19 | [`22cac9c677c9`](https://git.kernel.org/torvalds/c/22cac9c677c9) | [] | x86/speculation/srbds: Update SRBDS mitigation selection | subject prefix |
| CVE-2022-21166 | NA-ARCH | 5.19 | [`8d50cdf8b834`](https://git.kernel.org/torvalds/c/8d50cdf8b834) | [] | x86/speculation/mmio: Add sysfs reporting for Processor MMIO Stale Data | subject prefix |
| CVE-2022-21166 | NA-ARCH | 5.19 | [`99a83db5a605`](https://git.kernel.org/torvalds/c/99a83db5a605) | [] | x86/speculation/mmio: Enable CPU Fill buffer clearing on idle | subject prefix |
| CVE-2022-21166 | NA-ARCH | 5.19 | [`e5925fb86729`](https://git.kernel.org/torvalds/c/e5925fb86729) | [] | x86/bugs: Group MDS, TAA & Processor MMIO Stale Data mitigations | subject prefix |
| CVE-2022-21166 | NA-ARCH | 5.19 | [`8cb861e9e3c9`](https://git.kernel.org/torvalds/c/8cb861e9e3c9) | [] | x86/speculation/mmio: Add mitigation for Processor MMIO Stale Data | subject prefix |
| CVE-2022-21166 | NA-ARCH | 5.19 | [`f52ea6c26953`](https://git.kernel.org/torvalds/c/f52ea6c26953) | [] | x86/speculation: Add a common function for MD_CLEAR mitigation update | subject prefix |
| CVE-2022-21166 | NA-ARCH | 5.19 | [`51802186158c`](https://git.kernel.org/torvalds/c/51802186158c) | [] | x86/speculation/mmio: Enumerate Processor MMIO Stale Data bug | subject prefix |
| CVE-2022-23816 | CANDIDATE | 5.19 | [`d9e9d2300681`](https://git.kernel.org/torvalds/c/d9e9d2300681) | [] | x86,objtool: Create .return_sites | generic code, tag [none] |
| CVE-2022-23816 | NA-ARCH | 4.19 | [`fdf82a7856b3`](https://git.kernel.org/torvalds/c/fdf82a7856b3) | [] | x86/speculation: Protect against userspace-userspace spectreRSB | subject prefix |
| CVE-2022-23816 | NA-ARCH | — | — (RHEL wording, check by hand) | [] | x86/speculation: cope with spectre_v2=retpoline cmdline on retbleed-affected Intel CPUs | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`79629181607e`](https://git.kernel.org/torvalds/c/79629181607e) | [] | KVM: emulate: do not adjust size of fastop and setcc subroutines | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`84e7051c0bc1`](https://git.kernel.org/torvalds/c/84e7051c0bc1) | [] | x86/kvm: fix FASTOP_SIZE when return thunks are enabled | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`4ad3278df6fe`](https://git.kernel.org/torvalds/c/4ad3278df6fe) | [] | x86/speculation: Disable RRSBA behavior | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`697977d8415d`](https://git.kernel.org/torvalds/c/697977d8415d) | [] | x86/kexec: Disable RET on kexec | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`2259da159fbe`](https://git.kernel.org/torvalds/c/2259da159fbe) | [] | x86/bugs: Do not enable IBPB-on-entry when IBPB is not supported | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`f54d45372c6a`](https://git.kernel.org/torvalds/c/f54d45372c6a) | [] | x86/bugs: Add Cannon lake to RETBleed affected CPU list | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`26aae8ccbc19`](https://git.kernel.org/torvalds/c/26aae8ccbc19) | [] | x86/cpu/amd: Enumerate BTC_NO | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`7a05bc95ed1c`](https://git.kernel.org/torvalds/c/7a05bc95ed1c) | [] | x86/common: Stamp out the stepping madness | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`d7caac991fee`](https://git.kernel.org/torvalds/c/d7caac991fee) | [] | x86/cpu/amd: Add Spectral Chicken | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`0fe4aeea9c01`](https://git.kernel.org/torvalds/c/0fe4aeea9c01) | [] | x86/bugs: Do IBPB fallback check only once | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`3ebc17006888`](https://git.kernel.org/torvalds/c/3ebc17006888) | [] | x86/bugs: Add retbleed=ibpb | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`6ad0ad2bf8a6`](https://git.kernel.org/torvalds/c/6ad0ad2bf8a6) | [] | x86/bugs: Report Intel retbleed vulnerability | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`e8ec1b6e08a2`](https://git.kernel.org/torvalds/c/e8ec1b6e08a2) | [] | x86/bugs: Enable STIBP for JMP2RET | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`7fbf47c7ce50`](https://git.kernel.org/torvalds/c/7fbf47c7ce50) | [] | x86/bugs: Add AMD retbleed= boot parameter | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`6b80b59b3555`](https://git.kernel.org/torvalds/c/6b80b59b3555) | [] | x86/bugs: Report AMD retbleed vulnerability | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`a149180fbcf3`](https://git.kernel.org/torvalds/c/a149180fbcf3) | [] | x86: Add magic AMD return-thunk | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`aa3d480315ba`](https://git.kernel.org/torvalds/c/aa3d480315ba) | [] | x86: Use return-thunk in asm code | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`0ee9073000e8`](https://git.kernel.org/torvalds/c/0ee9073000e8) | [] | x86/sev: Avoid using __x86_return_thunk | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`15583e514eb1`](https://git.kernel.org/torvalds/c/15583e514eb1) | [] | x86/vsyscall_emu/64: Don't use RET in vsyscall emulation | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`af2e140f3420`](https://git.kernel.org/torvalds/c/af2e140f3420) | [] | x86/kvm: Fix SETcc emulation for return thunks | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`15e67227c49a`](https://git.kernel.org/torvalds/c/15e67227c49a) | [] | x86: Undo return-thunk damage | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`0b53c374b9ef`](https://git.kernel.org/torvalds/c/0b53c374b9ef) | [] | x86/retpoline: Use -mfunction-return | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.19 | [`a883d624aed4`](https://git.kernel.org/torvalds/c/a883d624aed4) | [] | x86/cpufeatures: Move RETPOLINE flags to word 11 | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.17 | [`f94909ceb1ed`](https://git.kernel.org/torvalds/c/f94909ceb1ed) | [] | x86: Prepare asm files for straight-line-speculation | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.17 | [`b17c2baa305c`](https://git.kernel.org/torvalds/c/b17c2baa305c) | [] | x86: Prepare inline-asm for straight-line-speculation | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.3 | [`d99a6ce70ec6`](https://git.kernel.org/torvalds/c/d99a6ce70ec6) | [] | x86/kvm: Fix fastop function ELF metadata | subject prefix |
| CVE-2022-23816 | NA-ARCH | 4.14 | [`f26e60167d8b`](https://git.kernel.org/torvalds/c/f26e60167d8b) | [] | x86/kvm: Move kvm_fastop_exception to .fixup section | subject prefix |
| CVE-2022-23816 | NA-ARCH | 4.19 | [`2e549b2ee0e3`](https://git.kernel.org/torvalds/c/2e549b2ee0e3) | [] | x86/vdso: Fix vDSO build if a retpoline is emitted | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.3 | [`acec0ce081de`](https://git.kernel.org/torvalds/c/acec0ce081de) | [] | x86/cpufeatures: Combine word 11 and 12 into a new scattered features word | subject prefix |
| CVE-2022-23816 | NA-ARCH | 5.3 | [`45fc56e629ca`](https://git.kernel.org/torvalds/c/45fc56e629ca) | [] | x86/cpufeatures: Carve out CQM features retrieval | subject prefix |
| CVE-2022-23816 | NA-ARCH | 4.15 | [`acbc845ffefd`](https://git.kernel.org/torvalds/c/acbc845ffefd) | [] | x86/cpufeatures: Re-tabulate the X86_FEATURE definitions | subject prefix |
| CVE-2022-23816 | NA-ARCH | 4.15 | [`4fdec2034b75`](https://git.kernel.org/torvalds/c/4fdec2034b75) | [] | x86/cpufeature: Move processor tracing out of scattered features | subject prefix |
| CVE-2022-23816 | NA-ARCH | 4.10 | [`3df8d9208569`](https://git.kernel.org/torvalds/c/3df8d9208569) | [] | x86/cpu: Probe CPUID leaf 6 even when cpuid_level == 6 | subject prefix |
| CVE-2022-23816 | NA-ARCH | 4.1 | [`db477a3386de`](https://git.kernel.org/torvalds/c/db477a3386de) | [] | x86/alternatives: Cleanup DPRINTK macro | subject prefix |
| CVE-2022-23816 | NA-TOOLS | — | — (RHEL wording, check by hand) | [] | objtool: Add ELF writing capability | subject prefix |
| CVE-2022-23825 | CANDIDATE | 5.19 | [`d9e9d2300681`](https://git.kernel.org/torvalds/c/d9e9d2300681) | [] | x86,objtool: Create .return_sites | generic code, tag [none] |
| CVE-2022-23825 | NA-ARCH | 4.19 | [`fdf82a7856b3`](https://git.kernel.org/torvalds/c/fdf82a7856b3) | [] | x86/speculation: Protect against userspace-userspace spectreRSB | subject prefix |
| CVE-2022-23825 | NA-ARCH | — | — (RHEL wording, check by hand) | [] | x86/speculation: cope with spectre_v2=retpoline cmdline on retbleed-affected Intel CPUs | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`79629181607e`](https://git.kernel.org/torvalds/c/79629181607e) | [] | KVM: emulate: do not adjust size of fastop and setcc subroutines | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`84e7051c0bc1`](https://git.kernel.org/torvalds/c/84e7051c0bc1) | [] | x86/kvm: fix FASTOP_SIZE when return thunks are enabled | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`4ad3278df6fe`](https://git.kernel.org/torvalds/c/4ad3278df6fe) | [] | x86/speculation: Disable RRSBA behavior | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`697977d8415d`](https://git.kernel.org/torvalds/c/697977d8415d) | [] | x86/kexec: Disable RET on kexec | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`2259da159fbe`](https://git.kernel.org/torvalds/c/2259da159fbe) | [] | x86/bugs: Do not enable IBPB-on-entry when IBPB is not supported | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`f54d45372c6a`](https://git.kernel.org/torvalds/c/f54d45372c6a) | [] | x86/bugs: Add Cannon lake to RETBleed affected CPU list | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`26aae8ccbc19`](https://git.kernel.org/torvalds/c/26aae8ccbc19) | [] | x86/cpu/amd: Enumerate BTC_NO | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`7a05bc95ed1c`](https://git.kernel.org/torvalds/c/7a05bc95ed1c) | [] | x86/common: Stamp out the stepping madness | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`d7caac991fee`](https://git.kernel.org/torvalds/c/d7caac991fee) | [] | x86/cpu/amd: Add Spectral Chicken | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`0fe4aeea9c01`](https://git.kernel.org/torvalds/c/0fe4aeea9c01) | [] | x86/bugs: Do IBPB fallback check only once | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`3ebc17006888`](https://git.kernel.org/torvalds/c/3ebc17006888) | [] | x86/bugs: Add retbleed=ibpb | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`6ad0ad2bf8a6`](https://git.kernel.org/torvalds/c/6ad0ad2bf8a6) | [] | x86/bugs: Report Intel retbleed vulnerability | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`e8ec1b6e08a2`](https://git.kernel.org/torvalds/c/e8ec1b6e08a2) | [] | x86/bugs: Enable STIBP for JMP2RET | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`7fbf47c7ce50`](https://git.kernel.org/torvalds/c/7fbf47c7ce50) | [] | x86/bugs: Add AMD retbleed= boot parameter | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`6b80b59b3555`](https://git.kernel.org/torvalds/c/6b80b59b3555) | [] | x86/bugs: Report AMD retbleed vulnerability | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`a149180fbcf3`](https://git.kernel.org/torvalds/c/a149180fbcf3) | [] | x86: Add magic AMD return-thunk | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`aa3d480315ba`](https://git.kernel.org/torvalds/c/aa3d480315ba) | [] | x86: Use return-thunk in asm code | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`0ee9073000e8`](https://git.kernel.org/torvalds/c/0ee9073000e8) | [] | x86/sev: Avoid using __x86_return_thunk | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`15583e514eb1`](https://git.kernel.org/torvalds/c/15583e514eb1) | [] | x86/vsyscall_emu/64: Don't use RET in vsyscall emulation | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`af2e140f3420`](https://git.kernel.org/torvalds/c/af2e140f3420) | [] | x86/kvm: Fix SETcc emulation for return thunks | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`15e67227c49a`](https://git.kernel.org/torvalds/c/15e67227c49a) | [] | x86: Undo return-thunk damage | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`0b53c374b9ef`](https://git.kernel.org/torvalds/c/0b53c374b9ef) | [] | x86/retpoline: Use -mfunction-return | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.19 | [`a883d624aed4`](https://git.kernel.org/torvalds/c/a883d624aed4) | [] | x86/cpufeatures: Move RETPOLINE flags to word 11 | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.17 | [`f94909ceb1ed`](https://git.kernel.org/torvalds/c/f94909ceb1ed) | [] | x86: Prepare asm files for straight-line-speculation | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.17 | [`b17c2baa305c`](https://git.kernel.org/torvalds/c/b17c2baa305c) | [] | x86: Prepare inline-asm for straight-line-speculation | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.3 | [`d99a6ce70ec6`](https://git.kernel.org/torvalds/c/d99a6ce70ec6) | [] | x86/kvm: Fix fastop function ELF metadata | subject prefix |
| CVE-2022-23825 | NA-ARCH | 4.14 | [`f26e60167d8b`](https://git.kernel.org/torvalds/c/f26e60167d8b) | [] | x86/kvm: Move kvm_fastop_exception to .fixup section | subject prefix |
| CVE-2022-23825 | NA-ARCH | 4.19 | [`2e549b2ee0e3`](https://git.kernel.org/torvalds/c/2e549b2ee0e3) | [] | x86/vdso: Fix vDSO build if a retpoline is emitted | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.3 | [`acec0ce081de`](https://git.kernel.org/torvalds/c/acec0ce081de) | [] | x86/cpufeatures: Combine word 11 and 12 into a new scattered features word | subject prefix |
| CVE-2022-23825 | NA-ARCH | 5.3 | [`45fc56e629ca`](https://git.kernel.org/torvalds/c/45fc56e629ca) | [] | x86/cpufeatures: Carve out CQM features retrieval | subject prefix |
| CVE-2022-23825 | NA-ARCH | 4.15 | [`acbc845ffefd`](https://git.kernel.org/torvalds/c/acbc845ffefd) | [] | x86/cpufeatures: Re-tabulate the X86_FEATURE definitions | subject prefix |
| CVE-2022-23825 | NA-ARCH | 4.15 | [`4fdec2034b75`](https://git.kernel.org/torvalds/c/4fdec2034b75) | [] | x86/cpufeature: Move processor tracing out of scattered features | subject prefix |
| CVE-2022-23825 | NA-ARCH | 4.10 | [`3df8d9208569`](https://git.kernel.org/torvalds/c/3df8d9208569) | [] | x86/cpu: Probe CPUID leaf 6 even when cpuid_level == 6 | subject prefix |
| CVE-2022-23825 | NA-ARCH | 4.1 | [`db477a3386de`](https://git.kernel.org/torvalds/c/db477a3386de) | [] | x86/alternatives: Cleanup DPRINTK macro | subject prefix |
| CVE-2022-23825 | NA-TOOLS | — | — (RHEL wording, check by hand) | [] | objtool: Add ELF writing capability | subject prefix |
| CVE-2022-29900 | CANDIDATE | 5.19 | [`d9e9d2300681`](https://git.kernel.org/torvalds/c/d9e9d2300681) | [] | x86,objtool: Create .return_sites | generic code, tag [none] |
| CVE-2022-29900 | NA-ARCH | 4.19 | [`fdf82a7856b3`](https://git.kernel.org/torvalds/c/fdf82a7856b3) | [] | x86/speculation: Protect against userspace-userspace spectreRSB | subject prefix |
| CVE-2022-29900 | NA-ARCH | — | — (RHEL wording, check by hand) | [] | x86/speculation: cope with spectre_v2=retpoline cmdline on retbleed-affected Intel CPUs | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`79629181607e`](https://git.kernel.org/torvalds/c/79629181607e) | [] | KVM: emulate: do not adjust size of fastop and setcc subroutines | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`84e7051c0bc1`](https://git.kernel.org/torvalds/c/84e7051c0bc1) | [] | x86/kvm: fix FASTOP_SIZE when return thunks are enabled | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`4ad3278df6fe`](https://git.kernel.org/torvalds/c/4ad3278df6fe) | [] | x86/speculation: Disable RRSBA behavior | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`697977d8415d`](https://git.kernel.org/torvalds/c/697977d8415d) | [] | x86/kexec: Disable RET on kexec | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`2259da159fbe`](https://git.kernel.org/torvalds/c/2259da159fbe) | [] | x86/bugs: Do not enable IBPB-on-entry when IBPB is not supported | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`f54d45372c6a`](https://git.kernel.org/torvalds/c/f54d45372c6a) | [] | x86/bugs: Add Cannon lake to RETBleed affected CPU list | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`26aae8ccbc19`](https://git.kernel.org/torvalds/c/26aae8ccbc19) | [] | x86/cpu/amd: Enumerate BTC_NO | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`7a05bc95ed1c`](https://git.kernel.org/torvalds/c/7a05bc95ed1c) | [] | x86/common: Stamp out the stepping madness | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`d7caac991fee`](https://git.kernel.org/torvalds/c/d7caac991fee) | [] | x86/cpu/amd: Add Spectral Chicken | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`0fe4aeea9c01`](https://git.kernel.org/torvalds/c/0fe4aeea9c01) | [] | x86/bugs: Do IBPB fallback check only once | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`3ebc17006888`](https://git.kernel.org/torvalds/c/3ebc17006888) | [] | x86/bugs: Add retbleed=ibpb | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`6ad0ad2bf8a6`](https://git.kernel.org/torvalds/c/6ad0ad2bf8a6) | [] | x86/bugs: Report Intel retbleed vulnerability | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`e8ec1b6e08a2`](https://git.kernel.org/torvalds/c/e8ec1b6e08a2) | [] | x86/bugs: Enable STIBP for JMP2RET | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`7fbf47c7ce50`](https://git.kernel.org/torvalds/c/7fbf47c7ce50) | [] | x86/bugs: Add AMD retbleed= boot parameter | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`6b80b59b3555`](https://git.kernel.org/torvalds/c/6b80b59b3555) | [] | x86/bugs: Report AMD retbleed vulnerability | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`a149180fbcf3`](https://git.kernel.org/torvalds/c/a149180fbcf3) | [] | x86: Add magic AMD return-thunk | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`aa3d480315ba`](https://git.kernel.org/torvalds/c/aa3d480315ba) | [] | x86: Use return-thunk in asm code | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`0ee9073000e8`](https://git.kernel.org/torvalds/c/0ee9073000e8) | [] | x86/sev: Avoid using __x86_return_thunk | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`15583e514eb1`](https://git.kernel.org/torvalds/c/15583e514eb1) | [] | x86/vsyscall_emu/64: Don't use RET in vsyscall emulation | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`af2e140f3420`](https://git.kernel.org/torvalds/c/af2e140f3420) | [] | x86/kvm: Fix SETcc emulation for return thunks | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`15e67227c49a`](https://git.kernel.org/torvalds/c/15e67227c49a) | [] | x86: Undo return-thunk damage | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`0b53c374b9ef`](https://git.kernel.org/torvalds/c/0b53c374b9ef) | [] | x86/retpoline: Use -mfunction-return | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.19 | [`a883d624aed4`](https://git.kernel.org/torvalds/c/a883d624aed4) | [] | x86/cpufeatures: Move RETPOLINE flags to word 11 | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.17 | [`f94909ceb1ed`](https://git.kernel.org/torvalds/c/f94909ceb1ed) | [] | x86: Prepare asm files for straight-line-speculation | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.17 | [`b17c2baa305c`](https://git.kernel.org/torvalds/c/b17c2baa305c) | [] | x86: Prepare inline-asm for straight-line-speculation | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.3 | [`d99a6ce70ec6`](https://git.kernel.org/torvalds/c/d99a6ce70ec6) | [] | x86/kvm: Fix fastop function ELF metadata | subject prefix |
| CVE-2022-29900 | NA-ARCH | 4.14 | [`f26e60167d8b`](https://git.kernel.org/torvalds/c/f26e60167d8b) | [] | x86/kvm: Move kvm_fastop_exception to .fixup section | subject prefix |
| CVE-2022-29900 | NA-ARCH | 4.19 | [`2e549b2ee0e3`](https://git.kernel.org/torvalds/c/2e549b2ee0e3) | [] | x86/vdso: Fix vDSO build if a retpoline is emitted | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.3 | [`acec0ce081de`](https://git.kernel.org/torvalds/c/acec0ce081de) | [] | x86/cpufeatures: Combine word 11 and 12 into a new scattered features word | subject prefix |
| CVE-2022-29900 | NA-ARCH | 5.3 | [`45fc56e629ca`](https://git.kernel.org/torvalds/c/45fc56e629ca) | [] | x86/cpufeatures: Carve out CQM features retrieval | subject prefix |
| CVE-2022-29900 | NA-ARCH | 4.15 | [`acbc845ffefd`](https://git.kernel.org/torvalds/c/acbc845ffefd) | [] | x86/cpufeatures: Re-tabulate the X86_FEATURE definitions | subject prefix |
| CVE-2022-29900 | NA-ARCH | 4.15 | [`4fdec2034b75`](https://git.kernel.org/torvalds/c/4fdec2034b75) | [] | x86/cpufeature: Move processor tracing out of scattered features | subject prefix |
| CVE-2022-29900 | NA-ARCH | 4.10 | [`3df8d9208569`](https://git.kernel.org/torvalds/c/3df8d9208569) | [] | x86/cpu: Probe CPUID leaf 6 even when cpuid_level == 6 | subject prefix |
| CVE-2022-29900 | NA-ARCH | 4.1 | [`db477a3386de`](https://git.kernel.org/torvalds/c/db477a3386de) | [] | x86/alternatives: Cleanup DPRINTK macro | subject prefix |
| CVE-2022-29900 | NA-TOOLS | — | — (RHEL wording, check by hand) | [] | objtool: Add ELF writing capability | subject prefix |
| CVE-2022-29901 | CANDIDATE | 5.19 | [`d9e9d2300681`](https://git.kernel.org/torvalds/c/d9e9d2300681) | [] | x86,objtool: Create .return_sites | generic code, tag [none] |
| CVE-2022-29901 | NA-ARCH | 4.19 | [`fdf82a7856b3`](https://git.kernel.org/torvalds/c/fdf82a7856b3) | [] | x86/speculation: Protect against userspace-userspace spectreRSB | subject prefix |
| CVE-2022-29901 | NA-ARCH | — | — (RHEL wording, check by hand) | [] | x86/speculation: cope with spectre_v2=retpoline cmdline on retbleed-affected Intel CPUs | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`79629181607e`](https://git.kernel.org/torvalds/c/79629181607e) | [] | KVM: emulate: do not adjust size of fastop and setcc subroutines | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`84e7051c0bc1`](https://git.kernel.org/torvalds/c/84e7051c0bc1) | [] | x86/kvm: fix FASTOP_SIZE when return thunks are enabled | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`4ad3278df6fe`](https://git.kernel.org/torvalds/c/4ad3278df6fe) | [] | x86/speculation: Disable RRSBA behavior | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`697977d8415d`](https://git.kernel.org/torvalds/c/697977d8415d) | [] | x86/kexec: Disable RET on kexec | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`2259da159fbe`](https://git.kernel.org/torvalds/c/2259da159fbe) | [] | x86/bugs: Do not enable IBPB-on-entry when IBPB is not supported | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`f54d45372c6a`](https://git.kernel.org/torvalds/c/f54d45372c6a) | [] | x86/bugs: Add Cannon lake to RETBleed affected CPU list | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`26aae8ccbc19`](https://git.kernel.org/torvalds/c/26aae8ccbc19) | [] | x86/cpu/amd: Enumerate BTC_NO | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`7a05bc95ed1c`](https://git.kernel.org/torvalds/c/7a05bc95ed1c) | [] | x86/common: Stamp out the stepping madness | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`d7caac991fee`](https://git.kernel.org/torvalds/c/d7caac991fee) | [] | x86/cpu/amd: Add Spectral Chicken | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`0fe4aeea9c01`](https://git.kernel.org/torvalds/c/0fe4aeea9c01) | [] | x86/bugs: Do IBPB fallback check only once | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`3ebc17006888`](https://git.kernel.org/torvalds/c/3ebc17006888) | [] | x86/bugs: Add retbleed=ibpb | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`6ad0ad2bf8a6`](https://git.kernel.org/torvalds/c/6ad0ad2bf8a6) | [] | x86/bugs: Report Intel retbleed vulnerability | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`e8ec1b6e08a2`](https://git.kernel.org/torvalds/c/e8ec1b6e08a2) | [] | x86/bugs: Enable STIBP for JMP2RET | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`7fbf47c7ce50`](https://git.kernel.org/torvalds/c/7fbf47c7ce50) | [] | x86/bugs: Add AMD retbleed= boot parameter | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`6b80b59b3555`](https://git.kernel.org/torvalds/c/6b80b59b3555) | [] | x86/bugs: Report AMD retbleed vulnerability | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`a149180fbcf3`](https://git.kernel.org/torvalds/c/a149180fbcf3) | [] | x86: Add magic AMD return-thunk | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`aa3d480315ba`](https://git.kernel.org/torvalds/c/aa3d480315ba) | [] | x86: Use return-thunk in asm code | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`0ee9073000e8`](https://git.kernel.org/torvalds/c/0ee9073000e8) | [] | x86/sev: Avoid using __x86_return_thunk | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`15583e514eb1`](https://git.kernel.org/torvalds/c/15583e514eb1) | [] | x86/vsyscall_emu/64: Don't use RET in vsyscall emulation | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`af2e140f3420`](https://git.kernel.org/torvalds/c/af2e140f3420) | [] | x86/kvm: Fix SETcc emulation for return thunks | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`15e67227c49a`](https://git.kernel.org/torvalds/c/15e67227c49a) | [] | x86: Undo return-thunk damage | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`0b53c374b9ef`](https://git.kernel.org/torvalds/c/0b53c374b9ef) | [] | x86/retpoline: Use -mfunction-return | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.19 | [`a883d624aed4`](https://git.kernel.org/torvalds/c/a883d624aed4) | [] | x86/cpufeatures: Move RETPOLINE flags to word 11 | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.17 | [`f94909ceb1ed`](https://git.kernel.org/torvalds/c/f94909ceb1ed) | [] | x86: Prepare asm files for straight-line-speculation | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.17 | [`b17c2baa305c`](https://git.kernel.org/torvalds/c/b17c2baa305c) | [] | x86: Prepare inline-asm for straight-line-speculation | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.3 | [`d99a6ce70ec6`](https://git.kernel.org/torvalds/c/d99a6ce70ec6) | [] | x86/kvm: Fix fastop function ELF metadata | subject prefix |
| CVE-2022-29901 | NA-ARCH | 4.14 | [`f26e60167d8b`](https://git.kernel.org/torvalds/c/f26e60167d8b) | [] | x86/kvm: Move kvm_fastop_exception to .fixup section | subject prefix |
| CVE-2022-29901 | NA-ARCH | 4.19 | [`2e549b2ee0e3`](https://git.kernel.org/torvalds/c/2e549b2ee0e3) | [] | x86/vdso: Fix vDSO build if a retpoline is emitted | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.3 | [`acec0ce081de`](https://git.kernel.org/torvalds/c/acec0ce081de) | [] | x86/cpufeatures: Combine word 11 and 12 into a new scattered features word | subject prefix |
| CVE-2022-29901 | NA-ARCH | 5.3 | [`45fc56e629ca`](https://git.kernel.org/torvalds/c/45fc56e629ca) | [] | x86/cpufeatures: Carve out CQM features retrieval | subject prefix |
| CVE-2022-29901 | NA-ARCH | 4.15 | [`acbc845ffefd`](https://git.kernel.org/torvalds/c/acbc845ffefd) | [] | x86/cpufeatures: Re-tabulate the X86_FEATURE definitions | subject prefix |
| CVE-2022-29901 | NA-ARCH | 4.15 | [`4fdec2034b75`](https://git.kernel.org/torvalds/c/4fdec2034b75) | [] | x86/cpufeature: Move processor tracing out of scattered features | subject prefix |
| CVE-2022-29901 | NA-ARCH | 4.10 | [`3df8d9208569`](https://git.kernel.org/torvalds/c/3df8d9208569) | [] | x86/cpu: Probe CPUID leaf 6 even when cpuid_level == 6 | subject prefix |
| CVE-2022-29901 | NA-ARCH | 4.1 | [`db477a3386de`](https://git.kernel.org/torvalds/c/db477a3386de) | [] | x86/alternatives: Cleanup DPRINTK macro | subject prefix |
| CVE-2022-29901 | NA-TOOLS | — | — (RHEL wording, check by hand) | [] | objtool: Add ELF writing capability | subject prefix |
| CVE-2022-40982 | CANDIDATE | 6.5 | [`1b0fc0345f28`](https://git.kernel.org/torvalds/c/1b0fc0345f28) | [] | Documentation/x86: Fix backwards on/off logic about YMM support | generic code, tag [none] |
| CVE-2022-40982 | NA-ARCH | 6.5 | [`81ac7e5d7417`](https://git.kernel.org/torvalds/c/81ac7e5d7417) | [] | KVM: Add GDS_NO support to KVM | subject prefix |
| CVE-2022-40982 | NA-ARCH | 6.5 | [`53cf5797f114`](https://git.kernel.org/torvalds/c/53cf5797f114) | [] | x86/speculation: Add Kconfig option for GDS | subject prefix |
| CVE-2022-40982 | NA-ARCH | 6.5 | [`553a5c03e90a`](https://git.kernel.org/torvalds/c/553a5c03e90a) | [] | x86/speculation: Add force option to GDS mitigation | subject prefix |
| CVE-2022-40982 | NA-ARCH | 6.5 | [`8974eb588283`](https://git.kernel.org/torvalds/c/8974eb588283) | [] | x86/speculation: Add Gather Data Sampling mitigation | subject prefix |
| CVE-2022-42703 | CANDIDATE | 6.0 | [`2555283eb40d`](https://git.kernel.org/torvalds/c/2555283eb40d) | [] | mm/rmap: Fix anon_vma->degree ambiguity leading to double-reuse | generic code, tag [none] |
| CVE-2022-42703 | CANDIDATE | 4.10 | [`d5a187daf585`](https://git.kernel.org/torvalds/c/d5a187daf585) | [] | mm, rmap: handle anon_vma_prepare() common case inline | generic code, tag [none] |
| CVE-2022-42896 | CANDIDATE | 6.1 | [`f937b758a188`](https://git.kernel.org/torvalds/c/f937b758a188) | [] | Bluetooth: L2CAP: Fix l2cap_global_chan_by_psm | CONFIG_BT=y in A37 |
| CVE-2022-42896 | CANDIDATE | 6.1 | [`711f8c3fb3db`](https://git.kernel.org/torvalds/c/711f8c3fb3db) | [] | Bluetooth: L2CAP: Fix accepting connection request for invalid SPSM | CONFIG_BT=y in A37 |
| CVE-2022-42896 | CANDIDATE | 4.20 | [`571f739083e2`](https://git.kernel.org/torvalds/c/571f739083e2) | [] | Bluetooth: Use separate L2CAP LE credit based connection result values | CONFIG_BT=y in A37 |
| CVE-2022-42896 | CANDIDATE | 4.12 | [`d8edd9ed156a`](https://git.kernel.org/torvalds/c/d8edd9ed156a) | [] | Bluetooth: L2CAP: Fix L2CAP_CR_SCID_IN_USE value | CONFIG_BT=y in A37 |
| CVE-2022-43750 | CANDIDATE | 6.1 | [`a659daf63d16`](https://git.kernel.org/torvalds/c/a659daf63d16) | [] | usb: mon: make mmapped memory read only | CONFIG_USB=y in A37 |
| CVE-2023-2002 | CANDIDATE | 6.4 | [`000c2fa2c144`](https://git.kernel.org/torvalds/c/000c2fa2c144) | [] | bluetooth: Add cmd validity checks at the start of hci_sock_ioctl() | CONFIG_BT=y in A37 |
| CVE-2023-2002 | CANDIDATE | 6.4 | [`25c150ac103a`](https://git.kernel.org/torvalds/c/25c150ac103a) | [] | bluetooth: Perform careful capability checks in hci_sock_ioctl() | CONFIG_BT=y in A37 |
| CVE-2023-2002 | CANDIDATE | 6.4 | [`000c2fa2c144`](https://git.kernel.org/torvalds/c/000c2fa2c144) | [] | bluetooth: Add cmd validity checks at the start of hci_sock_ioctl() | CONFIG_BT=y in A37 |
| CVE-2023-2002 | CANDIDATE | 6.4 | [`25c150ac103a`](https://git.kernel.org/torvalds/c/25c150ac103a) | [] | bluetooth: Perform careful capability checks in hci_sock_ioctl() | CONFIG_BT=y in A37 |
| CVE-2023-3609 | CANDIDATE | 6.4 | [`04c55383fa56`](https://git.kernel.org/torvalds/c/04c55383fa56) | [] | net/sched: cls_u32: Fix reference counter leak leading to overflow | CONFIG_NET_CLS_U32=y in A37 |
| CVE-2023-3776 | CANDIDATE | 6.5 | [`0323bce598ee`](https://git.kernel.org/torvalds/c/0323bce598ee) | [] | net/sched: cls_fw: Fix improper refcount update leads to use-after-free | CONFIG_NET_CLS_FW=y in A37 |
| CVE-2023-4128 | CANDIDATE | 6.5 | [`3044b16e7c6f`](https://git.kernel.org/torvalds/c/3044b16e7c6f) | [] | net/sched: cls_u32: No longer copy tcf_result on update to avoid use-after-free | CONFIG_NET_CLS_U32=y in A37 |
| CVE-2023-4128 | CANDIDATE | 6.5 | [`76e42ae83199`](https://git.kernel.org/torvalds/c/76e42ae83199) | [] | net/sched: cls_fw: No longer copy tcf_result on update to avoid use-after-free | CONFIG_NET_CLS_FW=y in A37 |
| CVE-2023-4128 | NA-CONFIG | 6.5 | [`b80b829e9e2c`](https://git.kernel.org/torvalds/c/b80b829e9e2c) | [] | net/sched: cls_route: No longer copy tcf_result on update to avoid use-after-free | CONFIG_NET_CLS_ROUTE not in A37 (driver not built) |
| CVE-2023-4622 | CANDIDATE | — | — (RHEL wording, check by hand) | [] | af_unix: Fix null-ptr-deref in unix_stream_sendpage(). | CONFIG_UNIX=y in A37 |
| CVE-2023-4622 | CANDIDATE | — | — (RHEL wording, check by hand) | [] | af_unix: Fix null-ptr-deref in unix_stream_sendpage(). | CONFIG_UNIX=y in A37 |
| CVE-2023-32233 | FEATURE-MISSING | — | — (RHEL wording, check by hand) | [] | netfilter: nf_tables: skip deactivated anonymous sets during lookups | CONFIG_NF_TABLES does not exist in A37 tree |
| CVE-2023-32233 | FEATURE-MISSING | 6.4 | [`c1592a89942e`](https://git.kernel.org/torvalds/c/c1592a89942e) | [] | netfilter: nf_tables: deactivate anonymous set from preparation phase | CONFIG_NF_TABLES does not exist in A37 tree |
| CVE-2023-35001 | FEATURE-MISSING | 6.5 | [`caf3ef7468f7`](https://git.kernel.org/torvalds/c/caf3ef7468f7) | [] | netfilter: nf_tables: prevent OOB access in nft_byteorder_eval | CONFIG_NF_TABLES does not exist in A37 tree |
| CVE-2023-35788 | CANDIDATE | 6.4 | [`4d56304e5827`](https://git.kernel.org/torvalds/c/4d56304e5827) | [] | net/sched: flower: fix possible OOB write in fl_set_geneve_opt() | CONFIG_NET_SCHED=y in A37 |
| CVE-2023-38409 | CANDIDATE | 6.3 | [`fffb0b52d525`](https://git.kernel.org/torvalds/c/fffb0b52d525) | [] | fbcon: set_con2fb_map needs to set con2fb_map! | generic code, tag [none] |
| CVE-2024-1086 | FEATURE-MISSING | 6.8 | [`f342de4e2f33`](https://git.kernel.org/torvalds/c/f342de4e2f33) | [] | netfilter: nf_tables: reject QUEUE/DROP verdict parameters | CONFIG_NF_TABLES does not exist in A37 tree |
| CVE-2024-26602 | CANDIDATE | 6.8 | [`944d5fe50f3f`](https://git.kernel.org/torvalds/c/944d5fe50f3f) | [] | sched/membarrier: reduce the ability to hammer on sys_membarrier | generic code, tag [none] |

## PARTIAL

| CVE | Status | First in | Upstream | Tag | Subject | Why |
|---|---|---|---|---|---|---|
| CVE-2014-0131 | PRESENT | 3.14 | [`1fd819ecb90c`](https://git.kernel.org/torvalds/c/1fd819ecb90c) | [net] | skbuff: skb_segment: orphan frags before copying | same subject in A37 history (sha) |
| CVE-2014-0131 | CANDIDATE | 3.14 | [`1a4cedaf6549`](https://git.kernel.org/torvalds/c/1a4cedaf6549) | [net] | skbuff: skb_segment: s/fskb/list_skb/ | generic code, tag [net] |
| CVE-2014-0131 | CANDIDATE | 3.14 | [`df5771ffefb1`](https://git.kernel.org/torvalds/c/df5771ffefb1) | [net] | skbuff: skb_segment: s/skb/head_skb/ | generic code, tag [net] |
| CVE-2014-0131 | CANDIDATE | 3.14 | [`4e1beba12d09`](https://git.kernel.org/torvalds/c/4e1beba12d09) | [net] | skbuff: skb_segment: s/skb_frag/frag/ | generic code, tag [net] |
| CVE-2014-0131 | CANDIDATE | 3.14 | [`8cb19905e928`](https://git.kernel.org/torvalds/c/8cb19905e928) | [net] | skbuff: skb_segment: s/frag/nskb_frag/ | generic code, tag [net] |
| CVE-2014-0131 | CANDIDATE | 3.14 | [`289dccbe141e`](https://git.kernel.org/torvalds/c/289dccbe141e) | [net] | use kfree_skb_list() helper | generic code, tag [net] |
| CVE-2014-8171 | PRESENT | 3.12 | [`4942642080ea`](https://git.kernel.org/torvalds/c/4942642080ea) | [mm] | memcg: handle non-error OOM situations more gracefully | same subject in A37 history (sha) |
| CVE-2014-8171 | PRESENT | 3.12 | [`3812c8c8f395`](https://git.kernel.org/torvalds/c/3812c8c8f395) | [mm] | memcg: do not trap chargers with full callstack on OOM | same subject in A37 history (sha) |
| CVE-2014-8171 | PRESENT | 3.12 | [`fb2a6fc56be6`](https://git.kernel.org/torvalds/c/fb2a6fc56be6) | [mm] | memcg: rework and document OOM waiting and wakeup | same subject in A37 history (sha) |
| CVE-2014-8171 | PRESENT | 3.12 | [`519e52473ebe`](https://git.kernel.org/torvalds/c/519e52473ebe) | [mm] | memcg: enable memcg OOM killer only for user faults | same subject in A37 history (sha) |
| CVE-2014-8171 | CANDIDATE | 3.12 | [`3168ecbe1c04`](https://git.kernel.org/torvalds/c/3168ecbe1c04) | [mm] | memcg: use proper memcg in limit bypass | CONFIG_MEMCG=y in A37 |
| CVE-2014-8171 | CANDIDATE | 3.13 | [`1f14c1ac19aa`](https://git.kernel.org/torvalds/c/1f14c1ac19aa) | [mm] | memcg: do not allow task about to OOM kill to bypass the limit | CONFIG_MEMCG=y in A37 |
| CVE-2014-8171 | CANDIDATE | 3.13 | [`a0d8b00a3381`](https://git.kernel.org/torvalds/c/a0d8b00a3381) | [mm] | memcg: do not declare OOM from __GFP_NOFAIL allocations | CONFIG_MEMCG=y in A37 |
| CVE-2014-8171 | CANDIDATE | 3.12 | [`84235de394d9`](https://git.kernel.org/torvalds/c/84235de394d9) | [fs] | buffer: move allocation failure loop into the allocator | generic code, tag [fs] |
| CVE-2014-8171 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | finish user fault error path with fatal signal | tag [x86] |
| CVE-2014-8171 | NA-ARCH | — | — (RHEL wording, check by hand) | [arch] | mm: pass userspace fault flag to generic fault handler | tag [arch] |
| CVE-2015-7872 | PRESENT | 4.3 | [`f05819df10d7`](https://git.kernel.org/torvalds/c/f05819df10d7) | [security] | keys: Fix crash when attempt to garbage collect an uninstantiated keyring | same subject in A37 history (sha) |
| CVE-2015-7872 | PRESENT | 4.3 | [`94c4554ba07a`](https://git.kernel.org/torvalds/c/94c4554ba07a) | [security] | keys: Fix race between key destruction and finding a keyring by name | same subject in A37 history (sha) |
| CVE-2015-7872 | CANDIDATE | 4.3 | [`911b79cde95c`](https://git.kernel.org/torvalds/c/911b79cde95c) | [security] | keys: Don't permit request_key() to construct a new keyring | CONFIG_KEYS=y in A37 |
| CVE-2015-8539 | PRESENT | 4.4 | [`096fe9eaea40`](https://git.kernel.org/torvalds/c/096fe9eaea40) | [security] | keys: Fix handling of stored error in a negatively instantiated user key | same subject in A37 history (exact) |
| CVE-2015-8539 | PRESENT | 4.11 | [`c9f838d104fe`](https://git.kernel.org/torvalds/c/c9f838d104fe) | [security] | keys: fix keyctl_set_reqkey_keyring() to not leak thread keyrings | same subject in A37 history (sha) |
| CVE-2015-8539 | PRESENT | 4.11 | [`57cb17e764ba`](https://git.kernel.org/torvalds/c/57cb17e764ba) | [security] | keys: Fix an error code in request_master_key() | same subject in A37 history (sha) |
| CVE-2015-8539 | CANDIDATE | 4.11 | [`0837e49ab3fa`](https://git.kernel.org/torvalds/c/0837e49ab3fa) | [security] | keys: Differentiate uses of rcu_dereference_key() and user_key_payload() | CONFIG_KEYS=y in A37 |
| CVE-2015-8539 | CANDIDATE | 4.11 | [`52176603795c`](https://git.kernel.org/torvalds/c/52176603795c) | [security] | keys: Use memzero_explicit() for secret data | CONFIG_KEYS=y in A37 |
| CVE-2016-3156 | PRESENT | 4.6 | [`fbd40ea0180a`](https://git.kernel.org/torvalds/c/fbd40ea0180a) | [net] | ipv4: Don't do expensive useless work during inetdev destroy | same subject in A37 history (exact) |
| CVE-2016-3156 | CANDIDATE | 4.6 | [`391a20333b83`](https://git.kernel.org/torvalds/c/391a20333b83) | [net] | ipv4/fib: don't warn when primary address is missing if in_dev is dead | generic code, tag [net] |
| CVE-2016-5696 | PRESENT | 4.7 | [`75ff39ccc1bd`](https://git.kernel.org/torvalds/c/75ff39ccc1bd) | [net] | tcp: make challenge acks less predictable | same subject in A37 history (sha) |
| CVE-2016-5696 | CANDIDATE | 4.7 | [`083ae308280d`](https://git.kernel.org/torvalds/c/083ae308280d) | [net] | tcp: enable per-socket rate limiting of all 'challenge acks' | generic code, tag [net] |
| CVE-2016-5696 | CANDIDATE | 4.1 | [`7970ddc8f9ff`](https://git.kernel.org/torvalds/c/7970ddc8f9ff) | [net] | tcp: uninline tcp_oow_rate_limited() | generic code, tag [net] |
| CVE-2016-8645 | PRESENT | 4.9 | [`ac6e780070e3`](https://git.kernel.org/torvalds/c/ac6e780070e3) | [net] | tcp: take care of truncations done by sk_filter() | same subject in A37 history (sha) |
| CVE-2016-8645 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | add sk_filter_trim_cap | generic code, tag [net] |
| CVE-2017-6001 | PRESENT | 4.10 | [`321027c1fe77`](https://git.kernel.org/torvalds/c/321027c1fe77) | [kernel] | perf/core: Fix concurrent sys_perf_event_open() vs. 'move_group' race | same subject in A37 history (sha) |
| CVE-2017-6001 | CANDIDATE | 4.9 | [`d6a2f9035bfc`](https://git.kernel.org/torvalds/c/d6a2f9035bfc) | [kernel] | perf/core: Introduce PMU_EV_CAP_READ_ACTIVE_PKG | CONFIG_PERF_EVENTS=y in A37 |
| CVE-2017-6001 | CANDIDATE | 4.9 | [`4ff6a8debf48`](https://git.kernel.org/torvalds/c/4ff6a8debf48) | [kernel] | perf/core: Generalize event->group_flags | CONFIG_PERF_EVENTS=y in A37 |
| CVE-2017-8890 | PRESENT | 4.12 | [`fdcee2cbb843`](https://git.kernel.org/torvalds/c/fdcee2cbb843) | [net] | sctp: do not inherit ipv6_{mc\|ac\|fl}_list from parent | same subject in A37 history (exact) |
| CVE-2017-8890 | PRESENT | 4.12 | [`83eaddab4378`](https://git.kernel.org/torvalds/c/83eaddab4378) | [net] | ipv6/dccp: do not inherit ipv6_mc_list from parent | same subject in A37 history (exact) |
| CVE-2017-8890 | PRESENT | 4.12 | [`657831ffc38e`](https://git.kernel.org/torvalds/c/657831ffc38e) | [net] | dccp/tcp: do not inherit mc_list from parent | same subject in A37 history (sha) |
| CVE-2017-8890 | CANDIDATE | 4.12 | [`8b485ce69876`](https://git.kernel.org/torvalds/c/8b485ce69876) | [net] | tcp: do not inherit fastopen_req from parent | generic code, tag [net] |
| CVE-2017-9074 | PRESENT | 4.12 | [`2423496af35d`](https://git.kernel.org/torvalds/c/2423496af35d) | [net] | ipv6: Prevent overrun when parsing v6 header options | same subject in A37 history (exact) |
| CVE-2017-9074 | CANDIDATE | 4.12 | [`e3e86b5119f8`](https://git.kernel.org/torvalds/c/e3e86b5119f8) | [net] | ipv6: Fix leak in ipv6_gso_segment() | generic code, tag [net] |
| CVE-2017-9074 | CANDIDATE | 4.12 | [`6e80ac5cc992`](https://git.kernel.org/torvalds/c/6e80ac5cc992) | [net] | ipv6: xfrm: Handle errors reported by xfrm6_find_1stfragopt() | generic code, tag [net] |
| CVE-2017-9074 | CANDIDATE | 4.12 | [`7dd7eb9513bd`](https://git.kernel.org/torvalds/c/7dd7eb9513bd) | [net] | ipv6: Check ip6_find_1stfragopt() return value properly | generic code, tag [net] |
| CVE-2017-9075 | PRESENT | 4.12 | [`fdcee2cbb843`](https://git.kernel.org/torvalds/c/fdcee2cbb843) | [net] | sctp: do not inherit ipv6_{mc\|ac\|fl}_list from parent | same subject in A37 history (exact) |
| CVE-2017-9075 | PRESENT | 4.12 | [`83eaddab4378`](https://git.kernel.org/torvalds/c/83eaddab4378) | [net] | ipv6/dccp: do not inherit ipv6_mc_list from parent | same subject in A37 history (exact) |
| CVE-2017-9075 | PRESENT | 4.12 | [`657831ffc38e`](https://git.kernel.org/torvalds/c/657831ffc38e) | [net] | dccp/tcp: do not inherit mc_list from parent | same subject in A37 history (sha) |
| CVE-2017-9075 | CANDIDATE | 4.12 | [`8b485ce69876`](https://git.kernel.org/torvalds/c/8b485ce69876) | [net] | tcp: do not inherit fastopen_req from parent | generic code, tag [net] |
| CVE-2017-9076 | PRESENT | 4.12 | [`fdcee2cbb843`](https://git.kernel.org/torvalds/c/fdcee2cbb843) | [net] | sctp: do not inherit ipv6_{mc\|ac\|fl}_list from parent | same subject in A37 history (exact) |
| CVE-2017-9076 | PRESENT | 4.12 | [`83eaddab4378`](https://git.kernel.org/torvalds/c/83eaddab4378) | [net] | ipv6/dccp: do not inherit ipv6_mc_list from parent | same subject in A37 history (exact) |
| CVE-2017-9076 | PRESENT | 4.12 | [`657831ffc38e`](https://git.kernel.org/torvalds/c/657831ffc38e) | [net] | dccp/tcp: do not inherit mc_list from parent | same subject in A37 history (sha) |
| CVE-2017-9076 | CANDIDATE | 4.12 | [`8b485ce69876`](https://git.kernel.org/torvalds/c/8b485ce69876) | [net] | tcp: do not inherit fastopen_req from parent | generic code, tag [net] |
| CVE-2017-9077 | PRESENT | 4.12 | [`fdcee2cbb843`](https://git.kernel.org/torvalds/c/fdcee2cbb843) | [net] | sctp: do not inherit ipv6_{mc\|ac\|fl}_list from parent | same subject in A37 history (exact) |
| CVE-2017-9077 | PRESENT | 4.12 | [`83eaddab4378`](https://git.kernel.org/torvalds/c/83eaddab4378) | [net] | ipv6/dccp: do not inherit ipv6_mc_list from parent | same subject in A37 history (exact) |
| CVE-2017-9077 | PRESENT | 4.12 | [`657831ffc38e`](https://git.kernel.org/torvalds/c/657831ffc38e) | [net] | dccp/tcp: do not inherit mc_list from parent | same subject in A37 history (sha) |
| CVE-2017-9077 | CANDIDATE | 4.12 | [`8b485ce69876`](https://git.kernel.org/torvalds/c/8b485ce69876) | [net] | tcp: do not inherit fastopen_req from parent | generic code, tag [net] |
| CVE-2017-14140 | PRESENT | 4.5 | [`caaee6234d05`](https://git.kernel.org/torvalds/c/caaee6234d05) | [kernel] | ptrace: use fsuid, fsgid, effective creds for fs access checks | same subject in A37 history (sha) |
| CVE-2017-14140 | PRESENT | 3.12 | [`73af963f9f30`](https://git.kernel.org/torvalds/c/73af963f9f30) | [kernel] | __ptrace_may_access() should not deny sub-threads | same subject in A37 history (sha) |
| CVE-2017-14140 | CANDIDATE | 4.13 | [`197e7e521384`](https://git.kernel.org/torvalds/c/197e7e521384) | [kernel] | mm: Sanitize 'move_pages()' permission checks | generic code, tag [kernel] |
| CVE-2017-15649 | PRESENT | 4.10 | [`2bd624b4611f`](https://git.kernel.org/torvalds/c/2bd624b4611f) | [net] | packet: Do not call fanout_release from atomic contexts | same subject in A37 history (sha) |
| CVE-2017-15649 | PRESENT | 4.10 | [`d199fab63c11`](https://git.kernel.org/torvalds/c/d199fab63c11) | [net] | packet: fix races in fanout_add() | same subject in A37 history (sha) |
| CVE-2017-15649 | CANDIDATE | 4.14 | [`4971613c1639`](https://git.kernel.org/torvalds/c/4971613c1639) | [net] | packet: in packet_do_bind, test fanout with bind_lock held | CONFIG_PACKET=y in A37 |
| CVE-2017-15649 | CANDIDATE | 4.14 | [`008ba2a13f2d`](https://git.kernel.org/torvalds/c/008ba2a13f2d) | [net] | packet: hold bind lock when rebinding to fanout hook | CONFIG_PACKET=y in A37 |
| CVE-2017-1000112 | PRESENT | 4.13 | [`85f1bd9a7b5a`](https://git.kernel.org/torvalds/c/85f1bd9a7b5a) | [net] | udp: consistently apply ufo or fragmentation | same subject in A37 history (sha) |
| CVE-2017-1000112 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | udp: account for current skb length when deciding about UFO | generic code, tag [net] |
| CVE-2017-1000112 | CANDIDATE | 4.10 | [`0a28cfd51e17`](https://git.kernel.org/torvalds/c/0a28cfd51e17) | [net] | ipv4: Should use consistent conditional judgement for ip fragment in __ip_append_data and ip_finish_output | generic code, tag [net] |
| CVE-2017-1000364 | PRESENT | 4.12 | [`f4cb767d76cf`](https://git.kernel.org/torvalds/c/f4cb767d76cf) | [mm] | fix new crash in unmapped_area_topdown() | same subject in A37 history (sha) |
| CVE-2017-1000364 | PRESENT | 4.12 | [`1be7107fbe18`](https://git.kernel.org/torvalds/c/1be7107fbe18) | [mm] | larger stack guard gap, between vmas | same subject in A37 history (sha) |
| CVE-2017-1000364 | CANDIDATE | — | — (RHEL wording, check by hand) | [mm] | enlarge stack guard gap | generic code, tag [mm] |
| CVE-2017-1000380 | PRESENT | 4.12 | [`ba3021b2c79b`](https://git.kernel.org/torvalds/c/ba3021b2c79b) | [sound] | alsa: timer: Fix missing queue indices reset at SNDRV_TIMER_IOCTL_SELECT | same subject in A37 history (sha) |
| CVE-2017-1000380 | PRESENT | 4.12 | [`d11662f4f798`](https://git.kernel.org/torvalds/c/d11662f4f798) | [sound] | alsa: timer: Fix race between read and ioctl | same subject in A37 history (sha) |
| CVE-2017-1000380 | PRESENT | 4.11 | [`71321eb3f2d0`](https://git.kernel.org/torvalds/c/71321eb3f2d0) | [sound] | alsa: timer: Reject user params with too small ticks | same subject in A37 history (sha) |
| CVE-2017-1000380 | CANDIDATE | 4.14 | [`1ae0e4ce554f`](https://git.kernel.org/torvalds/c/1ae0e4ce554f) | [sound] | alsa: timer: Use common error handling code in alsa_timer_init() | CONFIG_SND=y in A37 |
| CVE-2017-1000380 | CANDIDATE | 4.14 | [`dd1f7ab8a88d`](https://git.kernel.org/torvalds/c/dd1f7ab8a88d) | [sound] | alsa: timer: Adjust a condition check in snd_timer_resolution() | CONFIG_SND=y in A37 |
| CVE-2017-1000380 | CANDIDATE | 4.13 | [`988563929d5b`](https://git.kernel.org/torvalds/c/988563929d5b) | [sound] | alsa: timer: Follow standard EXPORT_SYMBOL() declarations | CONFIG_SND=y in A37 |
| CVE-2017-1000380 | CANDIDATE | 4.13 | [`d7f910bfedd8`](https://git.kernel.org/torvalds/c/d7f910bfedd8) | [sound] | alsa: timer: Wrap with spinlock for queue access | CONFIG_SND=y in A37 |
| CVE-2017-1000380 | CANDIDATE | 4.13 | [`890e2cb5d184`](https://git.kernel.org/torvalds/c/890e2cb5d184) | [sound] | alsa: timer: Improve user queue reallocation | CONFIG_SND=y in A37 |
| CVE-2017-1000380 | CANDIDATE | 4.12 | [`a8c006aafead`](https://git.kernel.org/torvalds/c/a8c006aafead) | [sound] | alsa: timer: Info leak in snd_timer_user_tinterrupt() | CONFIG_SND=y in A37 |
| CVE-2017-1000380 | CANDIDATE | 4.12 | [`e8ed68205f39`](https://git.kernel.org/torvalds/c/e8ed68205f39) | [sound] | alsa: timer: remove some dead code | CONFIG_SND=y in A37 |
| CVE-2018-14646 | PRESENT | 3.15 | [`a3b299da869d`](https://git.kernel.org/torvalds/c/a3b299da869d) | [net] | Add variants of capable for use on on sockets | same subject in A37 history (sha) |
| CVE-2018-14646 | CANDIDATE | 4.15 | [`f428fe4a04cc`](https://git.kernel.org/torvalds/c/f428fe4a04cc) | [net] | rtnetlink: give a user socket to get_target_net() | generic code, tag [net] |

## NAMED-IN-A37

| CVE | Status | First in | Upstream | Tag | Subject | Why |
|---|---|---|---|---|---|---|
| CVE-2013-2888 | CANDIDATE | — | — (RHEL wording, check by hand) | [hid] | validate HID report id size | CONFIG_HID=y in A37 |
| CVE-2013-2889 | CANDIDATE | — | — (RHEL wording, check by hand) | [hid] | provide a helper for validating hid reports | CONFIG_HID=y in A37 |
| CVE-2013-2889 | NA-HW | — | — (RHEL wording, check by hand) | [hid] | zeroplus: validate output report details | subject prefix |
| CVE-2013-2929 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | ptrace: get_dumpable() incorrect tests | generic code, tag [kernel] |
| CVE-2013-4312 | PRESENT | 4.5 | [`415e3d3e90ce`](https://git.kernel.org/torvalds/c/415e3d3e90ce) | [net] | unix: correctly track in-flight fds in sending process user_struct | same subject in A37 history (sha) |
| CVE-2013-4312 | PRESENT | 4.5 | [`712f4aad406b`](https://git.kernel.org/torvalds/c/712f4aad406b) | [net] | unix: properly account for FDs passed over unix sockets | same subject in A37 history (sha) |
| CVE-2013-4312 | CANDIDATE | 4.1 | [`d1ab39f17f86`](https://git.kernel.org/torvalds/c/d1ab39f17f86) | [net] | unix: garbage: fixed several comment and whitespace style issues | CONFIG_UNIX=y in A37 |
| CVE-2014-0181 | PRESENT | 3.15 | [`90f62cf30a78`](https://git.kernel.org/torvalds/c/90f62cf30a78) | [net] | Use netlink_ns_capable to verify the permisions of netlink messages | same subject in A37 history (sha) |
| CVE-2014-0181 | PRESENT | 3.15 | [`5187cd055b6e`](https://git.kernel.org/torvalds/c/5187cd055b6e) | [net] | netlink: Rename netlink_capable netlink_allowed | same subject in A37 history (sha) |
| CVE-2014-0181 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | netlink: Add variants of capable for use on netlink messages | generic code, tag [net] |
| CVE-2014-0181 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | diag: Move the permission check in sock_diag_put_filterinfo to packet_diag_dump | generic code, tag [net] |
| CVE-2014-0181 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | diag: Fix ns_capable check in sock_diag_put_filterinfo | generic code, tag [net] |
| CVE-2014-0181 | CANDIDATE | — | — (RHEL wording, check by hand) | [net] | netlink: Fix permission check in netlink_connect() | generic code, tag [net] |
| CVE-2014-0206 | CANDIDATE | — | — (RHEL wording, check by hand) | [fs] | aio: fix plug memory disclosure and fix reqs_active accounting backport | CONFIG_AIO=y in A37 |
| CVE-2014-0206 | CANDIDATE | — | — (RHEL wording, check by hand) | [fs] | aio: plug memory disclosure and fix reqs_active accounting | CONFIG_AIO=y in A37 |
| CVE-2014-1739 | CANDIDATE | — | — (RHEL wording, check by hand) | [media] | media-device: fix an information leakage | CONFIG_VIDEO_V4L2=y in A37 |
| CVE-2014-3153 | PRESENT | 3.15 | [`54a217887a7b`](https://git.kernel.org/torvalds/c/54a217887a7b) | [kernel] | futex: Make lookup_pi_state more robust | same subject in A37 history (sha) |
| CVE-2014-3153 | PRESENT | 3.15 | [`13fbca4c6ecd`](https://git.kernel.org/torvalds/c/13fbca4c6ecd) | [kernel] | futex: Always cleanup owner tid in unlock_pi | same subject in A37 history (sha) |
| CVE-2014-3153 | PRESENT | 3.15 | [`b3eaa9fc5cd0`](https://git.kernel.org/torvalds/c/b3eaa9fc5cd0) | [kernel] | futex: Validate atomic acquisition in futex_lock_pi_atomic() | same subject in A37 history (sha) |
| CVE-2014-3153 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | futex: prevent requeue pi on same futex | generic code, tag [kernel] |
| CVE-2014-9529 | CANDIDATE | — | — (RHEL wording, check by hand) | [security] | keys: memory corruption or panic during key garbage collection | CONFIG_KEYS=y in A37 |
| CVE-2015-1805 | CANDIDATE | — | — (RHEL wording, check by hand) | [fs] | pipe: fix pipe corruption and iovec overrun on partial copy | generic code, tag [fs] |
| CVE-2016-3070 | CANDIDATE | — | — (RHEL wording, check by hand) | [kernel] | change TRACE_EVENT(writeback_dirty_page) to check bdi->dev != NULL | generic code, tag [kernel] |
| CVE-2016-3134 | PRESENT | 4.7 | [`7b7eba0f3515`](https://git.kernel.org/torvalds/c/7b7eba0f3515) | [net] | netfilter: x_tables: don't reject valid target size on some architectures | same subject in A37 history (sha) |
| CVE-2016-3134 | PRESENT | 4.6 | [`6e94e0cfb088`](https://git.kernel.org/torvalds/c/6e94e0cfb088) | [net] | netfilter: x_tables: make sure e->next_offset covers remaining blob size | same subject in A37 history (sha) |
| CVE-2016-3134 | PRESENT | 4.7 | [`d7591f0c41ce`](https://git.kernel.org/torvalds/c/d7591f0c41ce) | [net] | netfilter: x_tables: introduce and use xt_copy_counters_from_user | same subject in A37 history (sha) |
| CVE-2016-3134 | PRESENT | 4.7 | [`09d9686047db`](https://git.kernel.org/torvalds/c/09d9686047db) | [net] | netfilter: x_tables: do compat validation via translate_table | same subject in A37 history (sha) |
| CVE-2016-3134 | PRESENT | 4.7 | [`0188346f21e6`](https://git.kernel.org/torvalds/c/0188346f21e6) | [net] | netfilter: x_tables: xt_compat_match_from_user doesn't need a retval | same subject in A37 history (sha) |
| CVE-2016-3134 | PRESENT | 4.7 | [`8dddd32756f6`](https://git.kernel.org/torvalds/c/8dddd32756f6) | [net] | netfilter: arp_tables: simplify translate_compat_table args | same subject in A37 history (sha) |
| CVE-2016-3134 | PRESENT | 4.7 | [`329a0807124f`](https://git.kernel.org/torvalds/c/329a0807124f) | [net] | netfilter: ip6_tables: simplify translate_compat_table args | same subject in A37 history (sha) |
| CVE-2016-3134 | PRESENT | 4.7 | [`7d3f843eed29`](https://git.kernel.org/torvalds/c/7d3f843eed29) | [net] | netfilter: ip_tables: simplify translate_compat_table args | same subject in A37 history (sha) |
| CVE-2016-3134 | PRESENT | 4.7 | [`13631bfc6041`](https://git.kernel.org/torvalds/c/13631bfc6041) | [net] | netfilter: x_tables: validate all offsets and sizes in a rule | same subject in A37 history (sha) |
| CVE-2016-3134 | PRESENT | 4.7 | [`ce683e5f9d04`](https://git.kernel.org/torvalds/c/ce683e5f9d04) | [net] | netfilter: x_tables: check for bogus target offset | same subject in A37 history (sha) |
| CVE-2016-3134 | PRESENT | 4.7 | [`7ed2abddd20c`](https://git.kernel.org/torvalds/c/7ed2abddd20c) | [net] | netfilter: x_tables: check standard target size too | same subject in A37 history (sha) |
| CVE-2016-3134 | PRESENT | 4.7 | [`fc1221b3a163`](https://git.kernel.org/torvalds/c/fc1221b3a163) | [net] | netfilter: x_tables: add compat version of xt_check_entry_offsets | same subject in A37 history (sha) |
| CVE-2016-3134 | PRESENT | 4.7 | [`a08e4e190b86`](https://git.kernel.org/torvalds/c/a08e4e190b86) | [net] | netfilter: x_tables: assert minimum target size | same subject in A37 history (sha) |
| CVE-2016-3134 | PRESENT | 4.7 | [`aa412ba225dd`](https://git.kernel.org/torvalds/c/aa412ba225dd) | [net] | netfilter: x_tables: kill check_entry helper | same subject in A37 history (sha) |
| CVE-2016-3134 | PRESENT | 4.7 | [`7d35812c3214`](https://git.kernel.org/torvalds/c/7d35812c3214) | [net] | netfilter: x_tables: add and use xt_check_entry_offsets | same subject in A37 history (sha) |
| CVE-2016-3134 | PRESENT | 4.7 | [`f24e230d257a`](https://git.kernel.org/torvalds/c/f24e230d257a) | [net] | netfilter: x_tables: don't move to non-existent next rule | same subject in A37 history (sha) |
| CVE-2016-3134 | PRESENT | 4.6 | [`54d83fc74aa9`](https://git.kernel.org/torvalds/c/54d83fc74aa9) | [net] | netfilter: x_tables: fix unconditional helper | same subject in A37 history (sha) |
| CVE-2016-3134 | PRESENT | 4.6 | [`bdf533de6968`](https://git.kernel.org/torvalds/c/bdf533de6968) | [net] | netfilter: x_tables: validate e->target_offset early | same subject in A37 history (sha) |
| CVE-2016-3134 | PRESENT | 4.6 | [`d157bd761585`](https://git.kernel.org/torvalds/c/d157bd761585) | [net] | netfilter: x_tables: check for size overflow | same subject in A37 history (exact) |
| CVE-2016-3134 | CANDIDATE | 4.8 | [`f4dc77713f80`](https://git.kernel.org/torvalds/c/f4dc77713f80) | [net] | netfilter: x_tables: speed up jump target validation | CONFIG_NETFILTER_XTABLES=y in A37 |
| CVE-2016-3134 | CANDIDATE | 4.6 | [`b301f2538759`](https://git.kernel.org/torvalds/c/b301f2538759) | [net] | netfilter: x_tables: enforce nul-terminated table name from getsockopt GET_ENTRIES | CONFIG_NETFILTER_XTABLES=y in A37 |
| CVE-2016-3134 | CANDIDATE | 4.2 | [`2f06550b3b0e`](https://git.kernel.org/torvalds/c/2f06550b3b0e) | [net] | netfilter: remove unused comefrom hookmask argument | CONFIG_NETFILTER=y in A37 |
| CVE-2016-3134 | CANDIDATE | 4.7 | [`364723410175`](https://git.kernel.org/torvalds/c/364723410175) | [net] | netfilter: x_tables: validate targets of jumps | CONFIG_NETFILTER_XTABLES=y in A37 |
| CVE-2016-5829 | REVIEW | — | — (RHEL wording, check by hand) | [hid] | hiddev: validate num_values for HIDIOCGUSAGES, HIDIOCSUSAGES commands | tag [hid], no specific rule |
| CVE-2016-8650 | CANDIDATE | — | — (RHEL wording, check by hand) | [lib] | mpi: Fix NULL ptr dereference in mpi_powm() | generic code, tag [lib] |
| CVE-2017-2647 | CANDIDATE | — | — (RHEL wording, check by hand) | [security] | keys: Protect request_key() against a type with no match function | CONFIG_KEYS=y in A37 |
| CVE-2017-7472 | PRESENT | 4.4 | [`096fe9eaea40`](https://git.kernel.org/torvalds/c/096fe9eaea40) | [security] | keys: Fix handling of stored error in a negatively instantiated user key | same subject in A37 history (exact) |
| CVE-2017-7472 | PRESENT | 4.11 | [`c9f838d104fe`](https://git.kernel.org/torvalds/c/c9f838d104fe) | [security] | keys: fix keyctl_set_reqkey_keyring() to not leak thread keyrings | same subject in A37 history (sha) |
| CVE-2017-7472 | PRESENT | 4.11 | [`57cb17e764ba`](https://git.kernel.org/torvalds/c/57cb17e764ba) | [security] | keys: Fix an error code in request_master_key() | same subject in A37 history (sha) |
| CVE-2017-7472 | CANDIDATE | 4.11 | [`0837e49ab3fa`](https://git.kernel.org/torvalds/c/0837e49ab3fa) | [security] | keys: Differentiate uses of rcu_dereference_key() and user_key_payload() | CONFIG_KEYS=y in A37 |
| CVE-2017-7472 | CANDIDATE | 4.11 | [`52176603795c`](https://git.kernel.org/torvalds/c/52176603795c) | [security] | keys: Use memzero_explicit() for secret data | CONFIG_KEYS=y in A37 |
| CVE-2017-15265 | CANDIDATE | — | — (RHEL wording, check by hand) | [sound] | alsa: seq: Fix use-after-free at creating a port (CVE-2017-15265) | CONFIG_SND=y in A37 |
| CVE-2019-11477 | PRESENT | 5.2 | [`3b4929f65b0d`](https://git.kernel.org/torvalds/c/3b4929f65b0d) | [net] | tcp: limit payload size of sacked skbs | same subject in A37 history (sha) |
| CVE-2019-11477 | CANDIDATE | 4.15 | [`f33198163a0f`](https://git.kernel.org/torvalds/c/f33198163a0f) | [net] | tcp: pass previous skb to tcp_shifted_skb() | generic code, tag [net] |

## PRESENT

| CVE | Status | First in | Upstream | Tag | Subject | Why |
|---|---|---|---|---|---|---|
| CVE-2013-2930 | PRESENT | 3.13 | [`12ae030d54ef`](https://git.kernel.org/torvalds/c/12ae030d54ef) | [kernel] | perf/ftrace: Fix paranoid level for enabling function tracer | same subject in A37 history (sha) |
| CVE-2013-4127 | PRESENT | 3.11 | [`dd7633ecd553`](https://git.kernel.org/torvalds/c/dd7633ecd553) | [net] | vhost-net: fix use-after-free in vhost_net_flush | same subject in A37 history (exact) |
| CVE-2013-4162 | PRESENT | 3.11 | [`8822b64a0fa6`](https://git.kernel.org/torvalds/c/8822b64a0fa6) | [net] | ipv6: call udp_push_pending_frames when uncorking a socket with AF_INET pending data | same subject in A37 history (sha) |
| CVE-2013-4163 | PRESENT | 3.11 | [`75a493e60ac4`](https://git.kernel.org/torvalds/c/75a493e60ac4) | [net] | ipv6: ip6_append_data_mtu did not care about pmtudisc and frag_size | same subject in A37 history (sha) |
| CVE-2013-4343 | PRESENT | 3.12 | [`662ca437e714`](https://git.kernel.org/torvalds/c/662ca437e714) | [net] | tuntap: correctly handle error in tun_set_iff() | same subject in A37 history (sha) |
| CVE-2013-4348 | PRESENT | 3.13 | [`6f092343855a`](https://git.kernel.org/torvalds/c/6f092343855a) | [net] | flow_dissector: fail on evil iph->ihl | same subject in A37 history (sha) |
| CVE-2013-4350 | PRESENT | 3.12 | [`95ee62083cb6`](https://git.kernel.org/torvalds/c/95ee62083cb6) | [net] | sctp: fix ipv6 ipsec encryption bug in sctp_v6_xmit | same subject in A37 history (sha) |
| CVE-2013-4387 | PRESENT | 3.12 | [`2811ebac2521`](https://git.kernel.org/torvalds/c/2811ebac2521) | [net] | ipv6: udp packets following an UFO enqueued packet need also be handled by UFO | same subject in A37 history (sha) |
| CVE-2013-4563 | PRESENT | 3.13 | [`0e033e04c267`](https://git.kernel.org/torvalds/c/0e033e04c267) | [net] | ipv6: fix headroom calculation in udp6_ufo_fragment | same subject in A37 history (sha) |
| CVE-2013-6378 | PRESENT | 3.13 | [`a497e47d4aec`](https://git.kernel.org/torvalds/c/a497e47d4aec) | [wireless] | libertas: potential oops in debugfs | same subject in A37 history (sha) |
| CVE-2013-6380 | PRESENT | 3.13 | [`b4789b8e6be3`](https://git.kernel.org/torvalds/c/b4789b8e6be3) | [scsi] | aacraid: prevent invalid pointer dereference | same subject in A37 history (sha) |
| CVE-2013-6382 | PRESENT | 3.13 | [`31978b5cc66b`](https://git.kernel.org/torvalds/c/31978b5cc66b) | [fs] | xfs: underflow bug in xfs_attrlist_by_handle() | same subject in A37 history (sha) |
| CVE-2013-6405 | PRESENT | 3.13 | [`1fa4c710b6fe`](https://git.kernel.org/torvalds/c/1fa4c710b6fe) | [net] | ipv6: fix leaking uninitialized port number of offender sockaddr | same subject in A37 history (sha) |
| CVE-2013-6405 | PRESENT | 3.13 | [`85fbaa75037d`](https://git.kernel.org/torvalds/c/85fbaa75037d) | [net] | inet: fix addr_len/msg->msg_namelen assignment in recv_error and rxpmtu functions | same subject in A37 history (sha) |
| CVE-2013-6405 | PRESENT | 3.13 | [`bceaa90240b6`](https://git.kernel.org/torvalds/c/bceaa90240b6) | [net] | inet: prevent leakage of uninitialized memory to user in recv syscalls | same subject in A37 history (sha) |
| CVE-2013-7266 | PRESENT | 3.13 | [`68c6beb37395`](https://git.kernel.org/torvalds/c/68c6beb37395) | [net] | add BUG_ON if kernel advertises msg_namelen > sizeof(struct sockaddr_storage) | same subject in A37 history (sha) |
| CVE-2013-7266 | PRESENT | 3.13 | [`f3d3342602f8`](https://git.kernel.org/torvalds/c/f3d3342602f8) | [net] | rework recvmsg handler msg_name and msg_namelen logic | same subject in A37 history (sha) |
| CVE-2013-7267 | PRESENT | 3.13 | [`68c6beb37395`](https://git.kernel.org/torvalds/c/68c6beb37395) | [net] | add BUG_ON if kernel advertises msg_namelen > sizeof(struct sockaddr_storage) | same subject in A37 history (sha) |
| CVE-2013-7267 | PRESENT | 3.13 | [`f3d3342602f8`](https://git.kernel.org/torvalds/c/f3d3342602f8) | [net] | rework recvmsg handler msg_name and msg_namelen logic | same subject in A37 history (sha) |
| CVE-2013-7268 | PRESENT | 3.13 | [`68c6beb37395`](https://git.kernel.org/torvalds/c/68c6beb37395) | [net] | add BUG_ON if kernel advertises msg_namelen > sizeof(struct sockaddr_storage) | same subject in A37 history (sha) |
| CVE-2013-7268 | PRESENT | 3.13 | [`f3d3342602f8`](https://git.kernel.org/torvalds/c/f3d3342602f8) | [net] | rework recvmsg handler msg_name and msg_namelen logic | same subject in A37 history (sha) |
| CVE-2013-7269 | PRESENT | 3.13 | [`68c6beb37395`](https://git.kernel.org/torvalds/c/68c6beb37395) | [net] | add BUG_ON if kernel advertises msg_namelen > sizeof(struct sockaddr_storage) | same subject in A37 history (sha) |
| CVE-2013-7269 | PRESENT | 3.13 | [`f3d3342602f8`](https://git.kernel.org/torvalds/c/f3d3342602f8) | [net] | rework recvmsg handler msg_name and msg_namelen logic | same subject in A37 history (sha) |
| CVE-2013-7270 | PRESENT | 3.13 | [`68c6beb37395`](https://git.kernel.org/torvalds/c/68c6beb37395) | [net] | add BUG_ON if kernel advertises msg_namelen > sizeof(struct sockaddr_storage) | same subject in A37 history (sha) |
| CVE-2013-7270 | PRESENT | 3.13 | [`f3d3342602f8`](https://git.kernel.org/torvalds/c/f3d3342602f8) | [net] | rework recvmsg handler msg_name and msg_namelen logic | same subject in A37 history (sha) |
| CVE-2013-7271 | PRESENT | 3.13 | [`68c6beb37395`](https://git.kernel.org/torvalds/c/68c6beb37395) | [net] | add BUG_ON if kernel advertises msg_namelen > sizeof(struct sockaddr_storage) | same subject in A37 history (sha) |
| CVE-2013-7271 | PRESENT | 3.13 | [`f3d3342602f8`](https://git.kernel.org/torvalds/c/f3d3342602f8) | [net] | rework recvmsg handler msg_name and msg_namelen logic | same subject in A37 history (sha) |
| CVE-2013-7421 | PRESENT | 3.19 | [`3e14dcf7cb80`](https://git.kernel.org/torvalds/c/3e14dcf7cb80) | [crypto] | add missing crypto module aliases | same subject in A37 history (sha) |
| CVE-2013-7421 | PRESENT | 3.19 | [`4943ba16bbc2`](https://git.kernel.org/torvalds/c/4943ba16bbc2) | [crypto] | include crypto- module prefix in template | same subject in A37 history (sha) |
| CVE-2013-7421 | PRESENT | 3.19 | [`5d26a105b5a7`](https://git.kernel.org/torvalds/c/5d26a105b5a7) | [crypto] | prefix module autoloading with "crypto-" | same subject in A37 history (sha) |
| CVE-2014-0069 | PRESENT | 3.14 | [`5d81de8e8667`](https://git.kernel.org/torvalds/c/5d81de8e8667) | [fs] | cifs: ensure that uncached writes handle unmapped areas correctly | same subject in A37 history (sha) |
| CVE-2014-0069 | NA-CONFIG | 3.14 | [`dca1c8d17a2f`](https://git.kernel.org/torvalds/c/dca1c8d17a2f) | [fs] | cifs: mask off top byte in get_rfc1002_length() | CONFIG_CIFS not set in A37 |
| CVE-2014-0069 | NA-CONFIG | 3.14 | [`a26054d18476`](https://git.kernel.org/torvalds/c/a26054d18476) | [fs] | cifs: sanity check length of data to send before sending | CONFIG_CIFS not set in A37 |
| CVE-2014-0101 | PRESENT | 3.14 | [`ec0223ec48a9`](https://git.kernel.org/torvalds/c/ec0223ec48a9) | [net] | sctp: fix sctp_sf_do_5_1D_ce to verify if we/peer is AUTH capable | same subject in A37 history (sha) |
| CVE-2014-0196 | PRESENT | 3.15 | [`4291086b1f08`](https://git.kernel.org/torvalds/c/4291086b1f08) | [tty] | n_tty: Fix n_tty_write crash when echoing in raw mode | same subject in A37 history (sha) |
| CVE-2014-1690 | PRESENT | 3.13 | [`2690d97ade05`](https://git.kernel.org/torvalds/c/2690d97ade05) | [net] | netfilter: nf_nat: fix access to uninitialized buffer in IRC NAT helper | same subject in A37 history (sha) |
| CVE-2014-1737 | PRESENT | 3.15 | [`2145e15e0557`](https://git.kernel.org/torvalds/c/2145e15e0557) | [block] | floppy: don't write kernel-only members to FDRAWCMD ioctl output | same subject in A37 history (sha) |
| CVE-2014-1737 | PRESENT | 3.15 | [`ef87dbe76143`](https://git.kernel.org/torvalds/c/ef87dbe76143) | [block] | floppy: ignore kernel-only members in FDRAWCMD ioctl input | same subject in A37 history (sha) |
| CVE-2014-1738 | PRESENT | 3.15 | [`2145e15e0557`](https://git.kernel.org/torvalds/c/2145e15e0557) | [block] | floppy: don't write kernel-only members to FDRAWCMD ioctl output | same subject in A37 history (sha) |
| CVE-2014-1738 | PRESENT | 3.15 | [`ef87dbe76143`](https://git.kernel.org/torvalds/c/ef87dbe76143) | [block] | floppy: ignore kernel-only members in FDRAWCMD ioctl input | same subject in A37 history (sha) |
| CVE-2014-2309 | PRESENT | 3.14 | [`c88507fbad80`](https://git.kernel.org/torvalds/c/c88507fbad80) | [net] | ipv6: don't set DST_NOCOUNT for remotely added routes | same subject in A37 history (sha) |
| CVE-2014-2523 | PRESENT | 3.14 | [`b22f5126a24b`](https://git.kernel.org/torvalds/c/b22f5126a24b) | [net] | netfilter: nf_conntrack_dccp: fix skb_header_pointer API usages | same subject in A37 history (sha) |
| CVE-2014-2568 | PRESENT | 3.14 | [`36d5fe6a0007`](https://git.kernel.org/torvalds/c/36d5fe6a0007) | [net] | core, nfqueue, openvswitch: Orphan frags in skb_zerocopy and handle errors | same subject in A37 history (sha) |
| CVE-2014-2851 | PRESENT | 3.15 | [`b04c46190219`](https://git.kernel.org/torvalds/c/b04c46190219) | [net] | ipv4: current group_info should be put after using | same subject in A37 history (sha) |
| CVE-2014-3144 | PRESENT | 3.15 | [`05ab8f2647e4`](https://git.kernel.org/torvalds/c/05ab8f2647e4) | [net] | filter: prevent nla extensions to peek beyond the end of the message | same subject in A37 history (sha) |
| CVE-2014-3145 | PRESENT | 3.15 | [`05ab8f2647e4`](https://git.kernel.org/torvalds/c/05ab8f2647e4) | [net] | filter: prevent nla extensions to peek beyond the end of the message | same subject in A37 history (sha) |
| CVE-2014-3673 | PRESENT | 3.18 | [`9de7922bc709`](https://git.kernel.org/torvalds/c/9de7922bc709) | [net] | sctp: fix skb_over_panic when receiving malformed ASCONF chunks | same subject in A37 history (sha) |
| CVE-2014-3687 | PRESENT | 3.18 | [`b69040d8e39f`](https://git.kernel.org/torvalds/c/b69040d8e39f) | [net] | sctp: fix panic on duplicate ASCONF chunks | same subject in A37 history (sha) |
| CVE-2014-3688 | PRESENT | 3.18 | [`26b87c788100`](https://git.kernel.org/torvalds/c/26b87c788100) | [net] | sctp: fix remote memory pressure from excessive queueing | same subject in A37 history (sha) |
| CVE-2014-3917 | PRESENT | 3.16 | [`a3c549311995`](https://git.kernel.org/torvalds/c/a3c549311995) | [kernel] | auditsc: audit_krule mask accesses need bounds checking | same subject in A37 history (sha) |
| CVE-2014-4171 | PRESENT | 3.16 | [`b1a366500bd5`](https://git.kernel.org/torvalds/c/b1a366500bd5) | [mm] | shmem: fix splicing from a hole while it's punched | same subject in A37 history (sha) |
| CVE-2014-4171 | PRESENT | 3.16 | [`8e205f779d14`](https://git.kernel.org/torvalds/c/8e205f779d14) | [mm] | shmem: fix faulting into a hole, not taking i_mutex | same subject in A37 history (sha) |
| CVE-2014-4171 | PRESENT | 3.16 | [`f00cdc6df7d7`](https://git.kernel.org/torvalds/c/f00cdc6df7d7) | [mm] | shmem: fix faulting into a hole while it's punched | same subject in A37 history (sha) |
| CVE-2014-4652 | PRESENT | 3.16 | [`07f4d9d74a04`](https://git.kernel.org/torvalds/c/07f4d9d74a04) | [alsa] | control: Protect user controls against concurrent access | same subject in A37 history (sha) |
| CVE-2014-4654 | PRESENT | 3.16 | [`82262a46627b`](https://git.kernel.org/torvalds/c/82262a46627b) | [alsa] | control: Fix replacing user controls | same subject in A37 history (sha) |
| CVE-2014-4655 | PRESENT | 3.16 | [`82262a46627b`](https://git.kernel.org/torvalds/c/82262a46627b) | [alsa] | control: Fix replacing user controls | same subject in A37 history (sha) |
| CVE-2014-4656 | PRESENT | 3.16 | [`883a1d49f0d7`](https://git.kernel.org/torvalds/c/883a1d49f0d7) | [alsa] | control: Make sure that id->index does not overflow | same subject in A37 history (sha) |
| CVE-2014-4656 | PRESENT | 3.16 | [`ac902c112d90`](https://git.kernel.org/torvalds/c/ac902c112d90) | [alsa] | control: Handle numid overflow | same subject in A37 history (sha) |
| CVE-2014-4667 | PRESENT | 3.16 | [`d3217b15a19a`](https://git.kernel.org/torvalds/c/d3217b15a19a) | [net] | sctp: Fix sk_ack_backlog wrap-around problem | same subject in A37 history (sha) |
| CVE-2014-5077 | PRESENT | 3.16 | [`1be9a950c646`](https://git.kernel.org/torvalds/c/1be9a950c646) | [net] | sctp: inherit auth_capable on INIT collisions | same subject in A37 history (sha) |
| CVE-2014-6410 | PRESENT | 3.17 | [`c03aa9f6e1f9`](https://git.kernel.org/torvalds/c/c03aa9f6e1f9) | [fs] | udf: Avoid infinite loop when processing indirect ICBs | same subject in A37 history (sha) |
| CVE-2014-7841 | PRESENT | 3.18 | [`e40607cbe270`](https://git.kernel.org/torvalds/c/e40607cbe270) | [net] | sctp: fix NULL pointer dereference in af->from_addr_param on malformed packet | same subject in A37 history (sha) |
| CVE-2014-7970 | PRESENT | 3.18 | [`0d0826019e52`](https://git.kernel.org/torvalds/c/0d0826019e52) | [fs] | mnt: Prevent pivot_root from creating a loop in the mount tree | same subject in A37 history (sha) |
| CVE-2014-8989 | PRESENT | 3.19 | [`66d2f338ee4c`](https://git.kernel.org/torvalds/c/66d2f338ee4c) | [kernel] | userns: Allow setting gid_maps without privilege when setgroups is disabled | same subject in A37 history (sha) |
| CVE-2014-8989 | PRESENT | 3.19 | [`9cc46516ddf4`](https://git.kernel.org/torvalds/c/9cc46516ddf4) | [kernel] | userns: Add a knob to disable setgroups on a per user namespace basis | same subject in A37 history (sha) |
| CVE-2014-8989 | PRESENT | 3.19 | [`f0d62aec931e`](https://git.kernel.org/torvalds/c/f0d62aec931e) | [kernel] | userns: Rename id_map_mutex to userns_state_mutex | same subject in A37 history (sha) |
| CVE-2014-8989 | PRESENT | 3.19 | [`f95d7918bd1e`](https://git.kernel.org/torvalds/c/f95d7918bd1e) | [kernel] | userns: Only allow the creator of the userns unprivileged mappings | same subject in A37 history (sha) |
| CVE-2014-8989 | PRESENT | 3.19 | [`80dd00a23784`](https://git.kernel.org/torvalds/c/80dd00a23784) | [kernel] | userns: Check euid no fsuid when establishing an unprivileged uid mapping | same subject in A37 history (sha) |
| CVE-2014-8989 | PRESENT | 3.19 | [`be7c6dba2332`](https://git.kernel.org/torvalds/c/be7c6dba2332) | [kernel] | userns: Don't allow unprivileged creation of gid mappings | same subject in A37 history (sha) |
| CVE-2014-8989 | PRESENT | 3.19 | [`0542f17bf2c1`](https://git.kernel.org/torvalds/c/0542f17bf2c1) | [kernel] | userns: Document what the invariant required for safe unprivileged mappings | same subject in A37 history (sha) |
| CVE-2014-8989 | PRESENT | 3.19 | [`7ff4d90b4c24`](https://git.kernel.org/torvalds/c/7ff4d90b4c24) | [kernel] | groups: Consolidate the setgroups permission checks | same subject in A37 history (sha) |
| CVE-2014-8989 | NA-CONFIG | — | — (RHEL wording, check by hand) | [kernel] | userns: Correct the comment in map_write | CONFIG_USER_NS not set in A37 |
| CVE-2014-8989 | NA-CONFIG | — | — (RHEL wording, check by hand) | [kernel] | userns: fix KABI broken by introduction of struct user_namespace.flags | CONFIG_USER_NS not set in A37 |
| CVE-2014-8989 | NA-CONFIG | — | — (RHEL wording, check by hand) | [kernel] | userns: Don't allow setgroups until a gid mapping has been established | CONFIG_USER_NS not set in A37 |
| CVE-2014-9584 | PRESENT | 3.19 | [`4e2024624e67`](https://git.kernel.org/torvalds/c/4e2024624e67) | [fs] | isofs: Fix unchecked printing of ER records | same subject in A37 history (sha) |
| CVE-2014-9644 | PRESENT | 3.19 | [`3e14dcf7cb80`](https://git.kernel.org/torvalds/c/3e14dcf7cb80) | [crypto] | add missing crypto module aliases | same subject in A37 history (sha) |
| CVE-2014-9644 | PRESENT | 3.19 | [`4943ba16bbc2`](https://git.kernel.org/torvalds/c/4943ba16bbc2) | [crypto] | include crypto- module prefix in template | same subject in A37 history (sha) |
| CVE-2014-9644 | PRESENT | 3.19 | [`5d26a105b5a7`](https://git.kernel.org/torvalds/c/5d26a105b5a7) | [crypto] | prefix module autoloading with "crypto-" | same subject in A37 history (sha) |
| CVE-2015-1421 | PRESENT | 3.19 | [`600ddd682554`](https://git.kernel.org/torvalds/c/600ddd682554) | [net] | sctp: fix slab corruption from use after free on INIT collisions | same subject in A37 history (sha) |
| CVE-2015-2922 | PRESENT | 4.0 | [`6fd99094de2b`](https://git.kernel.org/torvalds/c/6fd99094de2b) | [net] | ipv6: Don't reduce hop limit for an interface | same subject in A37 history (sha) |
| CVE-2015-2925 | PRESENT | 4.3 | [`397d425dc26d`](https://git.kernel.org/torvalds/c/397d425dc26d) | [fs] | vfs: Test for and handle paths that are unreachable from their mnt_root | same subject in A37 history (sha) |
| CVE-2015-2925 | PRESENT | 4.3 | [`cde93be45a8a`](https://git.kernel.org/torvalds/c/cde93be45a8a) | [fs] | dcache: Handle escaped paths in prepend_path | same subject in A37 history (sha) |
| CVE-2015-3212 | PRESENT | 4.2 | [`2d45a02d0166`](https://git.kernel.org/torvalds/c/2d45a02d0166) | [net] | sctp: fix ASCONF list handling | same subject in A37 history (sha) |
| CVE-2015-3331 | PRESENT | 4.0 | [`ccfe8c3f7e52`](https://git.kernel.org/torvalds/c/ccfe8c3f7e52) | [x86] | crypto: aesni - fix memory usage in GCM decryption | same subject in A37 history (sha) |
| CVE-2015-3636 | PRESENT | 4.1 | [`a134f083e79f`](https://git.kernel.org/torvalds/c/a134f083e79f) | [net] | ipv4: Missing sk_nulls_node_init() in ping_unhash() | same subject in A37 history (sha) |
| CVE-2015-5156 | PRESENT | 4.2 | [`48900cb6af42`](https://git.kernel.org/torvalds/c/48900cb6af42) | [netdrv] | virtio-net: drop NETIF_F_FRAGLIST | same subject in A37 history (sha) |
| CVE-2015-5283 | PRESENT | 4.3 | [`8e2d61e0aed2`](https://git.kernel.org/torvalds/c/8e2d61e0aed2) | [net] | sctp: fix race on protocol/netns initialization | same subject in A37 history (sha) |
| CVE-2015-5364 | PRESENT | 4.1 | [`beb39db59d14`](https://git.kernel.org/torvalds/c/beb39db59d14) | [net] | udp: fix behavior of wrong checksums | same subject in A37 history (sha) |
| CVE-2015-5366 | PRESENT | 4.1 | [`beb39db59d14`](https://git.kernel.org/torvalds/c/beb39db59d14) | [net] | udp: fix behavior of wrong checksums | same subject in A37 history (sha) |
| CVE-2015-7550 | PRESENT | 4.4 | [`b4a1b4f5047e`](https://git.kernel.org/torvalds/c/b4a1b4f5047e) | [security] | keys: Fix race between read and revoke | same subject in A37 history (sha) |
| CVE-2015-7613 | PRESENT | 4.3 | [`b9a532277938`](https://git.kernel.org/torvalds/c/b9a532277938) | [kernel] | Initialize msg/shm IPC objects before doing ipc_addid() | same subject in A37 history (sha) |
| CVE-2015-8543 | PRESENT | 4.4 | [`79462ad02e86`](https://git.kernel.org/torvalds/c/79462ad02e86) | [net] | add validation for the socket syscall protocol argument | same subject in A37 history (sha) |
| CVE-2015-8767 | PRESENT | 4.3 | [`635682a14427`](https://git.kernel.org/torvalds/c/635682a14427) | [net] | sctp: Prevent soft lockup when sctp_accept() is called during a timeout event | same subject in A37 history (sha) |
| CVE-2015-8767 | NA-CONFIG | 4.3 | [`f05940e61845`](https://git.kernel.org/torvalds/c/f05940e61845) | [net] | sctp: Whitespace fix | CONFIG_IP_SCTP not set in A37 |
| CVE-2015-8830 | PRESENT | — | — (RHEL wording, check by hand) | [fs] | aio: properly check iovec sizes | same subject in A37 history (exact) |
| CVE-2015-8970 | PRESENT | 4.5 | [`6e8d8ecf4387`](https://git.kernel.org/torvalds/c/6e8d8ecf4387) | [crypto] | algif_skcipher - Add key check exception for cipher_null | same subject in A37 history (sha) |
| CVE-2015-8970 | PRESENT | 4.5 | [`6de62f15b581`](https://git.kernel.org/torvalds/c/6de62f15b581) | [crypto] | algif_hash - Require setkey before accept(2) | same subject in A37 history (sha) |
| CVE-2015-8970 | PRESENT | 4.5 | [`a5596d633278`](https://git.kernel.org/torvalds/c/a5596d633278) | [crypto] | hash - Add crypto_ahash_has_setkey | same subject in A37 history (sha) |
| CVE-2015-8970 | PRESENT | 4.5 | [`a0fa2d037129`](https://git.kernel.org/torvalds/c/a0fa2d037129) | [crypto] | algif_skcipher - Add nokey compatibility path | same subject in A37 history (sha) |
| CVE-2015-8970 | PRESENT | 4.5 | [`37766586c965`](https://git.kernel.org/torvalds/c/37766586c965) | [crypto] | af_alg - Add nokey compatibility path | same subject in A37 history (sha) |
| CVE-2015-8970 | PRESENT | 4.5 | [`a383292c8666`](https://git.kernel.org/torvalds/c/a383292c8666) | [crypto] | af_alg - Fix socket double-free when accept fails | same subject in A37 history (sha) |
| CVE-2015-8970 | PRESENT | 4.5 | [`c840ac6af3f8`](https://git.kernel.org/torvalds/c/c840ac6af3f8) | [crypto] | af_alg - Disallow bind/setkey/... after accept(2) | same subject in A37 history (sha) |
| CVE-2015-8970 | PRESENT | 4.5 | [`dd504589577d`](https://git.kernel.org/torvalds/c/dd504589577d) | [crypto] | algif_skcipher - Require setkey before accept(2) | same subject in A37 history (sha) |
| CVE-2015-9289 | PRESENT | — | — (RHEL wording, check by hand) | [media] | cx24116: fix a buffer overflow when checking userspace params | same subject in A37 history (exact) |
| CVE-2016-0728 | PRESENT | 4.5 | [`23567fd052a9`](https://git.kernel.org/torvalds/c/23567fd052a9) | [security] | keys: Fix keyring ref leak in join_session_keyring() | same subject in A37 history (sha) |
| CVE-2016-0758 | PRESENT | 4.6 | [`23c8a812dc3c`](https://git.kernel.org/torvalds/c/23c8a812dc3c) | [lib] | keys: Fix ASN.1 indefinite length object parsing | same subject in A37 history (exact) |
| CVE-2016-2117 | PRESENT | 4.6 | [`f43bfaeddc79`](https://git.kernel.org/torvalds/c/f43bfaeddc79) | [netdrv] | atl2: Disable unimplemented scatter/gather feature | same subject in A37 history (sha) |
| CVE-2016-2384 | PRESENT | 4.5 | [`07d86ca93db7`](https://git.kernel.org/torvalds/c/07d86ca93db7) | [sound] | alsa: usb-audio: avoid freeing umidi object twice | same subject in A37 history (sha) |
| CVE-2016-2847 | PRESENT | 4.5 | [`759c01142a5d`](https://git.kernel.org/torvalds/c/759c01142a5d) | [fs] | pipe: limit the per-user amount of pages allocated in pipes | same subject in A37 history (sha) |
| CVE-2016-4470 | PRESENT | 4.7 | [`38327424b40b`](https://git.kernel.org/torvalds/c/38327424b40b) | [security] | keys: potential uninitialized variable | same subject in A37 history (sha) |
| CVE-2016-4913 | PRESENT | 4.6 | [`99d825822ead`](https://git.kernel.org/torvalds/c/99d825822ead) | [fs] | fs: get_rock_ridge_filename(): handle malformed NM entries | same subject in A37 history (sha) |
| CVE-2016-5195 | PRESENT | 4.9 | [`19be0eaffa3a`](https://git.kernel.org/torvalds/c/19be0eaffa3a) | [mm] | remove gup_flags FOLL_WRITE games from __get_user_pages() | same subject in A37 history (sha) |
| CVE-2016-6136 | PRESENT | 4.8 | [`43761473c254`](https://git.kernel.org/torvalds/c/43761473c254) | [kernel] | audit: fix a double fetch in audit_log_single_execve_arg() | same subject in A37 history (sha) |
| CVE-2016-6480 | PRESENT | 4.8 | [`fa00c437eef8`](https://git.kernel.org/torvalds/c/fa00c437eef8) | [scsi] | aacraid: Check size values after double-fetch from user | same subject in A37 history (sha) |
| CVE-2016-6828 | PRESENT | 4.8 | [`bb1fceca2249`](https://git.kernel.org/torvalds/c/bb1fceca2249) | [net] | tcp: fix use after free in tcp_xmit_retransmit_queue() | same subject in A37 history (sha) |
| CVE-2016-7042 | PRESENT | 4.9 | [`03dab869b7b2`](https://git.kernel.org/torvalds/c/03dab869b7b2) | [security] | keys: Fix short sprintf buffer in /proc/keys show function | same subject in A37 history (sha) |
| CVE-2016-7097 | PRESENT | 4.9 | [`073931017b49`](https://git.kernel.org/torvalds/c/073931017b49) | [fs] | posix_acl: Clear SGID bit when setting file permissions | same subject in A37 history (sha) |
| CVE-2016-7117 | PRESENT | 4.6 | [`34b88a68f26a`](https://git.kernel.org/torvalds/c/34b88a68f26a) | [net] | Fix use after free in the recvmmsg exit path | same subject in A37 history (sha) |
| CVE-2016-7910 | PRESENT | 4.8 | [`77da160530dd`](https://git.kernel.org/torvalds/c/77da160530dd) | [block] | fix use-after-free in seq file | same subject in A37 history (sha) |
| CVE-2016-7913 | PRESENT | — | — (RHEL wording, check by hand) | [media] | xc2028: avoid use after free | same subject in A37 history (exact) |
| CVE-2016-8399 | PRESENT | 4.9 | [`0eab121ef875`](https://git.kernel.org/torvalds/c/0eab121ef875) | [net] | ping: check minimum size on ICMP header length | same subject in A37 history (sha) |
| CVE-2016-8646 | PRESENT | 4.4 | [`4afa5f961792`](https://git.kernel.org/torvalds/c/4afa5f961792) | [crypto] | algif_hash - Only export and import on sockets with data | same subject in A37 history (sha) |
| CVE-2016-8655 | PRESENT | 4.9 | [`84ac7260236a`](https://git.kernel.org/torvalds/c/84ac7260236a) | [net] | packet: fix race condition in packet_set_ring | same subject in A37 history (sha) |
| CVE-2016-9555 | PRESENT | 4.9 | [`bf911e985d6b`](https://git.kernel.org/torvalds/c/bf911e985d6b) | [net] | sctp: validate chunk len before actually using it | same subject in A37 history (sha) |
| CVE-2016-9555 | NA-CONFIG | 4.9 | [`e2f036a97271`](https://git.kernel.org/torvalds/c/e2f036a97271) | [net] | sctp: rename WORD_TRUNC/ROUND macros | CONFIG_IP_SCTP not set in A37 |
| CVE-2016-9555 | NA-CONFIG | 4.6 | [`659e0bcaebc4`](https://git.kernel.org/torvalds/c/659e0bcaebc4) | [net] | sctp: keep fragmentation point aligned to word size | CONFIG_IP_SCTP not set in A37 |
| CVE-2016-9576 | PRESENT | 4.10 | [`128394eff343`](https://git.kernel.org/torvalds/c/128394eff343) | [scsi] | sg_write()/bsg_write() is not fit to be called under KERNEL_DS | same subject in A37 history (sha) |
| CVE-2016-9588 | PRESENT | 4.10 | [`ef85b6738543`](https://git.kernel.org/torvalds/c/ef85b6738543) | [x86] | kvm: nvmx: Allow L1 to intercept software exceptions (#BP and #OF) | same subject in A37 history (sha) |
| CVE-2016-9604 | PRESENT | 4.11 | [`ee8f844e3c5a`](https://git.kernel.org/torvalds/c/ee8f844e3c5a) | [security] | keys: Disallow keyrings beginning with '.' to be joined as session keyrings | same subject in A37 history (sha) |
| CVE-2016-9793 | PRESENT | 4.9 | [`b98b0bc8c431`](https://git.kernel.org/torvalds/c/b98b0bc8c431) | [net] | avoid signed overflows for SO_{SND\|RCV}BUFFORCE | same subject in A37 history (loose) |
| CVE-2016-9806 | PRESENT | 4.7 | [`92964c79b357`](https://git.kernel.org/torvalds/c/92964c79b357) | [net] | netlink: Fix dump skb leak/double free | same subject in A37 history (exact) |
| CVE-2016-10088 | PRESENT | 4.10 | [`128394eff343`](https://git.kernel.org/torvalds/c/128394eff343) | [scsi] | sg_write()/bsg_write() is not fit to be called under KERNEL_DS | same subject in A37 history (sha) |
| CVE-2016-10208 | PRESENT | 4.11 | [`2ba3e6e8afc9`](https://git.kernel.org/torvalds/c/2ba3e6e8afc9) | [fs] | ext4: fix fencepost in s_first_meta_bg validation | same subject in A37 history (sha) |
| CVE-2016-10208 | PRESENT | 4.9 | [`8cdf3372fe83`](https://git.kernel.org/torvalds/c/8cdf3372fe83) | [fs] | ext4: sanity check the block and cluster size at mount time | same subject in A37 history (sha) |
| CVE-2016-10208 | PRESENT | 4.10 | [`3a4b77cd47bb`](https://git.kernel.org/torvalds/c/3a4b77cd47bb) | [fs] | ext4: validate s_first_meta_bg at mount time | same subject in A37 history (sha) |
| CVE-2017-2583 | PRESENT | 4.10 | [`33ab91103b34`](https://git.kernel.org/torvalds/c/33ab91103b34) | [x86] | kvm: x86: fix emulation of "MOV SS, null selector" | same subject in A37 history (sha) |
| CVE-2017-2618 | PRESENT | 4.10 | [`0c461cb727d1`](https://git.kernel.org/torvalds/c/0c461cb727d1) | [security] | selinux: fix off-by-one in setprocattr | same subject in A37 history (sha) |
| CVE-2017-2671 | PRESENT | 4.11 | [`43a6684519ab`](https://git.kernel.org/torvalds/c/43a6684519ab) | [net] | ping: implement proper locking | same subject in A37 history (sha) |
| CVE-2017-5970 | PRESENT | 4.10 | [`34b2cef20f19`](https://git.kernel.org/torvalds/c/34b2cef20f19) | [net] | ipv4: keep skb->dst around in presence of IP options | same subject in A37 history (sha) |
| CVE-2017-5986 | PRESENT | 4.11 | [`dfcb9f4f99f1`](https://git.kernel.org/torvalds/c/dfcb9f4f99f1) | [net] | sctp: deny peeloff operation on asocs with threads sleeping on it | same subject in A37 history (sha) |
| CVE-2017-5986 | PRESENT | 4.10 | [`2dcab5984841`](https://git.kernel.org/torvalds/c/2dcab5984841) | [net] | sctp: avoid BUG_ON on sctp_wait_for_sndbuf | same subject in A37 history (sha) |
| CVE-2017-6074 | PRESENT | 4.10 | [`5edabca9d4cf`](https://git.kernel.org/torvalds/c/5edabca9d4cf) | [net] | dccp: fix freeing skb too early for IPV6_RECVPKTINFO | same subject in A37 history (sha) |
| CVE-2017-6214 | PRESENT | 4.10 | [`ccf7abb93af0`](https://git.kernel.org/torvalds/c/ccf7abb93af0) | [net] | tcp: avoid infinite loop in tcp_splice_read() | same subject in A37 history (sha) |
| CVE-2017-6353 | PRESENT | 4.11 | [`dfcb9f4f99f1`](https://git.kernel.org/torvalds/c/dfcb9f4f99f1) | [net] | sctp: deny peeloff operation on asocs with threads sleeping on it | same subject in A37 history (sha) |
| CVE-2017-6353 | PRESENT | 4.10 | [`2dcab5984841`](https://git.kernel.org/torvalds/c/2dcab5984841) | [net] | sctp: avoid BUG_ON on sctp_wait_for_sndbuf | same subject in A37 history (sha) |
| CVE-2017-6951 | PRESENT | 4.11 | [`c1644fe041eb`](https://git.kernel.org/torvalds/c/c1644fe041eb) | [security] | keys: Change the name of the dead type to ".dead" to prevent user access | same subject in A37 history (sha) |
| CVE-2017-7184 | PRESENT | 4.11 | [`f843ee6dd019`](https://git.kernel.org/torvalds/c/f843ee6dd019) | [net] | xfrm_user: validate XFRM_MSG_NEWAE incoming ESN size harder | same subject in A37 history (sha) |
| CVE-2017-7184 | PRESENT | 4.11 | [`677e806da4d9`](https://git.kernel.org/torvalds/c/677e806da4d9) | [net] | xfrm_user: validate XFRM_MSG_NEWAE XFRMA_REPLAY_ESN_VAL replay_window | same subject in A37 history (sha) |
| CVE-2017-7187 | PRESENT | 4.11 | [`bf33f87dd04c`](https://git.kernel.org/torvalds/c/bf33f87dd04c) | [scsi] | sg: check length passed to SG_NEXT_CMD_LEN | same subject in A37 history (sha) |
| CVE-2017-7533 | PRESENT | 4.13 | [`49d31c2f389a`](https://git.kernel.org/torvalds/c/49d31c2f389a) | [fs] | dentry name snapshots | same subject in A37 history (exact) |
| CVE-2017-7541 | PRESENT | 4.13 | [`8f44c9a41386`](https://git.kernel.org/torvalds/c/8f44c9a41386) | [netdrv] | brcmfmac: fix possible buffer overflow in brcmf_cfg80211_mgmt_tx() | same subject in A37 history (sha) |
| CVE-2017-7645 | PRESENT | 4.11 | [`e6838a29ecb4`](https://git.kernel.org/torvalds/c/e6838a29ecb4) | [fs] | nfsd: check for oversized NFSv2/v3 arguments | same subject in A37 history (sha) |
| CVE-2017-7889 | PRESENT | 4.11 | [`a4866aa81251`](https://git.kernel.org/torvalds/c/a4866aa81251) | [x86] | mm: Tighten x86 /dev/mem with zeroing reads | same subject in A37 history (sha) |
| CVE-2017-9725 | PRESENT | 4.3 | [`67a2e213e7e9`](https://git.kernel.org/torvalds/c/67a2e213e7e9) | [kernel] | mm: cma: fix incorrect type conversion for size during dma allocation | same subject in A37 history (exact) |
| CVE-2017-9725 | PRESENT | 4.6 | [`8b8addf891de`](https://git.kernel.org/torvalds/c/8b8addf891de) | [kernel] | x86/mm/32: Enable full randomization on i386 and X86_32 | same subject in A37 history (sha) |
| CVE-2017-10661 | PRESENT | 4.11 | [`1e38da300e1e`](https://git.kernel.org/torvalds/c/1e38da300e1e) | [fs] | timerfd: Protect the might cancel mechanism proper | same subject in A37 history (sha) |
| CVE-2017-11600 | PRESENT | 4.13 | [`7bab09631c2a`](https://git.kernel.org/torvalds/c/7bab09631c2a) | [net] | xfrm: policy: check policy direction value | same subject in A37 history (sha) |
| CVE-2017-14106 | PRESENT | 4.12 | [`499350a5a6e7`](https://git.kernel.org/torvalds/c/499350a5a6e7) | [net] | tcp: initialize rcv_mss to TCP_MIN_MSS instead of 0 | same subject in A37 history (sha) |
| CVE-2017-14106 | PRESENT | 4.10 | [`06425c308b92`](https://git.kernel.org/torvalds/c/06425c308b92) | [net] | tcp: fix 0 divide in __tcp_select_window() | same subject in A37 history (sha) |
| CVE-2017-18017 | PRESENT | 4.11 | [`2638fd0f92d4`](https://git.kernel.org/torvalds/c/2638fd0f92d4) | [net] | netfilter: xt_TCPMSS: add more sanity tests on tcph->doff | same subject in A37 history (sha) |
| CVE-2017-1000111 | PRESENT | 4.13 | [`c27927e372f0`](https://git.kernel.org/torvalds/c/c27927e372f0) | [net] | packet: fix tp_reserve race in packet_set_ring | same subject in A37 history (sha) |
| CVE-2018-1092 | PRESENT | 4.17 | [`8e4b5eae5dec`](https://git.kernel.org/torvalds/c/8e4b5eae5dec) | [fs] | ext4: fail ext4_iget for root directory if unallocated | same subject in A37 history (sha) |
| CVE-2018-1130 | PRESENT | 4.9 | [`990ff4d84408`](https://git.kernel.org/torvalds/c/990ff4d84408) | [net] | ipv6: dccp: add missing bind_conflict to dccp_ipv6_mapped | same subject in A37 history (sha) |
| CVE-2018-1130 | NA-CONFIG | 4.16 | [`67f93df79aee`](https://git.kernel.org/torvalds/c/67f93df79aee) | [net] | dccp: check sk for closed state in dccp_sendmsg() | CONFIG_IP_DCCP not set in A37 |
| CVE-2018-9568 | PRESENT | 4.14 | [`9d538fa60bad`](https://git.kernel.org/torvalds/c/9d538fa60bad) | [net] | Set sk_prot_creator when cloning sockets to the right proto | same subject in A37 history (sha) |
| CVE-2018-10883 | PRESENT | 4.18 | [`8bc1379b82b8`](https://git.kernel.org/torvalds/c/8bc1379b82b8) | [fs] | ext4: avoid running out of journal credits when appending to an inline file | same subject in A37 history (sha) |
| CVE-2018-10883 | PRESENT | 4.18 | [`e09463f220ca`](https://git.kernel.org/torvalds/c/e09463f220ca) | [fs] | jbd2: don't mark block as modified if the handle is out of credits | same subject in A37 history (sha) |
| CVE-2019-11478 | PRESENT | 5.2 | [`f070ef2ac667`](https://git.kernel.org/torvalds/c/f070ef2ac667) | [net] | tcp: tcp_fragment() should apply sane memory limits | same subject in A37 history (sha) |
| CVE-2019-11479 | PRESENT | 5.2 | [`967c05aee439`](https://git.kernel.org/torvalds/c/967c05aee439) | [net] | tcp: enforce tcp_min_snd_mss in tcp_mtu_probing() | same subject in A37 history (sha) |
| CVE-2019-11479 | PRESENT | 5.2 | [`5f3e2bf008c2`](https://git.kernel.org/torvalds/c/5f3e2bf008c2) | [net] | tcp: add tcp_min_snd_mss sysctl | same subject in A37 history (sha) |
| CVE-2019-11833 | PRESENT | 5.2 | [`592acbf16821`](https://git.kernel.org/torvalds/c/592acbf16821) | [fs] | ext4: zero out the unused memory region in the extent tree block | same subject in A37 history (sha) |
| CVE-2020-14314 | PRESENT | 5.9 | [`5872331b3d91`](https://git.kernel.org/torvalds/c/5872331b3d91) | [fs] | ext4: fix potential negative array index in do_split() | same subject in A37 history (sha) |

## NOT-APPLICABLE

| CVE | Status | First in | Upstream | Tag | Subject | Why |
|---|---|---|---|---|---|---|
| CVE-2010-5313 | NA-ARCH | — | — (RHEL wording, check by hand) | [kvm] | x86: Don't report guest userspace emulation error to userspace | tag [kvm] |
| CVE-2013-2892 | NA-HW | — | — (RHEL wording, check by hand) | [hid] | pantherlord: heap overflow flaw | subject prefix |
| CVE-2013-4579 | NA-HW | — | — (RHEL wording, check by hand) | [wireless] | ath9k: properly set MAC address and BSSID mask | subject prefix |
| CVE-2013-4587 | NA-ARCH | — | — (RHEL wording, check by hand) | [virt] | kvm: Improve create VCPU parameter | tag [virt] |
| CVE-2013-6367 | NA-ARCH | — | — (RHEL wording, check by hand) | [virt] | kvm: Fix potential divide by 0 in lapic | tag [virt] |
| CVE-2013-6368 | NA-ARCH | — | — (RHEL wording, check by hand) | [virt] | kvm: Convert vapic synchronization to _cached functions | tag [virt] |
| CVE-2013-6376 | NA-ARCH | — | — (RHEL wording, check by hand) | [virt] | kvm: fix guest-initiated crash with x2apic | tag [virt] |
| CVE-2014-0049 | NA-ARCH | — | — (RHEL wording, check by hand) | [virt] | kvm/x86: fix emulator buffer overflow | tag [virt] |
| CVE-2014-0055 | NA-ARCH | — | — (RHEL wording, check by hand) | [virt] | vhost/net: validate vhost_get_vq_desc return value | tag [virt] |
| CVE-2014-0077 | NA-ARCH | — | — (RHEL wording, check by hand) | [virt] | vhost/net: fix total length when packets are too short | tag [virt] |
| CVE-2014-0155 | NA-ARCH | — | — (RHEL wording, check by hand) | [virt] | kvm/ioapic: fix assignment of ioapic->rtc_status.pending_eoi | tag [virt] |
| CVE-2014-1438 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | fpu: Clear exceptions in AMD FXSAVE workaround | tag [x86] |
| CVE-2014-2672 | NA-HW | — | — (RHEL wording, check by hand) | [wireless] | ath9k: tid->sched race in ath_tx_aggr_sleep() | subject prefix |
| CVE-2014-2673 | NA-ARCH | — | — (RHEL wording, check by hand) | [powerpc] | tm: Fix crash when forking inside a transaction | tag [powerpc] |
| CVE-2014-2706 | NA-CONFIG | — | — (RHEL wording, check by hand) | [net] | mac80211: fix crash due to AP powersave TX vs. wakeup race | CONFIG_MAC80211 not set in A37 |
| CVE-2014-3182 | NA-HW | — | — (RHEL wording, check by hand) | [hid] | logitech-dj: fix OOB array access | subject prefix |
| CVE-2014-3186 | NA-HW | — | — (RHEL wording, check by hand) | [hid] | picolcd: fix memory corruption via OOB write | subject prefix |
| CVE-2014-3534 | NA-ARCH | — | — (RHEL wording, check by hand) | [s390] | ptrace: correct insufficient sanitization when setting psw mask | tag [s390] |
| CVE-2014-3610 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: Prevent guest from writing non-canonical shared MSR addresses | tag [x86] |
| CVE-2014-3610 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: Check non-canonical addresses upon WRMSR | tag [x86] |
| CVE-2014-3611 | NA-ARCH | — | — (RHEL wording, check by hand) | [virt] | kvm: fix PIT timer race condition | tag [virt] |
| CVE-2014-3646 | NA-ARCH | — | — (RHEL wording, check by hand) | [virt] | kvm/vmx: handle invvpid vm exit gracefully | tag [virt] |
| CVE-2014-3647 | NA-ARCH | — | — (RHEL wording, check by hand) | [kvm] | x86: em_ret_far overrides cpl | tag [kvm] |
| CVE-2014-3647 | NA-ARCH | — | — (RHEL wording, check by hand) | [kvm] | x86: Fix far-jump to non-canonical check | tag [kvm] |
| CVE-2014-3647 | NA-ARCH | — | — (RHEL wording, check by hand) | [kvm] | x86: Handle errors when RIP is set during far jumps | tag [kvm] |
| CVE-2014-3647 | NA-ARCH | — | — (RHEL wording, check by hand) | [kvm] | x86: Emulator fixes for eip canonical checks on near branches | tag [kvm] |
| CVE-2014-3647 | NA-ARCH | — | — (RHEL wording, check by hand) | [kvm] | x86: Fix wrong masking on relative jump/call | tag [kvm] |
| CVE-2014-3647 | NA-ARCH | — | — (RHEL wording, check by hand) | [kvm] | x86: Inter-privilege level ret emulation is not implemeneted | tag [kvm] |
| CVE-2014-3647 | NA-ARCH | — | — (RHEL wording, check by hand) | [kvm] | x86: Loading segments on 64-bit mode may be wrong | tag [kvm] |
| CVE-2014-3647 | NA-ARCH | — | — (RHEL wording, check by hand) | [kvm] | x86: Emulator ignores LDTR/TR extended base on LLDT/LTR | tag [kvm] |
| CVE-2014-3690 | NA-ARCH | — | — (RHEL wording, check by hand) | [virt] | kvm/vmx: invalid host cr4 handling across vm entries | tag [virt] |
| CVE-2014-4014 | NA-CONFIG | — | — (RHEL wording, check by hand) | [fs] | userns: Change inode_capable to capable_wrt_inode_uidgid | CONFIG_USER_NS not set in A37 |
| CVE-2014-4027 | NA-HW | — | — (RHEL wording, check by hand) | [target] | rd: Refactor rd_build_device_space + rd_release_device_space | tag [target] |
| CVE-2014-4699 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | ptrace: force IRET path after a ptrace_stop() | tag [x86] |
| CVE-2014-5471 | NA-CONFIG | — | — (RHEL wording, check by hand) | [fs] | isofs: unbound recursion when processing relocated directories | CONFIG_ISO9660_FS not set in A37 |
| CVE-2014-5472 | NA-CONFIG | — | — (RHEL wording, check by hand) | [fs] | isofs: unbound recursion when processing relocated directories | CONFIG_ISO9660_FS not set in A37 |
| CVE-2014-6416 | NA-CONFIG | — | — (RHEL wording, check by hand) | [net] | ceph: do not hard code max auth ticket len | CONFIG_CEPH_LIB not set in A37 |
| CVE-2014-6416 | NA-CONFIG | — | — (RHEL wording, check by hand) | [net] | ceph: add process_one_ticket() helper | CONFIG_CEPH_LIB not set in A37 |
| CVE-2014-6416 | NA-CONFIG | — | — (RHEL wording, check by hand) | [net] | ceph: gracefully handle large reply messages from the mon | CONFIG_CEPH_LIB not set in A37 |
| CVE-2014-7145 | NA-CONFIG | — | — (RHEL wording, check by hand) | [fs] | cifs: NULL pointer dereference in SMB2_tcon | CONFIG_CIFS not set in A37 |
| CVE-2014-7842 | NA-ARCH | — | — (RHEL wording, check by hand) | [kvm] | x86: Don't report guest userspace emulation error to userspace | tag [kvm] |
| CVE-2014-8159 | NA-HW | — | — (RHEL wording, check by hand) | [infiniband] | core: Prevent integer overflow in ib_umem_get address arithmetic | tag [infiniband] |
| CVE-2014-9322 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | traps: stop using IST for #SS | tag [x86] |
| CVE-2014-9419 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kernel: Load TLS descriptors before switching DS and ES | tag [x86] |
| CVE-2014-9420 | NA-CONFIG | — | — (RHEL wording, check by hand) | [fs] | isofs: infinite loop in CE record entries | CONFIG_ISO9660_FS not set in A37 |
| CVE-2014-9585 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | ASLR bruteforce possible for vdso library | tag [x86] |
| CVE-2015-0239 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: insufficient sysenter emulation when invoked from 16-bit code | tag [x86] |
| CVE-2015-1593 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Linux stack ASLR implementation | tag [x86] |
| CVE-2015-2666 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kernel: execution in the early microcode loader | tag [x86] |
| CVE-2015-2830 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kernel: Remove a bogus 'ret_from_fork' optimization | tag [x86] |
| CVE-2015-4700 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | bpf_jit: fix compilation of large bpf programs | tag [x86] |
| CVE-2015-5157 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | paravirt: Replace the paravirt nop with a bona fide empty function | tag [x86] |
| CVE-2015-5157 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | nmi: Fix a paravirt stack-clobbering bug in the NMI code | tag [x86] |
| CVE-2015-5157 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | nmi: Use DF to avoid userspace RSP confusing nested NMI detection | tag [x86] |
| CVE-2015-5157 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | nmi: Reorder nested NMI checks | tag [x86] |
| CVE-2015-5157 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | nmi: Improve nested NMI comments | tag [x86] |
| CVE-2015-5157 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | nmi: Switch stacks on userspace NMI entry | tag [x86] |
| CVE-2015-5307 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | virt: guest to host DoS by triggering an infinite loop in microcode | tag [x86] |
| CVE-2015-8104 | NA-ARCH | 4.4 | [`cbdb967af3d5`](https://git.kernel.org/torvalds/c/cbdb967af3d5) | [x86] | kvm: svm: unconditionally intercept #DB | tag [x86] |
| CVE-2016-2069 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Improve switch_mm() barrier comments | tag [x86] |
| CVE-2016-2069 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Add barriers and document switch_mm()-vs-flush synchronization | tag [x86] |
| CVE-2016-2143 | NA-ARCH | — | — (RHEL wording, check by hand) | [s390] | mm: four page table levels vs. fork | tag [s390] |
| CVE-2016-3713 | NA-ARCH | 4.7 | [`9842df62004f`](https://git.kernel.org/torvalds/c/9842df62004f) | [x86] | kvm: mtrr: remove MSR 0x2f8 | tag [x86] |
| CVE-2016-4565 | NA-HW | — | — (RHEL wording, check by hand) | [infiniband] | security: Restrict use of the write() interface | tag [infiniband] |
| CVE-2016-5412 | NA-ARCH | — | — (RHEL wording, check by hand) | [powerpc] | kvm: book3s_hv: Save/restore TM state in H_CEDE | tag [powerpc] |
| CVE-2016-5412 | NA-ARCH | — | — (RHEL wording, check by hand) | [powerpc] | kvm: book3s_hv: Pull out TM state save/restore into separate procedures | tag [powerpc] |
| CVE-2016-5828 | NA-ARCH | — | — (RHEL wording, check by hand) | [powerpc] | tm: Always reclaim in start_thread() for exec() class syscalls | tag [powerpc] |
| CVE-2016-8630 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: x86: Check memopp before dereference | tag [x86] |
| CVE-2016-8633 | NA-ARCH | — | — (RHEL wording, check by hand) | [firewire] | net: guard against rx buffer overflows | tag [firewire] |
| CVE-2016-9083 | NA-ARCH | — | — (RHEL wording, check by hand) | [vfio] | pci: Fix integer overflows, bitmask check | tag [vfio] |
| CVE-2016-9084 | NA-ARCH | — | — (RHEL wording, check by hand) | [vfio] | pci: Fix integer overflows, bitmask check | tag [vfio] |
| CVE-2016-9685 | NA-CONFIG | 4.6 | [`2e83b79b2d6c`](https://git.kernel.org/torvalds/c/2e83b79b2d6c) | [fs] | xfs: fix two memory leaks in xfs_attr_list.c error paths | CONFIG_XFS_FS not set in A37 |
| CVE-2017-1000 | NA-ARCH | 4.14 | [`3a8b0677fc61`](https://git.kernel.org/torvalds/c/3a8b0677fc61) | [x86] | kvm: vmx: Do not BUG() on out-of-bounds guest IRQ | tag [x86] |
| CVE-2017-2596 | NA-ARCH | 4.11 | [`06ce521af955`](https://git.kernel.org/torvalds/c/06ce521af955) | [x86] | kvm: fix page struct leak in handle_vmon | tag [x86] |
| CVE-2017-2636 | NA-CONFIG | — | — (RHEL wording, check by hand) | [tty] | n_hdlc: get rid of racy n_hdlc.tbuf | CONFIG_N_HDLC not set in A37 |
| CVE-2017-7518 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: fix singlestepping over syscall | tag [x86] |
| CVE-2017-7558 | NA-CONFIG | 4.13 | [`ee6c88bb754e`](https://git.kernel.org/torvalds/c/ee6c88bb754e) | [net] | sctp: Avoid out-of-bounds reads from address storage | CONFIG_IP_SCTP not set in A37 |
| CVE-2017-8824 | NA-CONFIG | — | — (RHEL wording, check by hand) | [net] | dccp: use-after-free in DCCP code | CONFIG_IP_DCCP not set in A37 |
| CVE-2017-11176 | NA-CONFIG | 4.13 | [`f991af3daaba`](https://git.kernel.org/torvalds/c/f991af3daaba) | [ipc] | mqueue: fix a use-after-free in sys_mq_notify() | CONFIG_POSIX_MQUEUE not set in A37 |
| CVE-2017-12188 | NA-ARCH | 4.14 | [`829ee279aed4`](https://git.kernel.org/torvalds/c/829ee279aed4) | [x86] | kvm: mmu: always terminate page walks at level 1 | tag [x86] |
| CVE-2017-12188 | NA-ARCH | 4.14 | [`fd19d3b45164`](https://git.kernel.org/torvalds/c/fd19d3b45164) | [x86] | kvm: nvmx: update last_nonleaf_level when initializing nested EPT | tag [x86] |
| CVE-2017-17053 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | mm: Fix use-after-free of ldt_struct | tag [x86] |
| CVE-2017-18232 | NA-HW | 4.16 | [`0558f33c06bb`](https://git.kernel.org/torvalds/c/0558f33c06bb) | [scsi] | libsas: direct call probe and destruct | tag [scsi] |
| CVE-2017-1000407 | NA-ARCH | 4.15 | [`d59d51f08801`](https://git.kernel.org/torvalds/c/d59d51f08801) | [x86] | KVM: VMX: remove I/O port 0x80 bypass on Intel hosts | tag [x86] |
| CVE-2018-1087 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: fix icebp instruction handling | tag [x86] |
| CVE-2018-1091 | NA-ARCH | — | — (RHEL wording, check by hand) | [powerpc] | tm: Flush TM only if CPU has TM feature | tag [powerpc] |
| CVE-2018-1118 | NA-ARCH | — | — (RHEL wording, check by hand) | [vhost] | fix info leak due to uninitialized memory | tag [vhost] |
| CVE-2018-3665 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | always enable eager FPU by default on non-AMD processors | tag [x86] |
| CVE-2018-5750 | NA-ARCH | — | — (RHEL wording, check by hand) | [acpi] | sbshc: remove raw pointer from printk() message | tag [acpi] |
| CVE-2018-5803 | NA-CONFIG | 4.16 | [`07f2c7ab6f8d`](https://git.kernel.org/torvalds/c/07f2c7ab6f8d) | [net] | sctp: verify size of a new chunk in _sctp_make_chunk() | CONFIG_IP_SCTP not set in A37 |
| CVE-2018-5848 | NA-HW | 4.16 | [`b5a8ffcae410`](https://git.kernel.org/torvalds/c/b5a8ffcae410) | [netdrv] | wil6210: missing length check in wmi_set_ie | tag [netdrv] |
| CVE-2018-7757 | NA-HW | 4.16 | [`4a491b1ab11c`](https://git.kernel.org/torvalds/c/4a491b1ab11c) | [scsi] | libsas: fix memory leak in sas_smp_get_phy_events() | tag [scsi] |
| CVE-2018-8897 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | entry/64: Don't use IST entry for #BP stack | tag [x86] |
| CVE-2018-10322 | NA-CONFIG | 4.17 | [`b42db0860e13`](https://git.kernel.org/torvalds/c/b42db0860e13) | [fs] | xfs: enhance dinode verifier | CONFIG_XFS_FS not set in A37 |
| CVE-2018-10322 | NA-CONFIG | 4.16 | [`71493b839e29`](https://git.kernel.org/torvalds/c/71493b839e29) | [fs] | xfs: move inode fork verifiers to xfs_dinode_verify | CONFIG_XFS_FS not set in A37 |
| CVE-2018-10675 | NA-CONFIG | — | — (RHEL wording, check by hand) | [mm] | mempolicy: fix use after free when calling get_mempolicy | CONFIG_NUMA not set in A37 |
| CVE-2018-10853 | NA-ARCH | 4.18 | [`3c9fa24ca7c9`](https://git.kernel.org/torvalds/c/3c9fa24ca7c9) | [x86] | kvm: x86: use correct privilege level for sgdt/sidt/fxsave/fxrstor access | tag [x86] |
| CVE-2018-10853 | NA-ARCH | 4.18 | [`ce14e868a54e`](https://git.kernel.org/torvalds/c/ce14e868a54e) | [x86] | kvm: x86: pass kvm_vcpu to kvm_read_guest_virt and kvm_write_guest_virt_system | tag [x86] |
| CVE-2018-10853 | NA-ARCH | 4.18 | [`79367a657439`](https://git.kernel.org/torvalds/c/79367a657439) | [x86] | kvm: x86: introduce linear_{read,write}_system | tag [x86] |
| CVE-2018-10940 | NA-HW | — | — (RHEL wording, check by hand) | [cdrom] | information leak in cdrom_ioctl_media_changed() | tag [cdrom] |
| CVE-2018-13093 | NA-CONFIG | 4.18 | [`afca6c5b2595`](https://git.kernel.org/torvalds/c/afca6c5b2595) | [fs] | xfs: validate cached inodes are free when allocated | CONFIG_XFS_FS not set in A37 |
| CVE-2018-13094 | NA-CONFIG | 4.18 | [`bb3d48dcf86a`](https://git.kernel.org/torvalds/c/bb3d48dcf86a) | [fs] | xfs: don't call xfs_da_shrink_inode with NULL bp | CONFIG_XFS_FS not set in A37 |
| CVE-2018-13095 | NA-CONFIG | 4.19 | [`e55ec4ddbef9`](https://git.kernel.org/torvalds/c/e55ec4ddbef9) | [fs] | xfs: fix error handling in xfs_bmap_extents_to_btree | CONFIG_XFS_FS not set in A37 |
| CVE-2018-13095 | NA-CONFIG | 4.19 | [`01239d77b9dd`](https://git.kernel.org/torvalds/c/01239d77b9dd) | [fs] | xfs: fix a null pointer dereference in xfs_bmap_extents_to_btree | CONFIG_XFS_FS not set in A37 |
| CVE-2018-13095 | NA-CONFIG | 4.17 | [`2c4306f719b0`](https://git.kernel.org/torvalds/c/2c4306f719b0) | [fs] | xfs: set format back to extents if xfs_bmap_extents_to_btree | CONFIG_XFS_FS not set in A37 |
| CVE-2018-14625 | NA-ARCH | — | — (RHEL wording, check by hand) | [vhost] | vsock: fix vhost vsock cid hashing inconsistent | tag [vhost] |
| CVE-2018-14625 | NA-ARCH | — | — (RHEL wording, check by hand) | [vhost] | vsock: fix use-after-free in network stack callers | tag [vhost] |
| CVE-2018-14625 | NA-ARCH | — | — (RHEL wording, check by hand) | [vhost] | vsock: fix uninitialized vhost_vsock->guest_cid | tag [vhost] |
| CVE-2018-14633 | NA-HW | — | — (RHEL wording, check by hand) | [target] | scsi: iscsi: Use bin2hex instead of a re-implementation | tag [target] |
| CVE-2018-14633 | NA-HW | — | — (RHEL wording, check by hand) | [target] | scsi: iscsi: Use hex2bin instead of a re-implementation | tag [target] |
| CVE-2018-15594 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | paravirt: Fix some warning messages | tag [x86] |
| CVE-2018-15594 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | paravirt: Fix spectre-v2 mitigations for paravirt guests | tag [x86] |
| CVE-2018-16658 | NA-HW | — | — (RHEL wording, check by hand) | [cdrom] | Fix info leak/OOB read in cdrom_ioctl_drive_status | tag [cdrom] |
| CVE-2018-20836 | NA-HW | 4.20 | [`b90cd6f2b905`](https://git.kernel.org/torvalds/c/b90cd6f2b905) | [scsi] | scsi: libsas: fix a race condition when smp task timeout | tag [scsi] |
| CVE-2019-0154 | NA-HW | 5.4 | [`1d85a299c4db`](https://git.kernel.org/torvalds/c/1d85a299c4db) | [drm] | drm/i915: Lower RM timeout to avoid DSI hard hangs | tag [drm] |
| CVE-2019-0154 | NA-HW | 5.4 | [`7e34f4e4aad3`](https://git.kernel.org/torvalds/c/7e34f4e4aad3) | [drm] | drm/i915/gen8+: Add RC6 CTX corruption WA | tag [drm] |
| CVE-2019-0155 | NA-HW | 5.4 | [`ea0b163b13ff`](https://git.kernel.org/torvalds/c/ea0b163b13ff) | [drm] | drm/i915/cmdparser: Fix jump whitelist clearing | tag [drm] |
| CVE-2019-0155 | NA-HW | 5.4 | [`926abff21a8f`](https://git.kernel.org/torvalds/c/926abff21a8f) | [drm] | drm/i915/cmdparser: Ignore Length operands during command matching | tag [drm] |
| CVE-2019-0155 | NA-HW | 5.4 | [`f8c08d8faee5`](https://git.kernel.org/torvalds/c/f8c08d8faee5) | [drm] | drm/i915/cmdparser: Add support for backward jumps | tag [drm] |
| CVE-2019-0155 | NA-HW | 5.4 | [`0546a29cd884`](https://git.kernel.org/torvalds/c/0546a29cd884) | [drm] | drm/i915/cmdparser: Use explicit goto for error paths | tag [drm] |
| CVE-2019-0155 | NA-HW | 5.4 | [`0f2f39758341`](https://git.kernel.org/torvalds/c/0f2f39758341) | [drm] | drm/i915: Add gen9 BCS cmdparsing | tag [drm] |
| CVE-2019-0155 | NA-HW | 5.4 | [`435e8fc059db`](https://git.kernel.org/torvalds/c/435e8fc059db) | [drm] | drm/i915: Allow parsing of unsized batches | tag [drm] |
| CVE-2019-0155 | NA-HW | 5.4 | [`4f7af1948abc`](https://git.kernel.org/torvalds/c/4f7af1948abc) | [drm] | drm/i915: Support ro ppgtt mapped cmdparser shadow buffers | tag [drm] |
| CVE-2019-0155 | NA-HW | 5.4 | [`311a50e76a33`](https://git.kernel.org/torvalds/c/311a50e76a33) | [drm] | drm/i915: Add support for mandatory cmdparsing | tag [drm] |
| CVE-2019-0155 | NA-HW | 5.4 | [`66d8aba1cd6d`](https://git.kernel.org/torvalds/c/66d8aba1cd6d) | [drm] | drm/i915: Remove Master tables from cmdparser | tag [drm] |
| CVE-2019-0155 | NA-HW | 5.4 | [`44157641d448`](https://git.kernel.org/torvalds/c/44157641d448) | [drm] | drm/i915: Disable Secure Batches for gen6+ | tag [drm] |
| CVE-2019-0155 | NA-HW | 5.4 | [`0a2f661b6c21`](https://git.kernel.org/torvalds/c/0a2f661b6c21) | [drm] | drm/i915: Rename gen7 cmdparser tables | tag [drm] |
| CVE-2019-1125 | NA-ARCH | 5.3 | [`a2059825986a`](https://git.kernel.org/torvalds/c/a2059825986a) | [x86] | x86/speculation: Enable Spectre v1 swapgs mitigations | tag [x86] |
| CVE-2019-1125 | NA-ARCH | 5.3 | [`18ec54fdd6d1`](https://git.kernel.org/torvalds/c/18ec54fdd6d1) | [x86] | x86/speculation: Prepare entry code for Spectre v1 swapgs mitigations | tag [x86] |
| CVE-2019-1125 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | x86/feature: Relocate X86_FEATURE_INVPCID_SINGLE | tag [x86] |
| CVE-2019-3882 | NA-ARCH | — | — (RHEL wording, check by hand) | [vfio] | type1: Limit DMA mappings per container | tag [vfio] |
| CVE-2019-3900 | NA-ARCH | — | — (RHEL wording, check by hand) | [vhost] | vsock: add weight support | tag [vhost] |
| CVE-2019-3900 | NA-ARCH | 5.2 | [`e2412c07f8f3`](https://git.kernel.org/torvalds/c/e2412c07f8f3) | [vhost] | vhost_net: fix possible infinite loop | tag [vhost] |
| CVE-2019-3900 | NA-ARCH | — | — (RHEL wording, check by hand) | [vhost] | introduce vhost_exceeds_weight() | tag [vhost] |
| CVE-2019-3900 | NA-ARCH | 4.19 | [`272f35cba53d`](https://git.kernel.org/torvalds/c/272f35cba53d) | [vhost] | vhost_net: introduce vhost_exceeds_weight() | tag [vhost] |
| CVE-2019-3900 | NA-ARCH | 4.18 | [`db688c24eada`](https://git.kernel.org/torvalds/c/db688c24eada) | [vhost] | vhost_net: use packet weight for rx handler, too | tag [vhost] |
| CVE-2019-3900 | NA-ARCH | 4.17 | [`a2ac99905f1e`](https://git.kernel.org/torvalds/c/a2ac99905f1e) | [vhost] | vhost-net: set packet weight of tx polling to 2 * vq size | tag [vhost] |
| CVE-2019-6974 | NA-ARCH | — | — (RHEL wording, check by hand) | [kvm] | kvm: fix kvm_ioctl_create_device() reference counting | tag [kvm] |
| CVE-2019-7221 | NA-ARCH | — | — (RHEL wording, check by hand) | [kvm] | KVM: nVMX: unconditionally cancel preemption timer in free_nested | tag [kvm] |
| CVE-2019-7222 | NA-ARCH | 5.3 | [`541ab2aeb282`](https://git.kernel.org/torvalds/c/541ab2aeb282) | [kvm] | KVM: x86: work around leak of uninitialized stack contents | tag [kvm] |
| CVE-2019-9500 | NA-HW | 5.1 | [`1b5e2423164b`](https://git.kernel.org/torvalds/c/1b5e2423164b) | [netdrv] | brcmfmac: assure SSID length from firmware is limited | tag [netdrv] |
| CVE-2019-9503 | NA-HW | 5.1 | [`a4176ec356c7`](https://git.kernel.org/torvalds/c/a4176ec356c7) | [netdrv] | brcmfmac: add subtype check for event handling in data path | tag [netdrv] |
| CVE-2019-10126 | NA-HW | 5.2 | [`69ae4f6aac15`](https://git.kernel.org/torvalds/c/69ae4f6aac15) | [wireless] | mwifiex: Fix heap overflow in mwifiex_uap_parse_tail_ies() | subject prefix |
| CVE-2019-10126 | NA-HW | 5.0 | [`63fdc952df36`](https://git.kernel.org/torvalds/c/63fdc952df36) | [wireless] | mwifiex: Mark expected switch fall-through | subject prefix |
| CVE-2019-10126 | NA-HW | 4.19 | [`bfc83ea196ad`](https://git.kernel.org/torvalds/c/bfc83ea196ad) | [wireless] | mwifiex: Fix skipped vendor specific IEs | subject prefix |
| CVE-2019-10126 | NA-HW | 5.3 | [`df612421fe25`](https://git.kernel.org/torvalds/c/df612421fe25) | [wireless] | mwifiex: fix 802.11n/WPA detection | subject prefix |
| CVE-2019-10126 | NA-HW | 5.3 | [`63d7ef36103d`](https://git.kernel.org/torvalds/c/63d7ef36103d) | [wireless] | mwifiex: Don't abort on small, spec-compliant vendor IEs | subject prefix |
| CVE-2019-10126 | NA-HW | 5.2 | [`685c9b7750bf`](https://git.kernel.org/torvalds/c/685c9b7750bf) | [wireless] | mwifiex: Abort at too short BSS descriptor element | subject prefix |
| CVE-2019-10126 | NA-HW | 5.2 | [`13ec7f10b87f`](https://git.kernel.org/torvalds/c/13ec7f10b87f) | [wireless] | mwifiex: Fix possible buffer overflows at parsing bss descriptor | subject prefix |
| CVE-2019-10207 | NA-HW | 5.3 | [`b36a1552d731`](https://git.kernel.org/torvalds/c/b36a1552d731) | [bluetooth] | Bluetooth: hci_uart: check for missing tty operations | subject prefix |
| CVE-2019-11135 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | x86/speculation: Remove unneeded STIBP code | tag [x86] |
| CVE-2019-11135 | NA-ARCH | 5.5 | [`cd5a2aa89e84`](https://git.kernel.org/torvalds/c/cd5a2aa89e84) | [x86] | x86/speculation: Fix redundant MDS mitigation message | tag [x86] |
| CVE-2019-11135 | NA-ARCH | 5.4 | [`012206a822a8`](https://git.kernel.org/torvalds/c/012206a822a8) | [x86] | x86/speculation/taa: Fix printing of TAA_MSG_SMT on IBRS_ALL CPUs | tag [x86] |
| CVE-2019-11135 | NA-ARCH | 5.4 | [`db616173d787`](https://git.kernel.org/torvalds/c/db616173d787) | [x86] | x86/tsx: Add config options to set tsx=on\|off\|auto | tag [x86] |
| CVE-2019-11135 | NA-ARCH | 5.4 | [`7531a3596e32`](https://git.kernel.org/torvalds/c/7531a3596e32) | [x86] | x86/tsx: Add "auto" option to the tsx= cmdline parameter | tag [x86] |
| CVE-2019-11135 | NA-ARCH | 5.4 | [`6608b45ac5ec`](https://git.kernel.org/torvalds/c/6608b45ac5ec) | [base] | x86/speculation/taa: Add sysfs reporting for TSX Async Abort | subject prefix |
| CVE-2019-11135 | NA-ARCH | 5.4 | [`1b42f017415b`](https://git.kernel.org/torvalds/c/1b42f017415b) | [x86] | x86/speculation/taa: Add mitigation for TSX Async Abort | tag [x86] |
| CVE-2019-11135 | NA-ARCH | 5.4 | [`95c5824f75f3`](https://git.kernel.org/torvalds/c/95c5824f75f3) | [x86] | x86/cpu: Add a "tsx=" cmdline option with TSX disabled by default | tag [x86] |
| CVE-2019-11135 | NA-ARCH | 5.4 | [`286836a70433`](https://git.kernel.org/torvalds/c/286836a70433) | [x86] | x86/cpu: Add a helper function x86_read_arch_cap_msr() | tag [x86] |
| CVE-2019-11135 | NA-ARCH | 5.4 | [`c2955f270a84`](https://git.kernel.org/torvalds/c/c2955f270a84) | [x86] | x86/msr: Add the IA32_TSX_CTRL MSR | tag [x86] |
| CVE-2019-11135 | NA-TOOLS | 5.5 | [`64870ed1b12e`](https://git.kernel.org/torvalds/c/64870ed1b12e) | [documentation] | x86/speculation: Fix incorrect MDS/TAA mitigation status | tag [documentation] |
| CVE-2019-11135 | NA-TOOLS | 5.4 | [`a7a248c593e4`](https://git.kernel.org/torvalds/c/a7a248c593e4) | [documentation] | x86/speculation/taa: Add documentation for TSX Async Abort | tag [documentation] |
| CVE-2019-11810 | NA-HW | 5.1 | [`bcf3b67d16a4`](https://git.kernel.org/torvalds/c/bcf3b67d16a4) | [scsi] | scsi: megaraid_sas: return error when create DMA pool failed | tag [scsi] |
| CVE-2019-11811 | NA-HW | 5.1 | [`401e7e88d4ef`](https://git.kernel.org/torvalds/c/401e7e88d4ef) | [char] | ipmi_si: fix use-after-free of resource->name | subject prefix |
| CVE-2019-12382 | NA-HW | 5.3 | [`9f1f1a2dab38`](https://git.kernel.org/torvalds/c/9f1f1a2dab38) | [drm] | drm/edid: Fix a missing-check bug in drm_load_edid_firmware() | tag [drm] |
| CVE-2019-12614 | NA-ARCH | 5.3 | [`efa9ace68e48`](https://git.kernel.org/torvalds/c/efa9ace68e48) | [powerpc] | powerpc/pseries/dlpar: Fix a missing check in dlpar_parse_cc_property() | tag [powerpc] |
| CVE-2019-13233 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | insn-eval: Fix use-after-free access to LDT entry | tag [x86] |
| CVE-2019-14821 | NA-ARCH | 5.4 | [`b60fe990c6b0`](https://git.kernel.org/torvalds/c/b60fe990c6b0) | [virt] | KVM: coalesced_mmio: add bounds checking | tag [virt] |
| CVE-2019-14835 | NA-ARCH | 5.3 | [`060423bfdee3`](https://git.kernel.org/torvalds/c/060423bfdee3) | [vhost] | vhost: make sure log_num < in_num | tag [vhost] |
| CVE-2019-14901 | NA-HW | 5.5 | [`1e58252e334d`](https://git.kernel.org/torvalds/c/1e58252e334d) | [wireless] | mwifiex: Fix heap overflow in mmwifiex_process_tdls_action_frame() | subject prefix |
| CVE-2019-15217 | NA-HW | 5.3 | [`5d2e73a5f80a`](https://git.kernel.org/torvalds/c/5d2e73a5f80a) | [media] | media: usb:zr364xx:Fix KASAN:null-ptr-deref Read in zr364xx_vidioc_querycap | subject prefix |
| CVE-2019-15807 | NA-HW | 5.2 | [`3b0541791453`](https://git.kernel.org/torvalds/c/3b0541791453) | [scsi] | scsi: libsas: delete sas port if expander discover failed | tag [scsi] |
| CVE-2019-16231 | NA-HW | 5.4 | [`85ac30fa2e24`](https://git.kernel.org/torvalds/c/85ac30fa2e24) | [netdrv] | fjes: Handle workqueue allocation failure | tag [netdrv] |
| CVE-2019-16233 | NA-HW | 5.4 | [`35a79a635179`](https://git.kernel.org/torvalds/c/35a79a635179) | [scsi] | scsi: qla2xxx: fix a potential NULL pointer dereference | tag [scsi] |
| CVE-2019-17053 | NA-CONFIG | 5.4 | [`e69dbd4619e7`](https://git.kernel.org/torvalds/c/e69dbd4619e7) | [net] | ieee802154: enforce CAP_NET_RAW for raw sockets | CONFIG_IEEE802154 not set in A37 |
| CVE-2019-17055 | NA-ARCH | 5.4 | [`b91ee4aa2a21`](https://git.kernel.org/torvalds/c/b91ee4aa2a21) | [isdn] | mISDN: enforce CAP_NET_RAW for raw sockets | tag [isdn] |
| CVE-2019-17666 | NA-HW | 5.4 | [`8c55dedb795b`](https://git.kernel.org/torvalds/c/8c55dedb795b) | [wireless] | rtlwifi: Fix potential overflow on P2P code | subject prefix |
| CVE-2019-19046 | NA-ARCH | 5.5 | [`4aa7afb0ee20`](https://git.kernel.org/torvalds/c/4aa7afb0ee20) | [char] | ipmi: Fix memory leak in __ipmi_bmc_register | subject prefix |
| CVE-2019-19058 | NA-HW | 5.4 | [`b4b814fec1a5`](https://git.kernel.org/torvalds/c/b4b814fec1a5) | [wireless] | iwlwifi: dbg_ini: fix memory leak in alloc_sgtable | subject prefix |
| CVE-2019-19059 | NA-HW | 5.4 | [`0f4f199443fa`](https://git.kernel.org/torvalds/c/0f4f199443fa) | [wireless] | iwlwifi: pcie: fix memory leaks in iwl_pcie_ctxt_info_gen3_init | subject prefix |
| CVE-2019-19063 | NA-HW | 5.5 | [`3f9361695113`](https://git.kernel.org/torvalds/c/3f9361695113) | [wireless] | rtlwifi: prevent memory leak in rtl_usb_probe | subject prefix |
| CVE-2019-19332 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | kvm: OOB memory write via kvm_dev_ioctl_get_cpuid (CVE-2019-19332) | tag [x86] |
| CVE-2019-19338 | NA-ARCH | 5.5 | [`c11f83e0626b`](https://git.kernel.org/torvalds/c/c11f83e0626b) | [x86] | kvm: vmx: implement MSR_IA32_TSX_CTRL disable RTM functionality | tag [x86] |
| CVE-2019-19338 | NA-ARCH | 5.0 | [`b2869f28e147`](https://git.kernel.org/torvalds/c/b2869f28e147) | [x86] | kvm: x86: Mark expected switch fall-throughs | tag [x86] |
| CVE-2019-19338 | NA-ARCH | 5.5 | [`edef5c36b0c7`](https://git.kernel.org/torvalds/c/edef5c36b0c7) | [x86] | kvm: x86: implement MSR_IA32_TSX_CTRL effect on CPUID | tag [x86] |
| CVE-2019-19338 | NA-ARCH | 5.5 | [`de1fca5d6e01`](https://git.kernel.org/torvalds/c/de1fca5d6e01) | [x86] | kvm: x86: do not modify masked bits of shared MSRs | tag [x86] |
| CVE-2019-19338 | NA-ARCH | 5.5 | [`cbbaa2727aa3`](https://git.kernel.org/torvalds/c/cbbaa2727aa3) | [x86] | kvm: x86: fix presentation of TSX feature in ARCH_CAPABILITIES | tag [x86] |
| CVE-2019-19338 | NA-ARCH | 5.4 | [`e1d38b63acd8`](https://git.kernel.org/torvalds/c/e1d38b63acd8) | [x86] | kvm/x86: Export MDS_NO=0 to guests when TSX is enabled | tag [x86] |
| CVE-2019-19527 | NA-HW | 5.3 | [`6d4472d7bec3`](https://git.kernel.org/torvalds/c/6d4472d7bec3) | [hid] | HID: hiddev: do cleanup in failure of opening a device | subject prefix |
| CVE-2019-19527 | NA-HW | 5.3 | [`9c09b214f30e`](https://git.kernel.org/torvalds/c/9c09b214f30e) | [hid] | HID: hiddev: avoid opening a disconnected device | subject prefix |
| CVE-2019-19534 | NA-HW | 5.4 | [`f7a1337f0d29`](https://git.kernel.org/torvalds/c/f7a1337f0d29) | [netdrv] | can: peak_usb: fix slab info leak | tag [netdrv] |
| CVE-2019-20095 | NA-HW | 5.2 | [`003b686ace82`](https://git.kernel.org/torvalds/c/003b686ace82) | [wireless] | mwifiex: Fix mem leak in mwifiex_tm_cmd | subject prefix |
| CVE-2020-0543 | NA-ARCH | — | — (RHEL wording, check by hand) | [x86] | x86/speculation: Support old struct x86_cpu_id & x86_match_cpu() kABI | tag [x86] |
| CVE-2020-0543 | NA-ARCH | 5.8 | [`7e5b3c267d25`](https://git.kernel.org/torvalds/c/7e5b3c267d25) | [x86] | x86/speculation: Add Special Register Buffer Data Sampling (SRBDS) mitigation | tag [x86] |
| CVE-2020-0543 | NA-ARCH | 5.8 | [`93920f61c2ad`](https://git.kernel.org/torvalds/c/93920f61c2ad) | [x86] | x86/cpu: Add 'table' argument to cpu_matches() | tag [x86] |
| CVE-2020-0543 | NA-ARCH | 5.8 | [`e9d7144597b1`](https://git.kernel.org/torvalds/c/e9d7144597b1) | [x86] | x86/cpu: Add a steppings field to struct x86_cpu_id | tag [x86] |
| CVE-2020-0543 | NA-ARCH | 5.7 | [`f6d502fcfc51`](https://git.kernel.org/torvalds/c/f6d502fcfc51) | [x86] | x86/cpu/bugs: Convert to new matching macros | tag [x86] |
| CVE-2020-0543 | NA-ARCH | 5.7 | [`20d437447c00`](https://git.kernel.org/torvalds/c/20d437447c00) | [x86] | x86/cpu: Add consistent CPU match macros | tag [x86] |
| CVE-2020-0543 | NA-ARCH | 5.7 | [`ba5bade4cc0d`](https://git.kernel.org/torvalds/c/ba5bade4cc0d) | [cpufreq] | x86/devicetable: Move x86 specific macro out of generic code | tag [cpufreq] |
| CVE-2020-0543 | NA-ARCH | 5.1 | [`266d63a7d9d4`](https://git.kernel.org/torvalds/c/266d63a7d9d4) | [x86] | x86/cpufeature: Fix various quality problems in the <asm/cpu_device_hd.h> header | tag [x86] |
| CVE-2020-0543 | NA-TOOLS | 5.8 | [`3798cc4d106e`](https://git.kernel.org/torvalds/c/3798cc4d106e) | [documentation] | x86/speculation: Add Ivy Bridge to affected list | tag [documentation] |
| CVE-2020-0543 | NA-TOOLS | 5.8 | [`7222a1b5b874`](https://git.kernel.org/torvalds/c/7222a1b5b874) | [documentation] | x86/speculation: Add SRBDS vulnerability and mitigation documentation | tag [documentation] |
| CVE-2020-2732 | NA-ARCH | 5.6 | [`342993f96ab2`](https://git.kernel.org/torvalds/c/342993f96ab2) | [x86] | kvm: x86: clear stale x86_emulate_ctxt->intercept value | tag [x86] |
| CVE-2020-2732 | NA-ARCH | 5.6 | [`86f7e90ce840`](https://git.kernel.org/torvalds/c/86f7e90ce840) | [x86] | kvm: vmx: check descriptor table exits on instruction emulation | tag [x86] |
| CVE-2020-2732 | NA-ARCH | 5.6 | [`35a571346a94`](https://git.kernel.org/torvalds/c/35a571346a94) | [x86] | kvm: nvmx: Check IO instruction VM-exit conditions | tag [x86] |
| CVE-2020-2732 | NA-ARCH | 5.6 | [`e71237d3ff1a`](https://git.kernel.org/torvalds/c/e71237d3ff1a) | [x86] | kvm: nvmx: Refactor IO bitmap checks into helper function | tag [x86] |
| CVE-2020-2732 | NA-ARCH | 5.6 | [`07721feee46b`](https://git.kernel.org/torvalds/c/07721feee46b) | [x86] | kvm: nvmx: Don't emulate instructions in guest mode | tag [x86] |
| CVE-2020-7053 | NA-HW | — | — (RHEL wording, check by hand) | [gpu] | drm/i915: Fix use-after-free when destroying GEM context | tag [gpu] |
| CVE-2020-8647 | NA-HW | 5.6 | [`513dc792d606`](https://git.kernel.org/torvalds/c/513dc792d606) | [video] | vgacon: Fix a UAF in vgacon_invert_region | tag [video] |
| CVE-2020-8649 | NA-HW | 5.6 | [`513dc792d606`](https://git.kernel.org/torvalds/c/513dc792d606) | [video] | vgacon: Fix a UAF in vgacon_invert_region | tag [video] |
| CVE-2020-10711 | NA-CONFIG | 5.7 | [`eead1c2ea250`](https://git.kernel.org/torvalds/c/eead1c2ea250) | [net] | netlabel: cope with NULL catmap | CONFIG_NETLABEL not set in A37 |
| CVE-2020-10942 | NA-ARCH | 5.6 | [`42d84c8490f9`](https://git.kernel.org/torvalds/c/42d84c8490f9) | [vhost] | vhost: Check docket sk_family instead of call getname | tag [vhost] |
| CVE-2020-11668 | NA-HW | 5.7 | [`a246b4d54770`](https://git.kernel.org/torvalds/c/a246b4d54770) | [] | media: xirlink_cit: add missing descriptor sanity checks | subject prefix |
| CVE-2020-12362 | NA-HW | — | — (RHEL wording, check by hand) | [] | drm/i915: warn on guc enable about CVE | subject prefix |
| CVE-2020-12653 | NA-HW | 5.6 | [`b70261a288ea`](https://git.kernel.org/torvalds/c/b70261a288ea) | [wireless] | mwifiex: Fix possible buffer overflows in mwifiex_cmd_append_vsie_tlv() | subject prefix |
| CVE-2020-12654 | NA-HW | 5.6 | [`3a9b153c5591`](https://git.kernel.org/torvalds/c/3a9b153c5591) | [wireless] | mwifiex: Fix possible buffer overflows in mwifiex_ret_wmm_get_status() | subject prefix |
| CVE-2020-12770 | NA-HW | 5.7 | [`83c6f2390040`](https://git.kernel.org/torvalds/c/83c6f2390040) | [scsi] | scsi: sg: add sg_remove_request in sg_write | tag [scsi] |
| CVE-2020-12888 | NA-ARCH | 5.8 | [`ebfa440ce38b`](https://git.kernel.org/torvalds/c/ebfa440ce38b) | [vfio] | vfio/pci: Fix SR-IOV VF handling with MMIO blocking | tag [vfio] |
| CVE-2020-12888 | NA-ARCH | 5.8 | [`abafbc551fdd`](https://git.kernel.org/torvalds/c/abafbc551fdd) | [vfio] | vfio-pci: Invalidate mmaps and block MMIO access on disabled memory | tag [vfio] |
| CVE-2020-12888 | NA-ARCH | 5.8 | [`11c4cd07ba11`](https://git.kernel.org/torvalds/c/11c4cd07ba11) | [vfio] | vfio-pci: Fault mmaps to enable vma tracking | tag [vfio] |
| CVE-2020-12888 | NA-ARCH | 5.8 | [`41311242221e`](https://git.kernel.org/torvalds/c/41311242221e) | [vfio] | vfio/type1: Support faulting PFNMAP vmas | tag [vfio] |
| CVE-2020-12888 | NA-ARCH | 5.7 | [`5cbf3264bc71`](https://git.kernel.org/torvalds/c/5cbf3264bc71) | [vfio] | vfio/type1: Fix VA->PA translation for PFNMAP VMAs in vaddr_get_pfn() | tag [vfio] |
| CVE-2020-12888 | NA-ARCH | 5.5 | [`d567fb881916`](https://git.kernel.org/torvalds/c/d567fb881916) | [vfio] | vfio/pci: call irq_bypass_unregister_producer() before freeing irq | tag [vfio] |
| CVE-2020-12888 | NA-ARCH | 5.1 | [`0cfd027be1d6`](https://git.kernel.org/torvalds/c/0cfd027be1d6) | [vfio] | vfio_pci: Enable memory accesses before calling pci_map_rom | tag [vfio] |
| CVE-2020-14331 | NA-HW | 5.9 | [`ebfdfeeae8c0`](https://git.kernel.org/torvalds/c/ebfdfeeae8c0) | [video] | vgacon: Fix for missing check in scrollback handling | tag [video] |
| CVE-2020-14385 | NA-CONFIG | 5.9 | [`f4020438fab0`](https://git.kernel.org/torvalds/c/f4020438fab0) | [fs] | xfs: fix boundary test in xfs_attr_shortform_verify | CONFIG_XFS_FS not set in A37 |
| CVE-2020-24394 | NA-CONFIG | 5.8 | [`22cf8419f131`](https://git.kernel.org/torvalds/c/22cf8419f131) | [fs] | nfsd: apply umask on fs without ACL support | CONFIG_NFSD not set in A37 |
| CVE-2020-25212 | NA-CONFIG | 5.9 | [`b4487b935452`](https://git.kernel.org/torvalds/c/b4487b935452) | [fs] | nfs: Fix getxattr kernel panic and memory overflow | CONFIG_NFS_FS not set in A37 |
| CVE-2020-25643 | NA-HW | 5.9 | [`66d42ed8b25b`](https://git.kernel.org/torvalds/c/66d42ed8b25b) | [netdrv] | hdlc_ppp: add range checks in ppp_cp_parse_cr() | tag [netdrv] |
| CVE-2020-25645 | NA-HW | 5.9 | [`34beb2159451`](https://git.kernel.org/torvalds/c/34beb2159451) | [netdrv] | geneve: add transport ports in route lookup for geneve | tag [netdrv] |
| CVE-2020-28374 | NA-HW | — | — (RHEL wording, check by hand) | [target] | scsi: Fix XCOPY NAA identifier lookup | tag [target] |
| CVE-2020-36385 | NA-HW | 5.10 | [`f5449e74802c`](https://git.kernel.org/torvalds/c/f5449e74802c) | [] | RDMA/ucma: Rework ucma_migrate_id() to avoid races with destroy | subject prefix |
| CVE-2020-36385 | NA-HW | 5.10 | [`98837c6c3d72`](https://git.kernel.org/torvalds/c/98837c6c3d72) | [] | RDMA/ucma: Fix locking for ctx->events_reported | subject prefix |
| CVE-2020-36385 | NA-HW | 5.10 | [`09e328e47a69`](https://git.kernel.org/torvalds/c/09e328e47a69) | [] | RDMA/ucma: Fix the locking of ctx->file | subject prefix |
| CVE-2020-36385 | NA-HW | 5.10 | [`d114c6feedfe`](https://git.kernel.org/torvalds/c/d114c6feedfe) | [] | RDMA/cma: Add missing locking to rdma_accept() | subject prefix |
| CVE-2020-36385 | NA-HW | 5.10 | [`38e03d092699`](https://git.kernel.org/torvalds/c/38e03d092699) | [] | RDMA/ucma: Add missing locking around rdma_leave_multicast() | subject prefix |
| CVE-2020-36385 | NA-HW | 5.7 | [`7c11910783a1`](https://git.kernel.org/torvalds/c/7c11910783a1) | [] | RDMA/ucma: Put a lock around every call to the rdma_cm layer | subject prefix |
| CVE-2021-3653 | NA-ARCH | 5.14 | [`0f923e07124d`](https://git.kernel.org/torvalds/c/0f923e07124d) | [] | KVM: nSVM: avoid picking up unsupported bits from L2 in int_ctl (CVE-2021-3653) | subject prefix |
| CVE-2021-3656 | NA-ARCH | — | — (RHEL wording, check by hand) | [] | KVM: nSVM: always intercept VMLOAD/VMSAVE when nested(CVE-2021-3656) | subject prefix |
| CVE-2021-4028 | NA-HW | 5.15 | [`bc0bdc5afaa7`](https://git.kernel.org/torvalds/c/bc0bdc5afaa7) | [] | RDMA/cma: Do not change route.addr.src_addr.ss_family | subject prefix |
| CVE-2021-4155 | NA-CONFIG | 5.16 | [`983d8e60f508`](https://git.kernel.org/torvalds/c/983d8e60f508) | [] | xfs: map unwritten blocks in XFS_IOC_{ALLOC,FREE}SP just like fallocate | CONFIG_XFS_FS not set in A37 |
| CVE-2021-26401 | NA-ARCH | 5.17 | [`244d00b5dd47`](https://git.kernel.org/torvalds/c/244d00b5dd47) | [] | x86/speculation: Use generic retpoline by default on AMD | subject prefix |
| CVE-2021-27363 | NA-HW | 5.12 | [`ec98ea7070e9`](https://git.kernel.org/torvalds/c/ec98ea7070e9) | [] | scsi: iscsi: Ensure sysfs attributes are limited to PAGE_SIZE | subject prefix |
| CVE-2021-27364 | NA-HW | 5.12 | [`688e8128b7a9`](https://git.kernel.org/torvalds/c/688e8128b7a9) | [] | scsi: iscsi: Restrict sessions and handles to admin capabilities | subject prefix |
| CVE-2021-27365 | NA-HW | 5.12 | [`f9dbdf97a5bd`](https://git.kernel.org/torvalds/c/f9dbdf97a5bd) | [] | scsi: iscsi: Verify lengths on passthrough PDUs | subject prefix |
| CVE-2021-37576 | NA-ARCH | 5.14 | [`f62f3c20647e`](https://git.kernel.org/torvalds/c/f62f3c20647e) | [] | KVM: PPC: Book3S: Fix H_RTAS rets buffer overflow | subject prefix |
| CVE-2021-42739 | NA-HW | 5.16 | [`35d2969ea3c7`](https://git.kernel.org/torvalds/c/35d2969ea3c7) | [] | media: firewire: firedtv-avc: fix a buffer overflow in avc_ca_pmt() | subject prefix |
| CVE-2022-0330 | NA-HW | 5.17 | [`7938d61591d3`](https://git.kernel.org/torvalds/c/7938d61591d3) | [] | drm/i915: Flush TLBs before releasing backing store | subject prefix |
| CVE-2022-2588 | NA-CONFIG | 6.0 | [`9ad36309e271`](https://git.kernel.org/torvalds/c/9ad36309e271) | [] | net_sched: cls_route: remove from list when handle is 0 | CONFIG_NET_CLS_ROUTE not in A37 (driver not built) |
| CVE-2022-2639 | NA-CONFIG | 5.18 | [`cefa91b2332d`](https://git.kernel.org/torvalds/c/cefa91b2332d) | [] | openvswitch: fix OOB access in reserve_sfa_size() | CONFIG_OPENVSWITCH not set in A37 |
| CVE-2022-2639 | NA-CONFIG | 5.1 | [`f28cd2af22a0`](https://git.kernel.org/torvalds/c/f28cd2af22a0) | [] | openvswitch: fix flow actions reallocation | CONFIG_OPENVSWITCH not set in A37 |
| CVE-2022-22942 | NA-HW | 5.17 | [`a0f90c881570`](https://git.kernel.org/torvalds/c/a0f90c881570) | [] | drm/vmwgfx: Fix stale file descriptors on failed usercopy | subject prefix |
| CVE-2022-26373 | NA-ARCH | 6.0 | [`ba6e31af2be9`](https://git.kernel.org/torvalds/c/ba6e31af2be9) | [] | x86/speculation: Add LFENCE to RSB fill sequence | subject prefix |
| CVE-2023-3611 | NA-CONFIG | 6.5 | [`3e337087c3b5`](https://git.kernel.org/torvalds/c/3e337087c3b5) | [] | net/sched: sch_qfq: account for stab overhead in qfq_enqueue | CONFIG_NET_SCH_QFQ not set in A37 |
| CVE-2023-4623 | NA-CONFIG | 6.6 | [`a13b67c9a015`](https://git.kernel.org/torvalds/c/a13b67c9a015) | [] | net/sched: sch_hfsc: upgrade 'rt' to 'sc' when it becomes a inner curve | CONFIG_NET_SCH_HFSC not set in A37 |
| CVE-2023-4623 | NA-CONFIG | 6.6 | [`b3d26c5702c7`](https://git.kernel.org/torvalds/c/b3d26c5702c7) | [] | net/sched: sch_hfsc: Ensure inner classes have fsc curve | CONFIG_NET_SCH_HFSC not set in A37 |
| CVE-2023-4921 | NA-CONFIG | 6.6 | [`8fc134fee27f`](https://git.kernel.org/torvalds/c/8fc134fee27f) | [] | net: sched: sch_qfq: Fix UAF in qfq_dequeue() | CONFIG_NET_SCH_QFQ not set in A37 |
| CVE-2023-20593 | NA-ARCH | 6.5 | [`522b1d69219d`](https://git.kernel.org/torvalds/c/522b1d69219d) | [] | x86/cpu/amd: Add a Zenbleed fix | subject prefix |
| CVE-2023-20593 | NA-ARCH | 6.5 | [`8b6f687743da`](https://git.kernel.org/torvalds/c/8b6f687743da) | [] | x86/cpu/amd: Move the errata checking functionality up | subject prefix |
| CVE-2023-20593 | NA-ARCH | 6.1 | [`2632daebafd0`](https://git.kernel.org/torvalds/c/2632daebafd0) | [] | x86/cpu: Restore AMD's DE_CFG MSR after resume | subject prefix |
| CVE-2023-25775 | NA-HW | — | — (RHEL wording, check by hand) | [] | RDMA/i40iw: Prevent zero-length STAG registration | subject prefix |
| CVE-2023-42753 | NA-CONFIG | 6.6 | [`050d91c03b28`](https://git.kernel.org/torvalds/c/050d91c03b28) | [] | netfilter: ipset: add the missing IP_SET_HASH_WITH_NET0 macro for ip_set_hash_netportnet.c | CONFIG_IP_SET not set in A37 |
| CVE-2023-45871 | NA-HW | 6.6 | [`bb5ed01cd242`](https://git.kernel.org/torvalds/c/bb5ed01cd242) | [] | igb: set max size RX buffer when store bad packet is enabled | subject prefix |

