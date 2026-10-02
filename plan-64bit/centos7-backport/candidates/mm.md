# Memory management: backport candidates from CentOS 7

1053 entries: 973 CANDIDATE, 80 FEATURE-MISSING, 0 REVIEW. Sorted by status, then by the first mainline release that has the commit. "loose" means the RHEL subject only matched after normalising its prefix; check it before cherry-picking. See ../README.md for the method and its limits.

| Status | First in | Upstream | Tag | Subject | CVE | Why relevant | RHEL |
|---|---|---|---|---|---|---|---|
| CANDIDATE | 3.11 | [`059285a25f30`](https://git.kernel.org/torvalds/c/059285a25f30) (loose) | [mm] | activate !PageLRU pages on mark_page_accessed if page is on local pagevec |  | generic code, tag [mm] | 3.10.0-82 |
| CANDIDATE | 3.11 | [`c6286c983900`](https://git.kernel.org/torvalds/c/c6286c983900) (loose) | [mm] | add tracepoints for LRU activation and insertions |  | generic code, tag [mm] | 3.10.0-82 |
| CANDIDATE | 3.11 | [`3dcc0571cd64`](https://git.kernel.org/torvalds/c/3dcc0571cd64) (loose) | [mm] | correctly update zone->managed_pages |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | 3.11 | [`170a5a7eb2bf`](https://git.kernel.org/torvalds/c/170a5a7eb2bf) (loose) | [mm] | make __free_pages_bootmem() only available at boot time |  | generic code, tag [mm] | 3.10.0-216 |
| CANDIDATE | 3.11 | [`6d42c232bd1e`](https://git.kernel.org/torvalds/c/6d42c232bd1e) | [mm] | memcg: also test for skip accounting at the page allocation level |  | CONFIG_MEMCG=y in A37 | 3.10.0-1075 |
| CANDIDATE | 3.11 | [`425c598d5838`](https://git.kernel.org/torvalds/c/425c598d5838) | [mm] | memcg: do not account memory used for cache creation |  | CONFIG_MEMCG=y in A37 | 3.10.0-1075 |
| CANDIDATE | 3.11 | [`519ebea3bf6d`](https://git.kernel.org/torvalds/c/519ebea3bf6d) (loose) | [mm] | memcontrol: factor out reclaim iterator loading and updating |  | CONFIG_MEMCG=y in A37 | 3.10.0-973 |
| CANDIDATE | 3.11 | [`9a2458a633d4`](https://git.kernel.org/torvalds/c/9a2458a633d4) | [mm] | mm: mremap: validate input before taking lock | CVE-2020-10757 | generic code, tag [mm] | 3.10.0-1153 |
| CANDIDATE | 3.11 | [`cdd91a77043b`](https://git.kernel.org/torvalds/c/cdd91a77043b) | [mm] | mm: report available pages as "MemTotal" for each NUMA node |  | generic code, tag [mm] | 3.10.0-1065 |
| CANDIDATE | 3.11 | [`493af578040e`](https://git.kernel.org/torvalds/c/493af578040e) | [mm] | mmap: allow MAP_HUGETLB for hugetlbfs files v2 |  | generic code, tag [mm] | 3.10.0-1065 |
| CANDIDATE | 3.11 | [`6dec97dc9294`](https://git.kernel.org/torvalds/c/6dec97dc9294) (loose) | [mm] | move_ptes -- Set soft dirty bit depending on pte type |  | generic code, tag [mm] | 3.10.0-378 |
| CANDIDATE | 3.11 | [`13f7f78981e4`](https://git.kernel.org/torvalds/c/13f7f78981e4) (loose) | [mm] | pagevec: defer deciding which LRU to add a page to until pagevec drain time |  | generic code, tag [mm] | 3.10.0-82 |
| CANDIDATE | 3.11 | [`7960aedde8cf`](https://git.kernel.org/torvalds/c/7960aedde8cf) (loose) | [mm] | remove duplicated call of get_pfn_range_for_nid |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | 3.11 | [`a0b8cab3b9b2`](https://git.kernel.org/torvalds/c/a0b8cab3b9b2) (loose) | [mm] | remove lru parameter from __pagevec_lru_add and remove parts of pagevec API |  | generic code, tag [mm] | 3.10.0-82 |
| CANDIDATE | 3.11 | [`41bb3476b361`](https://git.kernel.org/torvalds/c/41bb3476b361) (loose) | [mm] | save soft-dirty bits on file pages |  | generic code, tag [mm] | 3.10.0-378 |
| CANDIDATE | 3.11 | [`179ef71cbc08`](https://git.kernel.org/torvalds/c/179ef71cbc08) (loose) | [mm] | save soft-dirty bits on swapped pages |  | generic code, tag [mm] | 3.10.0-378 |
| CANDIDATE | 3.11 | [`0f8975ec4db2`](https://git.kernel.org/torvalds/c/0f8975ec4db2) (loose) | [mm] | soft-dirty bits for user memory changes tracking |  | generic code, tag [mm] | 3.10.0-378 |
| CANDIDATE | 3.11 | [`dcf6b7ddd7df`](https://git.kernel.org/torvalds/c/dcf6b7ddd7df) | [mm] | swap: discard while swapping only if SWAP_FLAG_DISCARD_PAGES |  | generic code, tag [mm] | 3.10.0-137 |
| CANDIDATE | 3.11 | [`387aae6fdd73`](https://git.kernel.org/torvalds/c/387aae6fdd73) | [mm] | tmpfs: fix SEEK_DATA/SEEK_HOLE regression |  | generic code, tag [mm] | 3.10.0-530 |
| CANDIDATE | 3.11 | [`e69e9d4aee71`](https://git.kernel.org/torvalds/c/e69e9d4aee71) | [mm] | vmalloc: introduce remap_vmalloc_range_partial |  | generic code, tag [mm] | 3.10.0-24 |
| CANDIDATE | 3.11 | [`cef2ac3f6c8a`](https://git.kernel.org/torvalds/c/cef2ac3f6c8a) | [mm] | vmalloc: make find_vm_area check in range |  | generic code, tag [mm] | 3.10.0-24 |
| CANDIDATE | 3.11 | [`33cb876e947b`](https://git.kernel.org/torvalds/c/33cb876e947b) | [mm] | vmpressure: make sure there are no events queued after memcg is offlined |  | generic code, tag [mm] | 3.10.0-1060 |
| CANDIDATE | 3.12 | [`077bf22b5cf2`](https://git.kernel.org/torvalds/c/077bf22b5cf2) (loose) | [mm] | do_mmap_pgoff: cleanup the usage of file_inode() |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | 3.12 | [`5fbc461636c3`](https://git.kernel.org/torvalds/c/5fbc461636c3) (loose) | [mm] | make lru_add_drain_all() selective |  | generic code, tag [mm] | 3.10.0-177 |
| CANDIDATE | 3.12 | [`0bf598d863e3`](https://git.kernel.org/torvalds/c/0bf598d863e3) | [mm] | mbind: add BUG_ON(!vma) in new_vma_page() |  | generic code, tag [mm] | 3.10.0-363 |
| CANDIDATE | 3.12 | [`74060e4d7879`](https://git.kernel.org/torvalds/c/74060e4d7879) (loose) | [mm] | mbind: add hugepage migration code to mbind() |  | generic code, tag [mm] | 3.10.0-363 |
| CANDIDATE | 3.12 | [`3168ecbe1c04`](https://git.kernel.org/torvalds/c/3168ecbe1c04) (loose) | [mm] | memcg: use proper memcg in limit bypass | CVE-2014-8171 | CONFIG_MEMCG=y in A37 | 3.10.0-245 |
| CANDIDATE | 3.12 | [`e2d8cf405525`](https://git.kernel.org/torvalds/c/e2d8cf405525) | [mm] | migrate: add hugepage migration code to migrate_pages() |  | generic code, tag [mm] | 3.10.0-363 |
| CANDIDATE | 3.12 | [`e632a938d914`](https://git.kernel.org/torvalds/c/e632a938d914) (loose) | [mm] | migrate: add hugepage migration code to move_pages() |  | generic code, tag [mm] | 3.10.0-363 |
| CANDIDATE | 3.12 | [`31caf665e666`](https://git.kernel.org/torvalds/c/31caf665e666) (loose) | [mm] | migrate: make core migration code aware of hugepage |  | generic code, tag [mm] | 3.10.0-285 |
| CANDIDATE | 3.12 | [`71ea2efb1e93`](https://git.kernel.org/torvalds/c/71ea2efb1e93) (loose) | [mm] | migrate: remove VM_HUGETLB from vma flag check in vma_migratable() |  | generic code, tag [mm] | 3.10.0-363 |
| CANDIDATE | 3.12 | [`c3d16e16522f`](https://git.kernel.org/torvalds/c/c3d16e16522f) (loose) | [mm] | migration: do not lose soft dirty bit if page is in migration state |  | generic code, tag [mm] | 3.10.0-378 |
| CANDIDATE | 3.12 | [`ef0855d334e1`](https://git.kernel.org/torvalds/c/ef0855d334e1) | [mm] | mm: mempolicy: turn vma_set_policy() into vma_dup_policy() |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 3.12 | [`7225522bb429`](https://git.kernel.org/torvalds/c/7225522bb429) (loose) | [mm] | munlock: batch non-THP page isolation and munlock+putback using pagevec |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | 3.12 | [`1ebb7cc6a583`](https://git.kernel.org/torvalds/c/1ebb7cc6a583) (loose) | [mm] | munlock: batch NR_MLOCK zone state updates |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | 3.12 | [`56afe477df3c`](https://git.kernel.org/torvalds/c/56afe477df3c) (loose) | [mm] | munlock: bypass per-cpu pvec for putback_lru_page |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | 3.12 | [`7a8010cd3627`](https://git.kernel.org/torvalds/c/7a8010cd3627) (loose) | [mm] | munlock: manual pte walk in fast path instead of follow_page_mask() |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | 3.12 | [`5b40998ae35c`](https://git.kernel.org/torvalds/c/5b40998ae35c) (loose) | [mm] | munlock: remove redundant get_page/put_page pair on the fast path |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | 3.12 | [`586a32ac1d33`](https://git.kernel.org/torvalds/c/586a32ac1d33) (loose) | [mm] | munlock: remove unnecessary call to lru_add_drain() |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | 3.12 | [`81c0a2bb515f`](https://git.kernel.org/torvalds/c/81c0a2bb515f) (loose) | [mm] | page_alloc: fair zone allocator policy |  | generic code, tag [mm] | 3.10.0-90 |
| CANDIDATE | 3.12 | [`86cdb465cf3a`](https://git.kernel.org/torvalds/c/86cdb465cf3a) (loose) | [mm] | prepare to remove /proc/sys/vm/hugepages_treat_as_movable |  | generic code, tag [mm] | 3.10.0-363 |
| CANDIDATE | 3.12 | [`b8ec1cee5a43`](https://git.kernel.org/torvalds/c/b8ec1cee5a43) (loose) | [mm] | soft-offline: use migrate_pages() instead of migrate_huge_page() |  | generic code, tag [mm] | 3.10.0-285 |
| CANDIDATE | 3.12 | [`2a8f94493432`](https://git.kernel.org/torvalds/c/2a8f94493432) | [mm] | swap: change block allocation algorithm for SSD |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | 3.12 | [`edfe23dac3e2`](https://git.kernel.org/torvalds/c/edfe23dac3e2) | [mm] | swap: fix races exposed by swap discard |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | 3.12 | [`ebc2a1a69111`](https://git.kernel.org/torvalds/c/ebc2a1a69111) | [mm] | swap: make cluster allocation per-cpu |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | 3.12 | [`815c2c543d3a`](https://git.kernel.org/torvalds/c/815c2c543d3a) | [mm] | swap: make swap discard async |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | 3.12 | [`d6bbbd29b1de`](https://git.kernel.org/torvalds/c/d6bbbd29b1de) | [mm] | swap: warn when a swap area overflows the maximum size |  | generic code, tag [mm] | 3.10.0-932 |
| CANDIDATE | 3.12 | [`d9104d1ca966`](https://git.kernel.org/torvalds/c/d9104d1ca966) (loose) | [mm] | track vma changes with VM_SOFTDIRTY bit |  | generic code, tag [mm] | 3.10.0-378 |
| CANDIDATE | 3.12 | [`4edb0748b238`](https://git.kernel.org/torvalds/c/4edb0748b238) | [mm] | vmstat: create fold_diff |  | generic code, tag [mm] | 3.10.0-239 |
| CANDIDATE | 3.12 | [`4edb0748b238`](https://git.kernel.org/torvalds/c/4edb0748b238) | [mm] | vmstat: create fold_diff |  | generic code, tag [mm] | 3.10.0-219 |
| CANDIDATE | 3.12 | [`2bb921e52665`](https://git.kernel.org/torvalds/c/2bb921e52665) | [mm] | vmstat: create separate function to fold per cpu diffs into local counters |  | generic code, tag [mm] | 3.10.0-239 |
| CANDIDATE | 3.12 | [`2bb921e52665`](https://git.kernel.org/torvalds/c/2bb921e52665) | [mm] | vmstat: create separate function to fold per cpu diffs into local counters |  | generic code, tag [mm] | 3.10.0-219 |
| CANDIDATE | 3.12 | [`fbc2edb05354`](https://git.kernel.org/torvalds/c/fbc2edb05354) | [mm] | vmstat: use this_cpu() to avoid irqon/off sequence in refresh_cpu_vm_stats |  | generic code, tag [mm] | 3.10.0-239 |
| CANDIDATE | 3.12 | [`fbc2edb05354`](https://git.kernel.org/torvalds/c/fbc2edb05354) | [mm] | vmstat: use this_cpu() to avoid irqon/off sequence in refresh_cpu_vm_stats |  | generic code, tag [mm] | 3.10.0-219 |
| CANDIDATE | 3.13 | [`e9bb18c7b95d`](https://git.kernel.org/torvalds/c/e9bb18c7b95d) (loose) | [mm] | avoid increase sizeof(struct page) due to split page table lock |  | generic code, tag [mm] | 3.10.0-83 |
| CANDIDATE | 3.13 | [`2ff2a7d03bbe`](https://git.kernel.org/torvalds/c/2ff2a7d03bbe) | [mm] | cgroup: kill css_id |  | CONFIG_CGROUPS=y in A37 | 3.10.0-837 |
| CANDIDATE | 3.13 | [`e1f56c89b040`](https://git.kernel.org/torvalds/c/e1f56c89b040) (loose) | [mm] | convert mm->nr_ptes to atomic_long_t |  | generic code, tag [mm] | 3.10.0-83 |
| CANDIDATE | 3.13 | [`c4088ebdca64`](https://git.kernel.org/torvalds/c/c4088ebdca64) (loose) | [mm] | convert the rest to new page table lock api |  | generic code, tag [mm] | 3.10.0-83 |
| CANDIDATE | 3.13 | [`01b0f19707c5`](https://git.kernel.org/torvalds/c/01b0f19707c5) | [mm] | cpu/mem hotplug: add try_online_node() for cpu_up() |  | generic code, tag [mm] | 3.10.0-675 |
| CANDIDATE | 3.13 | [`ea1e7ed33708`](https://git.kernel.org/torvalds/c/ea1e7ed33708) (loose) | [mm] | create a separate slab for page->ptl allocation |  | generic code, tag [mm] | 3.10.0-83 |
| CANDIDATE | 3.13 | [`e920e14ca29b`](https://git.kernel.org/torvalds/c/e920e14ca29b) (loose) | [mm] | Do not flush TLB during protection change if !pte_present && !migration_entry |  | generic code, tag [mm] | 3.10.0-35 |
| CANDIDATE | 3.13 | [`c78e93630d15`](https://git.kernel.org/torvalds/c/c78e93630d15) (loose) | [mm] | do not walk all of system memory during show_mem |  | generic code, tag [mm] | 3.10.0-201 |
| CANDIDATE | 3.13 | [`49076ec2ccaf`](https://git.kernel.org/torvalds/c/49076ec2ccaf) (loose) | [mm] | dynamically allocate page->ptl if it cannot be embedded to struct page |  | generic code, tag [mm] | 3.10.0-83 |
| CANDIDATE | 3.13 | [`00619bcc44d6`](https://git.kernel.org/torvalds/c/00619bcc44d6) (loose) | [mm] | factor commit limit calculation |  | generic code, tag [mm] | 3.10.0-108 |
| CANDIDATE | 3.13 | [`e009bb30c8df`](https://git.kernel.org/torvalds/c/e009bb30c8df) (loose) | [mm] | implement split page table lock for PMD level |  | generic code, tag [mm] | 3.10.0-83 |
| CANDIDATE | 3.13 | [`9a86cb7bdc4c`](https://git.kernel.org/torvalds/c/9a86cb7bdc4c) (loose) | [mm] | introduce api for split page table lock for PMD level |  | generic code, tag [mm] | 3.10.0-83 |
| CANDIDATE | 3.13 | [`2ade4de87117`](https://git.kernel.org/torvalds/c/2ade4de87117) | [mm] | memcg, kmem: rename cache_from_memcg to cache_from_memcg_idx |  | generic code, tag [mm] | 3.10.0-1029 |
| CANDIDATE | 3.13 | [`7a67d7abcc8d`](https://git.kernel.org/torvalds/c/7a67d7abcc8d) | [mm] | memcg, kmem: use cache_from_memcg_idx instead of hard code |  | generic code, tag [mm] | 3.10.0-1029 |
| CANDIDATE | 3.13 | [`1f14c1ac19aa`](https://git.kernel.org/torvalds/c/1f14c1ac19aa) (loose) | [mm] | memcg: do not allow task about to OOM kill to bypass the limit | CVE-2014-8171 | CONFIG_MEMCG=y in A37 | 3.10.0-245 |
| CANDIDATE | 3.13 | [`a0d8b00a3381`](https://git.kernel.org/torvalds/c/a0d8b00a3381) (loose) | [mm] | memcg: do not declare OOM from __GFP_NOFAIL allocations | CVE-2014-8171 | CONFIG_MEMCG=y in A37 | 3.10.0-245 |
| CANDIDATE | 3.13 | [`c424be1cbbf8`](https://git.kernel.org/torvalds/c/c424be1cbbf8) (loose) | [mm] | munlock: fix a bug where THP tail page is encountered |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | 3.13 | [`3b25df93c6e3`](https://git.kernel.org/torvalds/c/3b25df93c6e3) (loose) | [mm] | munlock: fix deadlock in __munlock_pagevec() |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | 3.13 | [`f123d74abf91`](https://git.kernel.org/torvalds/c/f123d74abf91) (loose) | [mm] | Only flush TLBs if a transhuge PMD is modified for NUMA pte scanning |  | generic code, tag [mm] | 3.10.0-35 |
| CANDIDATE | 3.13 | [`fff4068cba48`](https://git.kernel.org/torvalds/c/fff4068cba48) (loose) | [mm] | page_alloc: revert NUMA aspect of fair allocation policy |  | generic code, tag [mm] | 3.10.0-90 |
| CANDIDATE | 3.13 | [`f851c8d85838`](https://git.kernel.org/torvalds/c/f851c8d85838) | [mm] | percpu: fix bootmem error handling in pcpu_page_first_chunk() |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 3.13 | [`539edb5846c7`](https://git.kernel.org/torvalds/c/539edb5846c7) (loose) | [mm] | properly separate the bloated ptl from the regular case |  | generic code, tag [mm] | 3.10.0-83 |
| CANDIDATE | 3.13 | [`af248a0c6745`](https://git.kernel.org/torvalds/c/af248a0c6745) | [mm] | readahead: fix sequential read cache miss detection |  | generic code, tag [mm] | 3.10.0-59 |
| CANDIDATE | 3.13 | [`d0319bd52e37`](https://git.kernel.org/torvalds/c/d0319bd52e37) (loose) | [mm] | remove bogus warning in copy_huge_pmd() |  | generic code, tag [mm] | 3.10.0-96 |
| CANDIDATE | 3.13 | [`57c1ffcefb5a`](https://git.kernel.org/torvalds/c/57c1ffcefb5a) (loose) | [mm] | rename USE_SPLIT_PTLOCKS to USE_SPLIT_PTE_PTLOCKS |  | generic code, tag [mm] | 3.10.0-83 |
| CANDIDATE | 3.13 | [`9722c2dac708`](https://git.kernel.org/torvalds/c/9722c2dac708) | [mm] | sched: Calculate effective load even if local weight is 0 |  | generic code, tag [mm] | 3.10.0-82 |
| CANDIDATE | 3.14 | [`49f0ce5f9232`](https://git.kernel.org/torvalds/c/49f0ce5f9232) (loose) | [mm] | add overcommit_kbytes sysctl variable |  | generic code, tag [mm] | 3.10.0-108 |
| CANDIDATE | 3.14 | [`e82cb95d626a`](https://git.kernel.org/torvalds/c/e82cb95d626a) (loose) | [mm] | bring back /sys/kernel/mm |  | generic code, tag [mm] | 3.10.0-963 |
| CANDIDATE | 3.14 | [`9d85d5863fa4`](https://git.kernel.org/torvalds/c/9d85d5863fa4) (loose) | [mm] | Dirty accountable change only apply to non prot numa case |  | generic code, tag [mm] | 3.10.0-100 |
| CANDIDATE | 3.14 | [`0abdd7a81b7e`](https://git.kernel.org/torvalds/c/0abdd7a81b7e) | [mm] | dma-debug: introduce debug_dma_assert_idle() |  | generic code, tag [mm] | 3.10.0-722 |
| CANDIDATE | 3.14 | [`8582cb96b0bf`](https://git.kernel.org/torvalds/c/8582cb96b0bf) (loose) | [mm] | document improved handling of swappiness==0 |  | generic code, tag [mm] | 3.10.0-436 |
| CANDIDATE | 3.14 | [`309381feaee5`](https://git.kernel.org/torvalds/c/309381feaee5) (loose) | [mm] | dump page when hitting a VM_BUG_ON using VM_BUG_ON_PAGE |  | generic code, tag [mm] | 3.10.0-177 |
| CANDIDATE | 3.14 | [`887843961c4b`](https://git.kernel.org/torvalds/c/887843961c4b) (loose) | [mm] | fix bad rss-counter if remap_file_pages raced migration | CVE-2017-5715 CVE-2017-5753 CVE-2017-5754 | generic code, tag [mm] | 3.10.0-827 |
| CANDIDATE | 3.14 | [`e97ca8e5b864`](https://git.kernel.org/torvalds/c/e97ca8e5b864) (loose) | [mm] | fix GFP_THISNODE callers and clarify |  | generic code, tag [mm] | 3.10.0-100 |
| CANDIDATE | 3.14 | [`943dca1a1fcb`](https://git.kernel.org/torvalds/c/943dca1a1fcb) (loose) | [mm] | get rid of unnecessary pageblock scanning in setup_zone_migrate_reserve |  | generic code, tag [mm] | 3.10.0-59 |
| CANDIDATE | 3.14 | [`34228d473efe`](https://git.kernel.org/torvalds/c/34228d473efe) (loose) | [mm] | ignore VM_SOFTDIRTY on VMA merging |  | generic code, tag [mm] | 3.10.0-378 |
| CANDIDATE | 3.14 | [`e7e8de5918dd`](https://git.kernel.org/torvalds/c/e7e8de5918dd) | [mm] | memblock: make memblock_set_node() support different memblock_type |  | generic code, tag [mm] | 3.10.0-186 |
| CANDIDATE | 3.14 | [`1aa13254259b`](https://git.kernel.org/torvalds/c/1aa13254259b) | [mm] | memcg, slab: clean up memcg cache initialization/destruction |  | generic code, tag [mm] | 3.10.0-852 |
| CANDIDATE | 3.14 | [`959c8963fc6c`](https://git.kernel.org/torvalds/c/959c8963fc6c) | [mm] | memcg, slab: fix barrier usage when accessing memcg_caches |  | generic code, tag [mm] | 3.10.0-1029 |
| CANDIDATE | 3.14 | [`2edefe1155b3`](https://git.kernel.org/torvalds/c/2edefe1155b3) | [mm] | memcg, slab: fix races in per-memcg cache creation/destruction |  | generic code, tag [mm] | 3.10.0-852 |
| CANDIDATE | 3.14 | [`363a044f739b`](https://git.kernel.org/torvalds/c/363a044f739b) | [mm] | memcg, slab: kmem_cache_create_memcg(): fix memleak on fail path |  | generic code, tag [mm] | 3.10.0-852 |
| CANDIDATE | 3.14 | [`f8570263ee16`](https://git.kernel.org/torvalds/c/f8570263ee16) | [mm] | memcg, slab: RCU protect memcg_params for root caches |  | generic code, tag [mm] | 3.10.0-1029 |
| CANDIDATE | 3.14 | [`1c98dd905ddb`](https://git.kernel.org/torvalds/c/1c98dd905ddb) | [mm] | memcg: fix kmem_account_flags check in memcg_can_account_kmem() |  | CONFIG_MEMCG=y in A37 | 3.10.0-1029 |
| CANDIDATE | 3.14 | [`96403da24444`](https://git.kernel.org/torvalds/c/96403da24444) | [mm] | memcg: fix possible NULL deref while traversing memcg_slab_caches list |  | CONFIG_MEMCG=y in A37 | 3.10.0-1029 |
| CANDIDATE | 3.14 | [`842e2873697e`](https://git.kernel.org/torvalds/c/842e2873697e) | [mm] | memcg: get rid of kmem_cache_dup() |  | CONFIG_MEMCG=y in A37 | 3.10.0-1029 |
| CANDIDATE | 3.14 | [`2753b35bcd31`](https://git.kernel.org/torvalds/c/2753b35bcd31) | [mm] | memcg: make memcg_update_cache_sizes() static |  | CONFIG_MEMCG=y in A37 | 3.10.0-1029 |
| CANDIDATE | 3.14 | [`6de64beb3435`](https://git.kernel.org/torvalds/c/6de64beb3435) | [mm] | memcg: remove KMEM_ACCOUNTED_ACTIVATED flag |  | CONFIG_MEMCG=y in A37 | 3.10.0-1029 |
| CANDIDATE | 3.14 | [`999c17e3de48`](https://git.kernel.org/torvalds/c/999c17e3de48) | [mm] | mm/percpu.c: use memblock apis for early memory allocations |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 3.14 | [`5877231f646b`](https://git.kernel.org/torvalds/c/5877231f646b) (loose) | [mm] | Move change_prot_numa outside CONFIG_ARCH_USES_NUMA_PROT_NONE |  | generic code, tag [mm] | 3.10.0-100 |
| CANDIDATE | 3.14 | [`01cc2e58697e`](https://git.kernel.org/torvalds/c/01cc2e58697e) (loose) | [mm] | munlock: fix potential race with THP page split |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | 3.14 | [`cc81717ed3bc`](https://git.kernel.org/torvalds/c/cc81717ed3bc) (loose) | [mm] | new_vma_page() cannot see NULL vma for hugetlb pages |  | generic code, tag [mm] | 3.10.0-363 |
| CANDIDATE | 3.14 | [`27329369c9ec`](https://git.kernel.org/torvalds/c/27329369c9ec) (loose) | [mm] | page_alloc: exempt GFP_THISNODE allocations from zone fairness |  | generic code, tag [mm] | 3.10.0-100 |
| CANDIDATE | 3.14 | [`8a0921712ec6`](https://git.kernel.org/torvalds/c/8a0921712ec6) | [mm] | percpu: use VMALLOC_TOTAL instead of VMALLOC_END - VMALLOC_START |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 3.14 | [`da8c757b080e`](https://git.kernel.org/torvalds/c/da8c757b080e) (loose) | [mm] | prevent setting of a value less than 0 to min_free_kbytes |  | generic code, tag [mm] | 3.10.0-86 |
| CANDIDATE | 3.14 | [`f0b791a34cb3`](https://git.kernel.org/torvalds/c/f0b791a34cb3) (loose) | [mm] | print more details for bad_page() |  | generic code, tag [mm] | 3.10.0-177 |
| CANDIDATE | 3.14 | [`579f82901f6f`](https://git.kernel.org/torvalds/c/579f82901f6f) | [mm] | swap: add a simple detector for inappropriate swapin readahead |  | generic code, tag [mm] | 3.10.0-1025 |
| CANDIDATE | 3.14 | [`44518d2b3264`](https://git.kernel.org/torvalds/c/44518d2b3264) (loose) | [mm] | tail page refcounting optimization for slab and hugetlbfs |  | generic code, tag [mm] | 3.10.0-177 |
| CANDIDATE | 3.14 | [`56eecdb912b5`](https://git.kernel.org/torvalds/c/56eecdb912b5) (loose) | [mm] | Use ptep/pmdp_set_numa() for updating _PAGE_NUMA bit |  | generic code, tag [mm] | 3.10.0-100 |
| CANDIDATE | 3.14 | [`31fc00bb788f`](https://git.kernel.org/torvalds/c/31fc00bb788f) | [mm] | zsmalloc: add copyright |  | CONFIG_ZSMALLOC=y in A37 | 3.10.0-247 |
| CANDIDATE | 3.14 | [`1b945aeef0b9`](https://git.kernel.org/torvalds/c/1b945aeef0b9) | [mm] | zsmalloc: add Kconfig for enabling page table method |  | CONFIG_ZSMALLOC=y in A37 | 3.10.0-247 |
| CANDIDATE | 3.14 | [`eae70d068461`](https://git.kernel.org/torvalds/c/eae70d068461) | [mm] | zsmalloc: add maintainers |  | CONFIG_ZSMALLOC=y in A37 | 3.10.0-247 |
| CANDIDATE | 3.14 | [`c3e3e88adccb`](https://git.kernel.org/torvalds/c/c3e3e88adccb) | [mm] | zsmalloc: add more comment |  | CONFIG_ZSMALLOC=y in A37 | 3.10.0-247 |
| CANDIDATE | 3.14 | [`bcf1647d0899`](https://git.kernel.org/torvalds/c/bcf1647d0899) | [mm] | zsmalloc: move it under mm |  | CONFIG_ZSMALLOC=y in A37 | 3.10.0-247 |
| CANDIDATE | 3.15 | [`d4c54919ed86`](https://git.kernel.org/torvalds/c/d4c54919ed86) (loose) | [mm] | add !pte_present() check on existing hugetlb_entry callbacks |  | generic code, tag [mm] | 3.10.0-743 |
| CANDIDATE | 3.15 | [`fb09a4642582`](https://git.kernel.org/torvalds/c/fb09a4642582) (loose) | [mm] | consolidate code to call vm_ops->page_mkwrite() |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 3.15 | [`3bb977946998`](https://git.kernel.org/torvalds/c/3bb977946998) (loose) | [mm] | consolidate code to setup pte |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 3.15 | [`7eae74af32d2`](https://git.kernel.org/torvalds/c/7eae74af32d2) (loose) | [mm] | do_fault(): extract to call vm_ops->do_fault() to separate function |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 3.15 | [`5509a5d27b97`](https://git.kernel.org/torvalds/c/5509a5d27b97) | [mm] | drop_caches: add some documentation and info message |  | generic code, tag [mm] | 3.10.0-90 |
| CANDIDATE | 3.15 | [`70ef57e6c22c`](https://git.kernel.org/torvalds/c/70ef57e6c22c) (loose) | [mm] | exclude memoryless nodes from zone_reclaim |  | generic code, tag [mm] | 3.10.0-103 |
| CANDIDATE | 3.15 | [`ec47c3b95430`](https://git.kernel.org/torvalds/c/ec47c3b95430) (loose) | [mm] | introduce do_cow_fault() |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 3.15 | [`e655fb29074a`](https://git.kernel.org/torvalds/c/e655fb29074a) (loose) | [mm] | introduce do_read_fault() |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 3.15 | [`f0c6d4d295e4`](https://git.kernel.org/torvalds/c/f0c6d4d295e4) (loose) | [mm] | introduce do_shared_fault() and drop do_fault() |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 3.15 | [`55231e5c898c`](https://git.kernel.org/torvalds/c/55231e5c898c) (loose) | [mm] | madvise: fix MADV_WILLNEED on shmem swapouts |  | generic code, tag [mm] | 3.10.0-366 |
| CANDIDATE | 3.15 | [`136199f0a67c`](https://git.kernel.org/torvalds/c/136199f0a67c) | [mm] | memblock: use for_each_memblock() |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | 3.15 | [`5722d094ad2b`](https://git.kernel.org/torvalds/c/5722d094ad2b) | [mm] | memcg, slab: cleanup memcg cache creation |  | generic code, tag [mm] | 3.10.0-1029 |
| CANDIDATE | 3.15 | [`b8529907ba35`](https://git.kernel.org/torvalds/c/b8529907ba35) | [mm] | memcg, slab: do not destroy children caches if parent has aliases |  | generic code, tag [mm] | 3.10.0-852 |
| CANDIDATE | 3.15 | [`a44cb9449182`](https://git.kernel.org/torvalds/c/a44cb9449182) | [mm] | memcg, slab: never try to merge memcg caches |  | generic code, tag [mm] | 3.10.0-767 |
| CANDIDATE | 3.15 | [`794b1248be4e`](https://git.kernel.org/torvalds/c/794b1248be4e) | [mm] | memcg, slab: separate memcg vs root cache creation paths |  | generic code, tag [mm] | 3.10.0-1029 |
| CANDIDATE | 3.15 | [`119d6d59dcc0`](https://git.kernel.org/torvalds/c/119d6d59dcc0) | [mm] | mm, compaction: avoid isolating pinned pages |  | generic code, tag [mm] | 3.10.0-1109 |
| CANDIDATE | 3.15 | [`a5338093bfb4`](https://git.kernel.org/torvalds/c/a5338093bfb4) (loose) | [mm] | move mmu notifier call from change_protection to change_pmd_range |  | generic code, tag [mm] | 3.10.0-91 |
| CANDIDATE | 3.15 | [`3a025760fc15`](https://git.kernel.org/torvalds/c/3a025760fc15) (loose) | [mm] | page_alloc: spill to remote nodes before waking kswapd |  | generic code, tag [mm] | 3.10.0-115 |
| CANDIDATE | 3.15 | [`2f69fa829cb4`](https://git.kernel.org/torvalds/c/2f69fa829cb4) | [mm] | percpu: allocation size should be even |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | 3.15 | [`21ddfd38ee9a`](https://git.kernel.org/torvalds/c/21ddfd38ee9a) | [mm] | percpu: renew the max_contig if we merge the head and previous block |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | 3.15 | [`3d331ad74fa3`](https://git.kernel.org/torvalds/c/3d331ad74fa3) | [mm] | percpu: speed alloc_pcpu_area() up |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | 3.15 | [`723ad1d90b56`](https://git.kernel.org/torvalds/c/723ad1d90b56) | [mm] | percpu: store offsets instead of lengths in ->map[] |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | 3.15 | [`9acc1a0f9af2`](https://git.kernel.org/torvalds/c/9acc1a0f9af2) | [mm] | process_vm_access: don't bother with returning the amounts of bytes copied |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | 3.15 | [`240f3905f513`](https://git.kernel.org/torvalds/c/240f3905f513) | [mm] | process_vm_access: switch to copy_page_to_iter/iov_iter_copy_from_user |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | 3.15 | [`9f78bdfabf0d`](https://git.kernel.org/torvalds/c/9f78bdfabf0d) | [mm] | process_vm_access: switch to iov_iter |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | 3.15 | [`70eca12d80a8`](https://git.kernel.org/torvalds/c/70eca12d80a8) | [mm] | process_vm_access: take get_user_pages/put_pages one level up |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | 3.15 | [`4bafbec7bf60`](https://git.kernel.org/torvalds/c/4bafbec7bf60) | [mm] | process_vm_access: tidy up a bit |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | 3.15 | [`e21345f9c3f8`](https://git.kernel.org/torvalds/c/e21345f9c3f8) | [mm] | process_vm_rw_pages(): pass accurate amount of bytes |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | 3.15 | [`80d7ef66142b`](https://git.kernel.org/torvalds/c/80d7ef66142b) (loose) | [mm] | rename __do_fault() -> do_fault() |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 3.15 | [`6dbaf22ce1f1`](https://git.kernel.org/torvalds/c/6dbaf22ce1f1) (loose) | [mm] | shmem: save one radix tree lookup when truncating swapped pages |  | generic code, tag [mm] | 3.10.0-90 |
| CANDIDATE | 3.15 | [`421af243b1a5`](https://git.kernel.org/torvalds/c/421af243b1a5) | [mm] | slub: do not drop slab_mutex for sysfs_slab_add |  | CONFIG_SLUB=y in A37 | 3.10.0-481 |
| CANDIDATE | 3.15 | [`1cf35d47712d`](https://git.kernel.org/torvalds/c/1cf35d47712d) (loose) | [mm] | split 'tlb_flush_mmu()' into tlb flushing and memory freeing parts |  | generic code, tag [mm] | 3.10.0-1017 |
| CANDIDATE | 3.15 | [`480402e18def`](https://git.kernel.org/torvalds/c/480402e18def) | [mm] | untangling process_vm_..., part 1 |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | 3.15 | [`c61c70384fad`](https://git.kernel.org/torvalds/c/c61c70384fad) | [mm] | untangling process_vm_..., part 2 |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | 3.15 | [`12e3004e464f`](https://git.kernel.org/torvalds/c/12e3004e464f) | [mm] | untangling process_vm_..., part 3 |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | 3.15 | [`1291afc18115`](https://git.kernel.org/torvalds/c/1291afc18115) | [mm] | untangling process_vm_..., part 4 |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | 3.15 | [`0bf1457f0cfc`](https://git.kernel.org/torvalds/c/0bf1457f0cfc) (loose) | [mm] | vmscan: do not swap anon pages just because free+file is low |  | generic code, tag [mm] | 3.10.0-115 |
| CANDIDATE | 3.15 | [`6a3ed2123a78`](https://git.kernel.org/torvalds/c/6a3ed2123a78) (loose) | [mm] | vmstat: fix UP zone state accounting |  | generic code, tag [mm] | 3.10.0-90 |
| CANDIDATE | 3.15 | [`f0e71fcd0fa6`](https://git.kernel.org/torvalds/c/f0e71fcd0fa6) | [mm] | zsmalloc: Fix CPU hotplug callback registration |  | CONFIG_ZSMALLOC=y in A37 | 3.10.0-247 |
| CANDIDATE | 3.16 | [`be9765722e6b`](https://git.kernel.org/torvalds/c/be9765722e6b) (loose) | [mm] | compaction: properly signal and act upon lock and need_sched() contention |  | generic code, tag [mm] | 3.10.0-941 |
| CANDIDATE | 3.16 | [`4f9b16a64753`](https://git.kernel.org/torvalds/c/4f9b16a64753) (loose) | [mm] | disable zone_reclaim_mode by default |  | generic code, tag [mm] | 3.10.0-151 |
| CANDIDATE | 3.16 | [`1674448345cd`](https://git.kernel.org/torvalds/c/1674448345cd) (loose) | [mm] | extract code to fault in a page from __get_user_pages() |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | 3.16 | [`d2ee40eae98d`](https://git.kernel.org/torvalds/c/d2ee40eae98d) (loose) | [mm] | introdule compound_head_by_tail() |  | generic code, tag [mm] | 3.10.0-177 |
| CANDIDATE | 3.16 | [`f72e7dcdd252`](https://git.kernel.org/torvalds/c/f72e7dcdd252) (loose) | [mm] | let mm_find_pmd fix buggy race with THP fault |  | generic code, tag [mm] | 3.10.0-329 |
| CANDIDATE | 3.16 | [`1e32e77f95d6`](https://git.kernel.org/torvalds/c/1e32e77f95d6) | [mm] | memcg, slab: do not schedule cache destruction when last page goes away |  | generic code, tag [mm] | 3.10.0-1029 |
| CANDIDATE | 3.16 | [`bd67314586a3`](https://git.kernel.org/torvalds/c/bd67314586a3) | [mm] | memcg, slab: simplify synchronization scheme |  | generic code, tag [mm] | 3.10.0-1029 |
| CANDIDATE | 3.16 | [`2bcf2e92c391`](https://git.kernel.org/torvalds/c/2bcf2e92c391) | [mm] | memcg: oom_notify use-after-free fix |  | CONFIG_MEMCG=y in A37 | 3.10.0-339 |
| CANDIDATE | 3.16 | [`3dae7fec5e88`](https://git.kernel.org/torvalds/c/3dae7fec5e88) (loose) | [mm] | memcontrol: remove hierarchy restrictions for swappiness and oom_control |  | CONFIG_MEMCG=y in A37 | 3.10.0-151 |
| CANDIDATE | 3.16 | [`cc6b664aa26d`](https://git.kernel.org/torvalds/c/cc6b664aa26d) | [mm] | mm/dmapool.c: remove redundant NULL check for dev in dma_pool_create() |  | generic code, tag [mm] | 3.10.0-1145 |
| CANDIDATE | 3.16 | [`4bbd4c776a63`](https://git.kernel.org/torvalds/c/4bbd4c776a63) (loose) | [mm] | move get_user_pages()-related code to separate file |  | generic code, tag [mm] | 3.10.0-469 |
| CANDIDATE | 3.16 | [`496a8e68654a`](https://git.kernel.org/torvalds/c/496a8e68654a) | [mm] | msync: fix incorrect fstart calculation |  | generic code, tag [mm] | 3.10.0-239 |
| CANDIDATE | 3.16 | [`b745bc85f21e`](https://git.kernel.org/torvalds/c/b745bc85f21e) (loose) | [mm] | page_alloc: convert hot/cold parameter and immediate callers to bool |  | generic code, tag [mm] | 3.10.0-177 |
| CANDIDATE | 3.16 | [`5f7a75acdb24`](https://git.kernel.org/torvalds/c/5f7a75acdb24) (loose) | [mm] | page_alloc: do not cache reclaim distances |  | generic code, tag [mm] | 3.10.0-151 |
| CANDIDATE | 3.16 | [`844e4d66f4ec`](https://git.kernel.org/torvalds/c/844e4d66f4ec) | [mm] | slub: search partial list on numa_mem_id(), instead of numa_node_id() |  | CONFIG_SLUB=y in A37 | 3.10.0-218 |
| CANDIDATE | 3.16 | [`b43790eedd31`](https://git.kernel.org/torvalds/c/b43790eedd31) (loose) | [mm] | softdirty: don't forget to save file map softdiry bit on unmap |  | generic code, tag [mm] | 3.10.0-378 |
| CANDIDATE | 3.16 | [`0bf073315cb2`](https://git.kernel.org/torvalds/c/0bf073315cb2) (loose) | [mm] | softdirty: make freshly remapped file pages being softdirty unconditionally |  | generic code, tag [mm] | 3.10.0-378 |
| CANDIDATE | 3.16 | [`adfab836f490`](https://git.kernel.org/torvalds/c/adfab836f490) | [mm] | swap: change swap_info singly-linked list to list_head |  | generic code, tag [mm] | 3.10.0-133 |
| CANDIDATE | 3.16 | [`18ab4d4ced08`](https://git.kernel.org/torvalds/c/18ab4d4ced08) | [mm] | swap: change swap_list_head to plist, add swap_avail_head |  | generic code, tag [mm] | 3.10.0-133 |
| CANDIDATE | 3.16 | [`dd6bd0d9c7db`](https://git.kernel.org/torvalds/c/dd6bd0d9c7db) | [mm] | swap: use bdev_read_page() / bdev_write_page() |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 3.16 | [`13ace4d0d9db`](https://git.kernel.org/torvalds/c/13ace4d0d9db) | [mm] | tmpfs: ZERO_RANGE and COLLAPSE_RANGE not currently supported |  | generic code, tag [mm] | 3.10.0-303 |
| CANDIDATE | 3.16 | [`7eb52512a977`](https://git.kernel.org/torvalds/c/7eb52512a977) | [mm] | zsmalloc: fixup trivial zs size classes value in comments |  | CONFIG_ZSMALLOC=y in A37 | 3.10.0-247 |
| CANDIDATE | 3.17 | [`ce8369bcbeee`](https://git.kernel.org/torvalds/c/ce8369bcbeee) (loose) | [mm] | actually clear pmd_numa before invalidating |  | generic code, tag [mm] | 3.10.0-382 |
| CANDIDATE | 3.17 | [`4bb5f5d9395b`](https://git.kernel.org/torvalds/c/4bb5f5d9395b) (loose) | [mm] | allow drivers to prevent new writable mappings |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | 3.17 | [`153a9f131f50`](https://git.kernel.org/torvalds/c/153a9f131f50) | [mm] | Fix unbalanced mutex in dma_pool_create() |  | generic code, tag [mm] | 3.10.0-1145 |
| CANDIDATE | 3.17 | [`2ab051e11bfa`](https://git.kernel.org/torvalds/c/2ab051e11bfa) | [mm] | memcg, vmscan: Fix forced scan of anonymous pages |  | generic code, tag [mm] | 3.10.0-143 |
| CANDIDATE | 3.17 | [`f7b5d647946a`](https://git.kernel.org/torvalds/c/f7b5d647946a) | [mm] | mm: page_alloc: abort fair zone allocation policy when remotes nodes are encountered |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 3.17 | [`bb0b6dffa2cc`](https://git.kernel.org/torvalds/c/bb0b6dffa2cc) | [mm] | mm: vmscan: only update per-cpu thresholds for online CPU |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 3.17 | [`b972216e27d1`](https://git.kernel.org/torvalds/c/b972216e27d1) | [mm] | mmu_notifier: add call_srcu and sync function for listener to delay call and sync |  | generic code, tag [mm] | 3.10.0-262 |
| CANDIDATE | 3.17 | [`8d060bf49093`](https://git.kernel.org/torvalds/c/8d060bf49093) (loose) | [mm] | oom: ensure memoryless node zonelist always includes zones |  | generic code, tag [mm] | 3.10.0-488 |
| CANDIDATE | 3.17 | [`fb009e3a998e`](https://git.kernel.org/torvalds/c/fb009e3a998e) | [mm] | percpu: Use ALIGN macro instead of hand coding alignment calculation |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | 3.17 | [`37456771c58b`](https://git.kernel.org/torvalds/c/37456771c58b) | [mm] | shmem: support RENAME_EXCHANGE |  | generic code, tag [mm] | 3.10.0-220 |
| CANDIDATE | 3.17 | [`3b69ff51d087`](https://git.kernel.org/torvalds/c/3b69ff51d087) | [mm] | shmem: support RENAME_NOREPLACE |  | generic code, tag [mm] | 3.10.0-220 |
| CANDIDATE | 3.17 | [`54266640709a`](https://git.kernel.org/torvalds/c/54266640709a) | [mm] | slub: avoid duplicate creation on the first object |  | CONFIG_SLUB=y in A37 | 3.10.0-920 |
| CANDIDATE | 3.17 | [`8d07429319b2`](https://git.kernel.org/torvalds/c/8d07429319b2) (loose) | [mm] | vmscan: remove remains of kswapd-managed zone->all_unreclaimable |  | generic code, tag [mm] | 3.10.0-963 |
| CANDIDATE | 3.18 | [`bc127bda37db`](https://git.kernel.org/torvalds/c/bc127bda37db) (loose) | [mm] | do not overwrite reserved pages counter at show_mem() |  | generic code, tag [mm] | 3.10.0-207 |
| CANDIDATE | 3.18 | [`a4796e37c12e`](https://git.kernel.org/torvalds/c/a4796e37c12e) (loose) | [mm] | export page_wakeup functions |  | generic code, tag [mm] | 3.10.0-378 |
| CANDIDATE | 3.18 | [`5ddacbe92b80`](https://git.kernel.org/torvalds/c/5ddacbe92b80) (loose) | [mm] | free compound page with correct order |  | generic code, tag [mm] | 3.10.0-327 |
| CANDIDATE | 3.18 | [`9c5990240e07`](https://git.kernel.org/torvalds/c/9c5990240e07) (loose) | [mm] | introduce check_data_rlimit helper |  | generic code, tag [mm] | 3.10.0-285 |
| CANDIDATE | 3.18 | [`6d7ce55940b6`](https://git.kernel.org/torvalds/c/6d7ce55940b6) | [mm] | mm, compaction: pass gfp mask to compact_control |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 3.18 | [`01c2965f0723`](https://git.kernel.org/torvalds/c/01c2965f0723) | [mm] | mm: dmapool: add/remove sysfs file outside of the pool lock lock |  | generic code, tag [mm] | 3.10.0-1145 |
| CANDIDATE | 3.18 | [`c4ea95d7cd08`](https://git.kernel.org/torvalds/c/c4ea95d7cd08) | [mm] | mm: fix anon_vma_clone() error treatment |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 3.18 | [`43e7a34d265e`](https://git.kernel.org/torvalds/c/43e7a34d265e) | [mm] | mm: rename allocflags_to_migratetype for clarity |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 3.18 | [`97ee4ba7cbd3`](https://git.kernel.org/torvalds/c/97ee4ba7cbd3) (loose) | [mm] | page_alloc: Make paranoid check in move_freepages a VM_BUG_ON |  | generic code, tag [mm] | 3.10.0-1160.8.1 |
| CANDIDATE | 3.18 | [`23cb8981ed92`](https://git.kernel.org/torvalds/c/23cb8981ed92) | [mm] | percpu: fix locking regression in the failure path of pcpu_alloc() | CVE-2016-4794 | generic code, tag [mm] | 3.10.0-485 |
| CANDIDATE | 3.18 | [`5835d96e9ce4`](https://git.kernel.org/torvalds/c/5835d96e9ce4) | [mm] | percpu: implement [__]alloc_percpu_gfp() |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`1a4d76076cda`](https://git.kernel.org/torvalds/c/1a4d76076cda) | [mm] | percpu: implement asynchronous chunk population |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`b539b87fed37`](https://git.kernel.org/torvalds/c/b539b87fed37) | [mm] | percpu: implmeent pcpu_nr_empty_pop_pages and chunk->nr_populated |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`e04d320838f5`](https://git.kernel.org/torvalds/c/e04d320838f5) | [mm] | percpu: indent the population block in pcpu_alloc() |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`a16037c8dfc2`](https://git.kernel.org/torvalds/c/a16037c8dfc2) | [mm] | percpu: make pcpu_alloc_area() capable of allocating only from populated areas |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`a63d4ac4ab60`](https://git.kernel.org/torvalds/c/a63d4ac4ab60) | [mm] | percpu: make percpu-km set chunk->populated bitmap properly |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`9c824b6a172c`](https://git.kernel.org/torvalds/c/9c824b6a172c) | [mm] | percpu: make sure chunk->map array has available space |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`dca496451bdd`](https://git.kernel.org/torvalds/c/dca496451bdd) | [mm] | percpu: move common parts out of pcpu_[de]populate_chunk() |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`a93ace487a33`](https://git.kernel.org/torvalds/c/a93ace487a33) | [mm] | percpu: move region iterations out of pcpu_[de]populate_chunk() |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`cdb4cba5a3c9`](https://git.kernel.org/torvalds/c/cdb4cba5a3c9) | [mm] | percpu: remove @may_alloc from pcpu_get_pages() |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`fbbb7f4e149f`](https://git.kernel.org/torvalds/c/fbbb7f4e149f) | [mm] | percpu: remove the usage of separate populated bitmap in percpu-vm |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`fe6bd8c3d283`](https://git.kernel.org/torvalds/c/fe6bd8c3d283) | [mm] | percpu: rename pcpu_reclaim_work to pcpu_balance_work |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`b38d08f3181c`](https://git.kernel.org/torvalds/c/b38d08f3181c) | [mm] | percpu: restructure locking |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`58cb65487e92`](https://git.kernel.org/torvalds/c/58cb65487e92) | [mm] | proc/maps: make vm_is_stack() logic namespace-friendly |  | CONFIG_PROC_FS=y in A37 | 3.10.0-585 |
| CANDIDATE | 3.18 | [`1f13ae399c58`](https://git.kernel.org/torvalds/c/1f13ae399c58) (loose) | [mm] | remove noisy remainder of the scan_unevictable interface |  | generic code, tag [mm] | 3.10.0-201 |
| CANDIDATE | 3.18 | [`46fdb794e3f5`](https://git.kernel.org/torvalds/c/46fdb794e3f5) | [mm] | shmem: support RENAME_WHITEOUT |  | generic code, tag [mm] | 3.10.0-220 |
| CANDIDATE | 3.18 | [`a561ce00b09e`](https://git.kernel.org/torvalds/c/a561ce00b09e) | [mm] | slub: fall back to node_to_mem_node() node if allocating on memoryless node |  | CONFIG_SLUB=y in A37 | 3.10.0-218 |
| CANDIDATE | 3.18 | [`64e455079e1b`](https://git.kernel.org/torvalds/c/64e455079e1b) (loose) | [mm] | softdirty: enable write notifications on VMAs after VM_SOFTDIRTY cleared |  | generic code, tag [mm] | 3.10.0-378 |
| CANDIDATE | 3.18 | [`ad2c8144418c`](https://git.kernel.org/torvalds/c/ad2c8144418c) | [mm] | topology: add support for node_to_mem_node() to determine the fallback node |  | generic code, tag [mm] | 3.10.0-218 |
| CANDIDATE | 3.18 | [`7cc36bbddde5`](https://git.kernel.org/torvalds/c/7cc36bbddde5) | [mm] | vmstat: on-demand vmstat workers V8 |  | generic code, tag [mm] | 3.10.0-239 |
| CANDIDATE | 3.18 | [`7cc36bbddde5`](https://git.kernel.org/torvalds/c/7cc36bbddde5) | [mm] | vmstat: on-demand vmstat workers V8 |  | generic code, tag [mm] | 3.10.0-219 |
| CANDIDATE | 3.18 | [`722cdc17232f`](https://git.kernel.org/torvalds/c/722cdc17232f) | [mm] | zsmalloc: change return value unit of zs_get_total_size_bytes |  | CONFIG_ZSMALLOC=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.18 | [`13de8933c96b`](https://git.kernel.org/torvalds/c/13de8933c96b) | [mm] | zsmalloc: move pages_allocated to zs_pool |  | CONFIG_ZSMALLOC=y in A37 | 3.10.0-247 |
| CANDIDATE | 3.18 | [`5538c5623775`](https://git.kernel.org/torvalds/c/5538c5623775) | [mm] | zsmalloc: simplify init_zspage free obj linking |  | CONFIG_ZSMALLOC=y in A37 | 3.10.0-247 |
| CANDIDATE | 3.19 | [`e48322abb061`](https://git.kernel.org/torvalds/c/e48322abb061) (loose) | [mm] | cma: split cma-reserved in dmesg log |  | CONFIG_CMA=y in A37 | 3.10.0-743 |
| CANDIDATE | 3.19 | [`e1d6d01ab491`](https://git.kernel.org/torvalds/c/e1d6d01ab491) (loose) | [mm] | export find_extend_vma() and handle_mm_fault() for driver use |  | generic code, tag [mm] | 3.10.0-346 |
| CANDIDATE | 3.19 | [`e1d6d01ab491`](https://git.kernel.org/torvalds/c/e1d6d01ab491) (loose) | [mm] | export find_extend_vma() and handle_mm_fault() for driver use |  | generic code, tag [mm] | 3.10.0-295 |
| CANDIDATE | 3.19 | [`b800c91a0517`](https://git.kernel.org/torvalds/c/b800c91a0517) (loose) | [mm] | fix corner case in anon_vma endless growing prevention |  | generic code, tag [mm] | 3.10.0-436 |
| CANDIDATE | 3.19 | [`c164e038eee8`](https://git.kernel.org/torvalds/c/c164e038eee8) (loose) | [mm] | fix huge zero page accounting in smaps report |  | generic code, tag [mm] | 3.10.0-709 |
| CANDIDATE | 3.19 | [`47f8f9297d22`](https://git.kernel.org/torvalds/c/47f8f9297d22) | [mm] | fs/proc/meminfo.c: include cma info in proc/meminfo |  | CONFIG_PROC_FS=y in A37 | 3.10.0-743 |
| CANDIDATE | 3.19 | [`71f87bee38ed`](https://git.kernel.org/torvalds/c/71f87bee38ed) (loose) | [mm] | hugetlb_cgroup: convert to lockless page counters |  | generic code, tag [mm] | 3.10.0-363 |
| CANDIDATE | 3.19 | [`62e88b1c00de`](https://git.kernel.org/torvalds/c/62e88b1c00de) (loose) | [mm] | Make arch_unmap()/bprm_mm_init() available to all architectures |  | generic code, tag [mm] | 3.10.0-336 |
| CANDIDATE | 3.19 | [`3e32cb2e0a12`](https://git.kernel.org/torvalds/c/3e32cb2e0a12) (loose) | [mm] | memcontrol: lockless page counters |  | CONFIG_MEMCG=y in A37 | 3.10.0-363 |
| CANDIDATE | 3.19 | [`3e32cb2e0a12`](https://git.kernel.org/torvalds/c/3e32cb2e0a12) (loose) | [mm] | memcontrol: lockless page counters |  | CONFIG_MEMCG=y in A37 | 3.10.0-363 |
| CANDIDATE | 3.19 | [`24d404dc10b9`](https://git.kernel.org/torvalds/c/24d404dc10b9) (loose) | [mm] | memcontrol: switch soft limit default back to infinity |  | CONFIG_MEMCG=y in A37 | 3.10.0-363 |
| CANDIDATE | 3.19 | [`c313dc5dedbc`](https://git.kernel.org/torvalds/c/c313dc5dedbc) (loose) | [mm] | mincore: add hwpoison page handle |  | generic code, tag [mm] | 3.10.0-989 |
| CANDIDATE | 3.19 | [`61cf5febdf66`](https://git.kernel.org/torvalds/c/61cf5febdf66) | [mm] | mm/page_owner: correct owner information for early allocated pages |  | generic code, tag [mm] | 3.10.0-1139 |
| CANDIDATE | 3.19 | [`48c96a368579`](https://git.kernel.org/torvalds/c/48c96a368579) | [mm] | mm/page_owner: keep track of page owners |  | generic code, tag [mm] | 3.10.0-1139 |
| CANDIDATE | 3.19 | [`d003f371b270`](https://git.kernel.org/torvalds/c/d003f371b270) (loose) | [mm] | mm: oom: don't assume that a coredumping thread will exit soon |  | generic code, tag [mm] | 3.10.0-1127.2 |
| CANDIDATE | 3.19 | [`6a2d5679b4a8`](https://git.kernel.org/torvalds/c/6a2d5679b4a8) (loose) | [mm] | mm: oom: kill the insufficient and no longer needed PT_TRACE_EXIT check |  | generic code, tag [mm] | 3.10.0-1127.2 |
| CANDIDATE | 3.19 | [`fb7332a9fedf`](https://git.kernel.org/torvalds/c/fb7332a9fedf) | [mm] | mmu_gather: move minimal range calculations into generic code |  | generic code, tag [mm] | 3.10.0-1017 |
| CANDIDATE | 3.19 | [`1897bdc4d331`](https://git.kernel.org/torvalds/c/1897bdc4d331) | [mm] | mmu_notifier: add mmu_notifier_invalidate_range() |  | generic code, tag [mm] | 3.10.0-295 |
| CANDIDATE | 3.19 | [`34ee645e83b6`](https://git.kernel.org/torvalds/c/34ee645e83b6) | [mm] | mmu_notifier: call mmu_notifier_invalidate_range() from VMM |  | generic code, tag [mm] | 3.10.0-295 |
| CANDIDATE | 3.19 | [`9f295664e2f2`](https://git.kernel.org/torvalds/c/9f295664e2f2) | [mm] | percpu: off by one in BUG_ON() |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 3.19 | [`7a3ef208e662`](https://git.kernel.org/torvalds/c/7a3ef208e662) (loose) | [mm] | prevent endless growth of anon_vma hierarchy |  | generic code, tag [mm] | 3.10.0-436 |
| CANDIDATE | 3.19 | [`2ebba6b7e1d9`](https://git.kernel.org/torvalds/c/2ebba6b7e1d9) (loose) | [mm] | unmapped page migration avoid unmap+remap overhead |  | generic code, tag [mm] | 3.10.0-363 |
| CANDIDATE | 4.0 | [`e7bb4b6d1609`](https://git.kernel.org/torvalds/c/e7bb4b6d1609) (loose) | [mm] | add p[te\|md] protnone helpers for use by NUMA balancing |  | generic code, tag [mm] | 3.10.0-307 |
| CANDIDATE | 4.0 | [`2e4cdab0584f`](https://git.kernel.org/torvalds/c/2e4cdab0584f) (loose) | [mm] | allow page fault handlers to perform the COW |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 4.0 | [`4d9424669946`](https://git.kernel.org/torvalds/c/4d9424669946) (loose) | [mm] | convert p[te\|md]_mknonnuma and remaining page table manipulations |  | generic code, tag [mm] | 3.10.0-307 |
| CANDIDATE | 4.0 | [`3fe89b3e2a7b`](https://git.kernel.org/torvalds/c/3fe89b3e2a7b) (loose) | [mm] | fix anon_vma->degree underflow in anon_vma endless growing prevention |  | generic code, tag [mm] | 3.10.0-436 |
| CANDIDATE | 4.0 | [`283307c7607d`](https://git.kernel.org/torvalds/c/283307c7607d) (loose) | [mm] | fix XIP fault vs truncate race |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 4.0 | [`0fd71a56f41d`](https://git.kernel.org/torvalds/c/0fd71a56f41d) (loose) | [mm] | gup: add __get_user_pages_unlocked to customize gup_flags |  | generic code, tag [mm] | 3.10.0-302 |
| CANDIDATE | 4.0 | [`f0818f472d8d`](https://git.kernel.org/torvalds/c/f0818f472d8d) (loose) | [mm] | gup: add get_user_pages_locked and get_user_pages_unlocked |  | generic code, tag [mm] | 3.10.0-302 |
| CANDIDATE | 4.0 | [`0664e57ff0c6`](https://git.kernel.org/torvalds/c/0664e57ff0c6) (loose) | [mm] | gup: kvm use get_user_pages_unlocked |  | generic code, tag [mm] | 3.10.0-302 |
| CANDIDATE | 4.0 | [`7e3391284962`](https://git.kernel.org/torvalds/c/7e3391284962) (loose) | [mm] | gup: use get_user_pages_unlocked |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | 4.0 | [`a7b780750e1a`](https://git.kernel.org/torvalds/c/a7b780750e1a) (loose) | [mm] | gup: use get_user_pages_unlocked within get_user_pages_fast |  | generic code, tag [mm] | 3.10.0-302 |
| CANDIDATE | 4.0 | [`d7a94e7e11ba`](https://git.kernel.org/torvalds/c/d7a94e7e11ba) (loose) | [mm] | mm: oom: don't count on mm-less current process |  | generic code, tag [mm] | 3.10.0-1127.2 |
| CANDIDATE | 4.0 | [`83363b917a29`](https://git.kernel.org/torvalds/c/83363b917a29) (loose) | [mm] | mm: oom: make sure that TIF_MEMDIE is set under task_lock |  | generic code, tag [mm] | 3.10.0-1127.2 |
| CANDIDATE | 4.0 | [`900fc5f197b0`](https://git.kernel.org/torvalds/c/900fc5f197b0) | [mm] | pagewalk: add walk_page_vma() |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | 4.0 | [`48684a65b4e3`](https://git.kernel.org/torvalds/c/48684a65b4e3) (loose) | [mm] | pagewalk: fix misbehavior of walk_page_range for vma(VM_PFNMAP) |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | 4.0 | [`fafaa4264eba`](https://git.kernel.org/torvalds/c/fafaa4264eba) | [mm] | pagewalk: improve vma handling |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | 4.0 | [`21d9ee3eda77`](https://git.kernel.org/torvalds/c/21d9ee3eda77) (loose) | [mm] | remove remaining references to NUMA hinting bits and helpers |  | generic code, tag [mm] | 3.10.0-307 |
| CANDIDATE | 4.0 | [`d6e0b7fa1186`](https://git.kernel.org/torvalds/c/d6e0b7fa1186) | [mm] | slub: make dead caches discard free slabs immediately |  | CONFIG_SLUB=y in A37 | 3.10.0-1075 |
| CANDIDATE | 4.0 | [`fbbbad4bc210`](https://git.kernel.org/torvalds/c/fbbbad4bc210) | [mm] | vfs,ext2: introduce IS_DAX(inode) |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 4.0 | [`e748dcd095dd`](https://git.kernel.org/torvalds/c/e748dcd095dd) | [mm] | vfs: remove get_xip_mem |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 4.0 | [`ba4877b9ca51`](https://git.kernel.org/torvalds/c/ba4877b9ca51) | [mm] | vmstat: do not use deferrable delayed work for vmstat_update |  | generic code, tag [mm] | 3.10.0-239 |
| CANDIDATE | 4.0 | [`57c2e36b6f4d`](https://git.kernel.org/torvalds/c/57c2e36b6f4d) | [mm] | vmstat: Reduce time interval to stat update on idle cpu |  | generic code, tag [mm] | 3.10.0-239 |
| CANDIDATE | 4.1 | [`0f616be120c6`](https://git.kernel.org/torvalds/c/0f616be120c6) (loose) | [mm] | change __get_vm_area_node() to use fls_long() |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 4.1 | [`b9820d8f39f8`](https://git.kernel.org/torvalds/c/b9820d8f39f8) (loose) | [mm] | change vunmap to tear down huge KVA mappings |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 4.1 | [`761b06771ade`](https://git.kernel.org/torvalds/c/761b06771ade) (loose) | [mm] | completely remove dumping per-cpu lists from show_mem() |  | generic code, tag [mm] | 3.10.0-453 |
| CANDIDATE | 4.1 | [`d1bfcdb8ce0e`](https://git.kernel.org/torvalds/c/d1bfcdb8ce0e) (loose) | [mm] | hide per-cpu lists in output of show_mem() |  | generic code, tag [mm] | 3.10.0-453 |
| CANDIDATE | 4.1 | [`30467e0b3be8`](https://git.kernel.org/torvalds/c/30467e0b3be8) (loose) | [mm] | hotplug: fix concurrent memory hot-add deadlock |  | generic code, tag [mm] | 3.10.0-675 |
| CANDIDATE | 4.1 | [`6cd576130b71`](https://git.kernel.org/torvalds/c/6cd576130b71) | [mm] | mm/mremap.c: clean up goto just return ERR_PTR |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.1 | [`c561259ca79a`](https://git.kernel.org/torvalds/c/c561259ca79a) (loose) | [mm] | move gup() -> posix mlock() error conversion out of __mm_populate |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | 4.1 | [`acc3c8d15eed`](https://git.kernel.org/torvalds/c/acc3c8d15eed) (loose) | [mm] | move mm_populate()-related code to mm/gup.c |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | 4.1 | [`12215182c80c`](https://git.kernel.org/torvalds/c/12215182c80c) | [mm] | mremap should return -ENOMEM when __vm_enough_memory fail |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.1 | [`dd9061846a3b`](https://git.kernel.org/torvalds/c/dd9061846a3b) (loose) | [mm] | new pfn_mkwrite same as page_mkwrite for VM_PFNMAP |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 4.1 | [`28766805275c`](https://git.kernel.org/torvalds/c/28766805275c) (loose) | [mm] | refactor do_wp_page - rewrite the unlock flow |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 4.1 | [`93e478d4c36e`](https://git.kernel.org/torvalds/c/93e478d4c36e) (loose) | [mm] | refactor do_wp_page handling of shared vma into a function |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 4.1 | [`2f38ab2c3c7f`](https://git.kernel.org/torvalds/c/2f38ab2c3c7f) (loose) | [mm] | refactor do_wp_page, extract the page copy flow |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 4.1 | [`4e047f897771`](https://git.kernel.org/torvalds/c/4e047f897771) (loose) | [mm] | refactor do_wp_page, extract the reuse case |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | 4.1 | [`fc05f566210f`](https://git.kernel.org/torvalds/c/fc05f566210f) (loose) | [mm] | rename __mlock_vma_pages_range() to populate_vma_page_range() |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | 4.1 | [`cc5993bd7b8c`](https://git.kernel.org/torvalds/c/cc5993bd7b8c) (loose) | [mm] | rename deactivate_page to deactivate_file_page |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | 4.1 | [`84d33df279e0`](https://git.kernel.org/torvalds/c/84d33df279e0) (loose) | [mm] | rename FOLL_MLOCK to FOLL_POPULATE |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | 4.1 | [`602498f9aa43`](https://git.kernel.org/torvalds/c/602498f9aa43) (loose) | [mm] | soft-offline: fix num_poisoned_pages counting on concurrent events |  | generic code, tag [mm] | 3.10.0-285 |
| CANDIDATE | 4.1 | [`464d1387acb9`](https://git.kernel.org/torvalds/c/464d1387acb9) | [mm] | writeback: use \|1 instead of +1 to protect against div by zero |  | generic code, tag [mm] | 3.10.0-1127.2 |
| CANDIDATE | 4.2 | [`a9730fca9946`](https://git.kernel.org/torvalds/c/a9730fca9946) | [mm] | Fix kmalloc slab creation sequence |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.2 | [`36f881883c57`](https://git.kernel.org/torvalds/c/36f881883c57) (loose) | [mm] | fix mprotect() behaviour on VM_LOCKED VMAs |  | generic code, tag [mm] | 3.10.0-1017 |
| CANDIDATE | 4.2 | [`e298ff75f133`](https://git.kernel.org/torvalds/c/e298ff75f133) (loose) | [mm] | initialize hotplugged pages as reserved |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.2 | [`8a8c35fadfaf`](https://git.kernel.org/torvalds/c/8a8c35fadfaf) (loose) | [mm] | kmemleak_alloc_percpu() should follow the gfp from per_alloc() |  | generic code, tag [mm] | 3.10.0-440 |
| CANDIDATE | 4.2 | [`2f064f3485cd`](https://git.kernel.org/torvalds/c/2f064f3485cd) (loose) | [mm] | make page pfmemalloc check more robust |  | generic code, tag [mm] | 3.10.0-388 |
| CANDIDATE | 4.2 | [`8e7a7f8619f1`](https://git.kernel.org/torvalds/c/8e7a7f8619f1) | [mm] | memblock: introduce a for_each_reserved_mem_region iterator |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.2 | [`7ace99170789`](https://git.kernel.org/torvalds/c/7ace99170789) (loose) | [mm] | meminit: allow early_pfn_to_nid to be used during runtime |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.2 | [`0e1cc95b4cc7`](https://git.kernel.org/torvalds/c/0e1cc95b4cc7) (loose) | [mm] | meminit: finish initialisation of struct pages before basic setup |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.2 | [`a4de83dd3377`](https://git.kernel.org/torvalds/c/a4de83dd3377) (loose) | [mm] | meminit: free pages in large chunks where possible |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.2 | [`3a80a7fa7989`](https://git.kernel.org/torvalds/c/3a80a7fa7989) (loose) | [mm] | meminit: initialise a subset of struct pages if CONFIG_DEFERRED_STRUCT_PAGE_INIT is set |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.2 | [`7e18adb4f80b`](https://git.kernel.org/torvalds/c/7e18adb4f80b) (loose) | [mm] | meminit: initialise remaining struct pages in parallel with kswapd |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.2 | [`75a592a47129`](https://git.kernel.org/torvalds/c/75a592a47129) (loose) | [mm] | meminit: inline some helper functions |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.2 | [`8a942fdea560`](https://git.kernel.org/torvalds/c/8a942fdea560) (loose) | [mm] | meminit: make __early_pfn_to_nid SMP-safe and introduce meminit_pfn_in_nid |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.2 | [`54608c3f3a44`](https://git.kernel.org/torvalds/c/54608c3f3a44) (loose) | [mm] | meminit: minimise number of pfn->page lookups during initialisation |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.2 | [`1e8ce83cd17f`](https://git.kernel.org/torvalds/c/1e8ce83cd17f) (loose) | [mm] | meminit: move page initialization into a separate function |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.2 | [`92923ca3aace`](https://git.kernel.org/torvalds/c/92923ca3aace) (loose) | [mm] | meminit: only set page reserved in the memblock region |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.2 | [`74033a798f5a`](https://git.kernel.org/torvalds/c/74033a798f5a) (loose) | [mm] | meminit: remove mminit_verify_page_links |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.2 | [`d3cd131d935a`](https://git.kernel.org/torvalds/c/d3cd131d935a) (loose) | [mm] | meminit: replace rwsem with completion |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.2 | [`ae026b2aa193`](https://git.kernel.org/torvalds/c/ae026b2aa193) (loose) | [mm] | meminit: suppress unused memory variable warning |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.2 | [`f3a14ced3251`](https://git.kernel.org/torvalds/c/f3a14ced3251) | [mm] | mm/page_owner: fix possible access violation |  | generic code, tag [mm] | 3.10.0-1139 |
| CANDIDATE | 4.2 | [`e2cfc91120fa`](https://git.kernel.org/torvalds/c/e2cfc91120fa) | [mm] | mm/page_owner: set correct gfp_mask on page_owner |  | generic code, tag [mm] | 3.10.0-1139 |
| CANDIDATE | 4.2 | [`4abad2ca4a4d`](https://git.kernel.org/torvalds/c/4abad2ca4a4d) (loose) | [mm] | new arch_remap() hook |  | generic code, tag [mm] | 3.10.0-357 |
| CANDIDATE | 4.2 | [`2ae416b142b6`](https://git.kernel.org/torvalds/c/2ae416b142b6) (loose) | [mm] | new mm hook framework |  | generic code, tag [mm] | 3.10.0-357 |
| CANDIDATE | 4.2 | [`d70ddd7a5d9a`](https://git.kernel.org/torvalds/c/d70ddd7a5d9a) (loose) | [mm] | page_alloc: pass PFN to __free_pages_bootmem |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.2 | [`414e2fb8ce5a`](https://git.kernel.org/torvalds/c/414e2fb8ce5a) | [mm] | rmap: fix theoretical race between do_wp_page and shrink_active_list |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.2 | [`9ec23531fd48`](https://git.kernel.org/torvalds/c/9ec23531fd48) | [mm] | sched/preempt, mm/fault: Trigger might_sleep() in might_fault() with disabled pagefaults |  | generic code, tag [mm] | 3.10.0-1020 |
| CANDIDATE | 4.2 | [`add05cecef80`](https://git.kernel.org/torvalds/c/add05cecef80) (loose) | [mm] | soft-offline: don't free target page in successful page migration |  | generic code, tag [mm] | 3.10.0-989 |
| CANDIDATE | 4.2 | [`add05cecef80`](https://git.kernel.org/torvalds/c/add05cecef80) (loose) | [mm] | soft-offline: don't free target page in successful page migration |  | generic code, tag [mm] | 3.10.0-285 |
| CANDIDATE | 4.2 | [`97c9341f7271`](https://git.kernel.org/torvalds/c/97c9341f7271) (loose) | [mm] | vmscan: disable memcg direct reclaim stalling if cgroup writeback support is in use |  | generic code, tag [mm] | 3.10.0-675 |
| CANDIDATE | 4.3 | [`b96375f74a6d`](https://git.kernel.org/torvalds/c/b96375f74a6d) (loose) | [mm] | add a pmd_fault handler |  | generic code, tag [mm] | 3.10.0-469 |
| CANDIDATE | 4.3 | [`ad82362b2def`](https://git.kernel.org/torvalds/c/ad82362b2def) (loose) | [mm] | add dma_pool_zalloc() call to DMA API |  | generic code, tag [mm] | 3.10.0-399 |
| CANDIDATE | 4.3 | [`fa23f56d90ed`](https://git.kernel.org/torvalds/c/fa23f56d90ed) (loose) | [mm] | add support for __GFP_ZERO flag to dma_pool_alloc() |  | generic code, tag [mm] | 3.10.0-423 |
| CANDIDATE | 4.3 | [`5cad465d7fa6`](https://git.kernel.org/torvalds/c/5cad465d7fa6) (loose) | [mm] | add vmf_insert_pfn_pmd() |  | generic code, tag [mm] | 3.10.0-469 |
| CANDIDATE | 4.3 | [`04697858d89e`](https://git.kernel.org/torvalds/c/04697858d89e) (loose) | [mm] | check if section present during memory block registering |  | generic code, tag [mm] | 3.10.0-323 |
| CANDIDATE | 4.3 | [`d950c9477d51`](https://git.kernel.org/torvalds/c/d950c9477d51) (loose) | [mm] | defer flush of writable TLB entries |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.3 | [`fc43704437eb`](https://git.kernel.org/torvalds/c/fc43704437eb) (loose) | [mm] | export various functions for the benefit of DAX |  | generic code, tag [mm] | 3.10.0-469 |
| CANDIDATE | 4.3 | [`ae4f97696889`](https://git.kernel.org/torvalds/c/ae4f97696889) (loose) | [mm] | fix type cast in __pfn_to_phys() |  | generic code, tag [mm] | 3.10.0-490 |
| CANDIDATE | 4.3 | [`33c3fc71c8cf`](https://git.kernel.org/torvalds/c/33c3fc71c8cf) (loose) | [mm] | introduce idle page tracking |  | generic code, tag [mm] | 3.10.0-963 |
| CANDIDATE | 4.3 | [`b53306285466`](https://git.kernel.org/torvalds/c/b53306285466) (loose) | [mm] | introduce vma_is_anonymous(vma) helper |  | generic code, tag [mm] | 3.10.0-631 |
| CANDIDATE | 4.3 | [`dbb7ee0e474c`](https://git.kernel.org/torvalds/c/dbb7ee0e474c) | [mm] | lib: move strncpy_from_unsafe() into mm/maccess.c |  | generic code, tag [mm] | 3.10.0-913 |
| CANDIDATE | 4.3 | [`1027e4436b6a`](https://git.kernel.org/torvalds/c/1027e4436b6a) (loose) | [mm] | make GUP handle pfn mapping unless FOLL_GET is requested |  | generic code, tag [mm] | 3.10.0-469 |
| CANDIDATE | 4.3 | [`3aaa76e125c1`](https://git.kernel.org/torvalds/c/3aaa76e125c1) (loose) | [mm] | migrate: hugetlb: putback destination hugepage to active list |  | generic code, tag [mm] | 3.10.0-363 |
| CANDIDATE | 4.3 | [`012dcef3f058`](https://git.kernel.org/torvalds/c/012dcef3f058) (loose) | [mm] | move __phys_to_pfn and __pfn_to_phys to asm/generic/memory_model.h |  | generic code, tag [mm] | 3.10.0-486 |
| CANDIDATE | 4.3 | [`1fcfd8db7f82`](https://git.kernel.org/torvalds/c/1fcfd8db7f82) (loose) | [mm] | mpx: add "vm_flags_t vm_flags" arg to do_mmap_pgoff() |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | 4.3 | [`c5b4e1b02f2a`](https://git.kernel.org/torvalds/c/c5b4e1b02f2a) (loose) | [mm] | page_isolation: make set/unset_migratetype_isolate() file-local |  | generic code, tag [mm] | 3.10.0-989 |
| CANDIDATE | 4.3 | [`72b252aed506`](https://git.kernel.org/torvalds/c/72b252aed506) (loose) | [mm] | send one IPI per CPU to TLB flush all entries after unmapping pages |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | 4.3 | [`3eed034d045c`](https://git.kernel.org/torvalds/c/3eed034d045c) | [mm] | slub: add support for kmem_cache_debug in bulk calls |  | CONFIG_SLUB=y in A37 | 3.10.0-415 |
| CANDIDATE | 4.3 | [`ebe909e0fdb3`](https://git.kernel.org/torvalds/c/ebe909e0fdb3) | [mm] | slub: improve bulk alloc strategy |  | CONFIG_SLUB=y in A37 | 3.10.0-415 |
| CANDIDATE | 4.3 | [`fbd02630c6e3`](https://git.kernel.org/torvalds/c/fbd02630c6e3) | [mm] | slub: initial bulk free implementation |  | CONFIG_SLUB=y in A37 | 3.10.0-415 |
| CANDIDATE | 4.3 | [`5b999aadbae6`](https://git.kernel.org/torvalds/c/5b999aadbae6) (loose) | [mm] | swap: zswap: maybe_preload & refactoring |  | generic code, tag [mm] | 3.10.0-844 |
| CANDIDATE | 4.3 | [`46c043ede471`](https://git.kernel.org/torvalds/c/46c043ede471) (loose) | [mm] | take i_mmap_lock in unmap_mapping_range() for DAX |  | generic code, tag [mm] | 3.10.0-469 |
| CANDIDATE | 4.3 | [`7fadc8202224`](https://git.kernel.org/torvalds/c/7fadc8202224) (loose) | [mm] | vmscan: unlock page while waiting on writeback |  | generic code, tag [mm] | 3.10.0-963 |
| CANDIDATE | 4.4 | [`c62d25556be6`](https://git.kernel.org/torvalds/c/c62d25556be6) (loose) | [mm] | introduce mapping_gfp_constraint() |  | generic code, tag [mm] | 3.10.0-422 |
| CANDIDATE | 4.4 | [`c12176d3368b`](https://git.kernel.org/torvalds/c/c12176d3368b) | [mm] | memcg: fix thresholds for 32b architectures |  | CONFIG_MEMCG=y in A37 | 3.10.0-758 |
| CANDIDATE | 4.4 | [`b0f205c2a308`](https://git.kernel.org/torvalds/c/b0f205c2a308) (loose) | [mm] | mlock: add mlock flags to enable VM_LOCKONFAULT usage |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | 4.4 | [`1aab92ec3de5`](https://git.kernel.org/torvalds/c/1aab92ec3de5) (loose) | [mm] | mlock: refactor mlock, munlock, and munlockall code |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | 4.4 | [`f09f1243ca2d`](https://git.kernel.org/torvalds/c/f09f1243ca2d) | [mm] | mm/percpu: use offset_in_page macro |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.4 | [`51afb12ba809`](https://git.kernel.org/torvalds/c/51afb12ba809) (loose) | [mm] | page migration fix PageMlocked on migrated pages |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | 4.4 | [`6071ca520106`](https://git.kernel.org/torvalds/c/6071ca520106) (loose) | [mm] | page_counter: let page_counter_try_charge() return bool |  | generic code, tag [mm] | 3.10.0-1053 |
| CANDIDATE | 4.4 | [`033745189b1b`](https://git.kernel.org/torvalds/c/033745189b1b) | [mm] | slub: add missing kmem cgroup support to kmem_cache_free_bulk |  | CONFIG_SLUB=y in A37 | 3.10.0-415 |
| CANDIDATE | 4.4 | [`87098373e244`](https://git.kernel.org/torvalds/c/87098373e244) | [mm] | slub: avoid irqoff/on in bulk allocation |  | CONFIG_SLUB=y in A37 | 3.10.0-415 |
| CANDIDATE | 4.4 | [`a380a3c75529`](https://git.kernel.org/torvalds/c/a380a3c75529) | [mm] | slub: create new ___slab_alloc function that can be called with irqs disabled |  | CONFIG_SLUB=y in A37 | 3.10.0-415 |
| CANDIDATE | 4.4 | [`03ec0ed57ffc`](https://git.kernel.org/torvalds/c/03ec0ed57ffc) | [mm] | slub: fix kmem cgroup bug in kmem_cache_alloc_bulk |  | CONFIG_SLUB=y in A37 | 3.10.0-415 |
| CANDIDATE | 4.4 | [`b4a64718797b`](https://git.kernel.org/torvalds/c/b4a64718797b) | [mm] | slub: mark the dangling ifdef #else of CONFIG_SLUB_DEBUG |  | CONFIG_SLUB=y in A37 | 3.10.0-415 |
| CANDIDATE | 4.4 | [`d0ecd894e3d5`](https://git.kernel.org/torvalds/c/d0ecd894e3d5) | [mm] | slub: optimize bulk slowpath free by detached freelist |  | CONFIG_SLUB=y in A37 | 3.10.0-415 |
| CANDIDATE | 4.4 | [`81084651d737`](https://git.kernel.org/torvalds/c/81084651d737) | [mm] | slub: support for bulk free with SLUB freelists |  | CONFIG_SLUB=y in A37 | 3.10.0-415 |
| CANDIDATE | 4.4 | [`267a4c76bbdb`](https://git.kernel.org/torvalds/c/267a4c76bbdb) | [mm] | tmpfs: fix shmem_evict_inode() warnings on i_blocks |  | generic code, tag [mm] | 3.10.0-883 |
| CANDIDATE | 4.5 | [`7e7f774984cd`](https://git.kernel.org/torvalds/c/7e7f774984cd) (loose) | [mm] | add find_get_entries_tag() |  | generic code, tag [mm] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`01c8f1c44b83`](https://git.kernel.org/torvalds/c/01c8f1c44b83) (loose) | [mm] | dax, gpu: convert vm_insert_mixed to pfn_t |  | generic code, tag [mm] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`bf9683d69905`](https://git.kernel.org/torvalds/c/bf9683d69905) (loose) | [mm] | documentation: clarify /proc/pid/status VmSwap limitations for shmem |  | generic code, tag [mm] | 3.10.0-419 |
| CANDIDATE | 4.5 | [`88f306b68cbb`](https://git.kernel.org/torvalds/c/88f306b68cbb) (loose) | [mm] | fix locking order in mm_take_all_locks() |  | generic code, tag [mm] | 3.10.0-630 |
| CANDIDATE | 4.5 | [`12c9d70bd505`](https://git.kernel.org/torvalds/c/12c9d70bd505) (loose) | [mm] | fix memory leak in copy_huge_pmd() |  | generic code, tag [mm] | 3.10.0-795 |
| CANDIDATE | 4.5 | [`7162a1e87b3e`](https://git.kernel.org/torvalds/c/7162a1e87b3e) (loose) | [mm] | fix mlock accouting |  | generic code, tag [mm] | 3.10.0-403 |
| CANDIDATE | 4.5 | [`03fc2da63b9a`](https://git.kernel.org/torvalds/c/03fc2da63b9a) (loose) | [mm] | fix pfn_t to page conversion in vm_insert_mixed |  | generic code, tag [mm] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`1f1ffb8a151e`](https://git.kernel.org/torvalds/c/1f1ffb8a151e) | [mm] | memblock: don't mark memblock_phys_mem_size() as __init |  | generic code, tag [mm] | 3.10.0-600 |
| CANDIDATE | 4.5 | [`6b9116a652bd`](https://git.kernel.org/torvalds/c/6b9116a652bd) | [mm] | mm, dax: check for pmd_none() after split_huge_pmd() | CVE-2020-10757 | generic code, tag [mm] | 3.10.0-1153 |
| CANDIDATE | 4.5 | [`5c7fb56e5e3f`](https://git.kernel.org/torvalds/c/5c7fb56e5e3f) | [mm] | mm, dax: dax-pmd vs thp-pmd vs hugetlbfs-pmd |  | generic code, tag [mm] | 3.10.0-793 |
| CANDIDATE | 4.5 | [`3565fce3a659`](https://git.kernel.org/torvalds/c/3565fce3a659) | [mm] | mm, x86: get_user_pages() for dax mappings |  | generic code, tag [mm] | 3.10.0-793 |
| CANDIDATE | 4.5 | [`10853a039208`](https://git.kernel.org/torvalds/c/10853a039208) (loose) | [mm] | move lazily freed pages to inactive list |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | 4.5 | [`e9d408e107db`](https://git.kernel.org/torvalds/c/e9d408e107db) | [mm] | new helper: memdup_user_nul() |  | generic code, tag [mm] | 3.10.0-444 |
| CANDIDATE | 4.5 | [`c261e7d94f0d`](https://git.kernel.org/torvalds/c/c261e7d94f0d) (loose) | [mm] | proc: account for shmem swap in /proc/pid/smaps |  | CONFIG_PROC_FS=y in A37 | 3.10.0-419 |
| CANDIDATE | 4.5 | [`6a15a37097c7`](https://git.kernel.org/torvalds/c/6a15a37097c7) (loose) | [mm] | proc: reduce cost of /proc/pid/smaps for shmem mappings |  | CONFIG_PROC_FS=y in A37 | 3.10.0-419 |
| CANDIDATE | 4.5 | [`48131e03ca4e`](https://git.kernel.org/torvalds/c/48131e03ca4e) (loose) | [mm] | proc: reduce cost of /proc/pid/smaps for unpopulated shmem mappings |  | CONFIG_PROC_FS=y in A37 | 3.10.0-419 |
| CANDIDATE | 4.5 | [`8cee852ec53f`](https://git.kernel.org/torvalds/c/8cee852ec53f) (loose) | [mm] | procfs: breakdown RSS for anon, shmem and file in /proc/pid/status |  | CONFIG_PROC_FS=y in A37 | 3.10.0-419 |
| CANDIDATE | 4.5 | [`eca56ff906bd`](https://git.kernel.org/torvalds/c/eca56ff906bd) (loose) | [mm] | shmem: add internal shmem resident memory accounting |  | generic code, tag [mm] | 3.10.0-419 |
| CANDIDATE | 4.5 | [`1d5cfdb07628`](https://git.kernel.org/torvalds/c/1d5cfdb07628) | [mm] | tree wide: use kvfree() than conditional kfree()/vfree() |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.5 | [`37f08dda29da`](https://git.kernel.org/torvalds/c/37f08dda29da) | [mm] | vmalloc: allow to account vmalloc to memcg |  | generic code, tag [mm] | 3.10.0-1075 |
| CANDIDATE | 4.5 | [`f01f17d3705b`](https://git.kernel.org/torvalds/c/f01f17d3705b) (loose) | [mm] | vmstat: make quiet_vmstat lighter |  | generic code, tag [mm] | 3.10.0-436 |
| CANDIDATE | 4.5 | [`ccde8bd4014e`](https://git.kernel.org/torvalds/c/ccde8bd4014e) | [mm] | vmstat: make vmstat_update deferrable |  | generic code, tag [mm] | 3.10.0-436 |
| CANDIDATE | 4.5 | [`0eb77e988032`](https://git.kernel.org/torvalds/c/0eb77e988032) | [mm] | vmstat: make vmstat_updater deferrable again and shut down on idle |  | generic code, tag [mm] | 3.10.0-436 |
| CANDIDATE | 4.5 | [`587198ba5206`](https://git.kernel.org/torvalds/c/587198ba5206) | [mm] | vmstat: Remove BUG_ON from vmstat_update |  | generic code, tag [mm] | 3.10.0-436 |
| CANDIDATE | 4.5 | [`4b94ffdc4163`](https://git.kernel.org/torvalds/c/4b94ffdc4163) | [mm] | x86, mm: introduce vmem_altmap to augment vmemmap_populate() |  | generic code, tag [mm] | 3.10.0-486 |
| CANDIDATE | 4.6 | [`b11a7b94100c`](https://git.kernel.org/torvalds/c/b11a7b94100c) (loose) | [mm] | exclude ZONE_DEVICE from GFP_ZONE_TABLE |  | generic code, tag [mm] | 3.10.0-490 |
| CANDIDATE | 4.6 | [`fb0fec501f08`](https://git.kernel.org/torvalds/c/fb0fec501f08) (loose) | [mm] | Export nr_swap_pages |  | generic code, tag [mm] | 3.10.0-422 |
| CANDIDATE | 4.6 | [`6f25a14a7053`](https://git.kernel.org/torvalds/c/6f25a14a7053) (loose) | [mm] | fix invalid node in alloc_migrate_target() |  | generic code, tag [mm] | 3.10.0-743 |
| CANDIDATE | 4.6 | [`684283988f70`](https://git.kernel.org/torvalds/c/684283988f70) | [mm] | huge pagecache: mmap_sem is unlocked when truncation splits pmd |  | generic code, tag [mm] | 3.10.0-795 |
| CANDIDATE | 4.6 | [`fe896d187894`](https://git.kernel.org/torvalds/c/fe896d187894) (loose) | [mm] | introduce page reference manipulation functions |  | generic code, tag [mm] | 3.10.0-415 |
| CANDIDATE | 4.6 | [`987b3095c2a7`](https://git.kernel.org/torvalds/c/987b3095c2a7) (loose) | [mm] | meminit: initialise more memory for inode/dentry hash tables in early boot |  | generic code, tag [mm] | 3.10.0-542 |
| CANDIDATE | 4.6 | [`756a025f0009`](https://git.kernel.org/torvalds/c/756a025f0009) | [mm] | mm: coalesce split strings |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.6 | [`598d80914e84`](https://git.kernel.org/torvalds/c/598d80914e84) | [mm] | mm: convert pr_warning to pr_warn |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.6 | [`1170532bb49f`](https://git.kernel.org/torvalds/c/1170532bb49f) | [mm] | mm: convert printk(KERN_<LEVEL> to pr_<level> |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.6 | [`870d4b12ad15`](https://git.kernel.org/torvalds/c/870d4b12ad15) | [mm] | mm: percpu: use pr_fmt to prefix output |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.6 | [`ea606cf5d8df`](https://git.kernel.org/torvalds/c/ea606cf5d8df) (loose) | [mm] | move max_map_count bits into mm.h |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | 4.6 | [`376bf125ac78`](https://git.kernel.org/torvalds/c/376bf125ac78) | [mm] | slub: clean up code for kmem cgroup support to kmem_cache_free_bulk |  | CONFIG_SLUB=y in A37 | 3.10.0-415 |
| CANDIDATE | 4.6 | [`becfda68abca`](https://git.kernel.org/torvalds/c/becfda68abca) | [mm] | slub: convert SLAB_DEBUG_FREE to SLAB_CONSISTENCY_CHECKS |  | CONFIG_SLUB=y in A37 | 3.10.0-966 |
| CANDIDATE | 4.6 | [`282acb436176`](https://git.kernel.org/torvalds/c/282acb436176) | [mm] | slub: drop lock at the end of free_debug_processing |  | CONFIG_SLUB=y in A37 | 3.10.0-966 |
| CANDIDATE | 4.6 | [`804aa132d341`](https://git.kernel.org/torvalds/c/804aa132d341) | [mm] | slub: fix/clean free_debug_processing return paths |  | CONFIG_SLUB=y in A37 | 3.10.0-966 |
| CANDIDATE | 4.6 | [`149daaf3a02c`](https://git.kernel.org/torvalds/c/149daaf3a02c) | [mm] | slub: relax CMPXCHG consistency restrictions |  | CONFIG_SLUB=y in A37 | 3.10.0-966 |
| CANDIDATE | 4.6 | [`505f6d22dbc6`](https://git.kernel.org/torvalds/c/505f6d22dbc6) | [mm] | sound: query dynamic DEBUG_PAGEALLOC setting |  | CONFIG_SND=y in A37 | 3.10.0-768 |
| CANDIDATE | 4.7 | [`dee410792419`](https://git.kernel.org/torvalds/c/dee410792419) | [mm] | /dev/dax, core: file operations and dax-mmap |  | generic code, tag [mm] | 3.10.0-640 |
| CANDIDATE | 4.7 | [`f3a932baa7f6`](https://git.kernel.org/torvalds/c/f3a932baa7f6) (loose) | [mm] | introduce dedicated WQ_MEM_RECLAIM workqueue to do lru_add_drain_all |  | generic code, tag [mm] | 3.10.0-720 |
| CANDIDATE | 4.7 | [`73f576c04b94`](https://git.kernel.org/torvalds/c/73f576c04b94) (loose) | [mm] | memcontrol: fix cgroup creation failure after many small jobs |  | CONFIG_MEMCG=y in A37 | 3.10.0-917 |
| CANDIDATE | 4.7 | [`73f576c04b94`](https://git.kernel.org/torvalds/c/73f576c04b94) (loose) | [mm] | memcontrol: fix cgroup creation failure after many small jobs |  | CONFIG_MEMCG=y in A37 | 3.10.0-837 |
| CANDIDATE | 4.7 | [`73f576c04b94`](https://git.kernel.org/torvalds/c/73f576c04b94) (loose) | [mm] | memcontrol: fix cgroup creation failure after many small jobs |  | CONFIG_MEMCG=y in A37 | 3.10.0-758 |
| CANDIDATE | 4.7 | [`e4568d380385`](https://git.kernel.org/torvalds/c/e4568d380385) (loose) | [mm] | meminit: always return a valid node from early_pfn_to_nid |  | generic code, tag [mm] | 3.10.0-481 |
| CANDIDATE | 4.7 | [`ef70b6f41cda`](https://git.kernel.org/torvalds/c/ef70b6f41cda) (loose) | [mm] | meminit: ensure node is online before checking whether pages are uninitialised |  | generic code, tag [mm] | 3.10.0-481 |
| CANDIDATE | 4.7 | [`4b50bcc7eda4`](https://git.kernel.org/torvalds/c/4b50bcc7eda4) | [mm] | mm: use phys_addr_t for reserve_bootmem_region() arguments |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.7 | [`4f996e234dad`](https://git.kernel.org/torvalds/c/4f996e234dad) | [mm] | percpu: fix synchronization between chunk->map_extend_work and chunk destruction | CVE-2016-4794 | generic code, tag [mm] | 3.10.0-485 |
| CANDIDATE | 4.7 | [`6710e594f71c`](https://git.kernel.org/torvalds/c/6710e594f71c) | [mm] | percpu: fix synchronization between synchronous map extension and chunk destruction | CVE-2016-4794 | generic code, tag [mm] | 3.10.0-485 |
| CANDIDATE | 4.8 | [`dcddffd41d3f`](https://git.kernel.org/torvalds/c/dcddffd41d3f) (loose) | [mm] | do not pass mm_struct into handle_mm_fault |  | generic code, tag [mm] | 3.10.0-795 |
| CANDIDATE | 4.8 | [`d72d9e2a5d7e`](https://git.kernel.org/torvalds/c/d72d9e2a5d7e) (loose) | [mm] | export filemap_check_errors() to modules |  | generic code, tag [mm] | 3.10.0-618 |
| CANDIDATE | 4.8 | [`91c6a05f72a9`](https://git.kernel.org/torvalds/c/91c6a05f72a9) (loose) | [mm] | faster kmalloc_array(), kcalloc() |  | generic code, tag [mm] | 3.10.0-979 |
| CANDIDATE | 4.8 | [`734537c9cb72`](https://git.kernel.org/torvalds/c/734537c9cb72) (loose) | [mm] | fix use-after-free if memory allocation failed in vma_adjust() |  | generic code, tag [mm] | 3.10.0-585 |
| CANDIDATE | 4.8 | [`f5509cc18daa`](https://git.kernel.org/torvalds/c/f5509cc18daa) (loose) | [mm] | Hardened usercopy |  | generic code, tag [mm] | 3.10.0-920 |
| CANDIDATE | 4.8 | [`4949148ad433`](https://git.kernel.org/torvalds/c/4949148ad433) | [mm] | mm: charge/uncharge kmemcg from generic page allocator paths |  | generic code, tag [mm] | 3.10.0-1075 |
| CANDIDATE | 4.8 | [`b385d21f27d8`](https://git.kernel.org/torvalds/c/b385d21f27d8) | [mm] | mm: delete unnecessary and unsafe init_tlb_ubc() |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.8 | [`11bd969fdefe`](https://git.kernel.org/torvalds/c/11bd969fdefe) (loose) | [mm] | silently skip readahead for DAX inodes |  | generic code, tag [mm] | 3.10.0-619 |
| CANDIDATE | 4.8 | [`ed18adc1cdd0`](https://git.kernel.org/torvalds/c/ed18adc1cdd0) (loose) | [mm] | SLUB hardened usercopy support |  | CONFIG_SLUB=y in A37 | 3.10.0-920 |
| CANDIDATE | 4.8 | [`94cd97af690d`](https://git.kernel.org/torvalds/c/94cd97af690d) | [mm] | usercopy: fix overlap check for kernel text |  | generic code, tag [mm] | 3.10.0-920 |
| CANDIDATE | 4.8 | [`8e1f74ea02cf`](https://git.kernel.org/torvalds/c/8e1f74ea02cf) | [mm] | usercopy: remove page-spanning test for now |  | generic code, tag [mm] | 3.10.0-920 |
| CANDIDATE | 4.9 | [`371a096edf43`](https://git.kernel.org/torvalds/c/371a096edf43) (loose) | [mm] | don't use radix tree writeback tags for pages in swap cache |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | 4.9 | [`3ddf40e8c319`](https://git.kernel.org/torvalds/c/3ddf40e8c319) (loose) | [mm] | filemap: fix mapping->nrpages double accounting in fuse |  | generic code, tag [mm] | 3.10.0-767 |
| CANDIDATE | 4.9 | [`87744ab3832b`](https://git.kernel.org/torvalds/c/87744ab3832b) (loose) | [mm] | fix cache mode tracking in vm_insert_mixed() |  | generic code, tag [mm] | 3.10.0-795 |
| CANDIDATE | 4.9 | [`7d06d9c9bd81`](https://git.kernel.org/torvalds/c/7d06d9c9bd81) (loose) | [mm] | Implement new pkey_mprotect() system call |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | 4.9 | [`89a2848381b5`](https://git.kernel.org/torvalds/c/89a2848381b5) (loose) | [mm] | memcontrol: do not recurse in direct reclaim |  | CONFIG_MEMCG=y in A37 | 3.10.0-549 |
| CANDIDATE | 4.9 | [`93c76b6b2faa`](https://git.kernel.org/torvalds/c/93c76b6b2faa) | [mm] | mm/percpu.c: correct max_distance calculation for pcpu_embed_first_chunk() |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.9 | [`9b7396624a7b`](https://git.kernel.org/torvalds/c/9b7396624a7b) | [mm] | mm/percpu.c: fix potential memory leakage for pcpu_embed_first_chunk() |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.9 | [`e780149bcd4b`](https://git.kernel.org/torvalds/c/e780149bcd4b) | [mm] | mm: fix set pageblock migratetype in deferred struct page init |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.9 | [`5d1904204c99`](https://git.kernel.org/torvalds/c/5d1904204c99) | [mm] | mremap: fix race between mremap() and page cleanning |  | generic code, tag [mm] | 3.10.0-903 |
| CANDIDATE | 4.9 | [`f7e2355f0f86`](https://git.kernel.org/torvalds/c/f7e2355f0f86) (loose) | [mm] | pagewalk: fix the comment for test_walk |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | 4.9 | [`9dcb8b685fc3`](https://git.kernel.org/torvalds/c/9dcb8b685fc3) (loose) | [mm] | remove per-zone hashtable of bitlock waitqueues |  | generic code, tag [mm] | 3.10.0-928 |
| CANDIDATE | 4.9 | [`72e2936c04f7`](https://git.kernel.org/torvalds/c/72e2936c04f7) (loose) | [mm] | remove unnecessary condition in remove_inode_hugepages |  | generic code, tag [mm] | 3.10.0-630 |
| CANDIDATE | 4.9 | [`9db4f36e82c2`](https://git.kernel.org/torvalds/c/9db4f36e82c2) (loose) | [mm] | remove unused variable in memory hotplug |  | generic code, tag [mm] | 3.10.0-928 |
| CANDIDATE | 4.9 | [`442486ec1096`](https://git.kernel.org/torvalds/c/442486ec1096) (loose) | [mm] | replace __access_remote_vm() write parameter with gup_flags |  | generic code, tag [mm] | 3.10.0-907 |
| CANDIDATE | 4.9 | [`f307ab6dcea0`](https://git.kernel.org/torvalds/c/f307ab6dcea0) (loose) | [mm] | replace access_process_vm() write parameter with gup_flags |  | generic code, tag [mm] | 3.10.0-907 |
| CANDIDATE | 4.9 | [`6347e8d5bcce`](https://git.kernel.org/torvalds/c/6347e8d5bcce) (loose) | [mm] | replace access_remote_vm() write parameter with gup_flags |  | generic code, tag [mm] | 3.10.0-907 |
| CANDIDATE | 4.9 | [`10d20bd25e06`](https://git.kernel.org/torvalds/c/10d20bd25e06) | [mm] | shmem: fix shm fallocate() list corruption |  | generic code, tag [mm] | 3.10.0-679 |
| CANDIDATE | 4.9 | [`6b53491598a4`](https://git.kernel.org/torvalds/c/6b53491598a4) (loose) | [mm] | swap: add swap_cluster_list |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | 4.9 | [`74d2fad1334d`](https://git.kernel.org/torvalds/c/74d2fad1334d) | [mm] | thp, dax: add thp_get_unmapped_area for pmd mappings |  | generic code, tag [mm] | 3.10.0-793 |
| CANDIDATE | 4.9 | [`21f54ddae449`](https://git.kernel.org/torvalds/c/21f54ddae449) | [mm] | Using BUG_ON() as an assert() is _never_ acceptable |  | generic code, tag [mm] | 3.10.0-767 |
| CANDIDATE | 4.9 | [`8f26e0b176f3`](https://git.kernel.org/torvalds/c/8f26e0b176f3) (loose) | [mm] | vma_merge: correct false positive from __vma_unlink->validate_mm_rb |  | generic code, tag [mm] | 3.10.0-585 |
| CANDIDATE | 4.9 | [`bf48438354a7`](https://git.kernel.org/torvalds/c/bf48438354a7) (loose) | [mm] | vmscan: get rid of throttle_vm_writeout |  | generic code, tag [mm] | 3.10.0-963 |
| CANDIDATE | 4.10 | [`4d09d0f45dd5`](https://git.kernel.org/torvalds/c/4d09d0f45dd5) (loose) | [mm] | add documentation for page fragment APIs |  | generic code, tag [mm] | 3.10.0-710 |
| CANDIDATE | 4.10 | [`097963959594`](https://git.kernel.org/torvalds/c/097963959594) (loose) | [mm] | add follow_pte_pmd() |  | generic code, tag [mm] | 3.10.0-793 |
| CANDIDATE | 4.10 | [`44fdffd70504`](https://git.kernel.org/torvalds/c/44fdffd70504) (loose) | [mm] | add support for releasing multiple instances of a page |  | generic code, tag [mm] | 3.10.0-710 |
| CANDIDATE | 4.10 | [`3917048d4572`](https://git.kernel.org/torvalds/c/3917048d4572) (loose) | [mm] | allow full handling of COW faults in ->fault handlers |  | generic code, tag [mm] | 3.10.0-793 |
| CANDIDATE | 4.10 | [`a19e25536ed3`](https://git.kernel.org/torvalds/c/a19e25536ed3) (loose) | [mm] | change return values of finish_mkwrite_fault() |  | generic code, tag [mm] | 3.10.0-793 |
| CANDIDATE | 4.10 | [`cae1240257d9`](https://git.kernel.org/torvalds/c/cae1240257d9) (loose) | [mm] | export follow_pte() |  | generic code, tag [mm] | 3.10.0-793 |
| CANDIDATE | 4.10 | [`1db175428ee3`](https://git.kernel.org/torvalds/c/1db175428ee3) | [mm] | ext4: Simplify DAX fault path |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-793 |
| CANDIDATE | 4.10 | [`9118c0cbd442`](https://git.kernel.org/torvalds/c/9118c0cbd442) (loose) | [mm] | factor out functionality to finish page faults |  | generic code, tag [mm] | 3.10.0-793 |
| CANDIDATE | 4.10 | [`f931ab479dd2`](https://git.kernel.org/torvalds/c/f931ab479dd2) (loose) | [mm] | fix devm_memremap_pages crash, use mem_hotplug_{begin, done} |  | generic code, tag [mm] | 3.10.0-675 |
| CANDIDATE | 4.10 | [`c6dcf52c23d2`](https://git.kernel.org/torvalds/c/c6dcf52c23d2) (loose) | [mm] | Invalidate DAX radix tree entries only if appropriate |  | generic code, tag [mm] | 3.10.0-793 |
| CANDIDATE | 4.10 | [`82b0f8c39a38`](https://git.kernel.org/torvalds/c/82b0f8c39a38) (loose) | [mm] | join struct fault_env and vm_fault |  | generic code, tag [mm] | 3.10.0-795 |
| CANDIDATE | 4.10 | [`d51e9894d274`](https://git.kernel.org/torvalds/c/d51e9894d274) | [mm] | mm/mempolicy.c: do not put mempolicy before using its nodemask |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.10 | [`8f6066049c54`](https://git.kernel.org/torvalds/c/8f6066049c54) | [mm] | mm/percpu.c: fix panic triggered by BUG_ON() falsely |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.10 | [`b5bc66b71310`](https://git.kernel.org/torvalds/c/b5bc66b71310) | [mm] | mm: update mmu_gather range correctly |  | generic code, tag [mm] | 3.10.0-1017 |
| CANDIDATE | 4.10 | [`b1aa812b2108`](https://git.kernel.org/torvalds/c/b1aa812b2108) (loose) | [mm] | move handling of COW faults into DAX code |  | generic code, tag [mm] | 3.10.0-793 |
| CANDIDATE | 4.10 | [`38b8cb7fbb89`](https://git.kernel.org/torvalds/c/38b8cb7fbb89) (loose) | [mm] | pass vm_fault structure into do_page_mkwrite() |  | generic code, tag [mm] | 3.10.0-793 |
| CANDIDATE | 4.10 | [`3ca45a46f8af`](https://git.kernel.org/torvalds/c/3ca45a46f8af) | [mm] | percpu: ensure the requested alignment is power of two |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.10 | [`20f664aabeb8`](https://git.kernel.org/torvalds/c/20f664aabeb8) (loose) | [mm] | pmd dirty emulation in page fault handler |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | 4.10 | [`66a6197c1185`](https://git.kernel.org/torvalds/c/66a6197c1185) (loose) | [mm] | provide helper for finishing mkwrite faults |  | generic code, tag [mm] | 3.10.0-793 |
| CANDIDATE | 4.10 | [`8c2dd3e4a4ba`](https://git.kernel.org/torvalds/c/8c2dd3e4a4ba) (loose) | [mm] | rename __alloc_page_frag to page_frag_alloc and __free_page_frag to page_frag_free |  | generic code, tag [mm] | 3.10.0-710 |
| CANDIDATE | 4.10 | [`2976db801853`](https://git.kernel.org/torvalds/c/2976db801853) (loose) | [mm] | rename __page_frag functions to __page_frag_cache, drop order from drain |  | generic code, tag [mm] | 3.10.0-710 |
| CANDIDATE | 4.10 | [`eac0337af12b`](https://git.kernel.org/torvalds/c/eac0337af12b) | [mm] | slab, workqueue: remove keventd_up() usage |  | generic code, tag [mm] | 3.10.0-981 |
| CANDIDATE | 4.10 | [`b936887e8739`](https://git.kernel.org/torvalds/c/b936887e8739) (loose) | [mm] | workingset: turn shadow node shrinker bugs into warnings |  | generic code, tag [mm] | 3.10.0-709 |
| CANDIDATE | 4.11 | [`55adc1d05dca`](https://git.kernel.org/torvalds/c/55adc1d05dca) (loose) | [mm] | add private lock to serialize memory hotplug operations |  | generic code, tag [mm] | 3.10.0-675 |
| CANDIDATE | 4.11 | [`b5d24fda9c3d`](https://git.kernel.org/torvalds/c/b5d24fda9c3d) (loose) | [mm] | devm_memremap_pages: hold device_hotplug lock over mem_hotplug_{begin, done} |  | generic code, tag [mm] | 3.10.0-675 |
| CANDIDATE | 4.11 | [`def5efe03765`](https://git.kernel.org/torvalds/c/def5efe03765) (loose) | [mm] | madvise: fail with ENOMEM when splitting vma will hit max_map_count |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | 4.11 | [`e02dc017c303`](https://git.kernel.org/torvalds/c/e02dc017c303) | [mm] | mm/page_alloc: fix nodes for reclaim in fast path |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.11 | [`ca96b6253410`](https://git.kernel.org/torvalds/c/ca96b6253410) | [mm] | mm: alloc_contig_range: allow to specify GFP mask |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.11 | [`dd8416c47715`](https://git.kernel.org/torvalds/c/dd8416c47715) | [mm] | mm: do not access page->mapping directly on page_endio |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.11 | [`1276ad68e249`](https://git.kernel.org/torvalds/c/1276ad68e249) | [mm] | mm: vmscan: scan dirty pages even in laptop mode |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.11 | [`175ad4f1e7a2`](https://git.kernel.org/torvalds/c/175ad4f1e7a2) (loose) | [mm] | mprotect: use pmd_trans_unstable instead of taking the pmd_lock |  | generic code, tag [mm] | 3.10.0-631 |
| CANDIDATE | 4.11 | [`b92df1de5d28`](https://git.kernel.org/torvalds/c/b92df1de5d28) (loose) | [mm] | page_alloc: skip over regions of invalid pfns where possible |  | generic code, tag [mm] | 3.10.0-660 |
| CANDIDATE | 4.11 | [`320661b08dd6`](https://git.kernel.org/torvalds/c/320661b08dd6) | [mm] | percpu: acquire pcpu_lock when updating pcpu_nr_empty_pop_pages |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.11 | [`8a1df543de8a`](https://git.kernel.org/torvalds/c/8a1df543de8a) | [mm] | percpu: remove unused chunk_alloc parameter from pcpu_get_pages() |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.11 | [`c791ace1e747`](https://git.kernel.org/torvalds/c/c791ace1e747) (loose) | [mm] | replace FAULT_FLAG_SIZE with parameter to huge_fault |  | generic code, tag [mm] | 3.10.0-795 |
| CANDIDATE | 4.11 | [`093b995e3b55`](https://git.kernel.org/torvalds/c/093b995e3b55) (loose) | [mm] | swap: Remove WARN_ON_ONCE() in free_swap_slot() |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | 4.11 | [`d3213e8fd4b0`](https://git.kernel.org/torvalds/c/d3213e8fd4b0) | [mm] | tracing: add __print_flags_u64() |  | CONFIG_FTRACE=y in A37 | 3.10.0-793 |
| CANDIDATE | 4.11 | [`3fc21924100b`](https://git.kernel.org/torvalds/c/3fc21924100b) (loose) | [mm] | validate device_hotplug is held for memory hotplug |  | generic code, tag [mm] | 3.10.0-675 |
| CANDIDATE | 4.12 | [`70feee0e1ef3`](https://git.kernel.org/torvalds/c/70feee0e1ef3) | [mm] | mlock: fix mlock count can not decrease in race condition |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | 4.12 | [`7258ae5c5a2c`](https://git.kernel.org/torvalds/c/7258ae5c5a2c) | [mm] | mm/memory-failure.c: use compound_head() flags for huge pages |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.12 | [`30809f559a0d`](https://git.kernel.org/torvalds/c/30809f559a0d) | [mm] | mm/migrate: fix refcount handling when !hugepage_migration_supported() |  | generic code, tag [mm] | 3.10.0-1084 |
| CANDIDATE | 4.12 | [`3c226c637b69`](https://git.kernel.org/torvalds/c/3c226c637b69) | [mm] | mm: numa: avoid waiting on freed migrated pages |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.12 | [`6c5ab6511f71`](https://git.kernel.org/torvalds/c/6c5ab6511f71) (loose) | [mm] | support __GFP_REPEAT in kvmalloc_node for >32kB |  | generic code, tag [mm] | 3.10.0-812 |
| CANDIDATE | 4.12 | [`322b8afe4a65`](https://git.kernel.org/torvalds/c/322b8afe4a65) (loose) | [mm] | swap: Fix a race in free_swap_and_cache() |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | 4.12 | [`54f180d3c181`](https://git.kernel.org/torvalds/c/54f180d3c181) (loose) | [mm] | swap: use kvzalloc to allocate some swap data structures |  | generic code, tag [mm] | 3.10.0-812 |
| CANDIDATE | 4.12 | [`96dc4f9fb646`](https://git.kernel.org/torvalds/c/96dc4f9fb646) | [mm] | usercopy: Move enum for arch_within_stack_frames() |  | generic code, tag [mm] | 3.10.0-920 |
| CANDIDATE | 4.12 | [`1f5307b1e094`](https://git.kernel.org/torvalds/c/1f5307b1e094) (loose) | [mm] | vmalloc: properly track vmalloc users |  | generic code, tag [mm] | 3.10.0-812 |
| CANDIDATE | 4.13 | [`baabda261424`](https://git.kernel.org/torvalds/c/baabda261424) (loose) | [mm] | always enable thp for dax mappings |  | generic code, tag [mm] | 3.10.0-849 |
| CANDIDATE | 4.13 | [`99baac21e458`](https://git.kernel.org/torvalds/c/99baac21e458) (loose) | [mm] | fix MADV_[FREE\|DONTNEED] TLB flush miss problem |  | generic code, tag [mm] | 3.10.0-1017 |
| CANDIDATE | 4.13 | [`f93ae3646209`](https://git.kernel.org/torvalds/c/f93ae3646209) | [mm] | fs/userfaultfd.c: drop dead code |  | generic code, tag [mm] | 3.10.0-781 |
| CANDIDATE | 4.13 | [`16981d763501`](https://git.kernel.org/torvalds/c/16981d763501) (loose) | [mm] | improve readability of transparent_hugepage_enabled() |  | generic code, tag [mm] | 3.10.0-849 |
| CANDIDATE | 4.13 | [`2be7cfed995e`](https://git.kernel.org/torvalds/c/2be7cfed995e) | [mm] | mm/hugetlb.c: __get_user_pages ignores certain follow_hugetlb_page errors | CVE-2019-11487 | generic code, tag [mm] | 3.10.0-1123 |
| CANDIDATE | 4.13 | [`561b5e0709e4`](https://git.kernel.org/torvalds/c/561b5e0709e4) | [mm] | mm/mmap.c: do not blow on PROT_NONE MAP_FIXED holes in the stack |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.13 | [`cf8e0fedf078`](https://git.kernel.org/torvalds/c/cf8e0fedf078) | [mm] | mm/zsmalloc: simplify zs_max_alloc_size handling |  | CONFIG_ZSMALLOC=y in A37 | 3.10.0-781 |
| CANDIDATE | 4.13 | [`243abd5b7803`](https://git.kernel.org/torvalds/c/243abd5b7803) | [mm] | mm: hugetlb: prevent reuse of hwpoisoned free hugepages |  | generic code, tag [mm] | 3.10.0-1146 |
| CANDIDATE | 4.13 | [`c3114a84f7f9`](https://git.kernel.org/torvalds/c/c3114a84f7f9) | [mm] | mm: hugetlb: soft-offline: dissolve source hugepage after successful migration |  | generic code, tag [mm] | 3.10.0-1146 |
| CANDIDATE | 4.13 | [`b37ff71cc626`](https://git.kernel.org/torvalds/c/b37ff71cc626) | [mm] | mm: hwpoison: change PageHWPoison behavior on hugetlb pages |  | generic code, tag [mm] | 3.10.0-1146 |
| CANDIDATE | 4.13 | [`0a2dd266dd6b`](https://git.kernel.org/torvalds/c/0a2dd266dd6b) | [mm] | mm: make tlb_flush_pending global |  | generic code, tag [mm] | 3.10.0-1017 |
| CANDIDATE | 4.13 | [`0a2c40487f3e`](https://git.kernel.org/torvalds/c/0a2c40487f3e) | [mm] | mm: migrate: fix barriers around tlb_flush_pending |  | generic code, tag [mm] | 3.10.0-1017 |
| CANDIDATE | 4.13 | [`16af97dc5a89`](https://git.kernel.org/torvalds/c/16af97dc5a89) | [mm] | mm: migrate: prevent racy access to tlb_flush_pending |  | generic code, tag [mm] | 3.10.0-1017 |
| CANDIDATE | 4.13 | [`d4a3a60b37bf`](https://git.kernel.org/torvalds/c/d4a3a60b37bf) | [mm] | mm: soft-offline: dissolve free hugepage if soft-offlined |  | generic code, tag [mm] | 3.10.0-1146 |
| CANDIDATE | 4.13 | [`3ea277194daa`](https://git.kernel.org/torvalds/c/3ea277194daa) (loose) | [mm] | mprotect: flush TLB if potentially racing with a parallel reclaim leaving stale TLB entries |  | generic code, tag [mm] | 3.10.0-1017 |
| CANDIDATE | 4.13 | [`5ccd30e40e73`](https://git.kernel.org/torvalds/c/5ccd30e40e73) | [mm] | percpu: add missing lockdep_assert_held to func pcpu_free_area |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.13 | [`df95e795a722`](https://git.kernel.org/torvalds/c/df95e795a722) | [mm] | percpu: add tracepoint support for percpu memory |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.13 | [`30a5b5367ef9`](https://git.kernel.org/torvalds/c/30a5b5367ef9) | [mm] | percpu: expose statistics about percpu memory via debugfs |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.13 | [`303abfdf76ea`](https://git.kernel.org/torvalds/c/303abfdf76ea) | [mm] | percpu: fix early calls for spinlock in pcpu_stats |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.13 | [`e3efe3db932b`](https://git.kernel.org/torvalds/c/e3efe3db932b) | [mm] | percpu: fix static checker warnings in pcpu_destroy_chunk |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.13 | [`8fa3ed8014ac`](https://git.kernel.org/torvalds/c/8fa3ed8014ac) | [mm] | percpu: migrate percpu data structures to internal header |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.13 | [`11df02bf9bc1`](https://git.kernel.org/torvalds/c/11df02bf9bc1) | [mm] | percpu: resolve err may not be initialized in pcpu_alloc |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.13 | [`56236a59556c`](https://git.kernel.org/torvalds/c/56236a59556c) (loose) | [mm] | refactor TLB gathering API |  | generic code, tag [mm] | 3.10.0-1017 |
| CANDIDATE | 4.13 | [`a9b802500ebb`](https://git.kernel.org/torvalds/c/a9b802500ebb) | [mm] | revert "mm: numa: defer TLB flush for THP migration as long as possible" |  | generic code, tag [mm] | 3.10.0-1037 |
| CANDIDATE | 4.13 | [`9d95aa4bada2`](https://git.kernel.org/torvalds/c/9d95aa4bada2) | [mm] | userfaultfd_zeropage: return -ENOSPC in case mm has gone |  | generic code, tag [mm] | 3.10.0-781 |
| CANDIDATE | 4.14 | [`b2770da64254`](https://git.kernel.org/torvalds/c/b2770da64254) (loose) | [mm] | add vm_insert_mixed_mkwrite() |  | generic code, tag [mm] | 3.10.0-912 |
| CANDIDATE | 4.14 | [`ab1b597ee0e4`](https://git.kernel.org/torvalds/c/ab1b597ee0e4) (loose) | [mm] | devm_memremap_pages: use multi-order radix for ZONE_DEVICE lookups |  | generic code, tag [mm] | 3.10.0-817 |
| CANDIDATE | 4.14 | [`8606a1a94da5`](https://git.kernel.org/torvalds/c/8606a1a94da5) (loose) | [mm] | kvfree the swap cluster info if the swap file is unsatisfactory |  | generic code, tag [mm] | 3.10.0-932 |
| CANDIDATE | 4.14 | [`19bfbe22f59a`](https://git.kernel.org/torvalds/c/19bfbe22f59a) | [mm] | mm, hugetlb, soft_offline: save compound page order before page migration |  | generic code, tag [mm] | 3.10.0-1146 |
| CANDIDATE | 4.14 | [`2628bd6fc052`](https://git.kernel.org/torvalds/c/2628bd6fc052) | [mm] | mm, swap: fix race between swap count continuation operations |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.14 | [`dba58d3b8c50`](https://git.kernel.org/torvalds/c/dba58d3b8c50) | [mm] | mm/mremap: fail map duplication attempts for private mappings |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.14 | [`f113e64121ba`](https://git.kernel.org/torvalds/c/f113e64121ba) | [mm] | mm/vmstat.c: fix wrong comment |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.14 | [`4647706ebeee`](https://git.kernel.org/torvalds/c/4647706ebeee) | [mm] | mm: always flush VMA ranges affected by zap_page_range |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.14 | [`57148a64e823`](https://git.kernel.org/torvalds/c/57148a64e823) | [mm] | mm: meminit: mark init_reserved_page as __meminit |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.14 | [`9b6e63cbf85b`](https://git.kernel.org/torvalds/c/9b6e63cbf85b) (loose) | [mm] | page_alloc: add scheduling point to memmap_init_zone |  | generic code, tag [mm] | 3.10.0-942 |
| CANDIDATE | 4.14 | [`86b442fbce74`](https://git.kernel.org/torvalds/c/86b442fbce74) | [mm] | percpu: add first_bit to keep track of the first free in the bitmap |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`0ea7eeec24be`](https://git.kernel.org/torvalds/c/0ea7eeec24be) (loose) | [mm] | percpu: add support for __GFP_NOWARN flag |  | generic code, tag [mm] | 3.10.0-1031 |
| CANDIDATE | 4.14 | [`02459164a27e`](https://git.kernel.org/torvalds/c/02459164a27e) | [mm] | percpu: change the format for percpu_stats output |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`8ab16c43ea79`](https://git.kernel.org/torvalds/c/8ab16c43ea79) | [mm] | percpu: change the number of pages marked in the first_chunk pop bitmap |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`560f2c236668`](https://git.kernel.org/torvalds/c/560f2c236668) | [mm] | percpu: combine percpu address checks |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`6b9d7c8e8ecf`](https://git.kernel.org/torvalds/c/6b9d7c8e8ecf) | [mm] | percpu: end chunk area maps page aligned for the populated bitmap |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`6b9b6f39946c`](https://git.kernel.org/torvalds/c/6b9b6f39946c) | [mm] | percpu: expose pcpu_nr_empty_pop_pages in pcpu_stats |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`1fa4df3e6889`](https://git.kernel.org/torvalds/c/1fa4df3e6889) | [mm] | percpu: fix iteration to prevent skipping over block |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`2e08d20d777e`](https://git.kernel.org/torvalds/c/2e08d20d777e) | [mm] | percpu: fix starting offset for chunk statistics traversal |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`91e914c5a498`](https://git.kernel.org/torvalds/c/91e914c5a498) | [mm] | percpu: generalize bitmap (un)populated iterators |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`d2f3c3849461`](https://git.kernel.org/torvalds/c/d2f3c3849461) | [mm] | percpu: increase minimum percpu allocation size and align first regions |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`ca460b3c9627`](https://git.kernel.org/torvalds/c/ca460b3c9627) | [mm] | percpu: introduce bitmap metadata blocks |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`0cecf50cf00f`](https://git.kernel.org/torvalds/c/0cecf50cf00f) | [mm] | percpu: introduce nr_empty_pop_pages to help empty page accounting |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`e22667056644`](https://git.kernel.org/torvalds/c/e22667056644) | [mm] | percpu: introduce start_offset to pcpu_chunk |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`268625a6f9df`](https://git.kernel.org/torvalds/c/268625a6f9df) | [mm] | percpu: keep track of the best offset for contig hints |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`c0ebfdc3fefd`](https://git.kernel.org/torvalds/c/c0ebfdc3fefd) | [mm] | percpu: modify base_addr to be region specific |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`cd6a884d0955`](https://git.kernel.org/torvalds/c/cd6a884d0955) | [mm] | percpu: pcpu-stats change void buffer to int buffer |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`4af1e6fbd8e4`](https://git.kernel.org/torvalds/c/4af1e6fbd8e4) | [mm] | percpu: remove has_reserved from pcpu_chunk |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`40064aeca35c`](https://git.kernel.org/torvalds/c/40064aeca35c) | [mm] | percpu: replace area map allocator with bitmap |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`fb29a2cc6b06`](https://git.kernel.org/torvalds/c/fb29a2cc6b06) | [mm] | percpu: setup_first_chunk enforce dynamic region must exist |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`b9c39442ceff`](https://git.kernel.org/torvalds/c/b9c39442ceff) | [mm] | percpu: setup_first_chunk remove dyn_size and consolidate logic |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`0c4169c3d117`](https://git.kernel.org/torvalds/c/0c4169c3d117) | [mm] | percpu: setup_first_chunk rename schunk/dchunk to chunk |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`13f966373f92`](https://git.kernel.org/torvalds/c/13f966373f92) | [mm] | percpu: skip chunks if the alloc does not fit in the contig hint |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`10edf5b0b6e2`](https://git.kernel.org/torvalds/c/10edf5b0b6e2) | [mm] | percpu: unify allocation of schunk and dchunk |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`fc3043345a64`](https://git.kernel.org/torvalds/c/fc3043345a64) | [mm] | percpu: update alloc path to only scan if contig hints are broken |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`b185cd0dc61c`](https://git.kernel.org/torvalds/c/b185cd0dc61c) | [mm] | percpu: update free path to take advantage of contig hints |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`5e81ee3e6a79`](https://git.kernel.org/torvalds/c/5e81ee3e6a79) | [mm] | percpu: update header to contain bitmap allocator explanation |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`b4c2116cfae6`](https://git.kernel.org/torvalds/c/b4c2116cfae6) | [mm] | percpu: update pcpu_find_block_fit to use an iterator |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`9c01516278ef`](https://git.kernel.org/torvalds/c/9c01516278ef) | [mm] | percpu: update the header comment and pcpu_build_alloc_info comments |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`525ca84daec0`](https://git.kernel.org/torvalds/c/525ca84daec0) | [mm] | percpu: use metadata blocks to update the chunk contig hint |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.14 | [`0f0796945614`](https://git.kernel.org/torvalds/c/0f0796945614) | [mm] | shmem: introduce shmem_inode_acct_block |  | generic code, tag [mm] | 3.10.0-781 |
| CANDIDATE | 4.14 | [`cbc65df240c1`](https://git.kernel.org/torvalds/c/cbc65df240c1) (loose) | [mm] | swap: add swap readahead hit statistics |  | generic code, tag [mm] | 3.10.0-1025 |
| CANDIDATE | 4.14 | [`d9bfcfdc41e8`](https://git.kernel.org/torvalds/c/d9bfcfdc41e8) (loose) | [mm] | swap: add sysfs interface for VMA based swap readahead |  | generic code, tag [mm] | 3.10.0-1025 |
| CANDIDATE | 4.14 | [`c4fa63092f21`](https://git.kernel.org/torvalds/c/c4fa63092f21) (loose) | [mm] | swap: fix swap readahead marking |  | generic code, tag [mm] | 3.10.0-1025 |
| CANDIDATE | 4.14 | [`61b639723be5`](https://git.kernel.org/torvalds/c/61b639723be5) (loose) | [mm] | swap: use page-cluster as max window of VMA based swap readahead |  | generic code, tag [mm] | 3.10.0-1025 |
| CANDIDATE | 4.14 | [`ec560175c0b6`](https://git.kernel.org/torvalds/c/ec560175c0b6) (loose) | [mm] | swap: VMA based swap readahead |  | generic code, tag [mm] | 3.10.0-1025 |
| CANDIDATE | 4.14 | [`db73ee0d4637`](https://git.kernel.org/torvalds/c/db73ee0d4637) (loose) | [mm] | vmscan: do not loop on too_many_isolated for ever |  | generic code, tag [mm] | 3.10.0-955 |
| CANDIDATE | 4.15 | [`4da2ce250f98`](https://git.kernel.org/torvalds/c/4da2ce250f98) (loose) | [mm] | distinguish CMA and MOVABLE isolation in has_unmovable_pages() |  | generic code, tag [mm] | 3.10.0-989 |
| CANDIDATE | 4.15 | [`d7b236e10ced`](https://git.kernel.org/torvalds/c/d7b236e10ced) (loose) | [mm] | drop migrate type checks from has_unmovable_pages |  | generic code, tag [mm] | 3.10.0-989 |
| CANDIDATE | 4.15 | [`2bb6d2837083`](https://git.kernel.org/torvalds/c/2bb6d2837083) (loose) | [mm] | introduce get_user_pages_longterm |  | generic code, tag [mm] | 3.10.0-928 |
| CANDIDATE | 4.15 | [`72b03fcd5d51`](https://git.kernel.org/torvalds/c/72b03fcd5d51) (loose) | [mm] | mlock: remove lru_add_drain_all() |  | generic code, tag [mm] | 3.10.0-953 |
| CANDIDATE | 4.15 | [`31383c6865a5`](https://git.kernel.org/torvalds/c/31383c6865a5) | [mm] | mm, hugetlbfs: introduce ->split() to vm_operations_struct |  | generic code, tag [mm] | 3.10.0-837 |
| CANDIDATE | 4.15 | [`fcdaf842bd8f`](https://git.kernel.org/torvalds/c/fcdaf842bd8f) | [mm] | mm, sparse: do not swamp log with huge vmemmap allocation failures |  | generic code, tag [mm] | 3.10.0-1127.1 |
| CANDIDATE | 4.15 | [`a2e16731728a`](https://git.kernel.org/torvalds/c/a2e16731728a) | [mm] | mm/swap_slots.c: fix race conditions in swap_slots cache init |  | generic code, tag [mm] | 3.10.0-1137 |
| CANDIDATE | 4.15 | [`0a7f682d0465`](https://git.kernel.org/torvalds/c/0a7f682d0465) | [mm] | mm: do not rely on preempt_count in print_vma_addr |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.15 | [`d7ab3672c3ff`](https://git.kernel.org/torvalds/c/d7ab3672c3ff) (loose) | [mm] | page_alloc: fail has_unmovable_pages when seeing reserved pages |  | generic code, tag [mm] | 3.10.0-989 |
| CANDIDATE | 4.16 | [`50fd2f298bef`](https://git.kernel.org/torvalds/c/50fd2f298bef) (loose) | [mm] | alsa: new primitive: vmemdup_user() |  | CONFIG_SND=y in A37 | 3.10.0-1019 |
| CANDIDATE | 4.16 | [`eb8045335c70`](https://git.kernel.org/torvalds/c/eb8045335c70) (loose) | [mm] | merge vmem_altmap_alloc into altmap_alloc_block_buf |  | generic code, tag [mm] | 3.10.0-928 |
| CANDIDATE | 4.16 | [`8970a63e965b`](https://git.kernel.org/torvalds/c/8970a63e965b) | [mm] | mm/mempolicy.c: avoid use uninitialized preferred_node |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.16 | [`f52ba1fef7b9`](https://git.kernel.org/torvalds/c/f52ba1fef7b9) | [mm] | mm: Allow to kill tasks doing pcpu_alloc() and waiting for pcpu_balance_workfn() |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.16 | [`69d763fc6d3a`](https://git.kernel.org/torvalds/c/69d763fc6d3a) | [mm] | mm: pin address_space before dereferencing it while isolating an LRU page |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.16 | [`24e6d5a59ac7`](https://git.kernel.org/torvalds/c/24e6d5a59ac7) (loose) | [mm] | pass the vmem_altmap to arch_add_memory and __add_pages |  | generic code, tag [mm] | 3.10.0-928 |
| CANDIDATE | 4.16 | [`da024512a1fa`](https://git.kernel.org/torvalds/c/da024512a1fa) (loose) | [mm] | pass the vmem_altmap to arch_remove_memory and __remove_pages |  | generic code, tag [mm] | 3.10.0-928 |
| CANDIDATE | 4.16 | [`a99583e780c7`](https://git.kernel.org/torvalds/c/a99583e780c7) (loose) | [mm] | pass the vmem_altmap to memmap_init_zone |  | generic code, tag [mm] | 3.10.0-928 |
| CANDIDATE | 4.16 | [`24b6d4164348`](https://git.kernel.org/torvalds/c/24b6d4164348) (loose) | [mm] | pass the vmem_altmap to vmemmap_free |  | generic code, tag [mm] | 3.10.0-928 |
| CANDIDATE | 4.16 | [`7b73d978a5d0`](https://git.kernel.org/torvalds/c/7b73d978a5d0) (loose) | [mm] | pass the vmem_altmap to vmemmap_populate |  | generic code, tag [mm] | 3.10.0-928 |
| CANDIDATE | 4.16 | [`accd4f36a7d1`](https://git.kernel.org/torvalds/c/accd4f36a7d1) | [mm] | percpu: add a schedule point in pcpu_balance_workfn() |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.16 | [`71546d100422`](https://git.kernel.org/torvalds/c/71546d100422) | [mm] | percpu: include linux/sched.h for cond_resched() |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.16 | [`3e04040df6d4`](https://git.kernel.org/torvalds/c/3e04040df6d4) | [mm] | revert "mm/page_alloc: fix memmap_init_zone pageblock alignment" |  | generic code, tag [mm] | 3.10.0-1160.8.1 |
| CANDIDATE | 4.16 | [`a8fc357b2875`](https://git.kernel.org/torvalds/c/a8fc357b2875) (loose) | [mm] | split altmap memory map allocation from normal case |  | generic code, tag [mm] | 3.10.0-928 |
| CANDIDATE | 4.16 | [`80b1f41c0957`](https://git.kernel.org/torvalds/c/80b1f41c0957) (loose) | [mm] | split deferred_init_range into initializing and freeing parts |  | generic code, tag [mm] | 3.10.0-899 |
| CANDIDATE | 4.17 | [`c9e97a1997fb`](https://git.kernel.org/torvalds/c/c9e97a1997fb) (loose) | [mm] | initialize pages on demand during boot |  | generic code, tag [mm] | 3.10.0-899 |
| CANDIDATE | 4.17 | [`abc1be13fd11`](https://git.kernel.org/torvalds/c/abc1be13fd11) | [mm] | mm/filemap.c: fix NULL pointer in page_cache_tree_insert() |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.17 | [`145e1a71e090`](https://git.kernel.org/torvalds/c/145e1a71e090) | [mm] | mm: fix the NULL mapping case in __isolate_lru_page() |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.17 | [`eaf649ebc3ac`](https://git.kernel.org/torvalds/c/eaf649ebc3ac) | [mm] | mm: swap: clean up swap readahead |  | generic code, tag [mm] | 3.10.0-1116 |
| CANDIDATE | 4.17 | [`be83bbf80682`](https://git.kernel.org/torvalds/c/be83bbf80682) | [mm] | mmap: introduce sane default mmap limits |  | generic code, tag [mm] | 3.10.0-1160.12.1 |
| CANDIDATE | 4.17 | [`423913ad4ae5`](https://git.kernel.org/torvalds/c/423913ad4ae5) | [mm] | mmap: relax file size limit for regular files |  | generic code, tag [mm] | 3.10.0-1160.12.1 |
| CANDIDATE | 4.17 | [`a06ad633a37c`](https://git.kernel.org/torvalds/c/a06ad633a37c) | [mm] | swap: divide-by-zero when zero length swap file on ssd |  | generic code, tag [mm] | 3.10.0-932 |
| CANDIDATE | 4.18 | [`2bdce74412c2`](https://git.kernel.org/torvalds/c/2bdce74412c2) (loose) | [mm] | fix devmem_is_allowed() for sub-page System RAM intersections |  | generic code, tag [mm] | 3.10.0-942 |
| CANDIDATE | 4.18 | [`e76384884344`](https://git.kernel.org/torvalds/c/e76384884344) (loose) | [mm] | introduce MEMORY_DEVICE_FS_DAX and CONFIG_DEV_PAGEMAP_OPS |  | generic code, tag [mm] | 3.10.0-928 |
| CANDIDATE | 4.18 | [`955c97f0859a`](https://git.kernel.org/torvalds/c/955c97f0859a) | [mm] | mm/swapfile.c: fix swap_count comment about nonexistent SWAP_HAS_CONT |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.18 | [`37a4094e828f`](https://git.kernel.org/torvalds/c/37a4094e828f) | [mm] | mremap: remove LATENCY_LIMIT from mremap to reduce the number of TLB shootdowns |  | generic code, tag [mm] | 3.10.0-1123.1 |
| CANDIDATE | 4.18 | [`49b7f8983aa7`](https://git.kernel.org/torvalds/c/49b7f8983aa7) (loose) | [mm] | Use overflow helpers in kmalloc_array*() |  | generic code, tag [mm] | 3.10.0-979 |
| CANDIDATE | 4.19 | [`62ec0d8c4f33`](https://git.kernel.org/torvalds/c/62ec0d8c4f33) (loose) | [mm] | fix BUG_ON() in vmf_insert_pfn_pud() from VM_MIXEDMAP removal |  | generic code, tag [mm] | 3.10.0-1034 |
| CANDIDATE | 4.19 | [`d41aa5252394`](https://git.kernel.org/torvalds/c/d41aa5252394) (loose) | [mm] | madvise(madv_dodump): allow hugetlbfs pages |  | generic code, tag [mm] | 3.10.0-973 |
| CANDIDATE | 4.19 | [`8de7ecc6483b`](https://git.kernel.org/torvalds/c/8de7ecc6483b) | [mm] | memcg: reduce memcg tree traversals for stats collection |  | CONFIG_MEMCG=y in A37 | 3.10.0-1126.2 |
| CANDIDATE | 4.19 | [`2fa147bdbf67`](https://git.kernel.org/torvalds/c/2fa147bdbf67) | [mm] | mm, dev_pagemap: Do not clear ->mapping on final put |  | generic code, tag [mm] | 3.10.0-1077 |
| CANDIDATE | 4.19 | [`86a66810baa8`](https://git.kernel.org/torvalds/c/86a66810baa8) | [mm] | mm, madvise_inject_error: Disable MADV_SOFT_OFFLINE for ZONE_DEVICE pages |  | generic code, tag [mm] | 3.10.0-1077 |
| CANDIDATE | 4.19 | [`23e7b5c2e271`](https://git.kernel.org/torvalds/c/23e7b5c2e271) | [mm] | mm, madvise_inject_error: Let memory_failure() optionally take a page reference |  | generic code, tag [mm] | 3.10.0-1077 |
| CANDIDATE | 4.19 | [`ae1139ece126`](https://git.kernel.org/torvalds/c/ae1139ece126) | [mm] | mm, memory_failure: Collect mapping size in collect_procs() |  | generic code, tag [mm] | 3.10.0-1077 |
| CANDIDATE | 4.19 | [`6100e34b2526`](https://git.kernel.org/torvalds/c/6100e34b2526) | [mm] | mm, memory_failure: Teach memory_failure() about dev_pagemap pages |  | generic code, tag [mm] | 3.10.0-1077 |
| CANDIDATE | 4.19 | [`db7ddef30112`](https://git.kernel.org/torvalds/c/db7ddef30112) (loose) | [mm] | move tlb_table_flush to tlb_flush_mmu_free |  | generic code, tag [mm] | 3.10.0-1050 |
| CANDIDATE | 4.19 | [`eb66ae030829`](https://git.kernel.org/torvalds/c/eb66ae030829) | [mm] | mremap: properly flush TLB before releasing the page | CVE-2018-18281 | generic code, tag [mm] | 3.10.0-972 |
| CANDIDATE | 4.19 | [`6685b357363b`](https://git.kernel.org/torvalds/c/6685b357363b) | [mm] | percpu: stop leaking bitmap metadata blocks |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 4.20 | [`873d7bcfd066`](https://git.kernel.org/torvalds/c/873d7bcfd066) | [mm] | mm/swapfile.c: use kvzalloc for swap_info_struct allocation |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.20 | [`f2c57d91b0d9`](https://git.kernel.org/torvalds/c/f2c57d91b0d9) | [mm] | mm: Fix warning in insert_pfn() |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 4.20 | [`17e2e7d7e1b8`](https://git.kernel.org/torvalds/c/17e2e7d7e1b8) (loose) | [mm] | page_alloc: fix has_unmovable_pages for HugePages |  | generic code, tag [mm] | 3.10.0-1059 |
| CANDIDATE | 4.20 | [`c5fd3ca06b46`](https://git.kernel.org/torvalds/c/c5fd3ca06b46) | [mm] | slub: extend slub debug to handle multiple slabs |  | CONFIG_SLUB=y in A37 | 3.10.0-966 |
| CANDIDATE | 5.0 | [`cefc7ef3c87d`](https://git.kernel.org/torvalds/c/cefc7ef3c87d) | [mm] | mm, oom: fix use-after-free in oom_kill_process |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 5.0 | [`e0a352fabce6`](https://git.kernel.org/torvalds/c/e0a352fabce6) | [mm] | mm: migrate: don't rely on __PageMovable() of newpage after unlocking it |  | generic code, tag [mm] | 3.10.0-1017 |
| CANDIDATE | 5.0 | [`6ab7d47bcbf0`](https://git.kernel.org/torvalds/c/6ab7d47bcbf0) | [mm] | percpu: convert spin_lock_irq to spin_lock_irqsave |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 5.1 | [`c10d38cc8d3e`](https://git.kernel.org/torvalds/c/c10d38cc8d3e) | [mm] | mm, swap: bounds check swap_info array accesses to avoid NULL derefs |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 5.1 | [`cae85cb8add3`](https://git.kernel.org/torvalds/c/cae85cb8add3) | [mm] | mm/memory.c: fix modifying of page protection by insert_pfn() |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 5.1 | [`f655f4053791`](https://git.kernel.org/torvalds/c/f655f4053791) | [mm] | mm/percpu: add checks for the return value of memblock_alloc*() |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 5.1 | [`278d7756dff0`](https://git.kernel.org/torvalds/c/278d7756dff0) | [mm] | mm/slub.c: remove an unused addr argument |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 5.1 | [`8fde12ca79af`](https://git.kernel.org/torvalds/c/8fde12ca79af) | [mm] | mm: prevent get_user_pages() from overflowing page refcount | CVE-2019-11487 | generic code, tag [mm] | 3.10.0-1123 |
| CANDIDATE | 5.1 | [`00206a69ee32`](https://git.kernel.org/torvalds/c/00206a69ee32) | [mm] | percpu: stop printing kernel addresses |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 5.1 | [`2de7852fe909`](https://git.kernel.org/torvalds/c/2de7852fe909) | [mm] | percpu: use nr_groups as check condition |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 5.2 | [`59ea6d06cfa9`](https://git.kernel.org/torvalds/c/59ea6d06cfa9) | [mm] | coredump: fix race condition between collapse_huge_page() and core dumping |  | CONFIG_COREDUMP=y in A37 | 3.10.0-1082 |
| CANDIDATE | 5.2 | [`dedca63504a2`](https://git.kernel.org/torvalds/c/dedca63504a2) | [mm] | mm/mlock.c: mlockall error for flag MCL_ONFAULT |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 5.2 | [`7298e3b0a149`](https://git.kernel.org/torvalds/c/7298e3b0a149) | [mm] | mm/page_idle.c: fix oops because end_pfn is larger than max_pfn |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | 5.2 | [`382b88e961c7`](https://git.kernel.org/torvalds/c/382b88e961c7) | [mm] | percpu: add block level scan_hint |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 5.2 | [`92c14cab4326`](https://git.kernel.org/torvalds/c/92c14cab4326) | [mm] | percpu: convert chunk hints to be based on pcpu_block_md |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 5.2 | [`8c43004af016`](https://git.kernel.org/torvalds/c/8c43004af016) | [mm] | percpu: do not search past bitmap when allocating an area |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 5.2 | [`d9f3a01eebe8`](https://git.kernel.org/torvalds/c/d9f3a01eebe8) | [mm] | percpu: introduce helper to determine if two regions overlap |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 5.2 | [`047924c96898`](https://git.kernel.org/torvalds/c/047924c96898) | [mm] | percpu: make pcpu_block_md generic |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 5.2 | [`3e54097beb22`](https://git.kernel.org/torvalds/c/3e54097beb22) | [mm] | percpu: manage chunks based on contig_bits instead of free_bytes |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 5.2 | [`8744d859427c`](https://git.kernel.org/torvalds/c/8744d859427c) | [mm] | percpu: relegate chunks unusable when failing small allocations |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 5.2 | [`b89462a9c5f4`](https://git.kernel.org/torvalds/c/b89462a9c5f4) | [mm] | percpu: remember largest area skipped during allocation |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 5.2 | [`198790d9a3ae`](https://git.kernel.org/torvalds/c/198790d9a3ae) | [mm] | percpu: remove spurious lock dependency between percpu and sched |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 5.2 | [`b239f7daf553`](https://git.kernel.org/torvalds/c/b239f7daf553) | [mm] | percpu: set PCPU_BITMAP_BLOCK_SIZE to PAGE_SIZE |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 5.2 | [`8e5a2b9893f3`](https://git.kernel.org/torvalds/c/8e5a2b9893f3) | [mm] | percpu: update free path with correct new free region |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 5.2 | [`da3afdd5bb54`](https://git.kernel.org/torvalds/c/da3afdd5bb54) | [mm] | percpu: use block scan_hint to only scan forward |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 5.2 | [`d33d9f3dd96b`](https://git.kernel.org/torvalds/c/d33d9f3dd96b) | [mm] | percpu: use chunk scan_hint to skip some scanning |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | 5.4 | [`abaed0112c1d`](https://git.kernel.org/torvalds/c/abaed0112c1d) | [mm] | mm, vmstat: hide /proc/pagetypeinfo from normal users |  | generic code, tag [mm] | 3.10.0-1111 |
| CANDIDATE | 5.4 | [`93b3a674485f`](https://git.kernel.org/torvalds/c/93b3a674485f) | [mm] | mm, vmstat: reduce zone->lock holding time by /proc/pagetypeinfo |  | generic code, tag [mm] | 3.10.0-1111 |
| CANDIDATE | 5.6 | [`7d36665a5886`](https://git.kernel.org/torvalds/c/7d36665a5886) | [mm] | memcg: fix NULL pointer dereference in __mem_cgroup_usage_unregister_event |  | CONFIG_MEMCG=y in A37 | 3.10.0-1150 |
| CANDIDATE | 5.7 | [`f3cd4c865b8a`](https://git.kernel.org/torvalds/c/f3cd4c865b8a) | [mm] | mm/memory_hotplug.c: only respect mem= parameter during boot stage |  | generic code, tag [mm] | 3.10.0-1149 |
| CANDIDATE | 5.7 | [`ee8eb9a5fe86`](https://git.kernel.org/torvalds/c/ee8eb9a5fe86) | [mm] | mm/page_alloc: increase default min_free_kbytes bound |  | generic code, tag [mm] | 3.10.0-1136 |
| CANDIDATE | 5.7 | [`aa9f7d5172fa`](https://git.kernel.org/torvalds/c/aa9f7d5172fa) | [mm] | mm: mempolicy: require at least one nodeid for MPOL_PREFERRED | CVE-2020-11565 | generic code, tag [mm] | 3.10.0-1143 |
| CANDIDATE | — | — | [mm] | __set_page_dirty_nobuffers uses spin_lock_irqseve instead of spin_lock_irq |  | generic code, tag [mm] | 3.10.0-90 |
| CANDIDATE | — | — | [mm] | Add kernel and mm data structure padding before kABI freeze |  | generic code, tag [mm] | 3.10.0-108 |
| CANDIDATE | — | — | [mm] | add kvfree() |  | generic code, tag [mm] | 3.10.0-211 |
| CANDIDATE | — | — | [mm] | add memory tracking hooks |  | generic code, tag [mm] | 3.10.0-1 |
| CANDIDATE | — | — | [mm] | add p[te\|md] revert "protnone helpers for use by NUMA balancing" |  | generic code, tag [mm] | 3.10.0-323 |
| CANDIDATE | — | — | [mm] | add PAGE_ALIGNED() helper |  | generic code, tag [mm] | 3.10.0-24 |
| CANDIDATE | — | — | [mm] | add param that allows bootline control of hardened usercopy |  | generic code, tag [mm] | 3.10.0-920 |
| CANDIDATE | — | — | [mm] | Add prototype declaration to the header file |  | generic code, tag [mm] | 3.10.0-378 |
| CANDIDATE | — | — | [mm] | add VM_WARN_ON() and VM_WARN_ON_ONCE() |  | generic code, tag [mm] | 3.10.0-363 |
| CANDIDATE | — | — | [mm] | allow GFP_{FS, IO} for page_cache_read page cache allocation |  | generic code, tag [mm] | 3.10.0-793 |
| CANDIDATE | — | — | [mm] | avoid kABI breakage |  | generic code, tag [mm] | 3.10.0-133 |
| CANDIDATE | — | — | [mm] | avoid walking hugetlb pages in stratus memory tracking |  | generic code, tag [mm] | 3.10.0-474 |
| CANDIDATE | — | — | [mm] | bootmem: remove duplicated declaration of __free_pages_bootmem() |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | — | — | [mm] | bootmem: remove unused local `map' |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | — | — | [mm] | cgroup: fix hugetlb_cgroup_read() |  | CONFIG_CGROUPS=y in A37 | 3.10.0-511 |
| CANDIDATE | — | — | [mm] | change ->pmd_fault to ->huge_fault |  | generic code, tag [mm] | 3.10.0-795 |
| CANDIDATE | — | — | [mm] | Change memory hotplug normal message to use pr_debug |  | generic code, tag [mm] | 3.10.0-537 |
| CANDIDATE | — | — | [mm] | change pmd_fault() to take only vmf parameter |  | generic code, tag [mm] | 3.10.0-795 |
| CANDIDATE | — | — | [mm] | change tlb_flushall_shift for IvyBridge |  | generic code, tag [mm] | 3.10.0-82 |
| CANDIDATE | — | — | [mm] | Clean up inconsistencies when flushing TLB ranges |  | generic code, tag [mm] | 3.10.0-82 |
| CANDIDATE | — | — | [mm] | cma: Move dma contiguous changes into a seperate config |  | CONFIG_CMA=y in A37 | 3.10.0-135 |
| CANDIDATE | — | — | [mm] | compaction.c: periodically schedule when freeing pages |  | generic code, tag [mm] | 3.10.0-941 |
| CANDIDATE | — | — | [mm] | compaction: break out of loop on !PageBuddy in isolate_freepages_block |  | generic code, tag [mm] | 3.10.0-423 |
| CANDIDATE | — | — | [mm] | compaction: change the timing to check to drop the spinlock |  | generic code, tag [mm] | 3.10.0-907 |
| CANDIDATE | — | — | [mm] | compaction: cleanup isolate_freepages() |  | generic code, tag [mm] | 3.10.0-941 |
| CANDIDATE | — | — | [mm] | compaction: make isolate_freepages start at pageblock boundary |  | generic code, tag [mm] | 3.10.0-436 |
| CANDIDATE | — | — | [mm] | compaction: release zone irqlock in isolate_freepages_block |  | generic code, tag [mm] | 3.10.0-907 |
| CANDIDATE | — | — | [mm] | compaction: reschedule immediately if need_resched() is set |  | generic code, tag [mm] | 3.10.0-941 |
| CANDIDATE | — | — | [mm] | compaction: respect ignore_skip_hint in update_pageblock_skip |  | generic code, tag [mm] | 3.10.0-382 |
| CANDIDATE | — | — | [mm] | configs: Enable DEBUG_PAGEALLOC on debug kernels |  | generic code, tag [mm] | 3.10.0-768 |
| CANDIDATE | — | — | [mm] | core, arch, powerpc: Pass a protection key in to calc_vm_flag_bits() |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | — | — | [mm] | core, x86/mm/pkeys: Add arch_validate_pkey() |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | — | — | [mm] | core, x86/mm/pkeys: Add execute-only protection keys support |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | — | — | [mm] | core, x86/mm/pkeys: Differentiate instruction fetches |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | — | — | [mm] | core, x86/mm/pkeys: Store protection bits in high VMA flags |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | — | — | [mm] | core: Do not enforce PKEY permissions on remote mm access |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | — | — | [mm] | dax,kabi: add special handling for ZONE_DEVICE |  | generic code, tag [mm] | 3.10.0-494 |
| CANDIDATE | — | — | [mm] | dd support for PUD-sized transparent hugepages |  | generic code, tag [mm] | 3.10.0-795 |
| CANDIDATE | — | — | [mm] | debug-pagealloc: cleanup page guard code |  | generic code, tag [mm] | 3.10.0-768 |
| CANDIDATE | — | — | [mm] | debug-pagealloc: correct freepage accounting and order resetting |  | generic code, tag [mm] | 3.10.0-768 |
| CANDIDATE | — | — | [mm] | debug-pagealloc: make debug-pagealloc boottime configurable |  | generic code, tag [mm] | 3.10.0-768 |
| CANDIDATE | — | — | [mm] | debug-pagealloc: prepare boottime configurable on/off |  | generic code, tag [mm] | 3.10.0-768 |
| CANDIDATE | — | — | [mm] | debug_pagealloc: ask users for default setting of debug_pagealloc |  | generic code, tag [mm] | 3.10.0-768 |
| CANDIDATE | — | — | [mm] | dmapool: allow NULL `pool' pointer in dma_pool_destroy() |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | don't split THP page when MADV_FREE syscall is called |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | — | — | [mm] | Eliminate redundant page table walk during TLB range flushing |  | generic code, tag [mm] | 3.10.0-82 |
| CANDIDATE | — | — | [mm] | enable deferred struct page initialisation on x86-64 |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | — | — | [mm] | enlarge stack guard gap | CVE-2017-1000364 | generic code, tag [mm] | 3.10.0-685 |
| CANDIDATE | — | — | [mm] | extend struct vm_fault |  | generic code, tag [mm] | 3.10.0-793 |
| CANDIDATE | — | — | [mm] | filemap: fix truncation crash due to exceptional entries |  | generic code, tag [mm] | 3.10.0-108 |
| CANDIDATE | — | — | [mm] | filemap: get rid of radix tree gfp mask for pagecache_get_page |  | generic code, tag [mm] | 3.10.0-837 |
| CANDIDATE | — | — | [mm] | filemap: optimize copy_page_to/from_iter_iovec |  | generic code, tag [mm] | 3.10.0-585 |
| CANDIDATE | — | — | [mm] | fix collision between DAX PMD and PTEs |  | generic code, tag [mm] | 3.10.0-849 |
| CANDIDATE | — | — | [mm] | fix compilation issues is DAX PMD code |  | generic code, tag [mm] | 3.10.0-793 |
| CANDIDATE | — | — | [mm] | fix deadlock when using dm-thin on loopback device |  | generic code, tag [mm] | 3.10.0-767 |
| CANDIDATE | — | — | [mm] | fix incorrect unlock error path in madvise_free_huge_pmd |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | — | — | [mm] | Fix panic due to NULL pointer dereference in __memcg_kmem_get_cache() |  | generic code, tag [mm] | 3.10.0-786 |
| CANDIDATE | — | — | [mm] | fix pfn_mkwrite KABI |  | generic code, tag [mm] | 3.10.0-427 |
| CANDIDATE | — | — | [mm] | fix the theoretical compound_lock() vs prep_new_page() race |  | generic code, tag [mm] | 3.10.0-177 |
| CANDIDATE | — | — | [mm] | fork: introduce MADV_WIPEONFORK |  | generic code, tag [mm] | 3.10.0-879 |
| CANDIDATE | — | — | [mm] | fs: rework do_invalidatepage |  | generic code, tag [mm] | 3.10.0-857 |
| CANDIDATE | — | — | [mm] | gpt: generic page table structure |  | generic code, tag [mm] | 3.10.0-482 |
| CANDIDATE | — | — | [mm] | gup, x86/mm/pkeys: Check VMAs and PTEs for protection keys |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | — | — | [mm] | gup: don't leak pte_devmap references in the gup slow paths |  | generic code, tag [mm] | 3.10.0-1046 |
| CANDIDATE | — | — | [mm] | gup: Factor out VMA fault permission checking |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | — | — | [mm] | hotplug: init the zone's size when calculating node totalpages |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | hotplug: verify hotplug memory range |  | generic code, tag [mm] | 3.10.0-378 |
| CANDIDATE | — | — | [mm] | hugetlb.c: clean up VM_WARN usage | CVE-2018-7740 | generic code, tag [mm] | 3.10.0-879 |
| CANDIDATE | — | — | [mm] | hugetlb.c: fix incorrect proc nr_hugepages value |  | generic code, tag [mm] | 3.10.0-630 |
| CANDIDATE | — | — | [mm] | hugetlb.c: fix reservation race when freeing surplus pages |  | generic code, tag [mm] | 3.10.0-630 |
| CANDIDATE | — | — | [mm] | hugetlb.c: fix resv map memory leak for placeholder entries |  | generic code, tag [mm] | 3.10.0-630 |
| CANDIDATE | — | — | [mm] | hugetlb.c: make vma_has_reserves() return bool |  | generic code, tag [mm] | 3.10.0-630 |
| CANDIDATE | — | — | [mm] | hugetlb.c: make vma_shareable() return bool |  | generic code, tag [mm] | 3.10.0-630 |
| CANDIDATE | — | — | [mm] | hugetlb.c: use first_memory_node |  | generic code, tag [mm] | 3.10.0-630 |
| CANDIDATE | — | — | [mm] | hugetlb.c: use huge_pte_lock instead of opencoding the lock |  | generic code, tag [mm] | 3.10.0-630 |
| CANDIDATE | — | — | [mm] | hugetlb.c: use the right pte val for compare in hugetlb_cow |  | generic code, tag [mm] | 3.10.0-630 |
| CANDIDATE | — | — | [mm] | hwpoison.c: fix held reference count after unpoisoning empty zero page |  | generic code, tag [mm] | 3.10.0-886 |
| CANDIDATE | — | — | [mm] | Include file needed for next patch to compile |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | — | — | [mm] | inode: avoid softlockup in prune_icache_sb |  | generic code, tag [mm] | 3.10.0-941 |
| CANDIDATE | — | — | [mm] | introduce get_user_pages_remote_flags() for __access_remote_vm() |  | generic code, tag [mm] | 3.10.0-907 |
| CANDIDATE | — | — | [mm] | introduce VM_F_OP_EXTEND to fix KABI broken by file_operations->mremap |  | generic code, tag [mm] | 3.10.0-285 |
| CANDIDATE | — | — | [mm] | Kconfig: fix URL for zsmalloc benchmark |  | generic code, tag [mm] | 3.10.0-247 |
| CANDIDATE | — | — | [mm] | kernel error swap_info_get: Bad swap offset entry |  | generic code, tag [mm] | 3.10.0-947 |
| CANDIDATE | — | — | [mm] | kvmalloc: stress the vmalloc path in the debugging kernel |  | generic code, tag [mm] | 3.10.0-857 |
| CANDIDATE | — | — | [mm] | l1tf: disallow non privileged high mmio prot_none mappings | CVE-2018-3620 | generic code, tag [mm] | 3.10.0-933 |
| CANDIDATE | — | — | [mm] | maccess.c: actually return -EFAULT from strncpy_from_unsafe |  | generic code, tag [mm] | 3.10.0-913 |
| CANDIDATE | — | — | [mm] | madvise: fix freeing of locked page with MADV_FREE |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | — | — | [mm] | madvise: fix madvise() infinite loop under special circumstances | CVE-2017-18208 | generic code, tag [mm] | 3.10.0-951 |
| CANDIDATE | — | — | [mm] | madvise: free swp_entry in madvise_free |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | — | — | [mm] | madvise: pass return code of memory_failure() to userspace |  | generic code, tag [mm] | 3.10.0-886 |
| CANDIDATE | — | — | [mm] | madvise: support madvise(MADV_FREE) |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | — | — | [mm] | make memblock_overlaps_region() return bool |  | generic code, tag [mm] | 3.10.0-923 |
| CANDIDATE | — | — | [mm] | make pmd_fault() and friends be the same as fault() |  | generic code, tag [mm] | 3.10.0-795 |
| CANDIDATE | — | — | [mm] | memblock/mem_hotplug: introduce MEMBLOCK_HOTPLUG flag to mark hotpluggable regions |  | generic code, tag [mm] | 3.10.0-186 |
| CANDIDATE | — | — | [mm] | memblock: add extra "flags" to memblock to allow selection of memory based on attribute |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | memblock: add memblock memory allocation apis |  | generic code, tag [mm] | 3.10.0-509 |
| CANDIDATE | — | — | [mm] | memblock: allocate boot time data structures from mirrored memory |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | memblock: binary search node id |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | — | — | [mm] | memblock: debug - correct displaying of upper memory boundary |  | generic code, tag [mm] | 3.10.0-186 |
| CANDIDATE | — | — | [mm] | memblock: Do some refactoring, enhance API |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | memblock: factor out of top-down allocation |  | generic code, tag [mm] | 3.10.0-186 |
| CANDIDATE | — | — | [mm] | memblock: fix memblock_next_valid_pfn() |  | generic code, tag [mm] | 3.10.0-660 |
| CANDIDATE | — | — | [mm] | memblock: fix wrong comment in __next_free_mem_range() |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | memblock: fix wrong type in memblock_find_in_range_node() |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | memblock: introduce bottom-up allocation mode |  | generic code, tag [mm] | 3.10.0-186 |
| CANDIDATE | — | — | [mm] | memblock: numa - introduce flags field into memblock |  | generic code, tag [mm] | 3.10.0-186 |
| CANDIDATE | — | — | [mm] | memblock: refactor functions to set/clear MEMBLOCK_HOTPLUG |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | memblock: reorder parameters of memblock_find_in_range_node |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | memblock: switch to use NUMA_NO_NODE instead of MAX_NUMNODES |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | memblock: use WARN_ONCE when MAX_NUMNODES passed as input parameter |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | memcg: Add preemption point in accumulate_memcg_tree() |  | CONFIG_MEMCG=y in A37 | 3.10.0-1126.2 |
| CANDIDATE | — | — | [mm] | memcg: delay memcg id freeing |  | CONFIG_MEMCG=y in A37 | 3.10.0-945 |
| CANDIDATE | — | — | [mm] | memcg: ensure mem_cgroup_idr is updated in a coordinated manner |  | CONFIG_MEMCG=y in A37 | 3.10.0-1136 |
| CANDIDATE | — | — | [mm] | memcg: Use a more cacheline efficient ways to sum percpu stats |  | CONFIG_MEMCG=y in A37 | 3.10.0-1126.2 |
| CANDIDATE | — | — | [mm] | memcontrol: allow to disable kmem accounting for cgroup |  | CONFIG_MEMCG=y in A37 | 3.10.0-1045 |
| CANDIDATE | — | — | [mm] | memcontrol: fix high scheduling latency source in mem_cgroup_reparent_charges |  | CONFIG_MEMCG=y in A37 | 3.10.0-958 |
| CANDIDATE | — | — | [mm] | memcontrol: release kmemcg_id only when allocated |  | CONFIG_MEMCG=y in A37 | 3.10.0-1048 |
| CANDIDATE | — | — | [mm] | meminit: initialize enough pages for struct page |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | — | — | [mm] | meminit: reduce number of times pageblocks are set during struct page in |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | — | — | [mm] | meminit: use early_pfn_to_nid for page_cgroup_init |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | — | — | [mm] | memory.c: don't forget to set softdirty on file mapped fault |  | generic code, tag [mm] | 3.10.0-378 |
| CANDIDATE | — | — | [mm] | memory_hotplug.c: check start_pfn in test_pages_in_a_zone() |  | generic code, tag [mm] | 3.10.0-989 |
| CANDIDATE | — | — | [mm] | mempolicy.c: fix error handling in set_mempolicy and mbind | CVE-2017-7616 | generic code, tag [mm] | 3.10.0-679 |
| CANDIDATE | — | — | [mm] | mempolicy.c: fix mempolicy printing in numa_maps |  | generic code, tag [mm] | 3.10.0-423 |
| CANDIDATE | — | — | [mm] | mempolicy.c: merge alloc_hugepage_vma to alloc_pages_vma |  | generic code, tag [mm] | 3.10.0-585 |
| CANDIDATE | — | — | [mm] | mempolicy.c: parameter doc uniformization |  | generic code, tag [mm] | 3.10.0-585 |
| CANDIDATE | — | — | [mm] | mempool: allow NULL `pool' pointer in mempool_destroy() |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | migrate.c: stabilise page count when migrating transparent hugepages |  | generic code, tag [mm] | 3.10.0-1037 |
| CANDIDATE | — | — | [mm] | migrate: allow migrate_vma() to alloc new page on empty entry v2 |  | generic code, tag [mm] | 3.10.0-676 |
| CANDIDATE | — | — | [mm] | migrate: check-before-clear PageSwapCache |  | generic code, tag [mm] | 3.10.0-945 |
| CANDIDATE | — | — | [mm] | migrate: correct failure handling if !hugepage_migration_support() |  | generic code, tag [mm] | 3.10.0-363 |
| CANDIDATE | — | — | [mm] | migrate: fix set cpupid on page migration twice against thp |  | generic code, tag [mm] | 3.10.0-64 |
| CANDIDATE | — | — | [mm] | migrate: migrate_vma() unmap page from vma while collecting pages |  | generic code, tag [mm] | 3.10.0-676 |
| CANDIDATE | — | — | [mm] | migrate: new memory migration helper for use with device memory v4 |  | generic code, tag [mm] | 3.10.0-676 |
| CANDIDATE | — | — | [mm] | migrate: new migrate mode MIGRATE_SYNC_NO_COPY |  | generic code, tag [mm] | 3.10.0-676 |
| CANDIDATE | — | — | [mm] | migrate: support un-addressable ZONE_DEVICE page in migration v2 |  | generic code, tag [mm] | 3.10.0-676 |
| CANDIDATE | — | — | [mm] | mincore.c: make mincore() more conservative | CVE-2019-5489 | generic code, tag [mm] | 3.10.0-1058 |
| CANDIDATE | — | — | [mm] | mincore: add support for DAX huge page mappings |  | generic code, tag [mm] | 3.10.0-793 |
| CANDIDATE | — | — | [mm] | mlock: add new mlock2 system call |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | — | — | [mm] | mlock: avoid increase mm->locked_vm on mlock() when already mlock2(, MLOCK_ONFAULT) |  | generic code, tag [mm] | 3.10.0-957 |
| CANDIDATE | — | — | [mm] | mlock: fix mlock accounting |  | generic code, tag [mm] | 3.10.0-945 |
| CANDIDATE | — | — | [mm] | mlock: include VM_MIXEDMAP flag in the VM_SPECIAL list to avoid m(un)locking |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | — | — | [mm] | mlock: introduce VM_LOCKONFAULT |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | — | — | [mm] | mlock: place preemption point in do_mlockall() loop |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | — | — | [mm] | mlock: prepare params outside critical region |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | — | — | [mm] | mlock: reorder can_do_mlock to fix audit denial |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | — | — | [mm] | mlock: reorganize mlockall() return values and remove goto-out label |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | — | — | [mm] | mlock: use offset_in_page macro |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | — | — | [mm] | mlock: wire up mlock2 system call on powerpc |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | — | — | [mm] | mlock: wire up mlock2 system call on s390 |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | — | — | [mm] | mm-vmstat-reduce-zone-lock-holding-time-by-proc-pagetypeinfo-fix |  | generic code, tag [mm] | 3.10.0-1111 |
| CANDIDATE | — | — | [mm] | mm/page_owner: convert page_owner_inited to static key |  | generic code, tag [mm] | 3.10.0-1139 |
| CANDIDATE | — | — | [mm] | mm/page_owner: remove unnecessary stack_trace field |  | generic code, tag [mm] | 3.10.0-1139 |
| CANDIDATE | — | — | [mm] | mm/page_owner: use late_initcall to hook in enabling |  | generic code, tag [mm] | 3.10.0-1139 |
| CANDIDATE | — | — | [mm] | mm: __handle_mm_fault: introduce explicit barrier after orig_pte dereference |  | generic code, tag [mm] | 3.10.0-1116 |
| CANDIDATE | — | — | [mm] | mm: do_swap_page: clean up parameter list passing a pointer to struct vm_fault |  | generic code, tag [mm] | 3.10.0-1116 |
| CANDIDATE | — | — | [mm] | mm: fix insert_pfn regression |  | generic code, tag [mm] | 3.10.0-1075 |
| CANDIDATE | — | — | [mm] | mm: kmemleak: introduce kmemleak_update_trace() |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | — | — | [mm] | mm: kmemleak: use u to print ->checksum |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | — | — | [mm] | mm: mempool: update the kmemleak stack trace for mempool allocations |  | generic code, tag [mm] | 3.10.0-1070 |
| CANDIDATE | — | — | [mm] | mm: mremap: streamline move_page_tables()'s move_huge_pmd() corner case | CVE-2020-10757 | generic code, tag [mm] | 3.10.0-1153 |
| CANDIDATE | — | — | [mm] | mm: oom: avoid attempting to kill init sharing same memory |  | generic code, tag [mm] | 3.10.0-1127.2 |
| CANDIDATE | — | — | [mm] | mm: oom: cleanup the "kill sharing same memory" loop |  | generic code, tag [mm] | 3.10.0-1127.2 |
| CANDIDATE | — | — | [mm] | mm: oom: fix potentially killing unrelated process |  | generic code, tag [mm] | 3.10.0-1127.2 |
| CANDIDATE | — | — | [mm] | mm: oom: fix the wrong task->mm == mm checks in oom_kill_process() |  | generic code, tag [mm] | 3.10.0-1127.2 |
| CANDIDATE | — | — | [mm] | mm: oom: reverse the order of setting TIF_MEMDIE and sending SIGKILL |  | generic code, tag [mm] | 3.10.0-1127.2 |
| CANDIDATE | — | — | [mm] | mm: page_isolation: fix potential warning from user |  | generic code, tag [mm] | 3.10.0-1151 |
| CANDIDATE | — | — | [mm] | mmap.c: fix arithmetic overflow in __vm_enough_memory() |  | generic code, tag [mm] | 3.10.0-561 |
| CANDIDATE | — | — | [mm] | mmap: kill correct_wcount/inode, use allow_write_access() |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | mmap: use offset_in_page macro |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | — | — | [mm] | mmu_notifier: add new callback for mmu_notifier without breaking kabi |  | generic code, tag [mm] | 3.10.0-295 |
| CANDIDATE | — | — | [mm] | mmu_notifier: fix memory corruption |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | move MM_SHMEMPAGES counter into reserved slot of {task, mm}_struct |  | generic code, tag [mm] | 3.10.0-419 |
| CANDIDATE | — | — | [mm] | move split_huge_page_pud/pmd sanity checks under the pte lock |  | generic code, tag [mm] | 3.10.0-837 |
| CANDIDATE | — | — | [mm] | move_ptes: check pte dirty after its removal |  | generic code, tag [mm] | 3.10.0-903 |
| CANDIDATE | — | — | [mm] | mprotect.c: don't imply PROT_EXEC on non-exec fs |  | generic code, tag [mm] | 3.10.0-706 |
| CANDIDATE | — | — | [mm] | mprotect: add a cond_resched() inside change_pmd_range() |  | generic code, tag [mm] | 3.10.0-844 |
| CANDIDATE | — | — | [mm] | mprotect: fix oops in change_pmd_range called from task_numa_work |  | generic code, tag [mm] | 3.10.0-123 |
| CANDIDATE | — | — | [mm] | msync: sync only the requested range in msync() |  | generic code, tag [mm] | 3.10.0-239 |
| CANDIDATE | — | — | [mm] | munlock: prevent walking off the end of a pagetable in no-pmd configuration |  | generic code, tag [mm] | 3.10.0-892 |
| CANDIDATE | — | — | [mm] | nobootmem: have __free_pages_memory() free in larger chunks |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | — | — | [mm] | oom_killer: Add task UID to printed info on an oom kill |  | generic code, tag [mm] | 3.10.0-1043 |
| CANDIDATE | — | — | [mm] | page-writeback.c: fix divide by zero in bdi_dirty_limits() |  | generic code, tag [mm] | 3.10.0-695 |
| CANDIDATE | — | — | [mm] | page-writeback.c: fix range_cyclic writeback vs writepages deadlock |  | generic code, tag [mm] | 3.10.0-973 |
| CANDIDATE | — | — | [mm] | page-writeback: add strictlimit feature |  | generic code, tag [mm] | 3.10.0-125 |
| CANDIDATE | — | — | [mm] | page-writeback: check-before-clear PageReclaim |  | generic code, tag [mm] | 3.10.0-945 |
| CANDIDATE | — | — | [mm] | page-writeback: do not count anon pages as dirtyable memory |  | generic code, tag [mm] | 3.10.0-103 |
| CANDIDATE | — | — | [mm] | page-writeback: fix dirty_balance_reserve subtraction from dirtyable memory |  | generic code, tag [mm] | 3.10.0-103 |
| CANDIDATE | — | — | [mm] | page-writeback: fix divide by zero in pos_ratio_polynom |  | generic code, tag [mm] | 3.10.0-125 |
| CANDIDATE | — | — | [mm] | page_alloc.c: calculate zone_start_pfn at zone_spanned_pages_in_node() |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | page_alloc.c: introduce kernelcore=mirror option |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | page_alloc.c: rework code layout in memmap_init_zone() |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | page_alloc.c: use '__paginginit' instead of '__init' |  | generic code, tag [mm] | 3.10.0-294 |
| CANDIDATE | — | — | [mm] | page_alloc: calculate 'available' memory in a separate function |  | generic code, tag [mm] | 3.10.0-482 |
| CANDIDATE | — | — | [mm] | page_alloc: change mm debug routines back to EXPORT_SYMBOL |  | generic code, tag [mm] | 3.10.0-177 |
| CANDIDATE | — | — | [mm] | page_alloc: convert zone_pcp_update() to rely on memory barriers instead of stop_machine() |  | generic code, tag [mm] | 3.10.0-498 |
| CANDIDATE | — | — | [mm] | page_alloc: don't re-init pageset in zone_pcp_update() |  | generic code, tag [mm] | 3.10.0-506 |
| CANDIDATE | — | — | [mm] | page_alloc: factor out setting of pcp->high and pcp->batch |  | generic code, tag [mm] | 3.10.0-498 |
| CANDIDATE | — | — | [mm] | page_alloc: factor setup_pageset() into pageset_init() and pageset_set_batch() |  | generic code, tag [mm] | 3.10.0-498 |
| CANDIDATE | — | — | [mm] | page_alloc: factor zone_pageset_init() out of setup_zone_pageset() |  | generic code, tag [mm] | 3.10.0-498 |
| CANDIDATE | — | — | [mm] | page_alloc: fix memmap_init_zone pageblock alignment |  | generic code, tag [mm] | 3.10.0-859 |
| CANDIDATE | — | — | [mm] | page_alloc: honor min_free_kbytes set by user |  | generic code, tag [mm] | 3.10.0-75 |
| CANDIDATE | — | — | [mm] | page_alloc: in zone_pcp_update(), uze zone_pageset_init() |  | generic code, tag [mm] | 3.10.0-498 |
| CANDIDATE | — | — | [mm] | page_alloc: insert memory barriers to allow async update of pcp batch and high |  | generic code, tag [mm] | 3.10.0-498 |
| CANDIDATE | — | — | [mm] | page_alloc: make movable_node have higher priority |  | generic code, tag [mm] | 3.10.0-186 |
| CANDIDATE | — | — | [mm] | page_alloc: prevent concurrent updaters of pcp ->batch and ->high |  | generic code, tag [mm] | 3.10.0-498 |
| CANDIDATE | — | — | [mm] | page_alloc: protect pcp->batch accesses with ACCESS_ONCE |  | generic code, tag [mm] | 3.10.0-498 |
| CANDIDATE | — | — | [mm] | page_alloc: ratelimit PFNs busy info message |  | generic code, tag [mm] | 3.10.0-707 |
| CANDIDATE | — | — | [mm] | page_alloc: relocate comment to be directly above code it refers to |  | generic code, tag [mm] | 3.10.0-498 |
| CANDIDATE | — | — | [mm] | page_alloc: rename setup_pagelist_highmark() to match naming of pageset_set_batch() |  | generic code, tag [mm] | 3.10.0-498 |
| CANDIDATE | — | — | [mm] | page_alloc: when handling percpu_pagelist_fraction, don't unneedly recalulate high |  | generic code, tag [mm] | 3.10.0-498 |
| CANDIDATE | — | — | [mm] | page_cgroup: Fix Kernel bug during boot with memory cgroups enabled |  | generic code, tag [mm] | 3.10.0-738 |
| CANDIDATE | — | — | [mm] | page_ext: resurrect struct page extending code for debugging |  | generic code, tag [mm] | 3.10.0-768 |
| CANDIDATE | — | — | [mm] | pagewalk: prevent positive return value of walk_page_test() from being passed to callers |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | — | — | [mm] | partially revert: remove per-zone hashtable of bitlock waitqueues |  | generic code, tag [mm] | 3.10.0-948 |
| CANDIDATE | — | — | [mm] | percpu scalability fixes |  | generic code, tag [mm] | 3.10.0-111 |
| CANDIDATE | — | — | [mm] | percpu scalability fixes |  | generic code, tag [mm] | 3.10.0-109 |
| CANDIDATE | — | — | [mm] | percpu: clean up of schunk->mapassignment in pcpu_setup_first_chunk |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | — | — | [mm] | percpu: fold pcpu_split_block() into the only caller |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | — | — | [mm] | percpu: km: no need to consider pcpu_group_offsets |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | — | — | [mm] | percpu: use *pbto print bitmaps including cpumasks and nodemasks |  | generic code, tag [mm] | 3.10.0-1106 |
| CANDIDATE | — | — | [mm] | prepare for non-page entries in page cache radix trees |  | generic code, tag [mm] | 3.10.0-90 |
| CANDIDATE | — | — | [mm] | private-memory: new type of ZONE_DEVICE for unaddressable memory v2 |  | generic code, tag [mm] | 3.10.0-676 |
| CANDIDATE | — | — | [mm] | put_page: move ZONE_DEVICE page reference decrement v2 |  | generic code, tag [mm] | 3.10.0-676 |
| CANDIDATE | — | — | [mm] | readahead: fix readahead failure for memoryless NUMA nodes and limit readahead pages |  | generic code, tag [mm] | 3.10.0-99 |
| CANDIDATE | — | — | [mm] | readahead: Move readahead limit outside of readahead, and advisory syscalls |  | generic code, tag [mm] | 3.10.0-506 |
| CANDIDATE | — | — | [mm] | reinit files_stat.max_files after deferred memory initialisation |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | — | — | [mm] | remove ifdef condition |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | — | — | [mm] | rename and move page fragment handling from net/ to mm/ |  | generic code, tag [mm] | 3.10.0-415 |
| CANDIDATE | — | — | [mm] | revert "cgroup: kill css_id" |  | generic code, tag [mm] | 3.10.0-816 |
| CANDIDATE | — | — | [mm] | revert "convert p[te\|md]_mknonnuma and remaining page table manipulations" |  | generic code, tag [mm] | 3.10.0-323 |
| CANDIDATE | — | — | [mm] | revert "don't split THP page when MADV_FREE syscall is called" |  | generic code, tag [mm] | 3.10.0-1060 |
| CANDIDATE | — | — | [mm] | revert "fix incorrect unlock error path in madvise_free_huge_pmd" |  | generic code, tag [mm] | 3.10.0-1060 |
| CANDIDATE | — | — | [mm] | revert "memcontrol: fix cgroup creation failure after many small jobs" |  | generic code, tag [mm] | 3.10.0-816 |
| CANDIDATE | — | — | [mm] | revert "memory_hotplug: do not fail offlining too early" |  | generic code, tag [mm] | 3.10.0-952 |
| CANDIDATE | — | — | [mm] | revert "memory_hotplug: remove timeout from __offline_memory" |  | generic code, tag [mm] | 3.10.0-952 |
| CANDIDATE | — | — | [mm] | revert "mm: split page_type out from _mapcount" |  | generic code, tag [mm] | 3.10.0-1060 |
| CANDIDATE | — | — | [mm] | revert "numa: add paranoid check around pte_protnone_numa" |  | generic code, tag [mm] | 3.10.0-323 |
| CANDIDATE | — | — | [mm] | revert "numa: avoid unnecessary TLB flushes when setting NUMA hinting entries" |  | generic code, tag [mm] | 3.10.0-323 |
| CANDIDATE | — | — | [mm] | revert "numa: Do not mark PTEs pte_numa when splitting huge pages" |  | generic code, tag [mm] | 3.10.0-323 |
| CANDIDATE | — | — | [mm] | revert "numa: do not trap faults on the huge zero page" |  | generic code, tag [mm] | 3.10.0-323 |
| CANDIDATE | — | — | [mm] | revert "percpu scalability fixes" |  | generic code, tag [mm] | 3.10.0-253 |
| CANDIDATE | — | — | [mm] | revert "pmd dirty emulation in page fault handler" |  | generic code, tag [mm] | 3.10.0-1060 |
| CANDIDATE | — | — | [mm] | revert "remove remaining references to NUMA hinting bits and helpers" |  | generic code, tag [mm] | 3.10.0-323 |
| CANDIDATE | — | — | [mm] | revert "thp: fix crash due race in MADV_FREE handling" |  | generic code, tag [mm] | 3.10.0-1060 |
| CANDIDATE | — | — | [mm] | revert "write to force_empty will cause soft lockup" |  | generic code, tag [mm] | 3.10.0-366 |
| CANDIDATE | — | — | [mm] | revert cgroup: kill css_id |  | generic code, tag [mm] | 3.10.0-858 |
| CANDIDATE | — | — | [mm] | revert kvmalloc: stress the vmalloc path in the debugging kernel |  | generic code, tag [mm] | 3.10.0-859 |
| CANDIDATE | — | — | [mm] | revert memcontrol: fix cgroup creation failure after many small jobs |  | generic code, tag [mm] | 3.10.0-858 |
| CANDIDATE | — | — | [mm] | Revisit tlb_flushall_shift tuning for page flushes except on IvyBridge |  | generic code, tag [mm] | 3.10.0-82 |
| CANDIDATE | — | — | [mm] | rmap: calculate page offset when needed |  | generic code, tag [mm] | 3.10.0-363 |
| CANDIDATE | — | — | [mm] | rmap: cleanup ttu_flags |  | generic code, tag [mm] | 3.10.0-695 |
| CANDIDATE | — | — | [mm] | rmap: don't call mmu_notifier_invalidate_page() during munlock |  | generic code, tag [mm] | 3.10.0-695 |
| CANDIDATE | — | — | [mm] | rmap: extend rmap_walk_xxx() to cope with different cases |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | — | — | [mm] | rmap: factor lock function out of rmap_walk_anon() |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | — | — | [mm] | rmap: factor nonlinear handling out of try_to_unmap_file() |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | — | — | [mm] | rmap: fix pgoff calculation to handle hugepage correctly |  | generic code, tag [mm] | 3.10.0-363 |
| CANDIDATE | — | — | [mm] | rmap: make rmap_walk to get the rmap_walk_control argument |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | — | — | [mm] | rmap: try_to_unmap_cluster() should lock_page() before mlocking | CVE-2014-3122 | generic code, tag [mm] | 3.10.0-123 |
| CANDIDATE | — | — | [mm] | rmap: use pte lock not mmap_sem to set PageMlocked |  | generic code, tag [mm] | 3.10.0-695 |
| CANDIDATE | — | — | [mm] | rmap: use rmap_walk() in page_mkclean() |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | — | — | [mm] | rmap: use rmap_walk() in page_referenced() |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | — | — | [mm] | rmap: use rmap_walk() in try_to_munlock() |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | — | — | [mm] | rmap: use rmap_walk() in try_to_unmap() |  | generic code, tag [mm] | 3.10.0-905 |
| CANDIDATE | — | — | [mm] | set IORESOURCE_SYSTEM_RAM to system RAM to fix memory hot-add failure |  | generic code, tag [mm] | 3.10.0-950 |
| CANDIDATE | — | — | [mm] | shm_mnt is as longterm as it gets |  | generic code, tag [mm] | 3.10.0-921 |
| CANDIDATE | — | — | [mm] | skip VM_HUGETLB and VM_MIXEDMAP VMA for lazy mbind |  | generic code, tag [mm] | 3.10.0-795 |
| CANDIDATE | — | — | [mm] | slab.h: fix argument order in cache_from_obj's error message |  | generic code, tag [mm] | 3.10.0-644 |
| CANDIDATE | — | — | [mm] | slab_common: allow NULL cache pointer in kmem_cache_destroy() |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | slab_common: support the slub_debug boot option on specific object size |  | generic code, tag [mm] | 3.10.0-408 |
| CANDIDATE | — | — | [mm] | slb: charge slabs to kmemcg explicitly |  | generic code, tag [mm] | 3.10.0-1075 |
| CANDIDATE | — | — | [mm] | slub: bulk alloc: extract objects from the per cpu slab |  | CONFIG_SLUB=y in A37 | 3.10.0-415 |
| CANDIDATE | — | — | [mm] | slub: do not VM_BUG_ON_PAGE() for temporary on-stack pages |  | CONFIG_SLUB=y in A37 | 3.10.0-177 |
| CANDIDATE | — | — | [mm] | slub: fix page->_count corruption (again) |  | CONFIG_SLUB=y in A37 | 3.10.0-106 |
| CANDIDATE | — | — | [mm] | slub: query dynamic DEBUG_PAGEALLOC setting |  | CONFIG_SLUB=y in A37 | 3.10.0-768 |
| CANDIDATE | — | — | [mm] | slub: support left redzone |  | CONFIG_SLUB=y in A37 | 3.10.0-920 |
| CANDIDATE | — | — | [mm] | sparse: use memblock apis for early memory allocations |  | generic code, tag [mm] | 3.10.0-509 |
| CANDIDATE | — | — | [mm] | sparse: use page_private() to get page->private value |  | generic code, tag [mm] | 3.10.0-622 |
| CANDIDATE | — | — | [mm] | sparsemem: fix a bug in free_map_bootmem when CONFIG_SPARSEMEM_VMEMMAP |  | generic code, tag [mm] | 3.10.0-622 |
| CANDIDATE | — | — | [mm] | sparsemem: use PAGES_PER_SECTION to remove redundant nr_pages parameter |  | generic code, tag [mm] | 3.10.0-622 |
| CANDIDATE | — | — | [mm] | store shadow entries in page cache |  | generic code, tag [mm] | 3.10.0-90 |
| CANDIDATE | — | — | [mm] | Support binding swap device to a node |  | generic code, tag [mm] | 3.10.0-926 |
| CANDIDATE | — | — | [mm] | swap: add cache for swap slots allocation |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | — | — | [mm] | swap: add cluster lock |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | — | — | [mm] | swap: allocate swap slots in batches |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | — | — | [mm] | swap: clear PageActive before adding pages onto unevictable list |  | generic code, tag [mm] | 3.10.0-82 |
| CANDIDATE | — | — | [mm] | swap: don't BUG_ON() due to uninitialized swap slot cache |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | — | — | [mm] | swap: enable swap slots cache usage |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | — | — | [mm] | swap: fix kernel message in swap_info_get() |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | — | — | [mm] | swap: fix nr_rotate_swap leak in swapon() error case |  | generic code, tag [mm] | 3.10.0-1025 |
| CANDIDATE | — | — | [mm] | swap: flush lru pvecs on compound page arrival |  | generic code, tag [mm] | 3.10.0-502 |
| CANDIDATE | — | — | [mm] | swap: free swap slots in batch |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | — | — | [mm] | swap: introduce put_[un]refcounted_compound_page helpers for splitting put_compound_page() |  | generic code, tag [mm] | 3.10.0-177 |
| CANDIDATE | — | — | [mm] | swap: reorganize put_compound_page() |  | generic code, tag [mm] | 3.10.0-177 |
| CANDIDATE | — | — | [mm] | swap: skip readahead for unreferenced swap slots |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | — | — | [mm] | swap: skip readahead only when swap slot cache is enabled |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | — | — | [mm] | swap: split put_compound_page() |  | generic code, tag [mm] | 3.10.0-177 |
| CANDIDATE | — | — | [mm] | swap: split swap cache into 64MB trunks |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | — | — | [mm] | swap_slots: recheck cache->slots_ret under spin_lock_irq() protection |  | generic code, tag [mm] | 3.10.0-1160.11.1 |
| CANDIDATE | — | — | [mm] | swapfile.c: fix swap space leak in error path of swap_free_entries() |  | generic code, tag [mm] | 3.10.0-724 |
| CANDIDATE | — | — | [mm] | swapfile: do not skip lowest_bit in scan_swap_map() scan loop |  | generic code, tag [mm] | 3.10.0-171 |
| CANDIDATE | — | — | [mm] | swiotlb: make panic on mapping failures optional |  | generic code, tag [mm] | 3.10.0-1127.3 |
| CANDIDATE | — | — | [mm] | Temporary fix for BUG_ON() triggered by THP vs. gup() race |  | generic code, tag [mm] | 3.10.0-325 |
| CANDIDATE | — | — | [mm] | tlb, x86/mm: Support invalidating TLB caches for RCU_TABLE_FREE |  | generic code, tag [mm] | 3.10.0-1050 |
| CANDIDATE | — | — | [mm] | tlb: Remove tlb_remove_table() non-concurrent condition |  | generic code, tag [mm] | 3.10.0-1050 |
| CANDIDATE | — | — | [mm] | update with WRITE_ONCE/READ_ONCE |  | generic code, tag [mm] | 3.10.0-795 |
| CANDIDATE | — | — | [mm] | vfs: prevent buffered I/O reads to DAX inodes |  | generic code, tag [mm] | 3.10.0-486 |
| CANDIDATE | — | — | [mm] | vma_merge: fix race vm_page_prot race condition against rmap_walk |  | generic code, tag [mm] | 3.10.0-585 |
| CANDIDATE | — | — | [mm] | vmalloc: fix memleak in __vunmap |  | generic code, tag [mm] | 3.10.0-30 |
| CANDIDATE | — | — | [mm] | vmalloc: query dynamic DEBUG_PAGEALLOC setting |  | generic code, tag [mm] | 3.10.0-768 |
| CANDIDATE | — | — | [mm] | vmscan: avoid throttling reclaim for loop-back nfsd threads |  | generic code, tag [mm] | 3.10.0-963 |
| CANDIDATE | — | — | [mm] | vmscan: catch and fix shrinker overflows |  | generic code, tag [mm] | 3.10.0-400 |
| CANDIDATE | — | — | [mm] | vmscan: don't trigger congestion wait on dirty-but-not-writeout pages |  | generic code, tag [mm] | 3.10.0-963 |
| CANDIDATE | — | — | [mm] | vmscan: new shrinker API |  | generic code, tag [mm] | 3.10.0-50 |
| CANDIDATE | — | — | [mm] | vmscan: use DIV_ROUND_UP for calculation of zone's balance_gap and correct comments |  | generic code, tag [mm] | 3.10.0-963 |
| CANDIDATE | — | — | [mm] | vmstat: fix overflow in mod_zone_page_state() |  | generic code, tag [mm] | 3.10.0-403 |
| CANDIDATE | — | — | [mm] | vmstat: set N_CPU to node_states during boot |  | generic code, tag [mm] | 3.10.0-137 |
| CANDIDATE | — | — | [mm] | write to force_empty will cause soft lockup |  | generic code, tag [mm] | 3.10.0-364 |
| CANDIDATE | — | — | [mm] | x86, l1tf: limit swap file size to max_pa/2 | CVE-2018-3620 | generic code, tag [mm] | 3.10.0-933 |
| CANDIDATE | — | — | [mm] | x86, l1tf: protect _page_file ptes against speculation | CVE-2018-3620 | generic code, tag [mm] | 3.10.0-933 |
| CANDIDATE | — | — | [mm] | zpool: add name argument to create zpool |  | generic code, tag [mm] | 3.10.0-344 |
| CANDIDATE | — | — | [mm] | zpool: implement common zpool api to zbud/zsmalloc |  | generic code, tag [mm] | 3.10.0-247 |
| CANDIDATE | — | — | [mm] | zpool: update zswap to use zpool |  | generic code, tag [mm] | 3.10.0-247 |
| CANDIDATE | — | — | [mm] | zpool: use prefixed module loading |  | generic code, tag [mm] | 3.10.0-247 |
| CANDIDATE | — | — | [mm] | zpool: zbud/zsmalloc implement zpool |  | generic code, tag [mm] | 3.10.0-247 |
| CANDIDATE | — | — | [mm] | zram, ppc64: enable zram on ppc64 |  | generic code, tag [mm] | 3.10.0-781 |
| CANDIDATE | — | — | [mm] | zsmalloc: access page->private by using page_private macro |  | CONFIG_ZSMALLOC=y in A37 | 3.10.0-247 |
| CANDIDATE | — | — | [mm] | zsmalloc: correct comment for fullness group computation |  | CONFIG_ZSMALLOC=y in A37 | 3.10.0-247 |
| CANDIDATE | — | — | [mm] | zsmalloc: Fix map_vm_area undefined reference errors |  | CONFIG_ZSMALLOC=y in A37 | 3.10.0-247 |
| CANDIDATE | — | — | [mm] | zsmalloc: Fixed up incorrect formatted comments |  | CONFIG_ZSMALLOC=y in A37 | 3.10.0-247 |
| CANDIDATE | — | — | [mm] | zsmalloc: Fixes string split across lines in zsmalloc zsmalloc-main |  | CONFIG_ZSMALLOC=y in A37 | 3.10.0-247 |
| CANDIDATE | — | — | [mm] | zsmalloc: make zsmalloc module-buildable |  | CONFIG_ZSMALLOC=y in A37 | 3.10.0-247 |
| FEATURE-MISSING | 4.3 | [`86039bd3b4e6`](https://git.kernel.org/torvalds/c/86039bd3b4e6) | [mm] | userfaultfd: add new syscall to provide memory externalization |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`16ba6f811dfe`](https://git.kernel.org/torvalds/c/16ba6f811dfe) | [mm] | userfaultfd: add VM_UFFD_MISSING and VM_UFFD_WP |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`745f234be12b`](https://git.kernel.org/torvalds/c/745f234be12b) | [mm] | userfaultfd: add vm_userfaultfd_ctx to the vm_area_struct |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`3004ec9cabf4`](https://git.kernel.org/torvalds/c/3004ec9cabf4) | [mm] | userfaultfd: allocate the userfaultfd_ctx cacheline aligned |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`b6ebaedb4cb1`](https://git.kernel.org/torvalds/c/b6ebaedb4cb1) | [mm] | userfaultfd: avoid mmap_sem read recursion in mcopy_atomic |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`a14c151e567c`](https://git.kernel.org/torvalds/c/a14c151e567c) | [mm] | userfaultfd: buildsystem activation |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`6b251fc96cf2`](https://git.kernel.org/torvalds/c/6b251fc96cf2) | [mm] | userfaultfd: call handle_userfault() for userfaultfd_missing() faults |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`a9b85f9415fd`](https://git.kernel.org/torvalds/c/a9b85f9415fd) | [mm] | userfaultfd: change the read API to return a uffd_msg |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`25edd8bffd0f`](https://git.kernel.org/torvalds/c/25edd8bffd0f) | [mm] | userfaultfd: linux/Documentation/vm/userfaultfd.txt |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`932b18e0aec6`](https://git.kernel.org/torvalds/c/932b18e0aec6) | [mm] | userfaultfd: linux/userfaultfd_k.h |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`c1a4de99fada`](https://git.kernel.org/torvalds/c/c1a4de99fada) | [mm] | userfaultfd: mcopy_atomic\|mfill_zeropage: UFFDIO_COPY\|UFFDIO_ZEROPAGE preparation |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`15b726ef048b`](https://git.kernel.org/torvalds/c/15b726ef048b) | [mm] | userfaultfd: optimize read() and poll() to be O(1) |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`c1294d05de5d`](https://git.kernel.org/torvalds/c/c1294d05de5d) | [mm] | userfaultfd: prevent khugepaged to merge if userfaultfd is armed |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`230c92a8797e`](https://git.kernel.org/torvalds/c/230c92a8797e) | [mm] | userfaultfd: propagate the full address in THP faults |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`3f602d2724b1`](https://git.kernel.org/torvalds/c/3f602d2724b1) | [mm] | userfaultfd: Rename uffd_api.bits into .features |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`8d2afd96c203`](https://git.kernel.org/torvalds/c/8d2afd96c203) | [mm] | userfaultfd: solve the race between UFFDIO_COPY\|ZEROPAGE and read |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`19a809afe2fe`](https://git.kernel.org/torvalds/c/19a809afe2fe) | [mm] | userfaultfd: teach vma_merge to merge across vma->vm_userfaultfd_ctx |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`1038628d80e9`](https://git.kernel.org/torvalds/c/1038628d80e9) | [mm] | userfaultfd: uAPI |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`ad465cae96b4`](https://git.kernel.org/torvalds/c/ad465cae96b4) | [mm] | userfaultfd: UFFDIO_COPY and UFFDIO_ZEROPAGE |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`1f1c6f075904`](https://git.kernel.org/torvalds/c/1f1c6f075904) | [mm] | userfaultfd: UFFDIO_COPY\|UFFDIO_ZEROPAGE uAPI |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`ba85c702e4b2`](https://git.kernel.org/torvalds/c/ba85c702e4b2) | [mm] | userfaultfd: wake pending userfaults |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.11 | [`5a02026d390e`](https://git.kernel.org/torvalds/c/5a02026d390e) | [mm] | userfaultfd: documentation update |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.11 | [`60d4d2d2b40e`](https://git.kernel.org/torvalds/c/60d4d2d2b40e) | [mm] | userfaultfd: hugetlbfs: add __mcopy_atomic_hugetlb for huge page UFFDIO_COPY |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`fa4d75c1de13`](https://git.kernel.org/torvalds/c/fa4d75c1de13) | [mm] | userfaultfd: hugetlbfs: add copy_huge_page_from_user for hugetlb userfaultfd support |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`8fb5debc5fcd`](https://git.kernel.org/torvalds/c/8fb5debc5fcd) | [mm] | userfaultfd: hugetlbfs: add hugetlb_mcopy_atomic_pte for userfaultfd support |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`1c9e8def43a3`](https://git.kernel.org/torvalds/c/1c9e8def43a3) | [mm] | userfaultfd: hugetlbfs: add UFFDIO_COPY support for shared mappings |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`1a1aad8a9b7b`](https://git.kernel.org/torvalds/c/1a1aad8a9b7b) | [mm] | userfaultfd: hugetlbfs: add userfaultfd hugetlb hook |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`810a56b943e2`](https://git.kernel.org/torvalds/c/810a56b943e2) | [mm] | userfaultfd: hugetlbfs: fix __mcopy_atomic_hugetlb retry/error processing |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`87ffc118b54d`](https://git.kernel.org/torvalds/c/87ffc118b54d) | [mm] | userfaultfd: hugetlbfs: gup: support VM_FAULT_RETRY |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`21205bf8f77b`](https://git.kernel.org/torvalds/c/21205bf8f77b) | [mm] | userfaultfd: hugetlbfs: reserve count on error in __mcopy_atomic_hugetlb |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`27d02568f529`](https://git.kernel.org/torvalds/c/27d02568f529) | [mm] | userfaultfd: mcopy_atomic: return -ENOENT when no compatible VMA found |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`897ab3e0c49e`](https://git.kernel.org/torvalds/c/897ab3e0c49e) | [mm] | userfaultfd: non-cooperative: add event for memory unmaps |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`05ce77249d50`](https://git.kernel.org/torvalds/c/05ce77249d50) | [mm] | userfaultfd: non-cooperative: add madvise() event for MADV_DONTNEED request |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`a6bf53eba98e`](https://git.kernel.org/torvalds/c/a6bf53eba98e) | [mm] | userfaultfd: non-cooperative: add madvise() event for MADV_REMOVE request |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`72f87654c696`](https://git.kernel.org/torvalds/c/72f87654c696) | [mm] | userfaultfd: non-cooperative: add mremap() event |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`0594f58dbd95`](https://git.kernel.org/torvalds/c/0594f58dbd95) | [mm] | userfaultfd: non-cooperative: avoid MADV_DONTNEED race condition |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`90794bf19dc1`](https://git.kernel.org/torvalds/c/90794bf19dc1) | [mm] | userfaultfd: non-cooperative: optimize mremap_userfaultfd_complete() |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`d811914d8757`](https://git.kernel.org/torvalds/c/d811914d8757) | [mm] | userfaultfd: non-cooperative: rename *EVENT_MADVDONTNEED to *EVENT_REMOVE |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`70ccb92fdd90`](https://git.kernel.org/torvalds/c/70ccb92fdd90) | [mm] | userfaultfd: non-cooperative: userfaultfd_remove revalidate vma in MADV_DONTNEED |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`4c27fe4c4c84`](https://git.kernel.org/torvalds/c/4c27fe4c4c84) | [mm] | userfaultfd: shmem: add shmem_mcopy_atomic_pte for userfaultfd support |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`cfda05267f7b`](https://git.kernel.org/torvalds/c/cfda05267f7b) | [mm] | userfaultfd: shmem: add userfaultfd hook for shared memory faults |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`a425d3584e7e`](https://git.kernel.org/torvalds/c/a425d3584e7e) | [mm] | userfaultfd: shmem: avoid a lockup resulting from corrupted page->flags |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`cb658a453b93`](https://git.kernel.org/torvalds/c/cb658a453b93) | [mm] | userfaultfd: shmem: avoid leaking blocks and used blocks in UFFDIO_COPY |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`b0506e488da5`](https://git.kernel.org/torvalds/c/b0506e488da5) | [mm] | userfaultfd: shmem: introduce vma_is_shmem |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`9cc90c664a65`](https://git.kernel.org/torvalds/c/9cc90c664a65) | [mm] | userfaultfd: shmem: lock the page before adding it to pagecache |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`26071cedc519`](https://git.kernel.org/torvalds/c/26071cedc519) | [mm] | userfaultfd: shmem: use shmem_mcopy_atomic_pte for shared memory |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`a94720bf821d`](https://git.kernel.org/torvalds/c/a94720bf821d) | [mm] | userfaultfd: use vma_is_anonymous |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.12 | [`64c2b20301f6`](https://git.kernel.org/torvalds/c/64c2b20301f6) | [mm] | userfaultfd: shmem: handle coredumping in handle_userfault() |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-685 |
| FEATURE-MISSING | 4.13 | [`5af10dfd0afc`](https://git.kernel.org/torvalds/c/5af10dfd0afc) | [mm] | userfaultfd: hugetlbfs: remove superfluous page unlock in VM_SHARED case |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-781 |
| FEATURE-MISSING | 4.13 | [`5a18b64e3f02`](https://git.kernel.org/torvalds/c/5a18b64e3f02) | [mm] | userfaultfd: non-cooperative: flush event_wqh at release time |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-781 |
| FEATURE-MISSING | 4.13 | [`b22823719302`](https://git.kernel.org/torvalds/c/b22823719302) | [mm] | userfaultfd: non-cooperative: notify about unmap of destination during mremap |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-781 |
| FEATURE-MISSING | 4.13 | [`e86b298bebf7`](https://git.kernel.org/torvalds/c/e86b298bebf7) | [mm] | userfaultfd: replace ENOSPC with ESRCH in case mm has gone during copy/zeropage |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-781 |
| FEATURE-MISSING | 4.14 | [`2d6d6f5a09a9`](https://git.kernel.org/torvalds/c/2d6d6f5a09a9) (loose) | [mm] | userfaultfd: add feature to request for a signal delivery |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-781 |
| FEATURE-MISSING | 4.14 | [`1e3921471354`](https://git.kernel.org/torvalds/c/1e3921471354) | [mm] | userfaultfd: hugetlbfs: prevent UFFDIO_COPY to fill beyond the end of i_size |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-781 |
| FEATURE-MISSING | 4.14 | [`3217d3c79b5d`](https://git.kernel.org/torvalds/c/3217d3c79b5d) | [mm] | userfaultfd: mcopy_atomic: introduce mfill_atomic_pte helper |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-781 |
| FEATURE-MISSING | 4.14 | [`656710a60e36`](https://git.kernel.org/torvalds/c/656710a60e36) | [mm] | userfaultfd: non-cooperative: closing the uffd without triggering SIGBUS |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-781 |
| FEATURE-MISSING | 4.14 | [`384632e67e08`](https://git.kernel.org/torvalds/c/384632e67e08) | [mm] | userfaultfd: non-cooperative: fix fork use after free |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-781 |
| FEATURE-MISSING | 4.14 | [`9d4ac934829a`](https://git.kernel.org/torvalds/c/9d4ac934829a) | [mm] | userfaultfd: provide pid in userfault msg |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-781 |
| FEATURE-MISSING | 4.14 | [`a36985d31a65`](https://git.kernel.org/torvalds/c/a36985d31a65) | [mm] | userfaultfd: provide pid in userfault msg - add feat union |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-781 |
| FEATURE-MISSING | 4.14 | [`ce53e8e6f2cb`](https://git.kernel.org/torvalds/c/ce53e8e6f2cb) | [mm] | userfaultfd: report UFFDIO_ZEROPAGE as available for shmem VMAs |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-781 |
| FEATURE-MISSING | 4.14 | [`8d1039634206`](https://git.kernel.org/torvalds/c/8d1039634206) | [mm] | userfaultfd: shmem: add shmem_mfill_zeropage_pte for userfaultfd support |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-781 |
| FEATURE-MISSING | 4.14 | [`8fb44e5403ca`](https://git.kernel.org/torvalds/c/8fb44e5403ca) | [mm] | userfaultfd: shmem: wire up shmem_mfill_zeropage_pte |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-781 |
| FEATURE-MISSING | 4.15 | [`0cbb4b4f4c44`](https://git.kernel.org/torvalds/c/0cbb4b4f4c44) | [mm] | userfaultfd: clear the vma->vm_userfaultfd_ctx if UFFD_EVENT_FORK fails |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-851 |
| FEATURE-MISSING | 4.18 | [`df2cc96e7701`](https://git.kernel.org/torvalds/c/df2cc96e7701) | [mm] | userfaultfd: prevent non-cooperative events vs mcopy_atomic races | CVE-2018-18397 | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-971 |
| FEATURE-MISSING | 4.20 | [`3b9aadf7278d`](https://git.kernel.org/torvalds/c/3b9aadf7278d) | [mm] | userfaultfd: allow get_mempolicy(MPOL_F_NODE\|MPOL_F_ADDR) to trigger userfaults | CVE-2018-18397 | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-971 |
| FEATURE-MISSING | 4.20 | [`29ec90660d68`](https://git.kernel.org/torvalds/c/29ec90660d68) | [mm] | userfaultfd: shmem/hugetlbfs: only allow to register VM_MAYWRITE vmas | CVE-2018-18397 | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-971 |
| FEATURE-MISSING | 4.20 | [`e2a50c1f6414`](https://git.kernel.org/torvalds/c/e2a50c1f6414) | [mm] | userfaultfd: shmem: add i_size checks | CVE-2018-18397 | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-971 |
| FEATURE-MISSING | 4.20 | [`5b51072e97d5`](https://git.kernel.org/torvalds/c/5b51072e97d5) | [mm] | userfaultfd: shmem: allocate anonymous memory for MAP_PRIVATE shmem | CVE-2018-18397 | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-971 |
| FEATURE-MISSING | 4.20 | [`dcf7fe9d8976`](https://git.kernel.org/torvalds/c/dcf7fe9d8976) | [mm] | userfaultfd: shmem: uffdio_copy: set the page dirty if VM_WRITE is not set | CVE-2018-18397 | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-971 |
| FEATURE-MISSING | 4.20 | [`9e368259ad98`](https://git.kernel.org/torvalds/c/9e368259ad98) | [mm] | userfaultfd: use ENOENT instead of EFAULT if the atomic copy user fails | CVE-2018-18397 | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-971 |
| FEATURE-MISSING | — | — | [mm] | userfaultfd: cleanup superfluous _irq locking |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | — | — | [mm] | userfaultfd: hugetlbfs: backport build fixes |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | — | — | [mm] | userfaultfd: non-cooperative: add event for memory unmap to mm/fremap.c |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | — | — | [mm] | userfaultfd: Rename uffd_api.bits into .features fixup |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | — | — | [mm] | userfaultfd: shmem: backport build fixes |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | — | — | [mm] | userfaultfd: shmem: use __SetPageSwapBacked in shmem_mcopy_atomic_pte() |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | — | — | [mm] | userfaultfd: switch to exclusive wakeup for blocking reads |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | — | — | [mm] | userfaultfd: uapi: add missing include/types.h |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | — | — | [mm] | userfaultfd: update the uffd_msg structure to be the same on 32/64bit |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | — | — | [mm] | userfaultfd: waitqueue_active() race fix |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
