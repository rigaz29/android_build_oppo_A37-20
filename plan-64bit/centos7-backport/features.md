# Features in the CentOS 7 kernel that the A37 kernel does not have at all

Grouped by the missing Kconfig symbol or path. Every entry of each group is in candidates/*.md.

| Missing | Entries | Earliest upstream | Latest upstream | With CVE |
|---|---|---|---|---|
| block/blk-mq.c not in A37 tree | 532 | 3.13 | 5.10 | 0 |
| CONFIG_OVERLAY_FS does not exist in A37 tree | 404 | 3.18 | 4.20 | 0 |
| CONFIG_NF_TABLES does not exist in A37 tree | 347 | 3.13 | 6.8 | 6 |
| lib/rhashtable.c not in A37 tree | 148 | 3.17 | 5.1 | 0 |
| CONFIG_USERFAULTFD does not exist in A37 tree | 119 | 4.3 | 5.2 | 12 |
| kernel/sched/deadline.c not in A37 tree | 104 | 3.14 | 5.1 | 0 |
| fs/kernfs not in A37 tree | 98 | 3.14 | 5.0 | 0 |
| CONFIG_LIVEPATCH does not exist in A37 tree | 96 | 4.0 | 5.1 | 0 |
| CONFIG_GENEVE does not exist in A37 tree | 83 | 3.18 | 5.2 | 0 |
| CONFIG_MPLS does not exist in A37 tree | 14 | 3.11 | 4.9 | 0 |
| CONFIG_DM_LOG_WRITES does not exist in A37 tree | 11 | 4.2 | 5.2 | 0 |
| CONFIG_DM_ERA does not exist in A37 tree | 5 | 4.12 | 4.12 | 0 |
| CONFIG_DM_SWITCH does not exist in A37 tree | 5 | 4.4 | 4.4 | 0 |
| CONFIG_PSAMPLE does not exist in A37 tree | 1 | 5.5 | 5.5 | 0 |
| CONFIG_IPVLAN does not exist in A37 tree | 1 | 4.13 | 4.13 | 0 |
