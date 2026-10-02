#!/usr/bin/env python3
"""Turn all-entries.tsv.xz (from centos7-backport-index.py) into browsable Markdown.

Writes, next to the TSV files:
  candidates/<area>.md   every CANDIDATE / FEATURE-MISSING / REVIEW entry, per area
  cves.md                every CVE in the changelog with its A37 status
  features.md            FEATURE-MISSING grouped by feature
  stats.md               counts by status, area, upstream version
"""
import argparse
import collections
import csv
import lzma
import os
import re

AREAS = [
    ('fs', 'Filesystem & VFS', {'fs'}),
    ('mm', 'Memory management', {'mm'}),
    ('net', 'Networking', {'net', 'networking', 'net-next', 'bluetooth', 'wireless'}),
    ('kernel', 'Core kernel (sched, cgroup, bpf, audit, perf, time, ...)',
     {'kernel', 'kenrel', 'sched', 'locking', 'trace', 'tracing', 'perf', 'init', 'core', 'ipc', 'cgroup'}),
    ('block', 'Block layer, device-mapper, MD, zram', {'block', 'blk-mq', 'md', 'dm', 'zram'}),
    ('security', 'Security, keys, crypto', {'security', 'keys', 'crypto', 'testmgr', 'modsign', 'audit'}),
    ('drivers', 'Drivers used on the A37 (USB, MMC, sound, tty, input, ...)',
     {'usb', 'mmc', 'sound', 'alsa', 'audio', 'tty', 'serial', 'vt', 'char', 'input', 'hid', 'i2c', 'gpio',
      'pinctrl', 'media', 'watchdog', 'whatchdog', 'thermal', 'clocksource', 'clk', 'of', 'base', 'misc',
      'dma-buf', 'firmware', 'power', 'fwnode'}),
    ('lib', 'lib, include, uapi, everything else', None),
]
KEEP = ('CANDIDATE', 'FEATURE-MISSING', 'REVIEW')
ORDER = ['PRESENT', 'CANDIDATE', 'FEATURE-MISSING', 'REVIEW', 'NA-CONFIG', 'NA-HW', 'NA-ARCH', 'NA-TOOLS']


def area_of(tag):
    for key, _, tags in AREAS:
        if tags is not None and tag.lower() in tags:
            return key
    return 'lib'


def vkey(v):
    m = re.match(r'(?:post-)?(\d+)\.(\d+)', v or '')
    return (int(m.group(1)), int(m.group(2)), v.startswith('post-')) if m else (99, 99, True)


def esc(s):
    return s.replace('|', '\\|').replace('\n', ' ')


def sha_link(sha):
    return f'[`{sha}`](https://git.kernel.org/torvalds/c/{sha})' if sha else '—'


def table(rows, cols):
    head = '| ' + ' | '.join(c for c, _ in cols) + ' |\n|' + '|'.join('---' for _ in cols) + '|\n'
    return head + ''.join('| ' + ' | '.join(f(r) for _, f in cols) + ' |\n' for r in rows)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--dir', required=True, help='directory holding all-entries.tsv.xz')
    a = ap.parse_args()
    rows = list(csv.DictReader(lzma.open(os.path.join(a.dir, 'all-entries.tsv.xz'), 'rt'), delimiter='\t'))
    for r in rows:
        r['area'] = area_of(r['tag'])
    live = [r for r in rows if r['revert'] != 'True']

    # ---------------- stats
    st = collections.Counter(r['status'] for r in live)
    by_area = collections.defaultdict(collections.Counter)
    for r in live:
        by_area[r['area']][r['status']] += 1
    vb = collections.defaultdict(collections.Counter)
    for r in live:
        if r['status'] in KEEP:
            v = r['upstream_version']
            m = re.match(r'(?:post-)?(\d+)\.(\d+)', v)
            b = 'unmatched' if not m else ('3.11-3.19' if m.group(1) == '3' else f'{m.group(1)}.x')
            vb[r['status']][b] += 1
    with open(os.path.join(a.dir, 'stats.md'), 'w') as f:
        f.write('# CentOS 7 kernel backports vs the A37 kernel: counts\n\n')
        f.write(f'{len(rows)} changelog entries ({len(rows) - len(live)} of them are RHEL reverts).\n\n')
        f.write(table([(s, st[s]) for s in ORDER], [('Status', lambda x: x[0]), ('Entries', lambda x: str(x[1]))]))
        f.write('\n## Per area\n\n')
        f.write(table([(k, t) for k, t, _ in AREAS], [('Area', lambda x: x[1])] +
                      [(s, (lambda s: lambda x: str(by_area[x[0]][s]))(s)) for s in ORDER]))
        f.write('\n## Candidates by first mainline release\n\n')
        buckets = ['3.11-3.19', '4.x', '5.x', '6.x', '7.x', 'unmatched']
        f.write(table(list(KEEP), [('Status', lambda s: s)] +
                      [(b, (lambda b: lambda s: str(vb[s][b]))(b)) for b in buckets]))

    # ---------------- per-area candidate lists
    cdir = os.path.join(a.dir, 'candidates')
    os.makedirs(cdir, exist_ok=True)
    cols = [('Status', lambda r: r['status']), ('First in', lambda r: r['upstream_version'] or '—'),
            ('Upstream', lambda r: sha_link(r['upstream_sha']) + (' (loose)' if r['upstream_match'] == 'loose' else '')),
            ('Tag', lambda r: f"[{r['tag']}]"), ('Subject', lambda r: esc(r['subject'])),
            ('CVE', lambda r: esc(r['cve']) or ''), ('Why relevant', lambda r: esc(r['reason'])),
            ('RHEL', lambda r: r['rhel_release'].replace('.el7', ''))]
    for key, title, _ in AREAS:
        sel = [r for r in live if r['area'] == key and r['status'] in KEEP]
        sel.sort(key=lambda r: (KEEP.index(r['status']), vkey(r['upstream_version']), r['subject'].lower()))
        n = collections.Counter(r['status'] for r in sel)
        with open(os.path.join(cdir, f'{key}.md'), 'w') as f:
            f.write(f'# {title}: backport candidates from CentOS 7\n\n')
            f.write(f'{len(sel)} entries: {n["CANDIDATE"]} CANDIDATE, {n["FEATURE-MISSING"]} FEATURE-MISSING, '
                    f'{n["REVIEW"]} REVIEW. Sorted by status, then by the first mainline release that has the '
                    f'commit. "loose" means the RHEL subject only matched after normalising its prefix; check it '
                    f'before cherry-picking. See ../README.md for the method and its limits.\n\n')
            f.write(table(sel, cols))

    # ---------------- CVEs
    cve = collections.defaultdict(list)
    for r in live:
        for c in re.findall(r'CVE-\d{4}-\d+', r['cve']):
            cve[c].append(r)

    def cve_state(c, rs):
        s = {r['status'] for r in rs}
        miss = s & {'CANDIDATE', 'FEATURE-MISSING', 'REVIEW'}
        named = any(c in r['a37_cve'].split() for r in rs)
        if not miss and 'PRESENT' in s:
            return 'PRESENT'
        if miss and named:
            return 'NAMED-IN-A37'
        if miss and 'PRESENT' in s:
            return 'PARTIAL'
        if miss:
            return 'MISSING-RELEVANT'
        return 'NOT-APPLICABLE'
    groups = collections.defaultdict(list)
    for c, rs in cve.items():
        groups[cve_state(c, rs)].append(c)
    ck = lambda c: tuple(int(x) for x in c[4:].split('-'))
    with open(os.path.join(a.dir, 'cves.md'), 'w') as f:
        f.write('# CVEs fixed in the CentOS 7 kernel, and the A37 kernel\n\n')
        f.write(f'{len(cve)} distinct CVEs.\n\n')
        f.write(table([('MISSING-RELEVANT', 'relevant fix entries, none found in the A37 history'),
                       ('PARTIAL', 'some fix entries found in the A37 history, others not'),
                       ('NAMED-IN-A37', 'entries not matched, but an A37 commit message names this CVE'),
                       ('PRESENT', 'every relevant fix entry found in the A37 history'),
                       ('NOT-APPLICABLE', 'only arch / hardware / disabled-config code')],
                      [('Group', lambda x: x[0]), ('Meaning', lambda x: x[1]),
                       ('CVEs', lambda x: str(len(groups[x[0]])))]))
        f.write('\n')
        f.write('A missing subject does not prove the A37 kernel is vulnerable: LineageOS/CAF may carry the fix '
                'under another subject, or the vulnerable code may predate 3.10 changes. Verify each one in the '
                'code before porting.\n\n')
        for g in ('MISSING-RELEVANT', 'PARTIAL', 'NAMED-IN-A37', 'PRESENT', 'NOT-APPLICABLE'):
            f.write(f'## {g}\n\n')
            rows_ = []
            for c in sorted(groups[g], key=ck):
                for r in sorted(cve[c], key=lambda r: ORDER.index(r['status'])):
                    rows_.append((c, r))
            f.write(table(rows_, [('CVE', lambda x: x[0]), ('Status', lambda x: x[1]['status']),
                                  ('First in', lambda x: x[1]['upstream_version'] or '—'),
                                  ('Upstream', lambda x: sha_link(x[1]['upstream_sha']) +
                                   ('' if x[1]['upstream_sha'] else ' (RHEL wording, check by hand)')),
                                  ('Tag', lambda x: f"[{x[1]['tag']}]"), ('Subject', lambda x: esc(x[1]['subject'])),
                                  ('Why', lambda x: esc(x[1]['reason']))]))
            f.write('\n')

    # ---------------- missing features
    feat = collections.defaultdict(list)
    for r in live:
        if r['status'] == 'FEATURE-MISSING':
            feat[r['reason']].append(r)
    with open(os.path.join(a.dir, 'features.md'), 'w') as f:
        f.write('# Features in the CentOS 7 kernel that the A37 kernel does not have at all\n\n')
        f.write('Grouped by the missing Kconfig symbol or path. Every entry of each group is in '
                'candidates/*.md.\n\n')
        summ = []
        for reason, rs in sorted(feat.items(), key=lambda kv: -len(kv[1])):
            vs = sorted({r['upstream_version'] for r in rs if r['upstream_version']}, key=vkey)
            summ.append((reason, len(rs), vs[0] if vs else '—', vs[-1] if vs else '—',
                         sum(1 for r in rs if r['cve'])))
        f.write(table(summ, [('Missing', lambda x: esc(x[0])), ('Entries', lambda x: str(x[1])),
                             ('Earliest upstream', lambda x: x[2]), ('Latest upstream', lambda x: x[3]),
                             ('With CVE', lambda x: str(x[4]))]))
    print('docs written to', a.dir)


if __name__ == '__main__':
    main()
