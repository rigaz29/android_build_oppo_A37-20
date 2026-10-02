# Block layer, device-mapper, MD, zram: backport candidates from CentOS 7

1632 entries: 800 CANDIDATE, 535 FEATURE-MISSING, 297 REVIEW. Sorted by status, then by the first mainline release that has the commit. "loose" means the RHEL subject only matched after normalising its prefix; check it before cherry-picking. See ../README.md for the method and its limits.

| Status | First in | Upstream | Tag | Subject | CVE | Why relevant | RHEL |
|---|---|---|---|---|---|---|---|
| CANDIDATE | 3.11 | [`fb32975d1ba6`](https://git.kernel.org/torvalds/c/fb32975d1ba6) | [block] | aoe: adjust ref of head for compound page tails |  | generic code, tag [block] | 3.10.0-177 |
| CANDIDATE | 3.11 | [`0b776b062843`](https://git.kernel.org/torvalds/c/0b776b062843) (loose) | [block] | delete __cpuinit usage from all block files |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.11 | [`2a7faeb176fb`](https://git.kernel.org/torvalds/c/2a7faeb176fb) | [md] | dm: optimize reorder structure |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-30 |
| CANDIDATE | 3.11 | [`83d5e5b0af90`](https://git.kernel.org/torvalds/c/83d5e5b0af90) | [md] | dm: optimize use SRCU and RCU |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-30 |
| CANDIDATE | 3.11 | [`220cd058d9b6`](https://git.kernel.org/torvalds/c/220cd058d9b6) | [md] | dm: use __GFP_HIGHMEM in __vmalloc |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-30 |
| CANDIDATE | 3.11 | [`a6b3f7614ca6`](https://git.kernel.org/torvalds/c/a6b3f7614ca6) (loose) | [block] | Reserve only one queue tag for sync IO if only 3 tags are available |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.11 | [`3eb8dcafb5a7`](https://git.kernel.org/torvalds/c/3eb8dcafb5a7) | [block] | rsxx: Adapter address space sanity check |  | generic code, tag [block] | 3.10.0-40 |
| CANDIDATE | 3.11 | [`b8b225da139f`](https://git.kernel.org/torvalds/c/b8b225da139f) | [block] | rsxx: Adding EEH check inside cregs timeout |  | generic code, tag [block] | 3.10.0-40 |
| CANDIDATE | 3.11 | [`36f988e978f8`](https://git.kernel.org/torvalds/c/36f988e978f8) | [block] | rsxx: Adding in debugfs entries |  | generic code, tag [block] | 3.10.0-40 |
| CANDIDATE | 3.11 | [`fb065cd9e005`](https://git.kernel.org/torvalds/c/fb065cd9e005) | [block] | rsxx: Adding in sync_start module paramenter |  | generic code, tag [block] | 3.10.0-40 |
| CANDIDATE | 3.11 | [`7b379cc3785b`](https://git.kernel.org/torvalds/c/7b379cc3785b) | [block] | rsxx: Allow block size to be determined by configuration |  | generic code, tag [block] | 3.10.0-40 |
| CANDIDATE | 3.11 | [`f730e3dc6dc4`](https://git.kernel.org/torvalds/c/f730e3dc6dc4) | [block] | rsxx: Changing the adapter name to the official name |  | generic code, tag [block] | 3.10.0-40 |
| CANDIDATE | 3.11 | [`66bc600363ac`](https://git.kernel.org/torvalds/c/66bc600363ac) | [block] | rsxx: Fixes DLPAR add kernel panic if partition still mounted |  | generic code, tag [block] | 3.10.0-40 |
| CANDIDATE | 3.11 | [`62302508f298`](https://git.kernel.org/torvalds/c/62302508f298) | [block] | rsxx: Fixes incorrect stats calculation |  | generic code, tag [block] | 3.10.0-40 |
| CANDIDATE | 3.11 | [`31a70bb4440c`](https://git.kernel.org/torvalds/c/31a70bb4440c) | [block] | rsxx: Fixes soft-lockup issues during DMAs |  | generic code, tag [block] | 3.10.0-40 |
| CANDIDATE | 3.11 | [`a3299ab18591`](https://git.kernel.org/torvalds/c/a3299ab18591) | [block] | rsxx: Individual workqueues for interruptible events |  | generic code, tag [block] | 3.10.0-40 |
| CANDIDATE | 3.11 | [`0ab4743ebc18`](https://git.kernel.org/torvalds/c/0ab4743ebc18) | [block] | rsxx: Restructured DMA cancel scheme |  | generic code, tag [block] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`75afb352991f`](https://git.kernel.org/torvalds/c/75afb352991f) (loose) | [block] | Add nr_bios to block_rq_remap tracepoint |  | generic code, tag [block] | 3.10.0-30 |
| CANDIDATE | 3.12 | [`e8603136cb04`](https://git.kernel.org/torvalds/c/e8603136cb04) | [md] | dm: add reserved_bio_based_ios module parameter |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-30 |
| CANDIDATE | 3.12 | [`f47908269fb5`](https://git.kernel.org/torvalds/c/f47908269fb5) | [md] | dm: add reserved_rq_based_ios module parameter |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-30 |
| CANDIDATE | 3.12 | [`fd2ed4d25270`](https://git.kernel.org/torvalds/c/fd2ed4d25270) | [md] | dm: add statistics support |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-30 |
| CANDIDATE | 3.12 | [`169e2cc279c4`](https://git.kernel.org/torvalds/c/169e2cc279c4) | [md] | dm: allow error target to replace bio-based and request-based targets |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-30 |
| CANDIDATE | 3.12 | [`6cfa58573f9b`](https://git.kernel.org/torvalds/c/6cfa58573f9b) | [md] | dm: lower bio-based mempool reservation |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-30 |
| CANDIDATE | 3.12 | [`670368a8ddc5`](https://git.kernel.org/torvalds/c/670368a8ddc5) | [md] | dm: stop using WQ_NON_REENTRANT |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-30 |
| CANDIDATE | 3.12 | [`7aef2e780b13`](https://git.kernel.org/torvalds/c/7aef2e780b13) (loose) | [block] | trace all devices plug operation |  | CONFIG_FTRACE=y in A37 | 3.10.0-136 |
| CANDIDATE | 3.13 | [`6678d83f1838`](https://git.kernel.org/torvalds/c/6678d83f1838) (loose) | [block] | Consolidate duplicated bio_trim() implementations |  | generic code, tag [block] | 3.10.0-181 |
| CANDIDATE | 3.13 | [`2c140a246dc0`](https://git.kernel.org/torvalds/c/2c140a246dc0) | [md] | dm: allow remove to be deferred |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-71 |
| CANDIDATE | 3.13 | [`5442851edb28`](https://git.kernel.org/torvalds/c/5442851edb28) | [md] | dm: fix Kconfig menu indentation |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-71 |
| CANDIDATE | 3.13 | [`97597dc08f58`](https://git.kernel.org/torvalds/c/97597dc08f58) (loose) | [block] | Do not call sector_div() with a 64-bit divisor |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.13 | [`23779fbc9930`](https://git.kernel.org/torvalds/c/23779fbc9930) (loose) | [block] | Enable sysfs nomerge control for I/O requests in the plug list |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.13 | [`5953316dbf90`](https://git.kernel.org/torvalds/c/5953316dbf90) (loose) | [block] | make rq->cmd_flags be 64-bit |  | generic code, tag [block] | 3.10.0-10 |
| CANDIDATE | 3.13 | [`8f8b899563f2`](https://git.kernel.org/torvalds/c/8f8b899563f2) | [block] | mtip32xx: add SRSI support |  | generic code, tag [block] | 3.10.0-33 |
| CANDIDATE | 3.13 | [`c8afd0dcbd14`](https://git.kernel.org/torvalds/c/c8afd0dcbd14) | [block] | mtip32xx: dynamically allocate buffer in debugfs functions |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.13 | [`71fe07d04062`](https://git.kernel.org/torvalds/c/71fe07d04062) (loose) | [block] | remove request ref_count |  | generic code, tag [block] | 3.10.0-53 |
| CANDIDATE | 3.13 | [`170d800af83f`](https://git.kernel.org/torvalds/c/170d800af83f) (loose) | [block] | Replace __get_cpu_var uses |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.13 | [`e35f38bf73b6`](https://git.kernel.org/torvalds/c/e35f38bf73b6) | [block] | rsxx: Disallow discards from being unmapped |  | generic code, tag [block] | 3.10.0-48 |
| CANDIDATE | 3.13 | [`8c49a77ca451`](https://git.kernel.org/torvalds/c/8c49a77ca451) | [block] | rsxx: Fix possible kernel panic with invalid config |  | generic code, tag [block] | 3.10.0-48 |
| CANDIDATE | 3.13 | [`e5feab229f19`](https://git.kernel.org/torvalds/c/e5feab229f19) | [block] | rsxx: Handling failed pci_map_page on PowerPC and double free |  | generic code, tag [block] | 3.10.0-40 |
| CANDIDATE | 3.13 | [`1b21f5b2ad60`](https://git.kernel.org/torvalds/c/1b21f5b2ad60) | [block] | rsxx: Moving pci_map_page to prevent overflow |  | generic code, tag [block] | 3.10.0-40 |
| CANDIDATE | 3.13 | [`c170bbb45feb`](https://git.kernel.org/torvalds/c/c170bbb45feb) (loose) | [block] | submit_bio_wait() conversions |  | generic code, tag [block] | 3.10.0-181 |
| CANDIDATE | 3.14 | [`10beafc190ab`](https://git.kernel.org/torvalds/c/10beafc190ab) (loose) | [block] | change flush sequence list addition back to front add |  | generic code, tag [block] | 3.10.0-109 |
| CANDIDATE | 3.14 | [`c64d240df315`](https://git.kernel.org/torvalds/c/c64d240df315) | [md] | dm: fix Kconfig indentation |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-109 |
| CANDIDATE | 3.14 | [`1ddd641ddcfa`](https://git.kernel.org/torvalds/c/1ddd641ddcfa) | [md] | dm: remove pointless kobject comparison in dm_get_from_kobject |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-71 |
| CANDIDATE | 3.14 | [`7982e90c3a57`](https://git.kernel.org/torvalds/c/7982e90c3a57) (loose) | [block] | fix q->flush_rq NULL pointer crash on dm-mpath flush |  | generic code, tag [block] | 3.10.0-109 |
| CANDIDATE | 3.14 | [`11c94444074f`](https://git.kernel.org/torvalds/c/11c94444074f) (loose) | [block] | Fix type mismatch in ssize_t_blk_mq_tag_sysfs_show |  | generic code, tag [block] | 3.10.0-100 |
| CANDIDATE | 3.14 | [`708f04d2abf4`](https://git.kernel.org/torvalds/c/708f04d2abf4) (loose) | [block] | free q->flush_rq in blk_init_allocated_queue error paths |  | generic code, tag [block] | 3.10.0-115 |
| CANDIDATE | 3.14 | [`26d580575b4b`](https://git.kernel.org/torvalds/c/26d580575b4b) | [block] | mtip32xx: Correctly handle security locked condition |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.14 | [`7f328908f9cb`](https://git.kernel.org/torvalds/c/7f328908f9cb) | [block] | mtip32xx: fix bad use of smp_processor_id() |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.14 | [`188b9f49d4b1`](https://git.kernel.org/torvalds/c/188b9f49d4b1) | [block] | mtip32xx: Make SGL container per-command to eliminate high order dma allocation |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.14 | [`5a98268e0f65`](https://git.kernel.org/torvalds/c/5a98268e0f65) | [block] | mtip32xx: Reduce the number of unaligned writes to 2 |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.14 | [`7bfb3de8a1b3`](https://git.kernel.org/torvalds/c/7bfb3de8a1b3) | [block] | zram: add copyright |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.14 | [`db5d711e2db7`](https://git.kernel.org/torvalds/c/db5d711e2db7) | [block] | zram: avoid null access when fail to alloc meta |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.14 | [`9b353db16d18`](https://git.kernel.org/torvalds/c/9b353db16d18) | [block] | zram: delay pending free request in read path |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.14 | [`da4a04126baa`](https://git.kernel.org/torvalds/c/da4a04126baa) | [block] | zram: fix race between reset and flushing pending work |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.14 | [`92967471b671`](https://git.kernel.org/torvalds/c/92967471b671) | [block] | zram: introduce zram->tb_lock |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.14 | [`cd67e10ac699`](https://git.kernel.org/torvalds/c/cd67e10ac699) | [block] | zram: promote zram from staging |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.14 | [`874e3cddc33f`](https://git.kernel.org/torvalds/c/874e3cddc33f) | [block] | zram: remove unnecessary free |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.14 | [`f614a9f48ded`](https://git.kernel.org/torvalds/c/f614a9f48ded) | [block] | zram: remove workqueue for freeing removed pending slot |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.14 | [`e46e33152eb8`](https://git.kernel.org/torvalds/c/e46e33152eb8) | [block] | zram: remove zram->lock in read path and change it with mutex |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.14 | [`deb0bdeb2f3d`](https://git.kernel.org/torvalds/c/deb0bdeb2f3d) | [block] | zram: use atomic operation for stat |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`eec40579d848`](https://git.kernel.org/torvalds/c/eec40579d848) | [md] | dm: add era target |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-109 |
| CANDIDATE | 3.15 | [`473c36dfeecf`](https://git.kernel.org/torvalds/c/473c36dfeecf) | [md] | dm: make dm_table_alloc_md_mempools static |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-139 |
| CANDIDATE | 3.15 | [`d70ab4fb723c`](https://git.kernel.org/torvalds/c/d70ab4fb723c) | [md] | dm: remove dm_get_mapinfo |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-139 |
| CANDIDATE | 3.15 | [`bfc6d41cee53`](https://git.kernel.org/torvalds/c/bfc6d41cee53) | [md] | dm: stop using bi_private |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-139 |
| CANDIDATE | 3.15 | [`5a32083d03fb`](https://git.kernel.org/torvalds/c/5a32083d03fb) | [md] | dm: take care to copy the space map roots before locking the superblock |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-117 |
| CANDIDATE | 3.15 | [`9cdb85200496`](https://git.kernel.org/torvalds/c/9cdb85200496) | [md] | dm: use RCU_INIT_POINTER instead of rcu_assign_pointer in __unbind |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-139 |
| CANDIDATE | 3.15 | [`360f92c24430`](https://git.kernel.org/torvalds/c/360f92c24430) (loose) | [block] | fix regression with block enabled tagging |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.15 | [`5eb9291c36c7`](https://git.kernel.org/torvalds/c/5eb9291c36c7) | [block] | mtip32xx: mtip_async_complete() bug fixes |  | generic code, tag [block] | 3.10.0-133 |
| CANDIDATE | 3.15 | [`cf91f39b1704`](https://git.kernel.org/torvalds/c/cf91f39b1704) | [block] | mtip32xx: Remove superfluous call to pci_disable_msi() |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.15 | [`368c89d7ac70`](https://git.kernel.org/torvalds/c/368c89d7ac70) | [block] | mtip32xx: Unmap the DMA segments before completing the IO request |  | generic code, tag [block] | 3.10.0-133 |
| CANDIDATE | 3.15 | [`c94efe36e283`](https://git.kernel.org/torvalds/c/c94efe36e283) | [block] | mtip32xx: Use pci_enable_msi() instead of pci_enable_msi_range() |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.15 | [`f219ad82f868`](https://git.kernel.org/torvalds/c/f219ad82f868) | [block] | mtip32xx: Use pci_enable_msix_range() instead of pci_enable_msix() |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.15 | [`89f8b33ca1ea`](https://git.kernel.org/torvalds/c/89f8b33ca1ea) (loose) | [block] | remove old blk_iopoll_enabled variable |  | generic code, tag [block] | 3.10.0-419 |
| CANDIDATE | 3.15 | [`d9a74df512e4`](https://git.kernel.org/torvalds/c/d9a74df512e4) (loose) | [block] | Remove useless IPI struct initialization |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.15 | [`8b4922d3173d`](https://git.kernel.org/torvalds/c/8b4922d3173d) (loose) | [block] | Stop abusing csd.list for fifo_time |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.15 | [`6d113398dcf4`](https://git.kernel.org/torvalds/c/6d113398dcf4) (loose) | [block] | Stop abusing rq->csd.list in blk-softirq |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.15 | [`beca3ec71fe5`](https://git.kernel.org/torvalds/c/beca3ec71fe5) | [block] | zram: add multi stream functionality |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`fe8eb122c82b`](https://git.kernel.org/torvalds/c/fe8eb122c82b) | [block] | zram: add set_max_streams knob |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`b67d1ec189ff`](https://git.kernel.org/torvalds/c/b67d1ec189ff) | [block] | zram: delete zram_init_device() |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`be257c613067`](https://git.kernel.org/torvalds/c/be257c613067) | [block] | zram: do not pass rw argument to __zram_make_request() |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`be2d1d56c82d`](https://git.kernel.org/torvalds/c/be2d1d56c82d) | [block] | zram: drop `init_done' struct zram member |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`59fc86a4922f`](https://git.kernel.org/torvalds/c/59fc86a4922f) | [block] | zram: drop not used table `count' member |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`9cc97529a180`](https://git.kernel.org/torvalds/c/9cc97529a180) | [block] | zram: factor out single stream compression |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`e7e1ef439d18`](https://git.kernel.org/torvalds/c/e7e1ef439d18) | [block] | zram: introduce compressing backend abstraction |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`e46b8a030d76`](https://git.kernel.org/torvalds/c/e46b8a030d76) | [block] | zram: make compression algorithm selection possible |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`d61f98c70e8b`](https://git.kernel.org/torvalds/c/d61f98c70e8b) | [block] | zram: move comp allocation out of init_lock |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`e64cd51d2fa8`](https://git.kernel.org/torvalds/c/e64cd51d2fa8) | [block] | zram: move zram size warning to documentation |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`60a726e33375`](https://git.kernel.org/torvalds/c/60a726e33375) | [block] | zram: propagate error to user |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`b7cccf8b4009`](https://git.kernel.org/torvalds/c/b7cccf8b4009) | [block] | zram: remove good and bad compress stats |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`a68eb3b65e65`](https://git.kernel.org/torvalds/c/a68eb3b65e65) | [block] | zram: remove zram stats code duplication |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`6444724939db`](https://git.kernel.org/torvalds/c/6444724939db) | [block] | zram: report failed read and write stats |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`fcfa8d95cacf`](https://git.kernel.org/torvalds/c/fcfa8d95cacf) | [block] | zram: return error-valued pointer from zcomp_create() |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`f4659d8e620d`](https://git.kernel.org/torvalds/c/f4659d8e620d) | [block] | zram: support REQ_DISCARD |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`90a7806ea9b9`](https://git.kernel.org/torvalds/c/90a7806ea9b9) | [block] | zram: use atomic64_t for all zram stats |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`56b4e8cb8582`](https://git.kernel.org/torvalds/c/56b4e8cb8582) | [block] | zram: use scnprintf() in attrs show() methods |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.15 | [`b7ca232ee7e8`](https://git.kernel.org/torvalds/c/b7ca232ee7e8) | [block] | zram: use zcomp compressing backends |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.16 | [`8ab14595b6df`](https://git.kernel.org/torvalds/c/8ab14595b6df) (loose) | [block] | add kblockd_schedule_delayed_work_on() |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`762380ad9322`](https://git.kernel.org/torvalds/c/762380ad9322) (loose) | [block] | add notion of a chunk size for request merging |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`05f1dd531521`](https://git.kernel.org/torvalds/c/05f1dd531521) (loose) | [block] | add queue flag for disabling SG merging |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`66cb45aa4131`](https://git.kernel.org/torvalds/c/66cb45aa4131) (loose) | [block] | add support for limiting gaps in SG lists |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`fb3ccb5da712`](https://git.kernel.org/torvalds/c/fb3ccb5da712) (loose) | [block] | all blk-mq requests are tagged |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`736ed4de766d`](https://git.kernel.org/torvalds/c/736ed4de766d) (loose) | [block] | blk_max_size_offset() should check ->max_sectors |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`a72132c31d58`](https://git.kernel.org/torvalds/c/a72132c31d58) | [block] | brd: add support for rw_page() |  | CONFIG_BLK_DEV_RAM=y in A37 | 3.10.0-427 |
| CANDIDATE | 3.16 | [`96f8d8e0965b`](https://git.kernel.org/torvalds/c/96f8d8e0965b) | [block] | brd: return -ENOSPC rather than -ENOMEM on page allocation failure |  | CONFIG_BLK_DEV_RAM=y in A37 | 3.10.0-427 |
| CANDIDATE | 3.16 | [`49fd524f95cb`](https://git.kernel.org/torvalds/c/49fd524f95cb) | [block] | bsg: update check for rq based driver for blk-mq |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`acfe0ad74d2e`](https://git.kernel.org/torvalds/c/acfe0ad74d2e) | [md] | dm: allocate a special workqueue for deferred device removal |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-139 |
| CANDIDATE | 3.16 | [`e0d6609a5fe3`](https://git.kernel.org/torvalds/c/e0d6609a5fe3) | [md] | dm: change sector_count member in clone_info from sector_t to unsigned |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-139 |
| CANDIDATE | 3.16 | [`7eee4ae2dbb2`](https://git.kernel.org/torvalds/c/7eee4ae2dbb2) | [md] | dm: disable WRITE SAME if it fails |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-139 |
| CANDIDATE | 3.16 | [`1dd40c3ecd9b`](https://git.kernel.org/torvalds/c/1dd40c3ecd9b) | [md] | dm: introduce dm_accept_partial_bio |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-139 |
| CANDIDATE | 3.16 | [`11f0431be2f9`](https://git.kernel.org/torvalds/c/11f0431be2f9) | [md] | dm: remove symbol export for dm_set_device_limits |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-139 |
| CANDIDATE | 3.16 | [`58a4915ad2f8`](https://git.kernel.org/torvalds/c/58a4915ad2f8) (loose) | [block] | ensure that bio_add_page() always accepts a page for an empty bio |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`c7bca4183f73`](https://git.kernel.org/torvalds/c/c7bca4183f73) (loose) | [block] | ensure that the timer is always added |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`12120077b261`](https://git.kernel.org/torvalds/c/12120077b261) (loose) | [block] | export blk_finish_request |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`c4a634f43237`](https://git.kernel.org/torvalds/c/c4a634f43237) (loose) | [block] | fold __blk_add_timer into blk_add_timer |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`a8a642ccd2e8`](https://git.kernel.org/torvalds/c/a8a642ccd2e8) | [block] | mtip32xx: blk_mq_init_queue() returns an ERR_PTR |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`ffc771b3ca8b`](https://git.kernel.org/torvalds/c/ffc771b3ca8b) | [block] | mtip32xx: convert to use blk-mq |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`f45c40a92d2c`](https://git.kernel.org/torvalds/c/f45c40a92d2c) | [block] | mtip32xx: minor performance enhancements |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`9b204fbf0987`](https://git.kernel.org/torvalds/c/9b204fbf0987) | [block] | mtip32xx: move error handling to service thread |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`9acf03cfb1fb`](https://git.kernel.org/torvalds/c/9acf03cfb1fb) | [block] | mtip32xx: stop block hardware queues before quiescing IO |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`3d2936f457a8`](https://git.kernel.org/torvalds/c/3d2936f457a8) (loose) | [block] | only allocate/free mq_usage_counter in blk-mq |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`7276d02e241d`](https://git.kernel.org/torvalds/c/7276d02e241d) (loose) | [block] | only calculate part_in_flight() once |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`f793aa537866`](https://git.kernel.org/torvalds/c/f793aa537866) (loose) | [block] | relax when to modify the timeout timer |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`59c3d45e4873`](https://git.kernel.org/torvalds/c/59c3d45e4873) (loose) | [block] | remove 'q' parameter from kblockd_schedule_*_work() |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`da52f22fa924`](https://git.kernel.org/torvalds/c/da52f22fa924) (loose) | [block] | remove dead code in scsi_ioctl:blk_verify_command |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`2940474af797`](https://git.kernel.org/torvalds/c/2940474af797) (loose) | [block] | remove elv_abort_queue and blk_abort_flushes |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | 3.16 | [`b4c5c60920e3`](https://git.kernel.org/torvalds/c/b4c5c60920e3) | [block] | zram: avoid lockdep splat by revalidate_disk |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.16 | [`38515c73398a`](https://git.kernel.org/torvalds/c/38515c73398a) | [block] | zram: correct offset usage in zram_bio_discard |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.16 | [`2e32baea46ce`](https://git.kernel.org/torvalds/c/2e32baea46ce) | [block] | zram: revalidate disk after capacity change |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.17 | [`0738854939e6`](https://git.kernel.org/torvalds/c/0738854939e6) | [block] | blk-merge: fix blk_recount_segments |  | generic code, tag [block] | 3.10.0-195 |
| CANDIDATE | 3.17 | [`7b5af5cffce5`](https://git.kernel.org/torvalds/c/7b5af5cffce5) | [block] | cfq-iosched: Add comments on update timing of weight |  | CONFIG_IOSCHED_CFQ=y in A37 | 3.10.0-183 |
| CANDIDATE | 3.17 | [`63f264965947`](https://git.kernel.org/torvalds/c/63f264965947) (loose) | [block] | fix BLKSECTGET ioctl when max_sectors is greater than USHRT_MAX |  | generic code, tag [block] | 3.10.0-195 |
| CANDIDATE | 3.17 | [`9b4231bf9959`](https://git.kernel.org/torvalds/c/9b4231bf9959) (loose) | [block] | fix SG_[GS]ET_RESERVED_SIZE ioctl when max_sectors is huge |  | generic code, tag [block] | 3.10.0-195 |
| CANDIDATE | 3.17 | [`df35c7c912fe`](https://git.kernel.org/torvalds/c/df35c7c912fe) (loose) | [block] | fix unbalanced bypass-disable in blk_register_queue |  | generic code, tag [block] | 3.10.0-195 |
| CANDIDATE | 3.17 | [`6a2414836154`](https://git.kernel.org/torvalds/c/6a2414836154) (loose) | [block] | use kmalloc alignment for bio slab |  | generic code, tag [block] | 3.10.0-139 |
| CANDIDATE | 3.17 | [`0cf1e9d6c34d`](https://git.kernel.org/torvalds/c/0cf1e9d6c34d) | [block] | zram: fix incorrect stat with failed_reads |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.17 | [`a830eff749eb`](https://git.kernel.org/torvalds/c/a830eff749eb) | [block] | zram: remove unused SECTOR_SIZE define |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.17 | [`cb8f2eec3c5c`](https://git.kernel.org/torvalds/c/cb8f2eec3c5c) | [block] | zram: rename struct `table' to `zram_table_entry' |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.17 | [`d2d5e762c899`](https://git.kernel.org/torvalds/c/d2d5e762c899) | [block] | zram: replace global tb_lock with fine grain lock |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.17 | [`023b409f9dac`](https://git.kernel.org/torvalds/c/023b409f9dac) | [block] | zram: use size_t instead of u16 |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.18 | [`7ddab5de5b80`](https://git.kernel.org/torvalds/c/7ddab5de5b80) (loose) | [block] | avoid to use q->flush_rq directly |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`ff9ea323816d`](https://git.kernel.org/torvalds/c/ff9ea323816d) (loose) | [block] | bdi: an active gendisk always has a request_queue associated with it |  | generic code, tag [block] | 3.10.0-195 |
| CANDIDATE | 3.18 | [`018a17bdc865`](https://git.kernel.org/torvalds/c/018a17bdc865) | [block] | bdi: reimplement bdev_inode_switch_bdi() |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`5e940aaa597c`](https://git.kernel.org/torvalds/c/5e940aaa597c) | [block] | blk-timeout: fix blk_add_timer |  | generic code, tag [block] | 3.10.0-195 |
| CANDIDATE | 3.18 | [`4eaf99beadce`](https://git.kernel.org/torvalds/c/4eaf99beadce) | [block] | block: Don't merge requests if integrity flags differ |  | generic code, tag [block] | 3.10.0-1112 |
| CANDIDATE | 3.18 | [`447f05bb488b`](https://git.kernel.org/torvalds/c/447f05bb488b) | [block] | block_dev: implement readpages() to optimize sequential read |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`55872c5a3c01`](https://git.kernel.org/torvalds/c/55872c5a3c01) | [block] | bsg: fix potential error pointer dereference |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`b277da0a8a59`](https://git.kernel.org/torvalds/c/b277da0a8a59) (loose) | [block] | disable entropy contributions for nonrot devices |  | generic code, tag [block] | 3.10.0-192 |
| CANDIDATE | 3.18 | [`86f1152b117a`](https://git.kernel.org/torvalds/c/86f1152b117a) | [md] | dm: allow active and inactive tables to share dm_devs |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-216 |
| CANDIDATE | 3.18 | [`90415837659f`](https://git.kernel.org/torvalds/c/90415837659f) (loose) | [block] | fix blk_abort_request on blk-mq |  | generic code, tag [block] | 3.10.0-195 |
| CANDIDATE | 3.18 | [`d32f6b57523b`](https://git.kernel.org/torvalds/c/d32f6b57523b) (loose) | [block] | fix wrong error return in elevator_init() |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`0bae352da54a`](https://git.kernel.org/torvalds/c/0bae352da54a) (loose) | [block] | flush: avoid to figure out flush queue unnecessarily |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`7b2b10e0e2c6`](https://git.kernel.org/torvalds/c/7b2b10e0e2c6) (loose) | [block] | include func name in __get_request prints |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`61a04e5b306a`](https://git.kernel.org/torvalds/c/61a04e5b306a) | [block] | include/linux/blkdev.h: use NULL instead of zero |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`e97c293cdf77`](https://git.kernel.org/torvalds/c/e97c293cdf77) (loose) | [block] | introduce 'blk_mq_ctx' parameter to blk_get_flush_queue |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`7c94e1c157a2`](https://git.kernel.org/torvalds/c/7c94e1c157a2) (loose) | [block] | introduce blk_flush_queue to drive flush machinery |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`f35526557144`](https://git.kernel.org/torvalds/c/f35526557144) (loose) | [block] | introduce blk_init_flush and its pair |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`ef3ecb66bcd6`](https://git.kernel.org/torvalds/c/ef3ecb66bcd6) (loose) | [block] | make blk_update_request print prefix match ratelimited prefix |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`4a0efdc93368`](https://git.kernel.org/torvalds/c/4a0efdc93368) (loose) | [block] | misplaced rq_complete tracepoint |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`3c09676c12b1`](https://git.kernel.org/torvalds/c/3c09676c12b1) (loose) | [block] | move flush initialization to blk_flush_init |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`ba483388e305`](https://git.kernel.org/torvalds/c/ba483388e305) (loose) | [block] | remove blk_init_flush() and its pair |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`b2de525f0957`](https://git.kernel.org/torvalds/c/b2de525f0957) | [block] | Return short read or 0 at end of a raw device, not EIO |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`e999dbc25404`](https://git.kernel.org/torvalds/c/e999dbc25404) | [block] | revert "block: all blk-mq requests are tagged" |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`c40651523937`](https://git.kernel.org/torvalds/c/c40651523937) | [block] | zram: avoid kunmap_atomic() of a NULL pointer |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.18 | [`5a99e95b8d1c`](https://git.kernel.org/torvalds/c/5a99e95b8d1c) | [block] | zram: avoid NULL pointer access in concurrent situation |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.18 | [`461a8eee6af3`](https://git.kernel.org/torvalds/c/461a8eee6af3) | [block] | zram: report maximum used memory |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.18 | [`9ada9da9573f`](https://git.kernel.org/torvalds/c/9ada9da9573f) | [block] | zram: zram memory size limitation |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.19 | [`fa573f72790c`](https://git.kernel.org/torvalds/c/fa573f72790c) | [block] | block/rsxx: use generic io stats accounting functions to simplify io stat accounting |  | generic code, tag [block] | 3.10.0-1160.13.1 |
| CANDIDATE | 3.19 | [`35b489d32fcc`](https://git.kernel.org/torvalds/c/35b489d32fcc) | [block] | block: fix checking return value of blk_mq_init_queue |  | generic code, tag [block] | 3.10.0-1132 |
| CANDIDATE | 3.19 | [`d67ee213fa57`](https://git.kernel.org/torvalds/c/d67ee213fa57) | [md] | dm: add presuspend_undo hook to target_type |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-216 |
| CANDIDATE | 3.19 | [`41abc4e1af36`](https://git.kernel.org/torvalds/c/41abc4e1af36) | [md] | dm: do not call dm_sync_table() when creating new devices |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-216 |
| CANDIDATE | 3.19 | [`ffcc39364160`](https://git.kernel.org/torvalds/c/ffcc39364160) | [md] | dm: enhance internal suspend and resume interface |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-216 |
| CANDIDATE | 3.19 | [`96b26c8c64c7`](https://git.kernel.org/torvalds/c/96b26c8c64c7) | [md] | dm: fix handling of multiple internal suspends |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | 3.19 | [`5164bece1673`](https://git.kernel.org/torvalds/c/5164bece1673) | [md] | dm: fix missed error code if .end_io isn't implemented by target_type |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | 3.19 | [`148e51baf8e7`](https://git.kernel.org/torvalds/c/148e51baf8e7) | [md] | dm: improve documentation and code clarity in dm_merge_bvec |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-198 |
| CANDIDATE | 3.19 | [`4d341d821633`](https://git.kernel.org/torvalds/c/4d341d821633) | [md] | dm: return earlier from dm_blk_ioctl if target doesn't implement .ioctl |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-216 |
| CANDIDATE | 3.19 | [`33423974bfc1`](https://git.kernel.org/torvalds/c/33423974bfc1) | [md] | dm: Use rcu_dereference() for accessing rcu pointer |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-216 |
| CANDIDATE | 3.19 | [`a12f5d48bdfe`](https://git.kernel.org/torvalds/c/a12f5d48bdfe) | [md] | dm: use rcu_dereference_protected instead of rcu_dereference |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-216 |
| CANDIDATE | 3.19 | [`18c0b223cf99`](https://git.kernel.org/torvalds/c/18c0b223cf99) | [md] | md: use generic io stats accounting functions to simplify io stat accounting |  | CONFIG_MD=y in A37 | 3.10.0-1160.13.1 |
| CANDIDATE | 3.19 | [`34b48db66e08`](https://git.kernel.org/torvalds/c/34b48db66e08) (loose) | [block] | remove artifical max_hw_sectors cap |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.19 | [`35d37c66356e`](https://git.kernel.org/torvalds/c/35d37c66356e) | [block] | revert "blk-mq: Micro-optimize bt_get()" |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.19 | [`aed3ea94bdd2`](https://git.kernel.org/torvalds/c/aed3ea94bdd2) (loose) | [block] | wake up waiters when a queue is marked dying |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 3.19 | [`54850e73e86e`](https://git.kernel.org/torvalds/c/54850e73e86e) | [block] | zram: change parameter from vaild_io_request() |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.19 | [`b627cff3d308`](https://git.kernel.org/torvalds/c/b627cff3d308) | [block] | zram: remove bio parameter from zram_bvec_rw() |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 3.19 | [`083914eab96f`](https://git.kernel.org/torvalds/c/083914eab96f) | [block] | zram: use DEVICE_ATTR_[RW\|RO\|WO] to define zram sys device attribute |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.0 | [`bc188d818edf`](https://git.kernel.org/torvalds/c/bc188d818edf) | [block] | blkmq: Fix NULL pointer deref when all reserved tags in |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 4.0 | [`a7a97fc9ff6c`](https://git.kernel.org/torvalds/c/a7a97fc9ff6c) | [block] | brd: rename XIP to DAX |  | CONFIG_BLK_DEV_RAM=y in A37 | 3.10.0-427 |
| CANDIDATE | 4.0 | [`e5863d9ad754`](https://git.kernel.org/torvalds/c/e5863d9ad754) | [md] | dm: allocate requests in target when stacking on blk-mq devices |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | 4.0 | [`63a4f065ece6`](https://git.kernel.org/torvalds/c/63a4f065ece6) | [md] | dm: fix add_disk() NULL pointer due to race with free_dev() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | 4.0 | [`db507b3ffd9b`](https://git.kernel.org/torvalds/c/db507b3ffd9b) | [md] | dm: fix multipath regression due to initializing wrong request |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | 4.0 | [`a4afe76b2b92`](https://git.kernel.org/torvalds/c/a4afe76b2b92) | [md] | dm: inherit QUEUE_FLAG_SG_GAPS flags from underlying queues |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | 4.0 | [`466d89a6bcd5`](https://git.kernel.org/torvalds/c/466d89a6bcd5) | [md] | dm: prepare for allocating blk-mq clone requests in target |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | 4.0 | [`dbf9782c1078`](https://git.kernel.org/torvalds/c/dbf9782c1078) | [md] | dm: remove exports for request-based interfaces without external callers |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | 4.0 | [`1ae49ea2cf3e`](https://git.kernel.org/torvalds/c/1ae49ea2cf3e) | [md] | dm: split request structure out from dm_rq_target_io structure |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | 4.0 | [`2eb6e1e3aa87`](https://git.kernel.org/torvalds/c/2eb6e1e3aa87) | [md] | dm: submit stacked requests in irq enabled context |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | 4.0 | [`0f30af98cbb1`](https://git.kernel.org/torvalds/c/0f30af98cbb1) | [md] | dm: use time_in_range() and time_after() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | 4.0 | [`7ee8e4f3983c`](https://git.kernel.org/torvalds/c/7ee8e4f3983c) | [block] | Fix bug in blk_rq_merge_ok |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 4.0 | [`854fbb9c699e`](https://git.kernel.org/torvalds/c/854fbb9c699e) (loose) | [block] | prevent request-to-request merging with gaps if not allowed |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 4.0 | [`ee1b6f7aff94`](https://git.kernel.org/torvalds/c/ee1b6f7aff94) (loose) | [block] | support different tag allocation policy |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.0 | [`2b269ce6fcbf`](https://git.kernel.org/torvalds/c/2b269ce6fcbf) | [block] | zram: check bd_openers instead of bd_holders |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.0 | [`b8179958327a`](https://git.kernel.org/torvalds/c/b8179958327a) | [block] | zram: clean up zram_meta_alloc() |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.0 | [`ba6b17d68c8e`](https://git.kernel.org/torvalds/c/ba6b17d68c8e) | [block] | zram: fix umount-reset_store-mount race condition |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.0 | [`1fec117281d9`](https://git.kernel.org/torvalds/c/1fec117281d9) | [block] | zram: free meta table in zram_meta_free |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.0 | [`08eee69fcf6b`](https://git.kernel.org/torvalds/c/08eee69fcf6b) | [block] | zram: remove init_lock in zram_make_request |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.0 | [`ee98016010ae`](https://git.kernel.org/torvalds/c/ee98016010ae) | [block] | zram: remove request_queue from struct zram |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.0 | [`a096cafc3186`](https://git.kernel.org/torvalds/c/a096cafc3186) | [block] | zram: rework reset and destroy path |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.0 | [`2ea55a2caee0`](https://git.kernel.org/torvalds/c/2ea55a2caee0) | [block] | zram: use proper type to update max_used_pages |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.1 | [`17e149b8f73b`](https://git.kernel.org/torvalds/c/17e149b8f73b) | [md] | dm: add 'use_blk_mq' module param and expose in per-device ro sysfs attr |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`bfebd1cdb497`](https://git.kernel.org/torvalds/c/bfebd1cdb497) | [md] | dm: add full blk-mq support to request-based DM |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`0e9cebe72459`](https://git.kernel.org/torvalds/c/0e9cebe72459) | [md] | dm: add log writes target |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-942 |
| CANDIDATE | 4.1 | [`9d1deb83d489`](https://git.kernel.org/torvalds/c/9d1deb83d489) | [md] | dm: don't schedule delayed run of the queue if nothing to do |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`de3ec86dff16`](https://git.kernel.org/torvalds/c/de3ec86dff16) | [md] | dm: don't start current request if it would've merged with the previous |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`1c220c69ce0d`](https://git.kernel.org/torvalds/c/1c220c69ce0d) | [md] | dm: fix casting bug in dm_merge_bvec() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`e5d8de32cc02`](https://git.kernel.org/torvalds/c/e5d8de32cc02) | [md] | dm: fix false warning in free_rq_clone() for unmapped requests |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`aa6df8dd28c0`](https://git.kernel.org/torvalds/c/aa6df8dd28c0) | [md] | dm: fix free_rq_clone() NULL pointer when requeueing unmapped request |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`3a1407559a59`](https://git.kernel.org/torvalds/c/3a1407559a59) | [md] | dm: fix NULL pointer when clone_and_map_rq returns !DM_MAPIO_REMAPPED |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`15b94a690470`](https://git.kernel.org/torvalds/c/15b94a690470) | [md] | dm: fix reload failure of 0 path multipath mapping on blk-mq devices |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`0ce65797a77e`](https://git.kernel.org/torvalds/c/0ce65797a77e) | [md] | dm: impose configurable deadline for dm_request_fn's merge heuristic |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`3e6180f0c82b`](https://git.kernel.org/torvalds/c/3e6180f0c82b) | [md] | dm: only initialize the request_queue once |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`9a0e609e3fd8`](https://git.kernel.org/torvalds/c/9a0e609e3fd8) | [md] | dm: only run the queue on completion if congested or no requests pending |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`022333427a8a`](https://git.kernel.org/torvalds/c/022333427a8a) | [md] | dm: optimize dm_mq_queue_rq to _not_ use kthread if using pure blk-mq |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`d548b34b062b`](https://git.kernel.org/torvalds/c/d548b34b062b) | [md] | dm: reduce the queue delay used in dm_request_fn from 100ms to 10ms |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`d56b9b28a4a5`](https://git.kernel.org/torvalds/c/d56b9b28a4a5) | [md] | dm: remove request-based DM queue's lld_busy_fn hook |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`ff36ab34583a`](https://git.kernel.org/torvalds/c/ff36ab34583a) | [md] | dm: remove request-based logic from make_request_fn wrapper |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`52b09914af86`](https://git.kernel.org/torvalds/c/52b09914af86) | [md] | dm: remove unnecessary wrapper around blk_lld_busy |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`09c2d53101da`](https://git.kernel.org/torvalds/c/09c2d53101da) | [md] | dm: rename __dm_get_reserved_ios() helper to __dm_get_module_param() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`45714fbed455`](https://git.kernel.org/torvalds/c/45714fbed455) | [md] | dm: requeue from blk-mq dm_mq_queue_rq() using BLK_MQ_RQ_QUEUE_BUSY |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`4ae9944d132b`](https://git.kernel.org/torvalds/c/4ae9944d132b) | [md] | dm: run queue on re-queue |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | 4.1 | [`9e853f2313e5`](https://git.kernel.org/torvalds/c/9e853f2313e5) | [block] | drivers/block/pmem: Add a driver for persistent memory |  | generic code, tag [block] | 3.10.0-427 |
| CANDIDATE | 4.1 | [`4c1eaa2344fb`](https://git.kernel.org/torvalds/c/4c1eaa2344fb) | [block] | drivers/block/pmem: Fix 32-bit build warning in pmem_alloc() |  | generic code, tag [block] | 3.10.0-427 |
| CANDIDATE | 4.1 | [`f9018ac9308e`](https://git.kernel.org/torvalds/c/f9018ac9308e) (loose) | [block] | remove redundant check about 'set->nr_hw_queues' in blk_mq_alloc_tag_set() |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | 4.1 | [`d7ad41a1c498`](https://git.kernel.org/torvalds/c/d7ad41a1c498) | [block] | zram: clear disk io accounting when reset zram device |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.1 | [`2f6a3bed7347`](https://git.kernel.org/torvalds/c/2f6a3bed7347) | [block] | zram: export new 'io_stat' sysfs attrs |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.1 | [`4f2109f60881`](https://git.kernel.org/torvalds/c/4f2109f60881) | [block] | zram: export new 'mm_stat' sysfs attrs |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.1 | [`201c7b72f0bf`](https://git.kernel.org/torvalds/c/201c7b72f0bf) | [block] | zram: fix error return code |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.2 | [`3f21c265cd5f`](https://git.kernel.org/torvalds/c/3f21c265cd5f) (loose) | [block] | add blk_set_queue_dying() to blkdev.h |  | generic code, tag [block] | 3.10.0-303 |
| CANDIDATE | 4.2 | [`0bb979472a74`](https://git.kernel.org/torvalds/c/0bb979472a74) | [block] | cfq-iosched: fix the setting of IOPS mode on SSDs |  | CONFIG_IOSCHED_CFQ=y in A37 | 3.10.0-761 |
| CANDIDATE | 4.2 | [`2d76fff18fd1`](https://git.kernel.org/torvalds/c/2d76fff18fd1) | [md] | dm: cleanup methods that requeue requests |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.2 | [`e548ca4ee459`](https://git.kernel.org/torvalds/c/e548ca4ee459) (loose) | [block] | don't honor chunk sizes for data-less IO |  | generic code, tag [block] | 3.10.0-470 |
| CANDIDATE | 4.2 | [`be32417796c2`](https://git.kernel.org/torvalds/c/be32417796c2) (loose) | [block] | export blkdev_reread_part() and __blkdev_reread_part() |  | generic code, tag [block] | 3.10.0-263 |
| CANDIDATE | 4.2 | [`f8933667953e`](https://git.kernel.org/torvalds/c/f8933667953e) (loose) | [block] | loop: don't hold lo_ctl_mutex in lo_open |  | CONFIG_BLK_DEV_LOOP=y in A37 | 3.10.0-263 |
| CANDIDATE | 4.2 | [`06f0e9e68c0d`](https://git.kernel.org/torvalds/c/06f0e9e68c0d) (loose) | [block] | loop: fix another reread part failure |  | CONFIG_BLK_DEV_LOOP=y in A37 | 3.10.0-263 |
| CANDIDATE | 4.2 | [`6a9270075858`](https://git.kernel.org/torvalds/c/6a9270075858) | [block] | loop: remove (now) unused 'out' label |  | CONFIG_BLK_DEV_LOOP=y in A37 | 3.10.0-263 |
| CANDIDATE | 4.2 | [`41c0126b3f22`](https://git.kernel.org/torvalds/c/41c0126b3f22) (loose) | [block] | Make CFQ default to IOPS mode on SSDs |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.2 | [`74c9c9134bf8`](https://git.kernel.org/torvalds/c/74c9c9134bf8) | [block] | mtip32x: fix regression introduced by blk-mq per-hctx flush |  | generic code, tag [block] | 3.10.0-311 |
| CANDIDATE | 4.2 | [`686d8e0bb520`](https://git.kernel.org/torvalds/c/686d8e0bb520) | [block] | mtip32xx: Abort I/O during secure erase operation |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.2 | [`98f57c5196f7`](https://git.kernel.org/torvalds/c/98f57c5196f7) | [block] | mtip32xx: Fix accessing freed memory |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.2 | [`2132a544727e`](https://git.kernel.org/torvalds/c/2132a544727e) | [block] | mtip32xx: fix crash on surprise removal of the drive |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.2 | [`ee04bed690cb`](https://git.kernel.org/torvalds/c/ee04bed690cb) | [block] | mtip32xx: fix incorrectly setting MTIP_DDF_SEC_LOCK_BIT |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.2 | [`75787265d61f`](https://git.kernel.org/torvalds/c/75787265d61f) | [block] | mtip32xx: fix minor number |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.2 | [`02b48265e743`](https://git.kernel.org/torvalds/c/02b48265e743) | [block] | mtip32xx: fix rmmod issue |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.2 | [`2f17d71dd71f`](https://git.kernel.org/torvalds/c/2f17d71dd71f) | [block] | mtip32xx: increase wait time for hba reset |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.2 | [`284eb9a202a2`](https://git.kernel.org/torvalds/c/284eb9a202a2) | [block] | mtip32xx: remove unnecessary sleep in mtip_ftl_rebuild_poll() |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.2 | [`a7806fadc5f6`](https://git.kernel.org/torvalds/c/a7806fadc5f6) | [block] | mtip32xx: remove unused variable 'port->allocated' |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.2 | [`beefa6ba7bf3`](https://git.kernel.org/torvalds/c/beefa6ba7bf3) (loose) | [block] | only honor SG gap prevention for merges that contain data |  | generic code, tag [block] | 3.10.0-470 |
| CANDIDATE | 4.2 | [`4f8c9510ba71`](https://git.kernel.org/torvalds/c/4f8c9510ba71) (loose) | [block] | rename REQ_TYPE_SPECIAL to REQ_TYPE_DRV_PRIV |  | generic code, tag [block] | 3.10.0-384 |
| CANDIDATE | 4.2 | [`b04a5636a665`](https://git.kernel.org/torvalds/c/b04a5636a665) (loose) | [block] | replace trylock with mutex_lock in blkdev_reread_part() |  | generic code, tag [block] | 3.10.0-263 |
| CANDIDATE | 4.2 | [`6566d1a32bf7`](https://git.kernel.org/torvalds/c/6566d1a32bf7) | [block] | zram: add dynamic device add/remove functionality |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.2 | [`d93435c3fba4`](https://git.kernel.org/torvalds/c/d93435c3fba4) | [block] | zram: check comp algorithm availability earlier |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.2 | [`f405c445a486`](https://git.kernel.org/torvalds/c/f405c445a486) | [block] | zram: close race by open overriding |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.2 | [`3bca3ef76941`](https://git.kernel.org/torvalds/c/3bca3ef76941) | [block] | zram: cosmetic ZRAM_ATTR_RO code formatting tweak |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.2 | [`17162f41f04a`](https://git.kernel.org/torvalds/c/17162f41f04a) | [block] | zram: cosmetic zram_bvec_write() cleanup |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.2 | [`4bbacd51a683`](https://git.kernel.org/torvalds/c/4bbacd51a683) | [block] | zram: cut trailing newline in algorithm name |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.2 | [`c3cdb40e6634`](https://git.kernel.org/torvalds/c/c3cdb40e6634) | [block] | zram: remove max_num_devices limitation |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.2 | [`9e65bf68a8f1`](https://git.kernel.org/torvalds/c/9e65bf68a8f1) | [block] | zram: remove obsolete ZRAM_DEBUG option |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.2 | [`522698d7cadb`](https://git.kernel.org/torvalds/c/522698d7cadb) | [block] | zram: reorganize code layout |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.2 | [`d12b63c927e0`](https://git.kernel.org/torvalds/c/d12b63c927e0) | [block] | zram: report every added and removed device |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.2 | [`92ff15288747`](https://git.kernel.org/torvalds/c/92ff15288747) | [block] | zram: return zram device_id from zram_add() |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.2 | [`b31177f2a9d5`](https://git.kernel.org/torvalds/c/b31177f2a9d5) | [block] | zram: trivial: correct flag operations comment |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.2 | [`85508ec6cbc2`](https://git.kernel.org/torvalds/c/85508ec6cbc2) | [block] | zram: use idr instead of `zram_devices' array |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.3 | [`2ca495ac27d2`](https://git.kernel.org/torvalds/c/2ca495ac27d2) | [block] | blk: Fix bio_io_vec index when checking bvec gaps |  | generic code, tag [block] | 3.10.0-470 |
| CANDIDATE | 4.3 | [`5e7c4274a70a`](https://git.kernel.org/torvalds/c/5e7c4274a70a) (loose) | [block] | Check for gaps on front and back merges |  | generic code, tag [block] | 3.10.0-609 |
| CANDIDATE | 4.3 | [`46348456c179`](https://git.kernel.org/torvalds/c/46348456c179) (loose) | [block] | Copy a user iovec if it includes gaps |  | generic code, tag [block] | 3.10.0-573 |
| CANDIDATE | 4.3 | [`e80d1c805a3b`](https://git.kernel.org/torvalds/c/e80d1c805a3b) | [md] | dm: do not override error code returned from dm_get_device() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.3 | [`2a708cff93f1`](https://git.kernel.org/torvalds/c/2a708cff93f1) | [md] | dm: fix AB-BA deadlock in __dm_destroy() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-337 |
| CANDIDATE | 4.3 | [`fc0a44615287`](https://git.kernel.org/torvalds/c/fc0a44615287) | [md] | dm: remove unlikely() before IS_ERR() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.3 | [`ab37844d6169`](https://git.kernel.org/torvalds/c/ab37844d6169) | [md] | dm: test return value for DM_MAPIO_SUBMITTED |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.3 | [`03100aada96f`](https://git.kernel.org/torvalds/c/03100aada96f) (loose) | [block] | Replace SG_GAPS with new queue limits mask |  | generic code, tag [block] | 3.10.0-470 |
| CANDIDATE | 4.3 | [`3aaf14da807a`](https://git.kernel.org/torvalds/c/3aaf14da807a) | [block] | zram: fix possible use after free in zcomp_create() |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.3 | [`708649694a86`](https://git.kernel.org/torvalds/c/708649694a86) | [block] | zram: unify error reporting |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.4 | [`bbd3e064362e`](https://git.kernel.org/torvalds/c/bbd3e064362e) (loose) | [block] | add an API for Persistent Reservations |  | generic code, tag [block] | 3.10.0-367 |
| CANDIDATE | 4.4 | [`bf4e6b4e7574`](https://git.kernel.org/torvalds/c/bf4e6b4e7574) (loose) | [block] | Always check queue limits for cloned requests |  | generic code, tag [block] | 3.10.0-352 |
| CANDIDATE | 4.4 | [`f75782e4e067`](https://git.kernel.org/torvalds/c/f75782e4e067) | [block] | block: kmemleak: Track the page allocations for struct request |  | generic code, tag [block] | 3.10.0-609 |
| CANDIDATE | 4.4 | [`d8e4bb8103df`](https://git.kernel.org/torvalds/c/d8e4bb8103df) (loose) | [block] | cleanup blkdev_ioctl |  | generic code, tag [block] | 3.10.0-367 |
| CANDIDATE | 4.4 | [`bcbd94ff481e`](https://git.kernel.org/torvalds/c/bcbd94ff481e) | [md] | dm crypt: fix a possible hang due to race condition on exit |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.4 | [`00272c854ee1`](https://git.kernel.org/torvalds/c/00272c854ee1) | [md] | dm linear: remove redundant target name from error messages |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.4 | [`a3d939ae7b5f`](https://git.kernel.org/torvalds/c/a3d939ae7b5f) | [md] | dm: convert ffs to __ffs |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.4 | [`647a20d5cad7`](https://git.kernel.org/torvalds/c/647a20d5cad7) | [md] | dm: do not reuse dm_blk_ioctl block_device input as local variable |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.4 | [`6f65985e2636`](https://git.kernel.org/torvalds/c/6f65985e2636) | [md] | dm: drop NULL test before kmem_cache_destroy() and mempool_destroy() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.4 | [`5bbbfdf68565`](https://git.kernel.org/torvalds/c/5bbbfdf68565) | [md] | dm: fix ioctl retry termination with signal |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.4 | [`ad5f498f610f`](https://git.kernel.org/torvalds/c/ad5f498f610f) | [md] | dm: initialize non-blk-mq queue data before queue is used |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.4 | [`55ce0da1da28`](https://git.kernel.org/torvalds/c/55ce0da1da28) (loose) | [block] | fix blk_abort_request for blk-mq drivers |  | generic code, tag [block] | 3.10.0-384 |
| CANDIDATE | 4.4 | [`0809e3ac6231`](https://git.kernel.org/torvalds/c/0809e3ac6231) (loose) | [block] | fix plug list flushing for nomerge queues |  | generic code, tag [block] | 3.10.0-716 |
| CANDIDATE | 4.4 | [`77032ca66f86`](https://git.kernel.org/torvalds/c/77032ca66f86) | [block] | Return EBUSY from BLKRRPART for mounted whole-dev fs |  | generic code, tag [block] | 3.10.0-337 |
| CANDIDATE | 4.5 | [`e0af29171aa8`](https://git.kernel.org/torvalds/c/e0af29171aa8) (loose) | [block] | check virt boundary in bio_will_gap() |  | generic code, tag [block] | 3.10.0-609 |
| CANDIDATE | 4.5 | [`20a308f09e0d`](https://git.kernel.org/torvalds/c/20a308f09e0d) (loose) | [block] | clarify badblocks lifetime |  | generic code, tag [block] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`3b627a3f934c`](https://git.kernel.org/torvalds/c/3b627a3f934c) (loose) | [block] | clarify blk_add_timer() use case for blk-mq |  | generic code, tag [block] | 3.10.0-384 |
| CANDIDATE | 4.5 | [`287922eb0b18`](https://git.kernel.org/torvalds/c/287922eb0b18) (loose) | [block] | defer timeouts to a workqueue |  | generic code, tag [block] | 3.10.0-509 |
| CANDIDATE | 4.5 | [`313c9b97361f`](https://git.kernel.org/torvalds/c/313c9b97361f) | [md] | dm block manager: cleanup code that prints stacktrace |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.5 | [`f98c8f797021`](https://git.kernel.org/torvalds/c/f98c8f797021) | [md] | dm bufio: return NULL to improve code clarity |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.5 | [`86bad0c7071c`](https://git.kernel.org/torvalds/c/86bad0c7071c) | [md] | dm bufio: store stacktrace in buffers to help find buffer leaks |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.5 | [`86a49e2dac30`](https://git.kernel.org/torvalds/c/86a49e2dac30) | [md] | dm bufio: use BUG_ON instead of conditional call to BUG |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.5 | [`6dbeda3469ce`](https://git.kernel.org/torvalds/c/6dbeda3469ce) | [md] | dm verity: clean up duplicate hashing code |  | CONFIG_DM_VERITY=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.5 | [`ffa393807cd6`](https://git.kernel.org/torvalds/c/ffa393807cd6) | [md] | dm verity: factor out structures and functions useful to separate object |  | CONFIG_DM_VERITY=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.5 | [`03045cbafa2d`](https://git.kernel.org/torvalds/c/03045cbafa2d) | [md] | dm verity: move dm-verity.c to dm-verity-target.c |  | CONFIG_DM_VERITY=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.5 | [`753c1fd02807`](https://git.kernel.org/torvalds/c/753c1fd02807) | [md] | dm verity: separate function for parsing opt args |  | CONFIG_DM_VERITY=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.5 | [`756d097b959a`](https://git.kernel.org/torvalds/c/756d097b959a) | [md] | dm-bufio: virt_to_phys() doesn't change remainder modulo PAGE_SIZE |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.5 | [`fe3265b180d6`](https://git.kernel.org/torvalds/c/fe3265b180d6) | [md] | dm: don't save and restore bi_private |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.5 | [`f21018427cb0`](https://git.kernel.org/torvalds/c/f21018427cb0) (loose) | [block] | fix blk_rq_get_max_sectors for driver private requests |  | generic code, tag [block] | 3.10.0-470 |
| CANDIDATE | 4.5 | [`5f009d3f8e66`](https://git.kernel.org/torvalds/c/5f009d3f8e66) (loose) | [block] | Initialize max_dev_sectors to 0 |  | generic code, tag [block] | 3.10.0-470 |
| CANDIDATE | 4.5 | [`8ed6010d50ee`](https://git.kernel.org/torvalds/c/8ed6010d50ee) | [block] | mtip32xx: don't open-code memdup_user() |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.5 | [`9e35fdcb9cd5`](https://git.kernel.org/torvalds/c/9e35fdcb9cd5) | [block] | mtip32xx: restrict variables visible in current code module |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.5 | [`bbc758ec04c2`](https://git.kernel.org/torvalds/c/bbc758ec04c2) (loose) | [block] | remove REQ_NO_TIMEOUT flag |  | generic code, tag [block] | 3.10.0-384 |
| CANDIDATE | 4.5 | [`a9cf8284b451`](https://git.kernel.org/torvalds/c/a9cf8284b451) | [block] | uapi: update install list after nvme.h rename |  | generic code, tag [block] | 3.10.0-384 |
| CANDIDATE | 4.5 | [`17ec4cd98578`](https://git.kernel.org/torvalds/c/17ec4cd98578) | [block] | zram: don't call idr_remove() from zram_remove() |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | 4.6 | [`90a4323ccfea`](https://git.kernel.org/torvalds/c/90a4323ccfea) | [md] | dm path selector: remove 'repeat_count' return from .select_path hook |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`b0b477c7e0dd`](https://git.kernel.org/torvalds/c/b0b477c7e0dd) | [md] | dm round robin: use percpu 'repeat_count' and 'current_path' |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`faad87df4b90`](https://git.kernel.org/torvalds/c/faad87df4b90) | [md] | dm: add 'dm_mq_nr_hw_queues' and 'dm_mq_queue_depth' module params |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`115485e83f49`](https://git.kernel.org/torvalds/c/115485e83f49) | [md] | dm: add 'dm_numa_node' module parameter |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`3f0680402c2d`](https://git.kernel.org/torvalds/c/3f0680402c2d) | [md] | dm: add missing newline between DM_DEBUG_BLOCK_STACK_TRACING and DM_BUFIO |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`1c357a1e86a4`](https://git.kernel.org/torvalds/c/1c357a1e86a4) | [md] | dm: allocate blk_mq_tag_set rather than embed in mapped_device |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`591ddcfc4bfa`](https://git.kernel.org/torvalds/c/591ddcfc4bfa) | [md] | dm: allow immutable request-based targets to use blk-mq pdu |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`e522c039059b`](https://git.kernel.org/torvalds/c/e522c039059b) | [md] | dm: cleanup dm_any_congested() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`eca7ee6dc01b`](https://git.kernel.org/torvalds/c/eca7ee6dc01b) | [md] | dm: distinquish old .request_fn (dm-old) vs dm-mq request-based DM |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`664820265d70`](https://git.kernel.org/torvalds/c/664820265d70) | [md] | dm: do not return target from dm_get_live_table_for_ioctl() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`e233d800a964`](https://git.kernel.org/torvalds/c/e233d800a964) | [md] | dm: drop unnecessary assignment of md->queue |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`818c5f3bef75`](https://git.kernel.org/torvalds/c/818c5f3bef75) | [md] | dm: fix a couple locking issues with use of block interfaces |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`072623de1f96`](https://git.kernel.org/torvalds/c/072623de1f96) | [md] | dm: fix dm_target_io leak if clone_bio() returns an error |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-382 |
| CANDIDATE | 4.6 | [`6acfe68bac7e`](https://git.kernel.org/torvalds/c/6acfe68bac7e) | [md] | dm: fix excessive dm-mq context switching |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`98dbc9c6c616`](https://git.kernel.org/torvalds/c/98dbc9c6c616) | [md] | dm: fix rq_end_stats() NULL pointer in dm_requeue_original_request() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`956a4025808d`](https://git.kernel.org/torvalds/c/956a4025808d) | [md] | dm: fix sparse "unexpected unlock" warnings in ioctl code |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`16f122661dbb`](https://git.kernel.org/torvalds/c/16f122661dbb) | [md] | dm: optimize dm_mq_queue_rq() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`c91852ff0815`](https://git.kernel.org/torvalds/c/c91852ff0815) | [md] | dm: optimize dm_request_fn() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`1d3aa6f683b1`](https://git.kernel.org/torvalds/c/1d3aa6f683b1) | [md] | dm: remove dummy definition of 'struct dm_table' |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`c5248f79f39e`](https://git.kernel.org/torvalds/c/c5248f79f39e) | [md] | dm: remove support for stacking dm-mq on .request_fn device(s) |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`ae6ad75e5c3c`](https://git.kernel.org/torvalds/c/ae6ad75e5c3c) | [md] | dm: remove unused dm_get_rq_mapinfo() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`032482fda4d1`](https://git.kernel.org/torvalds/c/032482fda4d1) | [md] | dm: reorder 'struct mapped_device' members to fix alignment and holes |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`c80914e81ec5`](https://git.kernel.org/torvalds/c/c80914e81ec5) | [md] | dm: return error if bio_integrity_clone() fails in clone_bio() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`d8a18d2d8f5d`](https://git.kernel.org/torvalds/c/d8a18d2d8f5d) | [block] | mtip32xx: Avoid issuing standby immediate cmd during FTL rebuild |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.6 | [`008e56d20022`](https://git.kernel.org/torvalds/c/008e56d20022) | [block] | mtip32xx: Cleanup queued requests after surprise removal |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.6 | [`cfc05bd31384`](https://git.kernel.org/torvalds/c/cfc05bd31384) | [block] | mtip32xx: Fix broken service thread handling |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.6 | [`5173cb814b36`](https://git.kernel.org/torvalds/c/5173cb814b36) | [block] | mtip32xx: fix checks for dma mapping errors |  | generic code, tag [block] | 3.10.0-584 |
| CANDIDATE | 4.6 | [`59cf70e236c9`](https://git.kernel.org/torvalds/c/59cf70e236c9) | [block] | mtip32xx: Fix for rmmod crash when drive is in FTL rebuild |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.6 | [`aae4a033868c`](https://git.kernel.org/torvalds/c/aae4a033868c) | [block] | mtip32xx: Handle FTL rebuild failure state during device initialization |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.6 | [`51c6570eb922`](https://git.kernel.org/torvalds/c/51c6570eb922) | [block] | mtip32xx: Handle safe removal during IO |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.6 | [`abb0ccd185c9`](https://git.kernel.org/torvalds/c/abb0ccd185c9) | [block] | mtip32xx: Implement timeout handler |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.6 | [`5b7e0a8ac85e`](https://git.kernel.org/torvalds/c/5b7e0a8ac85e) | [block] | mtip32xx: Print exact time when an internal command is interrupted |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.6 | [`90beb2e7a0c5`](https://git.kernel.org/torvalds/c/90beb2e7a0c5) | [block] | mtip32xx: remove unneeded variable in mtip_cmd_timeout() |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.6 | [`e35b94738a2f`](https://git.kernel.org/torvalds/c/e35b94738a2f) | [block] | mtip32xx: Remove unwanted code from taskfile error handler |  | generic code, tag [block] | 3.10.0-394 |
| CANDIDATE | 4.7 | [`38f252553300`](https://git.kernel.org/torvalds/c/38f252553300) (loose) | [block] | add __blkdev_issue_discard |  | generic code, tag [block] | 3.10.0-480 |
| CANDIDATE | 4.7 | [`37e58237a16b`](https://git.kernel.org/torvalds/c/37e58237a16b) (loose) | [block] | add offset in blk_add_request_payload() |  | generic code, tag [block] | 3.10.0-534 |
| CANDIDATE | 4.7 | [`72f6d8d8c9b3`](https://git.kernel.org/torvalds/c/72f6d8d8c9b3) | [md] | dm ioctl: drop use of __GFP_REPEAT in copy_params()'s __vmalloc() call |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-436 |
| CANDIDATE | 4.7 | [`52813d404685`](https://git.kernel.org/torvalds/c/52813d404685) | [md] | dm stats: fix spelling mistake in Documentation |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-436 |
| CANDIDATE | 4.7 | [`cfae7529b525`](https://git.kernel.org/torvalds/c/cfae7529b525) | [md] | dm: remove unused mapped_device argument from free_tio() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-436 |
| CANDIDATE | 4.7 | [`05bd92dddc59`](https://git.kernel.org/torvalds/c/05bd92dddc59) (loose) | [block] | missing bio_put following submit_bio_wait |  | generic code, tag [block] | 3.10.0-480 |
| CANDIDATE | 4.7 | [`6d125de40bbc`](https://git.kernel.org/torvalds/c/6d125de40bbc) | [block] | mtip32xx: Convert to use blk_mq_tagset_busy_iter |  | generic code, tag [block] | 3.10.0-534 |
| CANDIDATE | 4.7 | [`bbd848e0fade`](https://git.kernel.org/torvalds/c/bbd848e0fade) (loose) | [block] | reinstate early return of -EOPNOTSUPP from blkdev_issue_discard |  | generic code, tag [block] | 3.10.0-480 |
| CANDIDATE | 4.7 | [`9082e87bfbf8`](https://git.kernel.org/torvalds/c/9082e87bfbf8) (loose) | [block] | remove struct bio_batch |  | generic code, tag [block] | 3.10.0-480 |
| CANDIDATE | 4.8 | [`5d0be84ec0ca`](https://git.kernel.org/torvalds/c/5d0be84ec0ca) | [md] | dm crypt: fix free of bad values after tfm allocation failure |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.8 | [`0a83df6c8cac`](https://git.kernel.org/torvalds/c/0a83df6c8cac) | [md] | dm crypt: increase mempool reserve to better support swapping |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.8 | [`f8df1fdf1883`](https://git.kernel.org/torvalds/c/f8df1fdf1883) | [md] | dm error: add DAX support |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-640 |
| CANDIDATE | 4.8 | [`028b39e314dd`](https://git.kernel.org/torvalds/c/028b39e314dd) | [md] | dm ioctl: Simplify parameter buffer management code |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-480 |
| CANDIDATE | 4.8 | [`84b22f8378cf`](https://git.kernel.org/torvalds/c/84b22f8378cf) | [md] | dm linear: add DAX support |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-640 |
| CANDIDATE | 4.8 | [`802934b2cfde`](https://git.kernel.org/torvalds/c/802934b2cfde) | [md] | dm round robin: do not use this_cpu_ptr() without having preemption disabled |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.8 | [`7193a9defcab`](https://git.kernel.org/torvalds/c/7193a9defcab) | [md] | dm rq: check kthread_run return for .request_fn request-based DM |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.8 | [`7d9595d848cd`](https://git.kernel.org/torvalds/c/7d9595d848cd) | [md] | dm rq: fix the starting and stopping of blk-mq queues |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-494 |
| CANDIDATE | 4.8 | [`beec25b4573b`](https://git.kernel.org/torvalds/c/beec25b4573b) | [md] | dm stripe: add DAX support |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-640 |
| CANDIDATE | 4.8 | [`b5ab4a9ba557`](https://git.kernel.org/torvalds/c/b5ab4a9ba557) | [md] | dm: allow bio-based table to be upgraded to bio-based with DAX support |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-640 |
| CANDIDATE | 4.8 | [`bd9f55ea1cf6`](https://git.kernel.org/torvalds/c/bd9f55ea1cf6) | [md] | dm: fix second blk_delay_queue() parameter to be in msec units not jiffies |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-480 |
| CANDIDATE | 4.8 | [`4cc96131afce`](https://git.kernel.org/torvalds/c/4cc96131afce) | [md] | dm: move request-based code out to dm-rq.[hc] |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-494 |
| CANDIDATE | 4.8 | [`eaf9a7361f47`](https://git.kernel.org/torvalds/c/eaf9a7361f47) | [md] | dm: set DMF_SUSPENDED* _before_ clearing DMF_NOFLUSH_SUSPENDING |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-494 |
| CANDIDATE | 4.8 | [`72ef799b3f14`](https://git.kernel.org/torvalds/c/72ef799b3f14) (loose) | [block] | do not merge requests without consulting with io scheduler |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.8 | [`1b856086813b`](https://git.kernel.org/torvalds/c/1b856086813b) (loose) | [block] | Fix race triggered by blk_set_queue_dying() |  | generic code, tag [block] | 3.10.0-624 |
| CANDIDATE | 4.8 | [`4ba1e78891e9`](https://git.kernel.org/torvalds/c/4ba1e78891e9) | [md] | MD:Update superblock when err == 0 in size_store |  | CONFIG_MD=y in A37 | 3.10.0-556 |
| CANDIDATE | 4.9 | [`b4a1278c78bc`](https://git.kernel.org/torvalds/c/b4a1278c78bc) | [block] | badblocks: badblocks_set/clear update unacked_exist |  | generic code, tag [block] | 3.10.0-817 |
| CANDIDATE | 4.9 | [`1fa9ce8d0e90`](https://git.kernel.org/torvalds/c/1fa9ce8d0e90) | [block] | badblocks: fix overlapping check for clearing |  | generic code, tag [block] | 3.10.0-817 |
| CANDIDATE | 4.9 | [`dd6a77d99859`](https://git.kernel.org/torvalds/c/dd6a77d99859) | [md] | dm array: add dm_array_new() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.9 | [`fdd1315aa5f0`](https://git.kernel.org/torvalds/c/fdd1315aa5f0) | [md] | dm array: introduce cursor api |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.9 | [`7cd326747f46`](https://git.kernel.org/torvalds/c/7cd326747f46) | [md] | dm bufio: remove dm_bufio_cond_resched() |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.9 | [`f659b10087da`](https://git.kernel.org/torvalds/c/f659b10087da) | [md] | dm crypt: fix crash on exit |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.9 | [`937fa62e8a00`](https://git.kernel.org/torvalds/c/937fa62e8a00) | [md] | dm rq: clear kworker_task if kthread_run() returned an error |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.9 | [`2397a15aff35`](https://git.kernel.org/torvalds/c/2397a15aff35) | [md] | dm rq: factor out dm_mq_stop_queue() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.9 | [`e0c107526960`](https://git.kernel.org/torvalds/c/e0c107526960) | [md] | dm rq: introduce dm_mq_kick_requeue_list() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.9 | [`fbc39b4ca3be`](https://git.kernel.org/torvalds/c/fbc39b4ca3be) | [md] | dm rq: reduce arguments passed to map_request() and dm_requeue_original_request() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.9 | [`c533f249a166`](https://git.kernel.org/torvalds/c/c533f249a166) | [md] | dm rq: simplify dm_old_stop_queue() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.9 | [`9dbeaeabacb2`](https://git.kernel.org/torvalds/c/9dbeaeabacb2) | [md] | dm rq: take request_queue lock while clearing QUEUE_FLAG_STOPPED |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.9 | [`dafa724bf582`](https://git.kernel.org/torvalds/c/dafa724bf582) | [md] | dm table: fix missing dm_put_target_type() in dm_table_add_target() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.9 | [`5a8f1f80e9dc`](https://git.kernel.org/torvalds/c/5a8f1f80e9dc) | [md] | dm: add two lockdep_assert_held() statements |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.9 | [`9f4c3f874a3a`](https://git.kernel.org/torvalds/c/9f4c3f874a3a) | [md] | dm: convert wait loops to use autoremove_wake_function() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.9 | [`d09960b00321`](https://git.kernel.org/torvalds/c/d09960b00321) | [md] | dm: free io_barrier after blk_cleanup_queue call |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-516 |
| CANDIDATE | 4.9 | [`b48633f83f22`](https://git.kernel.org/torvalds/c/b48633f83f22) | [md] | dm: rename task state function arguments |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.9 | [`8dc23658b7aa`](https://git.kernel.org/torvalds/c/8dc23658b7aa) | [md] | dm: return correct error code in dm_resume()'s retry loop |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.9 | [`e3fabdfdf70e`](https://git.kernel.org/torvalds/c/e3fabdfdf70e) | [md] | dm: use signal_pending_state() in dm_wait_for_completion() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.9 | [`99e6b87ec210`](https://git.kernel.org/torvalds/c/99e6b87ec210) | [block] | mtip32xx: mark symbols static where possible |  | generic code, tag [block] | 3.10.0-584 |
| CANDIDATE | 4.9 | [`48e28166a7b6`](https://git.kernel.org/torvalds/c/48e28166a7b6) | [block] | sbitmap: allocate wait queues on a specific node |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.9 | [`5c64a8df0ca8`](https://git.kernel.org/torvalds/c/5c64a8df0ca8) | [block] | sbitmap: don't update the allocation hint on clear after resize |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.9 | [`60658e0dc1df`](https://git.kernel.org/torvalds/c/60658e0dc1df) | [block] | sbitmap: initialize weight to zero |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.9 | [`f4a644db8666`](https://git.kernel.org/torvalds/c/f4a644db8666) | [block] | sbitmap: push alloc policy into sbitmap_queue |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.9 | [`40aabb67464d`](https://git.kernel.org/torvalds/c/40aabb67464d) | [block] | sbitmap: push per-cpu last_tag into sbitmap_queue |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.9 | [`98d95416dbfa`](https://git.kernel.org/torvalds/c/98d95416dbfa) | [block] | sbitmap: randomize initial alloc_hint values |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.9 | [`05fd095d53b9`](https://git.kernel.org/torvalds/c/05fd095d53b9) | [block] | sbitmap: re-initialize allocation hints after resize |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.10 | [`d278d4a8892f`](https://git.kernel.org/torvalds/c/d278d4a8892f) (loose) | [block] | add code to track actual device queue depth |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.10 | [`cf43e6be865a`](https://git.kernel.org/torvalds/c/cf43e6be865a) (loose) | [block] | add scalable completion tracking of requests |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.10 | [`c8e52ba5e2d6`](https://git.kernel.org/torvalds/c/c8e52ba5e2d6) | [block] | blk-flush: run the queue when inserting blk-mq flush |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.10 | [`7cd54aa84389`](https://git.kernel.org/torvalds/c/7cd54aa84389) | [block] | blk-stat: fix a few cases of missing batch flushing |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.10 | [`209200efa3db`](https://git.kernel.org/torvalds/c/209200efa3db) | [block] | blk-stat: fix a typo |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.10 | [`0a6219a95f0b`](https://git.kernel.org/torvalds/c/0a6219a95f0b) (loose) | [block] | deal with stale req count of plug list |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.10 | [`0637018dff10`](https://git.kernel.org/torvalds/c/0637018dff10) | [md] | dm array: remove a dead assignment in populate_ablock_with_values() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.10 | [`2e8ed71102ff`](https://git.kernel.org/torvalds/c/2e8ed71102ff) | [md] | dm block manager: make block locking optional |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.10 | [`9ea61cac0b1a`](https://git.kernel.org/torvalds/c/9ea61cac0b1a) | [md] | dm bufio: avoid sleeping while holding the dm_bufio lock |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.10 | [`41c73a49df31`](https://git.kernel.org/torvalds/c/41c73a49df31) | [md] | dm bufio: drop the lock when doing GFP_NOIO allocation |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.10 | [`1b1b58f54fdb`](https://git.kernel.org/torvalds/c/1b1b58f54fdb) | [md] | dm crypt: constify crypt_iv_operations structures |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.10 | [`671ea6b4574e`](https://git.kernel.org/torvalds/c/671ea6b4574e) | [md] | dm crypt: rename crypt_setkey_allcpus to crypt_setkey |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.10 | [`6080758d441a`](https://git.kernel.org/torvalds/c/6080758d441a) | [md] | dm ioctl: use offsetof() instead of open-coding it |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.10 | [`4087a1fffe38`](https://git.kernel.org/torvalds/c/4087a1fffe38) | [md] | dm rq: cope with DM device destruction while in dm_old_request_fn() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-589 |
| CANDIDATE | 4.10 | [`d15bb3a6467e`](https://git.kernel.org/torvalds/c/d15bb3a6467e) | [md] | dm rq: fix a race condition in rq_completed() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.10 | [`b23df0d048e5`](https://git.kernel.org/torvalds/c/b23df0d048e5) | [md] | dm rq: simplify use_blk_mq initialization |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.10 | [`301fc3f5efb9`](https://git.kernel.org/torvalds/c/301fc3f5efb9) | [md] | dm table: an 'all_blk_mq' table must be loaded for a blk-mq DM device |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.10 | [`6936c12cf809`](https://git.kernel.org/torvalds/c/6936c12cf809) | [md] | dm table: fix 'all_blk_mq' inconsistency when an empty table is loaded |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.10 | [`5b8c01f74cf0`](https://git.kernel.org/torvalds/c/5b8c01f74cf0) | [md] | dm table: simplify dm_table_determine_type() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.10 | [`21ffe552e9cd`](https://git.kernel.org/torvalds/c/21ffe552e9cd) | [md] | dm verity: fix incorrect error message |  | CONFIG_DM_VERITY=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.10 | [`7b17c2f7292b`](https://git.kernel.org/torvalds/c/7b17c2f7292b) | [md] | dm: Fix a race condition related to stopping and starting queues |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.10 | [`f0d33ab76cfc`](https://git.kernel.org/torvalds/c/f0d33ab76cfc) | [md] | dm: Use BLK_MQ_S_STOPPED instead of QUEUE_FLAG_STOPPED in blk-mq code |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.10 | [`2e91c3694181`](https://git.kernel.org/torvalds/c/2e91c3694181) | [md] | dm: use blk_set_queue_dying() in __dm_destroy() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.10 | [`70b3ea056f30`](https://git.kernel.org/torvalds/c/70b3ea056f30) | [block] | elevator: make the rqhash helpers exported |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.10 | [`e0c723000966`](https://git.kernel.org/torvalds/c/e0c723000966) (loose) | [block] | factor out req_set_nomerge |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.10 | [`50d24c34403c`](https://git.kernel.org/torvalds/c/50d24c34403c) (loose) | [block] | immediately dispatch big size request |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.10 | [`581dbd94da80`](https://git.kernel.org/torvalds/c/581dbd94da80) | [md] | md/bitmap: add blktrace event for writes to the bitmap |  | CONFIG_MD=y in A37 | 3.10.0-1091 |
| CANDIDATE | 4.10 | [`578b54ade8a5`](https://git.kernel.org/torvalds/c/578b54ade8a5) | [md] | md/raid1, raid10: add blktrace records when IO is delayed |  | CONFIG_MD=y in A37 | 3.10.0-1091 |
| CANDIDATE | 4.10 | [`504634f60f46`](https://git.kernel.org/torvalds/c/504634f60f46) | [md] | md: add blktrace event for writes to superblock |  | CONFIG_MD=y in A37 | 3.10.0-1091 |
| CANDIDATE | 4.10 | [`109e37653033`](https://git.kernel.org/torvalds/c/109e37653033) | [md] | md: add block tracing for bio_remapping |  | CONFIG_MD=y in A37 | 3.10.0-1091 |
| CANDIDATE | 4.10 | [`b425b0201e89`](https://git.kernel.org/torvalds/c/b425b0201e89) (loose) | [block] | mtip32xx: Improvement in code readability when memdup_user() fails |  | generic code, tag [block] | 3.10.0-584 |
| CANDIDATE | 4.10 | [`5b0e34e1949e`](https://git.kernel.org/torvalds/c/5b0e34e1949e) (loose) | [block] | mtip32xx: set error code on failure |  | generic code, tag [block] | 3.10.0-584 |
| CANDIDATE | 4.10 | [`987b3b26eb7b`](https://git.kernel.org/torvalds/c/987b3b26eb7b) (loose) | [block] | update chunk_sectors in blk_stack_limits() |  | generic code, tag [block] | 3.10.0-891 |
| CANDIDATE | 4.11 | [`b973cb7e89fe`](https://git.kernel.org/torvalds/c/b973cb7e89fe) | [block] | blk-merge: return the merged request |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`efd4b81abbe1`](https://git.kernel.org/torvalds/c/efd4b81abbe1) | [block] | blk-stat: fix blk_stat_sum() if all samples are batched |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`f5fe1b51905d`](https://git.kernel.org/torvalds/c/f5fe1b51905d) | [block] | blk: Ensure users for current->bio_list can see the full list |  | generic code, tag [block] | 3.10.0-665 |
| CANDIDATE | 4.11 | [`79bd99596b73`](https://git.kernel.org/torvalds/c/79bd99596b73) | [block] | blk: improve order of bio handling in generic_make_request() |  | generic code, tag [block] | 3.10.0-665 |
| CANDIDATE | 4.11 | [`a428d314ebcf`](https://git.kernel.org/torvalds/c/a428d314ebcf) | [block] | blktrace: make do_blk_trace_setup() static |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`7b36a7189fc3`](https://git.kernel.org/torvalds/c/7b36a7189fc3) | [block] | block: don't call ioc_exit_icq() with the queue lock held for blk-mq |  | generic code, tag [block] | 3.10.0-1087 |
| CANDIDATE | 4.11 | [`2151249eaabb`](https://git.kernel.org/torvalds/c/2151249eaabb) | [md] | dm bitset: add dm_bitset_new() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-609 |
| CANDIDATE | 4.11 | [`6fe28dbf05e3`](https://git.kernel.org/torvalds/c/6fe28dbf05e3) | [md] | dm bitset: introduce cursor api |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-609 |
| CANDIDATE | 4.11 | [`602548bdd5ac`](https://git.kernel.org/torvalds/c/602548bdd5ac) | [md] | dm block manager: add unlikely() annotations on dm_bufio error paths |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-609 |
| CANDIDATE | 4.11 | [`37a098e9d10d`](https://git.kernel.org/torvalds/c/37a098e9d10d) | [md] | dm round robin: revert "use percpu 'repeat_count' and 'current_path'" |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-589 |
| CANDIDATE | 4.11 | [`6085831883c2`](https://git.kernel.org/torvalds/c/6085831883c2) | [md] | dm stats: fix a leaked s->histogram_boundaries array |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-609 |
| CANDIDATE | 4.11 | [`b410aff2bd9f`](https://git.kernel.org/torvalds/c/b410aff2bd9f) (loose) | [block] | do not allow updates through sysfs until registration completes |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`ac77a0c463c1`](https://git.kernel.org/torvalds/c/ac77a0c463c1) (loose) | [block] | do not put mq context in blk_mq_alloc_request_hctx |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`7520872c0cf4`](https://git.kernel.org/torvalds/c/7520872c0cf4) (loose) | [block] | don't defer flushes on blk-mq + scheduling |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`d1a987f35ebf`](https://git.kernel.org/torvalds/c/d1a987f35ebf) | [block] | elevator: fix loading wrong elevator type for blk-mq devices |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`610d886c0c22`](https://git.kernel.org/torvalds/c/610d886c0c22) | [block] | elevator: fix unnecessary put of elevator in failure case |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`5a8d75a1b8c9`](https://git.kernel.org/torvalds/c/5a8d75a1b8c9) (loose) | [block] | fix bio_will_gap() for first bvec with offset |  | generic code, tag [block] | 3.10.0-674 |
| CANDIDATE | 4.11 | [`03796c149a99`](https://git.kernel.org/torvalds/c/03796c149a99) (loose) | [block] | fix debugfs config conditional in struct request_queue |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`e4d750c97794`](https://git.kernel.org/torvalds/c/e4d750c97794) (loose) | [block] | free merged request in the caller |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`b86dd815ff74`](https://git.kernel.org/torvalds/c/b86dd815ff74) (loose) | [block] | get rid of blk-mq default scheduler choice Kconfig entries |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`c51ca6cf545b`](https://git.kernel.org/torvalds/c/c51ca6cf545b) (loose) | [block] | move existing elevator ops to union |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`6cf7677f1a94`](https://git.kernel.org/torvalds/c/6cf7677f1a94) (loose) | [block] | move req_set_nomerge to blk.h |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`c23ecb426084`](https://git.kernel.org/torvalds/c/c23ecb426084) (loose) | [block] | move rq_ioc() to blk.h |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`945ffb60c11d`](https://git.kernel.org/torvalds/c/945ffb60c11d) | [block] | mq-deadline: add blk-mq adaptation of the deadline IO scheduler |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`729204ef49ec`](https://git.kernel.org/torvalds/c/729204ef49ec) (loose) | [block] | relax check on sg gap |  | generic code, tag [block] | 3.10.0-609 |
| CANDIDATE | 4.11 | [`24af1ccfe12a`](https://git.kernel.org/torvalds/c/24af1ccfe12a) | [block] | sbitmap: add helpers for dumping to a seq_file |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`6c0ca7ae292a`](https://git.kernel.org/torvalds/c/6c0ca7ae292a) | [block] | sbitmap: fix wakeup hang after sbq resize |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`f66227de5924`](https://git.kernel.org/torvalds/c/f66227de5924) | [block] | sbitmap: use smp_mb__after_atomic() in sbq_wake_up() |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`f6f94300cda0`](https://git.kernel.org/torvalds/c/f6f94300cda0) (loose) | [block] | set make_request_fn manually in blk_mq_update_nr_hw_queues |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.11 | [`5ea708d15a92`](https://git.kernel.org/torvalds/c/5ea708d15a92) (loose) | [block] | simplify blk_init_allocated_queue |  | generic code, tag [block] | 3.10.0-896 |
| CANDIDATE | 4.11 | [`18fbda91c637`](https://git.kernel.org/torvalds/c/18fbda91c637) (loose) | [block] | use same block debugfs directory for blk-mq and blktrace |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.12 | [`5ed61d3f08d4`](https://git.kernel.org/torvalds/c/5ed61d3f08d4) (loose) | [block] | add a read barrier in blk_queue_enter() |  | generic code, tag [block] | 3.10.0-679 |
| CANDIDATE | 4.12 | [`818cd1cbaa7b`](https://git.kernel.org/torvalds/c/818cd1cbaa7b) (loose) | [block] | add kblock_mod_delayed_work_on() |  | generic code, tag [block] | 3.10.0-896 |
| CANDIDATE | 4.12 | [`a37244e4cc57`](https://git.kernel.org/torvalds/c/a37244e4cc57) | [block] | blk-stat: convert blk-stat bucket callback to signed |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.12 | [`34dbad5d26e2`](https://git.kernel.org/torvalds/c/34dbad5d26e2) | [block] | blk-stat: convert to callback-based statistics reporting |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.12 | [`4875253fddd7`](https://git.kernel.org/torvalds/c/4875253fddd7) | [block] | blk-stat: move BLK_RQ_STAT_BATCH definition to blk-stat.c |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.12 | [`d3cfb2a0ac0b`](https://git.kernel.org/torvalds/c/d3cfb2a0ac0b) (loose) | [block] | block new I/O just after queue is set as dying |  | generic code, tag [block] | 3.10.0-679 |
| CANDIDATE | 4.12 | [`b58e176914c4`](https://git.kernel.org/torvalds/c/b58e176914c4) | [block] | block-mq: don't re-queue if we get a queue error |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.12 | [`1647b9b959c7`](https://git.kernel.org/torvalds/c/1647b9b959c7) | [block] | brd: add dax_operations support |  | CONFIG_BLK_DEV_RAM=y in A37 | 3.10.0-817 |
| CANDIDATE | 4.12 | [`1ef97fe4f8ab`](https://git.kernel.org/torvalds/c/1ef97fe4f8ab) | [block] | brd: fix uninitialized use of brd->dax_dev |  | CONFIG_BLK_DEV_RAM=y in A37 | 3.10.0-817 |
| CANDIDATE | 4.12 | [`742c8fdc31e8`](https://git.kernel.org/torvalds/c/742c8fdc31e8) | [md] | dm bio prison v2: new interface for the bio prison |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-609 |
| CANDIDATE | 4.12 | [`73cbca6a637e`](https://git.kernel.org/torvalds/c/73cbca6a637e) | [md] | dm block manager: remove an unused argument from dm_block_manager_create() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.12 | [`1b0fb5a5b2dc`](https://git.kernel.org/torvalds/c/1b0fb5a5b2dc) | [md] | dm bufio: avoid a possible ABBA deadlock |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.12 | [`390020ad2af9`](https://git.kernel.org/torvalds/c/390020ad2af9) | [md] | dm bufio: check new buffer allocation watermark every 30 seconds |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.12 | [`8f0009a22517`](https://git.kernel.org/torvalds/c/8f0009a22517) | [md] | dm crypt: optionally support larger encryption sector size |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-905 |
| CANDIDATE | 4.12 | [`86f917adea2d`](https://git.kernel.org/torvalds/c/86f917adea2d) | [md] | dm crypt: remove obsolete references to per-CPU state |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.12 | [`e944e03e336f`](https://git.kernel.org/torvalds/c/e944e03e336f) | [md] | dm crypt: replace custom implementation of hex2bin() |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.12 | [`c82feeec9a01`](https://git.kernel.org/torvalds/c/c82feeec9a01) | [md] | dm crypt: rewrite (wipe) key in crypto layer using random data |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-665 |
| CANDIDATE | 4.12 | [`ff3af92b4461`](https://git.kernel.org/torvalds/c/ff3af92b4461) | [md] | dm crypt: use shifts instead of sector_div |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-905 |
| CANDIDATE | 4.12 | [`a1b89132dc4f`](https://git.kernel.org/torvalds/c/a1b89132dc4f) | [md] | dm crypt: use WQ_HIGHPRI for the IO and crypt workqueues |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.12 | [`feb7695fe9fb`](https://git.kernel.org/torvalds/c/feb7695fe9fb) | [md] | dm io: fix duplicate bio completion due to missing ref count |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-687 |
| CANDIDATE | 4.12 | [`e36215d87f30`](https://git.kernel.org/torvalds/c/e36215d87f30) | [md] | dm ioctl: remove double parentheses |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.12 | [`8c1e2162f27b`](https://git.kernel.org/torvalds/c/8c1e2162f27b) | [md] | dm ioctl: restore __GFP_HIGH in copy_params() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-812 |
| CANDIDATE | 4.12 | [`23a601248958`](https://git.kernel.org/torvalds/c/23a601248958) | [md] | dm rq: check blk_mq_register_dev() return value in dm_mq_init_request_queue() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.12 | [`3c1201691006`](https://git.kernel.org/torvalds/c/3c1201691006) | [md] | dm table: replace while loops with for loops |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.12 | [`7e0d574f2683`](https://git.kernel.org/torvalds/c/7e0d574f2683) | [md] | dm: introduce enum dm_queue_mode to cleanup related code |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.12 | [`9119fedddb5b`](https://git.kernel.org/torvalds/c/9119fedddb5b) | [md] | dm: remove dummy dm_table definition |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.12 | [`1ea0654e46eb`](https://git.kernel.org/torvalds/c/1ea0654e46eb) | [md] | dm: verify suspend_locking assumptions at runtime |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.12 | [`7a148c2fcff8`](https://git.kernel.org/torvalds/c/7a148c2fcff8) (loose) | [block] | don't call blk_mq_quiesce_queue() after queue is frozen |  | generic code, tag [block] | 3.10.0-874 |
| CANDIDATE | 4.12 | [`340ff3216799`](https://git.kernel.org/torvalds/c/340ff3216799) | [block] | elevator: remove redundant warnings on IO scheduler switch |  | generic code, tag [block] | 3.10.0-838 |
| CANDIDATE | 4.12 | [`2859323e35ab`](https://git.kernel.org/torvalds/c/2859323e35ab) (loose) | [block] | fix blk_integrity_register to use template's interval_exp if not 0 |  | generic code, tag [block] | 3.10.0-665 |
| CANDIDATE | 4.12 | [`a83b576c9c25`](https://git.kernel.org/torvalds/c/a83b576c9c25) (loose) | [block] | fix stacked driver stats init and free |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.12 | [`9438b3e080be`](https://git.kernel.org/torvalds/c/9438b3e080be) (loose) | [block] | hide badblocks attribute by default |  | generic code, tag [block] | 3.10.0-817 |
| CANDIDATE | 4.12 | [`16b738f651c8`](https://git.kernel.org/torvalds/c/16b738f651c8) | [block] | kyber: add debugfs attributes |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.12 | [`daaadb3e9453`](https://git.kernel.org/torvalds/c/daaadb3e9453) | [block] | mq-deadline: add debugfs attributes |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.12 | [`baed548a9839`](https://git.kernel.org/torvalds/c/baed548a9839) | [block] | mtip32xx: abstract out "are any commands active" helper |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.12 | [`3f5e6a35774c`](https://git.kernel.org/torvalds/c/3f5e6a35774c) | [block] | mtip32xx: convert internal command issue to block IO path |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.12 | [`0f6422a2c57c`](https://git.kernel.org/torvalds/c/0f6422a2c57c) | [block] | mtip32xx: get rid of 'atomic' argument to mtip_exec_internal_command() |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.12 | [`8afdd94c74e4`](https://git.kernel.org/torvalds/c/8afdd94c74e4) | [block] | mtip32xx: kill atomic argument to mtip_quiesce_io() |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.12 | [`a4e84aae8139`](https://git.kernel.org/torvalds/c/a4e84aae8139) | [block] | mtip32xx: use runtime tag to initialize command header |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.12 | [`1671d522cdd9`](https://git.kernel.org/torvalds/c/1671d522cdd9) (loose) | [block] | rename blk_mq_freeze_queue_start() |  | generic code, tag [block] | 3.10.0-679 |
| CANDIDATE | 4.12 | [`c05e66733788`](https://git.kernel.org/torvalds/c/c05e66733788) | [block] | sbitmap: add sbitmap_get_shallow() operation |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.12 | [`334335d2f7a0`](https://git.kernel.org/torvalds/c/334335d2f7a0) (loose) | [block] | warn if sharing request queue across gendisks |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.13 | [`765e40b675a9`](https://git.kernel.org/torvalds/c/765e40b675a9) (loose) | [block] | disable runtime-pm for blk-mq |  | generic code, tag [block] | 3.10.0-858 |
| CANDIDATE | 4.13 | [`6e333d0be346`](https://git.kernel.org/torvalds/c/6e333d0be346) | [md] | dm bio prison: use rb_entry() rather than container_of() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.13 | [`fc1841e1c15d`](https://git.kernel.org/torvalds/c/fc1841e1c15d) | [md] | dm ioctl: add a new DM_DEV_ARM_POLL ioctl |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.13 | [`23d70c5e52dd`](https://git.kernel.org/torvalds/c/23d70c5e52dd) | [md] | dm ioctl: report event number in DM_LIST_DEVICES |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.13 | [`7e026c8c0a42`](https://git.kernel.org/torvalds/c/7e026c8c0a42) | [md] | dm: add ->copy_from_iter() dax operation support |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-942 |
| CANDIDATE | 4.13 | [`93e6442c76a0`](https://git.kernel.org/torvalds/c/93e6442c76a0) | [md] | dm: add basic support for using the select or poll function |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.13 | [`d2c3c8dcb598`](https://git.kernel.org/torvalds/c/d2c3c8dcb598) | [md] | dm: convert DM printk macros to pr_<level> macros |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.13 | [`604407890ecf`](https://git.kernel.org/torvalds/c/604407890ecf) | [md] | dm: fix printk() rate limiting code |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.13 | [`b2ee7d46befc`](https://git.kernel.org/torvalds/c/b2ee7d46befc) | [block] | loop: Add PF_LESS_THROTTLE to block/loop device thread |  | CONFIG_BLK_DEV_LOOP=y in A37 | 3.10.0-786 |
| CANDIDATE | 4.13 | [`8a05aa4ce3bf`](https://git.kernel.org/torvalds/c/8a05aa4ce3bf) | [block] | mtip32xx: avoid to read HOST_CAP from HW in .queue_rq() |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.14 | [`5acb3cc2c2e9`](https://git.kernel.org/torvalds/c/5acb3cc2c2e9) | [block] | blktrace: Fix potential deadlock between delete & sysfs ops |  | generic code, tag [block] | 3.10.0-773 |
| CANDIDATE | 4.14 | [`157f377beb71`](https://git.kernel.org/torvalds/c/157f377beb71) (loose) | [block] | directly insert blk-mq request from blk_insert_cloned_request() |  | generic code, tag [block] | 3.10.0-809 |
| CANDIDATE | 4.14 | [`783874b05076`](https://git.kernel.org/torvalds/c/783874b05076) | [md] | dm crypt: reject sector_size feature if device length is not aligned to it |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-905 |
| CANDIDATE | 4.14 | [`cf0dec6674c1`](https://git.kernel.org/torvalds/c/cf0dec6674c1) | [md] | dm ioctl: constify ioctl lookup table |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.14 | [`62e082430ea4`](https://git.kernel.org/torvalds/c/62e082430ea4) | [md] | dm ioctl: fix alignment of event number in the device list |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.14 | [`dc6364b5170d`](https://git.kernel.org/torvalds/c/dc6364b5170d) | [md] | dm rq: do not update rq partially in each ending bio |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.14 | [`d5c27f3ffbc2`](https://git.kernel.org/torvalds/c/d5c27f3ffbc2) | [md] | dm rq: make dm-sq requeuing behavior consistent with dm-mq behavior |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.14 | [`5916a22b8304`](https://git.kernel.org/torvalds/c/5916a22b8304) | [md] | dm: constify argument arrays |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-756 |
| CANDIDATE | 4.14 | [`f5c156c4c29a`](https://git.kernel.org/torvalds/c/f5c156c4c29a) (loose) | [block] | fix a crash caused by wrong API |  | generic code, tag [block] | 3.10.0-953 |
| CANDIDATE | 4.14 | [`e9a823fb34a8`](https://git.kernel.org/torvalds/c/e9a823fb34a8) (loose) | [block] | fix warning when I/O elevator is changed as request_queue is being removed |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.14 | [`0609e0efc5e1`](https://git.kernel.org/torvalds/c/0609e0efc5e1) (loose) | [block] | make part_in_flight() take an array of two ints |  | generic code, tag [block] | 3.10.0-953 |
| CANDIDATE | 4.14 | [`7de967e76fce`](https://git.kernel.org/torvalds/c/7de967e76fce) | [block] | mq-deadline: Enable auto-loading when built as module |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | 4.14 | [`d62e26b3ffd2`](https://git.kernel.org/torvalds/c/d62e26b3ffd2) (loose) | [block] | pass in queue to inflight accounting |  | generic code, tag [block] | 3.10.0-953 |
| CANDIDATE | 4.15 | [`c9254f2ddb19`](https://git.kernel.org/torvalds/c/c9254f2ddb19) (loose) | [block] | Add the QUEUE_FLAG_PREEMPT_ONLY request queue flag |  | generic code, tag [block] | 3.10.0-809 |
| CANDIDATE | 4.15 | [`39b4954c0a15`](https://git.kernel.org/torvalds/c/39b4954c0a15) | [block] | badblocks: fix wrong return value in badblocks_set if badblocks are disabled |  | generic code, tag [block] | 3.10.0-962 |
| CANDIDATE | 4.15 | [`9c71c83c857e`](https://git.kernel.org/torvalds/c/9c71c83c857e) | [block] | blk-flush: don't run queue for requests bypassing flush |  | generic code, tag [block] | 3.10.0-809 |
| CANDIDATE | 4.15 | [`598906f81428`](https://git.kernel.org/torvalds/c/598906f81428) | [block] | blk-flush: use blk_mq_request_bypass_insert() |  | generic code, tag [block] | 3.10.0-809 |
| CANDIDATE | 4.15 | [`7a862fbbdec6`](https://git.kernel.org/torvalds/c/7a862fbbdec6) | [block] | brd: remove dax support |  | CONFIG_BLK_DEV_RAM=y in A37 | 3.10.0-1121 |
| CANDIDATE | 4.15 | [`74d4108d9e68`](https://git.kernel.org/torvalds/c/74d4108d9e68) | [md] | dm bufio: fix integer overflow when limiting maximum cache size |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-797 |
| CANDIDATE | 4.15 | [`0440d5c0ca97`](https://git.kernel.org/torvalds/c/0440d5c0ca97) | [md] | dm crypt: allow unaligned bv_offset |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-905 |
| CANDIDATE | 4.15 | [`856eb0916d18`](https://git.kernel.org/torvalds/c/856eb0916d18) | [md] | dm: allocate struct mapped_device with kvzalloc |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-812 |
| CANDIDATE | 4.15 | [`5d47c89f29ea`](https://git.kernel.org/torvalds/c/5d47c89f29ea) | [md] | dm: clear all discard attributes in queue_limits when discards are disabled |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-797 |
| CANDIDATE | 4.15 | [`8a74d29d541c`](https://git.kernel.org/torvalds/c/8a74d29d541c) | [md] | dm: discard support requires all targets in a table support discards |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-797 |
| CANDIDATE | 4.15 | [`7dea378b23fd`](https://git.kernel.org/torvalds/c/7dea378b23fd) | [md] | dm: do not set 'discards_supported' in targets that do not need it |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-797 |
| CANDIDATE | 4.15 | [`b9a41d21dcea`](https://git.kernel.org/torvalds/c/b9a41d21dcea) | [md] | dm: fix race between dm_get_from_kobject() and __dm_destroy() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-797 |
| CANDIDATE | 4.15 | [`49de5769702c`](https://git.kernel.org/torvalds/c/49de5769702c) | [md] | dm: small cleanup in dm_get_md() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-797 |
| CANDIDATE | 4.15 | [`454be724f6f9`](https://git.kernel.org/torvalds/c/454be724f6f9) (loose) | [block] | drain queue before waiting for q_usage_counter becoming zero |  | generic code, tag [block] | 3.10.0-823 |
| CANDIDATE | 4.15 | [`8ac0d9a81edf`](https://git.kernel.org/torvalds/c/8ac0d9a81edf) | [block] | elevator: allow name aliases |  | generic code, tag [block] | 3.10.0-886 |
| CANDIDATE | 4.15 | [`2527d99789e2`](https://git.kernel.org/torvalds/c/2527d99789e2) | [block] | elevator: lookup mq vs non-mq elevators |  | generic code, tag [block] | 3.10.0-838 |
| CANDIDATE | 4.15 | [`4e9b6f20828a`](https://git.kernel.org/torvalds/c/4e9b6f20828a) (loose) | [block] | Fix a race between blk_cleanup_queue() and timeout handling |  | generic code, tag [block] | 3.10.0-805 |
| CANDIDATE | 4.15 | [`039c635f4e66`](https://git.kernel.org/torvalds/c/039c635f4e66) | [block] | ide, scsi: Tell the block layer at request allocation time about preempt requests |  | generic code, tag [block] | 3.10.0-809 |
| CANDIDATE | 4.15 | [`6a15674d1e90`](https://git.kernel.org/torvalds/c/6a15674d1e90) (loose) | [block] | Introduce blk_get_request_flags() |  | generic code, tag [block] | 3.10.0-809 |
| CANDIDATE | 4.15 | [`1b6d65a0bfb5`](https://git.kernel.org/torvalds/c/1b6d65a0bfb5) (loose) | [block] | Introduce BLK_MQ_REQ_PREEMPT |  | generic code, tag [block] | 3.10.0-809 |
| CANDIDATE | 4.15 | [`351499a172c0`](https://git.kernel.org/torvalds/c/351499a172c0) (loose) | [block] | Invalidate cache on discard v2 |  | generic code, tag [block] | 3.10.0-852 |
| CANDIDATE | 4.15 | [`63ba8e31c3ac`](https://git.kernel.org/torvalds/c/63ba8e31c3ac) (loose) | [block] | kyber: check if there are requests in ctx in kyber_has_work() |  | generic code, tag [block] | 3.10.0-809 |
| CANDIDATE | 4.15 | [`fcf38cdf332a`](https://git.kernel.org/torvalds/c/fcf38cdf332a) | [block] | kyber: fix another domain token wait queue hang |  | generic code, tag [block] | 3.10.0-886 |
| CANDIDATE | 4.15 | [`8cf466602028`](https://git.kernel.org/torvalds/c/8cf466602028) | [block] | kyber: fix hang on domain token wait queue |  | generic code, tag [block] | 3.10.0-886 |
| CANDIDATE | 4.15 | [`ae6650163c66`](https://git.kernel.org/torvalds/c/ae6650163c66) | [block] | loop: fix concurrent lo_open/lo_release | CVE-2018-5344 | CONFIG_BLK_DEV_LOOP=y in A37 | 3.10.0-866 |
| CANDIDATE | 4.15 | [`055f6e18e08f`](https://git.kernel.org/torvalds/c/055f6e18e08f) (loose) | [block] | Make q_usage_counter also track legacy requests |  | generic code, tag [block] | 3.10.0-809 |
| CANDIDATE | 4.15 | [`4d740bc9f031`](https://git.kernel.org/torvalds/c/4d740bc9f031) | [block] | mq-deadline: add 'deadline' as a name alias |  | generic code, tag [block] | 3.10.0-886 |
| CANDIDATE | 4.15 | [`b0850297c749`](https://git.kernel.org/torvalds/c/b0850297c749) (loose) | [block] | pass 'run_queue' to blk_mq_request_bypass_insert |  | generic code, tag [block] | 3.10.0-809 |
| CANDIDATE | 4.15 | [`7930d0a00ff5`](https://git.kernel.org/torvalds/c/7930d0a00ff5) | [block] | sbitmap: introduce __sbitmap_for_each_set() |  | generic code, tag [block] | 3.10.0-809 |
| CANDIDATE | 4.15 | [`34d9715ac1ed`](https://git.kernel.org/torvalds/c/34d9715ac1ed) (loose) | [block] | wake up all tasks blocked in get_request() |  | generic code, tag [block] | 3.10.0-809 |
| CANDIDATE | 4.16 | [`fa70d2e2c4a0`](https://git.kernel.org/torvalds/c/fa70d2e2c4a0) (loose) | [block] | allow gendisk's request_queue registration to be deferred |  | generic code, tag [block] | 3.10.0-847 |
| CANDIDATE | 4.16 | [`da5dadb4f116`](https://git.kernel.org/torvalds/c/da5dadb4f116) | [md] | dm: fix dropped return code from dm_get_bdev_for_ioctl |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-866 |
| CANDIDATE | 4.16 | [`c100ec49fdd2`](https://git.kernel.org/torvalds/c/c100ec49fdd2) | [block] | dm: fix incomplete request_queue initialization |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-847 |
| CANDIDATE | 4.16 | [`ad3793fc3945`](https://git.kernel.org/torvalds/c/ad3793fc3945) | [md] | dm: set QUEUE_FLAG_DAX accordingly in dm_table_set_restrictions() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-928 |
| CANDIDATE | 4.16 | [`f3986374f949`](https://git.kernel.org/torvalds/c/f3986374f949) | [md] | dm: simplify start of block stats accounting for bio-based |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-1160.13.1 |
| CANDIDATE | 4.16 | [`519049afead4`](https://git.kernel.org/torvalds/c/519049afead4) | [md] | dm: use blkdev_get rather than bdgrab when issuing pass-through ioctl |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-857 |
| CANDIDATE | 4.16 | [`ba989a01469d`](https://git.kernel.org/torvalds/c/ba989a01469d) (loose) | [block] | kyber: fix domain token leak during requeue |  | generic code, tag [block] | 3.10.0-886 |
| CANDIDATE | 4.16 | [`01a69cab01c1`](https://git.kernel.org/torvalds/c/01a69cab01c1) | [md] | md raid10: fix NULL deference in handle_write_completed() |  | CONFIG_MD=y in A37 | 3.10.0-922 |
| CANDIDATE | 4.16 | [`3acdb7b51419`](https://git.kernel.org/torvalds/c/3acdb7b51419) | [md] | md-multipath: Use seq_putc() in multipath_status() |  | CONFIG_MD=y in A37 | 3.10.0-922 |
| CANDIDATE | 4.16 | [`667257e8b298`](https://git.kernel.org/torvalds/c/667257e8b298) (loose) | [block] | properly protect the 'queue' kobj in blk_unregister_queue |  | generic code, tag [block] | 3.10.0-847 |
| CANDIDATE | 4.16 | [`0478fe68685a`](https://git.kernel.org/torvalds/c/0478fe68685a) (loose) | [block] | silently forbid sending any ioctl to a partition |  | generic code, tag [block] | 3.10.0-849 |
| CANDIDATE | 4.17 | [`5ee0524ba137`](https://git.kernel.org/torvalds/c/5ee0524ba137) (loose) | [block] | Add 'lock' as third argument to blk_alloc_queue_node() |  | generic code, tag [block] | 3.10.0-896 |
| CANDIDATE | 4.17 | [`e9a99a638800`](https://git.kernel.org/torvalds/c/e9a99a638800) (loose) | [block] | clear ctx pending bit under ctx lock |  | generic code, tag [block] | 3.10.0-896 |
| CANDIDATE | 4.17 | [`971888c46993`](https://git.kernel.org/torvalds/c/971888c46993) | [md] | dm: hold DM table for duration of ioctl rather than use blkdev_get |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-874 |
| CANDIDATE | 4.17 | [`5bd5e8d891c1`](https://git.kernel.org/torvalds/c/5bd5e8d891c1) | [md] | dm: remove fmode_t argument from .prepare_ioctl hook |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-874 |
| CANDIDATE | 4.17 | [`1dc3039bc87a`](https://git.kernel.org/torvalds/c/1dc3039bc87a) (loose) | [block] | do not use interruptible wait anywhere |  | generic code, tag [block] | 3.10.0-921 |
| CANDIDATE | 4.17 | [`a063057d7c73`](https://git.kernel.org/torvalds/c/a063057d7c73) (loose) | [block] | Fix a race between request queue removal and the block cgroup controller |  | generic code, tag [block] | 3.10.0-896 |
| CANDIDATE | 4.17 | [`498f6650aec8`](https://git.kernel.org/torvalds/c/498f6650aec8) (loose) | [block] | Fix a race between the cgroup code and request queue initialization |  | generic code, tag [block] | 3.10.0-896 |
| CANDIDATE | 4.17 | [`392db38058eb`](https://git.kernel.org/torvalds/c/392db38058eb) | [block] | zram: Delete gendisk before cleaning up the request queue |  | CONFIG_ZRAM=y in A37 | 3.10.0-896 |
| CANDIDATE | 4.18 | [`dbc626597c39`](https://git.kernel.org/torvalds/c/dbc626597c39) | [md] | dm: prevent DAX mounts if not supported |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-928 |
| CANDIDATE | 4.18 | [`d37753540568`](https://git.kernel.org/torvalds/c/d37753540568) | [md] | dm: Use kzalloc for all structs with embedded biosets/mempools |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-1107 |
| CANDIDATE | 4.19 | [`54648cf1ec2d`](https://git.kernel.org/torvalds/c/54648cf1ec2d) | [block] | block: blk_init_allocated_queue() set q->fq as NULL in the fail case | CVE-2018-20856 | generic code, tag [block] | 3.10.0-1078 |
| CANDIDATE | 4.19 | [`bc9e9cf0401f`](https://git.kernel.org/torvalds/c/bc9e9cf0401f) | [md] | dm crypt: don't decrease device limits |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-1103 |
| CANDIDATE | 4.19 | [`784c9a29e99e`](https://git.kernel.org/torvalds/c/784c9a29e99e) | [md] | dm kcopyd: avoid softlockup in run_complete_job |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-936 |
| CANDIDATE | 4.19 | [`5cc9cdf631da`](https://git.kernel.org/torvalds/c/5cc9cdf631da) | [md] | dm: Avoid namespace collision with bitmap API |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-1036 |
| CANDIDATE | 4.19 | [`65eea8edc315`](https://git.kernel.org/torvalds/c/65eea8edc315) | [block] | floppy: Do not copy a kernel pointer to user memory in FDGETPRM ioctl | CVE-2018-7755 | generic code, tag [block] | 3.10.0-963 |
| CANDIDATE | 4.19 | [`b233f127042d`](https://git.kernel.org/torvalds/c/b233f127042d) (loose) | [block] | really disable runtime-pm for blk-mq |  | generic code, tag [block] | 3.10.0-993 |
| CANDIDATE | 4.20 | [`95cf7809bf91`](https://git.kernel.org/torvalds/c/95cf7809bf91) | [block] | aoe: register default groups with device_add_disk() |  | generic code, tag [block] | 3.10.0-1017 |
| CANDIDATE | 4.20 | [`800a7340ab7d`](https://git.kernel.org/torvalds/c/800a7340ab7d) | [md] | dm ioctl: harden copy_params()'s copy_from_user() from malicious users |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-1077 |
| CANDIDATE | 4.20 | [`fef912bf860e`](https://git.kernel.org/torvalds/c/fef912bf860e) (loose) | [block] | genhd: add 'groups' argument to device_add_disk |  | generic code, tag [block] | 3.10.0-1017 |
| CANDIDATE | 4.20 | [`98af4d4df889`](https://git.kernel.org/torvalds/c/98af4d4df889) | [block] | zram: register default groups with device_add_disk() |  | CONFIG_ZRAM=y in A37 | 3.10.0-1017 |
| CANDIDATE | 5.0 | [`5b18b5a73760`](https://git.kernel.org/torvalds/c/5b18b5a73760) | [block] | block: delete part_round_stats and switch to less precise counting |  | generic code, tag [block] | 3.10.0-1160.13.1 |
| CANDIDATE | 5.1 | [`5941c621dc9e`](https://git.kernel.org/torvalds/c/5941c621dc9e) | [md] | dm block manager: remove redundant unlikely annotation |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-1036 |
| CANDIDATE | 5.1 | [`eb40c0acdc34`](https://git.kernel.org/torvalds/c/eb40c0acdc34) | [md] | dm table: propagate BDI_CAP_STABLE_WRITES to fix sporadic checksum errors |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-1038 |
| CANDIDATE | 5.1 | [`bcb44433bba5`](https://git.kernel.org/torvalds/c/bcb44433bba5) | [md] | dm: disable DISCARD if the underlying storage no longer supports it |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-1038 |
| CANDIDATE | 5.2 | [`f6b50160a06d`](https://git.kernel.org/torvalds/c/f6b50160a06d) | [block] | brd: re-enable __GFP_HIGHMEM in brd_insert_page() |  | CONFIG_BLK_DEV_RAM=y in A37 | 3.10.0-1121 |
| CANDIDATE | 5.2 | [`6fcc44d1d77f`](https://git.kernel.org/torvalds/c/6fcc44d1d77f) (loose) | [block] | fix use-after-free on gendisk |  | generic code, tag [block] | 3.10.0-1065 |
| CANDIDATE | 5.3 | [`da99466ac243`](https://git.kernel.org/torvalds/c/da99466ac243) | [block] | floppy: fix out-of-bounds read in copy_buffer | CVE-2019-14283 | generic code, tag [block] | 3.10.0-1079 |
| CANDIDATE | 5.3 | [`d0a255e795ab`](https://git.kernel.org/torvalds/c/d0a255e795ab) | [block] | loop: set PF_MEMALLOC_NOIO for the worker thread |  | CONFIG_BLK_DEV_LOOP=y in A37 | 3.10.0-1137 |
| CANDIDATE | 5.4 | [`143f6e733b73`](https://git.kernel.org/torvalds/c/143f6e733b73) | [md] | md/raid6: Set R5_ReadError when there is read failure on parity disk |  | CONFIG_MD=y in A37 | 3.10.0-1127.4 |
| CANDIDATE | 5.5 | [`775d78319f1c`](https://git.kernel.org/torvalds/c/775d78319f1c) | [md] | md: improve handling of bio with REQ_PREFLUSH in md_flush_request() |  | CONFIG_MD=y in A37 | 3.10.0-1112 |
| CANDIDATE | 5.6 | [`2e90ca68b0d2`](https://git.kernel.org/torvalds/c/2e90ca68b0d2) | [block] | floppy: check FDC index for errors before assigning it | CVE-2020-9383 | generic code, tag [block] | 3.10.0-1133 |
| CANDIDATE | 5.7 | [`2b8bd423614c`](https://git.kernel.org/torvalds/c/2b8bd423614c) | [block] | block/diskstats: more accurate approximation of io_ticks for slow disks |  | generic code, tag [block] | 3.10.0-1160.13.1 |
| CANDIDATE | — | — | [block] | add padding for kabi to block_device_operations |  | generic code, tag [block] | 3.10.0-31 |
| CANDIDATE | — | — | [block] | add padding to queue_limits structure |  | generic code, tag [block] | 3.10.0-103 |
| CANDIDATE | — | — | [block] | avoid to break kabi for blk-mq io scheduler backporting |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | — | — | [md] | bitmap: always wait for writes on unplug |  | CONFIG_MD=y in A37 | 3.10.0-270 |
| CANDIDATE | — | — | [md] | bitmap: call bitmap_file_unmap once bitmap_storage_alloc returns -ENOMEM |  | CONFIG_MD=y in A37 | 3.10.0-556 |
| CANDIDATE | — | — | [md] | bitmap: change all printk() to pr_*() |  | CONFIG_MD=y in A37 | 3.10.0-556 |
| CANDIDATE | — | — | [md] | bitmap: clear bitmap if bitmap_create failed |  | CONFIG_MD=y in A37 | 3.10.0-556 |
| CANDIDATE | — | — | [md] | bitmap: clear BITMAP_WRITE_ERROR bit before writing it to sb |  | CONFIG_MD=y in A37 | 3.10.0-922 |
| CANDIDATE | — | — | [md] | bitmap: copy correct data for bitmap super |  | CONFIG_MD=y in A37 | 3.10.0-922 |
| CANDIDATE | — | — | [md] | bitmap: disable bitmap_resize for file-backed bitmaps |  | CONFIG_MD=y in A37 | 3.10.0-772 |
| CANDIDATE | — | — | [md] | bitmap: don't abuse i_writecount for bitmap files |  | CONFIG_MD=y in A37 | 3.10.0-181 |
| CANDIDATE | — | — | [md] | bitmap: don't read page from device with Bitmap_sync |  | CONFIG_MD=y in A37 | 3.10.0-922 |
| CANDIDATE | — | — | [md] | bitmap: Don't write bitmap while earlier writes might be in-flight |  | CONFIG_MD=y in A37 | 3.10.0-556 |
| CANDIDATE | — | — | [md] | bitmap: protect clearing of ->bitmap by mddev->lock |  | CONFIG_MD=y in A37 | 3.10.0-270 |
| CANDIDATE | — | — | [md] | bitmap: remove confusing code from filemap_get_page |  | CONFIG_MD=y in A37 | 3.10.0-181 |
| CANDIDATE | — | — | [md] | bitmap: remove rcu annotation from pointer arithmetic |  | CONFIG_MD=y in A37 | 3.10.0-270 |
| CANDIDATE | — | — | [md] | bitmap: remove redundant check |  | CONFIG_MD=y in A37 | 3.10.0-429 |
| CANDIDATE | — | — | [md] | bitmap: remove redundant return in bitmap_checkpage |  | CONFIG_MD=y in A37 | 3.10.0-429 |
| CANDIDATE | — | — | [md] | bitmap: revert a patch |  | CONFIG_MD=y in A37 | 3.10.0-922 |
| CANDIDATE | — | — | [block] | blk-exec: Cleaning up local variable address returned |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | — | — | [block] | blk-flush: clear flush_rq's tag in flush_end_io() |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | — | — | [block] | blk-iopoll.c: use iop instead of iopoll |  | generic code, tag [block] | 3.10.0-419 |
| CANDIDATE | — | — | [block] | blk-mq, percpu-ref: start q->mq_usage_counter in atomic mode |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | — | — | [block] | blk-stat: use READ and WRITE instead of BLK_STAT_{READ, WRITE} |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | — | — | [block] | blk-tag: don't touch .internal_tag |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | — | — | [block] | block, scsi: fixup blk_get_request dead queue scenarios |  | generic code, tag [block] | 3.10.0-253 |
| CANDIDATE | — | — | [block] | block: don't change REQ_NR_BITS |  | generic code, tag [block] | 3.10.0-1120 |
| CANDIDATE | — | — | [block] | block: fix blk_recount_segments |  | generic code, tag [block] | 3.10.0-1107 |
| CANDIDATE | — | — | [block] | call elevator callback via aux->ops |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | — | — | [block] | cfq: pass new callback to aux->ops.sq |  | CONFIG_IOSCHED_CFQ=y in A37 | 3.10.0-761 |
| CANDIDATE | — | — | [block] | Change scheduler to CFQ for ATA/SATA |  | generic code, tag [block] | 3.10.0-1 |
| CANDIDATE | — | — | [blk-mq] | clarify dispatch may not be drained/blocked by stopping queue |  | generic code, tag [blk-mq] | 3.10.0-868 |
| CANDIDATE | — | — | [block] | configs: add CONFIG_BLK_DEBUG_FS |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | — | — | [block] | configs: add CONFIG_MQ_IOSCHED_DEADLINE |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | — | — | [block] | configs: add CONFIG_MQ_IOSCHED_KYBER |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | — | — | [md] | crypto: define OPTIMIZER_HIDE_VAR for future use in memzero_explicit |  | CONFIG_CRYPTO=y in A37 | 3.10.0-238 |
| CANDIDATE | — | — | [block] | disable blk-stat |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | — | — | [md] | dm bufio: make the parameter 'retain_bytes' unsigned long |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-756 |
| CANDIDATE | — | — | [md] | dm crypt: factor out crypt_ctr_optional |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-905 |
| CANDIDATE | — | — | [md] | dm rq: fix checking of dm_dispatch_clone_request's return value |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-1127.4 |
| CANDIDATE | — | — | [md] | dm rq: fix handling underlying queue busy |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-1110 |
| CANDIDATE | — | — | [md] | dm-array: fix a reference counting bug in shadow_ablock |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-71 |
| CANDIDATE | — | — | [md] | dm-array: fix bug in growing array |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-71 |
| CANDIDATE | — | — | [md] | dm-array: if resizing the array is a noop set the new root to the old one |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-216 |
| CANDIDATE | — | — | [md] | dm-bio-prison: add dm_cell_promote_or_release() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-284 |
| CANDIDATE | — | — | [md] | dm-bio-prison: implement per bucket locking in the dm_bio_prison hash table |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-138 |
| CANDIDATE | — | — | [md] | dm-bio-prison: introduce support for locking ranges of blocks |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-207 |
| CANDIDATE | — | — | [md] | dm-bio-prison: switch to using a red black tree |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-198 |
| CANDIDATE | — | — | [md] | dm-bitset: only flush the current word if it has been dirtied |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-109 |
| CANDIDATE | — | — | [md] | dm-btree-remove: fix a bug when rebalancing nodes after removal |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-326 |
| CANDIDATE | — | — | [md] | dm-btree-remove: fix bug in redistribute3 |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-290 |
| CANDIDATE | — | — | [md] | dm-btree-remove: fix bug in remove_one() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-307 |
| CANDIDATE | — | — | [md] | dm-btree: add dm_btree_find_lowest_key |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-71 |
| CANDIDATE | — | — | [md] | dm-btree: add dm_btree_remove_leaves() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-281 |
| CANDIDATE | — | — | [md] | dm-btree: add ref counting ops for the leaves of top level btrees |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-307 |
| CANDIDATE | — | — | [md] | dm-btree: fix a recursion depth bug in btree walking code |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-207 |
| CANDIDATE | — | — | [md] | dm-btree: fix bufio buffer leaks in dm_btree_del() error path |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-366 |
| CANDIDATE | — | — | [md] | dm-btree: fix leak of bufio-backed block in btree_split_beneath error path |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-326 |
| CANDIDATE | — | — | [md] | dm-btree: fix leak of bufio-backed block in btree_split_sibling error path |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-366 |
| CANDIDATE | — | — | [md] | dm-btree: prefetch child nodes when walking tree for a dm_btree_del |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-30 |
| CANDIDATE | — | — | [md] | dm-btree: silence lockdep lock inversion in dm_btree_del() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-298 |
| CANDIDATE | — | — | [md] | dm-btree: use pop_frame in dm_btree_del to cleanup code |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-30 |
| CANDIDATE | — | — | [md] | dm-bufio: change __GFP_IO to __GFP_FS in shrinker callbacks |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-198 |
| CANDIDATE | — | — | [md] | dm-bufio: evict buffers that are past the max age but retain some buffers |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-198 |
| CANDIDATE | — | — | [md] | dm-bufio: fix memleak when using a dm_buffer's inline bio |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-216 |
| CANDIDATE | — | — | [md] | dm-bufio: fix time comparison to use time_after_eq() |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-238 |
| CANDIDATE | — | — | [md] | dm-bufio: fully initialize shrinker |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-198 |
| CANDIDATE | — | — | [md] | dm-bufio: initialize read-only module parameters |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-71 |
| CANDIDATE | — | — | [md] | dm-bufio: submit writes outside lock |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-30 |
| CANDIDATE | — | — | [md] | dm-bufio: switch from a huge hash table to an rbtree |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-198 |
| CANDIDATE | — | — | [md] | dm-bufio: update last_accessed when relinking a buffer |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-198 |
| CANDIDATE | — | — | [md] | dm-bufio: when done scanning return from __scan immediately |  | CONFIG_DM_BUFIO=y in A37 | 3.10.0-198 |
| CANDIDATE | — | — | [md] | dm-crypt, dm-zero: update author name following legal name change |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-139 |
| CANDIDATE | — | — | [md] | dm-crypt: add 'submit_from_crypt_cpus' option |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-238 |
| CANDIDATE | — | — | [md] | dm-crypt: add TCW IV mode for old CBC TCRYPT containers |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-71 |
| CANDIDATE | — | — | [md] | dm-crypt: constrain crypt device's max_segment_size to PAGE_SIZE |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-317 |
| CANDIDATE | — | — | [md] | dm-crypt: fix access beyond the end of allocated space |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-202 |
| CANDIDATE | — | — | [md] | dm-crypt: fix cpu hotplug crash by removing per-cpu structure |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-139 |
| CANDIDATE | — | — | [md] | dm-crypt: fix missing error code return from crypt_ctr error path |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-265 |
| CANDIDATE | — | — | [md] | dm-crypt: properly handle extra key string in initialization |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-71 |
| CANDIDATE | — | — | [md] | dm-crypt: remove unused io_pool and _crypt_io_pool |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-238 |
| CANDIDATE | — | — | [md] | dm-crypt: update url in CONFIG_DM_CRYPT help text |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-238 |
| CANDIDATE | — | — | [md] | dm-crypt: update URLs to new cryptsetup project page |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-265 |
| CANDIDATE | — | — | [md] | dm-crypt: use memzero_explicit for on-stack buffer |  | CONFIG_DM_CRYPT=y in A37 | 3.10.0-238 |
| CANDIDATE | — | — | [md] | dm-io: deal with wandering queue limits when handling REQ_DISCARD and REQ_WRITE_SAME |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | — | — | [md] | dm-io: fix a race condition in the wake up code for sync_io |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-139 |
| CANDIDATE | — | — | [md] | dm-io: reject unsupported DISCARD requests with EOPNOTSUPP |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | — | — | [md] | dm-io: simplify dec_count and sync_io |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-139 |
| CANDIDATE | — | — | [md] | dm-ioctl.c: use kvmalloc rather than opencoded variant |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-812 |
| CANDIDATE | — | — | [md] | dm-ioctl: cleanup error handling in table_load |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-30 |
| CANDIDATE | — | — | [md] | dm-ioctl: fix stale comment above dm_get_inactive_table() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | — | — | [md] | dm-ioctl: increase granularity of type_lock when loading table |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-30 |
| CANDIDATE | — | — | [md] | dm-ioctl: prevent rename to empty name or uuid |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-30 |
| CANDIDATE | — | — | [md] | dm-ioctl: set noio flag to avoid __vmalloc deadlock |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-30 |
| CANDIDATE | — | — | [md] | dm-space-map-common: make sure new space is used during extend |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-71 |
| CANDIDATE | — | — | [md] | dm-space-map-disk: fix sm_disk_count_is_more_than_one() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | — | — | [md] | dm-space-map-disk: optimise sm_disk_dec_block |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-71 |
| CANDIDATE | — | — | [md] | dm-space-map-metadata: fix bug in resizing of thin metadata |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-83 |
| CANDIDATE | — | — | [md] | dm-space-map-metadata: fix extending the space map |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-71 |
| CANDIDATE | — | — | [md] | dm-space-map-metadata: fix occasional leak of a metadata block on resize |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-281 |
| CANDIDATE | — | — | [md] | dm-space-map-metadata: fix ref counting bug when bootstrapping a new space map |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-366 |
| CANDIDATE | — | — | [md] | dm-space-map-metadata: fix refcount decrement below 0 which caused corruption |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-109 |
| CANDIDATE | — | — | [md] | dm-space-map-metadata: fix sm_bootstrap_get_count() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | — | — | [md] | dm-space-map-metadata: fix sm_bootstrap_get_nr_blocks() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | — | — | [md] | dm-space-map-metadata: limit errors in sm_metadata_new_block |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-71 |
| CANDIDATE | — | — | [md] | dm-space-map-metadata: remove unused variable in brb_pop() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-366 |
| CANDIDATE | — | — | [md] | dm-space-map-metadata: return on failure in sm_metadata_new_block |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-71 |
| CANDIDATE | — | — | [md] | dm-space-map: disallow decrementing a reference count below zero |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-71 |
| CANDIDATE | — | — | [md] | dm-space-map: optimise sm_ll_dec and sm_ll_inc |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-30 |
| CANDIDATE | — | — | [md] | dm-stats: add support for request-based DM devices |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-308 |
| CANDIDATE | — | — | [md] | dm-stats: collect and report histogram of IO latencies |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-308 |
| CANDIDATE | — | — | [md] | dm-stats: fix divide by zero if 'number_of_areas' arg is zero |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-308 |
| CANDIDATE | — | — | [md] | dm-stats: fix possible counter corruption on 32-bit systems |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-30 |
| CANDIDATE | — | — | [md] | dm-stats: initialize read-only module parameter |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-71 |
| CANDIDATE | — | — | [md] | dm-stats: report precise_timestamps and histogram in @stats_list output |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-308 |
| CANDIDATE | — | — | [md] | dm-stats: support precise timestamps |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-308 |
| CANDIDATE | — | — | [md] | dm-stats: Use kvfree() in dm_kvfree() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-308 |
| CANDIDATE | — | — | [md] | dm-stripe: fix potential for leak in stripe_ctr error path |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | — | — | [md] | dm-stripe: silence a couple sparse warnings |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-30 |
| CANDIDATE | — | — | [md] | dm-sysfs: fix a module unload race |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-83 |
| CANDIDATE | — | — | [md] | dm-sysfs: introduce ability to add writable attributes |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | — | — | [md] | dm-table: add dm_table_run_md_queue_async |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-139 |
| CANDIDATE | — | — | [md] | dm-table: fail dm_table_create on dm_round_up overflow |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-71 |
| CANDIDATE | — | — | [md] | dm-table: fall back to getting device using name_to_dev_t() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | — | — | [md] | dm-table: fix RHEL7 inconsistency with location of dm_table_run_md_queue_async |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | — | — | [md] | dm-table: make dm_table_supports_discards static |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-139 |
| CANDIDATE | — | — | [md] | dm-table: print error on preresume failure |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-71 |
| CANDIDATE | — | — | [md] | dm-table: propagate QUEUE_FLAG_NO_SG_MERGE |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-183 |
| CANDIDATE | — | — | [md] | dm-table: remove unused buggy code that extends the targets array |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-71 |
| CANDIDATE | — | — | [md] | dm-table: train hybrid target type detection to select blk-mq if appropriate |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-238 |
| CANDIDATE | — | — | [md] | dm-table: use bool function return values of true/false not 1/0 |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-265 |
| CANDIDATE | — | — | [md] | dm-transaction-manager: add support for prefetching blocks of metadata |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-198 |
| CANDIDATE | — | — | [md] | dm-transaction-manager: fix corruption due to non-atomic transaction commit |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-117 |
| CANDIDATE | — | — | [md] | dm-verity: add error handling modes for corrupted blocks |  | CONFIG_DM_VERITY=y in A37 | 3.10.0-265 |
| CANDIDATE | — | — | [md] | dm-verity: fix inability to use a few specific devices sizes |  | CONFIG_DM_VERITY=y in A37 | 3.10.0-30 |
| CANDIDATE | — | — | [md] | dm-verity: remove pointless comparison |  | CONFIG_DM_VERITY=y in A37 | 3.10.0-30 |
| CANDIDATE | — | — | [md] | dm-verity: use __ffs and __fls |  | CONFIG_DM_VERITY=y in A37 | 3.10.0-30 |
| CANDIDATE | — | — | [md] | dm: call PR reserve_unreserve on each underlying device |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-480 |
| CANDIDATE | — | — | [md] | dm: fix dm_rq_target_io leak on faults with .request_fn DM w_ blk-mq paths |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | — | — | [md] | dm: introduce upstream's cleanup_mapped_device() |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-817 |
| CANDIDATE | — | — | [md] | dm: revert dm_merge_bvec changes |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-305 |
| CANDIDATE | — | — | [md] | dm: sparse - Annotate field with __rcu for checking |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-216 |
| CANDIDATE | — | — | [md] | dm: update wait_on_bit calls for RHEL |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-216 |
| CANDIDATE | — | — | [md] | dm: use RHEL7's old blk_mq_alloc_request and blk_mq_complete_request interfaces |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | — | — | [blk-mq] | don't stop queue for quiescing |  | generic code, tag [blk-mq] | 3.10.0-868 |
| CANDIDATE | — | — | [block] | elevator: Fix a race in elevator switching and dm device initialization |  | generic code, tag [block] | 3.10.0-58 |
| CANDIDATE | — | — | [block] | elevator: mark parameter of elevator_aux_find() as const |  | generic code, tag [block] | 3.10.0-886 |
| CANDIDATE | — | — | [block] | elevator: move elevator_aux_find() to front of the file |  | generic code, tag [block] | 3.10.0-886 |
| CANDIDATE | — | — | [block] | fix a race between request completion and timeout handling |  | generic code, tag [block] | 3.10.0-59 |
| CANDIDATE | — | — | [block] | fix RHEL kABI breakage |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | — | — | [block] | Fixes string split across lines in zram |  | generic code, tag [block] | 3.10.0-344 |
| CANDIDATE | — | — | [block] | include: Use new KABI macros |  | generic code, tag [block] | 3.10.0-214 |
| CANDIDATE | — | — | [block] | introduce bio_split2() and bio_pair2_release() |  | generic code, tag [block] | 3.10.0-863 |
| CANDIDATE | — | — | [blk-mq] | introduce blk_mq_quiesce_queue_nowait() |  | generic code, tag [blk-mq] | 3.10.0-868 |
| CANDIDATE | — | — | [blk-mq] | introduce blk_mq_unquiesce_queue |  | generic code, tag [blk-mq] | 3.10.0-868 |
| CANDIDATE | — | — | [block] | introduce elevator_type_aux for fixing kabi violation |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | — | — | [block] | kyber: pass mq callback to aux->ops.mq |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | — | — | [block] | make __blkdev_issue_zeroout static |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | — | — | [block] | make blk_get_put_request work for blk-mq drivers |  | generic code, tag [block] | 3.10.0-53 |
| CANDIDATE | — | — | [block] | Make blk_queue_enter() reexamine the DYING flag |  | generic code, tag [block] | 3.10.0-1042 |
| CANDIDATE | — | — | [blk-mq] | Make it safe to quiesce and unquiesce from an interrupt handler |  | generic code, tag [blk-mq] | 3.10.0-868 |
| CANDIDATE | — | — | [md] | md rhel-only: Fix backport errors for ff875738 |  | CONFIG_MD=y in A37 | 3.10.0-922 |
| CANDIDATE | — | — | [md] | md: support for queue flag QUEUE_FLAG_NO_SG_MERGE |  | CONFIG_MD=y in A37 | 3.10.0-1111 |
| CANDIDATE | — | — | [md] | md:md-faulty kernel panic is caused by QUEUE_FLAG_NO_SG_MERGE |  | CONFIG_MD=y in A37 | 3.10.0-1136 |
| CANDIDATE | — | — | [block] | move .issue_stat from request to request_aux |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | — | — | [blk-mq] | move blk_mq_quiesce_queue() into include/linux/blk-mq.h |  | generic code, tag [blk-mq] | 3.10.0-868 |
| CANDIDATE | — | — | [block] | mq-deadline: pass mq callback to aux->ops.mq |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | — | — | [block] | mtip32xx: fix memory corruption by initializing internal command header |  | generic code, tag [block] | 3.10.0-1025 |
| CANDIDATE | — | — | [block] | mtip32xx: let blk_mq_tag_to_rq() take blk_mq_tags as the main parameter |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | — | — | [block] | Protect less code with sysfs_lock in blk_(un,) register_queue() |  | generic code, tag [block] | 3.10.0-847 |
| CANDIDATE | — | — | [block] | remove unprep_rq_fn |  | generic code, tag [block] | 3.10.0-100 |
| CANDIDATE | — | — | [block] | revert "add __blkdev_issue_discard" |  | generic code, tag [block] | 3.10.0-488 |
| CANDIDATE | — | — | [block] | revert "blk-mq-tag: fix wakeup hang after tag resize" |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | — | — | [block] | revert "blk-mq: fix hctx debugfs entry related race between update hw queues and cpu hotplug" |  | generic code, tag [block] | 3.10.0-1025 |
| CANDIDATE | — | — | [block] | revert "missing bio_put following submit_bio_wait" |  | generic code, tag [block] | 3.10.0-488 |
| CANDIDATE | — | — | [block] | revert "reinstate early return of -EOPNOTSUPP from blkdev_issue_discard" |  | generic code, tag [block] | 3.10.0-488 |
| CANDIDATE | — | — | [block] | revert "remove artifical max_hw_sectors cap" |  | generic code, tag [block] | 3.10.0-295 |
| CANDIDATE | — | — | [block] | revert "remove struct bio_batch" |  | generic code, tag [block] | 3.10.0-488 |
| CANDIDATE | — | — | [block] | rsxx: fix Kernel Panic caused by mapping Discards |  | generic code, tag [block] | 3.10.0-40 |
| CANDIDATE | — | — | [block] | scsi_error: fix nasty allocating request on stack |  | generic code, tag [block] | 3.10.0-761 |
| CANDIDATE | — | — | [block] | scsi_ioctl: verify return pointer from blk_get_request |  | generic code, tag [block] | 3.10.0-151 |
| CANDIDATE | — | — | [block] | SG_IO: add SG_FLAG_Q_AT_HEAD flag |  | generic code, tag [block] | 3.10.0-413 |
| CANDIDATE | — | — | [block] | sg_io: allow WRITE SAME without CAP_SYS_RAWIO |  | generic code, tag [block] | 3.10.0-96 |
| CANDIDATE | — | — | [block] | sg_io: introduce unpriv_sgio queue flag |  | generic code, tag [block] | 3.10.0-96 |
| CANDIDATE | — | — | [block] | sg_io: pass request_queue to blk_verify_command |  | generic code, tag [block] | 3.10.0-96 |
| CANDIDATE | — | — | [block] | sysfs/blk-sysfs: fix uninitialized var usage |  | CONFIG_SYSFS=y in A37 | 3.10.0-396 |
| CANDIDATE | — | — | [blk-mq] | update comments on blk_mq_quiesce_queue() |  | generic code, tag [blk-mq] | 3.10.0-868 |
| CANDIDATE | — | — | [block] | use __blk_end_request_all to free bios and also call rq->end_io |  | generic code, tag [block] | 3.10.0-136 |
| CANDIDATE | — | — | [block] | use blk-exec.c infrastructure for blk-mq |  | generic code, tag [block] | 3.10.0-53 |
| CANDIDATE | — | — | [block] | Use new KABI macros |  | generic code, tag [block] | 3.10.0-214 |
| CANDIDATE | — | — | [blk-mq] | use QUEUE_FLAG_QUIESCED to quiesce queue |  | generic code, tag [blk-mq] | 3.10.0-868 |
| CANDIDATE | — | — | [block] | use RH_KABI_REPLACE_UNSAFE in blk-mq.h |  | generic code, tag [block] | 3.10.0-300 |
| CANDIDATE | — | — | [blk-mq] | use the introduced blk_mq_unquiesce_queue() |  | generic code, tag [blk-mq] | 3.10.0-868 |
| CANDIDATE | — | — | [block] | wakeup tasks blocked on q->mq_freeze_wq |  | generic code, tag [block] | 3.10.0-1042 |
| CANDIDATE | — | — | [block] | zram: correct ZRAM_ZERO flag bit position |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | — | — | [block] | zram: Fix access of NULL pointer |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | — | — | [block] | zram: Fix memory leak by refcount mismatch |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| CANDIDATE | — | — | [block] | zram: Fix variable dereferenced before check |  | CONFIG_ZRAM=y in A37 | 3.10.0-344 |
| FEATURE-MISSING | 3.13 | [`280d45f6c35d`](https://git.kernel.org/torvalds/c/280d45f6c35d) | [block] | blk-mq: add blk_mq_stop_hw_queues |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | 3.13 | [`01b983c9fcfe`](https://git.kernel.org/torvalds/c/01b983c9fcfe) | [block] | blk-mq: add blktrace insert event trace |  | block/blk-mq.c not in A37 tree | 3.10.0-64 |
| FEATURE-MISSING | 3.13 | [`e7e245000110`](https://git.kernel.org/torvalds/c/e7e245000110) | [block] | blk-mq: don't disallow request merges for req->special being set |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | 3.13 | [`94eddfbeaafa`](https://git.kernel.org/torvalds/c/94eddfbeaafa) | [block] | blk-mq: ensure that we set REQ_IO_STAT so diskstats work |  | block/blk-mq.c not in A37 tree | 3.10.0-64 |
| FEATURE-MISSING | 3.13 | [`959a35f13eb7`](https://git.kernel.org/torvalds/c/959a35f13eb7) | [block] | blk-mq: fix dereference of rq->mq_ctx if allocation fails |  | block/blk-mq.c not in A37 tree | 3.10.0-64 |
| FEATURE-MISSING | 3.13 | [`3228f48be2d1`](https://git.kernel.org/torvalds/c/3228f48be2d1) | [block] | blk-mq: fix for flush deadlock |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | 3.13 | [`0d11e6aca396`](https://git.kernel.org/torvalds/c/0d11e6aca396) | [block] | blk-mq: fix use-after-free of request |  | block/blk-mq.c not in A37 tree | 3.10.0-64 |
| FEATURE-MISSING | 3.13 | [`92f399c72af2`](https://git.kernel.org/torvalds/c/92f399c72af2) | [block] | blk-mq: mq plug list breakage |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | 3.13 | [`320ae51feed5`](https://git.kernel.org/torvalds/c/320ae51feed5) | [block] | blk-mq: new multi-queue block IO queueing mechanism |  | block/blk-mq.c not in A37 tree | 3.10.0-10 |
| FEATURE-MISSING | 3.13 | [`f618ef7c4793`](https://git.kernel.org/torvalds/c/f618ef7c4793) | [block] | blk-mq: remove newly added instances of __cpuinit |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.13 | [`89ed05eea093`](https://git.kernel.org/torvalds/c/89ed05eea093) | [block] | null_blk: corrections to documentation |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.13 | [`12f8f4fc0314`](https://git.kernel.org/torvalds/c/12f8f4fc0314) | [block] | null_blk: documentation |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.13 | [`518d00b7498c`](https://git.kernel.org/torvalds/c/518d00b7498c) (loose) | [block] | null_blk: fix queue leak inside removing device |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.13 | [`0c56010c8370`](https://git.kernel.org/torvalds/c/0c56010c8370) | [block] | null_blk: mem garbage on NUMA systems during init |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.13 | [`f2298c0403b0`](https://git.kernel.org/torvalds/c/f2298c0403b0) | [block] | null_blk: multi queue aware block test driver |  | block/blk-mq.c not in A37 tree | 3.10.0-10 |
| FEATURE-MISSING | 3.13 | [`2d263a7856cb`](https://git.kernel.org/torvalds/c/2d263a7856cb) | [block] | null_blk: refactor init and init errors code paths |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.13 | [`200052440d3b`](https://git.kernel.org/torvalds/c/200052440d3b) | [block] | null_blk: set use_per_node_hctx param to false |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.13 | [`fc1bc3544374`](https://git.kernel.org/torvalds/c/fc1bc3544374) | [block] | null_blk: support submit_queues on use_per_node_hctx |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.13 | [`d15ee6b1a43a`](https://git.kernel.org/torvalds/c/d15ee6b1a43a) | [block] | null_blk: warning on ignored submit_queues param |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`14ec77f352cb`](https://git.kernel.org/torvalds/c/14ec77f352cb) | [block] | blk-mq: Add bio_integrity setup to blk_mq_make_request |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`739c3eea711a`](https://git.kernel.org/torvalds/c/739c3eea711a) | [block] | blk-mq: add REQ_SYNC early |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.14 | [`6f5ba581c0d3`](https://git.kernel.org/torvalds/c/6f5ba581c0d3) | [block] | blk-mq: divert __blk_put_request for MQ ops |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`3edcc0ce85c5`](https://git.kernel.org/torvalds/c/3edcc0ce85c5) (loose) | [block] | blk-mq: don't export blk_mq_free_queue() |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`f0276924fa35`](https://git.kernel.org/torvalds/c/f0276924fa35) | [block] | blk-mq: Don't reserve a tag for flush request |  | block/blk-mq.c not in A37 tree | 3.10.0-68 |
| FEATURE-MISSING | 3.14 | [`1e93b8c27426`](https://git.kernel.org/torvalds/c/1e93b8c27426) | [block] | blk-mq: dont assume rq->errors is set when returning an error from ->queue_rq |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`0fec08b4ecfc`](https://git.kernel.org/torvalds/c/0fec08b4ecfc) | [block] | blk-mq: fix initializing request's start time |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`0d0b7d427987`](https://git.kernel.org/torvalds/c/0d0b7d427987) | [block] | blk-mq: for_each_* macro correctness |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.14 | [`4f7f418c4835`](https://git.kernel.org/torvalds/c/4f7f418c4835) | [block] | blk-mq: handle dma_drain_size |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`1be036e94640`](https://git.kernel.org/torvalds/c/1be036e94640) | [block] | blk-mq: initialize sg_reserved_size |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`f04c1fe7619b`](https://git.kernel.org/torvalds/c/f04c1fe7619b) (loose) | [block] | blk-mq: make blk_sync_queue support mq |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`feb71dae1f9e`](https://git.kernel.org/torvalds/c/feb71dae1f9e) | [block] | blk-mq: merge blk_mq_insert_request and blk_mq_run_request |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`49f5baa51098`](https://git.kernel.org/torvalds/c/49f5baa51098) | [block] | blk-mq: pair blk_mq_start_request / blk_mq_requeue_request |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`fd694131bb03`](https://git.kernel.org/torvalds/c/fd694131bb03) | [block] | blk-mq: remove blk_mq_alloc_rq |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`18741986a4b1`](https://git.kernel.org/torvalds/c/18741986a4b1) | [block] | blk-mq: rework flush sequencing logic |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`30a91cb4ef38`](https://git.kernel.org/torvalds/c/30a91cb4ef38) | [block] | blk-mq: rework I/O completions |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`72a0a36e2854`](https://git.kernel.org/torvalds/c/72a0a36e2854) | [block] | blk-mq: support at_head inserations for blk_execute_rq |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`43a5e4e21964`](https://git.kernel.org/torvalds/c/43a5e4e21964) (loose) | [block] | blk-mq: support draining mq queue |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`d6a25b313153`](https://git.kernel.org/torvalds/c/d6a25b313153) | [block] | blk-mq: support partial I/O completions |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`3d6efbf62c79`](https://git.kernel.org/torvalds/c/3d6efbf62c79) | [block] | blk-mq: use __smp_call_function_single directly |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`6753471c0cb4`](https://git.kernel.org/torvalds/c/6753471c0cb4) | [block] | blk-mq: uses page->list incorrectly |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`9967d8ac5c0f`](https://git.kernel.org/torvalds/c/9967d8ac5c0f) | [block] | null_blk: Null pointer deference problem in alloc_page_buffers |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.14 | [`ce2c350b2cfe`](https://git.kernel.org/torvalds/c/ce2c350b2cfe) | [block] | null_blk: use blk_complete_request and blk_mq_complete_request |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | 3.15 | [`95363efde193`](https://git.kernel.org/torvalds/c/95363efde193) | [block] | blk-mq: allow blk_mq_init_commands() to return failure |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.15 | [`676141e48af7`](https://git.kernel.org/torvalds/c/676141e48af7) | [block] | blk-mq: don't dump CPU -> hw queue map on driver load |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.15 | [`bccb5f7c8bdf`](https://git.kernel.org/torvalds/c/bccb5f7c8bdf) | [block] | blk-mq: fix potential stall during CPU unplug with IO pending |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.15 | [`5d12f905cc50`](https://git.kernel.org/torvalds/c/5d12f905cc50) | [block] | blk-mq: fix wrong usage of hctx->state vs hctx->flags |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`f6be4fb4bcb3`](https://git.kernel.org/torvalds/c/f6be4fb4bcb3) | [block] | blk-mq: ->timeout should be cleared in blk_mq_rq_ctx_init() |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`e9b267d91f6d`](https://git.kernel.org/torvalds/c/e9b267d91f6d) | [block] | blk-mq: add ->init_request and ->exit_request methods |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`1b4a325858f6`](https://git.kernel.org/torvalds/c/1b4a325858f6) | [block] | blk-mq: add async parameter to blk_mq_start_stopped_hw_queues |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`506e931f92de`](https://git.kernel.org/torvalds/c/506e931f92de) | [block] | blk-mq: add basic round-robin of what CPU to queue workqueue work on |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`70f4db639c5b`](https://git.kernel.org/torvalds/c/70f4db639c5b) | [block] | blk-mq: add blk_mq_delay_queue |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`ed0791b2f83c`](https://git.kernel.org/torvalds/c/ed0791b2f83c) | [block] | blk-mq: add blk_mq_requeue_request |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`2f268556567e`](https://git.kernel.org/torvalds/c/2f268556567e) | [block] | blk-mq: add blk_mq_start_hw_queues |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`75bb4625bb78`](https://git.kernel.org/torvalds/c/75bb4625bb78) | [block] | blk-mq: add file comments and update copyright notices |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`6fca6a611c27`](https://git.kernel.org/torvalds/c/6fca6a611c27) | [block] | blk-mq: add helper to insert requests from irq context |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`2b8393b43ec6`](https://git.kernel.org/torvalds/c/2b8393b43ec6) | [block] | blk-mq: add timer in blk_mq_start_request |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`e3a2b3f931f5`](https://git.kernel.org/torvalds/c/e3a2b3f931f5) | [block] | blk-mq: allow changing of queue depth through sysfs |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`95f096849932`](https://git.kernel.org/torvalds/c/95f096849932) | [block] | blk-mq: allow non-softirq completions |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`c22d9d8a6064`](https://git.kernel.org/torvalds/c/c22d9d8a6064) | [block] | blk-mq: allow setting of per-request timeouts |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`e814e71ba4a6`](https://git.kernel.org/torvalds/c/e814e71ba4a6) | [block] | blk-mq: allow the hctx cpu hotplug notifier to return errors |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`3ee323723958`](https://git.kernel.org/torvalds/c/3ee323723958) | [block] | blk-mq: always initialize request->start_time |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`624dbe475416`](https://git.kernel.org/torvalds/c/624dbe475416) | [block] | blk-mq: avoid code duplication |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`91b63639c7d5`](https://git.kernel.org/torvalds/c/91b63639c7d5) | [block] | blk-mq: bidi support |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`2971c35f3588`](https://git.kernel.org/torvalds/c/2971c35f3588) (loose) | [block] | blk-mq: bitmap tag, fix race on blk_mq_bitmap_tags::wake_cnt |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`86fb5c56cfa2`](https://git.kernel.org/torvalds/c/86fb5c56cfa2) (loose) | [block] | blk-mq: bitmap tag, fix races in bt_get() function |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`8537b12034cf`](https://git.kernel.org/torvalds/c/8537b12034cf) (loose) | [block] | blk-mq: bitmap tag, fix races on shared ::wake_index fields |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`0ffbce80c263`](https://git.kernel.org/torvalds/c/0ffbce80c263) | [block] | blk-mq: blk_mq_start_hw_queue() should use blk_mq_run_hw_queue() |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`223023750082`](https://git.kernel.org/torvalds/c/223023750082) | [block] | blk-mq: blk_mq_tag_to_rq should handle flush request |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`ee3c5db0896d`](https://git.kernel.org/torvalds/c/ee3c5db0896d) | [block] | blk-mq: blk_mq_unregister_hctx() can be static |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`a4391c6465d9`](https://git.kernel.org/torvalds/c/a4391c6465d9) | [block] | blk-mq: bump max tag depth to 10K tags |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`9d74e25737d7`](https://git.kernel.org/torvalds/c/9d74e25737d7) | [block] | blk-mq: do not initialize req->special |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`793597a6a956`](https://git.kernel.org/torvalds/c/793597a6a956) | [block] | blk-mq: do not use blk_mq_alloc_request_pinned in blk_mq_map_request |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`3b632cf0eaa2`](https://git.kernel.org/torvalds/c/3b632cf0eaa2) | [block] | blk-mq: don't allow queue entering for a dying queue |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`fd1270d5df6a`](https://git.kernel.org/torvalds/c/fd1270d5df6a) | [block] | blk-mq: don't use preempt_count() to check for right CPU |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`e4043dcf3081`](https://git.kernel.org/torvalds/c/e4043dcf3081) | [block] | blk-mq: ensure that hardware queues are always run on the mapped CPUs |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`edf866b3805c`](https://git.kernel.org/torvalds/c/edf866b3805c) | [block] | blk-mq: export blk_mq_tag_busy_iter |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`4847900532c2`](https://git.kernel.org/torvalds/c/4847900532c2) | [block] | blk-mq: fix allocation of set->tags |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`1f9f07e917f4`](https://git.kernel.org/torvalds/c/1f9f07e917f4) | [block] | blk-mq: fix leak of hctx->ctx_map |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`981bd189f80f`](https://git.kernel.org/torvalds/c/981bd189f80f) | [block] | blk-mq: fix leak of set->tags |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`cf4b50afc28c`](https://git.kernel.org/torvalds/c/cf4b50afc28c) | [block] | blk-mq: fix race in IO start accounting |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`87ee7b112193`](https://git.kernel.org/torvalds/c/87ee7b112193) | [block] | blk-mq: fix race with timeouts and requeue events |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`f899fed4421d`](https://git.kernel.org/torvalds/c/f899fed4421d) | [block] | blk-mq: fix regression from commit 624dbe475416 |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`cb96a42cc1f5`](https://git.kernel.org/torvalds/c/cb96a42cc1f5) | [block] | blk-mq: fix schedule from atomic context |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`e6cdb0929fe6`](https://git.kernel.org/torvalds/c/e6cdb0929fe6) | [block] | blk-mq: fix sparse warning on missed __percpu annotation |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`5810d903fa34`](https://git.kernel.org/torvalds/c/5810d903fa34) | [block] | blk-mq: fix waiting for reserved tags |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`11471e0d04f3`](https://git.kernel.org/torvalds/c/11471e0d04f3) | [block] | blk-mq: free hctx->ctx_map when init failed |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`ff87bcec1977`](https://git.kernel.org/torvalds/c/ff87bcec1977) | [block] | blk-mq: handle NULL req return from blk_map_request in single queue mode |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`19c5d84f14d2`](https://git.kernel.org/torvalds/c/19c5d84f14d2) | [block] | blk-mq: idle all hardware contexts before freeing a queue |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`4bb659b15699`](https://git.kernel.org/torvalds/c/4bb659b15699) | [block] | blk-mq: implement new and more efficient tagging scheme |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`0d2602ca30e4`](https://git.kernel.org/torvalds/c/0d2602ca30e4) | [block] | blk-mq: improve support for shared tags maps |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`eba7176826dd`](https://git.kernel.org/torvalds/c/eba7176826dd) | [block] | blk-mq: initialize q->nr_requests after calling blk_queue_make_request() |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`6a3c8a3ac0e6`](https://git.kernel.org/torvalds/c/6a3c8a3ac0e6) | [block] | blk-mq: initialize req->q in allocation |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`5dee857720db`](https://git.kernel.org/torvalds/c/5dee857720db) | [block] | blk-mq: initialize request in __blk_mq_alloc_request |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`ed44832dea8a`](https://git.kernel.org/torvalds/c/ed44832dea8a) | [block] | blk-mq: initialize request on allocation |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`742ee69b92d9`](https://git.kernel.org/torvalds/c/742ee69b92d9) | [block] | blk-mq: initialize resid_len |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`af76e555e5e2`](https://git.kernel.org/torvalds/c/af76e555e5e2) | [block] | blk-mq: initialize struct request fields individually |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`0e62f51f8753`](https://git.kernel.org/torvalds/c/0e62f51f8753) | [block] | blk-mq: let blk_mq_tag_to_rq() take blk_mq_tags as the main parameter |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`8727af4b9d45`](https://git.kernel.org/torvalds/c/8727af4b9d45) | [block] | blk-mq: make ->flush_rq fully transparent to drivers |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`67aec14ce87f`](https://git.kernel.org/torvalds/c/67aec14ce87f) | [block] | blk-mq: make the sysfs mq/ layout reflect current mappings |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`4ce01dd1a07d`](https://git.kernel.org/torvalds/c/4ce01dd1a07d) | [block] | blk-mq: merge blk_mq_alloc_reserved_request into blk_mq_alloc_request |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`95ed068165d8`](https://git.kernel.org/torvalds/c/95ed068165d8) | [block] | blk-mq: merge blk_mq_drain_queue and __blk_mq_drain_queue |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`da41a589f524`](https://git.kernel.org/torvalds/c/da41a589f524) | [block] | blk-mq: Micro-optimize blk_queue_nomerges() check |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`e93ecf602beb`](https://git.kernel.org/torvalds/c/e93ecf602beb) | [block] | blk-mq: move the cache friendly bitmap type of out blk-mq-tag |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`f14bbe77a96b`](https://git.kernel.org/torvalds/c/f14bbe77a96b) | [block] | blk-mq: pass in suggested NUMA node to ->alloc_hctx() |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`8f5280f4ee75`](https://git.kernel.org/torvalds/c/8f5280f4ee75) | [block] | blk-mq: properly drain stopped queues |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`ed851860b455`](https://git.kernel.org/torvalds/c/ed851860b455) | [block] | blk-mq: push IPI or local end_io decision to __blk_mq_complete_request() |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`feff6894128e`](https://git.kernel.org/torvalds/c/feff6894128e) | [block] | blk-mq: remember to start timeout handler for direct queue |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`cdef54dd85ad`](https://git.kernel.org/torvalds/c/cdef54dd85ad) | [block] | blk-mq: remove alloc_hctx and free_hctx methods |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`d852564f8c88`](https://git.kernel.org/torvalds/c/d852564f8c88) | [block] | blk-mq: remove blk_mq_alloc_request_pinned |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`a3bd77567cae`](https://git.kernel.org/torvalds/c/a3bd77567cae) | [block] | blk-mq: remove blk_mq_wait_for_tags |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`74814b1c5569`](https://git.kernel.org/torvalds/c/74814b1c5569) | [block] | blk-mq: remove extra requeue trace |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`7738dac4f697`](https://git.kernel.org/torvalds/c/7738dac4f697) | [block] | blk-mq: remove stale comment for blk_mq_complete_request() |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`f88a164b72bd`](https://git.kernel.org/torvalds/c/f88a164b72bd) | [block] | blk-mq: rename mq_flush_work struct request member |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`4b570521be54`](https://git.kernel.org/torvalds/c/4b570521be54) | [block] | blk-mq: request initialization optimizations |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`385352016330`](https://git.kernel.org/torvalds/c/385352016330) | [block] | blk-mq: respect rq_affinity |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`484b4061e668`](https://git.kernel.org/torvalds/c/484b4061e668) | [block] | blk-mq: save memory by freeing requests on unused hardware queues |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`cb2da43e3d02`](https://git.kernel.org/torvalds/c/cb2da43e3d02) | [block] | blk-mq: simplify blk_mq_hw_sysfs_cpus_show() |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`07068d5b8ed8`](https://git.kernel.org/torvalds/c/07068d5b8ed8) | [block] | blk-mq: split make request handler for multi and single queue |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`24d2f90309b2`](https://git.kernel.org/torvalds/c/24d2f90309b2) | [block] | blk-mq: split out tag initialization, support shared tags |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`1429d7c9467e`](https://git.kernel.org/torvalds/c/1429d7c9467e) | [block] | blk-mq: switch ctx pending map to the sparser blk_align_bitmap |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`9fccfed8f0ca`](https://git.kernel.org/torvalds/c/9fccfed8f0ca) | [block] | blk-mq: update a hotplug comment for grammar |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`59d13bf5f57d`](https://git.kernel.org/torvalds/c/59d13bf5f57d) | [block] | blk-mq: use sparser tag layout for lower queue depth |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`4ca085009f44`](https://git.kernel.org/torvalds/c/4ca085009f44) | [block] | blk-mq: user (1 << order) to implement order_to_size() |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`54ae81cd5a20`](https://git.kernel.org/torvalds/c/54ae81cd5a20) | [block] | null_blk: fix name and description of 'queue_mode' module parameter |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`d891fa70876b`](https://git.kernel.org/torvalds/c/d891fa70876b) | [block] | null_blk: fix softirq completions for queue_mode == 1 |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.16 | [`fc27691f3537`](https://git.kernel.org/torvalds/c/fc27691f3537) (loose) | [block] | null_blk: fix use after free |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | 3.17 | [`a57a178a4903`](https://git.kernel.org/torvalds/c/a57a178a4903) | [block] | blk-mq: avoid infinite recursion with the FUA flag |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.17 | [`683d0e126232`](https://git.kernel.org/torvalds/c/683d0e126232) | [block] | blk-mq: Avoid race condition with uninitialized requests |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.17 | [`cddd5d17642c`](https://git.kernel.org/torvalds/c/cddd5d17642c) | [block] | blk-mq: blk_mq_freeze_queue() should allow nesting |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.17 | [`5676e7b6db02`](https://git.kernel.org/torvalds/c/5676e7b6db02) | [block] | blk-mq: cleanup after blk_mq_init_rq_map failures |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.17 | [`72d6f02a8d4e`](https://git.kernel.org/torvalds/c/72d6f02a8d4e) | [block] | blk-mq: collapse __blk_mq_drain_queue() into blk_mq_freeze_queue() |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.17 | [`a68aafa5b297`](https://git.kernel.org/torvalds/c/a68aafa5b297) | [block] | blk-mq: correct a few wrong/bad comments |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.17 | [`780db2071ac4`](https://git.kernel.org/torvalds/c/780db2071ac4) | [block] | blk-mq: decouble blk-mq freezing from generic bypassing |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.17 | [`274a5843ff2f`](https://git.kernel.org/torvalds/c/274a5843ff2f) | [block] | blk-mq: don't allow merges if turned off for the queue |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.17 | [`776687bce42b`](https://git.kernel.org/torvalds/c/776687bce42b) (loose) | [block] | blk-mq: draining can't be skipped even if bypass_depth was non-zero |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.17 | [`531ed6261e74`](https://git.kernel.org/torvalds/c/531ed6261e74) | [block] | blk-mq: fix a memory ordering bug in blk_mq_queue_enter() |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.17 | [`6b55e1f2d0a5`](https://git.kernel.org/torvalds/c/6b55e1f2d0a5) | [block] | blk-mq: fix potential oops on out-of-memory in __blk_mq_alloc_rq_maps() |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.17 | [`dd840087086f`](https://git.kernel.org/torvalds/c/dd840087086f) | [block] | blk-mq: fix WARNING "percpu_ref_kill() called more than once!" |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.17 | [`dc501dc0d9dc`](https://git.kernel.org/torvalds/c/dc501dc0d9dc) | [block] | blk-mq: pass along blk_mq_alloc_tag_set return values |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.17 | [`538b75341835`](https://git.kernel.org/torvalds/c/538b75341835) | [block] | blk-mq: request deadline must be visible before marking rq as started |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.17 | [`a516440542af`](https://git.kernel.org/torvalds/c/a516440542af) | [block] | blk-mq: scale depth and rq map appropriate if low on memory |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.17 | [`8b95741569ea`](https://git.kernel.org/torvalds/c/8b95741569ea) | [block] | blk-mq: use blk_mq_start_hw_queues() when running requeue work |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.17 | [`add703fda981`](https://git.kernel.org/torvalds/c/add703fda981) | [block] | blk-mq: use percpu_ref for mq usage count |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.17 | [`6f4a16266fb3`](https://git.kernel.org/torvalds/c/6f4a16266fb3) | [block] | scsi-mq: fix requests that use a separate CDB buffer |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.18 | [`a86073e48ae8`](https://git.kernel.org/torvalds/c/a86073e48ae8) | [block] | blk-mq: allocate cpumask on the home node |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.18 | [`1bcb1eada4f1`](https://git.kernel.org/torvalds/c/1bcb1eada4f1) | [block] | blk-mq: allocate flush_rq in blk_mq_init_flush() |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.18 | [`e2490073cd7c`](https://git.kernel.org/torvalds/c/e2490073cd7c) | [block] | blk-mq: call blk_mq_start_request from ->queue_rq |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.18 | [`81481eb423c2`](https://git.kernel.org/torvalds/c/81481eb423c2) | [block] | blk-mq: fix and simplify tag iteration for the timeout handler |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.18 | [`abab13b5c4fd`](https://git.kernel.org/torvalds/c/abab13b5c4fd) | [block] | blk-mq: fix potential hang if rolling wakeup depth is too high |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.18 | [`08e98fc6016c`](https://git.kernel.org/torvalds/c/08e98fc6016c) | [block] | blk-mq: handle failure path for initializing hctx |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.18 | [`aedcd72f6c28`](https://git.kernel.org/torvalds/c/aedcd72f6c28) | [block] | blk-mq: limit memory consumption if a crash dump is active |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.18 | [`9d8f0bcca6ff`](https://git.kernel.org/torvalds/c/9d8f0bcca6ff) | [block] | blk-mq: Make bt_clear_tag() easier to read |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.18 | [`f3af020b9a8d`](https://git.kernel.org/torvalds/c/f3af020b9a8d) | [block] | blk-mq: make mq_queue_reinit_notify() freeze queues in parallel |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.18 | [`0152fb6b57c4`](https://git.kernel.org/torvalds/c/0152fb6b57c4) | [block] | blk-mq: pass a reserved argument to the timeout handler |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.18 | [`bf57229745f8`](https://git.kernel.org/torvalds/c/bf57229745f8) | [block] | blk-mq: remove REQ_END |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.18 | [`2edd2c740b29`](https://git.kernel.org/torvalds/c/2edd2c740b29) | [block] | blk-mq: remove unnecessary blk_clear_rq_complete() |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.18 | [`c8a446ad695a`](https://git.kernel.org/torvalds/c/c8a446ad695a) | [block] | blk-mq: rename blk_mq_end_io to blk_mq_end_request |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.18 | [`f70ced091707`](https://git.kernel.org/torvalds/c/f70ced091707) | [block] | blk-mq: support per-distpatch_queue flush machinery |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.18 | [`46f92d42ee37`](https://git.kernel.org/torvalds/c/46f92d42ee37) | [block] | blk-mq: unshared timeout handler |  | block/blk-mq.c not in A37 tree | 3.10.0-195 |
| FEATURE-MISSING | 3.19 | [`74c450521dd8`](https://git.kernel.org/torvalds/c/74c450521dd8) | [block] | blk-mq: add a 'list' parameter to ->queue_rq() |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`e167dfb53cb8`](https://git.kernel.org/torvalds/c/e167dfb53cb8) | [block] | blk-mq: add BLK_MQ_F_DEFER_ISSUE support flag |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`7c7f2f2bc9a6`](https://git.kernel.org/torvalds/c/7c7f2f2bc9a6) | [block] | blk-mq: add blk_mq_free_hctx_request() |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`205fb5f5ba1d`](https://git.kernel.org/torvalds/c/205fb5f5ba1d) | [block] | blk-mq: add blk_mq_unique_tag() |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`1885b24d2371`](https://git.kernel.org/torvalds/c/1885b24d2371) | [block] | blk-mq: Add helper to abort requeued requests |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`5b3f25fc3436`](https://git.kernel.org/torvalds/c/5b3f25fc3436) | [block] | blk-mq: Allow requests to never expire |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`9e98e9d7cf6e`](https://git.kernel.org/torvalds/c/9e98e9d7cf6e) | [block] | blk-mq: Avoid that __bt_get_word() wraps multiple times |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`70114c393cca`](https://git.kernel.org/torvalds/c/70114c393cca) | [block] | blk-mq: cleanup tag free handling |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`eb130dbfc40e`](https://git.kernel.org/torvalds/c/eb130dbfc40e) | [block] | blk-mq: End unstarted requests on a dying queue |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`c76541a93211`](https://git.kernel.org/torvalds/c/c76541a93211) | [block] | blk-mq: Exit queue on alloc failure |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`1a3b595a281a`](https://git.kernel.org/torvalds/c/1a3b595a281a) | [block] | blk-mq: export blk_mq_free_request() |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`973c01919bce`](https://git.kernel.org/torvalds/c/973c01919bce) | [block] | blk-mq: Export if requests were started |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`c38d185d4af1`](https://git.kernel.org/torvalds/c/c38d185d4af1) | [block] | blk-mq: Fix a race between bt_clear_tag() and bt_get() |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`45a9c9d909b2`](https://git.kernel.org/torvalds/c/45a9c9d909b2) | [block] | blk-mq: Fix a use-after-free |  | block/blk-mq.c not in A37 tree | 3.10.0-224 |
| FEATURE-MISSING | 3.19 | [`b32232073e80`](https://git.kernel.org/torvalds/c/b32232073e80) | [block] | blk-mq: fix hang in bt_get() |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`06a41a99d13d`](https://git.kernel.org/torvalds/c/06a41a99d13d) | [block] | blk-mq: Fix uninitialized kobject at CPU hotplugging |  | block/blk-mq.c not in A37 tree | 3.10.0-219 |
| FEATURE-MISSING | 3.19 | [`17ded320706c`](https://git.kernel.org/torvalds/c/17ded320706c) | [block] | blk-mq: get rid of ->cmd_size in the hardware queue |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`b657d7e632e0`](https://git.kernel.org/torvalds/c/b657d7e632e0) | [block] | blk-mq: handle the single queue case in blk_mq_hctx_next_cpu |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`c68ed59f534c`](https://git.kernel.org/torvalds/c/c68ed59f534c) | [block] | blk-mq: Let drivers cancel requeue_work |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`52f7eb945f2b`](https://git.kernel.org/torvalds/c/52f7eb945f2b) | [block] | blk-mq: Micro-optimize bt_get() |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`6637fadf2565`](https://git.kernel.org/torvalds/c/6637fadf2565) | [block] | blk-mq: move the kdump check to blk_mq_alloc_tag_set |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`19c66e59ce57`](https://git.kernel.org/torvalds/c/19c66e59ce57) | [block] | blk-mq: prevent unmapped hw queue from being scheduled |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`080ff3511450`](https://git.kernel.org/torvalds/c/080ff3511450) | [block] | blk-mq: re-check for available tags after running the hardware queue |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`e09aae7edec1`](https://git.kernel.org/torvalds/c/e09aae7edec1) | [block] | blk-mq: release mq's kobjects in blk_release_queue() |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`a33c1ba29138`](https://git.kernel.org/torvalds/c/a33c1ba29138) | [block] | blk-mq: use 'nr_cpu_ids' as highest CPU ID count for hwq <-> cpu map |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`959f5f5b2fa7`](https://git.kernel.org/torvalds/c/959f5f5b2fa7) | [block] | blk-mq: Use all available hardware queues |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 3.19 | [`3fd5940cb2e4`](https://git.kernel.org/torvalds/c/3fd5940cb2e4) | [block] | blk-mq: Wake tasks entering queue on dying |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 4.0 | [`24391c0dc57c`](https://git.kernel.org/torvalds/c/24391c0dc57c) | [block] | blk-mq: add tag allocation policy |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.0 | [`c761d96b079e`](https://git.kernel.org/torvalds/c/c761d96b079e) | [block] | blk-mq: export blk_mq_freeze_queue() |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 4.0 | [`564e559f2baf`](https://git.kernel.org/torvalds/c/564e559f2baf) | [block] | blk-mq: fix double-free in error path |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 4.0 | [`0bf364984c4a`](https://git.kernel.org/torvalds/c/0bf364984c4a) | [block] | blk-mq: fix false negative out-of-tags condition |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 4.0 | [`9a30b096b543`](https://git.kernel.org/torvalds/c/9a30b096b543) | [block] | blk-mq: fix use of incorrect goto label in blk_mq_init_queue error path |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 4.0 | [`ac2111753ca9`](https://git.kernel.org/torvalds/c/ac2111753ca9) | [block] | blk-mq: initialize 'struct request' and associated data to zero |  | block/blk-mq.c not in A37 tree | 3.10.0-317 |
| FEATURE-MISSING | 4.0 | [`201f201c3322`](https://git.kernel.org/torvalds/c/201f201c3322) | [block] | blk-mq: make blk_mq_run_queues() static |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 4.1 | [`b62c21b71f08`](https://git.kernel.org/torvalds/c/b62c21b71f08) | [block] | blk-mq: add blk_mq_init_allocated_queue and export blk_mq_register_disk |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 4.1 | [`9ba52e5812e5`](https://git.kernel.org/torvalds/c/9ba52e5812e5) | [block] | blk-mq: don't lose requests if a stopped queue restarts |  | block/blk-mq.c not in A37 tree | 3.10.0-317 |
| FEATURE-MISSING | 4.1 | [`bfd343aa1718`](https://git.kernel.org/torvalds/c/bfd343aa1718) | [block] | blk-mq: don't wait in blk_mq_queue_enter() if __GFP_WAIT isn't set |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 4.1 | [`b94ec296403e`](https://git.kernel.org/torvalds/c/b94ec296403e) | [block] | blk-mq: export blk_mq_run_hw_queues |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 4.1 | [`2a34c0872adf`](https://git.kernel.org/torvalds/c/2a34c0872adf) | [block] | blk-mq: fix CPU hotplug handling |  | block/blk-mq.c not in A37 tree | 3.10.0-317 |
| FEATURE-MISSING | 4.1 | [`b2387ddcced8`](https://git.kernel.org/torvalds/c/b2387ddcced8) | [block] | blk-mq: fix FUA request hang |  | block/blk-mq.c not in A37 tree | 3.10.0-317 |
| FEATURE-MISSING | 4.1 | [`f054b56c951b`](https://git.kernel.org/torvalds/c/f054b56c951b) | [block] | blk-mq: fix race between timeout and CPU hotplug |  | block/blk-mq.c not in A37 tree | 3.10.0-317 |
| FEATURE-MISSING | 4.1 | [`c3b4afca7023`](https://git.kernel.org/torvalds/c/c3b4afca7023) | [block] | blk-mq: free hctx->ctxs in queue's release handler |  | block/blk-mq.c not in A37 tree | 3.10.0-716 |
| FEATURE-MISSING | 4.1 | [`c76cbbcf4044`](https://git.kernel.org/torvalds/c/c76cbbcf4044) | [block] | blk-mq: put blk_queue_rq_timeout together in blk_mq_init_queue() |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | 4.1 | [`889fa31f00b2`](https://git.kernel.org/torvalds/c/889fa31f00b2) | [block] | blk-mq: reduce unnecessary software queue looping |  | block/blk-mq.c not in A37 tree | 3.10.0-716 |
| FEATURE-MISSING | 4.2 | [`239ad215f0d8`](https://git.kernel.org/torvalds/c/239ad215f0d8) | [block] | blk-mq: avoid re-initialize request which is failed in direct dispatch |  | block/blk-mq.c not in A37 tree | 3.10.0-264 |
| FEATURE-MISSING | 4.2 | [`f984df1f0f71`](https://git.kernel.org/torvalds/c/f984df1f0f71) | [block] | blk-mq: do limited block plug for multiple queue case |  | block/blk-mq.c not in A37 tree | 3.10.0-264 |
| FEATURE-MISSING | 4.2 | [`e6c4438ba7cb`](https://git.kernel.org/torvalds/c/e6c4438ba7cb) | [block] | blk-mq: fix plugging in blk_sq_make_request |  | block/blk-mq.c not in A37 tree | 3.10.0-264 |
| FEATURE-MISSING | 4.2 | [`5b3f341f098d`](https://git.kernel.org/torvalds/c/5b3f341f098d) | [block] | blk-mq: make plug work for mutiple disks and queues |  | block/blk-mq.c not in A37 tree | 3.10.0-264 |
| FEATURE-MISSING | 4.2 | [`e56f698bd072`](https://git.kernel.org/torvalds/c/e56f698bd072) | [block] | blk-mq: set default timeout as 30 seconds |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.2 | [`f26cdc8536ad`](https://git.kernel.org/torvalds/c/f26cdc8536ad) | [block] | blk-mq: Shared tag enhancements |  | block/blk-mq.c not in A37 tree | 3.10.0-303 |
| FEATURE-MISSING | 4.2 | [`f4ad317aedf8`](https://git.kernel.org/torvalds/c/f4ad317aedf8) | [md] | dm log writes: use ULL suffix for 64-bit constants |  | CONFIG_DM_LOG_WRITES does not exist in A37 tree | 3.10.0-942 |
| FEATURE-MISSING | 4.3 | [`5778322e67ed`](https://git.kernel.org/torvalds/c/5778322e67ed) | [block] | blk-mq: avoid inserting requests before establishing new mapping |  | block/blk-mq.c not in A37 tree | 3.10.0-325 |
| FEATURE-MISSING | 4.3 | [`1356aae08338`](https://git.kernel.org/torvalds/c/1356aae08338) | [block] | blk-mq: avoid setting hctx->tags->cpumask before allocation |  | block/blk-mq.c not in A37 tree | 3.10.0-325 |
| FEATURE-MISSING | 4.3 | [`0bf6cd5b9531`](https://git.kernel.org/torvalds/c/0bf6cd5b9531) | [block] | blk-mq: factor out a helper to iterate all tags for a request_queue |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.3 | [`596f5aad2a70`](https://git.kernel.org/torvalds/c/596f5aad2a70) | [block] | blk-mq: fix buffer overflow when reading sysfs file of 'pending' |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.3 | [`60de074ba1e8`](https://git.kernel.org/torvalds/c/60de074ba1e8) | [block] | blk-mq: fix deadlock when reading cpu_list |  | block/blk-mq.c not in A37 tree | 3.10.0-325 |
| FEATURE-MISSING | 4.3 | [`0e6263682014`](https://git.kernel.org/torvalds/c/0e6263682014) | [block] | blk-mq: fix q->mq_usage_counter access race |  | block/blk-mq.c not in A37 tree | 3.10.0-325 |
| FEATURE-MISSING | 4.3 | [`0048b4837aff`](https://git.kernel.org/torvalds/c/0048b4837aff) | [block] | blk-mq: fix race between timeout and freeing request |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.3 | [`f4829a9b7a61`](https://git.kernel.org/torvalds/c/f4829a9b7a61) | [block] | blk-mq: fix racy updates of rq->errors |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.3 | [`4593fdbe7a2f`](https://git.kernel.org/torvalds/c/4593fdbe7a2f) | [block] | blk-mq: fix sysfs registration/unregistration race |  | block/blk-mq.c not in A37 tree | 3.10.0-325 |
| FEATURE-MISSING | 4.3 | [`a723bab3d752`](https://git.kernel.org/torvalds/c/a723bab3d752) | [block] | blk-mq: Fix use after of free q->mq_map |  | block/blk-mq.c not in A37 tree | 3.10.0-325 |
| FEATURE-MISSING | 4.3 | [`f42d79ab6732`](https://git.kernel.org/torvalds/c/f42d79ab6732) | [block] | blk-mq: fix use-after-free in blk_mq_free_tag_set() |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.4 | [`2404e607a9ee`](https://git.kernel.org/torvalds/c/2404e607a9ee) | [block] | blk-mq: avoid excessive boot delays with large lun counts |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.4 | [`e18378a60e27`](https://git.kernel.org/torvalds/c/e18378a60e27) | [block] | blk-mq: check bio_mergeable() early before merging |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.4 | [`b094f89ca42f`](https://git.kernel.org/torvalds/c/b094f89ca42f) | [block] | blk-mq: fix calling unplug callbacks with preempt disabled |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.4 | [`676d06077f96`](https://git.kernel.org/torvalds/c/676d06077f96) | [block] | blk-mq: fix for trace_block_plug() |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.4 | [`8ee1b7b9d876`](https://git.kernel.org/torvalds/c/8ee1b7b9d876) | [block] | blk-mq: fix waitqueue_active without memory barrier in block/blk-mq-tag.c |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.4 | [`1fa8cc52f46c`](https://git.kernel.org/torvalds/c/1fa8cc52f46c) | [block] | blk-mq: mark __blk_mq_complete_request() static |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.4 | [`cfd0c552a827`](https://git.kernel.org/torvalds/c/cfd0c552a827) | [block] | blk-mq: mark ctx as pending at batch in flush plug path |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.4 | [`3380f4589f6d`](https://git.kernel.org/torvalds/c/3380f4589f6d) | [block] | blk-mq: remove unused blk_mq_clone_flush_request prototype |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.4 | [`aad9ae455075`](https://git.kernel.org/torvalds/c/aad9ae455075) | [md] | dm switch: simplify conditional in alloc_region_table() |  | CONFIG_DM_SWITCH does not exist in A37 tree | 3.10.0-369 |
| FEATURE-MISSING | 4.5 | [`bffed457160a`](https://git.kernel.org/torvalds/c/bffed457160a) | [block] | blk-mq: Avoid memoryless numa node encoded in hctx numa_node |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.5 | [`a59e0f5795fe`](https://git.kernel.org/torvalds/c/a59e0f5795fe) | [block] | blk-mq: End unstarted requests on dying queue |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.5 | [`e0e827b9fc71`](https://git.kernel.org/torvalds/c/e0e827b9fc71) | [block] | blk-mq: Reuse hardware context cpumask for tags |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.6 | [`4ee86babe09f`](https://git.kernel.org/torvalds/c/4ee86babe09f) | [block] | blk-mq: add bounds check on tag-to-rq conversion |  | block/blk-mq.c not in A37 tree | 3.10.0-534 |
| FEATURE-MISSING | 4.6 | [`868f2f0b7206`](https://git.kernel.org/torvalds/c/868f2f0b7206) | [block] | blk-mq: dynamic h/w context count |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.6 | [`e9137d4b9307`](https://git.kernel.org/torvalds/c/e9137d4b9307) | [block] | blk-mq: Fix NULL pointer updating nr_requests |  | block/blk-mq.c not in A37 tree | 3.10.0-534 |
| FEATURE-MISSING | 4.6 | [`66841672161e`](https://git.kernel.org/torvalds/c/66841672161e) | [block] | blk-mq: mark request queue as mq asap |  | block/blk-mq.c not in A37 tree | 3.10.0-384 |
| FEATURE-MISSING | 4.6 | [`897bb0c7f1ea`](https://git.kernel.org/torvalds/c/897bb0c7f1ea) | [block] | blk-mq: Use proper cpumask iterator |  | block/blk-mq.c not in A37 tree | 3.10.0-534 |
| FEATURE-MISSING | 4.7 | [`c7de57263076`](https://git.kernel.org/torvalds/c/c7de57263076) | [block] | blk-mq: clear q->mq_ops if init fail |  | block/blk-mq.c not in A37 tree | 3.10.0-534 |
| FEATURE-MISSING | 4.7 | [`e0489487ec9c`](https://git.kernel.org/torvalds/c/e0489487ec9c) | [block] | blk-mq: Export tagset iter function |  | block/blk-mq.c not in A37 tree | 3.10.0-534 |
| FEATURE-MISSING | 4.7 | [`b3a834b1596a`](https://git.kernel.org/torvalds/c/b3a834b1596a) | [block] | blk-mq: fix undefined behaviour in order_to_size() |  | block/blk-mq.c not in A37 tree | 3.10.0-534 |
| FEATURE-MISSING | 4.7 | [`e8f1e1630b0a`](https://git.kernel.org/torvalds/c/e8f1e1630b0a) | [block] | blk-mq: Make blk_mq_all_tag_busy_iter static |  | block/blk-mq.c not in A37 tree | 3.10.0-534 |
| FEATURE-MISSING | 4.7 | [`87c279e613f8`](https://git.kernel.org/torvalds/c/87c279e613f8) | [block] | blk-mq: really fix plug list flushing for nomerge queues |  | block/blk-mq.c not in A37 tree | 3.10.0-716 |
| FEATURE-MISSING | 4.8 | [`52b9c330c6a8`](https://git.kernel.org/torvalds/c/52b9c330c6a8) | [block] | blk-mq: actually hook up defer list when running requests |  | block/blk-mq.c not in A37 tree | 3.10.0-624 |
| FEATURE-MISSING | 4.8 | [`71f79fb3179e`](https://git.kernel.org/torvalds/c/71f79fb3179e) | [block] | blk-mq: Allow timeouts to run while queue is freezing |  | block/blk-mq.c not in A37 tree | 3.10.0-509 |
| FEATURE-MISSING | 4.8 | [`e57690fe009b`](https://git.kernel.org/torvalds/c/e57690fe009b) | [block] | blk-mq: don't overwrite rq->mq_ctx |  | block/blk-mq.c not in A37 tree | 3.10.0-515 |
| FEATURE-MISSING | 4.8 | [`c0f3fd2b3874`](https://git.kernel.org/torvalds/c/c0f3fd2b3874) | [block] | blk-mq: fix deadlock in blk_mq_register_disk() error path |  | block/blk-mq.c not in A37 tree | 3.10.0-624 |
| FEATURE-MISSING | 4.8 | [`0e87e58bf60e`](https://git.kernel.org/torvalds/c/0e87e58bf60e) | [block] | blk-mq: improve warning for running a queue on the wrong CPU |  | block/blk-mq.c not in A37 tree | 3.10.0-515 |
| FEATURE-MISSING | 4.8 | [`c8712c6a674e`](https://git.kernel.org/torvalds/c/c8712c6a674e) | [block] | blk-mq: skip unmapped queues in blk_mq_alloc_request_hctx |  | block/blk-mq.c not in A37 tree | 3.10.0-624 |
| FEATURE-MISSING | 4.8 | [`7efb367320f5`](https://git.kernel.org/torvalds/c/7efb367320f5) | [md] | dm log writes: fix bug with too large bios |  | CONFIG_DM_LOG_WRITES does not exist in A37 tree | 3.10.0-942 |
| FEATURE-MISSING | 4.8 | [`91e630d9ae6d`](https://git.kernel.org/torvalds/c/91e630d9ae6d) | [md] | dm log writes: fix check of kthread_run() return value |  | CONFIG_DM_LOG_WRITES does not exist in A37 tree | 3.10.0-942 |
| FEATURE-MISSING | 4.8 | [`a5d60783df61`](https://git.kernel.org/torvalds/c/a5d60783df61) | [md] | dm log writes: move IO accounting earlier to fix error path |  | CONFIG_DM_LOG_WRITES does not exist in A37 tree | 3.10.0-942 |
| FEATURE-MISSING | 4.9 | [`88459642cba4`](https://git.kernel.org/torvalds/c/88459642cba4) | [block] | blk-mq: abstract tag allocation out into sbitmap library |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.9 | [`703fd1c0f177`](https://git.kernel.org/torvalds/c/703fd1c0f177) | [block] | blk-mq: account higher order dispatch |  | block/blk-mq.c not in A37 tree | 3.10.0-624 |
| FEATURE-MISSING | 4.9 | [`4e68a011428a`](https://git.kernel.org/torvalds/c/4e68a011428a) | [block] | blk-mq: don't redistribute hardware queues on a CPU hotplug event |  | block/blk-mq.c not in A37 tree | 3.10.0-624 |
| FEATURE-MISSING | 4.9 | [`841bac2c87fc`](https://git.kernel.org/torvalds/c/841bac2c87fc) | [block] | blk-mq: get rid of manual run of queue with __blk_mq_run_hw_queue() |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.9 | [`9151bcb4fb38`](https://git.kernel.org/torvalds/c/9151bcb4fb38) | [block] | blk-mq: kill unused blk_mq_create_mq_map() |  | block/blk-mq.c not in A37 tree | 3.10.0-716 |
| FEATURE-MISSING | 4.9 | [`b21d5b301794`](https://git.kernel.org/torvalds/c/b21d5b301794) | [block] | blk-mq: register device instead of disk |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.9 | [`63581af3f31e`](https://git.kernel.org/torvalds/c/63581af3f31e) | [block] | blk-mq: remove non-blocking pass in blk_mq_map_request |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.9 | [`8ec2ef2b66ea`](https://git.kernel.org/torvalds/c/8ec2ef2b66ea) | [block] | blk_mq: linux/blk-mq.h does not include all the headers it depends on |  | block/blk-mq.c not in A37 tree | 3.10.0-716 |
| FEATURE-MISSING | 4.10 | [`f04c3df3efec`](https://git.kernel.org/torvalds/c/f04c3df3efec) | [block] | blk-mq: abstract out blk_mq_dispatch_rq_list() helper |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.10 | [`c02ebfdddbaf`](https://git.kernel.org/torvalds/c/c02ebfdddbaf) | [block] | blk-mq: Always schedule hctx->next_cpu |  | block/blk-mq.c not in A37 tree | 3.10.0-609 |
| FEATURE-MISSING | 4.10 | [`36e1f3d10786`](https://git.kernel.org/torvalds/c/36e1f3d10786) | [block] | blk-mq: Avoid memory reclaim when remapping queues |  | block/blk-mq.c not in A37 tree | 3.10.0-609 |
| FEATURE-MISSING | 4.10 | [`6e85eaf3078b`](https://git.kernel.org/torvalds/c/6e85eaf3078b) | [block] | blk-mq: blk_account_io_start() takes a bool |  | block/blk-mq.c not in A37 tree | 3.10.0-624 |
| FEATURE-MISSING | 4.10 | [`066a4a73cee9`](https://git.kernel.org/torvalds/c/066a4a73cee9) | [block] | blk-mq: blk_mq_try_issue_directly() should lookup hardware queue |  | block/blk-mq.c not in A37 tree | 3.10.0-545 |
| FEATURE-MISSING | 4.10 | [`bc27c01b5c46`](https://git.kernel.org/torvalds/c/bc27c01b5c46) | [block] | blk-mq: Do not invoke .queue_rq() for a stopped queue |  | block/blk-mq.c not in A37 tree | 3.10.0-545 |
| FEATURE-MISSING | 4.10 | [`d1b1cea1e584`](https://git.kernel.org/torvalds/c/d1b1cea1e584) | [block] | blk-mq: Fix failed allocation path when mapping queues |  | block/blk-mq.c not in A37 tree | 3.10.0-609 |
| FEATURE-MISSING | 4.10 | [`2552e3f878c2`](https://git.kernel.org/torvalds/c/2552e3f878c2) | [block] | blk-mq: get rid of confusing blk_map_ctx structure |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.10 | [`600271d90000`](https://git.kernel.org/torvalds/c/600271d90000) | [block] | blk-mq: immediately dispatch big size request |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.10 | [`5d1b25c1ecab`](https://git.kernel.org/torvalds/c/5d1b25c1ecab) | [block] | blk-mq: Introduce blk_mq_hctx_stopped() |  | block/blk-mq.c not in A37 tree | 3.10.0-545 |
| FEATURE-MISSING | 4.10 | [`2253efc850c4`](https://git.kernel.org/torvalds/c/2253efc850c4) | [block] | blk-mq: Move more code into blk_mq_direct_issue_request() |  | block/blk-mq.c not in A37 tree | 3.10.0-545 |
| FEATURE-MISSING | 4.11 | [`a1ae0f74a73f`](https://git.kernel.org/torvalds/c/a1ae0f74a73f) | [block] | blk-mq-debug: Avoid that sparse complains about req_flags_t usage |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`72f2f8f6929c`](https://git.kernel.org/torvalds/c/72f2f8f6929c) | [block] | blk-mq-debug: Introduce debugfs_create_files() |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`8c0f14eab8f1`](https://git.kernel.org/torvalds/c/8c0f14eab8f1) | [block] | blk-mq-debug: Make show() operations interruptible |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`f3bcb0e60685`](https://git.kernel.org/torvalds/c/f3bcb0e60685) | [block] | blk-mq-debugfs: Add missing __acquires() / __releases() annotations |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`80c6b15732f0`](https://git.kernel.org/torvalds/c/80c6b15732f0) | [block] | blk-mq-sched: (un)register elevator when (un)registering queue |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`bd6737f1ae92`](https://git.kernel.org/torvalds/c/bd6737f1ae92) | [block] | blk-mq-sched: add flush insertion into blk_mq_sched_insert_request() |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`bd166ef183c2`](https://git.kernel.org/torvalds/c/bd166ef183c2) | [block] | blk-mq-sched: add framework for MQ capable IO schedulers |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`415b806de557`](https://git.kernel.org/torvalds/c/415b806de557) | [block] | blk-mq-sched: Allocate sched reserved tags as specified in the original queue tagset |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`d34849913819`](https://git.kernel.org/torvalds/c/d34849913819) | [block] | blk-mq-sched: allow setting of default IO scheduler |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`64765a75ef25`](https://git.kernel.org/torvalds/c/64765a75ef25) | [block] | blk-mq-sched: ask scheduler for work, if we failed dispatching leftovers |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`0cacba6cf825`](https://git.kernel.org/torvalds/c/0cacba6cf825) | [block] | blk-mq-sched: bypass the scheduler for flushes entirely |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`c13660a08c8b`](https://git.kernel.org/torvalds/c/c13660a08c8b) | [block] | blk-mq-sched: change ->dispatch_requests() to ->dispatch_request() |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`b48fda0976a8`](https://git.kernel.org/torvalds/c/b48fda0976a8) | [block] | blk-mq-sched: check for successful allocation before assigning tag |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`c7a571b45055`](https://git.kernel.org/torvalds/c/c7a571b45055) | [block] | blk-mq-sched: don't add flushes to the head of requeue queue |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`3d492c2e0146`](https://git.kernel.org/torvalds/c/3d492c2e0146) | [block] | blk-mq-sched: don't hold queue_lock when calling exit_icq |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`9c62110454b0`](https://git.kernel.org/torvalds/c/9c62110454b0) | [block] | blk-mq-sched: don't run the queue async from blk_mq_try_issue_directly() |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`54d5329d4256`](https://git.kernel.org/torvalds/c/54d5329d4256) | [block] | blk-mq-sched: fix crash in switch error path |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`50e1dab86aa2`](https://git.kernel.org/torvalds/c/50e1dab86aa2) | [block] | blk-mq-sched: fix starvation for multiple hardware queues and shared tags |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`6917ff0b5bd4`](https://git.kernel.org/torvalds/c/6917ff0b5bd4) | [block] | blk-mq-sched: refactor scheduler initialization |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`d38d35155514`](https://git.kernel.org/torvalds/c/d38d35155514) | [block] | blk-mq-sched: separate mark hctx and queue restart operations |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`93252632e828`](https://git.kernel.org/torvalds/c/93252632e828) | [block] | blk-mq-sched: set up scheduler tags when bringing up new queues |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`4941115bef2b`](https://git.kernel.org/torvalds/c/4941115bef2b) | [block] | blk-mq-tag: cleanup the normal/reserved tag allocation |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`8cecb07d70e7`](https://git.kernel.org/torvalds/c/8cecb07d70e7) | [block] | blk-mq-tag: remove redundant check for 'data->hctx' being non-NULL |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`cc71a6f43886`](https://git.kernel.org/torvalds/c/cc71a6f43886) | [block] | blk-mq: abstract out helpers for allocating/freeing tag maps |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`7b3938524cfb`](https://git.kernel.org/torvalds/c/7b3938524cfb) | [block] | blk-mq: add extra request information to debugfs |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`9abb2ad21e8b`](https://git.kernel.org/torvalds/c/9abb2ad21e8b) | [block] | blk-mq: add hctx->{state,flags} to debugfs |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`d7e3621ad1e4`](https://git.kernel.org/torvalds/c/d7e3621ad1e4) | [block] | blk-mq: add tags and sched_tags bitmaps to debugfs |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`70f36b6001bf`](https://git.kernel.org/torvalds/c/70f36b6001bf) | [block] | blk-mq: allow resize of scheduler requests |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`07e4fead45e6`](https://git.kernel.org/torvalds/c/07e4fead45e6) | [block] | blk-mq: create debugfs directory tree |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`95a49603707d`](https://git.kernel.org/torvalds/c/95a49603707d) | [block] | blk-mq: don't complete un-started request in timeout handler |  | block/blk-mq.c not in A37 tree | 3.10.0-657 |
| FEATURE-MISSING | 4.11 | [`12d70958a2e8`](https://git.kernel.org/torvalds/c/12d70958a2e8) | [block] | blk-mq: don't fail allocating driver tag for stopped hw queue |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`5a797e00dc93`](https://git.kernel.org/torvalds/c/5a797e00dc93) | [block] | blk-mq: don't lose flags passed in to blk_mq_alloc_request() |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`0c2a6fe4dc3e`](https://git.kernel.org/torvalds/c/0c2a6fe4dc3e) | [block] | blk-mq: don't special case flush inserts for blk-mq-sched |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`113285b47382`](https://git.kernel.org/torvalds/c/113285b47382) | [block] | blk-mq: ensure that bd->last is always set correctly |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`6bae363ee305`](https://git.kernel.org/torvalds/c/6bae363ee305) | [block] | blk-mq: Export blk_mq_freeze_queue_wait |  | block/blk-mq.c not in A37 tree | 3.10.0-654 |
| FEATURE-MISSING | 4.11 | [`0bfa5288a781`](https://git.kernel.org/torvalds/c/0bfa5288a781) | [block] | blk-mq: export software queue pending map to debugfs |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`2c3ad667902e`](https://git.kernel.org/torvalds/c/2c3ad667902e) | [block] | blk-mq: export some helpers we need to the scheduling framework |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`400f73b23f45`](https://git.kernel.org/torvalds/c/400f73b23f45) | [block] | blk-mq: fix debugfs compilation issues |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`3c782d67c168`](https://git.kernel.org/torvalds/c/3c782d67c168) | [block] | blk-mq: fix potential race in queue restart and driver tag allocation |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`0067d4b020ea`](https://git.kernel.org/torvalds/c/0067d4b020ea) | [block] | blk-mq: Fix tagset reinit in the presence of cpu hot-unplug |  | block/blk-mq.c not in A37 tree | 3.10.0-647 |
| FEATURE-MISSING | 4.11 | [`2aa0f21d5491`](https://git.kernel.org/torvalds/c/2aa0f21d5491) | [block] | blk-mq: have blk_mq_dispatch_rq_list() return if we queued IO or not |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`0abad7741243`](https://git.kernel.org/torvalds/c/0abad7741243) | [block] | blk-mq: improve scheduler queue sync/async running |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`59748398992c`](https://git.kernel.org/torvalds/c/59748398992c) | [block] | blk-mq: kill blk_mq_set_alloc_data() |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`6d2809d51a50`](https://git.kernel.org/torvalds/c/6d2809d51a50) | [block] | blk-mq: make blk_mq_alloc_request_hctx() allocate a scheduler request |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`62ebce16c0ac`](https://git.kernel.org/torvalds/c/62ebce16c0ac) | [block] | blk-mq: move debugfs_remove() of disk dir to blk_release_queue() |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`4a46f05ebf99`](https://git.kernel.org/torvalds/c/4a46f05ebf99) | [block] | blk-mq: move hctx and ctx counters from sysfs to debugfs |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`be21547318b2`](https://git.kernel.org/torvalds/c/be21547318b2) | [block] | blk-mq: move hctx io_poll, stats, and dispatched from sysfs to debugfs |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`950cd7e9ffdc`](https://git.kernel.org/torvalds/c/950cd7e9ffdc) | [block] | blk-mq: move hctx->dispatch and ctx->rq_list from sysfs to debugfs |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`d96b37c0af3e`](https://git.kernel.org/torvalds/c/d96b37c0af3e) | [block] | blk-mq: move tags and sched_tags info from sysfs to debugfs |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`562bef425977`](https://git.kernel.org/torvalds/c/562bef425977) | [block] | blk-mq: move update of tags->rqs to __blk_mq_alloc_request() |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`200e86b3372b`](https://git.kernel.org/torvalds/c/200e86b3372b) | [block] | blk-mq: only apply active queue tag throttling for driver tags |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`f1ba82616c33`](https://git.kernel.org/torvalds/c/f1ba82616c33) | [block] | blk-mq: pass bio to blk_mq_sched_get_rq_priv |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`f91328c40a55`](https://git.kernel.org/torvalds/c/f91328c40a55) | [block] | blk-mq: Provide freeze queue timeout |  | block/blk-mq.c not in A37 tree | 3.10.0-654 |
| FEATURE-MISSING | 4.11 | [`99cf1dc580f0`](https://git.kernel.org/torvalds/c/99cf1dc580f0) | [block] | blk-mq: release driver tag on a requeue event |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`ebe8bddb6e30`](https://git.kernel.org/torvalds/c/ebe8bddb6e30) | [block] | blk-mq: remap queues when adding/removing hardware queues |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`6d8c6c0f97ad`](https://git.kernel.org/torvalds/c/6d8c6c0f97ad) | [block] | blk-mq: Restart a single queue if tag sets are shared |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`2af8cbe30531`](https://git.kernel.org/torvalds/c/2af8cbe30531) | [block] | blk-mq: split tag ->rqs[] into two |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`7e79dadce222`](https://git.kernel.org/torvalds/c/7e79dadce222) | [block] | blk-mq: stop hardware queue in blk_mq_delay_queue() |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`16a3c2a70cad`](https://git.kernel.org/torvalds/c/16a3c2a70cad) | [block] | blk-mq: un-export blk_mq_free_hctx_request() |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`da55f2cc7841`](https://git.kernel.org/torvalds/c/da55f2cc7841) | [block] | blk-mq: use sbq wait queues instead of restart for driver tags |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.11 | [`81380ca10778`](https://git.kernel.org/torvalds/c/81380ca10778) | [block] | blk-mq: use the right hctx when getting a driver tag fails |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`d332ce091813`](https://git.kernel.org/torvalds/c/d332ce091813) | [block] | blk-mq-debugfs: allow schedulers to register debugfs attributes |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`1a435111f8eb`](https://git.kernel.org/torvalds/c/1a435111f8eb) | [block] | blk-mq-debugfs: clean up flag definitions |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`71b90511cb17`](https://git.kernel.org/torvalds/c/71b90511cb17) | [block] | blk-mq-debugfs: don't open code strstrip() |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`c7e4145ae11b`](https://git.kernel.org/torvalds/c/c7e4145ae11b) | [block] | blk-mq-debugfs: error on long write to queue "state" file |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`f57de23ac901`](https://git.kernel.org/torvalds/c/f57de23ac901) | [block] | blk-mq-debugfs: get rid of a bunch of boilerplate |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`62d6c9496a2b`](https://git.kernel.org/torvalds/c/62d6c9496a2b) | [block] | blk-mq-debugfs: Rename functions for registering and unregistering the mq directory |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`88aabbd7e7ac`](https://git.kernel.org/torvalds/c/88aabbd7e7ac) | [block] | blk-mq-debugfs: rename hw queue directories from <n> to hctx<n> |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`bec03d6b9226`](https://git.kernel.org/torvalds/c/bec03d6b9226) | [block] | blk-mq-debugfs: separate flags with \| |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`c05f8525f67b`](https://git.kernel.org/torvalds/c/c05f8525f67b) | [block] | blk-mq-sched: make completed_request() callback more useful |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`ee056f981261`](https://git.kernel.org/torvalds/c/ee056f981261) | [block] | blk-mq-sched: provide hooks for initializing hardware queue data |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`229a92873f3a`](https://git.kernel.org/torvalds/c/229a92873f3a) | [block] | blk-mq: add shallow depth option for blk_mq_get_tag() |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`d9d149a39690`](https://git.kernel.org/torvalds/c/d9d149a39690) | [block] | blk-mq: comment on races related with timeout handler |  | block/blk-mq.c not in A37 tree | 3.10.0-679 |
| FEATURE-MISSING | 4.12 | [`18d4d7d0571f`](https://git.kernel.org/torvalds/c/18d4d7d0571f) | [block] | blk-mq: Do not invoke queue operations on a dead queue |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`5b7272729930`](https://git.kernel.org/torvalds/c/5b7272729930) | [block] | blk-mq: export helpers |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`91d68905aee0`](https://git.kernel.org/torvalds/c/91d68905aee0) | [block] | blk-mq: Export queue state through /sys/kernel/debug/block/*/state |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`d964f04a8fde`](https://git.kernel.org/torvalds/c/d964f04a8fde) | [block] | blk-mq: fix direct issue |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`0c9539a431bd`](https://git.kernel.org/torvalds/c/0c9539a431bd) | [block] | blk-mq: fix leak of q->stats |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`8e8320c9315c`](https://git.kernel.org/torvalds/c/8e8320c9315c) | [block] | blk-mq: fix performance regression with shared tags |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`abc25a693091`](https://git.kernel.org/torvalds/c/abc25a693091) | [block] | blk-mq: Fix preempt count imbalance |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`bf4907c05e61`](https://git.kernel.org/torvalds/c/bf4907c05e61) | [block] | blk-mq: fix schedule-under-preempt for blocking drivers |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`b00c53e8f411`](https://git.kernel.org/torvalds/c/b00c53e8f411) | [block] | blk-mq: fix schedule-while-atomic with scheduler attached |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`5eb6126e1c5c`](https://git.kernel.org/torvalds/c/5eb6126e1c5c) | [block] | blk-mq: improve blk_mq_try_issue_directly |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`00e043936e9a`](https://git.kernel.org/torvalds/c/00e043936e9a) | [block] | blk-mq: introduce Kyber multiqueue I/O scheduler |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`4c9e4019f188`](https://git.kernel.org/torvalds/c/4c9e4019f188) | [block] | blk-mq: Let blk_mq_debugfs_register() look up the queue name |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`fd07dc81850e`](https://git.kernel.org/torvalds/c/fd07dc81850e) | [block] | blk-mq: Make blk_flags_show() callers append a newline character |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`807b10417b23`](https://git.kernel.org/torvalds/c/807b10417b23) | [block] | blk-mq: make driver tag failure path easier to follow |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`705cda97ee3a`](https://git.kernel.org/torvalds/c/705cda97ee3a) | [block] | blk-mq: Make it safe to use RCU to iterate over blk_mq_tag_set.tag_list |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`254d259da0c3`](https://git.kernel.org/torvalds/c/254d259da0c3) | [block] | blk-mq: merge mq and sq make_request instances |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`d173a25165c1`](https://git.kernel.org/torvalds/c/d173a25165c1) | [block] | blk-mq: move debugfs declarations to a separate header file |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`65ca1ca32ca3`](https://git.kernel.org/torvalds/c/65ca1ca32ca3) | [block] | blk-mq: Move the "state" debugfs attribute one level down |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`a8ecdd7117ee`](https://git.kernel.org/torvalds/c/a8ecdd7117ee) | [block] | blk-mq: Only register debugfs attributes for blk-mq queues |  | block/blk-mq.c not in A37 tree | 3.10.0-871 |
| FEATURE-MISSING | 4.12 | [`f05d1ba7871a`](https://git.kernel.org/torvalds/c/f05d1ba7871a) | [block] | blk-mq: Only unregister hctxs for which registration succeeded |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`dad7a3be4960`](https://git.kernel.org/torvalds/c/dad7a3be4960) | [block] | blk-mq: pass correct hctx to blk_mq_try_issue_directly |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`2d0364c8c1a9`](https://git.kernel.org/torvalds/c/2d0364c8c1a9) | [block] | blk-mq: Register <dev>/queue/mq after having registered <dev>/queue |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`7254a50a5db4`](https://git.kernel.org/torvalds/c/7254a50a5db4) | [block] | blk-mq: remove blk_mq_abort_requeue_list() |  | block/blk-mq.c not in A37 tree | 3.10.0-679 |
| FEATURE-MISSING | 4.12 | [`7642747d674a`](https://git.kernel.org/torvalds/c/7642747d674a) | [block] | blk-mq: remove BLK_MQ_F_DEFER_ISSUE |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`8658dca8bd56`](https://git.kernel.org/torvalds/c/8658dca8bd56) | [block] | blk-mq: Show operation, cmd_flags and rq_flags names |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`f5c0b0910ac4`](https://git.kernel.org/torvalds/c/f5c0b0910ac4) | [block] | blk-mq: Show symbolic names for hctx state and flags |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`2299722c4b11`](https://git.kernel.org/torvalds/c/2299722c4b11) | [block] | blk-mq: split the plug and sync cases in blk_mq_make_request |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`a4d907b6a33b`](https://git.kernel.org/torvalds/c/a4d907b6a33b) | [block] | blk-mq: streamline blk_mq_make_request |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`e4dc2b32df55`](https://git.kernel.org/torvalds/c/e4dc2b32df55) | [block] | blk-mq: Take tagset lock when updating hw queues |  | block/blk-mq.c not in A37 tree | 3.10.0-851 |
| FEATURE-MISSING | 4.12 | [`e869b5462f83`](https://git.kernel.org/torvalds/c/e869b5462f83) | [block] | blk-mq: Unregister debugfs attributes earlier |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`9c1051aacde8`](https://git.kernel.org/torvalds/c/9c1051aacde8) | [block] | blk-mq: untangle debugfs and sysfs |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`d945a365a068`](https://git.kernel.org/torvalds/c/d945a365a068) | [block] | blk-mq: use true instead of 1 for blk_mq_queue_data.last |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.12 | [`117aceb03030`](https://git.kernel.org/torvalds/c/117aceb03030) | [md] | dm era: save spacemap metadata root after the pre-commit |  | CONFIG_DM_ERA does not exist in A37 tree | 3.10.0-665 |
| FEATURE-MISSING | 4.13 | [`edea55abb86f`](https://git.kernel.org/torvalds/c/edea55abb86f) | [block] | blk-mq-debugfs: Add 'kick' operation |  | block/blk-mq.c not in A37 tree | 3.10.0-930 |
| FEATURE-MISSING | 4.13 | [`22d538213ec4`](https://git.kernel.org/torvalds/c/22d538213ec4) | [block] | blk-mq-debugfs: Add names for recently added flags |  | block/blk-mq.c not in A37 tree | 3.10.0-930 |
| FEATURE-MISSING | 4.13 | [`c0cb1c6d3906`](https://git.kernel.org/torvalds/c/c0cb1c6d3906) | [block] | blk-mq-debugfs: Show atomic request flags |  | block/blk-mq.c not in A37 tree | 3.10.0-930 |
| FEATURE-MISSING | 4.13 | [`2720bab50258`](https://git.kernel.org/torvalds/c/2720bab50258) | [block] | blk-mq-debugfs: Show busy requests |  | block/blk-mq.c not in A37 tree | 3.10.0-930 |
| FEATURE-MISSING | 4.13 | [`8ef1a191038c`](https://git.kernel.org/torvalds/c/8ef1a191038c) | [block] | blk-mq-debugfs: Show requeue list |  | block/blk-mq.c not in A37 tree | 3.10.0-930 |
| FEATURE-MISSING | 4.13 | [`c00539037495`](https://git.kernel.org/torvalds/c/c00539037495) | [block] | blk-mq-pci: add a fallback when pci_irq_get_affinity returns NULL |  | block/blk-mq.c not in A37 tree | 3.10.0-1064 |
| FEATURE-MISSING | 4.13 | [`32825c45ff8f`](https://git.kernel.org/torvalds/c/32825c45ff8f) | [block] | blk-mq-sched: fix performance regression of mq-deadline |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.13 | [`fe631457ff3e`](https://git.kernel.org/torvalds/c/fe631457ff3e) | [block] | blk-mq: map all HWQ also in hyperthreaded system |  | block/blk-mq.c not in A37 tree | 3.10.0-743 |
| FEATURE-MISSING | 4.13 | [`ab42f35d9cb5`](https://git.kernel.org/torvalds/c/ab42f35d9cb5) | [block] | blk-mq: merge bio into sw queue before plugging |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.14 | [`70e62f4bacdf`](https://git.kernel.org/torvalds/c/70e62f4bacdf) | [block] | blk-mq-debugfs: fix device sched directory for default scheduler |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | 4.14 | [`7f5562d5ecc4`](https://git.kernel.org/torvalds/c/7f5562d5ecc4) | [block] | blk-mq-tag: check for NULL rq when iterating tags |  | block/blk-mq.c not in A37 tree | 3.10.0-805 |
| FEATURE-MISSING | 4.14 | [`b8d62b3a9c25`](https://git.kernel.org/torvalds/c/b8d62b3a9c25) | [block] | blk-mq: enable checking two part inflight counts at the same time |  | block/blk-mq.c not in A37 tree | 3.10.0-953 |
| FEATURE-MISSING | 4.14 | [`f299b7c7a9de`](https://git.kernel.org/torvalds/c/f299b7c7a9de) | [block] | blk-mq: provide internal in-flight variant |  | block/blk-mq.c not in A37 tree | 3.10.0-953 |
| FEATURE-MISSING | 4.14 | [`0c79c62021d2`](https://git.kernel.org/torvalds/c/0c79c62021d2) | [md] | dm log writes: don't use all the cpu while waiting to log blocks |  | CONFIG_DM_LOG_WRITES does not exist in A37 tree | 3.10.0-942 |
| FEATURE-MISSING | 4.14 | [`228bb5b26038`](https://git.kernel.org/torvalds/c/228bb5b26038) | [md] | dm log writes: fix >512b sectorsize support |  | CONFIG_DM_LOG_WRITES does not exist in A37 tree | 3.10.0-942 |
| FEATURE-MISSING | 4.15 | [`a6a252e64914`](https://git.kernel.org/torvalds/c/a6a252e64914) | [block] | blk-mq-sched: decide how to handle flush rq via RQF_FLUSH_SEQ |  | block/blk-mq.c not in A37 tree | 3.10.0-809 |
| FEATURE-MISSING | 4.15 | [`5e3d02bbafad`](https://git.kernel.org/torvalds/c/5e3d02bbafad) | [block] | blk-mq-sched: dispatch from scheduler IFF progress is made in ->dispatch |  | block/blk-mq.c not in A37 tree | 3.10.0-809 |
| FEATURE-MISSING | 4.15 | [`b347689ffbca`](https://git.kernel.org/torvalds/c/b347689ffbca) | [block] | blk-mq-sched: improve dispatching from sw queue |  | block/blk-mq.c not in A37 tree | 3.10.0-809 |
| FEATURE-MISSING | 4.15 | [`caf8eb0d604a`](https://git.kernel.org/torvalds/c/caf8eb0d604a) | [block] | blk-mq-sched: move actual dispatching into one helper |  | block/blk-mq.c not in A37 tree | 3.10.0-809 |
| FEATURE-MISSING | 4.15 | [`aba7afc5671c`](https://git.kernel.org/torvalds/c/aba7afc5671c) | [block] | blk-mq: Avoid that request queue removal can trigger list corruption |  | block/blk-mq.c not in A37 tree | 3.10.0-809 |
| FEATURE-MISSING | 4.15 | [`923218f6166a`](https://git.kernel.org/torvalds/c/923218f6166a) | [block] | blk-mq: don't allocate driver tag upfront for flush rq |  | block/blk-mq.c not in A37 tree | 3.10.0-809 |
| FEATURE-MISSING | 4.15 | [`88022d7201e9`](https://git.kernel.org/torvalds/c/88022d7201e9) | [block] | blk-mq: don't handle failure in .get_budget |  | block/blk-mq.c not in A37 tree | 3.10.0-809 |
| FEATURE-MISSING | 4.15 | [`1f460b63d4b3`](https://git.kernel.org/torvalds/c/1f460b63d4b3) | [block] | blk-mq: don't restart queue when .get_budget returns BLK_STS_RESOURCE |  | block/blk-mq.c not in A37 tree | 3.10.0-809 |
| FEATURE-MISSING | 4.15 | [`eb619fdb2d4c`](https://git.kernel.org/torvalds/c/eb619fdb2d4c) | [block] | blk-mq: fix issue with shared tag queue re-running |  | block/blk-mq.c not in A37 tree | 3.10.0-809 |
| FEATURE-MISSING | 4.15 | [`c2e82a234873`](https://git.kernel.org/torvalds/c/c2e82a234873) | [block] | blk-mq: fix nr_requests wrong value when modify it from sysfs |  | block/blk-mq.c not in A37 tree | 3.10.0-917 |
| FEATURE-MISSING | 4.15 | [`f906a6a0f426`](https://git.kernel.org/torvalds/c/f906a6a0f426) | [block] | blk-mq: improve tag waiting setup for non-shared tags |  | block/blk-mq.c not in A37 tree | 3.10.0-809 |
| FEATURE-MISSING | 4.15 | [`de1482974080`](https://git.kernel.org/torvalds/c/de1482974080) | [block] | blk-mq: introduce .get_budget and .put_budget in blk_mq_ops |  | block/blk-mq.c not in A37 tree | 3.10.0-809 |
| FEATURE-MISSING | 4.15 | [`244c65a3ccaa`](https://git.kernel.org/torvalds/c/244c65a3ccaa) | [block] | blk-mq: move blk_mq_put_driver_tag*() into blk-mq.h |  | block/blk-mq.c not in A37 tree | 3.10.0-809 |
| FEATURE-MISSING | 4.15 | [`79f720a751ca`](https://git.kernel.org/torvalds/c/79f720a751ca) | [block] | blk-mq: only run the hardware queue if IO is pending |  | block/blk-mq.c not in A37 tree | 3.10.0-874 |
| FEATURE-MISSING | 4.15 | [`0c6af1ccd5fd`](https://git.kernel.org/torvalds/c/0c6af1ccd5fd) | [block] | blk-mq: put driver tag if dispatch budget can't be got |  | block/blk-mq.c not in A37 tree | 3.10.0-809 |
| FEATURE-MISSING | 4.15 | [`6d6f167ce741`](https://git.kernel.org/torvalds/c/6d6f167ce741) | [block] | blk-mq: put the driver tag of nxt rq before first one is requeued |  | block/blk-mq.c not in A37 tree | 3.10.0-809 |
| FEATURE-MISSING | 4.15 | [`98d82f48f198`](https://git.kernel.org/torvalds/c/98d82f48f198) | [md] | dm log writes: add support for DAX |  | CONFIG_DM_LOG_WRITES does not exist in A37 tree | 3.10.0-942 |
| FEATURE-MISSING | 4.15 | [`e5a20660a15d`](https://git.kernel.org/torvalds/c/e5a20660a15d) | [md] | dm log writes: add support for inline data buffers |  | CONFIG_DM_LOG_WRITES does not exist in A37 tree | 3.10.0-942 |
| FEATURE-MISSING | 4.16 | [`9e97d2951a7e`](https://git.kernel.org/torvalds/c/9e97d2951a7e) | [block] | blk-mq-sched: remove unused 'can_block' arg from blk_mq_sched_insert_request |  | block/blk-mq.c not in A37 tree | 3.10.0-896 |
| FEATURE-MISSING | 4.16 | [`b7435db8b8d1`](https://git.kernel.org/torvalds/c/b7435db8b8d1) | [block] | blk-mq: Add locking annotations to hctx_lock() and hctx_unlock() |  | block/blk-mq.c not in A37 tree | 3.10.0-896 |
| FEATURE-MISSING | 4.16 | [`ae943d20624d`](https://git.kernel.org/torvalds/c/ae943d20624d) | [block] | blk-mq: Avoid that blk_mq_delay_run_hw_queue() introduces unintended delays |  | block/blk-mq.c not in A37 tree | 3.10.0-896 |
| FEATURE-MISSING | 4.16 | [`7d4901a90d02`](https://git.kernel.org/torvalds/c/7d4901a90d02) | [block] | blk-mq: avoid to map CPU into stale hw queue |  | block/blk-mq.c not in A37 tree | 3.10.0-953 |
| FEATURE-MISSING | 4.16 | [`105976f51779`](https://git.kernel.org/torvalds/c/105976f51779) | [block] | blk-mq: don't call io sched's .requeue_request when requeueing rq to ->dispatch |  | block/blk-mq.c not in A37 tree | 3.10.0-886 |
| FEATURE-MISSING | 4.16 | [`23d4ee19e789`](https://git.kernel.org/torvalds/c/23d4ee19e789) | [block] | blk-mq: don't dispatch request in blk_mq_request_direct_issue if queue is busy |  | block/blk-mq.c not in A37 tree | 3.10.0-896 |
| FEATURE-MISSING | 4.16 | [`0f95549c0ea1`](https://git.kernel.org/torvalds/c/0f95549c0ea1) | [block] | blk-mq: factor out a few helpers from __blk_mq_try_issue_directly |  | block/blk-mq.c not in A37 tree | 3.10.0-896 |
| FEATURE-MISSING | 4.16 | [`8ab0b7dc73e1`](https://git.kernel.org/torvalds/c/8ab0b7dc73e1) | [block] | blk-mq: fix kernel oops in blk_mq_tag_idle() |  | block/blk-mq.c not in A37 tree | 3.10.0-835 |
| FEATURE-MISSING | 4.16 | [`fb350e0ad993`](https://git.kernel.org/torvalds/c/fb350e0ad993) | [block] | blk-mq: fix race between updating nr_hw_queues and switching io sched |  | block/blk-mq.c not in A37 tree | 3.10.0-953 |
| FEATURE-MISSING | 4.16 | [`396eaf21ee17`](https://git.kernel.org/torvalds/c/396eaf21ee17) | [md] | blk-mq: improve DM's blk-mq IO merging via blk_insert_cloned_request feedback |  | block/blk-mq.c not in A37 tree | 3.10.0-896 |
| FEATURE-MISSING | 4.16 | [`86ff7c2a80cd`](https://git.kernel.org/torvalds/c/86ff7c2a80cd) | [block] | blk-mq: introduce BLK_STS_DEV_RESOURCE |  | block/blk-mq.c not in A37 tree | 3.10.0-896 |
| FEATURE-MISSING | 4.16 | [`04ced159cec8`](https://git.kernel.org/torvalds/c/04ced159cec8) | [block] | blk-mq: move hctx lock/unlock into a helper |  | block/blk-mq.c not in A37 tree | 3.10.0-896 |
| FEATURE-MISSING | 4.16 | [`c2856ae2f315`](https://git.kernel.org/torvalds/c/c2856ae2f315) | [block] | blk-mq: quiesce queue before freeing queue |  | block/blk-mq.c not in A37 tree | 3.10.0-886 |
| FEATURE-MISSING | 4.16 | [`24f5a90f0d13`](https://git.kernel.org/torvalds/c/24f5a90f0d13) | [block] | blk-mq: quiesce queue during switching io sched and updating nr_requests |  | block/blk-mq.c not in A37 tree | 3.10.0-874 |
| FEATURE-MISSING | 4.16 | [`c27d53fb445f`](https://git.kernel.org/torvalds/c/c27d53fb445f) | [block] | blk-mq: Reduce the number of if-statements in blk_mq_mark_tag_wait() |  | block/blk-mq.c not in A37 tree | 3.10.0-896 |
| FEATURE-MISSING | 4.16 | [`c77ff7fd03dd`](https://git.kernel.org/torvalds/c/c77ff7fd03dd) | [block] | blk-mq: Rename blk_mq_request_direct_issue() into blk_mq_request_issue_directly() |  | block/blk-mq.c not in A37 tree | 3.10.0-896 |
| FEATURE-MISSING | 4.16 | [`08b5a6e2a769`](https://git.kernel.org/torvalds/c/08b5a6e2a769) | [block] | blk-mq: silence false positive warnings in hctx_unlock() |  | block/blk-mq.c not in A37 tree | 3.10.0-896 |
| FEATURE-MISSING | 4.16 | [`4b259fc4a8a1`](https://git.kernel.org/torvalds/c/4b259fc4a8a1) | [md] | dm log writes: fix max length used for kstrndup |  | CONFIG_DM_LOG_WRITES does not exist in A37 tree | 3.10.0-942 |
| FEATURE-MISSING | 4.17 | [`f23f5bece686`](https://git.kernel.org/torvalds/c/f23f5bece686) | [block] | blk-mq: Allow PCI vector offset for mapping queues |  | block/blk-mq.c not in A37 tree | 3.10.0-896 |
| FEATURE-MISSING | 4.17 | [`37f9579f4c31`](https://git.kernel.org/torvalds/c/37f9579f4c31) | [block] | blk-mq: Avoid that submitting a bio concurrently with device removal triggers a crash |  | block/blk-mq.c not in A37 tree | 3.10.0-896 |
| FEATURE-MISSING | 4.17 | [`6131837b1de6`](https://git.kernel.org/torvalds/c/6131837b1de6) | [block] | blk-mq: count allocated but not started requests in iostats inflight |  | block/blk-mq.c not in A37 tree | 3.10.0-953 |
| FEATURE-MISSING | 4.17 | [`bf0ddaba65dd`](https://git.kernel.org/torvalds/c/bf0ddaba65dd) | [block] | blk-mq: fix sysfs inflight counter |  | block/blk-mq.c not in A37 tree | 3.10.0-953 |
| FEATURE-MISSING | 4.17 | [`0bca799b9280`](https://git.kernel.org/torvalds/c/0bca799b9280) | [block] | blk-mq: order getting budget and driver tag |  | block/blk-mq.c not in A37 tree | 3.10.0-896 |
| FEATURE-MISSING | 4.17 | [`15fe8a90bb45`](https://git.kernel.org/torvalds/c/15fe8a90bb45) | [block] | blk-mq: remove blk_mq_delay_queue() |  | block/blk-mq.c not in A37 tree | 3.10.0-896 |
| FEATURE-MISSING | 4.17 | [`e5c4cb9b1b78`](https://git.kernel.org/torvalds/c/e5c4cb9b1b78) | [md] | dm log writes: record metadata flag for better flags record |  | CONFIG_DM_LOG_WRITES does not exist in A37 tree | 3.10.0-942 |
| FEATURE-MISSING | 4.18 | [`e6fc46498784`](https://git.kernel.org/torvalds/c/e6fc46498784) | [block] | blk-mq: avoid starving tag allocation after allocating process migrates |  | block/blk-mq.c not in A37 tree | 3.10.0-917 |
| FEATURE-MISSING | 4.18 | [`1f57f8d442f8`](https://git.kernel.org/torvalds/c/1f57f8d442f8) | [block] | blk-mq: don't queue more if we get a busy return |  | block/blk-mq.c not in A37 tree | 3.10.0-926 |
| FEATURE-MISSING | 4.18 | [`a347c7ad8edf`](https://git.kernel.org/torvalds/c/a347c7ad8edf) | [block] | blk-mq: reinit q->tag_set_list entry only after grace period |  | block/blk-mq.c not in A37 tree | 3.10.0-917 |
| FEATURE-MISSING | 4.18 | [`32a50fabb334`](https://git.kernel.org/torvalds/c/32a50fabb334) | [block] | blk-mq: update nr_requests when switching to 'none' scheduler |  | block/blk-mq.c not in A37 tree | 3.10.0-917 |
| FEATURE-MISSING | 4.19 | [`530ca2c9bd69`](https://git.kernel.org/torvalds/c/530ca2c9bd69) | [block] | blk-mq: Allow blocking queue tag iter callbacks |  | block/blk-mq.c not in A37 tree | 3.10.0-1065 |
| FEATURE-MISSING | 4.19 | [`6e768717304b`](https://git.kernel.org/torvalds/c/6e768717304b) | [block] | blk-mq: dequeue request one by one from sw queue if hctx is busy |  | block/blk-mq.c not in A37 tree | 3.10.0-926 |
| FEATURE-MISSING | 4.19 | [`8824f62246be`](https://git.kernel.org/torvalds/c/8824f62246be) | [block] | blk-mq: fail the request in case issue failure |  | block/blk-mq.c not in A37 tree | 3.10.0-930 |
| FEATURE-MISSING | 4.19 | [`75d6e175fc51`](https://git.kernel.org/torvalds/c/75d6e175fc51) | [block] | blk-mq: fix updating tags depth |  | block/blk-mq.c not in A37 tree | 3.10.0-993 |
| FEATURE-MISSING | 4.19 | [`6ce3dd6eec11`](https://git.kernel.org/torvalds/c/6ce3dd6eec11) | [block] | blk-mq: issue directly if hw queue isn't busy in case of 'none' |  | block/blk-mq.c not in A37 tree | 3.10.0-927 |
| FEATURE-MISSING | 4.19 | [`b04f50ab8a74`](https://git.kernel.org/torvalds/c/b04f50ab8a74) | [block] | blk-mq: only attempt to merge bio if there is rq in sw queue |  | block/blk-mq.c not in A37 tree | 3.10.0-926 |
| FEATURE-MISSING | 4.19 | [`f5bbbbe4d635`](https://git.kernel.org/torvalds/c/f5bbbbe4d635) | [block] | blk-mq: sync the update nr_hw_queues with blk_mq_queue_tag_busy_iter |  | block/blk-mq.c not in A37 tree | 3.10.0-1065 |
| FEATURE-MISSING | 4.19 | [`3f0cedc7e9a0`](https://git.kernel.org/torvalds/c/3f0cedc7e9a0) | [block] | blk-mq: use list_splice_tail_init() to insert requests |  | block/blk-mq.c not in A37 tree | 3.10.0-926 |
| FEATURE-MISSING | 4.20 | [`36e765392e48`](https://git.kernel.org/torvalds/c/36e765392e48) | [block] | blk-mq: complete req in softirq context in case of single queue |  | block/blk-mq.c not in A37 tree | 3.10.0-1025 |
| FEATURE-MISSING | 4.20 | [`ffe81d45322c`](https://git.kernel.org/torvalds/c/ffe81d45322c) | [block] | blk-mq: fix corruption with direct issue |  | block/blk-mq.c not in A37 tree | 3.10.0-989 |
| FEATURE-MISSING | 4.20 | [`c616cbee97ae`](https://git.kernel.org/torvalds/c/c616cbee97ae) | [block] | blk-mq: punt failed direct issue to dispatch list |  | block/blk-mq.c not in A37 tree | 3.10.0-989 |
| FEATURE-MISSING | 5.0 | [`85bd6e61f34d`](https://git.kernel.org/torvalds/c/85bd6e61f34d) | [block] | blk-mq: fix a hung issue when fsync |  | block/blk-mq.c not in A37 tree | 3.10.0-1030 |
| FEATURE-MISSING | 5.0 | [`aef1897cd36d`](https://git.kernel.org/torvalds/c/aef1897cd36d) | [block] | blk-mq: insert rq with DONTPREP to hctx dispatch list when requeue |  | block/blk-mq.c not in A37 tree | 3.10.0-1112 |
| FEATURE-MISSING | 5.1 | [`1b8f21b74c3c`](https://git.kernel.org/torvalds/c/1b8f21b74c3c) | [block] | blk-mq: introduce blk_mq_complete_request_sync() |  | block/blk-mq.c not in A37 tree | 3.10.0-1039 |
| FEATURE-MISSING | 5.2 | [`7996a8b5511a`](https://git.kernel.org/torvalds/c/7996a8b5511a) | [block] | blk-mq: fix hang caused by freeze/unfreeze sequence |  | block/blk-mq.c not in A37 tree | 3.10.0-1135 |
| FEATURE-MISSING | 5.2 | [`211ad4b73303`](https://git.kernel.org/torvalds/c/211ad4b73303) | [md] | dm log writes: make sure super sector log updates are written in order |  | CONFIG_DM_LOG_WRITES does not exist in A37 tree | 3.10.0-1077 |
| FEATURE-MISSING | 5.4 | [`226b4fc75c78`](https://git.kernel.org/torvalds/c/226b4fc75c78) | [md] | blk-mq: add callback of .cleanup_rq |  | block/blk-mq.c not in A37 tree | 3.10.0-1128 |
| FEATURE-MISSING | 5.4 | [`aa306ab703e9`](https://git.kernel.org/torvalds/c/aa306ab703e9) | [block] | blk-mq: introduce blk_mq_request_completed() |  | block/blk-mq.c not in A37 tree | 3.10.0-1082 |
| FEATURE-MISSING | 5.4 | [`f9934a80f91d`](https://git.kernel.org/torvalds/c/f9934a80f91d) | [block] | blk-mq: introduce blk_mq_tagset_wait_completed_request() |  | block/blk-mq.c not in A37 tree | 3.10.0-1082 |
| FEATURE-MISSING | 5.7 | [`5fe56de799ad`](https://git.kernel.org/torvalds/c/5fe56de799ad) | [block] | blk-mq: Put driver tag in blk_mq_dispatch_rq_list() when no budget |  | block/blk-mq.c not in A37 tree | 3.10.0-1140 |
| FEATURE-MISSING | — | — | [block] | blk-mq-debugfs: remove poll_stat |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | — | — | [block] | blk-mq-sched: mark_tech_preview on mq-deadline and kyber |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | — | — | [block] | blk-mq-tag: fix wakeup hang after tag resize |  | block/blk-mq.c not in A37 tree | 3.10.0-709 |
| FEATURE-MISSING | — | — | [block] | blk-mq: add missing percpu_counter_destroy for mq_usage_counter |  | block/blk-mq.c not in A37 tree | 3.10.0-10 |
| FEATURE-MISSING | — | — | [block] | blk-mq: add queue freeze/unfreeze support |  | block/blk-mq.c not in A37 tree | 3.10.0-10 |
| FEATURE-MISSING | — | — | [block] | blk-mq: align set->cmd_size to cache line size |  | block/blk-mq.c not in A37 tree | 3.10.0-997 |
| FEATURE-MISSING | — | — | [block] | blk-mq: allocate space of 'request_aux' for flush rq |  | block/blk-mq.c not in A37 tree | 3.10.0-809 |
| FEATURE-MISSING | — | — | [block] | blk-mq: allow drivers to hook into I_O completion |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | — | — | [block] | blk-mq: always complete bios in blk_mq_complete_request |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | — | — | [block] | blk-mq: avoid IO hang during CPU hotplug by freezing queues in order |  | block/blk-mq.c not in A37 tree | 3.10.0-851 |
| FEATURE-MISSING | — | — | [block] | blk-mq: blk-mq should free bios in pass through case |  | block/blk-mq.c not in A37 tree | 3.10.0-10 |
| FEATURE-MISSING | — | — | [block] | blk-mq: cache rq->q |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | — | — | [block] | blk-mq: call exit_hctx on hw queue teardown |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | — | — | [block] | blk-mq: call preempt_disable/enable in blk_mq_run_hw_queue, and only if needed |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | — | — | [block] | blk-mq: change sw <-> hw queue mappings on hotplug events |  | block/blk-mq.c not in A37 tree | 3.10.0-10 |
| FEATURE-MISSING | — | — | [block] | blk-mq: Check queue depth is valid |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | — | — | [block] | blk-mq: cleanup blk_mq_bio_to_request |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | — | — | [block] | blk-mq: cleanup blk_mq_init_tags |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | — | — | [block] | blk-mq: cpu hot plug_unplug fixes |  | block/blk-mq.c not in A37 tree | 3.10.0-10 |
| FEATURE-MISSING | — | — | [block] | blk-mq: Do not allocate more cache entries than used |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | — | — | [block] | blk-mq: Do not fail blk_mq_reg::queue_depth value of zero |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | — | — | [block] | blk-mq: don't allow write on attributes of .seq_ops |  | block/blk-mq.c not in A37 tree | 3.10.0-843 |
| FEATURE-MISSING | — | — | [block] | blk-mq: dont call blk_mq_free_request from blk_mq_finish_request |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | — | — | [block] | blk-mq: errors in did_work calculation |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | — | — | [block] | blk-mq: Export freeze_unfreeze functions |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | — | — | [block] | blk-mq: fix another kabi warning |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | — | — | [block] | blk-mq: fix blk_mq_start_stopped_hw_queues from irq context |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | — | — | [block] | blk-mq: fix hctx debugfs entry related race between update hw queues and cpu hotplug |  | block/blk-mq.c not in A37 tree | 3.10.0-956 |
| FEATURE-MISSING | — | — | [block] | blk-mq: fix IO accounting in case of none io scheduler |  | block/blk-mq.c not in A37 tree | 3.10.0-1036 |
| FEATURE-MISSING | — | — | [block] | blk-mq: fix kabi warning |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | — | — | [block] | blk-mq: fix memory leaks on unplugging block device |  | block/blk-mq.c not in A37 tree | 3.10.0-64 |
| FEATURE-MISSING | — | — | [block] | blk-mq: fix permissions for ipi_redirect sysfs attribute |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | — | — | [block] | blk-mq: fix RHEL kABI breakage |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | — | — | [block] | blk-mq: fix timer infinite loop after first timeout event |  | block/blk-mq.c not in A37 tree | 3.10.0-10 |
| FEATURE-MISSING | — | — | [block] | blk-mq: flush handling |  | block/blk-mq.c not in A37 tree | 3.10.0-10 |
| FEATURE-MISSING | — | — | [block] | blk-mq: hold tag set lock before reinit queues |  | block/blk-mq.c not in A37 tree | 3.10.0-1025 |
| FEATURE-MISSING | — | — | [block] | blk-mq: introduce blk_mq_aux_ops |  | block/blk-mq.c not in A37 tree | 3.10.0-809 |
| FEATURE-MISSING | — | — | [block] | blk-mq: introduce blk_mq_clear_rq_complete() |  | block/blk-mq.c not in A37 tree | 3.10.0-1098 |
| FEATURE-MISSING | — | — | [block] | blk-mq: introduce request_aux |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | — | — | [block] | blk-mq: kill blk_mq_finish_request |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | — | — | [block] | blk-mq: kill preempt disable_enable in blk_mq_work_fn() |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | — | — | [block] | blk-mq: Lower minimum queue depth from 4 to 1 |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | — | — | [block] | blk-mq: Make blk_mq_cpu_notify_lock a raw spinlock |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | — | — | [block] | blk-mq: make sure the variable of 'blk_mq_aux_ops' is per variable of 'blk_mq_ops' |  | block/blk-mq.c not in A37 tree | 3.10.0-835 |
| FEATURE-MISSING | — | — | [block] | blk-mq: mark request as REQ_TIMEOUT when .timeout() is called |  | block/blk-mq.c not in A37 tree | 3.10.0-1098 |
| FEATURE-MISSING | — | — | [block] | blk-mq: more careful bio completion |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | — | — | [block] | blk-mq: move .map_queues into aux_ops |  | block/blk-mq.c not in A37 tree | 3.10.0-809 |
| FEATURE-MISSING | — | — | [block] | blk-mq: move .reinit_request into aux_ops |  | block/blk-mq.c not in A37 tree | 3.10.0-809 |
| FEATURE-MISSING | — | — | [block] | blk-mq: move blk_mq_get_ctx_blk_mq_put_ctx to mq private header |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | — | — | [block] | blk-mq: re-initialize queue data structure after CPU hotplug |  | block/blk-mq.c not in A37 tree | 3.10.0-10 |
| FEATURE-MISSING | — | — | [block] | blk-mq: refactor request insertion_merging |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | — | — | [block] | blk-mq: remove 'sync' argument from __blk_mq_complete_request() |  | block/blk-mq.c not in A37 tree | 3.10.0-1098 |
| FEATURE-MISSING | — | — | [block] | blk-mq: remove barrier in bt_clear_tag() |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | — | — | [block] | blk-mq: remove debug BUG_ON() when draining software queues |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | — | — | [block] | blk-mq: Sanity check reserved tags |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | — | — | [block] | blk-mq: select random tag betweet 0 and (depth - 1) |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | — | — | [block] | blk-mq: set mq-deadline as default scheduler for single queue device |  | block/blk-mq.c not in A37 tree | 3.10.0-838 |
| FEATURE-MISSING | — | — | [block] | blk-mq: switch to percpu-ida for tag management |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | — | — | [block] | blk-mq: timeout fixes |  | block/blk-mq.c not in A37 tree | 3.10.0-10 |
| FEATURE-MISSING | — | — | [block] | blk-mq: use a separate plug list for blk-mq requests |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | — | — | [block] | blk-mq: use clear_bit_unlock in bt_clear_tag() |  | block/blk-mq.c not in A37 tree | 3.10.0-136 |
| FEATURE-MISSING | — | — | [block] | blk-mq: use get_cpu/put_cpu instead of preempt_disable_preempt_enable |  | block/blk-mq.c not in A37 tree | 3.10.0-253 |
| FEATURE-MISSING | — | — | [block] | blk-mq: use hotcpu_notifier() |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | — | — | [block] | blk-mq: use RH_KABI_EXTEND for sched_data and sched_tags |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | — | — | [block] | blk-mq: use rq_aux()->internal_tag |  | block/blk-mq.c not in A37 tree | 3.10.0-761 |
| FEATURE-MISSING | — | — | [block] | blk-mq: zero out ctx_map during initialization |  | block/blk-mq.c not in A37 tree | 3.10.0-53 |
| FEATURE-MISSING | — | — | [md] | dm-era: check for a non-NULL metadata object before closing it |  | CONFIG_DM_ERA does not exist in A37 tree | 3.10.0-139 |
| FEATURE-MISSING | — | — | [md] | dm-era: fixes for issues identified upstream |  | CONFIG_DM_ERA does not exist in A37 tree | 3.10.0-117 |
| FEATURE-MISSING | — | — | [md] | dm-era: mark as tech preview for RHEL7.0 |  | CONFIG_DM_ERA does not exist in A37 tree | 3.10.0-109 |
| FEATURE-MISSING | — | — | [md] | dm-era: support non power-of-2 blocksize |  | CONFIG_DM_ERA does not exist in A37 tree | 3.10.0-109 |
| FEATURE-MISSING | — | — | [md] | dm-switch: add switch target |  | CONFIG_DM_SWITCH does not exist in A37 tree | 3.10.0-10 |
| FEATURE-MISSING | — | — | [md] | dm-switch: efficiently support repetitive patterns |  | CONFIG_DM_SWITCH does not exist in A37 tree | 3.10.0-238 |
| FEATURE-MISSING | — | — | [md] | dm-switch: factor out switch_region_table_read |  | CONFIG_DM_SWITCH does not exist in A37 tree | 3.10.0-238 |
| FEATURE-MISSING | — | — | [md] | dm-switch: fix Documentation to use plain text |  | CONFIG_DM_SWITCH does not exist in A37 tree | 3.10.0-265 |
| FEATURE-MISSING | — | — | [block] | null_blk: Fix completion processing from LIFO to FIFO |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| FEATURE-MISSING | — | — | [block] | null_blk: fix differences between RHEL7 and upstream |  | block/blk-mq.c not in A37 tree | 3.10.0-100 |
| REVIEW | 3.11 | [`c4a395514516`](https://git.kernel.org/torvalds/c/c4a395514516) (loose) | [md] | Remember the last sync operation that was performed |  | tag [md], no specific rule | 3.10.0-10 |
| REVIEW | 3.11 | [`b29bebd66dbd`](https://git.kernel.org/torvalds/c/b29bebd66dbd) (loose) | [md] | replace strict_strto*() with kstrto*() |  | tag [md], no specific rule | 3.10.0-10 |
| REVIEW | 3.11 | [`90f5f7ad4f38`](https://git.kernel.org/torvalds/c/90f5f7ad4f38) (loose) | [md] | Wait for md_check_recovery before attempting device removal |  | tag [md], no specific rule | 3.10.0-10 |
| REVIEW | 3.12 | [`260fa034ef7a`](https://git.kernel.org/torvalds/c/260fa034ef7a) (loose) | [md] | avoid deadlock when dirty buffers during md_stop |  | tag [md], no specific rule | 3.10.0-85 |
| REVIEW | 3.12 | [`60559da4d8c3`](https://git.kernel.org/torvalds/c/60559da4d8c3) (loose) | [md] | don't call md_allow_write in get_bitmap_file |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | 3.12 | [`7a0a5355cbc7`](https://git.kernel.org/torvalds/c/7a0a5355cbc7) (loose) | [md] | Don't test all of mddev->flags at once |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | 3.12 | [`c9ad020fec89`](https://git.kernel.org/torvalds/c/c9ad020fec89) (loose) | [md] | Fix apparent cut-and-paste error in super_90_validate |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | 3.12 | [`275c51c4e34e`](https://git.kernel.org/torvalds/c/275c51c4e34e) (loose) | [md] | fix safe_mode buglet |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | 3.13 | [`82592c38a858`](https://git.kernel.org/torvalds/c/82592c38a858) (loose) | [md] | Convert use of typedef ctl_table to struct ctl_table |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | 3.13 | [`29f097c4d968`](https://git.kernel.org/torvalds/c/29f097c4d968) (loose) | [md] | fix some places where mddev_lock return value is not checked |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | 3.13 | [`142d44c31081`](https://git.kernel.org/torvalds/c/142d44c31081) (loose) | [md] | test mddev->flags more safely in md_check_recovery |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | 3.13 | [`c91abf5a3546`](https://git.kernel.org/torvalds/c/c91abf5a3546) (loose) | [md] | use MD_RECOVERY_INTR instead of kthread_should_stop in resync thread |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | 3.14 | [`7eb418851f32`](https://git.kernel.org/torvalds/c/7eb418851f32) (loose) | [md] | allow a partially recovered device to be hot-added to an array |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | 3.14 | [`bc1e79acc13d`](https://git.kernel.org/torvalds/c/bc1e79acc13d) | [md] | block: fixup for generic bio chaining |  | tag [md], no specific rule | 3.10.0-281 |
| REVIEW | 3.14 | [`196d38bccfcf`](https://git.kernel.org/torvalds/c/196d38bccfcf) | [md] | block: Generic bio chaining |  | tag [md], no specific rule | 3.10.0-281 |
| REVIEW | 3.14 | [`cb335f88eb35`](https://git.kernel.org/torvalds/c/cb335f88eb35) (loose) | [md] | check command validity early in md_ioctl() |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | 3.14 | [`830778a180f2`](https://git.kernel.org/torvalds/c/830778a180f2) (loose) | [md] | ensure metadata is writen after raid level change |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | 3.15 | [`e2f23b606b94`](https://git.kernel.org/torvalds/c/e2f23b606b94) (loose) | [md] | avoid oops on unload if some process is in poll or select |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | 3.16 | [`9bd359203210`](https://git.kernel.org/torvalds/c/9bd359203210) (loose) | [md] | make sure GET_ARRAY_INFO ioctl reports correct "clean" status |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | 3.16 | [`8b32bf5e3732`](https://git.kernel.org/torvalds/c/8b32bf5e3732) (loose) | [md] | md_clear_badblocks should return an error code on failure |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | 3.16 | [`bd8839e03b8e`](https://git.kernel.org/torvalds/c/bd8839e03b8e) (loose) | [md] | refuse to change shape of array if it is active but read-only |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | 3.17 | [`16f408dc6b1c`](https://git.kernel.org/torvalds/c/16f408dc6b1c) | [md] | block: Fix BUG_ON when pi errors occur |  | tag [md], no specific rule | 3.10.0-281 |
| REVIEW | 3.17 | [`af5628f05db6`](https://git.kernel.org/torvalds/c/af5628f05db6) (loose) | [md] | disable probing for md devices 512 and over |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | 3.17 | [`d66b1b395a59`](https://git.kernel.org/torvalds/c/d66b1b395a59) (loose) | [md] | don't allow bitmap file to be added to raid0/linear |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | 3.17 | [`ac7e50a3835d`](https://git.kernel.org/torvalds/c/ac7e50a3835d) (loose) | [md] | Recovery speed is wrong |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | 3.18 | [`45eaf45dfa48`](https://git.kernel.org/torvalds/c/45eaf45dfa48) (loose) | [md] | Always set RECOVERY_NEEDED when clearing RECOVERY_FROZEN |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 3.18 | [`50bd37740581`](https://git.kernel.org/torvalds/c/50bd37740581) (loose) | [md] | avoid potential long delay under pers_lock |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 3.18 | [`9ba3b7f5d025`](https://git.kernel.org/torvalds/c/9ba3b7f5d025) (loose) | [md] | be more relaxed about stopping an array which isn't started |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 3.18 | [`3adc28d85f18`](https://git.kernel.org/torvalds/c/3adc28d85f18) (loose) | [md] | clean up 'exit' labels in md_ioctl() |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 3.18 | [`4878e9eb88c3`](https://git.kernel.org/torvalds/c/4878e9eb88c3) (loose) | [md] | discard find_rdev_nr in favour of find_rdev_nr_rcu |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 3.18 | [`2cbbca5e7c38`](https://git.kernel.org/torvalds/c/2cbbca5e7c38) (loose) | [md] | discard PRINT_RAID_DEBUG ioctl |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 3.18 | [`e1960f8c5cd1`](https://git.kernel.org/torvalds/c/e1960f8c5cd1) (loose) | [md] | don't allow "-sync" to be set for device in an active array |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 3.18 | [`ac05f256691f`](https://git.kernel.org/torvalds/c/ac05f256691f) (loose) | [md] | don't start resync thread directly from md thread |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 3.18 | [`8b1afc3d6751`](https://git.kernel.org/torvalds/c/8b1afc3d6751) (loose) | [md] | Just use RCU when checking for overlap between arrays |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 3.18 | [`6c144d316478`](https://git.kernel.org/torvalds/c/6c144d316478) (loose) | [md] | move EXPORT_SYMBOL to after function in md.c |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 3.18 | [`403df4788837`](https://git.kernel.org/torvalds/c/403df4788837) (loose) | [md] | remove MD_BUG() |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 3.18 | [`326eb17d73a6`](https://git.kernel.org/torvalds/c/326eb17d73a6) (loose) | [md] | remove unnecessary test for MD_MAJOR in md_ioctl() |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 3.18 | [`f72ffdd68616`](https://git.kernel.org/torvalds/c/f72ffdd68616) (loose) | [md] | remove unwanted white space from md.c |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 3.18 | [`0638bb0e732f`](https://git.kernel.org/torvalds/c/0638bb0e732f) (loose) | [md] | simplify export_array() |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 3.18 | [`3fd83717e476`](https://git.kernel.org/torvalds/c/3fd83717e476) (loose) | [md] | use set_bit/clear_bit instead of shift/mask for bi_flags changes |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 3.18 | [`1967cd5616c4`](https://git.kernel.org/torvalds/c/1967cd5616c4) (loose) | [md] | use wait_event() to simplify md_super_wait() |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 3.19 | [`f851b60db0fd`](https://git.kernel.org/torvalds/c/f851b60db0fd) (loose) | [md] | Check MD_RECOVERY_RUNNING as well as ->sync_thread |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 3.19 | [`7d7e64f2ecd4`](https://git.kernel.org/torvalds/c/7d7e64f2ecd4) (loose) | [md] | fix semicolon.cocci warnings |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.0 | [`7fb4898e0cd6`](https://git.kernel.org/torvalds/c/7fb4898e0cd6) | [md] | block: add blk-mq support to blk_insert_cloned_request() |  | tag [md], no specific rule | 3.10.0-238 |
| REVIEW | 4.0 | [`77a086890173`](https://git.kernel.org/torvalds/c/77a086890173) | [md] | block: keep established cmd_flags when cloning into a blk-mq request |  | tag [md], no specific rule | 3.10.0-238 |
| REVIEW | 4.0 | [`ad9cf3bbd18a`](https://git.kernel.org/torvalds/c/ad9cf3bbd18a) | [md] | block: mark blk-mq devices as stackable |  | tag [md], no specific rule | 3.10.0-238 |
| REVIEW | 4.0 | [`febf71588c2a`](https://git.kernel.org/torvalds/c/febf71588c2a) | [md] | block: require blk_rq_prep_clone() be given an initialized clone request |  | tag [md], no specific rule | 3.10.0-238 |
| REVIEW | 4.0 | [`ad3ab8b608c4`](https://git.kernel.org/torvalds/c/ad3ab8b608c4) (loose) | [md] | do_release_stripe(): No need to call md_wakeup_thread() twice |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.0 | [`0c35bd4723e4`](https://git.kernel.org/torvalds/c/0c35bd4723e4) (loose) | [md] | fix problems with freeing private data after ->run failure |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.0 | [`db721d32b74b`](https://git.kernel.org/torvalds/c/db721d32b74b) (loose) | [md] | level_store: group all important changes into one place |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.0 | [`8155330aad47`](https://git.kernel.org/torvalds/c/8155330aad47) | [md] | lib: memzero_explicit: add comment for its usage |  | tag [md], no specific rule | 3.10.0-238 |
| REVIEW | 4.0 | [`5c675f83c68f`](https://git.kernel.org/torvalds/c/5c675f83c68f) (loose) | [md] | make ->congested robust against personality changes |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.0 | [`64590f45ddc7`](https://git.kernel.org/torvalds/c/64590f45ddc7) (loose) | [md] | make merge_bvec_fn more robust in face of personality changes |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.0 | [`6791875e2e53`](https://git.kernel.org/torvalds/c/6791875e2e53) (loose) | [md] | make reconfig_mutex optional for writes to md sysfs files |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.0 | [`1b30e66f5acc`](https://git.kernel.org/torvalds/c/1b30e66f5acc) (loose) | [md] | minor cleanup in safe_delay_store |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.0 | [`4af1a04176bd`](https://git.kernel.org/torvalds/c/4af1a04176bd) (loose) | [md] | move GET_BITMAP_FILE ioctl out from mddev_lock |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.0 | [`5c47daf6e76f`](https://git.kernel.org/torvalds/c/5c47daf6e76f) (loose) | [md] | move mddev_lock and related to md.h |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.0 | [`36d091f4759d`](https://git.kernel.org/torvalds/c/36d091f4759d) (loose) | [md] | protect ->pers changes with mddev->lock |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.0 | [`758bfc8abfbc`](https://git.kernel.org/torvalds/c/758bfc8abfbc) (loose) | [md] | remove mddev_lock from rdev_attr_show() |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.0 | [`b7b17c9b67e5`](https://git.kernel.org/torvalds/c/b7b17c9b67e5) (loose) | [md] | remove mddev_lock() from md_attr_show() |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.0 | [`f97fcad38f2e`](https://git.kernel.org/torvalds/c/f97fcad38f2e) (loose) | [md] | remove need for mddev_lock() in md_seq_show() |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.0 | [`f4ad3d38d49d`](https://git.kernel.org/torvalds/c/f4ad3d38d49d) (loose) | [md] | remove unnecessary 'buf' from get_bitmap_file |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.0 | [`afa0f557cb15`](https://git.kernel.org/torvalds/c/afa0f557cb15) (loose) | [md] | rename ->stop to ->free |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.0 | [`85572d7c75fd`](https://git.kernel.org/torvalds/c/85572d7c75fd) (loose) | [md] | rename mddev->write_lock to mddev->lock |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.0 | [`5aa61f427e49`](https://git.kernel.org/torvalds/c/5aa61f427e49) (loose) | [md] | split detach operation out from ->stop |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.0 | [`1e594bb24d3d`](https://git.kernel.org/torvalds/c/1e594bb24d3d) (loose) | [md] | tidy up set_bitmap_file |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.0 | [`dfe15ac1c6ad`](https://git.kernel.org/torvalds/c/dfe15ac1c6ad) (loose) | [md] | wakeup thread upon rdev_dec_pending() |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.1 | [`ac8fa4196d20`](https://git.kernel.org/torvalds/c/ac8fa4196d20) (loose) | [md] | allow resync to go faster when there is competing IO |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.1 | [`8e8e2518fcec`](https://git.kernel.org/torvalds/c/8e8e2518fcec) (loose) | [md] | Close race when setting 'action' to 'idle' |  | tag [md], no specific rule | 3.10.0-284 |
| REVIEW | 4.1 | [`50c37b136a38`](https://git.kernel.org/torvalds/c/50c37b136a38) (loose) | [md] | don't require sync_min to be a multiple of chunk_size |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.1 | [`c008f1d35627`](https://git.kernel.org/torvalds/c/c008f1d35627) (loose) | [md] | don't return 0 from array_state_store |  | tag [md], no specific rule | 3.10.0-284 |
| REVIEW | 4.1 | [`57d051dccaef`](https://git.kernel.org/torvalds/c/57d051dccaef) (loose) | [md] | Export and rename find_rdev_nr_rcu |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.1 | [`fb56dfef4e31`](https://git.kernel.org/torvalds/c/fb56dfef4e31) (loose) | [md] | Export and rename kick_rdev_from_array |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.1 | [`56ccc1125bc1`](https://git.kernel.org/torvalds/c/56ccc1125bc1) (loose) | [md] | fix race when unfreezing sync_action |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.1 | [`ea358cd0d2c6`](https://git.kernel.org/torvalds/c/ea358cd0d2c6) (loose) | [md] | make sure MD_RECOVERY_DONE is clear before starting recovery/resync |  | tag [md], no specific rule | 3.10.0-284 |
| REVIEW | 4.1 | [`a6da4ef85cef`](https://git.kernel.org/torvalds/c/a6da4ef85cef) (loose) | [md] | re-add a failed disk |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.1 | [`09314799e4f0`](https://git.kernel.org/torvalds/c/09314799e4f0) (loose) | [md] | remove 'go_faster' option from ->sync_request() |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | 4.2 | [`326e1dbb5736`](https://git.kernel.org/torvalds/c/326e1dbb5736) | [md] | block: remove management of bi_remaining when restoring original bi_end_io |  | tag [md], no specific rule | 3.10.0-281 |
| REVIEW | 4.2 | [`97ca223c3b37`](https://git.kernel.org/torvalds/c/97ca223c3b37) | [md] | block: remove unused BIO_RW_BLOCK and BIO_EOF flags |  | tag [md], no specific rule | 3.10.0-281 |
| REVIEW | 4.2 | [`ab16bfc732c4`](https://git.kernel.org/torvalds/c/ab16bfc732c4) (loose) | [md] | clear Blocked flag on failed devices when array is read-only |  | tag [md], no specific rule | 3.10.0-303 |
| REVIEW | 4.2 | [`bd6919228d7e`](https://git.kernel.org/torvalds/c/bd6919228d7e) (loose) | [md] | clear mddev->private when it has been freed |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.2 | [`4c9309c0cce9`](https://git.kernel.org/torvalds/c/4c9309c0cce9) (loose) | [md] | convert to kstrto*() |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.2 | [`621739b00e16`](https://git.kernel.org/torvalds/c/621739b00e16) | [md] | revert "dm: only run the queue on completion if congested or no requests pending" |  | tag [md], no specific rule | 3.10.0-295 |
| REVIEW | 4.2 | [`9a8c0fa861e4`](https://git.kernel.org/torvalds/c/9a8c0fa861e4) (loose) | [md] | unlock mddev_lock on an error path |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.3 | [`c5e19d906a65`](https://git.kernel.org/torvalds/c/c5e19d906a65) (loose) | [md] | be careful when testing resync_max against curr_resync_completed |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.3 | [`d4929add83ad`](https://git.kernel.org/torvalds/c/d4929add83ad) (loose) | [md] | clear CHANGE_PENDING in readonly array |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.3 | [`985ca973b68c`](https://git.kernel.org/torvalds/c/985ca973b68c) (loose) | [md] | close some races between setting and checking sync_action |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.3 | [`644df1a85fc4`](https://git.kernel.org/torvalds/c/644df1a85fc4) (loose) | [md] | drop null test before destroy functions |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.3 | [`f7851be736d5`](https://git.kernel.org/torvalds/c/f7851be736d5) (loose) | [md] | Keep /proc/mdstat reporting recovery until fully DONE |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.3 | [`d01552a76d71`](https://git.kernel.org/torvalds/c/d01552a76d71) | [md] | revert "md: allow a partially recovered device to be hot-added to an array." |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.3 | [`a4a3d26d8757`](https://git.kernel.org/torvalds/c/a4a3d26d8757) (loose) | [md] | set MD_RECOVERY_RECOVER when starting a degraded array |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.3 | [`25b2edfa3b69`](https://git.kernel.org/torvalds/c/25b2edfa3b69) (loose) | [md] | setup safemode_timer before it's being used |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.3 | [`25eafe1a8136`](https://git.kernel.org/torvalds/c/25eafe1a8136) (loose) | [md] | simplify get_bitmap_file now that "file" is zeroed |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.3 | [`5ed1df2eacc0`](https://git.kernel.org/torvalds/c/5ed1df2eacc0) (loose) | [md] | sync sync_completed has correct value as recovery finishes |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.3 | [`88724bfa68be`](https://git.kernel.org/torvalds/c/88724bfa68be) (loose) | [md] | wait for pending superblock updates before switching to read-only |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.4 | [`bac624f3f86a`](https://git.kernel.org/torvalds/c/bac624f3f86a) (loose) | [md] | add a new disk role to present write journal device |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.4 | [`a97b7896447a`](https://git.kernel.org/torvalds/c/a97b7896447a) (loose) | [md] | add new bit to indicate raid array with journal |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.4 | [`9b15603dbd98`](https://git.kernel.org/torvalds/c/9b15603dbd98) (loose) | [md] | change journal disk role to disk 0 |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.4 | [`0dc10e50f219`](https://git.kernel.org/torvalds/c/0dc10e50f219) (loose) | [md] | fix bug due to nested suspend |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.4 | [`9efdca16e018`](https://git.kernel.org/torvalds/c/9efdca16e018) (loose) | [md] | fix info output for journal disk |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.4 | [`cb01c5496d2d`](https://git.kernel.org/torvalds/c/cb01c5496d2d) | [md] | Fix remove_and_add_spares removes drive added as spare in slot_store |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.4 | [`a3dfbdaadba2`](https://git.kernel.org/torvalds/c/a3dfbdaadba2) (loose) | [md] | kick out journal disk if it's not fresh |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.4 | [`3069aa8def32`](https://git.kernel.org/torvalds/c/3069aa8def32) (loose) | [md] | override md superblock recovery_offset for journal device |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.4 | [`312045eef985`](https://git.kernel.org/torvalds/c/312045eef985) (loose) | [md] | remove check for MD_RECOVERY_NEEDED in action_store |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.4 | [`2910ff17d154`](https://git.kernel.org/torvalds/c/2910ff17d154) (loose) | [md] | remove_and_add_spares() to activate specific rdev |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.4 | [`c4d4c91b44d8`](https://git.kernel.org/torvalds/c/c4d4c91b44d8) (loose) | [md] | replace special disk roles with macros |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.4 | [`f2076e7d0643`](https://git.kernel.org/torvalds/c/f2076e7d0643) (loose) | [md] | set journal disk ->raid_disk |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.4 | [`ac6096e9d5cb`](https://git.kernel.org/torvalds/c/ac6096e9d5cb) (loose) | [md] | show journal for journal disk in disk state sysfs |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.4 | [`0b020e85bdd5`](https://git.kernel.org/torvalds/c/0b020e85bdd5) | [md] | skip match_mddev_units check for special roles |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.4 | [`bd18f6462f3d`](https://git.kernel.org/torvalds/c/bd18f6462f3d) (loose) | [md] | skip resync for raid array with journal |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.4 | [`c7bfced9a671`](https://git.kernel.org/torvalds/c/c7bfced9a671) (loose) | [md] | suspend i/o during runtime blk_integrity_unregister |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.4 | [`339421def582`](https://git.kernel.org/torvalds/c/339421def582) (loose) | [md] | when RAID journal is missing/faulty, block RESTART_ARRAY_RW |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.5 | [`87d4d91616e4`](https://git.kernel.org/torvalds/c/87d4d91616e4) (loose) | [md] | add journal with array suspended |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.5 | [`3312c951efab`](https://git.kernel.org/torvalds/c/3312c951efab) (loose) | [md] | avoid warning for 32-bit sector_t |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.5 | [`fc974ee2bffd`](https://git.kernel.org/torvalds/c/fc974ee2bffd) (loose) | [md] | convert to use the generic badblocks code |  | tag [md], no specific rule | 3.10.0-486 |
| REVIEW | 4.5 | [`274d8cbde1bc`](https://git.kernel.org/torvalds/c/274d8cbde1bc) (loose) | [md] | Remove 'ready' field from mddev |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.5 | [`bb9ef7164660`](https://git.kernel.org/torvalds/c/bb9ef7164660) (loose) | [md] | remove unnecesary md_new_event_inintr |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.5 | [`849674e4fb17`](https://git.kernel.org/torvalds/c/849674e4fb17) (loose) | [md] | rename some functions |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.5 | [`a62ab49eb502`](https://git.kernel.org/torvalds/c/a62ab49eb502) (loose) | [md] | set MD_HAS_JOURNAL in correct places |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.5 | [`abf3508d8faa`](https://git.kernel.org/torvalds/c/abf3508d8faa) (loose) | [md] | update comment for md_allow_write |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.6 | [`ed3b98c71cd9`](https://git.kernel.org/torvalds/c/ed3b98c71cd9) (loose) | [md] | add rdev reference for super write |  | tag [md], no specific rule | 3.10.0-398 |
| REVIEW | 4.6 | [`399146b80ed6`](https://git.kernel.org/torvalds/c/399146b80ed6) (loose) | [md] | Drop sending a change uevent when stopping |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.6 | [`466ad292235b`](https://git.kernel.org/torvalds/c/466ad292235b) (loose) | [md] | fix a trivial typo in comments |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.6 | [`d85326cf86d7`](https://git.kernel.org/torvalds/c/d85326cf86d7) (loose) | [md] | fix typos for stipe |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | 4.6 | [`9c573de3283a`](https://git.kernel.org/torvalds/c/9c573de3283a) (loose) | [md] | make bio mergeable |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.6 | [`70d9798b9556`](https://git.kernel.org/torvalds/c/70d9798b9556) (loose) | [md] | warn for potential deadlock |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.7 | [`0ef5a50c1658`](https://git.kernel.org/torvalds/c/0ef5a50c1658) | [md] | block: make bio_inc_remaining() interface accessible again |  | tag [md], no specific rule | 3.10.0-436 |
| REVIEW | 4.7 | [`092398dce8c2`](https://git.kernel.org/torvalds/c/092398dce8c2) (loose) | [md] | md.c: fix oops in mddev_suspend for raid0 |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.7 | [`85ad1d13ee9b`](https://git.kernel.org/torvalds/c/85ad1d13ee9b) (loose) | [md] | set MD_CHANGE_PENDING in a atomic region |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.8 | [`573275b58ee9`](https://git.kernel.org/torvalds/c/573275b58ee9) (loose) | [md] | add missing sysfs_notify on array_state update |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.8 | [`f5b67ae86ee3`](https://git.kernel.org/torvalds/c/f5b67ae86ee3) (loose) | [md] | be extra careful not to take a reference to a Faulty device |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.8 | [`8430e7e0af9a`](https://git.kernel.org/torvalds/c/8430e7e0af9a) (loose) | [md] | disconnect device from personality before trying to remove it |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.8 | [`b347af816ad2`](https://git.kernel.org/torvalds/c/b347af816ad2) (loose) | [md] | do not count journal as spare in GET_ARRAY_INFO |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.8 | [`a37376f32687`](https://git.kernel.org/torvalds/c/a37376f32687) | [md] | documentation: fix wrong value in md.txt |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.8 | [`c622ca543bff`](https://git.kernel.org/torvalds/c/c622ca543bff) (loose) | [md] | don't print the same repeated messages about delayed sync operation |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.8 | [`4cb9da7d9c63`](https://git.kernel.org/torvalds/c/4cb9da7d9c63) | [md] | Fix kernel module refcount handling |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.8 | [`5d8817833c76`](https://git.kernel.org/torvalds/c/5d8817833c76) (loose) | [md] | fix null pointer deference |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.8 | [`d9dd26b20cff`](https://git.kernel.org/torvalds/c/d9dd26b20cff) (loose) | [md] | hold mddev lock to change bitmap location |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.8 | [`11367799f3d1`](https://git.kernel.org/torvalds/c/11367799f3d1) (loose) | [md] | Prevent IO hold during accessing to faulty raid5 array |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.8 | [`d787be4092e2`](https://git.kernel.org/torvalds/c/d787be4092e2) (loose) | [md] | reduce the number of synchronize_rcu() calls when multiple devices fail |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.8 | [`412575807427`](https://git.kernel.org/torvalds/c/412575807427) | [md] | right meaning of PARITY_ENABLE_RMW and PARITY_PREFER_RMW |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.8 | [`db76767213be`](https://git.kernel.org/torvalds/c/db76767213be) (loose) | [md] | simplify the code with md_kick_rdev_from_array |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.8 | [`5b1f5bc3323e`](https://git.kernel.org/torvalds/c/5b1f5bc3323e) (loose) | [md] | use a mutex to protect a global list |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.9 | [`1217e1d1999e`](https://git.kernel.org/torvalds/c/1217e1d1999e) (loose) | [md] | be careful not lot leak internal curr_resync value into metadata. -- (all) |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.9 | [`af8d8e6f0315`](https://git.kernel.org/torvalds/c/af8d8e6f0315) (loose) | [md] | changes for MD_STILL_CLOSED flag |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.9 | [`90bcf1338193`](https://git.kernel.org/torvalds/c/90bcf1338193) (loose) | [md] | fix a potential deadlock |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.9 | [`e0a491c12968`](https://git.kernel.org/torvalds/c/e0a491c12968) | [md] | lib/raid6: Add AVX512 optimized gen_syndrome functions |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.9 | [`13c520b2993c`](https://git.kernel.org/torvalds/c/13c520b2993c) | [md] | lib/raid6: Add AVX512 optimized recovery functions |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.9 | [`16f889499a52`](https://git.kernel.org/torvalds/c/16f889499a52) (loose) | [md] | report 'write_pending' state when array in sync |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.9 | [`bb086a89a406`](https://git.kernel.org/torvalds/c/bb086a89a406) (loose) | [md] | set rotational bit |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.10 | [`35b785f7691a`](https://git.kernel.org/torvalds/c/35b785f7691a) (loose) | [md] | add bad block support for external metadata |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.10 | [`9d48739ef19a`](https://git.kernel.org/torvalds/c/9d48739ef19a) (loose) | [md] | change all printk() to pr_err() or pr_warn() etc |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.10 | [`394ed8e4743b`](https://git.kernel.org/torvalds/c/394ed8e4743b) (loose) | [md] | cleanup mddev flag clear for takeover |  | tag [md], no specific rule | 3.10.0-772 |
| REVIEW | 4.10 | [`dcbcb48650ec`](https://git.kernel.org/torvalds/c/dcbcb48650ec) (loose) | [md] | don't fail an array if there are unacknowledged bad blocks |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.10 | [`e2342ca83272`](https://git.kernel.org/torvalds/c/e2342ca83272) (loose) | [md] | fix refcount problem on mddev when stopping array |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.10 | [`7f0f0d87fa17`](https://git.kernel.org/torvalds/c/7f0f0d87fa17) (loose) | [md] | fix some issues with alloc_disk_sb() |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.10 | [`82a301cb0ea2`](https://git.kernel.org/torvalds/c/82a301cb0ea2) (loose) | [md] | MD_RECOVERY_NEEDED is set for mddev->recovery |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.10 | [`060b0689f5df`](https://git.kernel.org/torvalds/c/060b0689f5df) (loose) | [md] | perform async updates for metadata where possible |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.10 | [`6119e6792bca`](https://git.kernel.org/torvalds/c/6119e6792bca) (loose) | [md] | remove md_super_wait() call after bitmap_flush() |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.10 | [`2953079c692d`](https://git.kernel.org/torvalds/c/2953079c692d) (loose) | [md] | separate flags for superblock changes |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.10 | [`034e33f5eda3`](https://git.kernel.org/torvalds/c/034e33f5eda3) (loose) | [md] | stop write should stop journal reclaim |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.10 | [`6995f0b247e1`](https://git.kernel.org/torvalds/c/6995f0b247e1) (loose) | [md] | takeover should clear unrelated bits |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.10 | [`46533ff7fefb`](https://git.kernel.org/torvalds/c/46533ff7fefb) (loose) | [md] | Use REQ_FAILFAST_* on metadata writes where appropriate |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.10 | [`91a6c4aded58`](https://git.kernel.org/torvalds/c/91a6c4aded58) (loose) | [md] | wake up personality thread after array state update |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | 4.11 | [`5a6265f9cd98`](https://git.kernel.org/torvalds/c/5a6265f9cd98) (loose) | [md] | add doc for raid5-cache |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.11 | [`99b3d74ec05c`](https://git.kernel.org/torvalds/c/99b3d74ec05c) (loose) | [md] | delete dead code |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.11 | [`26483819f89c`](https://git.kernel.org/torvalds/c/26483819f89c) (loose) | [md] | disable WRITE SAME if it fails in underlayer disks |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.11 | [`1b3bae49fba5`](https://git.kernel.org/torvalds/c/1b3bae49fba5) (loose) | [md] | don't impose the MD_SB_DISKS limit on arrays without metadata |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.11 | [`9356863c9409`](https://git.kernel.org/torvalds/c/9356863c9409) (loose) | [md] | ensure md devices are freed before module is unloaded |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.11 | [`10273170fd56`](https://git.kernel.org/torvalds/c/10273170fd56) (loose) | [md] | fail if mddev->bio_set can't be created |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.11 | [`c94836342192`](https://git.kernel.org/torvalds/c/c94836342192) (loose) | [md] | move funcs from pers->resize to update_size |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.12 | [`78e470c26f52`](https://git.kernel.org/torvalds/c/78e470c26f52) (loose) | [md] | add raid4/5/6 journal mode switching API |  | tag [md], no specific rule | 3.10.0-772 |
| REVIEW | 4.12 | [`664aed04446c`](https://git.kernel.org/torvalds/c/664aed04446c) (loose) | [md] | add sysfs entries for PPL |  | tag [md], no specific rule | 3.10.0-654 |
| REVIEW | 4.12 | [`039b7225e6e9`](https://git.kernel.org/torvalds/c/039b7225e6e9) (loose) | [md] | allow creation of mdNNN arrays via md_mod/parameters/new_array |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.12 | [`fbbaf700e7b1`](https://git.kernel.org/torvalds/c/fbbaf700e7b1) | [md] | block: trace completion of all bios |  | tag [md], no specific rule | 3.10.0-1091 |
| REVIEW | 4.12 | [`e5bc9c3c5432`](https://git.kernel.org/torvalds/c/e5bc9c3c5432) (loose) | [md] | clear WantReplacement once disk is removed |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.12 | [`55cc39f34525`](https://git.kernel.org/torvalds/c/55cc39f34525) (loose) | [md] | close a race with setting mddev->in_sync |  | tag [md], no specific rule | 3.10.0-820 |
| REVIEW | 4.12 | [`2214c260c72b`](https://git.kernel.org/torvalds/c/2214c260c72b) (loose) | [md] | don't return -EAGAIN in md_allow_write for external metadata arrays |  | tag [md], no specific rule | 3.10.0-772 |
| REVIEW | 4.12 | [`6497709b5d1b`](https://git.kernel.org/torvalds/c/6497709b5d1b) (loose) | [md] | factor out set_in_sync() |  | tag [md], no specific rule | 3.10.0-820 |
| REVIEW | 4.12 | [`3560741e316b`](https://git.kernel.org/torvalds/c/3560741e316b) (loose) | [md] | fix several trivial typos in comments |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.12 | [`97b20ef78438`](https://git.kernel.org/torvalds/c/97b20ef78438) (loose) | [md] | handle read-only member devices better |  | tag [md], no specific rule | 3.10.0-674 |
| REVIEW | 4.12 | [`a415c0f10627`](https://git.kernel.org/torvalds/c/a415c0f10627) (loose) | [md] | initialise ->writes_pending in personality modules |  | tag [md], no specific rule | 3.10.0-820 |
| REVIEW | 4.12 | [`065e519e71b2`](https://git.kernel.org/torvalds/c/065e519e71b2) (loose) | [md] | MD_CLOSING needs to be cleared after called md_set_readonly or do_md_stop |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.12 | [`d8e29fbc3bed`](https://git.kernel.org/torvalds/c/d8e29fbc3bed) (loose) | [md] | move two macros into md.h |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.12 | [`513e2faa0138`](https://git.kernel.org/torvalds/c/513e2faa0138) (loose) | [md] | prepare for managing resync I/O pages in clean way |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.12 | [`e153903686de`](https://git.kernel.org/torvalds/c/e153903686de) (loose) | [md] | report sector of stripes with check mismatches |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.12 | [`cd15fb64ee56`](https://git.kernel.org/torvalds/c/cd15fb64ee56) | [md] | revert "dm mirror: use all available legs on multiple failures" |  | tag [md], no specific rule | 3.10.0-683 |
| REVIEW | 4.12 | [`ea0213e0c7cc`](https://git.kernel.org/torvalds/c/ea0213e0c7cc) (loose) | [md] | superblock changes for PPL |  | tag [md], no specific rule | 3.10.0-654 |
| REVIEW | 4.12 | [`78b6350dcaad`](https://git.kernel.org/torvalds/c/78b6350dcaad) (loose) | [md] | support disabling of create-on-open semantics |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.12 | [`583da48e388f`](https://git.kernel.org/torvalds/c/583da48e388f) (loose) | [md] | update slab_cache before releasing new stripes when stripes resizing |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.12 | [`4ad23a976413`](https://git.kernel.org/torvalds/c/4ad23a976413) (loose) | [md] | use per-cpu counter for writes_pending |  | tag [md], no specific rule | 3.10.0-820 |
| REVIEW | 4.12 | [`4179bc30b2fe`](https://git.kernel.org/torvalds/c/4179bc30b2fe) (loose) | [md] | uuid debug statement now in processor byte order |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.13 | [`33182d15c6bf`](https://git.kernel.org/torvalds/c/33182d15c6bf) (loose) | [md] | always clear ->safemode when md_check_recovery gets the mddev lock |  | tag [md], no specific rule | 3.10.0-843 |
| REVIEW | 4.13 | [`8df72024393c`](https://git.kernel.org/torvalds/c/8df72024393c) (loose) | [md] | change the initialization value for a spare device spot to MD_DISK_ROLE_SPARE |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.13 | [`273752c9ff03`](https://git.kernel.org/torvalds/c/273752c9ff03) | [md] | dm, dax: Make sure dm_dax_flush() is called if device supports it |  | tag [md], no specific rule | 3.10.0-928 |
| REVIEW | 4.13 | [`f9c79bc05a2a`](https://git.kernel.org/torvalds/c/f9c79bc05a2a) (loose) | [md] | don't use flush_signals in userspace processes |  | tag [md], no specific rule | 3.10.0-772 |
| REVIEW | 4.13 | [`7f053a6a7455`](https://git.kernel.org/torvalds/c/7f053a6a7455) (loose) | [md] | fix a null dereference |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.13 | [`cc27b0c78c79`](https://git.kernel.org/torvalds/c/cc27b0c78c79) (loose) | [md] | fix deadlock between mddev_suspend() and md_write_start() |  | tag [md], no specific rule | 3.10.0-820 |
| REVIEW | 4.13 | [`7184ef8bab0c`](https://git.kernel.org/torvalds/c/7184ef8bab0c) (loose) | [md] | fix sleep in atomic |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.13 | [`81fe48e9aa00`](https://git.kernel.org/torvalds/c/81fe48e9aa00) (loose) | [md] | fix test in md_write_start() |  | tag [md], no specific rule | 3.10.0-820 |
| REVIEW | 4.13 | [`ed9b66d21866`](https://git.kernel.org/torvalds/c/ed9b66d21866) (loose) | [md] | fix warnning for UP case |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.13 | [`e6fd2093a85d`](https://git.kernel.org/torvalds/c/e6fd2093a85d) (loose) | [md] | namespace private helper names |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.13 | [`afc1f55ca44e`](https://git.kernel.org/torvalds/c/afc1f55ca44e) (loose) | [md] | not clear ->safemode for external metadata array |  | tag [md], no specific rule | 3.10.0-843 |
| REVIEW | 4.13 | [`022e510fcbda`](https://git.kernel.org/torvalds/c/022e510fcbda) (loose) | [md] | remove 'idx' from 'struct resync_pages' |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.13 | [`5a85071c2cbc`](https://git.kernel.org/torvalds/c/5a85071c2cbc) (loose) | [md] | use a separate bio_set for synchronous IO. |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.14 | [`79bf31a3b2a7`](https://git.kernel.org/torvalds/c/79bf31a3b2a7) (loose) | [md] | fix a race condition for flush request handling |  | tag [md], no specific rule | 3.10.0-820 |
| REVIEW | 4.14 | [`5492c46e94b5`](https://git.kernel.org/torvalds/c/5492c46e94b5) (loose) | [md] | notify about new spare disk in the container |  | tag [md], no specific rule | 3.10.0-772 |
| REVIEW | 4.14 | [`26e13043b7ea`](https://git.kernel.org/torvalds/c/26e13043b7ea) (loose) | [md] | replace seq_release_private with seq_release |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.14 | [`ddc088238cd6`](https://git.kernel.org/torvalds/c/ddc088238cd6) (loose) | [md] | Runtime support for multiple ppls |  | tag [md], no specific rule | 3.10.0-772 |
| REVIEW | 4.14 | [`393debc23c78`](https://git.kernel.org/torvalds/c/393debc23c78) (loose) | [md] | separate request handling |  | tag [md], no specific rule | 3.10.0-820 |
| REVIEW | 4.15 | [`35bfc52187f6`](https://git.kernel.org/torvalds/c/35bfc52187f6) (loose) | [md] | allow metadata update while suspending |  | tag [md], no specific rule | 3.10.0-820 |
| REVIEW | 4.15 | [`4d5324f760aa`](https://git.kernel.org/torvalds/c/4d5324f760aa) (loose) | [md] | always hold reconfig_mutex when calling mddev_suspend() |  | tag [md], no specific rule | 3.10.0-820 |
| REVIEW | 4.15 | [`d1d90147c968`](https://git.kernel.org/torvalds/c/d1d90147c968) (loose) | [md] | always set THREAD_WAKEUP and wake up wqueue if thread existed |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.15 | [`db0505d32066`](https://git.kernel.org/torvalds/c/db0505d32066) (loose) | [md] | be cautious about using ->curr_resync_completed for ->recovery_offset |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.15 | [`52a0d49de3d5`](https://git.kernel.org/torvalds/c/52a0d49de3d5) (loose) | [md] | don't call bitmap_create() while array is quiesced |  | tag [md], no specific rule | 3.10.0-820 |
| REVIEW | 4.15 | [`b90f6ff080c5`](https://git.kernel.org/torvalds/c/b90f6ff080c5) (loose) | [md] | don't check MD_SB_CHANGE_CLEAN in md_allow_write |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.15 | [`d47c8ad261f7`](https://git.kernel.org/torvalds/c/d47c8ad261f7) (loose) | [md] | fix deadlock error in recent patch |  | tag [md], no specific rule | 3.10.0-820 |
| REVIEW | 4.15 | [`230b55fa8d64`](https://git.kernel.org/torvalds/c/230b55fa8d64) (loose) | [md] | forbid a RAID5 from having both a bitmap and a journal |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.15 | [`0868b99c214a`](https://git.kernel.org/torvalds/c/0868b99c214a) (loose) | [md] | free unused memory after bitmap resize |  | tag [md], no specific rule | 3.10.0-855 |
| REVIEW | 4.15 | [`d2e2ec8222b4`](https://git.kernel.org/torvalds/c/d2e2ec8222b4) (loose) | [md] | limit mdstat resync progress to max_sectors |  | tag [md], no specific rule | 3.10.0-835 |
| REVIEW | 4.15 | [`b3143b9a38d5`](https://git.kernel.org/torvalds/c/b3143b9a38d5) (loose) | [md] | move suspend_hi/lo handling into core md code |  | tag [md], no specific rule | 3.10.0-820 |
| REVIEW | 4.15 | [`0202ce8a90ef`](https://git.kernel.org/torvalds/c/0202ce8a90ef) (loose) | [md] | release allocated bitset sync_set |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.15 | [`fc33060ba0c7`](https://git.kernel.org/torvalds/c/fc33060ba0c7) (loose) | [md] | remove redundant variable q |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.15 | [`b03e0ccb5ab9`](https://git.kernel.org/torvalds/c/b03e0ccb5ab9) (loose) | [md] | remove special meaning of ->quiesce(.., 2) |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.15 | [`efa4b77b00b5`](https://git.kernel.org/torvalds/c/efa4b77b00b5) (loose) | [md] | use lockdep_assert_held |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.15 | [`9e1cc0a54556`](https://git.kernel.org/torvalds/c/9e1cc0a54556) (loose) | [md] | use mddev_suspend/resume instead of ->quiesce() |  | tag [md], no specific rule | 3.10.0-820 |
| REVIEW | 4.16 | [`f2785b527cda`](https://git.kernel.org/torvalds/c/f2785b527cda) (loose) | [md] | document lifetime of internal rdev pointer |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.16 | [`8876391e440b`](https://git.kernel.org/torvalds/c/8876391e440b) (loose) | [md] | fix a potential deadlock of raid5/raid10 reshape |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.16 | [`4b6c1060eaa6`](https://git.kernel.org/torvalds/c/4b6c1060eaa6) (loose) | [md] | fix md_write_start() deadlock w/o metadata devices |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.16 | [`b126194cbb79`](https://git.kernel.org/torvalds/c/b126194cbb79) (loose) | [md] | Free bioset when md_run fails |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.16 | [`d5d885fd514f`](https://git.kernel.org/torvalds/c/d5d885fd514f) (loose) | [md] | introduce new personality funciton start() |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.16 | [`39772f0a7be3`](https://git.kernel.org/torvalds/c/39772f0a7be3) (loose) | [md] | only allow remove_and_add_spares when no sync_thread running |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.17 | [`976431b02c2e`](https://git.kernel.org/torvalds/c/976431b02c2e) | [md] | dax, dm: allow device-mapper to operate without dax support |  | tag [md], no specific rule | 3.10.0-942 |
| REVIEW | 4.18 | [`5a409b4f56d5`](https://git.kernel.org/torvalds/c/5a409b4f56d5) (loose) | [md] | fix lock contention for flush bios |  | tag [md], no specific rule | 3.10.0-1006 |
| REVIEW | 4.18 | [`c42a0e267572`](https://git.kernel.org/torvalds/c/c42a0e267572) (loose) | [md] | fix NULL dereference of mddev->pers in remove_and_add_spares() |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | 4.19 | [`3ed122e68bb2`](https://git.kernel.org/torvalds/c/3ed122e68bb2) (loose) | [md] | remove a bogus comment |  | tag [md], no specific rule | 3.10.0-1006 |
| REVIEW | 4.20 | [`6aaa58c99427`](https://git.kernel.org/torvalds/c/6aaa58c99427) (loose) | [md] | fix memleak for mempool |  | tag [md], no specific rule | 3.10.0-1006 |
| REVIEW | 4.20 | [`af9b926de9c5`](https://git.kernel.org/torvalds/c/af9b926de9c5) (loose) | [md] | Memory leak when flush bio size is zero |  | tag [md], no specific rule | 3.10.0-1006 |
| REVIEW | 5.1 | [`b761dcf12177`](https://git.kernel.org/torvalds/c/b761dcf12177) | [md] | It's wrong to add len to sector_nr in raid10 reshape twice |  | tag [md], no specific rule | 3.10.0-1031 |
| REVIEW | 5.2 | [`2bc13b83e629`](https://git.kernel.org/torvalds/c/2bc13b83e629) (loose) | [md] | batch flush requests. |  | tag [md], no specific rule | 3.10.0-1048 |
| REVIEW | 5.2 | [`4f4fd7c5798b`](https://git.kernel.org/torvalds/c/4f4fd7c5798b) | [md] | Don't jump to compute_result state from check_result state |  | tag [md], no specific rule | 3.10.0-1037 |
| REVIEW | 5.2 | [`c42d32409908`](https://git.kernel.org/torvalds/c/c42d32409908) (loose) | [md] | return -ENODEV if rdev has no mddev assigned |  | tag [md], no specific rule | 3.10.0-1068 |
| REVIEW | 5.2 | [`4bc034d35377`](https://git.kernel.org/torvalds/c/4bc034d35377) | [md] | revert "md: fix lock contention for flush bios" |  | tag [md], no specific rule | 3.10.0-1048 |
| REVIEW | 5.11 | [`81ba3c24628c`](https://git.kernel.org/torvalds/c/81ba3c24628c) (loose) | [md] | improve variable names in md_flush_request() |  | tag [md], no specific rule | 3.10.0-1160.20.1 |
| REVIEW | 5.11 | [`dc5d17a3c39b`](https://git.kernel.org/torvalds/c/dc5d17a3c39b) (loose) | [md] | Set prev_flush_start and flush_bio in an atomic way |  | tag [md], no specific rule | 3.10.0-1160.20.1 |
| REVIEW | — | — | [md] | Add split counter for raid1 write request in the right place |  | tag [md], no specific rule | 3.10.0-989 |
| REVIEW | — | — | [md] | allow faster resync only on non-rotational media |  | tag [md], no specific rule | 3.10.0-945 |
| REVIEW | — | — | [md] | avoid NULL dereference to queue pointer |  | tag [md], no specific rule | 3.10.0-905 |
| REVIEW | — | — | [md] | bio: extend struct bio with RHEL-specific struct bio_aux |  | tag [md], no specific rule | 3.10.0-281 |
| REVIEW | — | — | [md] | bio: fix kABI breakage when __bi_remaining was added to struct bio |  | tag [md], no specific rule | 3.10.0-281 |
| REVIEW | — | — | [md] | bio: skip atomic inc_dec of ->bi_remaining for non-chains |  | tag [md], no specific rule | 3.10.0-281 |
| REVIEW | — | — | [md] | Call wait_barrier twice when underlaying device is blocked |  | tag [md], no specific rule | 3.10.0-838 |
| REVIEW | — | — | [md] | doc: fix typo in md.txt |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | — | — | [zram] | don't grab mutex in zram_slot_free_noity |  | tag [zram], no specific rule | 3.10.0-297 |
| REVIEW | — | — | [md] | Don't split write discard/same/erase bio in md linear/faulty/multipath |  | tag [md], no specific rule | 3.10.0-903 |
| REVIEW | — | — | [md] | failfast: add failfast flag for md to be used by some personalities |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | — | — | [md] | fix 'allow faster resync only on non-rotational media' underneath dm |  | tag [md], no specific rule | 3.10.0-951 |
| REVIEW | — | — | [zram] | fix invalid memory access |  | tag [zram], no specific rule | 3.10.0-119 |
| REVIEW | — | — | [md] | fix relationship between wait_barrier and allow_barrier |  | tag [md], no specific rule | 3.10.0-820 |
| REVIEW | — | — | [md] | fix single core deadlock |  | tag [md], no specific rule | 3.10.0-683 |
| REVIEW | — | — | [md] | fix suspend/write deadlock |  | tag [md], no specific rule | 3.10.0-683 |
| REVIEW | — | — | [zram] | kill unused zram_get_num_devices() |  | tag [zram], no specific rule | 3.10.0-119 |
| REVIEW | — | — | [md] | linear: remove rcu protections in favour of suspend/resume |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | — | — | [md] | linear: replace printk() with pr_*() |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | — | — | [md] | linear: shutup lockdep warnning |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | — | — | [md] | md0: optimize raid0 discard handling |  | tag [md], no specific rule | 3.10.0-772 |
| REVIEW | — | — | [md] | mddev->writes_pending is incorrect |  | tag [md], no specific rule | 3.10.0-820 |
| REVIEW | — | — | [md] | multipath: add rcu protection to rdev access in multipath_status |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | — | — | [md] | multipath: replace printk() with pr_*() |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | — | — | [zram] | optimize memory operations with clear_page()/copy_page() |  | tag [zram], no specific rule | 3.10.0-119 |
| REVIEW | — | — | [zram] | protect zram_reset_device() call |  | tag [zram], no specific rule | 3.10.0-119 |
| REVIEW | — | — | [md] | raid1, raid10: always abort recover on write error |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | — | — | [md] | raid1, raid10: don't recheck "Faulty" flag in read-balance |  | tag [md], no specific rule | 3.10.0-556 |
| REVIEW | — | — | [md] | raid1, raid10: move rXbio accounting closer to allocation |  | tag [md], no specific rule | 3.10.0-772 |
| REVIEW | — | — | [md] | raid1, raid10: silence warning about wait-within-wait |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | — | — | [md] | raid56: Don't perform reads to support writes until stripe is ready |  | tag [md], no specific rule | 3.10.0-270 |
| REVIEW | — | — | [md] | raid56: Don't perform reads to support writes until stripe is ready |  | tag [md], no specific rule | 3.10.0-181 |
| REVIEW | — | — | [md] | raid: only permit hot-add of compatible integrity profiles |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | — | — | [md] | raid: raid5 preserve the writeback action after the parity check |  | tag [md], no specific rule | 3.10.0-1046 |
| REVIEW | — | — | [zram] | remove zram_sysfs file |  | tag [zram], no specific rule | 3.10.0-119 |
| REVIEW | — | — | [md] | rename some md/ files to have an "md-" prefix |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | — | — | [md] | revert "dm thin: unroll issue_discard() to create longer discard bio chains" |  | tag [md], no specific rule | 3.10.0-488 |
| REVIEW | — | — | [md] | revert "dm thin: use __blkdev_issue_discard for async discard support" |  | tag [md], no specific rule | 3.10.0-488 |
| REVIEW | — | — | [md] | revert "dm-cache: do not wake_worker() in free_migration()" |  | tag [md], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [md] | revert "dm-mpath: fix stalls when handling invalid ioctls" |  | tag [md], no specific rule | 3.10.0-334 |
| REVIEW | — | — | [md] | revert "fix single core deadlock" |  | tag [md], no specific rule | 3.10.0-772 |
| REVIEW | — | — | [md] | revert "fix suspend/write deadlock" |  | tag [md], no specific rule | 3.10.0-772 |
| REVIEW | — | — | [md] | revert "raid10: make sync_request_write() call bio_copy_data()" |  | tag [md], no specific rule | 3.10.0-493 |
| REVIEW | — | — | [md] | revert md/raid5: limit request size according to implementation limits |  | tag [md], no specific rule | 3.10.0-922 |
| REVIEW | — | — | [md] | revert raid5-cache: use bio chaining |  | tag [md], no specific rule | 3.10.0-1088 |
| REVIEW | — | — | [md] | rhel-only: EXPORT_SYMBOL(md_update_sb) |  | tag [md], no specific rule | 3.10.0-429 |
| REVIEW | — | — | [zram] | simplify and optimize dev_to_zram() |  | tag [zram], no specific rule | 3.10.0-119 |
| REVIEW | — | — | [md] | Simplify ternary operations |  | tag [md], no specific rule | 3.10.0-970 |
| REVIEW | — | — | [md] | submit splitted bio via generic_make_request |  | tag [md], no specific rule | 3.10.0-903 |
| REVIEW | — | — | [md] | support to split big bio |  | tag [md], no specific rule | 3.10.0-863 |
| REVIEW | — | — | [zram] | use atomic64_xxx() to replace zram_stat64_xxx() |  | tag [zram], no specific rule | 3.10.0-119 |
| REVIEW | — | — | [md] | use mddev->lock to protect updates to resync_{min, max} |  | tag [md], no specific rule | 3.10.0-270 |
