# CentOS 7 kernel backports vs the A37 kernel: counts

93619 changelog entries (133 of them are RHEL reverts).

| Status | Entries |
|---|---|
| PRESENT | 2420 |
| CANDIDATE | 17814 |
| FEATURE-MISSING | 1968 |
| REVIEW | 705 |
| NA-CONFIG | 14043 |
| NA-HW | 35193 |
| NA-ARCH | 14597 |
| NA-TOOLS | 6746 |

## Per area

| Area | PRESENT | CANDIDATE | FEATURE-MISSING | REVIEW | NA-CONFIG | NA-HW | NA-ARCH | NA-TOOLS |
|---|---|---|---|---|---|---|---|---|
| Filesystem & VFS | 471 | 2053 | 532 | 1 | 7566 | 131 | 5 | 2 |
| Memory management | 120 | 973 | 80 | 0 | 340 | 60 | 28 | 0 |
| Networking | 461 | 4876 | 438 | 46 | 2970 | 308 | 5 | 0 |
| Core kernel (sched, cgroup, bpf, audit, perf, time, ...) | 175 | 2924 | 221 | 3 | 236 | 168 | 231 | 176 |
| Block layer, device-mapper, MD, zram | 88 | 800 | 535 | 297 | 1025 | 290 | 25 | 0 |
| Security, keys, crypto | 79 | 899 | 0 | 0 | 9 | 5 | 16 | 1 |
| Drivers used on the A37 (USB, MMC, sound, tty, input, ...) | 546 | 4144 | 0 | 356 | 1763 | 5135 | 466 | 1 |
| lib, include, uapi, everything else | 480 | 1145 | 162 | 2 | 134 | 29096 | 13821 | 6566 |

## Candidates by first mainline release

| Status | 3.11-3.19 | 4.x | 5.x | 6.x | 7.x | unmatched |
|---|---|---|---|---|---|---|
| CANDIDATE | 4497 | 8389 | 525 | 32 | 0 | 4371 |
| FEATURE-MISSING | 548 | 1225 | 38 | 4 | 0 | 153 |
| REVIEW | 80 | 260 | 13 | 0 | 0 | 352 |
