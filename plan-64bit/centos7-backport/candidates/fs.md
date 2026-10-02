# Filesystem & VFS: backport candidates from CentOS 7

2586 entries: 2053 CANDIDATE, 532 FEATURE-MISSING, 1 REVIEW. Sorted by status, then by the first mainline release that has the commit. "loose" means the RHEL subject only matched after normalising its prefix; check it before cherry-picking. See ../README.md for the method and its limits.

| Status | First in | Upstream | Tag | Subject | CVE | Why relevant | RHEL |
|---|---|---|---|---|---|---|---|
| CANDIDATE | 3.11 | [`1e3cc57e4748`](https://git.kernel.org/torvalds/c/1e3cc57e4748) | [fs] | add new fields to smb_vol to track the requested security flavor |  | generic code, tag [fs] | 3.10.0-5 |
| CANDIDATE | 3.11 | [`cb65537ee113`](https://git.kernel.org/torvalds/c/cb65537ee113) | [fs] | Add wait_on_atomic_t() and wake_up_atomic_t() |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.11 | [`af9de7eb180f`](https://git.kernel.org/torvalds/c/af9de7eb180f) | [fs] | clear_refs: introduce private struct for mm_walk |  | generic code, tag [fs] | 3.10.0-378 |
| CANDIDATE | 3.11 | [`040fa02077de`](https://git.kernel.org/torvalds/c/040fa02077de) | [fs] | clear_refs: sanitize accepted commands declaration |  | generic code, tag [fs] | 3.10.0-378 |
| CANDIDATE | 3.11 | [`52f85729805b`](https://git.kernel.org/torvalds/c/52f85729805b) | [fs] | dnotify: replace dnotify_mark_mutex with mark mutex of dnotify_group |  | CONFIG_DNOTIFY=y in A37 | 3.10.0-593 |
| CANDIDATE | 3.11 | [`a1d8d9a757cd`](https://git.kernel.org/torvalds/c/a1d8d9a757cd) | [fs] | ext4: add check to io_submit_init_bio |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-92 |
| CANDIDATE | 3.11 | [`2ed5724d5a78`](https://git.kernel.org/torvalds/c/2ed5724d5a78) | [fs] | ext4: add cond_resched() to ext4_free_blocks() & ext4_mb_regular_allocator() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-92 |
| CANDIDATE | 3.11 | [`44fb851dfb2f`](https://git.kernel.org/torvalds/c/44fb851dfb2f) | [fs] | ext4: add WARN_ON to check the length of allocated blocks |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`fffb273997cc`](https://git.kernel.org/torvalds/c/fffb273997cc) | [fs] | ext4: better estimate credits needed for ext4_da_writepages() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`0713ed0cde76`](https://git.kernel.org/torvalds/c/0713ed0cde76) | [fs] | ext4: Call ext4_jbd2_file_inode() after zeroing block |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`b0857d309fae`](https://git.kernel.org/torvalds/c/b0857d309fae) | [fs] | ext4: defer clearing of PageWriteback after extent conversion |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`353eefd33869`](https://git.kernel.org/torvalds/c/353eefd33869) | [fs] | ext4: delete unnecessary C statements |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`03b40e349695`](https://git.kernel.org/torvalds/c/03b40e349695) | [fs] | ext4: delete unused variables |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`f2d50a65c93c`](https://git.kernel.org/torvalds/c/f2d50a65c93c) | [fs] | ext4: deprecate max_writeback_mb_bump sysfs attribute |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`981250ca8926`](https://git.kernel.org/torvalds/c/981250ca8926) | [fs] | ext4: don't use EXT4_FREE_BLOCKS_FORGET unnecessarily |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`c724585b6241`](https://git.kernel.org/torvalds/c/c724585b6241) | [fs] | ext4: don't wait for extent conversion in ext4_punch_hole() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`06a407f13daf`](https://git.kernel.org/torvalds/c/06a407f13daf) | [fs] | ext4: fix data integrity for ext4_sync_fs |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`4418e14112e3`](https://git.kernel.org/torvalds/c/4418e14112e3) | [fs] | ext4: Fix fsync error handling after filesystem abort |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-97 |
| CANDIDATE | 3.11 | [`cb530541182b`](https://git.kernel.org/torvalds/c/cb530541182b) | [fs] | ext4: fix up error handling for mpage_map_and_submit_extent() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`822dbba33458`](https://git.kernel.org/torvalds/c/822dbba33458) | [fs] | ext4: fix warning in ext4_evict_inode() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`fa55a0ed0386`](https://git.kernel.org/torvalds/c/fa55a0ed0386) | [fs] | ext4: improve writepage credit estimate for files with indirect blocks |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`d23142c6271c`](https://git.kernel.org/torvalds/c/d23142c6271c) | [fs] | ext4: make punch hole code path work with bigalloc |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`e1be3a928ee0`](https://git.kernel.org/torvalds/c/e1be3a928ee0) | [fs] | ext4: only zero partial blocks in ext4_zero_partial_blocks() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`f4afb4f4e3e9`](https://git.kernel.org/torvalds/c/f4afb4f4e3e9) | [fs] | ext4: optimize test_root() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-92 |
| CANDIDATE | 3.11 | [`aeb2817a4ea9`](https://git.kernel.org/torvalds/c/aeb2817a4ea9) | [fs] | ext4: pass inode pointer instead of file pointer to punch hole |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`e83403959fdd`](https://git.kernel.org/torvalds/c/e83403959fdd) | [fs] | ext4: protect extent conversion after DIO with i_dio_count |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`5fe2fe895a9a`](https://git.kernel.org/torvalds/c/5fe2fe895a9a) | [fs] | ext4: provide wrappers for transaction reservation calls |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`e8974c3930ae`](https://git.kernel.org/torvalds/c/e8974c3930ae) | [fs] | ext4: rate limit printk in buffer_io_error() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-386 |
| CANDIDATE | 3.11 | [`e8974c3930ae`](https://git.kernel.org/torvalds/c/e8974c3930ae) | [fs] | ext4: rate limit printk in buffer_io_error() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-97 |
| CANDIDATE | 3.11 | [`3613d22807a2`](https://git.kernel.org/torvalds/c/3613d22807a2) | [fs] | ext4: remove buffer_uninit handling |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`5dc23bdd5f84`](https://git.kernel.org/torvalds/c/5dc23bdd5f84) | [fs] | ext4: remove ext4_ioend_wait() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`92e6222dfb85`](https://git.kernel.org/torvalds/c/92e6222dfb85) | [fs] | ext4: remove i_mutex from ext4_file_sync() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`78fb9cdf035d`](https://git.kernel.org/torvalds/c/78fb9cdf035d) | [fs] | ext4: remove unused code from ext4_remove_blocks() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`c121ffd013e5`](https://git.kernel.org/torvalds/c/c121ffd013e5) | [fs] | ext4: remove unused discard_partial_page_buffers |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`a115f749c14e`](https://git.kernel.org/torvalds/c/a115f749c14e) | [fs] | ext4: remove wait for unwritten extent conversion from ext4_truncate() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`38b8ff7db4d9`](https://git.kernel.org/torvalds/c/38b8ff7db4d9) | [fs] | ext4: Remove wait for unwritten extents in ext4_ind_direct_IO() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`4e7ea81db534`](https://git.kernel.org/torvalds/c/4e7ea81db534) | [fs] | ext4: restructure writeback path |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`72dac95d4403`](https://git.kernel.org/torvalds/c/72dac95d4403) | [fs] | ext4: return FIEMAP_EXTENT_UNKNOWN for delalloc extents |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-92 |
| CANDIDATE | 3.11 | [`27d7c4ed1f7d`](https://git.kernel.org/torvalds/c/27d7c4ed1f7d) | [fs] | ext4: silence warning in ext4_writepages() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`2e8fa54e3b48`](https://git.kernel.org/torvalds/c/2e8fa54e3b48) | [fs] | ext4: split extent conversion lists to reserved & unreserved parts |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`39bba40b7a14`](https://git.kernel.org/torvalds/c/39bba40b7a14) | [fs] | ext4: stop messing with nr_to_write in ext4_da_writepages() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`566370a2e568`](https://git.kernel.org/torvalds/c/566370a2e568) | [fs] | ext4: suppress ext4 orphan messages on mount |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`55f252c9f50e`](https://git.kernel.org/torvalds/c/55f252c9f50e) | [fs] | ext4: truncate_inode_pages() in orphan cleanup path |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`61801325f790`](https://git.kernel.org/torvalds/c/61801325f790) | [fs] | ext4: update ext4_ext_remove_space trace point |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`ca99fdd26b45`](https://git.kernel.org/torvalds/c/ca99fdd26b45) | [fs] | ext4: use ->invalidatepage() length argument |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`20970ba65d5a`](https://git.kernel.org/torvalds/c/20970ba65d5a) | [fs] | ext4: use ext4_da_writepages() for all modes |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`a87dd18ce24d`](https://git.kernel.org/torvalds/c/a87dd18ce24d) | [fs] | ext4: use ext4_zero_partial_blocks in punch_hole |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`37b10dd06334`](https://git.kernel.org/torvalds/c/37b10dd06334) | [fs] | ext4: use generic_file_fsync() in ext4_file_fsync() in nojournal mode |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`6b523df4fb5a`](https://git.kernel.org/torvalds/c/6b523df4fb5a) | [fs] | ext4: use transaction reservation for extent conversion in ext4_end_io |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`b302ef2d3c73`](https://git.kernel.org/torvalds/c/b302ef2d3c73) | [fs] | ext4: verify group number in verify_group_input() before using it |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-92 |
| CANDIDATE | 3.11 | [`0c59a95d9008`](https://git.kernel.org/torvalds/c/0c59a95d9008) | [fs] | fs-cache: Don't sleep in page release if __GFP_FS is not set |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 3.11 | [`dcfae32f892f`](https://git.kernel.org/torvalds/c/dcfae32f892f) | [fs] | fs-cache: Don't use spin_is_locked() in assertions |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 3.11 | [`caaef6900bef`](https://git.kernel.org/torvalds/c/caaef6900bef) | [fs] | fs-cache: Fix object state machine to have separate work and wait states |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 3.11 | [`1362729b169b`](https://git.kernel.org/torvalds/c/1362729b169b) | [fs] | fs-cache: Simplify cookie retention for fscache_objects, fixing oops |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 3.11 | [`1bb4b7f98f36`](https://git.kernel.org/torvalds/c/1bb4b7f98f36) | [fs] | fs-cache: The retrieval remaining-pages counter needs to be atomic_t |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 3.11 | [`610be24ee434`](https://git.kernel.org/torvalds/c/610be24ee434) | [fs] | fs-cache: Uninline fscache_object_init() |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 3.11 | [`493f7bc11457`](https://git.kernel.org/torvalds/c/493f7bc11457) | [fs] | fs-cache: Wrap checks on object state |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 3.11 | [`9756b9187eeb`](https://git.kernel.org/torvalds/c/9756b9187eeb) | [fs] | fsnotify: update comments concerning locking scheme |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 3.11 | [`cb5e05d1a678`](https://git.kernel.org/torvalds/c/cb5e05d1a678) | [fs] | fuse: another open-coded file_inode() |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.11 | [`e1e5a9f84e4d`](https://git.kernel.org/torvalds/c/e1e5a9f84e4d) | [fs] | inotify: fix race when adding a new watch |  | CONFIG_INOTIFY_USER=y in A37 | 3.10.0-593 |
| CANDIDATE | 3.11 | [`259709b07da1`](https://git.kernel.org/torvalds/c/259709b07da1) | [fs] | jbd2: change jbd2_journal_invalidatepage to accept length |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`76c399045610`](https://git.kernel.org/torvalds/c/76c399045610) | [fs] | jbd2: cleanup needed free block estimates when starting a transaction |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`f5113effc2a2`](https://git.kernel.org/torvalds/c/f5113effc2a2) | [fs] | jbd2: don't create journal_head for temporary journal buffers |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`0ef54180e018`](https://git.kernel.org/torvalds/c/0ef54180e018) | [fs] | jbd2: drop checkpoint mutex when waiting in __jbd2_log_wait_for_space() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-92 |
| CANDIDATE | 3.11 | [`eee06c567844`](https://git.kernel.org/torvalds/c/eee06c567844) | [fs] | jbd2: fix block tag checksum verification brokenness |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`cfc7bc896f45`](https://git.kernel.org/torvalds/c/cfc7bc896f45) | [fs] | jbd2: fix duplicate debug label for phase 2 |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-92 |
| CANDIDATE | 3.11 | [`fe1e8db598b2`](https://git.kernel.org/torvalds/c/fe1e8db598b2) | [fs] | jbd2: fix race in t_outstanding_credits update in jbd2_journal_extend() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-92 |
| CANDIDATE | 3.11 | [`9ff864462477`](https://git.kernel.org/torvalds/c/9ff864462477) | [fs] | jbd2: optimize jbd2_journal_force_commit |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`b34090e5e22a`](https://git.kernel.org/torvalds/c/b34090e5e22a) | [fs] | jbd2: refine waiting for shadow buffers |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`3ca841c106fd`](https://git.kernel.org/torvalds/c/3ca841c106fd) | [fs] | jbd2: relocate assert after state lock in journal_commit_transaction() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-92 |
| CANDIDATE | 3.11 | [`75497d0607b5`](https://git.kernel.org/torvalds/c/75497d0607b5) | [fs] | jbd2: remove debug dependency on debug_fs and update Kconfig help text |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`e5a120aeb57f`](https://git.kernel.org/torvalds/c/e5a120aeb57f) | [fs] | jbd2: remove journal_head from descriptor buffers |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`2f387f849b6a`](https://git.kernel.org/torvalds/c/2f387f849b6a) | [fs] | jbd2: remove outdated comment |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`f29fad721052`](https://git.kernel.org/torvalds/c/f29fad721052) | [fs] | jbd2: remove unused waitqueues |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-92 |
| CANDIDATE | 3.11 | [`8f7d89f36829`](https://git.kernel.org/torvalds/c/8f7d89f36829) | [fs] | jbd2: transaction reservation support |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`169f1a2a87aa`](https://git.kernel.org/torvalds/c/169f1a2a87aa) | [fs] | jbd2: use a single printk for jbd_debug() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`5d9cf9c6254d`](https://git.kernel.org/torvalds/c/5d9cf9c6254d) | [fs] | jbd2: use kmem_cache_zalloc for allocating journal head |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.11 | [`2f992ee85aaa`](https://git.kernel.org/torvalds/c/2f992ee85aaa) | [fs] | kernel/auditfilter.c: fix leak in audit_add_rule() error path |  | generic code, tag [fs] | 3.10.0-351 |
| CANDIDATE | 3.11 | [`b7165ebbf089`](https://git.kernel.org/torvalds/c/b7165ebbf089) | [fs] | kobject: sanitize argument for format string |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.11 | [`50cd2c577668`](https://git.kernel.org/torvalds/c/50cd2c577668) | [fs] | lift file_*_write out of do_splice_direct() |  | generic code, tag [fs] | 3.10.0-481 |
| CANDIDATE | 3.11 | [`500368f7fbdd`](https://git.kernel.org/torvalds/c/500368f7fbdd) | [fs] | lift file_*_write out of do_splice_from() |  | generic code, tag [fs] | 3.10.0-481 |
| CANDIDATE | 3.11 | [`3999e4936419`](https://git.kernel.org/torvalds/c/3999e4936419) | [fs] | locks: add a new "lm_owner_key" lock operation |  | generic code, tag [fs] | 3.10.0-6 |
| CANDIDATE | 3.11 | [`4e8c765d384e`](https://git.kernel.org/torvalds/c/4e8c765d384e) | [fs] | locks: avoid taking global lock if possible when waking up blocked waiters |  | generic code, tag [fs] | 3.10.0-6 |
| CANDIDATE | 3.11 | [`1cb360125966`](https://git.kernel.org/torvalds/c/1cb360125966) | [fs] | locks: comment cleanups and clarifications |  | generic code, tag [fs] | 3.10.0-6 |
| CANDIDATE | 3.11 | [`139ca04ee572`](https://git.kernel.org/torvalds/c/139ca04ee572) | [fs] | locks: convert fl_link to a hlist_node |  | generic code, tag [fs] | 3.10.0-6 |
| CANDIDATE | 3.11 | [`f891a29f4655`](https://git.kernel.org/torvalds/c/f891a29f4655) | [fs] | locks: drop the unused filp argument to posix_unblock_lock |  | generic code, tag [fs] | 3.10.0-6 |
| CANDIDATE | 3.11 | [`889746917193`](https://git.kernel.org/torvalds/c/889746917193) | [fs] | locks: encapsulate the fl_link list handling |  | generic code, tag [fs] | 3.10.0-6 |
| CANDIDATE | 3.11 | [`7b2296afb392`](https://git.kernel.org/torvalds/c/7b2296afb392) | [fs] | locks: give the blocked_hash its own spinlock |  | generic code, tag [fs] | 3.10.0-6 |
| CANDIDATE | 3.11 | [`b9746ef80fa6`](https://git.kernel.org/torvalds/c/b9746ef80fa6) | [fs] | locks: make "added" in __posix_lock_file a bool |  | generic code, tag [fs] | 3.10.0-6 |
| CANDIDATE | 3.11 | [`d4f22d19dffe`](https://git.kernel.org/torvalds/c/d4f22d19dffe) | [fs] | locks: make generic_add_lease and generic_delete_lease static |  | generic code, tag [fs] | 3.10.0-6 |
| CANDIDATE | 3.11 | [`7012b02a2b2c`](https://git.kernel.org/torvalds/c/7012b02a2b2c) | [fs] | locks: move file_lock_list to a set of percpu hlist_heads and convert file_lock_lock to an lglock |  | generic code, tag [fs] | 3.10.0-6 |
| CANDIDATE | 3.11 | [`1c8c601a8c0d`](https://git.kernel.org/torvalds/c/1c8c601a8c0d) | [fs] | locks: protect most of the file_lock handling with i_lock |  | generic code, tag [fs] | 3.10.0-6 |
| CANDIDATE | 3.11 | [`48f74186546c`](https://git.kernel.org/torvalds/c/48f74186546c) | [fs] | locks: turn the blocked_list into a hashtable |  | generic code, tag [fs] | 3.10.0-6 |
| CANDIDATE | 3.11 | [`2142914e3eb1`](https://git.kernel.org/torvalds/c/2142914e3eb1) | [fs] | lseek_execute() doesn't need an inode passed to it |  | generic code, tag [fs] | 3.10.0-313 |
| CANDIDATE | 3.11 | [`d47992f86b30`](https://git.kernel.org/torvalds/c/d47992f86b30) | [fs] | mm: change invalidatepage prototype to accept length |  | generic code, tag [fs] | 3.10.0-199 |
| CANDIDATE | 3.11 | [`5a7203947a1d`](https://git.kernel.org/torvalds/c/5a7203947a1d) | [fs] | mm: teach truncate_inode_pages_range() to handle non page aligned ranges |  | generic code, tag [fs] | 3.10.0-199 |
| CANDIDATE | 3.11 | [`3f618223dc0b`](https://git.kernel.org/torvalds/c/3f618223dc0b) | [fs] | move sectype to the cifs_ses instead of TCP_Server_Info |  | generic code, tag [fs] | 3.10.0-5 |
| CANDIDATE | 3.11 | [`2b0a9f017548`](https://git.kernel.org/torvalds/c/2b0a9f017548) | [fs] | pagemap: introduce pagemap_entry_t without pmshift bits |  | generic code, tag [fs] | 3.10.0-378 |
| CANDIDATE | 3.11 | [`541c237c0923`](https://git.kernel.org/torvalds/c/541c237c0923) | [fs] | pagemap: prepare to reuse constant bits with page-shift |  | generic code, tag [fs] | 3.10.0-378 |
| CANDIDATE | 3.11 | [`1d8b368ab4aa`](https://git.kernel.org/torvalds/c/1d8b368ab4aa) | [fs] | pstore: Add hsize argument in write_buf call of pstore_ftrace_call |  | CONFIG_PSTORE=y in A37 | 3.10.0-5 |
| CANDIDATE | 3.11 | [`8e48b1a8ed58`](https://git.kernel.org/torvalds/c/8e48b1a8ed58) | [fs] | pstore: Return unique error if backend registration excluded by kernel param |  | CONFIG_PSTORE=y in A37 | 3.10.0-7 |
| CANDIDATE | 3.11 | [`c77cecee52e9`](https://git.kernel.org/torvalds/c/c77cecee52e9) | [fs] | Replace a bunch of file->dentry->d_inode refs with file_inode() |  | generic code, tag [fs] | 3.10.0-358 |
| CANDIDATE | 3.11 | [`13f8e9810bff`](https://git.kernel.org/torvalds/c/13f8e9810bff) | [fs] | selinux: Institute file_path_has_perm() |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-517 |
| CANDIDATE | 3.11 | [`0bc77381c1b1`](https://git.kernel.org/torvalds/c/0bc77381c1b1) | [fs] | seq_file: add seq_list_*_percpu helpers |  | generic code, tag [fs] | 3.10.0-6 |
| CANDIDATE | 3.11 | [`7747bd4bceb3`](https://git.kernel.org/torvalds/c/7747bd4bceb3) | [fs] | sync: don't block the flusher thread waiting on IO |  | generic code, tag [fs] | 3.10.0-65 |
| CANDIDATE | 3.11 | [`3493f69f4c4e`](https://git.kernel.org/torvalds/c/3493f69f4c4e) | [fs] | sysfs: add more helper macro's for (bin_)attribute(_groups) |  | CONFIG_SYSFS=y in A37 | 3.10.0-24 |
| CANDIDATE | 3.11 | [`6ab9cea16075`](https://git.kernel.org/torvalds/c/6ab9cea16075) | [fs] | sysfs: add support for binary attributes in groups |  | CONFIG_SYSFS=y in A37 | 3.10.0-24 |
| CANDIDATE | 3.11 | [`5240d58c0449`](https://git.kernel.org/torvalds/c/5240d58c0449) | [fs] | sysfs: kill sysfs_sb declaration in fs/sysfs/inode.c |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.11 | [`388a8c353d67`](https://git.kernel.org/torvalds/c/388a8c353d67) | [fs] | sysfs: prevent warning when only using binary attributes |  | CONFIG_SYSFS=y in A37 | 3.10.0-24 |
| CANDIDATE | 3.11 | [`434749108c16`](https://git.kernel.org/torvalds/c/434749108c16) | [fs] | sysfs: sysfs_link_sibling(): fix typo in comment |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.11 | [`aa01aa3ca205`](https://git.kernel.org/torvalds/c/aa01aa3ca205) | [fs] | sysfs: use file mode defines from stat.h |  | CONFIG_SYSFS=y in A37 | 3.10.0-24 |
| CANDIDATE | 3.11 | [`fc60bb8339b6`](https://git.kernel.org/torvalds/c/fc60bb8339b6) | [fs] | sysfs_notify is only possible on file attributes |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.12 | [`0c45355fc7c4`](https://git.kernel.org/torvalds/c/0c45355fc7c4) | [fs] | aio: fix build when migration is disabled |  | CONFIG_AIO=y in A37 | 3.10.0-72 |
| CANDIDATE | 3.12 | [`d6c355c7dabc`](https://git.kernel.org/torvalds/c/d6c355c7dabc) | [fs] | aio: fix race in ring buffer page lookup introduced by page migration support |  | CONFIG_AIO=y in A37 | 3.10.0-72 |
| CANDIDATE | 3.12 | [`5e9ae2e5da0b`](https://git.kernel.org/torvalds/c/5e9ae2e5da0b) | [fs] | aio: fix use-after-free in aio_migratepage |  | CONFIG_AIO=y in A37 | 3.10.0-72 |
| CANDIDATE | 3.12 | [`79bd1bcf1ab2`](https://git.kernel.org/torvalds/c/79bd1bcf1ab2) | [fs] | aio: remove unnecessary debugging from aio_free_ring() |  | CONFIG_AIO=y in A37 | 3.10.0-72 |
| CANDIDATE | 3.12 | [`03da633aa7b0`](https://git.kernel.org/torvalds/c/03da633aa7b0) | [fs] | atomic_open: take care of EEXIST in no-open case with O_CREAT\|O_EXCL in fs/namei.c |  | generic code, tag [fs] | 3.10.0-52 |
| CANDIDATE | 3.12 | [`84235de394d9`](https://git.kernel.org/torvalds/c/84235de394d9) (loose) | [fs] | buffer: move allocation failure loop into the allocator | CVE-2014-8171 | generic code, tag [fs] | 3.10.0-245 |
| CANDIDATE | 3.12 | [`3942c07ccf98`](https://git.kernel.org/torvalds/c/3942c07ccf98) (loose) | [fs] | bump inode and dentry counters to long |  | generic code, tag [fs] | 3.10.0-1027 |
| CANDIDATE | 3.12 | [`62d36c770352`](https://git.kernel.org/torvalds/c/62d36c770352) | [fs] | dcache: convert dentry_stat.nr_unused to per-cpu counters |  | generic code, tag [fs] | 3.10.0-1027 |
| CANDIDATE | 3.12 | [`1812997720ab`](https://git.kernel.org/torvalds/c/1812997720ab) | [fs] | dcache: get/release read lock in read_seqbegin_or_lock() & friend |  | generic code, tag [fs] | 3.10.0-87 |
| CANDIDATE | 3.12 | [`232d2d60aa54`](https://git.kernel.org/torvalds/c/232d2d60aa54) | [fs] | dcache: Translating dentry into pathname without taking rename_lock |  | generic code, tag [fs] | 3.10.0-87 |
| CANDIDATE | 3.12 | [`02afc27faec9`](https://git.kernel.org/torvalds/c/02afc27faec9) | [fs] | direct-io: Handle O_(D)SYNC AIO |  | generic code, tag [fs] | 3.10.0-354 |
| CANDIDATE | 3.12 | [`7b7a8665edd8`](https://git.kernel.org/torvalds/c/7b7a8665edd8) | [fs] | direct-io: Implement generic deferred AIO completions |  | generic code, tag [fs] | 3.10.0-354 |
| CANDIDATE | 3.12 | [`91cf5ab60ff8`](https://git.kernel.org/torvalds/c/91cf5ab60ff8) | [fs] | epoll: add a reschedule point in ep_free() |  | CONFIG_EPOLL=y in A37 | 3.10.0-103 |
| CANDIDATE | 3.12 | [`5d1baf3b63bf`](https://git.kernel.org/torvalds/c/5d1baf3b63bf) | [fs] | exec: introduce exec_binprm() for "depth == 0" code |  | generic code, tag [fs] | 3.10.0-919 |
| CANDIDATE | 3.12 | [`131b2f9f1214`](https://git.kernel.org/torvalds/c/131b2f9f1214) | [fs] | exec: kill "int depth" in search_binary_handler() |  | generic code, tag [fs] | 3.10.0-919 |
| CANDIDATE | 3.12 | [`92eaa565add6`](https://git.kernel.org/torvalds/c/92eaa565add6) | [fs] | exec: kill ->load_binary != NULL check in search_binary_handler() |  | generic code, tag [fs] | 3.10.0-919 |
| CANDIDATE | 3.12 | [`52f14282bb0c`](https://git.kernel.org/torvalds/c/52f14282bb0c) | [fs] | exec: move allow_write_access/fput to exec_binprm() |  | generic code, tag [fs] | 3.10.0-919 |
| CANDIDATE | 3.12 | [`9beb266f2d7e`](https://git.kernel.org/torvalds/c/9beb266f2d7e) | [fs] | exec: proc_exec_connector() should be called only once |  | generic code, tag [fs] | 3.10.0-919 |
| CANDIDATE | 3.12 | [`7869a4a6c5ca`](https://git.kernel.org/torvalds/c/7869a4a6c5ca) | [fs] | ext4: add support for extent pre-caching |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`0e20270454e4`](https://git.kernel.org/torvalds/c/0e20270454e4) | [fs] | ext4: allocate delayed allocation blocks before rename |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`ad4eec613536`](https://git.kernel.org/torvalds/c/ad4eec613536) | [fs] | ext4: allow specifying external journal by pathname mount option |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`19883bd9658d`](https://git.kernel.org/torvalds/c/19883bd9658d) | [fs] | ext4: avoid reusing recently deleted inodes in no journal mode |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`107a7bd31ac0`](https://git.kernel.org/torvalds/c/107a7bd31ac0) | [fs] | ext4: cache all of an extent tree's leaf block upon reading |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`48d9eb97dc74`](https://git.kernel.org/torvalds/c/48d9eb97dc74) | [fs] | ext4: error out if verifying the block bitmap fails |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-149 |
| CANDIDATE | 3.12 | [`5f1132b2ba8c`](https://git.kernel.org/torvalds/c/5f1132b2ba8c) | [fs] | ext4: fix ext4_writepages() in presence of truncate |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`90e775b71ac4`](https://git.kernel.org/torvalds/c/90e775b71ac4) | [fs] | ext4: fix lost truncate due to race with writeback |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`70261f568f3c`](https://git.kernel.org/torvalds/c/70261f568f3c) | [fs] | ext4: Fix misspellings using 'codespell' tool |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`9c12a831d73d`](https://git.kernel.org/torvalds/c/9c12a831d73d) | [fs] | ext4: fix performance regression in writeback of random writes |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`dbde0abed8c6`](https://git.kernel.org/torvalds/c/dbde0abed8c6) | [fs] | ext4: fix type declaration of ext4_validate_block_bitmap |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-149 |
| CANDIDATE | 3.12 | [`27b1b22882d3`](https://git.kernel.org/torvalds/c/27b1b22882d3) | [fs] | ext4: fix use of potentially uninitialized variables in debugging code |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-92 |
| CANDIDATE | 3.12 | [`d7b2a00c2e2e`](https://git.kernel.org/torvalds/c/d7b2a00c2e2e) | [fs] | ext4: isolate ext4_extents.h file |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`163a203ddb36`](https://git.kernel.org/torvalds/c/163a203ddb36) | [fs] | ext4: mark block group as corrupt on block bitmap error |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`87a39389be3e`](https://git.kernel.org/torvalds/c/87a39389be3e) | [fs] | ext4: mark block group as corrupt on inode bitmap error |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`bdfb6ff4a255`](https://git.kernel.org/torvalds/c/bdfb6ff4a255) | [fs] | ext4: mark group corrupt on group descriptor checksum |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`09930042a2e9`](https://git.kernel.org/torvalds/c/09930042a2e9) | [fs] | ext4: move test whether extent to map can be extended to one place |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`c349179b4808`](https://git.kernel.org/torvalds/c/c349179b4808) | [fs] | ext4: print the block number of invalid extent tree blocks |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`7d7ea89e756e`](https://git.kernel.org/torvalds/c/7d7ea89e756e) | [fs] | ext4: refactor code to read the extent tree block |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`5b61de757535`](https://git.kernel.org/torvalds/c/5b61de757535) | [fs] | ext4: start handle at least possible moment when renaming files |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`3be78c73179c`](https://git.kernel.org/torvalds/c/3be78c73179c) | [fs] | ext4: use unsigned int for es_status values |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`da9803bc8812`](https://git.kernel.org/torvalds/c/da9803bc8812) | [fs] | fs-cache: Add interface to check consistency of a cached object |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 3.12 | [`e2a6b95236eb`](https://git.kernel.org/torvalds/c/e2a6b95236eb) | [fs] | fuse: clean up return in fuse_dentry_revalidate() |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-44 |
| CANDIDATE | 3.12 | [`46ea1562da79`](https://git.kernel.org/torvalds/c/46ea1562da79) | [fs] | fuse: drop dentry on failed revalidate |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-44 |
| CANDIDATE | 3.12 | [`6314efee3cfe`](https://git.kernel.org/torvalds/c/6314efee3cfe) | [fs] | fuse: readdirplus: fix RCU walk |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.12 | [`5835f3390e35`](https://git.kernel.org/torvalds/c/5835f3390e35) | [fs] | fuse: use d_materialise_unique() |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-44 |
| CANDIDATE | 3.12 | [`16203a7a9422`](https://git.kernel.org/torvalds/c/16203a7a9422) | [fs] | initmpfs: make rootfs use tmpfs when CONFIG_TMPFS enabled |  | generic code, tag [fs] | 3.10.0-474 |
| CANDIDATE | 3.12 | [`4bbee76bc986`](https://git.kernel.org/torvalds/c/4bbee76bc986) | [fs] | initmpfs: move bdi setup from init_rootfs to init_ramfs |  | generic code, tag [fs] | 3.10.0-474 |
| CANDIDATE | 3.12 | [`57f150a58c40`](https://git.kernel.org/torvalds/c/57f150a58c40) | [fs] | initmpfs: move rootfs code from fs/ramfs/ to init/ |  | generic code, tag [fs] | 3.10.0-474 |
| CANDIDATE | 3.12 | [`6e19eded3684`](https://git.kernel.org/torvalds/c/6e19eded3684) | [fs] | initmpfs: use initramfs if rootfstype= or root= specified |  | generic code, tag [fs] | 3.10.0-474 |
| CANDIDATE | 3.12 | [`18a6ea1e5cc8`](https://git.kernel.org/torvalds/c/18a6ea1e5cc8) | [fs] | jbd2: Fix endian mixing problems in the checksumming code |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.12 | [`a38e40824844`](https://git.kernel.org/torvalds/c/a38e40824844) | [fs] | list: add a new LRU list type |  | generic code, tag [fs] | 3.10.0-163 |
| CANDIDATE | 3.12 | [`e9cdd6e77158`](https://git.kernel.org/torvalds/c/e9cdd6e77158) | [fs] | mm: /proc/pid/pagemap: inspect _PAGE_SOFT_DIRTY only on present pages |  | generic code, tag [fs] | 3.10.0-378 |
| CANDIDATE | 3.12 | [`b1948a641dae`](https://git.kernel.org/torvalds/c/b1948a641dae) | [fs] | nfsd4: fix setlease error return |  | generic code, tag [fs] | 3.10.0-97 |
| CANDIDATE | 3.12 | [`b3b515bbd689`](https://git.kernel.org/torvalds/c/b3b515bbd689) | [fs] | pstore: Add new argument 'compressed' in pstore write callback |  | CONFIG_PSTORE=y in A37 | 3.10.0-162 |
| CANDIDATE | 3.12 | [`9a4e1398208d`](https://git.kernel.org/torvalds/c/9a4e1398208d) | [fs] | pstore: Introduce new argument 'compressed' in the read callback |  | CONFIG_PSTORE=y in A37 | 3.10.0-162 |
| CANDIDATE | 3.12 | [`af30cb446dd5`](https://git.kernel.org/torvalds/c/af30cb446dd5) | [fs] | quota: Add a new quotactl command Q_XGETQSTATV |  | CONFIG_QUOTA=y in A37 | 3.10.0-37 |
| CANDIDATE | 3.12 | [`48f5ec21d9c6`](https://git.kernel.org/torvalds/c/48f5ec21d9c6) | [fs] | split read_seqretry_or_unlock(), convert d_walk() to resulting primitives |  | generic code, tag [fs] | 3.10.0-87 |
| CANDIDATE | 3.12 | [`6853152689d4`](https://git.kernel.org/torvalds/c/6853152689d4) | [fs] | sysfs.h: fix __BIN_ATTR_RW() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.12 | [`3e1026b3fa2f`](https://git.kernel.org/torvalds/c/3e1026b3fa2f) | [fs] | sysfs.h: remove attr_name() macro |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.12 | [`f799878000c5`](https://git.kernel.org/torvalds/c/f799878000c5) | [fs] | sysfs: add sysfs_create/remove_groups for when SYSFS is not enabled |  | CONFIG_SYSFS=y in A37 | 3.10.0-58 |
| CANDIDATE | 3.12 | [`3e9b2bae8369`](https://git.kernel.org/torvalds/c/3e9b2bae8369) | [fs] | sysfs: add sysfs_create/remove_groups() |  | CONFIG_SYSFS=y in A37 | 3.10.0-58 |
| CANDIDATE | 3.12 | [`730d7d339884`](https://git.kernel.org/torvalds/c/730d7d339884) | [fs] | sysfs: Allow mounting without CONFIG_NET |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.12 | [`37814ee0bac6`](https://git.kernel.org/torvalds/c/37814ee0bac6) | [fs] | sysfs: dir.c: fix up odd do/while indentation |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.12 | [`07ac62a604a8`](https://git.kernel.org/torvalds/c/07ac62a604a8) | [fs] | sysfs: file.c: fix up broken string warnings |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.12 | [`1b866757fc4c`](https://git.kernel.org/torvalds/c/1b866757fc4c) | [fs] | sysfs: fix placement of EXPORT_SYMBOL() |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.12 | [`ddfd6d074e0f`](https://git.kernel.org/torvalds/c/ddfd6d074e0f) | [fs] | sysfs: fix up 80 column coding style issues |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.12 | [`5da5c9c899dc`](https://git.kernel.org/torvalds/c/5da5c9c899dc) | [fs] | sysfs: fix up minor coding style issues in sysfs.h |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.12 | [`1b18dc2beb31`](https://git.kernel.org/torvalds/c/1b18dc2beb31) | [fs] | sysfs: fix up space coding style issues |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.12 | [`060cc749e9c5`](https://git.kernel.org/torvalds/c/060cc749e9c5) | [fs] | sysfs: fix up uaccess.h coding style warnings |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.12 | [`ab9bf4be4dd5`](https://git.kernel.org/torvalds/c/ab9bf4be4dd5) | [fs] | sysfs: remove trailing whitespace |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.12 | [`7dc5dbc879bd`](https://git.kernel.org/torvalds/c/7dc5dbc879bd) | [fs] | sysfs: Restrict mounting sysfs |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.12 | [`2c3a908b4b53`](https://git.kernel.org/torvalds/c/2c3a908b4b53) | [fs] | sysfs: sysfs.h: fix coding style issues |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.12 | [`574979c617eb`](https://git.kernel.org/torvalds/c/574979c617eb) | [fs] | sysfs: sysfs_create_groups returns a value |  | CONFIG_SYSFS=y in A37 | 3.10.0-58 |
| CANDIDATE | 3.12 | [`6497d160f6ab`](https://git.kernel.org/torvalds/c/6497d160f6ab) | [fs] | sysfs: use check_submounts_and_drop() |  | CONFIG_SYSFS=y in A37 | 3.10.0-44 |
| CANDIDATE | 3.12 | [`7caef26767c1`](https://git.kernel.org/torvalds/c/7caef26767c1) | [fs] | truncate: drop 'oldsize' truncate_pagecache() parameter |  | generic code, tag [fs] | 3.10.0-199 |
| CANDIDATE | 3.12 | [`db14fc3abcd5`](https://git.kernel.org/torvalds/c/db14fc3abcd5) | [fs] | vfs: add d_walk() |  | generic code, tag [fs] | 3.10.0-44 |
| CANDIDATE | 3.12 | [`8033426e6bdb`](https://git.kernel.org/torvalds/c/8033426e6bdb) | [fs] | vfs: allow umount to handle mountpoints without revalidating them |  | generic code, tag [fs] | 3.10.0-28 |
| CANDIDATE | 3.12 | [`590fb51f1cf9`](https://git.kernel.org/torvalds/c/590fb51f1cf9) | [fs] | vfs: call d_op->d_prune() before unhashing dentry |  | generic code, tag [fs] | 3.10.0-167 |
| CANDIDATE | 3.12 | [`848ac114e847`](https://git.kernel.org/torvalds/c/848ac114e847) | [fs] | vfs: check submounts and drop atomically |  | generic code, tag [fs] | 3.10.0-44 |
| CANDIDATE | 3.12 | [`eed810076685`](https://git.kernel.org/torvalds/c/eed810076685) | [fs] | vfs: check unlinked ancestors before mount |  | generic code, tag [fs] | 3.10.0-44 |
| CANDIDATE | 3.12 | [`4ce5d2b1a8fd`](https://git.kernel.org/torvalds/c/4ce5d2b1a8fd) | [fs] | vfs: Don't copy mount bind mounts of /proc/<pid>/ns/mnt between namespaces |  | generic code, tag [fs] | 3.10.0-142 |
| CANDIDATE | 3.12 | [`ff812d724254`](https://git.kernel.org/torvalds/c/ff812d724254) | [fs] | vfs: don't copy things to user space holding the rcu readlock |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.12 | [`116cc0225381`](https://git.kernel.org/torvalds/c/116cc0225381) | [fs] | vfs: don't set FILE_CREATED before calling ->atomic_open() |  | generic code, tag [fs] | 3.10.0-52 |
| CANDIDATE | 3.12 | [`e5c832d55588`](https://git.kernel.org/torvalds/c/e5c832d55588) | [fs] | vfs: fix dentry RCU to refcounting possibly sleeping dput() |  | generic code, tag [fs] | 3.10.0-87 |
| CANDIDATE | 3.12 | [`0854d450e229`](https://git.kernel.org/torvalds/c/0854d450e229) | [fs] | vfs: improve i_op->atomic_open() documentation |  | generic code, tag [fs] | 3.10.0-52 |
| CANDIDATE | 3.12 | [`5ff9d8a65ce8`](https://git.kernel.org/torvalds/c/5ff9d8a65ce8) | [fs] | vfs: Lock in place mounts from more privileged users |  | generic code, tag [fs] | 3.10.0-371 |
| CANDIDATE | 3.12 | [`68f0d9d92e54`](https://git.kernel.org/torvalds/c/68f0d9d92e54) | [fs] | vfs: make d_path() get the root path under RCU |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.12 | [`8b19e34188a3`](https://git.kernel.org/torvalds/c/8b19e34188a3) | [fs] | vfs: make getcwd() get the root and pwd path under rcu |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.12 | [`d0d272771035`](https://git.kernel.org/torvalds/c/d0d272771035) | [fs] | vfs: make sure we don't have a stale root path if unlazy_walk() fails |  | generic code, tag [fs] | 3.10.0-87 |
| CANDIDATE | 3.12 | [`5762482f5496`](https://git.kernel.org/torvalds/c/5762482f5496) | [fs] | vfs: move get_fs_root_and_pwd() to single caller |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.12 | [`8aab6a27332b`](https://git.kernel.org/torvalds/c/8aab6a27332b) | [fs] | vfs: reorganize dput() memory accesses |  | generic code, tag [fs] | 3.10.0-87 |
| CANDIDATE | 3.12 | [`01ddc4ede5f0`](https://git.kernel.org/torvalds/c/01ddc4ede5f0) | [fs] | vfs: restructure d_genocide() |  | generic code, tag [fs] | 3.10.0-44 |
| CANDIDATE | 3.12 | [`0d98439ea3c6`](https://git.kernel.org/torvalds/c/0d98439ea3c6) | [fs] | vfs: use lockred "dead" flag to mark unrecoverably dead dentries |  | generic code, tag [fs] | 3.10.0-87 |
| CANDIDATE | 3.12 | [`a8855990e382`](https://git.kernel.org/torvalds/c/a8855990e382) | [fs] | writeback: Do not sort b_io list only because of block device inode |  | generic code, tag [fs] | 3.10.0-65 |
| CANDIDATE | 3.12 | [`47df3ddedd22`](https://git.kernel.org/torvalds/c/47df3ddedd22) | [fs] | writeback: fix occasional slow sync(1) |  | generic code, tag [fs] | 3.10.0-65 |
| CANDIDATE | 3.12 | [`146d7009b45c`](https://git.kernel.org/torvalds/c/146d7009b45c) | [fs] | writeback: fix race that cause writeback hung |  | generic code, tag [fs] | 3.10.0-65 |
| CANDIDATE | 3.13 | [`ec8e41aec130`](https://git.kernel.org/torvalds/c/ec8e41aec130) | [fs] | /proc/pid/smaps: show VM_SOFTDIRTY flag in VmFlags line |  | generic code, tag [fs] | 3.10.0-378 |
| CANDIDATE | 3.13 | [`2d1d9b5b5cc2`](https://git.kernel.org/torvalds/c/2d1d9b5b5cc2) | [fs] | adfs: delayed freeing of sbi |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`8e321fefb0e6`](https://git.kernel.org/torvalds/c/8e321fefb0e6) | [fs] | aio/migratepages: make aio migrate pages sane |  | CONFIG_AIO=y in A37 | 3.10.0-183 |
| CANDIDATE | 3.13 | [`7f62656be8a8`](https://git.kernel.org/torvalds/c/7f62656be8a8) | [fs] | aio: checking for NULL instead of IS_ERR |  | CONFIG_AIO=y in A37 | 3.10.0-75 |
| CANDIDATE | 3.13 | [`3dc9acb67600`](https://git.kernel.org/torvalds/c/3dc9acb67600) | [fs] | aio: clean up and fix aio_setup_ring page mapping |  | CONFIG_AIO=y in A37 | 3.10.0-183 |
| CANDIDATE | 3.13 | [`34f2fd8dfe61`](https://git.kernel.org/torvalds/c/34f2fd8dfe61) | [fs] | bio: fix argument of __bio_add_page() for max_sectors > 0xffff |  | generic code, tag [fs] | 3.10.0-233 |
| CANDIDATE | 3.13 | [`e84f9e57b90c`](https://git.kernel.org/torvalds/c/e84f9e57b90c) | [fs] | consolidate the reassignments of ->f_op in ->open() instances |  | generic code, tag [fs] | 3.10.0-164 |
| CANDIDATE | 3.13 | [`a5c21dcefa1c`](https://git.kernel.org/torvalds/c/a5c21dcefa1c) | [fs] | dcache: allow word-at-a-time name hashing with big-endian CPUs | CVE-2019-10638 | generic code, tag [fs] | 3.10.0-1090 |
| CANDIDATE | 3.13 | [`f80de2cde103`](https://git.kernel.org/torvalds/c/f80de2cde103) | [fs] | dcache: don't clear DCACHE_DISCONNECTED too early |  | generic code, tag [fs] | 3.10.0-974 |
| CANDIDATE | 3.13 | [`e1a24bb0aa6a`](https://git.kernel.org/torvalds/c/e1a24bb0aa6a) | [fs] | dcache: Don't set DISCONNECTED on "pseudo filesystem" dentries |  | generic code, tag [fs] | 3.10.0-974 |
| CANDIDATE | 3.13 | [`7632e465feb1`](https://git.kernel.org/torvalds/c/7632e465feb1) | [fs] | dcache: use IS_ROOT to decide where dentry is hashed |  | generic code, tag [fs] | 3.10.0-974 |
| CANDIDATE | 3.13 | [`6339dab869e0`](https://git.kernel.org/torvalds/c/6339dab869e0) | [fs] | do_remount(): pull touch_mnt_namespace() up |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`aab407fc5c0c`](https://git.kernel.org/torvalds/c/aab407fc5c0c) | [fs] | don't bother with vfsmount_lock in mounts_poll() |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`aa7a574d0c54`](https://git.kernel.org/torvalds/c/aa7a574d0c54) | [fs] | dup_mnt_ns(): get rid of pointless grabbing of vfsmount_lock |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`67347fe4e632`](https://git.kernel.org/torvalds/c/67347fe4e632) | [fs] | epoll: do not take global 'epmutex' for simple topologies |  | CONFIG_EPOLL=y in A37 | 3.10.0-103 |
| CANDIDATE | 3.13 | [`4ff36ee94d93`](https://git.kernel.org/torvalds/c/4ff36ee94d93) | [fs] | epoll: do not take the nested ep->mtx on EPOLL_CTL_DEL |  | CONFIG_EPOLL=y in A37 | 3.10.0-103 |
| CANDIDATE | 3.13 | [`ae10b2b4eb01`](https://git.kernel.org/torvalds/c/ae10b2b4eb01) | [fs] | epoll: optimize EPOLL_CTL_DEL using rcu |  | CONFIG_EPOLL=y in A37 | 3.10.0-103 |
| CANDIDATE | 3.13 | [`3f61c0cc706d`](https://git.kernel.org/torvalds/c/3f61c0cc706d) | [fs] | ext4: add prototypes for macro-generated functions |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.13 | [`48ffdab1c1eb`](https://git.kernel.org/torvalds/c/48ffdab1c1eb) | [fs] | ext4: change ext4_read_inline_dir() to return 0 on success |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.13 | [`2746f7a17062`](https://git.kernel.org/torvalds/c/2746f7a17062) | [fs] | ext4: don't count free clusters from a corrupt block group |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.13 | [`5ba052fe3380`](https://git.kernel.org/torvalds/c/5ba052fe3380) | [fs] | ext4: drop set but otherwise unused variable from ext4_add_dirent_to_inline() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.13 | [`9105bb149bbb`](https://git.kernel.org/torvalds/c/9105bb149bbb) | [fs] | ext4: fix del_timer() misuse for ->s_err_report |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.13 | [`aeac589a74b9`](https://git.kernel.org/torvalds/c/aeac589a74b9) | [fs] | ext4: fix performance regression in ext4_writepages |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.13 | [`7534e854b930`](https://git.kernel.org/torvalds/c/7534e854b930) | [fs] | ext4: fixup kerndoc annotation of mpage_map_and_submit_extent() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.13 | [`bbf023c74dcf`](https://git.kernel.org/torvalds/c/bbf023c74dcf) | [fs] | ext4: pair trace_ext4_writepages & trace_ext4_writepages_result |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.13 | [`f2754114400a`](https://git.kernel.org/torvalds/c/f2754114400a) | [fs] | ext4: remove unreachable code after ext4_can_extents_be_merged() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.13 | [`da0169b3b9a4`](https://git.kernel.org/torvalds/c/da0169b3b9a4) | [fs] | ext4: remove unreachable code in ext4_can_extents_be_merged() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.13 | [`9206c561554c`](https://git.kernel.org/torvalds/c/9206c561554c) | [fs] | ext4: return non-zero st_blocks for inline data |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.13 | [`dd1f723bf56b`](https://git.kernel.org/torvalds/c/dd1f723bf56b) | [fs] | ext4: use prandom_u32() instead of get_random_bytes() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.13 | [`cac45b062c67`](https://git.kernel.org/torvalds/c/cac45b062c67) | [fs] | fat: rcu-delay unloading nls and freeing sbi |  | CONFIG_FAT_FS=y in A37 | 3.10.0-620 |
| CANDIDATE | 3.13 | [`22a7919299c5`](https://git.kernel.org/torvalds/c/22a7919299c5) | [fs] | finish_automount() doesn't need vfsmount_lock for removal from expiry list |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`d870b4a191a3`](https://git.kernel.org/torvalds/c/d870b4a191a3) | [fs] | fix bogus path_put() of nd->root after some unlazy_walk() failures |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`4ec6c2aeab8a`](https://git.kernel.org/torvalds/c/4ec6c2aeab8a) | [fs] | fix unpaired rcu lock in prepend_path() |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`9559f6891502`](https://git.kernel.org/torvalds/c/9559f6891502) | [fs] | fold dup_mnt_ns() into its only surviving caller |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`649a795affac`](https://git.kernel.org/torvalds/c/649a795affac) | [fs] | fold mntfree() into mntput_no_expire() |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`8fb883f3e300`](https://git.kernel.org/torvalds/c/8fb883f3e300) | [fs] | fs-cache: Add use/unuse/wake cookie wrappers |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 3.13 | [`94d30ae90a00`](https://git.kernel.org/torvalds/c/94d30ae90a00) | [fs] | fs-cache: Provide the ability to enable/disable cookies |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 3.13 | [`44bb4385ce1c`](https://git.kernel.org/torvalds/c/44bb4385ce1c) | [fs] | fs_is_visible only needs namespace_sem held shared |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.13 | [`72523425fb43`](https://git.kernel.org/torvalds/c/72523425fb43) | [fs] | fuse: don't BUG on no write file |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.13 | [`2d033eaa0073`](https://git.kernel.org/torvalds/c/2d033eaa0073) | [fs] | fuse: fix race in fuse_writepages() |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.13 | [`adcadfa8f373`](https://git.kernel.org/torvalds/c/adcadfa8f373) | [fs] | fuse: Getting file for writeback helper |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.13 | [`26d614df1da9`](https://git.kernel.org/torvalds/c/26d614df1da9) | [fs] | fuse: Implement writepages callback |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.13 | [`cca2437045dd`](https://git.kernel.org/torvalds/c/cca2437045dd) | [fs] | fuse: lock page in mkwrite |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.13 | [`385b126815d9`](https://git.kernel.org/torvalds/c/385b126815d9) | [fs] | fuse: Prepare to handle multiple pages in writeback |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.13 | [`dd3e2c55a45f`](https://git.kernel.org/torvalds/c/dd3e2c55a45f) | [fs] | fuse: rcu-delay freeing fuse_conn |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-620 |
| CANDIDATE | 3.13 | [`ff17be086477`](https://git.kernel.org/torvalds/c/ff17be086477) | [fs] | fuse: writepage: skip already in flight |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.13 | [`6eaf4782eb09`](https://git.kernel.org/torvalds/c/6eaf4782eb09) | [fs] | fuse: writepages: crop secondary requests |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.13 | [`1e112a484e58`](https://git.kernel.org/torvalds/c/1e112a484e58) | [fs] | fuse: writepages: fix aggregation |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.13 | [`8b284dc47291`](https://git.kernel.org/torvalds/c/8b284dc47291) | [fs] | fuse: writepages: handle same page rewrites |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.13 | [`ce128de6260f`](https://git.kernel.org/torvalds/c/ce128de6260f) | [fs] | fuse: writepages: protect secondary requests from fuse file release |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.13 | [`f6011081f5e2`](https://git.kernel.org/torvalds/c/f6011081f5e2) | [fs] | fuse: writepages: roll back changes if request not found |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.13 | [`41b6e41fc609`](https://git.kernel.org/torvalds/c/41b6e41fc609) | [fs] | fuse: writepages: update bdi writeout when deleting secondary request |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.13 | [`30687e0a47e8`](https://git.kernel.org/torvalds/c/30687e0a47e8) | [fs] | hpfs: make freeing sbi and codetables rcu-delayed |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`59aa0da8e232`](https://git.kernel.org/torvalds/c/59aa0da8e232) | [fs] | initialize namespace_sem statically |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`a67c848a8b9a`](https://git.kernel.org/torvalds/c/a67c848a8b9a) | [fs] | jbd2: rename obsoleted msg JBD->JBD2 |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.13 | [`75685071cd5b`](https://git.kernel.org/torvalds/c/75685071cd5b) | [fs] | jbd2: revise KERN_EMERG error messages |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.13 | [`12f388722245`](https://git.kernel.org/torvalds/c/12f388722245) | [fs] | libfs: get exports to definitions of objects being exported |  | generic code, tag [fs] | 3.10.0-72 |
| CANDIDATE | 3.13 | [`27ac0ffeac80`](https://git.kernel.org/torvalds/c/27ac0ffeac80) | [fs] | locks: break delegations on any attribute modification |  | generic code, tag [fs] | 3.10.0-97 |
| CANDIDATE | 3.13 | [`146a8595c639`](https://git.kernel.org/torvalds/c/146a8595c639) | [fs] | locks: break delegations on link |  | generic code, tag [fs] | 3.10.0-97 |
| CANDIDATE | 3.13 | [`8e6d782cab50`](https://git.kernel.org/torvalds/c/8e6d782cab50) | [fs] | locks: break delegations on rename |  | generic code, tag [fs] | 3.10.0-97 |
| CANDIDATE | 3.13 | [`b21996e36c8e`](https://git.kernel.org/torvalds/c/b21996e36c8e) | [fs] | locks: break delegations on unlink |  | generic code, tag [fs] | 3.10.0-97 |
| CANDIDATE | 3.13 | [`5a14696c1795`](https://git.kernel.org/torvalds/c/5a14696c1795) | [fs] | locks: helper functions for delegation breaking |  | generic code, tag [fs] | 3.10.0-97 |
| CANDIDATE | 3.13 | [`df4e8d2c1d2b`](https://git.kernel.org/torvalds/c/df4e8d2c1d2b) | [fs] | locks: implement delegations |  | generic code, tag [fs] | 3.10.0-97 |
| CANDIDATE | 3.13 | [`617588d5186c`](https://git.kernel.org/torvalds/c/617588d5186c) | [fs] | locks: introduce new FL_DELEG lock flag |  | generic code, tag [fs] | 3.10.0-97 |
| CANDIDATE | 3.13 | [`e2fec7c35582`](https://git.kernel.org/torvalds/c/e2fec7c35582) | [fs] | make freeing super_block rcu-delayed |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`f6b742d8697a`](https://git.kernel.org/torvalds/c/f6b742d8697a) | [fs] | mnt_set_expiry() doesn't need vfsmount_lock |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`94e92a6e772e`](https://git.kernel.org/torvalds/c/94e92a6e772e) | [fs] | move taking vfsmount_lock down into prepend_path() |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`9accbb977ab7`](https://git.kernel.org/torvalds/c/9accbb977ab7) | [fs] | namei: minor vfs_unlink cleanup |  | generic code, tag [fs] | 3.10.0-97 |
| CANDIDATE | 3.13 | [`aba809cf0944`](https://git.kernel.org/torvalds/c/aba809cf0944) | [fs] | namespace.c: get rid of mnt_ghosts |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`1dcddd4abd2c`](https://git.kernel.org/torvalds/c/1dcddd4abd2c) | [fs] | ncpfs: rcu-delay unload_nls() and freeing ncp_server |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`719ea2fbb553`](https://git.kernel.org/torvalds/c/719ea2fbb553) | [fs] | new helpers: lock_mount_hash/unlock_mount_hash |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`956c4fee446c`](https://git.kernel.org/torvalds/c/956c4fee446c) | [fs] | nfsd4: need to destroy revoked delegations in destroy_client |  | generic code, tag [fs] | 3.10.0-97 |
| CANDIDATE | 3.13 | [`1adfcb03e31b`](https://git.kernel.org/torvalds/c/1adfcb03e31b) | [fs] | pid_namespace: make freeing struct pid_namespace rcu-delayed |  | CONFIG_PID_NS=y in A37 | 3.10.0-620 |
| CANDIDATE | 3.13 | [`29fc2bc75393`](https://git.kernel.org/torvalds/c/29fc2bc75393) | [fs] | printk: pr_debug_ratelimited: check state first to reduce "callbacks suppressed" messages |  | generic code, tag [fs] | 3.10.0-704 |
| CANDIDATE | 3.13 | [`7b00ed6fe632`](https://git.kernel.org/torvalds/c/7b00ed6fe632) | [fs] | put_mnt_ns(): use drop_collected_mounts() |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`48a066e72d97`](https://git.kernel.org/torvalds/c/48a066e72d97) | [fs] | RCU'd vfsmounts |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`a1212d278c05`](https://git.kernel.org/torvalds/c/a1212d278c05) | [fs] | revert "sysfs: drop kobj_ns_type handling" |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.13 | [`81440e737444`](https://git.kernel.org/torvalds/c/81440e737444) | [fs] | revert "sysfs: handle duplicate removal attempts in sysfs_remove_group()" |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.13 | [`71ad7490c1f3`](https://git.kernel.org/torvalds/c/71ad7490c1f3) | [fs] | rework aio migrate pages to use aio fs |  | generic code, tag [fs] | 3.10.0-72 |
| CANDIDATE | 3.13 | [`474279dc0f77`](https://git.kernel.org/torvalds/c/474279dc0f77) | [fs] | split __lookup_mnt() in two functions |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.13 | [`d723a92dd465`](https://git.kernel.org/torvalds/c/d723a92dd465) | [fs] | sysfs/bin: Fix size handling overflow for bin_attribute |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`cfec0bc835c8`](https://git.kernel.org/torvalds/c/cfec0bc835c8) | [fs] | sysfs: @name comes before @ns |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`2f0c6b7593a5`](https://git.kernel.org/torvalds/c/2f0c6b7593a5) | [fs] | sysfs: add sysfs_bin_read() |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`bcafe4eea3e5`](https://git.kernel.org/torvalds/c/bcafe4eea3e5) | [fs] | sysfs: add sysfs_open_file->sd and ->file |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`c75ec764cf47`](https://git.kernel.org/torvalds/c/c75ec764cf47) | [fs] | sysfs: add sysfs_open_file_mutex |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`388975cccaaf`](https://git.kernel.org/torvalds/c/388975cccaaf) | [fs] | sysfs: clean up sysfs_get_dirent() |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`3ff65d3cb09e`](https://git.kernel.org/torvalds/c/3ff65d3cb09e) | [fs] | sysfs: collapse fs/sysfs/bin.c::fill_read() into read() |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`73d9714627ad`](https://git.kernel.org/torvalds/c/73d9714627ad) | [fs] | sysfs: copy bin mmap support from fs/sysfs/bin.c to fs/sysfs/file.c |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`cb26a311578e`](https://git.kernel.org/torvalds/c/cb26a311578e) | [fs] | sysfs: drop kobj_ns_type handling |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`bcac3769ca6d`](https://git.kernel.org/torvalds/c/bcac3769ca6d) | [fs] | sysfs: drop semicolon from to_sysfs_dirent() definition |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`b9c0622516b7`](https://git.kernel.org/torvalds/c/b9c0622516b7) | [fs] | sysfs: fix sysfs_write_file for bin file |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`54d71145a454`](https://git.kernel.org/torvalds/c/54d71145a454) | [fs] | sysfs: handle duplicate removal attempts in sysfs_remove_group() |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`672f76a81ad5`](https://git.kernel.org/torvalds/c/672f76a81ad5) | [fs] | sysfs: honor bin_attr.attr.ignore_lockdep |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`250f7c3fee52`](https://git.kernel.org/torvalds/c/250f7c3fee52) | [fs] | sysfs: introduce [__]sysfs_remove() |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`bcdde7e221a8`](https://git.kernel.org/torvalds/c/bcdde7e221a8) | [fs] | sysfs: make __sysfs_remove_dir() recursive |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`58292cbe6669`](https://git.kernel.org/torvalds/c/58292cbe6669) | [fs] | sysfs: make attr namespace interface less convoluted |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`785a162d147a`](https://git.kernel.org/torvalds/c/785a162d147a) | [fs] | sysfs: make sysfs_file_ops() follow ignore_lockdep flag |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`3124eb1679b2`](https://git.kernel.org/torvalds/c/3124eb1679b2) | [fs] | sysfs: merge regular and bin file handling |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`56b3f3b88465`](https://git.kernel.org/torvalds/c/56b3f3b88465) | [fs] | sysfs: merge sysfs_elem_bin_attr into sysfs_elem_attr |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`7eed6ecb0785`](https://git.kernel.org/torvalds/c/7eed6ecb0785) | [fs] | sysfs: move sysfs_hash_and_remove() to fs/sysfs/dir.c |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`49fe604781cb`](https://git.kernel.org/torvalds/c/49fe604781cb) | [fs] | sysfs: prepare open path for unified regular / bin file handling |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`f9b9a6217cf1`](https://git.kernel.org/torvalds/c/f9b9a6217cf1) | [fs] | sysfs: prepare path write for unified regular / bin file handling |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`e34ff4906199`](https://git.kernel.org/torvalds/c/e34ff4906199) | [fs] | sysfs: remove ktype->namespace() invocations in directory code |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`4b30ee58ee64`](https://git.kernel.org/torvalds/c/4b30ee58ee64) | [fs] | sysfs: remove ktype->namespace() invocations in symlink code |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`d69ac5a0bbcf`](https://git.kernel.org/torvalds/c/d69ac5a0bbcf) | [fs] | sysfs: remove sysfs_addrm_cxt->parent_sd |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`aea585ef8fa6`](https://git.kernel.org/torvalds/c/aea585ef8fa6) | [fs] | sysfs: remove sysfs_buffer->needs_read_fill |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`375b611e60f7`](https://git.kernel.org/torvalds/c/375b611e60f7) | [fs] | sysfs: remove sysfs_buffer->ops |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`89e51dab7cb0`](https://git.kernel.org/torvalds/c/89e51dab7cb0) | [fs] | sysfs: remove unused sysfs_buffer->pos |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`baa97cb50724`](https://git.kernel.org/torvalds/c/baa97cb50724) | [fs] | sysfs: remove unused sysfs_get_dentry() prototype |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`0cae60f91494`](https://git.kernel.org/torvalds/c/0cae60f91494) | [fs] | sysfs: rename sysfs_assoc_lock and explain what it's about |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`58282d8dc2e7`](https://git.kernel.org/torvalds/c/58282d8dc2e7) | [fs] | sysfs: rename sysfs_buffer to sysfs_open_file |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`1c1365e374bf`](https://git.kernel.org/torvalds/c/1c1365e374bf) | [fs] | sysfs: return correct error code on unimplemented mmap() |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`d1c1459e4594`](https://git.kernel.org/torvalds/c/d1c1459e4594) | [fs] | sysfs: separate out dup filename warning into a separate function |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`91270162bf8a`](https://git.kernel.org/torvalds/c/91270162bf8a) | [fs] | sysfs: skip bin_buffer->buffer while reading |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`027a485d12e0`](https://git.kernel.org/torvalds/c/027a485d12e0) | [fs] | sysfs: use a separate locking class for open files depending on mmap |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`044e3bc33391`](https://git.kernel.org/torvalds/c/044e3bc33391) | [fs] | sysfs: use generic_file_llseek() for sysfs_file_operations |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`13c589d5b0ac`](https://git.kernel.org/torvalds/c/13c589d5b0ac) | [fs] | sysfs: use seq_file when reading regular files |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`8ef445f08074`](https://git.kernel.org/torvalds/c/8ef445f08074) | [fs] | sysfs: use transient write buffer |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.13 | [`6987843ff7e8`](https://git.kernel.org/torvalds/c/6987843ff7e8) | [fs] | take anon inode allocation to libfs.c |  | generic code, tag [fs] | 3.10.0-72 |
| CANDIDATE | 3.13 | [`275555163e3a`](https://git.kernel.org/torvalds/c/275555163e3a) | [fs] | vfs: don't use PARENT/CHILD lock classes for non-directories |  | generic code, tag [fs] | 3.10.0-97 |
| CANDIDATE | 3.13 | [`41301ae78a99`](https://git.kernel.org/torvalds/c/41301ae78a99) | [fs] | vfs: Fix a regression in mounting proc |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.13 | [`b70a80e7a133`](https://git.kernel.org/torvalds/c/b70a80e7a133) | [fs] | vfs: introduce d_instantiate_no_diralias() |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 3.13 | [`375e289ea851`](https://git.kernel.org/torvalds/c/375e289ea851) | [fs] | vfs: pull ext4's double-i_mutex-locking into common code |  | generic code, tag [fs] | 3.10.0-97 |
| CANDIDATE | 3.13 | [`b18825a7c8e3`](https://git.kernel.org/torvalds/c/b18825a7c8e3) | [fs] | vfs: Put a small type field into struct dentry::d_flags |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | 3.13 | [`40bd22c9f861`](https://git.kernel.org/torvalds/c/40bd22c9f861) | [fs] | vfs: rename I_MUTEX_QUOTA now that it's not used for quotas |  | generic code, tag [fs] | 3.10.0-97 |
| CANDIDATE | 3.13 | [`6cedba8962f4`](https://git.kernel.org/torvalds/c/6cedba8962f4) | [fs] | vfs: take i_mutex on renamed file |  | generic code, tag [fs] | 3.10.0-97 |
| CANDIDATE | 3.13 | [`c4a391b53a72`](https://git.kernel.org/torvalds/c/c4a391b53a72) | [fs] | writeback: do not sync data dirtied after sync start |  | generic code, tag [fs] | 3.10.0-65 |
| CANDIDATE | 3.14 | [`f9441639e631`](https://git.kernel.org/torvalds/c/f9441639e631) | [fs] | audit: fix netlink portid naming and types |  | CONFIG_AUDIT=y in A37 | 3.10.0-351 |
| CANDIDATE | 3.14 | [`ce0d9f046997`](https://git.kernel.org/torvalds/c/ce0d9f046997) | [fs] | audit: refactor audit_receive_msg() to clarify AUDIT_*_RULE* cases |  | CONFIG_AUDIT=y in A37 | 3.10.0-351 |
| CANDIDATE | 3.14 | [`d6f2589ad561`](https://git.kernel.org/torvalds/c/d6f2589ad561) (loose) | [fs] | Avoid userspace mounting anon_inodefs filesystem |  | generic code, tag [fs] | 3.10.0-1025 |
| CANDIDATE | 3.14 | [`2c30c71bd653`](https://git.kernel.org/torvalds/c/2c30c71bd653) | [fs] | block: Convert various code to bio_for_each_segment() |  | generic code, tag [fs] | 3.10.0-427 |
| CANDIDATE | 3.14 | [`c4ad8f98bef7`](https://git.kernel.org/torvalds/c/c4ad8f98bef7) | [fs] | execve: use 'struct filename *' for executable name passing |  | generic code, tag [fs] | 3.10.0-230 |
| CANDIDATE | 3.14 | [`8c9367fd9bf2`](https://git.kernel.org/torvalds/c/8c9367fd9bf2) | [fs] | ext4: don't pass freed handle to ext4_walk_page_buffers |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.14 | [`9cb00419faa7`](https://git.kernel.org/torvalds/c/9cb00419faa7) | [fs] | ext4: enable punch hole for bigalloc |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.14 | [`65eddb56f465`](https://git.kernel.org/torvalds/c/65eddb56f465) | [fs] | ext4: ext4_inode_is_fast_symlink should use EXT4_CLUSTER_SIZE |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.14 | [`9e740568bc65`](https://git.kernel.org/torvalds/c/9e740568bc65) | [fs] | ext4: fix a typo in extents.c |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.14 | [`15cc17678547`](https://git.kernel.org/torvalds/c/15cc17678547) | [fs] | ext4: fix xfstest generic/299 block validity failures |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.14 | [`82ef3d5d5f3f`](https://git.kernel.org/torvalds/c/82ef3d5d5f3f) (loose) | [fs] | fix "queues" uevent between network namespaces |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`7026f1929e18`](https://git.kernel.org/torvalds/c/7026f1929e18) | [fs] | fs-cache: Handle removal of unadded object to the fscache_object_list rb tree |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 3.14 | [`2982baa2ae31`](https://git.kernel.org/torvalds/c/2982baa2ae31) | [fs] | fs: add get_acl helper |  | generic code, tag [fs] | 3.10.0-562 |
| CANDIDATE | 3.14 | [`ff57cd5863cf`](https://git.kernel.org/torvalds/c/ff57cd5863cf) | [fs] | fsnotify: Allocate overflow events with proper type |  | generic code, tag [fs] | 3.10.0-351 |
| CANDIDATE | 3.14 | [`83c0e1b442b4`](https://git.kernel.org/torvalds/c/83c0e1b442b4) | [fs] | fsnotify: Do not return merged event from fsnotify_add_notify_event() |  | generic code, tag [fs] | 3.10.0-351 |
| CANDIDATE | 3.14 | [`7053aee26a35`](https://git.kernel.org/torvalds/c/7053aee26a35) | [fs] | fsnotify: do not share events between notification groups |  | generic code, tag [fs] | 3.10.0-351 |
| CANDIDATE | 3.14 | [`2513190a926f`](https://git.kernel.org/torvalds/c/2513190a926f) | [fs] | fsnotify: Fix detection whether overflow event is queued |  | generic code, tag [fs] | 3.10.0-351 |
| CANDIDATE | 3.14 | [`83c4c4b0a3aa`](https://git.kernel.org/torvalds/c/83c4c4b0a3aa) | [fs] | fsnotify: remove .should_send_event callback |  | generic code, tag [fs] | 3.10.0-351 |
| CANDIDATE | 3.14 | [`56b27cf6030d`](https://git.kernel.org/torvalds/c/56b27cf6030d) | [fs] | fsnotify: remove pointless NULL initializers |  | generic code, tag [fs] | 3.10.0-351 |
| CANDIDATE | 3.14 | [`063ec1e595f8`](https://git.kernel.org/torvalds/c/063ec1e595f8) | [fs] | fuse: fix SetPageUptodate() condition in STORE |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.14 | [`7678ac50615d`](https://git.kernel.org/torvalds/c/7678ac50615d) | [fs] | fuse: support clients that don't implement 'open' |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.14 | [`45a22f4c11fe`](https://git.kernel.org/torvalds/c/45a22f4c11fe) | [fs] | inotify: Fix reporting of cookies for inotify events |  | CONFIG_INOTIFY_USER=y in A37 | 3.10.0-351 |
| CANDIDATE | 3.14 | [`e9fe69045bd6`](https://git.kernel.org/torvalds/c/e9fe69045bd6) | [fs] | inotify: provide function for name length rounding |  | CONFIG_INOTIFY_USER=y in A37 | 3.10.0-351 |
| CANDIDATE | 3.14 | [`92e3b4053770`](https://git.kernel.org/torvalds/c/92e3b4053770) | [fs] | jbd2: fix use after free in jbd2_journal_start_reserved() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-912 |
| CANDIDATE | 3.14 | [`1d6a32acd70a`](https://git.kernel.org/torvalds/c/1d6a32acd70a) | [fs] | keep shadowed vfsmounts together |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.14 | [`1ae06819c77c`](https://git.kernel.org/torvalds/c/1ae06819c77c) | [fs] | kernfs, sysfs, driver-core: implement kernfs_remove_self() and its wrappers |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`1ae06819c77c`](https://git.kernel.org/torvalds/c/1ae06819c77c) | [fs] | kernfs, sysfs, driver-core: implement kernfs_remove_self() and its wrappers |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`29dfe2dc0e8f`](https://git.kernel.org/torvalds/c/29dfe2dc0e8f) | [fs] | kobject: export kobj_sysfs_ops |  | generic code, tag [fs] | 3.10.0-145 |
| CANDIDATE | 3.14 | [`020d30f17f19`](https://git.kernel.org/torvalds/c/020d30f17f19) | [fs] | kobject: fix memory leak in kobject_set_name_vargs |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`9705710e40b9`](https://git.kernel.org/torvalds/c/9705710e40b9) | [fs] | kobject: Fix source code comment spelling |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`35a5fe695b07`](https://git.kernel.org/torvalds/c/35a5fe695b07) | [fs] | kobject: remove kset from sysfs immediately in kset_unregister() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`208d0acc49cb`](https://git.kernel.org/torvalds/c/208d0acc49cb) | [fs] | nfsd4: break only delegations when appropriate |  | generic code, tag [fs] | 3.10.0-97 |
| CANDIDATE | 3.14 | [`c0e6bee48059`](https://git.kernel.org/torvalds/c/c0e6bee48059) | [fs] | nfsd4: delay setting current_fh in open |  | generic code, tag [fs] | 3.10.0-97 |
| CANDIDATE | 3.14 | [`4335723e8e9f`](https://git.kernel.org/torvalds/c/4335723e8e9f) | [fs] | nfsd4: fix delegation-unlink/rename race |  | generic code, tag [fs] | 3.10.0-97 |
| CANDIDATE | 3.14 | [`e873088f2939`](https://git.kernel.org/torvalds/c/e873088f2939) | [fs] | nfsd4: minor nfs4_setlease cleanup |  | generic code, tag [fs] | 3.10.0-97 |
| CANDIDATE | 3.14 | [`b37199e626b3`](https://git.kernel.org/torvalds/c/b37199e626b3) | [fs] | rcuwalk: recheck mount_lock after mountpoint crossing attempts |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.14 | [`fce7fc79c8f7`](https://git.kernel.org/torvalds/c/fce7fc79c8f7) (loose) | [fs] | remove now stale label in anon_inode_init() |  | generic code, tag [fs] | 3.10.0-1025 |
| CANDIDATE | 3.14 | [`0818bf27c05b`](https://git.kernel.org/torvalds/c/0818bf27c05b) | [fs] | resizable namespace.c hashes |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.14 | [`4a444b1f06d2`](https://git.kernel.org/torvalds/c/4a444b1f06d2) | [fs] | rwsem: add rwsem_is_contended |  | generic code, tag [fs] | 3.10.0-145 |
| CANDIDATE | 3.14 | [`38129a13e6e7`](https://git.kernel.org/torvalds/c/38129a13e6e7) | [fs] | switch mnt_hash to hlist |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.14 | [`d19b9846df64`](https://git.kernel.org/torvalds/c/d19b9846df64) | [fs] | sysfs, kernfs: add kernfs_ops->seq_{start\|next\|stop}() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`d19b9846df64`](https://git.kernel.org/torvalds/c/d19b9846df64) | [fs] | sysfs, kernfs: add kernfs_ops->seq_{start\|next\|stop}() |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`b8441ed279bf`](https://git.kernel.org/torvalds/c/b8441ed279bf) | [fs] | sysfs, kernfs: add skeletons for kernfs |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`b8441ed279bf`](https://git.kernel.org/torvalds/c/b8441ed279bf) | [fs] | sysfs, kernfs: add skeletons for kernfs |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`471bd7b78bd5`](https://git.kernel.org/torvalds/c/471bd7b78bd5) | [fs] | sysfs, kernfs: add sysfs_dirent->s_attr.size |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`ccc532dc12af`](https://git.kernel.org/torvalds/c/ccc532dc12af) | [fs] | sysfs, kernfs: drop unused params from sysfs_fill_super() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`ba7443bc656e`](https://git.kernel.org/torvalds/c/ba7443bc656e) | [fs] | sysfs, kernfs: implement kernfs_create/destroy_root() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`ba7443bc656e`](https://git.kernel.org/torvalds/c/ba7443bc656e) | [fs] | sysfs, kernfs: implement kernfs_create/destroy_root() |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`ac9bba031001`](https://git.kernel.org/torvalds/c/ac9bba031001) | [fs] | sysfs, kernfs: implement kernfs_ns_enabled() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`ac9bba031001`](https://git.kernel.org/torvalds/c/ac9bba031001) | [fs] | sysfs, kernfs: implement kernfs_ns_enabled() |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`ccf73cf336dc`](https://git.kernel.org/torvalds/c/ccf73cf336dc) | [fs] | sysfs, kernfs: introduce kernfs[_find_and]_get() and kernfs_put() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`ccf73cf336dc`](https://git.kernel.org/torvalds/c/ccf73cf336dc) | [fs] | sysfs, kernfs: introduce kernfs[_find_and]_get() and kernfs_put() |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`93b2b8e4aa43`](https://git.kernel.org/torvalds/c/93b2b8e4aa43) | [fs] | sysfs, kernfs: introduce kernfs_create_dir[_ns]() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`93b2b8e4aa43`](https://git.kernel.org/torvalds/c/93b2b8e4aa43) | [fs] | sysfs, kernfs: introduce kernfs_create_dir[_ns]() |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`496f73944a4a`](https://git.kernel.org/torvalds/c/496f73944a4a) | [fs] | sysfs, kernfs: introduce kernfs_create_file[_ns]() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`496f73944a4a`](https://git.kernel.org/torvalds/c/496f73944a4a) | [fs] | sysfs, kernfs: introduce kernfs_create_file[_ns]() |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`5d0e26bb59a6`](https://git.kernel.org/torvalds/c/5d0e26bb59a6) | [fs] | sysfs, kernfs: introduce kernfs_create_link() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`5d0e26bb59a6`](https://git.kernel.org/torvalds/c/5d0e26bb59a6) | [fs] | sysfs, kernfs: introduce kernfs_create_link() |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`024f647117d6`](https://git.kernel.org/torvalds/c/024f647117d6) | [fs] | sysfs, kernfs: introduce kernfs_notify() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`024f647117d6`](https://git.kernel.org/torvalds/c/024f647117d6) | [fs] | sysfs, kernfs: introduce kernfs_notify() |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`f6acf8bb6a40`](https://git.kernel.org/torvalds/c/f6acf8bb6a40) | [fs] | sysfs, kernfs: introduce kernfs_ops |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`f6acf8bb6a40`](https://git.kernel.org/torvalds/c/f6acf8bb6a40) | [fs] | sysfs, kernfs: introduce kernfs_ops |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`879f40d193bb`](https://git.kernel.org/torvalds/c/879f40d193bb) | [fs] | sysfs, kernfs: introduce kernfs_remove[_by_name[_ns]]() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`879f40d193bb`](https://git.kernel.org/torvalds/c/879f40d193bb) | [fs] | sysfs, kernfs: introduce kernfs_remove[_by_name[_ns]]() |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`890ece160c64`](https://git.kernel.org/torvalds/c/890ece160c64) | [fs] | sysfs, kernfs: introduce kernfs_rename[_ns]() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`890ece160c64`](https://git.kernel.org/torvalds/c/890ece160c64) | [fs] | sysfs, kernfs: introduce kernfs_rename[_ns]() |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`5d60418e5475`](https://git.kernel.org/torvalds/c/5d60418e5475) | [fs] | sysfs, kernfs: introduce kernfs_setattr() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`5d60418e5475`](https://git.kernel.org/torvalds/c/5d60418e5475) | [fs] | sysfs, kernfs: introduce kernfs_setattr() |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`061447a496b9`](https://git.kernel.org/torvalds/c/061447a496b9) | [fs] | sysfs, kernfs: introduce sysfs_root_sd |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`bc755553df9a`](https://git.kernel.org/torvalds/c/bc755553df9a) | [fs] | sysfs, kernfs: make inode number ida per kernfs_root |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`bc755553df9a`](https://git.kernel.org/torvalds/c/bc755553df9a) | [fs] | sysfs, kernfs: make inode number ida per kernfs_root |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`df394fb56c64`](https://git.kernel.org/torvalds/c/df394fb56c64) | [fs] | sysfs, kernfs: make super_blocks bind to different kernfs_roots |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`cf9e5a73aaff`](https://git.kernel.org/torvalds/c/cf9e5a73aaff) | [fs] | sysfs, kernfs: make sysfs_dirent definition public |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`cf9e5a73aaff`](https://git.kernel.org/torvalds/c/cf9e5a73aaff) | [fs] | sysfs, kernfs: make sysfs_dirent definition public |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`51a35e9fd0f2`](https://git.kernel.org/torvalds/c/51a35e9fd0f2) | [fs] | sysfs, kernfs: make sysfs_super_info->ns const |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`fd7b9f7b9776`](https://git.kernel.org/torvalds/c/fd7b9f7b9776) | [fs] | sysfs, kernfs: move dir core code to fs/kernfs/dir.c |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`fd7b9f7b9776`](https://git.kernel.org/torvalds/c/fd7b9f7b9776) | [fs] | sysfs, kernfs: move dir core code to fs/kernfs/dir.c |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`414985ae23c0`](https://git.kernel.org/torvalds/c/414985ae23c0) | [fs] | sysfs, kernfs: move file core code to fs/kernfs/file.c |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`414985ae23c0`](https://git.kernel.org/torvalds/c/414985ae23c0) | [fs] | sysfs, kernfs: move file core code to fs/kernfs/file.c |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`ffed24e22845`](https://git.kernel.org/torvalds/c/ffed24e22845) | [fs] | sysfs, kernfs: move inode code to fs/kernfs/inode.c |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`ffed24e22845`](https://git.kernel.org/torvalds/c/ffed24e22845) | [fs] | sysfs, kernfs: move inode code to fs/kernfs/inode.c |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`ae6621b07168`](https://git.kernel.org/torvalds/c/ae6621b07168) | [fs] | sysfs, kernfs: move internal decls to fs/kernfs/kernfs-internal.h |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`ae6621b07168`](https://git.kernel.org/torvalds/c/ae6621b07168) | [fs] | sysfs, kernfs: move internal decls to fs/kernfs/kernfs-internal.h |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`fa736a951e45`](https://git.kernel.org/torvalds/c/fa736a951e45) | [fs] | sysfs, kernfs: move mount core code to fs/kernfs/mount.c |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`fa736a951e45`](https://git.kernel.org/torvalds/c/fa736a951e45) | [fs] | sysfs, kernfs: move mount core code to fs/kernfs/mount.c |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`2072f1afddfe`](https://git.kernel.org/torvalds/c/2072f1afddfe) | [fs] | sysfs, kernfs: move symlink core code to fs/kernfs/symlink.c |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`2072f1afddfe`](https://git.kernel.org/torvalds/c/2072f1afddfe) | [fs] | sysfs, kernfs: move symlink core code to fs/kernfs/symlink.c |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`dd8a5b036b6e`](https://git.kernel.org/torvalds/c/dd8a5b036b6e) | [fs] | sysfs, kernfs: move sysfs_open_file to include/linux/kernfs.h |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`9e30cc959530`](https://git.kernel.org/torvalds/c/9e30cc959530) | [fs] | sysfs, kernfs: no need to kern_mount() sysfs from sysfs_init() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`fdbffaa478fc`](https://git.kernel.org/torvalds/c/fdbffaa478fc) | [fs] | sysfs, kernfs: prepare mmap path for kernfs |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`4b93dc9b1c68`](https://git.kernel.org/torvalds/c/4b93dc9b1c68) | [fs] | sysfs, kernfs: prepare mount path for kernfs |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`4b93dc9b1c68`](https://git.kernel.org/torvalds/c/4b93dc9b1c68) | [fs] | sysfs, kernfs: prepare mount path for kernfs |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`c6fb449515f2`](https://git.kernel.org/torvalds/c/c6fb449515f2) | [fs] | sysfs, kernfs: prepare open, release, poll paths for kernfs |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`c2b19daf6760`](https://git.kernel.org/torvalds/c/c2b19daf6760) | [fs] | sysfs, kernfs: prepare read path for kernfs |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`50b38ca086e4`](https://git.kernel.org/torvalds/c/50b38ca086e4) | [fs] | sysfs, kernfs: prepare write path for kernfs |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`bfc5c1733714`](https://git.kernel.org/torvalds/c/bfc5c1733714) | [fs] | sysfs, kernfs: remove cross inclusions of internal headers |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`bfc5c1733714`](https://git.kernel.org/torvalds/c/bfc5c1733714) | [fs] | sysfs, kernfs: remove cross inclusions of internal headers |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`21d71662f895`](https://git.kernel.org/torvalds/c/21d71662f895) | [fs] | sysfs, kernfs: remove duplicated include from file.c |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`2d0cfbec2a95`](https://git.kernel.org/torvalds/c/2d0cfbec2a95) | [fs] | sysfs, kernfs: remove sysfs_add_one() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`a7dc66dfb4c6`](https://git.kernel.org/torvalds/c/a7dc66dfb4c6) | [fs] | sysfs, kernfs: remove SYSFS_KOBJ_BIN_ATTR |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`2b25a62901a1`](https://git.kernel.org/torvalds/c/2b25a62901a1) | [fs] | sysfs, kernfs: reorganize SYSFS_* constants |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`7c6e2d362c19`](https://git.kernel.org/torvalds/c/7c6e2d362c19) | [fs] | sysfs, kernfs: replace sysfs_dirent->s_dir.kobj and ->s_attr.[bin_]attr with ->priv |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`517e64f57883`](https://git.kernel.org/torvalds/c/517e64f57883) | [fs] | sysfs, kernfs: revamp sysfs_dirent active_ref lockdep annotation |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.14 | [`517e64f57883`](https://git.kernel.org/torvalds/c/517e64f57883) | [fs] | sysfs, kernfs: revamp sysfs_dirent active_ref lockdep annotation |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.14 | [`9b2db6e18945`](https://git.kernel.org/torvalds/c/9b2db6e18945) | [fs] | sysfs: bail early from kernfs_file_mmap() to avoid spurious lockdep warning |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.14 | [`9b2db6e18945`](https://git.kernel.org/torvalds/c/9b2db6e18945) | [fs] | sysfs: bail early from kernfs_file_mmap() to avoid spurious lockdep warning |  | CONFIG_SYSFS=y in A37 | 3.10.0-646 |
| CANDIDATE | 3.14 | [`c84a3b27798d`](https://git.kernel.org/torvalds/c/c84a3b27798d) | [fs] | sysfs: drop kobj_ns_type handling, take #2 |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.14 | [`fed95bab8d29`](https://git.kernel.org/torvalds/c/fed95bab8d29) | [fs] | sysfs: fix namespace refcnt leak |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.14 | [`fed95bab8d29`](https://git.kernel.org/torvalds/c/fed95bab8d29) | [fs] | sysfs: fix namespace refcnt leak |  | CONFIG_SYSFS=y in A37 | 3.10.0-646 |
| CANDIDATE | 3.14 | [`a7560a0132cf`](https://git.kernel.org/torvalds/c/a7560a0132cf) | [fs] | sysfs: fix use-after-free in sysfs_kill_sb() |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.14 | [`ae2108ad32f5`](https://git.kernel.org/torvalds/c/ae2108ad32f5) | [fs] | sysfs: make __sysfs_add_one() fail if the parent isn't a directory |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.14 | [`75c5a52da3fc`](https://git.kernel.org/torvalds/c/75c5a52da3fc) | [fs] | vfs: Allocate anon_inode_inode in anon_inode_init() |  | generic code, tag [fs] | 3.10.0-1025 |
| CANDIDATE | 3.14 | [`d7a15f8d0777`](https://git.kernel.org/torvalds/c/d7a15f8d0777) | [fs] | vfs: atomic f_pos access in llseek() |  | generic code, tag [fs] | 3.10.0-279 |
| CANDIDATE | 3.14 | [`9c225f2655e3`](https://git.kernel.org/torvalds/c/9c225f2655e3) | [fs] | vfs: atomic f_pos accesses as per POSIX |  | generic code, tag [fs] | 3.10.0-279 |
| CANDIDATE | 3.14 | [`9115eac2c788`](https://git.kernel.org/torvalds/c/9115eac2c788) | [fs] | vfs: unexport the getname() symbol |  | generic code, tag [fs] | 3.10.0-109 |
| CANDIDATE | 3.15 | [`e02ba72aabfa`](https://git.kernel.org/torvalds/c/e02ba72aabfa) | [fs] | aio: block io_destroy() until all context requests are completed |  | CONFIG_AIO=y in A37 | 3.10.0-183 |
| CANDIDATE | 3.15 | [`fa8a53c39f3f`](https://git.kernel.org/torvalds/c/fa8a53c39f3f) | [fs] | aio: v4 ensure access to ctx->ring_pages is correctly serialised for migration |  | CONFIG_AIO=y in A37 | 3.10.0-183 |
| CANDIDATE | 3.15 | [`b4d7124b2f2e`](https://git.kernel.org/torvalds/c/b4d7124b2f2e) | [fs] | bio: don't write "bio: create slab" messages to syslog |  | generic code, tag [fs] | 3.10.0-136 |
| CANDIDATE | 3.15 | [`74027f4a1817`](https://git.kernel.org/torvalds/c/74027f4a1817) | [fs] | cifs_iovec_read(): resubmit shouldn't restart the loop |  | generic code, tag [fs] | 3.10.0-279 |
| CANDIDATE | 3.15 | [`7f25bba819a3`](https://git.kernel.org/torvalds/c/7f25bba819a3) | [fs] | cifs_iovec_read: keep iov_iter between the calls of cifs_readdata_to_iov() |  | generic code, tag [fs] | 3.10.0-279 |
| CANDIDATE | 3.15 | [`9f12600fe425`](https://git.kernel.org/torvalds/c/9f12600fe425) | [fs] | dcache: add missing lockdep annotation |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 3.15 | [`b2b80195d882`](https://git.kernel.org/torvalds/c/b2b80195d882) | [fs] | dealing with the rest of shrink_dentry_list() livelock |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 3.15 | [`6039257378e4`](https://git.kernel.org/torvalds/c/6039257378e4) | [fs] | direct-io: add flag to allow aio writes beyond i_size |  | generic code, tag [fs] | 3.10.0-257 |
| CANDIDATE | 3.15 | [`a2a4dc494a7b`](https://git.kernel.org/torvalds/c/a2a4dc494a7b) (loose) | [fs] | Don't return 0 from get_anon_bdev |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.15 | [`ab0e113f6bee`](https://git.kernel.org/torvalds/c/ab0e113f6bee) | [fs] | exec: kill the unnecessary mm->def_flags setting in load_elf_binary() |  | generic code, tag [fs] | 3.10.0-192 |
| CANDIDATE | 3.15 | [`ff2fde9929fe`](https://git.kernel.org/torvalds/c/ff2fde9929fe) | [fs] | expand dentry_kill(dentry, 0) in shrink_dentry_list() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 3.15 | [`e67bc2b35905`](https://git.kernel.org/torvalds/c/e67bc2b35905) | [fs] | ext4: Add __init marking to init_inodecache |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`bd42998a6bcb`](https://git.kernel.org/torvalds/c/bd42998a6bcb) | [fs] | ext4: add cross rename support |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-220 |
| CANDIDATE | 3.15 | [`9a6633b1a360`](https://git.kernel.org/torvalds/c/9a6633b1a360) | [fs] | ext4: add ext4_es_store_pblock_status() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`9eb79482a971`](https://git.kernel.org/torvalds/c/9eb79482a971) | [fs] | ext4: Add support FALLOC_FL_COLLAPSE_RANGE for fallocate |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`024949ec8fc1`](https://git.kernel.org/torvalds/c/024949ec8fc1) | [fs] | ext4: address a benign compiler warning |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`a18ed359bddd`](https://git.kernel.org/torvalds/c/a18ed359bddd) | [fs] | ext4: always check ext4_ext_find_extent result |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`e251f9bca99c`](https://git.kernel.org/torvalds/c/e251f9bca99c) | [fs] | ext4: avoid exposure of stale data in ext4_punch_hole() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`e861b5e9a47b`](https://git.kernel.org/torvalds/c/e861b5e9a47b) | [fs] | ext4: avoid possible overflow in ext4_map_blocks() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`d8558a297878`](https://git.kernel.org/torvalds/c/d8558a297878) | [fs] | ext4: clean up error handling in swap_inode_boot_loader() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`40c406c74eb9`](https://git.kernel.org/torvalds/c/40c406c74eb9) | [fs] | ext4: COLLAPSE_RANGE only works on extent-based files |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`31cf0f2c3195`](https://git.kernel.org/torvalds/c/31cf0f2c3195) | [fs] | ext4: delete path dealloc code in ext4_ext_handle_uninitialized_extents |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`0a04b248532b`](https://git.kernel.org/torvalds/c/0a04b248532b) | [fs] | ext4: disable COLLAPSE_RANGE for bigalloc |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`ef24f6c234de`](https://git.kernel.org/torvalds/c/ef24f6c234de) | [fs] | ext4: discard preallocations after removing space |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`7b1b2c1b9c39`](https://git.kernel.org/torvalds/c/7b1b2c1b9c39) | [fs] | ext4: don't calculate total xattr header size unless needed |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`6c5e73d3a26b`](https://git.kernel.org/torvalds/c/6c5e73d3a26b) | [fs] | ext4: enforce we are operating on a regular file in ext4_zero_range() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`4adb6ab3e0fa`](https://git.kernel.org/torvalds/c/4adb6ab3e0fa) | [fs] | ext4: FIBMAP ioctl causes BUG_ON due to handle EXT_MAX_BLOCKS |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`666525dfbdca`](https://git.kernel.org/torvalds/c/666525dfbdca) | [fs] | ext4: fix 64-bit number truncation warning |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`847c6c422aa0`](https://git.kernel.org/torvalds/c/847c6c422aa0) | [fs] | ext4: fix byte order problems introduced by the COLLAPSE_RANGE patches |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`a8680e0d5efd`](https://git.kernel.org/torvalds/c/a8680e0d5efd) | [fs] | ext4: fix COLLAPSE_RANGE failure with 1KB block size |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`1ce01c4a199c`](https://git.kernel.org/torvalds/c/1ce01c4a199c) | [fs] | ext4: fix COLLAPSE_RANGE test failure in data journalling mode |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`8dc79ec4c053`](https://git.kernel.org/torvalds/c/8dc79ec4c053) | [fs] | ext4: fix error handling in ext4_ext_shift_extents |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1149 |
| CANDIDATE | 3.15 | [`036acea2ceab`](https://git.kernel.org/torvalds/c/036acea2ceab) | [fs] | ext4: fix ext4_count_free_clusters() with EXT4FS_DEBUG and bigalloc enabled |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`6dd834effc12`](https://git.kernel.org/torvalds/c/6dd834effc12) | [fs] | ext4: fix extent merging in ext4_ext_shift_path_extents() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`ad6599ab3ac9`](https://git.kernel.org/torvalds/c/ad6599ab3ac9) | [fs] | ext4: fix premature freeing of partial clusters split across leaf blocks |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`2c1d23289bc2`](https://git.kernel.org/torvalds/c/2c1d23289bc2) | [fs] | ext4: fix removing status extents in ext4_collapse_range() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`007649375f6a`](https://git.kernel.org/torvalds/c/007649375f6a) | [fs] | ext4: initialize multi-block allocator before checking block descriptors |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`b8a8684502a0`](https://git.kernel.org/torvalds/c/b8a8684502a0) | [fs] | ext4: Introduce FALLOC_FL_ZERO_RANGE flag for fallocate |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`b8a8684502a0`](https://git.kernel.org/torvalds/c/b8a8684502a0) | [fs] | ext4: Introduce FALLOC_FL_ZERO_RANGE flag for fallocate |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`c4f65706056e`](https://git.kernel.org/torvalds/c/c4f65706056e) | [fs] | ext4: kill i_version support for Hurd-castrated file systems |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`94350ab5c341`](https://git.kernel.org/torvalds/c/94350ab5c341) | [fs] | ext4: make ext4_block_zero_page_range static |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`ab0c00fccf81`](https://git.kernel.org/torvalds/c/ab0c00fccf81) | [fs] | ext4: make sure ex.fe_logical is initialized |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`a9b8241594ad`](https://git.kernel.org/torvalds/c/a9b8241594ad) | [fs] | ext4: merge uninitialized extents |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`622cad1325e4`](https://git.kernel.org/torvalds/c/622cad1325e4) | [fs] | ext4: move ext4_update_i_disksize() into mpage_map_and_submit_extent() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`9337d5d31ab7`](https://git.kernel.org/torvalds/c/9337d5d31ab7) | [fs] | ext4: no need to truncate pagecache twice in collapse range |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`9503c67c93ed`](https://git.kernel.org/torvalds/c/9503c67c93ed) | [fs] | ext4: note the error in ext4_end_bio() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`ed3654eb981f`](https://git.kernel.org/torvalds/c/ed3654eb981f) | [fs] | ext4: optimize Hurd tests when reading/writing inodes |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`0e8b6879f3c2`](https://git.kernel.org/torvalds/c/0e8b6879f3c2) | [fs] | ext4: refactor ext4_fallocate code |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`df3a98b08654`](https://git.kernel.org/torvalds/c/df3a98b08654) | [fs] | ext4: remove an unneeded check in mext_page_mkuptodate() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`e5b30416f363`](https://git.kernel.org/torvalds/c/e5b30416f363) | [fs] | ext4: remove unneeded test of ret variable |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`dc9ddd984df5`](https://git.kernel.org/torvalds/c/dc9ddd984df5) | [fs] | ext4: remove unused ac_ex_scanned |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`c0d268c3661e`](https://git.kernel.org/torvalds/c/c0d268c3661e) | [fs] | ext4: rename: create ext4_renament structure for local vars |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`0d7d5d678bf9`](https://git.kernel.org/torvalds/c/0d7d5d678bf9) | [fs] | ext4: rename: move EMLINK check up |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`bd1af145b993`](https://git.kernel.org/torvalds/c/bd1af145b993) | [fs] | ext4: rename: split out helper functions |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`c57ab39b9658`](https://git.kernel.org/torvalds/c/c57ab39b9658) | [fs] | ext4: return ENOMEM rather than EIO when find_###_page() fails |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`e2cbd5874182`](https://git.kernel.org/torvalds/c/e2cbd5874182) | [fs] | ext4: silence sparse check warning for function ext4_trim_extent |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`ce140cdd9c17`](https://git.kernel.org/torvalds/c/ce140cdd9c17) | [fs] | ext4: silence warnings in extent status tree debugging code |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`a633f5a319cf`](https://git.kernel.org/torvalds/c/a633f5a319cf) | [fs] | ext4: translate fallocate mode bits to strings |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`f282ac19d86f`](https://git.kernel.org/torvalds/c/f282ac19d86f) | [fs] | ext4: Update inode i_size after the preallocation |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`87f7e41636ff`](https://git.kernel.org/torvalds/c/87f7e41636ff) | [fs] | ext4: update PF_MEMALLOC handling in ext4_write_inode() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`86f1ca388914`](https://git.kernel.org/torvalds/c/86f1ca388914) | [fs] | ext4: use EINVAL if not a regular file in ext4_collapse_range() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`1a66c7c3bea5`](https://git.kernel.org/torvalds/c/1a66c7c3bea5) | [fs] | ext4: use filemap_write_and_wait_range() correctly in collapse range |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`694c793fc1ad`](https://git.kernel.org/torvalds/c/694c793fc1ad) | [fs] | ext4: use truncate_pagecache() in collapse range |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.15 | [`0ccb286346c4`](https://git.kernel.org/torvalds/c/0ccb286346c4) | [fs] | fold __get_file_write_access() into its only caller |  | generic code, tag [fs] | 3.10.0-1125.1 |
| CANDIDATE | 3.15 | [`0165e8100be3`](https://git.kernel.org/torvalds/c/0165e8100be3) | [fs] | fold cifs_iovec_read() into its (only) caller |  | generic code, tag [fs] | 3.10.0-279 |
| CANDIDATE | 3.15 | [`03b3b889e79c`](https://git.kernel.org/torvalds/c/03b3b889e79c) | [fs] | fold d_kill() and d_free() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 3.15 | [`5c47e6d0ad60`](https://git.kernel.org/torvalds/c/5c47e6d0ad60) | [fs] | fold try_prune_one_dentry() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 3.15 | [`8fc61d92630d`](https://git.kernel.org/torvalds/c/8fc61d92630d) | [fs] | fs: prevent doing FALLOC_FL_ZERO_RANGE on append only file |  | generic code, tag [fs] | 3.10.0-1027 |
| CANDIDATE | 3.15 | [`58bda1da4b3c`](https://git.kernel.org/torvalds/c/58bda1da4b3c) | [fs] | fuse/dev: use atomic maps |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.15 | [`1e18bda86e2d`](https://git.kernel.org/torvalds/c/1e18bda86e2d) | [fs] | fuse: add .write_inode |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.15 | [`7736e8cc51bb`](https://git.kernel.org/torvalds/c/7736e8cc51bb) | [fs] | fuse: add __exit to fuse_ctl_cleanup |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.15 | [`1560c974dcd4`](https://git.kernel.org/torvalds/c/1560c974dcd4) | [fs] | fuse: add renameat2 support |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-220 |
| CANDIDATE | 3.15 | [`ab9e13f7c771`](https://git.kernel.org/torvalds/c/ab9e13f7c771) | [fs] | fuse: allow ctime flushing to userspace |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.15 | [`4adb83029de8`](https://git.kernel.org/torvalds/c/4adb83029de8) | [fs] | fuse: check fallocate mode |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.15 | [`22401e7b7a68`](https://git.kernel.org/torvalds/c/22401e7b7a68) | [fs] | fuse: clean up fsync |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.15 | [`3ad22c62dd23`](https://git.kernel.org/torvalds/c/3ad22c62dd23) | [fs] | fuse: clear FUSE_I_CTIME_DIRTY flag on setattr |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.15 | [`4ace1f85a7cd`](https://git.kernel.org/torvalds/c/4ace1f85a7cd) | [fs] | fuse: clear MS_I_VERSION |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.15 | [`d31433c8b06d`](https://git.kernel.org/torvalds/c/d31433c8b06d) | [fs] | fuse: do not use uninitialized i_mode |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.15 | [`aeb4eb6b5526`](https://git.kernel.org/torvalds/c/aeb4eb6b5526) | [fs] | fuse: fix mtime update error in fsync |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.15 | [`93d2269d2ffb`](https://git.kernel.org/torvalds/c/93d2269d2ffb) | [fs] | fuse: fuse: fallocate: use file_update_time() |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.15 | [`8b47e73e91c0`](https://git.kernel.org/torvalds/c/8b47e73e91c0) | [fs] | fuse: remove .update_time |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.15 | [`31f3267b4ba1`](https://git.kernel.org/torvalds/c/31f3267b4ba1) | [fs] | fuse: trust kernel i_ctime only |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.15 | [`75caeecdf9c7`](https://git.kernel.org/torvalds/c/75caeecdf9c7) | [fs] | fuse: update mtime on open(O_TRUNC) in atomic_o_trunc mode |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.15 | [`009dd694e820`](https://git.kernel.org/torvalds/c/009dd694e820) | [fs] | fuse: update mtime on truncate(2) |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.15 | [`7f4b36f9bb93`](https://git.kernel.org/torvalds/c/7f4b36f9bb93) | [fs] | get rid of files_defer_init() |  | generic code, tag [fs] | 3.10.0-474 |
| CANDIDATE | 3.15 | [`627bf81ac625`](https://git.kernel.org/torvalds/c/627bf81ac625) | [fs] | get rid of pointless checks for NULL ->i_op |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 3.15 | [`d4e839d4a9dc`](https://git.kernel.org/torvalds/c/d4e839d4a9dc) | [fs] | jbd2: add transaction to checkpoint list earlier |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`42cf3452d5f5`](https://git.kernel.org/torvalds/c/42cf3452d5f5) | [fs] | jbd2: calculate statistics without holding j_state_lock and j_list_lock |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`d2eb0b998990`](https://git.kernel.org/torvalds/c/d2eb0b998990) | [fs] | jbd2: check jh->b_transaction without taking j_list_lock |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`3469a32a1e94`](https://git.kernel.org/torvalds/c/3469a32a1e94) | [fs] | jbd2: don't hold j_state_lock while calling wake_up() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`df3c1e9a05ff`](https://git.kernel.org/torvalds/c/df3c1e9a05ff) | [fs] | jbd2: don't unplug after writing revoke records |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`66a4cb187b92`](https://git.kernel.org/torvalds/c/66a4cb187b92) | [fs] | jbd2: improve error messages for inconsistent journal heads |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`7747e6d028b8`](https://git.kernel.org/torvalds/c/7747e6d028b8) | [fs] | jbd2: mark file-local functions as static |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`6e4862a5bb9d`](https://git.kernel.org/torvalds/c/6e4862a5bb9d) | [fs] | jbd2: minimize region locked by j_list_lock in journal_get_create_access() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.15 | [`555724a831b4`](https://git.kernel.org/torvalds/c/555724a831b4) | [fs] | kernfs, sysfs, cgroup: restrict extra perm check on open to sysfs |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.15 | [`555724a831b4`](https://git.kernel.org/torvalds/c/555724a831b4) | [fs] | kernfs, sysfs, cgroup: restrict extra perm check on open to sysfs |  | generic code, tag [fs] | 3.10.0-646 |
| CANDIDATE | 3.15 | [`b03dfdec0381`](https://git.kernel.org/torvalds/c/b03dfdec0381) | [fs] | locks: add __acquires and __releases annotations to locks_start and locks_stop |  | generic code, tag [fs] | 3.10.0-704 |
| CANDIDATE | 3.15 | [`24cbe7845ea5`](https://git.kernel.org/torvalds/c/24cbe7845ea5) | [fs] | locks: close potential race between setlease and open |  | generic code, tag [fs] | 3.10.0-313 |
| CANDIDATE | 3.15 | [`6ca10ed8edfd`](https://git.kernel.org/torvalds/c/6ca10ed8edfd) | [fs] | locks: remove "inline" qualifier from fl_link manipulation functions |  | generic code, tag [fs] | 3.10.0-704 |
| CANDIDATE | 3.15 | [`83f936c75e36`](https://git.kernel.org/torvalds/c/83f936c75e36) | [fs] | mark struct file that had write access grabbed by open() |  | generic code, tag [fs] | 3.10.0-1125.1 |
| CANDIDATE | 3.15 | [`fbb32750a62d`](https://git.kernel.org/torvalds/c/fbb32750a62d) | [fs] | pipe: kill ->map() and ->unmap() |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 3.15 | [`49d063cb3532`](https://git.kernel.org/torvalds/c/49d063cb3532) | [fs] | proc: show mnt_id in /proc/pid/fdinfo |  | CONFIG_PROC_FS=y in A37 | 3.10.0-285 |
| CANDIDATE | 3.15 | [`046b961b45f9`](https://git.kernel.org/torvalds/c/046b961b45f9) | [fs] | shrink_dentry_list(): take parent's ->d_lock earlier |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 3.15 | [`e55fd011549e`](https://git.kernel.org/torvalds/c/e55fd011549e) | [fs] | split dentry_kill() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 3.15 | [`fa4cd451cceb`](https://git.kernel.org/torvalds/c/fa4cd451cceb) | [fs] | sysfs, kobject: add sysfs wrapper for kernfs_enable_ns() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.15 | [`e1ed9bc0ee20`](https://git.kernel.org/torvalds/c/e1ed9bc0ee20) | [fs] | sysfs: create bin_attributes under the requested group |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.15 | [`f5c16f29bf5e`](https://git.kernel.org/torvalds/c/f5c16f29bf5e) | [fs] | sysfs: make sure read buffer is zeroed |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.15 | [`da1ce0670c14`](https://git.kernel.org/torvalds/c/da1ce0670c14) | [fs] | vfs: add cross-rename |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | 3.15 | [`44b1d53043c4`](https://git.kernel.org/torvalds/c/44b1d53043c4) | [fs] | vfs: add d_is_dir() |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | 3.15 | [`0a7c3937a1f2`](https://git.kernel.org/torvalds/c/0a7c3937a1f2) | [fs] | vfs: add RENAME_NOREPLACE flag |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | 3.15 | [`520c8b165052`](https://git.kernel.org/torvalds/c/520c8b165052) | [fs] | vfs: add renameat2 syscall |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | 3.15 | [`8ffcb32e0523`](https://git.kernel.org/torvalds/c/8ffcb32e0523) | [fs] | vfs: Make delayed_free() call free_vfsmnt() |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.16 | [`fb2d44838320`](https://git.kernel.org/torvalds/c/fb2d44838320) | [fs] | aio: report error from io_destroy() when threads race in io_destroy() |  | CONFIG_AIO=y in A37 | 3.10.0-183 |
| CANDIDATE | 3.16 | [`5d60125530b0`](https://git.kernel.org/torvalds/c/5d60125530b0) | [fs] | ext4: add missing BUFFER_TRACE before ext4_journal_get_write_access |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.16 | [`230b8c1a7b38`](https://git.kernel.org/torvalds/c/230b8c1a7b38) | [fs] | ext4: avoid unneeded lookup when xattr name is invalid |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.16 | [`94d4c066a4ff`](https://git.kernel.org/torvalds/c/94d4c066a4ff) | [fs] | ext4: clarify ext4_error message in ext4_mb_generate_buddy_error() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.16 | [`e43bb4e612b4`](https://git.kernel.org/torvalds/c/e43bb4e612b4) | [fs] | ext4: decrement free clusters/inodes counters when block group declared bad |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.16 | [`029b10c5a8d9`](https://git.kernel.org/torvalds/c/029b10c5a8d9) | [fs] | ext4: do not destroy ext4_groupinfo_caches if ext4_mb_init() fails |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.16 | [`3f1f9b851311`](https://git.kernel.org/torvalds/c/3f1f9b851311) | [fs] | ext4: fix a potential deadlock in __ext4_es_shrink() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.16 | [`1beeef1b5643`](https://git.kernel.org/torvalds/c/1beeef1b5643) | [fs] | ext4: fix block bitmap initialization under sparse_super2 |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.16 | [`77ea2a4ba657`](https://git.kernel.org/torvalds/c/77ea2a4ba657) | [fs] | ext4: Fix block zeroing when punching holes in indirect block files |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.16 | [`1c8349a17137`](https://git.kernel.org/torvalds/c/1c8349a17137) | [fs] | ext4: fix data integrity sync in ordered mode |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.16 | [`bf40c92635d6`](https://git.kernel.org/torvalds/c/bf40c92635d6) | [fs] | ext4: fix potential null pointer dereference in ext4_free_inode |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.16 | [`e1ee60fd8967`](https://git.kernel.org/torvalds/c/e1ee60fd8967) | [fs] | ext4: fix ZERO_RANGE test failure in data journalling |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.16 | [`090f32ee4ef0`](https://git.kernel.org/torvalds/c/090f32ee4ef0) | [fs] | ext4: get rid of EXT4_MAP_UNINIT flag |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.16 | [`bd9db175dde1`](https://git.kernel.org/torvalds/c/bd9db175dde1) | [fs] | ext4: handle symlink properly with inline_data |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.16 | [`c197855ea141`](https://git.kernel.org/torvalds/c/c197855ea141) | [fs] | ext4: make local functions static |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.16 | [`d745a8c20c1f`](https://git.kernel.org/torvalds/c/d745a8c20c1f) | [fs] | ext4: reduce contention on s_orphan_lock |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.16 | [`236f5ecb4a58`](https://git.kernel.org/torvalds/c/236f5ecb4a58) | [fs] | ext4: remove obsoleted check |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.16 | [`c8b459f492cb`](https://git.kernel.org/torvalds/c/c8b459f492cb) | [fs] | ext4: remove unnecessary double parentheses |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.16 | [`556615dcbf38`](https://git.kernel.org/torvalds/c/556615dcbf38) | [fs] | ext4: rename uninitialized extents to unwritten |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.16 | [`f9ae9cf5d72b`](https://git.kernel.org/torvalds/c/f9ae9cf5d72b) | [fs] | ext4: revert commit which was causing fs corruption after journal replays |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.16 | [`0baaea64009d`](https://git.kernel.org/torvalds/c/0baaea64009d) | [fs] | ext4: use EXT_MAX_BLOCKS in ext4_es_can_be_merged() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.16 | [`cc299a98eb13`](https://git.kernel.org/torvalds/c/cc299a98eb13) | [fs] | fs/notify/fanotify/fanotify_user.c: fix FAN_MARK_FLUSH flag checking |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 3.16 | [`efa8f7e5d7bc`](https://git.kernel.org/torvalds/c/efa8f7e5d7bc) | [fs] | fs/notify/mark.c: trivial cleanup |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 3.16 | [`f74373a5cc7a`](https://git.kernel.org/torvalds/c/f74373a5cc7a) (loose) | [fs] | fs: /proc/stat: convert to single_open_size() |  | generic code, tag [fs] | 3.10.0-203 |
| CANDIDATE | 3.16 | [`d7afaec0b564`](https://git.kernel.org/torvalds/c/d7afaec0b564) | [fs] | fuse: add FUSE_NO_OPEN_SUPPORT flag to INIT |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.16 | [`c55a01d360af`](https://git.kernel.org/torvalds/c/c55a01d360af) | [fs] | fuse: avoid scheduling while atomic |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.16 | [`27f1b36326bc`](https://git.kernel.org/torvalds/c/27f1b36326bc) | [fs] | fuse: release temporary page if fuse_writepage_locked() failed |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.16 | [`4237ba43b65a`](https://git.kernel.org/torvalds/c/4237ba43b65a) | [fs] | fuse: restructure ->rename2() |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-220 |
| CANDIDATE | 3.16 | [`a800bad36619`](https://git.kernel.org/torvalds/c/a800bad36619) | [fs] | fuse: s_time_gran fix |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 3.16 | [`126b9d4365b1`](https://git.kernel.org/torvalds/c/126b9d4365b1) | [fs] | fuse: Timeout comparison fix |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-191 |
| CANDIDATE | 3.16 | [`92f778dd5d2d`](https://git.kernel.org/torvalds/c/92f778dd5d2d) | [fs] | inotify: convert use of typedef ctl_table to struct ctl_table |  | CONFIG_INOTIFY_USER=y in A37 | 3.10.0-593 |
| CANDIDATE | 3.16 | [`11d200e95f3e`](https://git.kernel.org/torvalds/c/11d200e95f3e) | [fs] | lib: add glibc style strchrnul() variant |  | generic code, tag [fs] | 3.10.0-374 |
| CANDIDATE | 3.16 | [`62af4f1f7df4`](https://git.kernel.org/torvalds/c/62af4f1f7df4) | [fs] | locks: add some tracepoints in the lease handling code |  | generic code, tag [fs] | 3.10.0-313 |
| CANDIDATE | 3.16 | [`c86c97ff42cd`](https://git.kernel.org/torvalds/c/c86c97ff42cd) | [fs] | mm: softdirty: clear VM_SOFTDIRTY flag inside clear_refs_write() instead of clear_soft_dirty() |  | generic code, tag [fs] | 3.10.0-378 |
| CANDIDATE | 3.16 | [`f0d1bec9d58d`](https://git.kernel.org/torvalds/c/f0d1bec9d58d) | [fs] | new helper: copy_page_from_iter() |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | 3.16 | [`4e66d445d042`](https://git.kernel.org/torvalds/c/4e66d445d042) | [fs] | simple_xattr: permit 0-size extended attributes |  | generic code, tag [fs] | 3.10.0-838 |
| CANDIDATE | 3.16 | [`f4aacea2f5d1`](https://git.kernel.org/torvalds/c/f4aacea2f5d1) | [fs] | sysctl: allow for strict write position handling |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 3.16 | [`f88083005ab3`](https://git.kernel.org/torvalds/c/f88083005ab3) | [fs] | sysctl: clean up char buffer arguments |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 3.16 | [`2ca9bb456ada`](https://git.kernel.org/torvalds/c/2ca9bb456ada) | [fs] | sysctl: refactor sysctl string writing logic |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 3.16 | [`78e1da627040`](https://git.kernel.org/torvalds/c/78e1da627040) | [fs] | sysfs.h: don't return a void-valued expression in sysfs_remove_file |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.16 | [`9f70a40128a4`](https://git.kernel.org/torvalds/c/9f70a40128a4) | [fs] | sysfs: fix attribute_group bin file path on removal |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.16 | [`6d2b6170c891`](https://git.kernel.org/torvalds/c/6d2b6170c891) | [fs] | vfs: fix check for fallocate on active swapfile |  | generic code, tag [fs] | 3.10.0-1027 |
| CANDIDATE | 3.17 | [`795a2f22a8ea`](https://git.kernel.org/torvalds/c/795a2f22a8ea) | [fs] | acct() should honour the limits from the very beginning |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.17 | [`8ae31240ccc8`](https://git.kernel.org/torvalds/c/8ae31240ccc8) | [fs] | Add missing definitions for CIFS File System Attributes |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | 3.17 | [`3d1a3745d8ca`](https://git.kernel.org/torvalds/c/3d1a3745d8ca) | [fs] | Add sparse file support to SMB2/SMB3 mounts |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | 3.17 | [`f29ebb47d5bb`](https://git.kernel.org/torvalds/c/f29ebb47d5bb) | [fs] | Add worker function to set allocation size |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | 3.17 | [`2ff396be602f`](https://git.kernel.org/torvalds/c/2ff396be602f) | [fs] | aio: add missing smp_rmb() in read_events_ring |  | CONFIG_AIO=y in A37 | 3.10.0-183 |
| CANDIDATE | 3.17 | [`6098b45b32e6`](https://git.kernel.org/torvalds/c/6098b45b32e6) | [fs] | aio: block exit_aio() until all context requests are completed |  | CONFIG_AIO=y in A37 | 3.10.0-183 |
| CANDIDATE | 3.17 | [`d856f32a86b2`](https://git.kernel.org/torvalds/c/d856f32a86b2) | [fs] | aio: fix reqs_available handling |  | CONFIG_AIO=y in A37 | 3.10.0-183 |
| CANDIDATE | 3.17 | [`a0dbc56610b3`](https://git.kernel.org/torvalds/c/a0dbc56610b3) | [fs] | bad_inode: add ->rename2() |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | 3.17 | [`254c4407cb84`](https://git.kernel.org/torvalds/c/254c4407cb84) | [fs] | bio: modify __bio_add_page() to accept pages that don't start a new segment |  | generic code, tag [fs] | 3.10.0-257 |
| CANDIDATE | 3.17 | [`7177a9c4b509`](https://git.kernel.org/torvalds/c/7177a9c4b509) (loose) | [fs] | call rename2 if exists |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | 3.17 | [`ca5d13fc33cc`](https://git.kernel.org/torvalds/c/ca5d13fc33cc) | [fs] | Clarify Kconfig help text for CIFS and SMB2/SMB3 |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | 3.17 | [`d43cc79343df`](https://git.kernel.org/torvalds/c/d43cc79343df) | [fs] | Cleanup sparse file support by creating worker function for it |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | 3.17 | [`75a2352d0110`](https://git.kernel.org/torvalds/c/75a2352d0110) | [fs] | dcache: close d_move race in d_splice_alias |  | generic code, tag [fs] | 3.10.0-974 |
| CANDIDATE | 3.17 | [`908790fa3b77`](https://git.kernel.org/torvalds/c/908790fa3b77) | [fs] | dcache: d_splice_alias mustn't create directory aliases |  | generic code, tag [fs] | 3.10.0-974 |
| CANDIDATE | 3.17 | [`95ad5c291313`](https://git.kernel.org/torvalds/c/95ad5c291313) | [fs] | dcache: d_splice_alias should detect loops |  | generic code, tag [fs] | 3.10.0-974 |
| CANDIDATE | 3.17 | [`da093a9b76ef`](https://git.kernel.org/torvalds/c/da093a9b76ef) | [fs] | dcache: d_splice_alias should ignore DCACHE_DISCONNECTED |  | generic code, tag [fs] | 3.10.0-974 |
| CANDIDATE | 3.17 | [`3f70bd51cb44`](https://git.kernel.org/torvalds/c/3f70bd51cb44) | [fs] | dcache: move d_splice_alias |  | generic code, tag [fs] | 3.10.0-974 |
| CANDIDATE | 3.17 | [`3064c3563ba4`](https://git.kernel.org/torvalds/c/3064c3563ba4) | [fs] | death to mnt_pinned |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.17 | [`0aec09d049d7`](https://git.kernel.org/torvalds/c/0aec09d049d7) | [fs] | drop ->s_umount around acct_auto_close() |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.17 | [`31742c5a3317`](https://git.kernel.org/torvalds/c/31742c5a3317) | [fs] | enable fallocate punch hole ("fallocate -p") for SMB3 |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | 3.17 | [`c680e41b3a2e`](https://git.kernel.org/torvalds/c/c680e41b3a2e) | [fs] | eventpoll: fix uninitialized variable in epoll_ctl |  | CONFIG_EPOLL=y in A37 | 3.10.0-871 |
| CANDIDATE | 3.17 | [`4b1f1660710c`](https://git.kernel.org/torvalds/c/4b1f1660710c) | [fs] | ext4: add i_data_sem sanity check |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.17 | [`a9cfcd63e8d2`](https://git.kernel.org/torvalds/c/a9cfcd63e8d2) | [fs] | ext4: avoid trying to kfree an ERR_PTR pointer |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.17 | [`40b163f1c45f`](https://git.kernel.org/torvalds/c/40b163f1c45f) | [fs] | ext4: check inline directory before converting |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.17 | [`ee98fa3a8b14`](https://git.kernel.org/torvalds/c/ee98fa3a8b14) | [fs] | ext4: fix COLLAPSE RANGE test for bigalloc file systems |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.17 | [`69dc95364052`](https://git.kernel.org/torvalds/c/69dc95364052) | [fs] | ext4: fix incorect journal credits reservation in ext4_zero_range |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.17 | [`6e2631463f3a`](https://git.kernel.org/torvalds/c/6e2631463f3a) | [fs] | ext4: fix incorrect locking in move_extent_per_page |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.17 | [`4f579ae7de56`](https://git.kernel.org/torvalds/c/4f579ae7de56) | [fs] | ext4: fix punch hole on files with indirect mapping |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.17 | [`d80d448c6c5b`](https://git.kernel.org/torvalds/c/d80d448c6c5b) | [fs] | ext4: fix same-dir rename when inline data directory overflows |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.17 | [`c174e6d6979a`](https://git.kernel.org/torvalds/c/c174e6d6979a) | [fs] | ext4: fix transaction issues for ext4_fallocate and ext_zero_range |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.17 | [`b27b1535acc0`](https://git.kernel.org/torvalds/c/b27b1535acc0) | [fs] | ext4: fix wrong size computation in ext4_mb_normalize_request() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.17 | [`83447ccb4df6`](https://git.kernel.org/torvalds/c/83447ccb4df6) | [fs] | ext4: make ext4_has_inline_data() as a inline function |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.17 | [`36de928641ee`](https://git.kernel.org/torvalds/c/36de928641ee) | [fs] | ext4: propagate errors up to ext4_find_entry()'s callers |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.17 | [`d5e03cbb0c88`](https://git.kernel.org/torvalds/c/d5e03cbb0c88) | [fs] | ext4: rearrange initialization to fix EXT4FS_DEBUG |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.17 | [`71d4f7d03214`](https://git.kernel.org/torvalds/c/71d4f7d03214) | [fs] | ext4: remove metadata reservation checks |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.17 | [`590a141863f7`](https://git.kernel.org/torvalds/c/590a141863f7) | [fs] | ext4: remove readpage() check in ext4_mmap_file() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.17 | [`6603120e96ea`](https://git.kernel.org/torvalds/c/6603120e96ea) | [fs] | ext4: update i_disksize coherently with block allocation on error path |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.17 | [`29faed1638e6`](https://git.kernel.org/torvalds/c/29faed1638e6) | [fs] | ext4: use correct depth value |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.17 | [`f5be3e29127a`](https://git.kernel.org/torvalds/c/f5be3e29127a) | [fs] | fix bogus read_seqretry() checks introduced in b37199e |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.17 | [`12a5b5294cb1`](https://git.kernel.org/torvalds/c/12a5b5294cb1) | [fs] | fix copy_tree() regression |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.17 | [`81b6b0619760`](https://git.kernel.org/torvalds/c/81b6b0619760) | [fs] | fix EBUSY on umount() from MNT_SHRINKABLE |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.17 | [`364d42930d96`](https://git.kernel.org/torvalds/c/364d42930d96) | [fs] | Fix mfsymlinks file size check |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | 3.17 | [`19e81573fca7`](https://git.kernel.org/torvalds/c/19e81573fca7) | [fs] | Fix problem recognizing symlinks |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | 3.17 | [`920bce20d748`](https://git.kernel.org/torvalds/c/920bce20d748) | [fs] | fs-cache: Reduce cookie ref count if submit fails |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 3.17 | [`3e1199dcad00`](https://git.kernel.org/torvalds/c/3e1199dcad00) | [fs] | fs-cache: refcount becomes corrupt under vma pressure |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 3.17 | [`9776de96e515`](https://git.kernel.org/torvalds/c/9776de96e515) | [fs] | fs-cache: Timeout for releasepage() |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 3.17 | [`0692dedcf64b`](https://git.kernel.org/torvalds/c/0692dedcf64b) | [fs] | fs/proc/vmcore.c:mmap_vmcore: skip non-ram pages reported by hypervisors |  | CONFIG_PROC_FS=y in A37 | 3.10.0-1151 |
| CANDIDATE | 3.17 | [`8ba8fa917093`](https://git.kernel.org/torvalds/c/8ba8fa917093) | [fs] | fsnotify: rename event handling functions |  | generic code, tag [fs] | 3.10.0-460 |
| CANDIDATE | 3.17 | [`88b368f27a09`](https://git.kernel.org/torvalds/c/88b368f27a09) | [fs] | get rid of propagate_umount() mistakenly treating slaves as busy |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.17 | [`9a423bb6e357`](https://git.kernel.org/torvalds/c/9a423bb6e357) | [fs] | hostfs: support rename flags |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | 3.17 | [`ad3829cf1db5`](https://git.kernel.org/torvalds/c/ad3829cf1db5) | [fs] | Incorrect error returned on setting file compressed on SMB2 |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | 3.17 | [`db9ee220361d`](https://git.kernel.org/torvalds/c/db9ee220361d) | [fs] | jbd2: fix descriptor block size handling errors with journal_csum |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.17 | [`84be0ffc9043`](https://git.kernel.org/torvalds/c/84be0ffc9043) | [fs] | libxfs: move header files |  | generic code, tag [fs] | 3.10.0-243 |
| CANDIDATE | 3.17 | [`30f712c9dd69`](https://git.kernel.org/torvalds/c/30f712c9dd69) | [fs] | libxfs: move source files |  | generic code, tag [fs] | 3.10.0-243 |
| CANDIDATE | 3.17 | [`ed9814d85810`](https://git.kernel.org/torvalds/c/ed9814d85810) | [fs] | locks: defer freeing locks in locks_delete_lock until after i_lock has been dropped |  | generic code, tag [fs] | 3.10.0-667 |
| CANDIDATE | 3.17 | [`b84d49f9440b`](https://git.kernel.org/torvalds/c/b84d49f9440b) | [fs] | locks: don't reuse file_lock in __posix_lock_file |  | generic code, tag [fs] | 3.10.0-667 |
| CANDIDATE | 3.17 | [`17c0a5aaffa6`](https://git.kernel.org/torvalds/c/17c0a5aaffa6) | [fs] | make acct_kill() wait for file closing |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.17 | [`87e6d49a000f`](https://git.kernel.org/torvalds/c/87e6d49a000f) | [fs] | mm: softdirty: addresses before VMAs in PTE holes aren't softdirty |  | generic code, tag [fs] | 3.10.0-977 |
| CANDIDATE | 3.17 | [`68b5a6524856`](https://git.kernel.org/torvalds/c/68b5a6524856) | [fs] | mm: softdirty: respect VM_SOFTDIRTY in PTE holes |  | generic code, tag [fs] | 3.10.0-977 |
| CANDIDATE | 3.17 | [`d03b29a271eb`](https://git.kernel.org/torvalds/c/d03b29a271eb) | [fs] | namei: trivial fix to vfs_rename_dir comment |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | 3.17 | [`728dba3a39c6`](https://git.kernel.org/torvalds/c/728dba3a39c6) | [fs] | namespaces: Use task_lock and not rcu to protect nsproxy |  | generic code, tag [fs] | 3.10.0-343 |
| CANDIDATE | 3.17 | [`fc8e5a644c20`](https://git.kernel.org/torvalds/c/fc8e5a644c20) | [fs] | nfsd4: convert comma to semicolon |  | generic code, tag [fs] | 3.10.0-172 |
| CANDIDATE | 3.17 | [`57a371442112`](https://git.kernel.org/torvalds/c/57a371442112) | [fs] | nfsd4: CREATE_SESSION should update backchannel immediately |  | generic code, tag [fs] | 3.10.0-172 |
| CANDIDATE | 3.17 | [`29c353b3fe54`](https://git.kernel.org/torvalds/c/29c353b3fe54) | [fs] | nfsd4: define svcxdr_dupstr to share some common code |  | generic code, tag [fs] | 3.10.0-172 |
| CANDIDATE | 3.17 | [`15b23ef5d348`](https://git.kernel.org/torvalds/c/15b23ef5d348) | [fs] | nfsd4: fix corruption of NFSv4 read data |  | generic code, tag [fs] | 3.10.0-191 |
| CANDIDATE | 3.17 | [`83e452fee81c`](https://git.kernel.org/torvalds/c/83e452fee81c) | [fs] | nfsd4: fix out of date comment |  | generic code, tag [fs] | 3.10.0-172 |
| CANDIDATE | 3.17 | [`aee377644146`](https://git.kernel.org/torvalds/c/aee377644146) | [fs] | nfsd4: fix rd_dircount enforcement |  | generic code, tag [fs] | 3.10.0-172 |
| CANDIDATE | 3.17 | [`bcaab953b1d3`](https://git.kernel.org/torvalds/c/bcaab953b1d3) | [fs] | nfsd4: remove nfs4_acl_new |  | generic code, tag [fs] | 3.10.0-172 |
| CANDIDATE | 3.17 | [`ce043ac826f3`](https://git.kernel.org/torvalds/c/ce043ac826f3) | [fs] | nfsd4: remove unused defer_free argument |  | generic code, tag [fs] | 3.10.0-172 |
| CANDIDATE | 3.17 | [`7fb84306f55d`](https://git.kernel.org/torvalds/c/7fb84306f55d) | [fs] | nfsd4: rename cr_linkname->cr_data |  | generic code, tag [fs] | 3.10.0-172 |
| CANDIDATE | 3.17 | [`d5e233832410`](https://git.kernel.org/torvalds/c/d5e233832410) | [fs] | nfsd4: replace defer_free by svcxdr_tmpalloc |  | generic code, tag [fs] | 3.10.0-172 |
| CANDIDATE | 3.17 | [`4770d722014b`](https://git.kernel.org/torvalds/c/4770d722014b) | [fs] | nfsd4: use cl_lock to synchronize all stateid idr calls |  | generic code, tag [fs] | 3.10.0-172 |
| CANDIDATE | 3.17 | [`5d6031ca742f`](https://git.kernel.org/torvalds/c/5d6031ca742f) | [fs] | nfsd4: zero op arguments beyond the 8th compound op |  | generic code, tag [fs] | 3.10.0-172 |
| CANDIDATE | 3.17 | [`f6e826ca37a5`](https://git.kernel.org/torvalds/c/f6e826ca37a5) | [fs] | proc: convert /proc/$PID/schedstat to seq_file interface |  | CONFIG_PROC_FS=y in A37 | 3.10.0-494 |
| CANDIDATE | 3.17 | [`6ba8ed79a3cc`](https://git.kernel.org/torvalds/c/6ba8ed79a3cc) | [fs] | proc: Have net show up under /proc/<tgid>/task/<tid> |  | CONFIG_PROC_FS=y in A37 | 3.10.0-828 |
| CANDIDATE | 3.17 | [`1ea06bec78a1`](https://git.kernel.org/torvalds/c/1ea06bec78a1) | [fs] | quota: avoid unnecessary dqget()/dqput() calls |  | CONFIG_QUOTA=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.17 | [`606cdcca04a6`](https://git.kernel.org/torvalds/c/606cdcca04a6) | [fs] | quota: protect Q_GETFMT by dqonoff_mutex |  | CONFIG_QUOTA=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.17 | [`b9ba6f94b238`](https://git.kernel.org/torvalds/c/b9ba6f94b238) | [fs] | quota: remove dqptr_sem |  | CONFIG_QUOTA=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.17 | [`9eb6463f31cf`](https://git.kernel.org/torvalds/c/9eb6463f31cf) | [fs] | quota: simplify remove_inode_dquot_ref() |  | CONFIG_QUOTA=y in A37 | 3.10.0-199 |
| CANDIDATE | 3.17 | [`27924075b548`](https://git.kernel.org/torvalds/c/27924075b548) | [fs] | Remove sparse build warning |  | generic code, tag [fs] | 3.10.0-279 |
| CANDIDATE | 3.17 | [`00cfaa943ec3`](https://git.kernel.org/torvalds/c/00cfaa943ec3) | [fs] | replace strict_strto calls |  | generic code, tag [fs] | 3.10.0-172 |
| CANDIDATE | 3.17 | [`0f23ae74f589`](https://git.kernel.org/torvalds/c/0f23ae74f589) | [fs] | revert "btrfs: device_list_add() should not update list when mounted" |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.17 | [`adcda652c92c`](https://git.kernel.org/torvalds/c/adcda652c92c) | [fs] | rpc_pipe: Drop memory allocation cast |  | generic code, tag [fs] | 3.10.0-172 |
| CANDIDATE | 3.17 | [`cdd37e23092c`](https://git.kernel.org/torvalds/c/cdd37e23092c) | [fs] | separate namespace-independent parts of filling acct_t |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.17 | [`e25ff11ff16a`](https://git.kernel.org/torvalds/c/e25ff11ff16a) | [fs] | split the slow path in acct_process() off |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.17 | [`1629d0eb3ead`](https://git.kernel.org/torvalds/c/1629d0eb3ead) | [fs] | start carving bsd_acct_struct up |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.17 | [`efb170c22867`](https://git.kernel.org/torvalds/c/efb170c22867) | [fs] | take fs_pin stuff to fs/* |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.17 | [`af9c4957cf21`](https://git.kernel.org/torvalds/c/af9c4957cf21) | [fs] | timerfd: Implement show_fdinfo method |  | CONFIG_TIMERFD=y in A37 | 3.10.0-285 |
| CANDIDATE | 3.17 | [`5442e9fbd7c2`](https://git.kernel.org/torvalds/c/5442e9fbd7c2) | [fs] | timerfd: Implement timerfd_ioctl method to restore timerfd_ctx::ticks, v3 |  | CONFIG_TIMERFD=y in A37 | 3.10.0-285 |
| CANDIDATE | 3.17 | [`2bb93d244157`](https://git.kernel.org/torvalds/c/2bb93d244157) | [fs] | Trivial whitespace fix |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | 3.17 | [`81691503b209`](https://git.kernel.org/torvalds/c/81691503b209) | [fs] | Update cifs version |  | generic code, tag [fs] | 3.10.0-279 |
| CANDIDATE | 3.17 | [`69af38dbc5b4`](https://git.kernel.org/torvalds/c/69af38dbc5b4) | [fs] | Update version number displayed by modinfo for cifs.ko |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | 3.17 | [`b8faf035ea9d`](https://git.kernel.org/torvalds/c/b8faf035ea9d) | [fs] | vfs: allow ->d_manage() to declare -EISDIR in rcu_walk mode |  | generic code, tag [fs] | 3.10.0-621 |
| CANDIDATE | 3.18 | [`835f252c6deb`](https://git.kernel.org/torvalds/c/835f252c6deb) | [fs] | aio: fix uncorrent dirty pages accouting when truncating AIO ring buffer |  | CONFIG_AIO=y in A37 | 3.10.0-224 |
| CANDIDATE | 3.18 | [`e85322d21cfe`](https://git.kernel.org/torvalds/c/e85322d21cfe) | [fs] | audit: cull redundancy in audit_rule_change |  | CONFIG_AUDIT=y in A37 | 3.10.0-351 |
| CANDIDATE | 3.18 | [`2991dd2b0117`](https://git.kernel.org/torvalds/c/2991dd2b0117) | [fs] | audit: rename audit_log_remove_rule to disambiguate for trees |  | CONFIG_AUDIT=y in A37 | 3.10.0-351 |
| CANDIDATE | 3.18 | [`739c95038e68`](https://git.kernel.org/torvalds/c/739c95038e68) | [fs] | audit: WARN if audit_rule_change called illegally |  | CONFIG_AUDIT=y in A37 | 3.10.0-351 |
| CANDIDATE | 3.18 | [`432f16e64f50`](https://git.kernel.org/torvalds/c/432f16e64f50) (loose) | [fs] | clarify rate limit suppressed buffer I/O errors |  | generic code, tag [fs] | 3.10.0-386 |
| CANDIDATE | 3.18 | [`9ea459e110df`](https://git.kernel.org/torvalds/c/9ea459e110df) | [fs] | delayed mntput |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.18 | [`52c198c6820f`](https://git.kernel.org/torvalds/c/52c198c6820f) | [fs] | ext4: add sysfs entry showing whether the fs contains errors |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`4f879ca687a5`](https://git.kernel.org/torvalds/c/4f879ca687a5) | [fs] | ext4: bail early when clearing inode journal flag fails |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.18 | [`6050d47adcad`](https://git.kernel.org/torvalds/c/6050d47adcad) | [fs] | ext4: bail out from make_indexed_dir() on first error |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.18 | [`6b992ff25658`](https://git.kernel.org/torvalds/c/6b992ff25658) | [fs] | ext4: disallow changing journal_csum option during remount |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.18 | [`684de5748660`](https://git.kernel.org/torvalds/c/684de5748660) | [fs] | ext4: don't keep using page if inline conversion fails |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`e2bfb088fac0`](https://git.kernel.org/torvalds/c/e2bfb088fac0) | [fs] | ext4: don't orphan or truncate the boot loader inode |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`754cfed6bbcf`](https://git.kernel.org/torvalds/c/754cfed6bbcf) | [fs] | ext4: drop the EXT4_STATE_DELALLOC_RESERVED flag |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-715 |
| CANDIDATE | 3.18 | [`98c1a7593fa3`](https://git.kernel.org/torvalds/c/98c1a7593fa3) | [fs] | ext4: enable journal checksum when metadata checksum feature enabled |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.18 | [`844749764b41`](https://git.kernel.org/torvalds/c/844749764b41) | [fs] | ext4: explicitly inform user about orphan list cleanup |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`bd30d702fc32`](https://git.kernel.org/torvalds/c/bd30d702fc32) | [fs] | ext4: fix accidental flag aliasing in ext4_map_blocks flags |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`d91bd2c1d78d`](https://git.kernel.org/torvalds/c/d91bd2c1d78d) | [fs] | ext4: fix comments about get_blocks |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`d6320cbfc929`](https://git.kernel.org/torvalds/c/d6320cbfc929) | [fs] | ext4: fix mmap data corruption when blocksize < pagesize |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`c5d311926da4`](https://git.kernel.org/torvalds/c/c5d311926da4) | [fs] | ext4: fix over-defensive complaint after journal abort |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`bce92d566a57`](https://git.kernel.org/torvalds/c/bce92d566a57) | [fs] | ext4: fix return value of ext4_do_update_inode |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`713e8dde3e71`](https://git.kernel.org/torvalds/c/713e8dde3e71) | [fs] | ext4: fix ZERO_RANGE bug hidden by flag aliasing |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`dfe076c106f6`](https://git.kernel.org/torvalds/c/dfe076c106f6) | [fs] | ext4: get rid of code duplication |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`ae9e9c6aeea6`](https://git.kernel.org/torvalds/c/ae9e9c6aeea6) | [fs] | ext4: make ext4_ext_convert_to_initialized() return proper number of blocks |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.18 | [`e3cf5d5d9a86`](https://git.kernel.org/torvalds/c/e3cf5d5d9a86) | [fs] | ext4: prepare to drop EXT4_STATE_DELALLOC_RESERVED |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-715 |
| CANDIDATE | 3.18 | [`c7f725435adc`](https://git.kernel.org/torvalds/c/c7f725435adc) | [fs] | ext4: provide separate operations for sysfs feature files |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`52c826db6d4b`](https://git.kernel.org/torvalds/c/52c826db6d4b) | [fs] | ext4: remove a duplicate call in ext4_init_new_dir() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`d26e2c4d72c2`](https://git.kernel.org/torvalds/c/d26e2c4d72c2) | [fs] | ext4: renumber EXT4_EX_* flags to avoid flag aliasing problems |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`9aa5d32ba269`](https://git.kernel.org/torvalds/c/9aa5d32ba269) | [fs] | ext4: Replace open coded mdata csum feature to helper function |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`cd808deced43`](https://git.kernel.org/torvalds/c/cd808deced43) | [fs] | ext4: support RENAME_WHITEOUT |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-220 |
| CANDIDATE | 3.18 | [`ee124d274625`](https://git.kernel.org/torvalds/c/ee124d274625) | [fs] | ext4: use ext4_update_i_disksize instead of opencoded ones |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`df4763bea5b0`](https://git.kernel.org/torvalds/c/df4763bea5b0) | [fs] | ext4: validate external journal superblock checksum |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`51486b900ee9`](https://git.kernel.org/torvalds/c/51486b900ee9) | [fs] | fix inode leaks on d_splice_alias() failure exits |  | generic code, tag [fs] | 3.10.0-1106 |
| CANDIDATE | 3.18 | [`8faaa6d5d48b`](https://git.kernel.org/torvalds/c/8faaa6d5d48b) | [fs] | Fixing lease renewal |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.18 | [`a71db86e86e0`](https://git.kernel.org/torvalds/c/a71db86e86e0) | [fs] | fs/btrfs/tree-log.c: Fix closing brace followed by if |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.18 | [`cafbaae8afdb`](https://git.kernel.org/torvalds/c/cafbaae8afdb) | [fs] | fs/notify/group.c: make fsnotify_final_destroy_group() static |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 3.18 | [`9470dd5d3529`](https://git.kernel.org/torvalds/c/9470dd5d3529) | [fs] | fs: check bh blocknr earlier when searching lru |  | generic code, tag [fs] | 3.10.0-199 |
| CANDIDATE | 3.18 | [`105d1b425303`](https://git.kernel.org/torvalds/c/105d1b425303) | [fs] | fsnotify: don't put user context if it was never assigned |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 3.18 | [`4d93bc3e8173`](https://git.kernel.org/torvalds/c/4d93bc3e8173) | [fs] | gfs2_atomic_open(): skip lookups on hashed dentry |  | generic code, tag [fs] | 3.10.0-203 |
| CANDIDATE | 3.18 | [`cc97f1a7c7ee`](https://git.kernel.org/torvalds/c/cc97f1a7c7ee) | [fs] | jbd2: avoid pointless scanning of checkpoint lists |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`feb8c6d3dd0f`](https://git.kernel.org/torvalds/c/feb8c6d3dd0f) | [fs] | jbd2: fix journal checksum feature flag handling |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`32f3869184d4`](https://git.kernel.org/torvalds/c/32f3869184d4) | [fs] | jbd2: fix regression where we fail to initialize checksum seed when loading |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.18 | [`1245799f752f`](https://git.kernel.org/torvalds/c/1245799f752f) | [fs] | jbd2: jbd2_log_wait_for_space improve error detetcion |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | 3.18 | [`50849db32a9f`](https://git.kernel.org/torvalds/c/50849db32a9f) | [fs] | jbd2: simplify calling convention around __jbd2_journal_clean_checkpoint_list |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-647 |
| CANDIDATE | 3.18 | [`d48458d4a768`](https://git.kernel.org/torvalds/c/d48458d4a768) | [fs] | jbd2: use a better hash function for the revoke table |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.18 | [`03d12ddf845a`](https://git.kernel.org/torvalds/c/03d12ddf845a) | [fs] | locks: __break_lease cleanup in preparation of allowing direct removal of leases |  | generic code, tag [fs] | 3.10.0-665 |
| CANDIDATE | 3.18 | [`f328296e2741`](https://git.kernel.org/torvalds/c/f328296e2741) | [fs] | locks: Copy fl_lmops information for conflock in locks_copy_conflock() |  | generic code, tag [fs] | 3.10.0-667 |
| CANDIDATE | 3.18 | [`0efaa7e82f02`](https://git.kernel.org/torvalds/c/0efaa7e82f02) | [fs] | locks: generic_delete_lease doesn't need a file_lock at all |  | generic code, tag [fs] | 3.10.0-313 |
| CANDIDATE | 3.18 | [`5c97d7b14799`](https://git.kernel.org/torvalds/c/5c97d7b14799) | [fs] | locks: New ops in lock_manager_operations for get/put owner |  | generic code, tag [fs] | 3.10.0-667 |
| CANDIDATE | 3.18 | [`e6f5c78930e4`](https://git.kernel.org/torvalds/c/e6f5c78930e4) | [fs] | locks: plumb a "priv" pointer into the setlease routines |  | generic code, tag [fs] | 3.10.0-313 |
| CANDIDATE | 3.18 | [`843c6b2f4cef`](https://git.kernel.org/torvalds/c/843c6b2f4cef) | [fs] | locks: remove i_have_this_lease check from __break_lease |  | generic code, tag [fs] | 3.10.0-313 |
| CANDIDATE | 3.18 | [`3fe0fff18fe8`](https://git.kernel.org/torvalds/c/3fe0fff18fe8) | [fs] | locks: Rename __locks_copy_lock() to locks_copy_conflock() |  | generic code, tag [fs] | 3.10.0-667 |
| CANDIDATE | 3.18 | [`7ca76311fe6c`](https://git.kernel.org/torvalds/c/7ca76311fe6c) | [fs] | locks: set fl_owner for leases to filp instead of current->files |  | generic code, tag [fs] | 3.10.0-313 |
| CANDIDATE | 3.18 | [`b744c2ac4bbc`](https://git.kernel.org/torvalds/c/b744c2ac4bbc) (loose) | [fs] | merge I/O error prints into one line |  | generic code, tag [fs] | 3.10.0-386 |
| CANDIDATE | 3.18 | [`81d0fa623c5b`](https://git.kernel.org/torvalds/c/81d0fa623c5b) | [fs] | mm: softdirty: unmapped addresses between VMAs are clean |  | generic code, tag [fs] | 3.10.0-977 |
| CANDIDATE | 3.18 | [`b8850d1fa8e2`](https://git.kernel.org/torvalds/c/b8850d1fa8e2) (loose) | [fs] | namespace: suppress 'may be used uninitialized' warnings |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.18 | [`63bab0651be0`](https://git.kernel.org/torvalds/c/63bab0651be0) | [fs] | nfsd3: Check write permission after checking existence |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.18 | [`70b2823535d2`](https://git.kernel.org/torvalds/c/70b2823535d2) | [fs] | nfsd4: clarify how grace period ends |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.18 | [`d1d84c9626bb`](https://git.kernel.org/torvalds/c/d1d84c9626bb) | [fs] | nfsd4: fix response size estimation for OP_SEQUENCE |  | generic code, tag [fs] | 3.10.0-460 |
| CANDIDATE | 3.18 | [`ccad7dad86d8`](https://git.kernel.org/torvalds/c/ccad7dad86d8) | [fs] | nfsd4: remove labeled NFS warning from config help |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.18 | [`1383bf37ce25`](https://git.kernel.org/torvalds/c/1383bf37ce25) | [fs] | nfsd4: remove obsolete comment |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.18 | [`f7b43d0c992c`](https://git.kernel.org/torvalds/c/f7b43d0c992c) | [fs] | nfsd4: reserve adequate space for LOCK op |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.18 | [`bea57fe45ba2`](https://git.kernel.org/torvalds/c/bea57fe45ba2) | [fs] | nfsd4: stop grace_time update at end of grace period |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.18 | [`2c03376d2db0`](https://git.kernel.org/torvalds/c/2c03376d2db0) | [fs] | proc/maps: replace proc_maps_private->pid with "struct inode *inode" |  | CONFIG_PROC_FS=y in A37 | 3.10.0-585 |
| CANDIDATE | 3.18 | [`5381e169e784`](https://git.kernel.org/torvalds/c/5381e169e784) | [fs] | proc: introduce proc_mem_open() |  | CONFIG_PROC_FS=y in A37 | 3.10.0-585 |
| CANDIDATE | 3.18 | [`bbd5192412fd`](https://git.kernel.org/torvalds/c/bbd5192412fd) | [fs] | proc: Update proc_flush_task_mnt to use d_invalidate |  | CONFIG_PROC_FS=y in A37 | 3.10.0-620 |
| CANDIDATE | 3.18 | [`d37973082b45`](https://git.kernel.org/torvalds/c/d37973082b45) | [fs] | revert "btrfs: race free update of commit root for ro snapshots" |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.18 | [`dca780016dab`](https://git.kernel.org/torvalds/c/dca780016dab) | [fs] | revert "nfs: nfs4_do_open should add negative results to the dcache." |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.18 | [`7488cbc25683`](https://git.kernel.org/torvalds/c/7488cbc25683) | [fs] | revert "nfs: remove BUG possibility in nfs4_open_and_get_state" |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.18 | [`80b5dce8c59b`](https://git.kernel.org/torvalds/c/80b5dce8c59b) | [fs] | vfs: Add a function to lazily unmount all mounts from any dentry |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.18 | [`4aa7c6346be3`](https://git.kernel.org/torvalds/c/4aa7c6346be3) | [fs] | vfs: add i_op->dentry_open() |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | 3.18 | [`0d7a855526dd`](https://git.kernel.org/torvalds/c/0d7a855526dd) | [fs] | vfs: add RENAME_WHITEOUT |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | 3.18 | [`787fb6bc9682`](https://git.kernel.org/torvalds/c/787fb6bc9682) | [fs] | vfs: add whiteout support |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | 3.18 | [`3ccb354d641d`](https://git.kernel.org/torvalds/c/3ccb354d641d) | [fs] | vfs: Document the effect of d_revalidate on d_find_alias |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.18 | [`7af1364ffa64`](https://git.kernel.org/torvalds/c/7af1364ffa64) | [fs] | vfs: Don't allow overwriting mounts in the current mount namespace |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.18 | [`bd5d08569cc3`](https://git.kernel.org/torvalds/c/bd5d08569cc3) | [fs] | vfs: export __inode_permission() to modules |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | 3.18 | [`cbdf35bcb833`](https://git.kernel.org/torvalds/c/cbdf35bcb833) | [fs] | vfs: export check_sticky() |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | 3.18 | [`1c118596a768`](https://git.kernel.org/torvalds/c/1c118596a768) | [fs] | vfs: export do_splice_direct() to modules |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | 3.18 | [`e2dfa9354642`](https://git.kernel.org/torvalds/c/e2dfa9354642) | [fs] | vfs: factor out lookup_mountpoint from new_mountpoint |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.18 | [`4db96b71e3ca`](https://git.kernel.org/torvalds/c/4db96b71e3ca) | [fs] | vfs: guard end of device for mpage interface |  | generic code, tag [fs] | 3.10.0-658 |
| CANDIDATE | 3.18 | [`c771d683a62e`](https://git.kernel.org/torvalds/c/c771d683a62e) | [fs] | vfs: introduce clone_private_mount() |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | 3.18 | [`0a5eb7c81899`](https://git.kernel.org/torvalds/c/0a5eb7c81899) | [fs] | vfs: Keep a list of mounts on a mount point |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.18 | [`8ed936b5671b`](https://git.kernel.org/torvalds/c/8ed936b5671b) | [fs] | vfs: Lazily remove mounts on unlinked files and directories |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.18 | [`5542aa2fa7f6`](https://git.kernel.org/torvalds/c/5542aa2fa7f6) | [fs] | vfs: Make d_invalidate return void |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.18 | [`59d43914ed7b`](https://git.kernel.org/torvalds/c/59d43914ed7b) | [fs] | vfs: make guard_bh_eod() more generic |  | generic code, tag [fs] | 3.10.0-658 |
| CANDIDATE | 3.18 | [`1ffe46d11cc8`](https://git.kernel.org/torvalds/c/1ffe46d11cc8) | [fs] | vfs: Merge check_submounts_and_drop and d_invalidate |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.18 | [`bafc9b754f75`](https://git.kernel.org/torvalds/c/bafc9b754f75) | [fs] | vfs: More precise tests in d_invalidate |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.18 | [`5e6123f3477e`](https://git.kernel.org/torvalds/c/5e6123f3477e) | [fs] | vfs: move getname() from callers to do_mount() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.18 | [`c143c2333c48`](https://git.kernel.org/torvalds/c/c143c2333c48) | [fs] | vfs: Remove d_drop calls from d_revalidate implementations |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.18 | [`9b053f3207e8`](https://git.kernel.org/torvalds/c/9b053f3207e8) | [fs] | vfs: Remove unnecessary calls of check_submounts_and_drop |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.19 | [`e4a0d3e720e7`](https://git.kernel.org/torvalds/c/e4a0d3e720e7) | [fs] | aio: Make it possible to remap aio ring |  | CONFIG_AIO=y in A37 | 3.10.0-285 |
| CANDIDATE | 3.19 | [`5f785de58873`](https://git.kernel.org/torvalds/c/5f785de58873) | [fs] | aio: Skip timer for io_getevents if timeout=0 |  | CONFIG_AIO=y in A37 | 3.10.0-254 |
| CANDIDATE | 3.19 | [`b89e1b012c7f`](https://git.kernel.org/torvalds/c/b89e1b012c7f) | [fs] | btrfs, raid56: don't change bbio and raid_map |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.19 | [`4245215d6a8d`](https://git.kernel.org/torvalds/c/4245215d6a8d) | [fs] | btrfs, raid56: fix use-after-free problem in the final device replace procedure on raid56 |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.19 | [`5a6ac9eacb49`](https://git.kernel.org/torvalds/c/5a6ac9eacb49) | [fs] | btrfs, raid56: support parity scrub on raid56 |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.19 | [`1b94b5567e9c`](https://git.kernel.org/torvalds/c/1b94b5567e9c) | [fs] | btrfs, raid56: use a variant to record the operation type |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.19 | [`5d3edd8f44aa`](https://git.kernel.org/torvalds/c/5d3edd8f44aa) | [fs] | btrfs, replace: enable dev-replace for raid56 |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.19 | [`2c8cdd6ee4e7`](https://git.kernel.org/torvalds/c/2c8cdd6ee4e7) | [fs] | btrfs, replace: write dirty pages into the replace target device |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.19 | [`760359769014`](https://git.kernel.org/torvalds/c/760359769014) | [fs] | btrfs, replace: write raid56 parity into the replace target device |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.19 | [`af8e2d1df984`](https://git.kernel.org/torvalds/c/af8e2d1df984) | [fs] | btrfs, scrub: repair the common data on RAID5/6 if it is corrupted |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.19 | [`6b6d24b38991`](https://git.kernel.org/torvalds/c/6b6d24b38991) | [fs] | btrfs, scrub: uninitialized variable in scrub_extent_for_parity() |  | generic code, tag [fs] | 3.10.0-237 |
| CANDIDATE | 3.19 | [`e96a650a8174`](https://git.kernel.org/torvalds/c/e96a650a8174) | [fs] | ceph, rbd: delete unnecessary checks before two function calls |  | generic code, tag [fs] | 3.10.0-283 |
| CANDIDATE | 3.19 | [`9235d0987331`](https://git.kernel.org/torvalds/c/9235d0987331) | [fs] | Convert MessageID in smb2_hdr to LE |  | generic code, tag [fs] | 3.10.0-231 |
| CANDIDATE | 3.19 | [`c35a7f18a0b2`](https://git.kernel.org/torvalds/c/c35a7f18a0b2) | [fs] | exit: proc: don't try to flush /proc/tgid/task/tgid |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.19 | [`2f8e0a7c6c89`](https://git.kernel.org/torvalds/c/2f8e0a7c6c89) | [fs] | ext4: cache extent hole in extent status tree for ext4_da_map_blocks() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`edaa53cac8fd`](https://git.kernel.org/torvalds/c/edaa53cac8fd) | [fs] | ext4: change LRU to round-robin in extent status tree shrinker |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1146 |
| CANDIDATE | 3.19 | [`624d0f1dd7c8`](https://git.kernel.org/torvalds/c/624d0f1dd7c8) | [fs] | ext4: cleanup flag definitions for extent status tree |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1146 |
| CANDIDATE | 3.19 | [`4fdb5543183d`](https://git.kernel.org/torvalds/c/4fdb5543183d) | [fs] | ext4: cleanup GFP flags inside resize path |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`c6d3d56dd0ef`](https://git.kernel.org/torvalds/c/c6d3d56dd0ef) | [fs] | ext4: create nojournal_checksum mount option |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`b003b52496b9`](https://git.kernel.org/torvalds/c/b003b52496b9) | [fs] | ext4: don't count external journal blocks as overhead |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-212 |
| CANDIDATE | 3.19 | [`50db71abc529`](https://git.kernel.org/torvalds/c/50db71abc529) | [fs] | ext4: ext4_da_convert_inline_data_to_extent drop locked page after error |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`d952d69e268f`](https://git.kernel.org/torvalds/c/d952d69e268f) | [fs] | ext4: ext4_inline_data_fiemap should respect callers argument |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`cbd7584e6ead`](https://git.kernel.org/torvalds/c/cbd7584e6ead) | [fs] | ext4: fix block reservation for bigalloc filesystems |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`5bf43760654f`](https://git.kernel.org/torvalds/c/5bf43760654f) | [fs] | ext4: fix end of leaf partial cluster handling |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`0756b908a364`](https://git.kernel.org/torvalds/c/0756b908a364) | [fs] | ext4: fix end of region partial cluster handling |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`f4226d9ea400`](https://git.kernel.org/torvalds/c/f4226d9ea400) | [fs] | ext4: fix partial cluster initialization |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`d4f761074353`](https://git.kernel.org/torvalds/c/d4f761074353) | [fs] | ext4: forbid journal_async_commit in data=ordered mode |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`2be12de98a1c`](https://git.kernel.org/torvalds/c/2be12de98a1c) | [fs] | ext4: introduce aging to extent status tree |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1146 |
| CANDIDATE | 3.19 | [`dd4759255188`](https://git.kernel.org/torvalds/c/dd4759255188) | [fs] | ext4: limit number of scanned extents in status tree shrinker |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1146 |
| CANDIDATE | 3.19 | [`345ee947482f`](https://git.kernel.org/torvalds/c/345ee947482f) | [fs] | ext4: miscellaneous partial cluster cleanups |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`b0dea4c1651f`](https://git.kernel.org/torvalds/c/b0dea4c1651f) | [fs] | ext4: move handling of list of shrinkable inodes into extent status code |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1146 |
| CANDIDATE | 3.19 | [`88c6b61ff1cf`](https://git.kernel.org/torvalds/c/88c6b61ff1cf) | [fs] | ext4: move_extent improve bh vanishing success factor |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`5cc28a9eaab2`](https://git.kernel.org/torvalds/c/5cc28a9eaab2) | [fs] | ext4: prevent fsreentrance deadlock for inline_data |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`011fa99404be`](https://git.kernel.org/torvalds/c/011fa99404be) | [fs] | ext4: prevent online resize with backup superblock |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`bfcba2d0352f`](https://git.kernel.org/torvalds/c/bfcba2d0352f) | [fs] | ext4: Remove an unnecessary check for NULL before iput() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`733ded2a8035`](https://git.kernel.org/torvalds/c/733ded2a8035) | [fs] | ext4: remove never taken branch from ext4_ext_shift_path_extents() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`363307e6e561`](https://git.kernel.org/torvalds/c/363307e6e561) | [fs] | ext4: remove spurious KERN_INFO from ext4_warning call |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`31fc006b12f2`](https://git.kernel.org/torvalds/c/31fc006b12f2) | [fs] | ext4: remove unneeded code in ext4_unlink |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`58d86a50eee6`](https://git.kernel.org/torvalds/c/58d86a50eee6) | [fs] | ext4: update comments regarding ext4_delete_inode() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`378ff1a53b57`](https://git.kernel.org/torvalds/c/378ff1a53b57) | [fs] | fix deadlock in cifs_ioctl_clone() |  | generic code, tag [fs] | 3.10.0-228 |
| CANDIDATE | 3.19 | [`37d469e7673a`](https://git.kernel.org/torvalds/c/37d469e7673a) | [fs] | fsnotify: remove destroy_list from fsnotify_mark |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 3.19 | [`0809ab69a278`](https://git.kernel.org/torvalds/c/0809ab69a278) | [fs] | fsnotify: unify inode and mount marks handling |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 3.19 | [`d9f39d1e44c4`](https://git.kernel.org/torvalds/c/d9f39d1e44c4) | [fs] | jbd2: remove unnecessary NULL check before iput() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 3.19 | [`41fb96a4b619`](https://git.kernel.org/torvalds/c/41fb96a4b619) | [fs] | kobject: fix NULL pointer derefernce in kobj_child_ns_ops |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.19 | [`b72091f2fb28`](https://git.kernel.org/torvalds/c/b72091f2fb28) | [fs] | libxfs: fix simple_return.cocci warnings |  | generic code, tag [fs] | 3.10.0-243 |
| CANDIDATE | 3.19 | [`52d304eb4eac`](https://git.kernel.org/torvalds/c/52d304eb4eac) | [fs] | locks: fix NULL-deref in generic_delete_lease |  | generic code, tag [fs] | 3.10.0-313 |
| CANDIDATE | 3.19 | [`381cacb12c00`](https://git.kernel.org/torvalds/c/381cacb12c00) | [fs] | mnt: Carefully set CL_UNPRIVILEGED in clone_mnt |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 3.19 | [`4fed655c410c`](https://git.kernel.org/torvalds/c/4fed655c410c) | [fs] | mnt: Clear mnt_expire during pivot_root |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.19 | [`c297abfdf15b`](https://git.kernel.org/torvalds/c/c297abfdf15b) | [fs] | mnt: Fix a memory stomp in umount |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 3.19 | [`b1bc6d7f1632`](https://git.kernel.org/torvalds/c/b1bc6d7f1632) | [fs] | move_extent_per_page(): get rid of unused w_flags |  | generic code, tag [fs] | 3.10.0-257 |
| CANDIDATE | 3.19 | [`bf7491f1be5e`](https://git.kernel.org/torvalds/c/bf7491f1be5e) | [fs] | nfsd4: fix xdr4 count of server in fs_location4 |  | generic code, tag [fs] | 3.10.0-224 |
| CANDIDATE | 3.19 | [`6f4e0d5aaa9e`](https://git.kernel.org/torvalds/c/6f4e0d5aaa9e) | [fs] | nfsd_vfs_write(): use file_inode() |  | generic code, tag [fs] | 3.10.0-460 |
| CANDIDATE | 3.19 | [`b208d54b7539`](https://git.kernel.org/torvalds/c/b208d54b7539) | [fs] | procfs: fix error handling of proc_register() |  | CONFIG_PROC_FS=y in A37 | 3.10.0-358 |
| CANDIDATE | 3.19 | [`87545899b52f`](https://git.kernel.org/torvalds/c/87545899b52f) (loose) | [fs] | replace remaining users of arch_fast_hash with jhash |  | generic code, tag [fs] | 3.10.0-471 |
| CANDIDATE | 3.19 | [`87545899b52f`](https://git.kernel.org/torvalds/c/87545899b52f) (loose) | [fs] | replace remaining users of arch_fast_hash with jhash |  | generic code, tag [fs] | 3.10.0-439 |
| CANDIDATE | 3.19 | [`32a59234ae96`](https://git.kernel.org/torvalds/c/32a59234ae96) | [fs] | rpc_pipefs.c: get rid of f_dentry |  | generic code, tag [fs] | 3.10.0-467 |
| CANDIDATE | 3.19 | [`536ebe9ca999`](https://git.kernel.org/torvalds/c/536ebe9ca999) | [fs] | sched, fanotify: Deal with nested sleeps |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 3.19 | [`e23738a7300a`](https://git.kernel.org/torvalds/c/e23738a7300a) | [fs] | sched, inotify: Deal with nested sleeps |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 3.19 | [`ee9bbf465d8b`](https://git.kernel.org/torvalds/c/ee9bbf465d8b) | [fs] | Set UID in sess_auth_rawntlmssp_authenticate too |  | generic code, tag [fs] | 3.10.0-316 |
| CANDIDATE | 3.19 | [`da362b09e42e`](https://git.kernel.org/torvalds/c/da362b09e42e) | [fs] | umount: Do not allow unmounting rootfs |  | generic code, tag [fs] | 3.10.0-371 |
| CANDIDATE | 3.19 | [`9d4d65748a5c`](https://git.kernel.org/torvalds/c/9d4d65748a5c) | [fs] | vfs: make mounts and mountstats honor root dir like mountinfo does |  | generic code, tag [fs] | 3.10.0-1126.2 |
| CANDIDATE | 3.19 | [`72c72bdf7bf5`](https://git.kernel.org/torvalds/c/72c72bdf7bf5) | [fs] | vfs: Rename do_fallocate() to vfs_fallocate() |  | generic code, tag [fs] | 3.10.0-313 |
| CANDIDATE | 4.0 | [`fdab684d7202`](https://git.kernel.org/torvalds/c/fdab684d7202) | [fs] | allow attaching fs_pin to a group not associated with some superblock |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.0 | [`bb5c3cdda37a`](https://git.kernel.org/torvalds/c/bb5c3cdda37a) | [fs] | block: Remove annoying "unknown partition table" message |  | generic code, tag [fs] | 3.10.0-386 |
| CANDIDATE | 4.0 | [`a6a5ce4f0df9`](https://git.kernel.org/torvalds/c/a6a5ce4f0df9) | [fs] | client: include kernel version in client metadata |  | generic code, tag [fs] | 3.10.0-283 |
| CANDIDATE | 4.0 | [`e22553e2a25e`](https://git.kernel.org/torvalds/c/e22553e2a25e) | [fs] | eventfd: don't take the spinlock in eventfd_poll |  | CONFIG_EVENTFD=y in A37 | 3.10.0-371 |
| CANDIDATE | 4.0 | [`923ae0ff9250`](https://git.kernel.org/torvalds/c/923ae0ff9250) | [fs] | ext4: add DAX functionality |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-427 |
| CANDIDATE | 4.0 | [`6f30b7e37a82`](https://git.kernel.org/torvalds/c/6f30b7e37a82) | [fs] | ext4: fix indirect punch hole corruption |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 4.0 | [`2d5b86e04878`](https://git.kernel.org/torvalds/c/2d5b86e04878) | [fs] | ext4: ignore journal checksum on remount; don't fail |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 4.0 | [`b94a8b36be4e`](https://git.kernel.org/torvalds/c/b94a8b36be4e) | [fs] | ext4: remove duplicate remount check for JOURNAL_CHECKSUM change |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 4.0 | [`11afe9f76e12`](https://git.kernel.org/torvalds/c/11afe9f76e12) | [fs] | fs: add FL_LAYOUT lease type |  | generic code, tag [fs] | 3.10.0-313 |
| CANDIDATE | 4.0 | [`2ab99ee12440`](https://git.kernel.org/torvalds/c/2ab99ee12440) | [fs] | fs: track fl_owner for leases |  | generic code, tag [fs] | 3.10.0-313 |
| CANDIDATE | 4.0 | [`3b994d98a815`](https://git.kernel.org/torvalds/c/3b994d98a815) | [fs] | get rid of the second argument of acct_kill() |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.0 | [`d443b9fd56e8`](https://git.kernel.org/torvalds/c/d443b9fd56e8) | [fs] | gut proc_register() a bit |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.0 | [`deeb8525f9bc`](https://git.kernel.org/torvalds/c/deeb8525f9bc) | [fs] | ioctx_alloc(): fix vma (and file) leak on failure |  | generic code, tag [fs] | 3.10.0-313 |
| CANDIDATE | 4.0 | [`b6924225c292`](https://git.kernel.org/torvalds/c/b6924225c292) | [fs] | jbd2: complain about descriptor block checksum errors |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 4.0 | [`9e251d020414`](https://git.kernel.org/torvalds/c/9e251d020414) | [fs] | kill pin_put() |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.0 | [`267f11285830`](https://git.kernel.org/torvalds/c/267f11285830) | [fs] | locks: remove conditional lock release in middle of flock_lock_file |  | generic code, tag [fs] | 3.10.0-700 |
| CANDIDATE | 4.0 | [`59eda0e07f43`](https://git.kernel.org/torvalds/c/59eda0e07f43) | [fs] | new fs_pin killing logics |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.0 | [`a51f25a587e1`](https://git.kernel.org/torvalds/c/a51f25a587e1) | [fs] | nfsd4: fix v3-less build |  | generic code, tag [fs] | 3.10.0-460 |
| CANDIDATE | 4.0 | [`0ec016e3e02f`](https://git.kernel.org/torvalds/c/0ec016e3e02f) | [fs] | nfsd4: tweak rd_dircount accounting |  | generic code, tag [fs] | 3.10.0-460 |
| CANDIDATE | 4.0 | [`8d38633c3b40`](https://git.kernel.org/torvalds/c/8d38633c3b40) | [fs] | page_writeback: put account_page_redirty() after set_page_dirty() |  | generic code, tag [fs] | 3.10.0-374 |
| CANDIDATE | 4.0 | [`32426f6653cb`](https://git.kernel.org/torvalds/c/32426f6653cb) | [fs] | pull bumping refcount into ->kill() |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.0 | [`87b95ce0964c`](https://git.kernel.org/torvalds/c/87b95ce0964c) | [fs] | switch the IO-triggering parts of umount to fs_pin |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.0 | [`adf305f77878`](https://git.kernel.org/torvalds/c/adf305f77878) | [fs] | sysfs: fix warning when creating a sysfs group without attributes |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 4.0 | [`34cece2e8a1d`](https://git.kernel.org/torvalds/c/34cece2e8a1d) | [fs] | take count and rcu_head out of fs_pin |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.0 | [`155e35d4daa8`](https://git.kernel.org/torvalds/c/155e35d4daa8) | [fs] | vfs: Introduce inode-getting helpers for layered/unioned fs environments |  | generic code, tag [fs] | 3.10.0-374 |
| CANDIDATE | 4.1 | [`9be6df215a1b`](https://git.kernel.org/torvalds/c/9be6df215a1b) | [fs] | crush: drop unnecessary include from mapper.c |  | generic code, tag [fs] | 3.10.0-283 |
| CANDIDATE | 4.1 | [`45002267e8d2`](https://git.kernel.org/torvalds/c/45002267e8d2) | [fs] | crush: ensuring at most num-rep osds are selected |  | generic code, tag [fs] | 3.10.0-283 |
| CANDIDATE | 4.1 | [`958a27658d94`](https://git.kernel.org/torvalds/c/958a27658d94) | [fs] | crush: straw2 bucket type with an efficient 64-bit crush_ln() |  | generic code, tag [fs] | 3.10.0-283 |
| CANDIDATE | 4.1 | [`fe0f07d08ee3`](https://git.kernel.org/torvalds/c/fe0f07d08ee3) | [fs] | direct-io: only inc/dec inode->i_dio_count for file systems |  | generic code, tag [fs] | 3.10.0-354 |
| CANDIDATE | 4.1 | [`0f2af21aae11`](https://git.kernel.org/torvalds/c/0f2af21aae11) | [fs] | ext4: allocate entire range in zero range | CVE-2015-0275 | CONFIG_EXT4_FS=y in A37 | 3.10.0-293 |
| CANDIDATE | 4.1 | [`9d21c9fa2cc2`](https://git.kernel.org/torvalds/c/9d21c9fa2cc2) | [fs] | ext4: don't release reserved space for previously allocated cluster |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 4.1 | [`b9576fc3624e`](https://git.kernel.org/torvalds/c/b9576fc3624e) | [fs] | ext4: fix an ext3 collapse range regression in xfstests |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-658 |
| CANDIDATE | 4.1 | [`7071b715873a`](https://git.kernel.org/torvalds/c/7071b715873a) | [fs] | ext4: fix bh leak on error paths in ext4_rename() and ext4_cross_rename() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 4.1 | [`4255c224b97f`](https://git.kernel.org/torvalds/c/4255c224b97f) | [fs] | ext4: fix comments in ext4_can_extents_be_merged() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 4.1 | [`2c869b262a10`](https://git.kernel.org/torvalds/c/2c869b262a10) | [fs] | ext4: fix growing of tiny filesystems |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 4.1 | [`94426f4b9648`](https://git.kernel.org/torvalds/c/94426f4b9648) | [fs] | ext4: fix loss of delalloc extent info in ext4_zero_range() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 4.1 | [`9d5065940693`](https://git.kernel.org/torvalds/c/9d5065940693) | [fs] | ext4: fix NULL pointer dereference when journal restart fails |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-313 |
| CANDIDATE | 4.1 | [`80cfb71e2e92`](https://git.kernel.org/torvalds/c/80cfb71e2e92) | [fs] | ext4: fix transposition typo in format string |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 4.1 | [`280227a75b56`](https://git.kernel.org/torvalds/c/280227a75b56) | [fs] | ext4: move check under lock scope to close a race |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-611 |
| CANDIDATE | 4.1 | [`5a4f3145aa68`](https://git.kernel.org/torvalds/c/5a4f3145aa68) | [fs] | ext4: remove unnecessary lock/unlock of i_block_reservation_lock |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 4.1 | [`5f80f62adae2`](https://git.kernel.org/torvalds/c/5f80f62adae2) | [fs] | ext4: remove useless condition in if statement |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-257 |
| CANDIDATE | 4.1 | [`bc8ebdc4f54c`](https://git.kernel.org/torvalds/c/bc8ebdc4f54c) | [fs] | Fix that several functions handle incorrect value of mapchars |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.1 | [`7196ac113a4f`](https://git.kernel.org/torvalds/c/7196ac113a4f) | [fs] | Fix to check Unique id and FileType when client refer file directly |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.1 | [`b29103076bec`](https://git.kernel.org/torvalds/c/b29103076bec) | [fs] | Fix to convert SURROGATE PAIR |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.1 | [`c7757074839f`](https://git.kernel.org/torvalds/c/c7757074839f) | [fs] | fs/nfs: fix new compiler warning about boolean in switch |  | generic code, tag [fs] | 3.10.0-381 |
| CANDIDATE | 4.1 | [`dd46c787788d`](https://git.kernel.org/torvalds/c/dd46c787788d) | [fs] | fs: Add support FALLOC_FL_INSERT_RANGE for fallocate |  | generic code, tag [fs] | 3.10.0-1004 |
| CANDIDATE | 4.1 | [`820f9f147dcc`](https://git.kernel.org/torvalds/c/820f9f147dcc) | [fs] | fs_pin: Allow for the possibility that m_list or s_list go unused |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.1 | [`e531d0bceb40`](https://git.kernel.org/torvalds/c/e531d0bceb40) | [fs] | jbd2: fix r_count overflows leading to buffer overflow in journal recovery |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-611 |
| CANDIDATE | 4.1 | [`9c98f2359600`](https://git.kernel.org/torvalds/c/9c98f2359600) | [fs] | lib/vsprintf.c: fix potential NULL deref in hex_string |  | generic code, tag [fs] | 3.10.0-467 |
| CANDIDATE | 4.1 | [`ff40f9ae9591`](https://git.kernel.org/torvalds/c/ff40f9ae9591) | [fs] | libceph, ceph: split ceph_show_options() |  | generic code, tag [fs] | 3.10.0-283 |
| CANDIDATE | 4.1 | [`d1fd836dcf00`](https://git.kernel.org/torvalds/c/d1fd836dcf00) | [fs] | mm: split ET_DYN ASLR from mmap ASLR |  | generic code, tag [fs] | 3.10.0-589 |
| CANDIDATE | 4.1 | [`590ce4bcbfb4`](https://git.kernel.org/torvalds/c/590ce4bcbfb4) | [fs] | mnt: Add MNT_UMOUNT flag |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.1 | [`411a938b5abc`](https://git.kernel.org/torvalds/c/411a938b5abc) | [fs] | mnt: Delay removal from the mount hash |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.1 | [`8318e667f176`](https://git.kernel.org/torvalds/c/8318e667f176) | [fs] | mnt: Don't propagate umounts in __detach_mounts |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.1 | [`0c56fe31420c`](https://git.kernel.org/torvalds/c/0c56fe31420c) | [fs] | mnt: Don't propagate unmounts to locked mounts |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.1 | [`7bdb11de8ee4`](https://git.kernel.org/torvalds/c/7bdb11de8ee4) | [fs] | mnt: Factor out unhash_mnt from detach_mnt and umount_tree |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.1 | [`6a46c5735c29`](https://git.kernel.org/torvalds/c/6a46c5735c29) | [fs] | mnt: Factor umount_mnt from umount_tree |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.1 | [`7e96c1b0e0f4`](https://git.kernel.org/torvalds/c/7e96c1b0e0f4) | [fs] | mnt: Fix fs_fully_visible to verify the root directory is visible |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.1 | [`f53e57975151`](https://git.kernel.org/torvalds/c/f53e57975151) | [fs] | mnt: Fix the error check in __detach_mounts |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.1 | [`ce07d891a089`](https://git.kernel.org/torvalds/c/ce07d891a089) | [fs] | mnt: Honor MNT_LOCKED when detaching mounts |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.1 | [`e819f152104c`](https://git.kernel.org/torvalds/c/e819f152104c) | [fs] | mnt: Improve the umount_tree flags |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.1 | [`c003b26ff98c`](https://git.kernel.org/torvalds/c/c003b26ff98c) | [fs] | mnt: In umount_tree reuse mnt_list instead of mnt_hash |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.1 | [`5d88457eb5b8`](https://git.kernel.org/torvalds/c/5d88457eb5b8) | [fs] | mnt: On an unmount propagate clearing of MNT_LOCKED |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.1 | [`e0c9c0afd2fc`](https://git.kernel.org/torvalds/c/e0c9c0afd2fc) | [fs] | mnt: Update detach_mounts to leave mounts connected |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.1 | [`a3b3c5627c83`](https://git.kernel.org/torvalds/c/a3b3c5627c83) | [fs] | mnt: Use hlist_move_list in namespace_unlock |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.1 | [`5ba4a25ab7b1`](https://git.kernel.org/torvalds/c/5ba4a25ab7b1) | [fs] | nfsd4: disallow ALLOCATE with special stateids |  | generic code, tag [fs] | 3.10.0-313 |
| CANDIDATE | 4.1 | [`980608fb50ae`](https://git.kernel.org/torvalds/c/980608fb50ae) | [fs] | nfsd4: disallow SEEK with special stateids |  | generic code, tag [fs] | 3.10.0-313 |
| CANDIDATE | 4.1 | [`6e4891dc289c`](https://git.kernel.org/torvalds/c/6e4891dc289c) | [fs] | nfsd4: fix READ permission checking |  | generic code, tag [fs] | 3.10.0-460 |
| CANDIDATE | 4.1 | [`80188b0d77d7`](https://git.kernel.org/torvalds/c/80188b0d77d7) | [fs] | percpu_counter: batch size aware __percpu_counter_compare() |  | generic code, tag [fs] | 3.10.0-274 |
| CANDIDATE | 4.1 | [`6c8c90319c0b`](https://git.kernel.org/torvalds/c/6c8c90319c0b) | [fs] | proc: show locks in /proc/pid/fdinfo/X |  | CONFIG_PROC_FS=y in A37 | 3.10.0-285 |
| CANDIDATE | 4.1 | [`3708f842e107`](https://git.kernel.org/torvalds/c/3708f842e107) | [fs] | revert "nfs: replace nfs_add_stats with nfs_inc_stats when add one" |  | generic code, tag [fs] | 3.10.0-381 |
| CANDIDATE | 4.1 | [`da4759c73b0f`](https://git.kernel.org/torvalds/c/da4759c73b0f) | [fs] | sysfs: Use only return value from is_visible for the file mode |  | CONFIG_SYSFS=y in A37 | 3.10.0-849 |
| CANDIDATE | 4.1 | [`0c564a538aa9`](https://git.kernel.org/torvalds/c/0c564a538aa9) | [fs] | tracing: Add TRACE_DEFINE_ENUM() macro to map enums to their values |  | CONFIG_FTRACE=y in A37 | 3.10.0-879 |
| CANDIDATE | 4.1 | [`acd388fd3af3`](https://git.kernel.org/torvalds/c/acd388fd3af3) | [fs] | tracing: Give system name a pointer |  | CONFIG_FTRACE=y in A37 | 3.10.0-879 |
| CANDIDATE | 4.1 | [`525d27b23555`](https://git.kernel.org/torvalds/c/525d27b23555) | [fs] | vfs: Add owner-filesystem positive/negative dentry checks |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.1 | [`f2b91d8d385d`](https://git.kernel.org/torvalds/c/f2b91d8d385d) | [fs] | vfs: delete vfs_readdir function declaration |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.1 | [`2b0143b5c986`](https://git.kernel.org/torvalds/c/2b0143b5c986) | [fs] | vfs: normal filesystems (and lustre): d_inode() annotations |  | generic code, tag [fs] | 3.10.0-621 |
| CANDIDATE | 4.2 | [`eed0e1753cbe`](https://git.kernel.org/torvalds/c/eed0e1753cbe) | [fs] | Add defines and structs for smb3.1 dialect |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.2 | [`9d1b06602eb6`](https://git.kernel.org/torvalds/c/9d1b06602eb6) | [fs] | Add Get/Set Integrity Information structure definitions |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.2 | [`fbabfd0f4ee2`](https://git.kernel.org/torvalds/c/fbabfd0f4ee2) (loose) | [fs] | Add helper functions for permanently empty directories |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.2 | [`b3152e2c7aa9`](https://git.kernel.org/torvalds/c/b3152e2c7aa9) | [fs] | Add ioctl to set integrity |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.2 | [`02b1666544c0`](https://git.kernel.org/torvalds/c/02b1666544c0) | [fs] | Add reflink copy over SMB3.11 with new FSCTL_DUPLICATE_EXTENTS |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.2 | [`aab1893d5fbe`](https://git.kernel.org/torvalds/c/aab1893d5fbe) | [fs] | Add SMB3.11 mount option synonym for new dialect |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.2 | [`80bc83c360ef`](https://git.kernel.org/torvalds/c/80bc83c360ef) | [fs] | add struct FILE_STANDARD_INFO |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.2 | [`5f7fbf733c9d`](https://git.kernel.org/torvalds/c/5f7fbf733c9d) | [fs] | Allow parsing vers=3.11 on cifs mount |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.2 | [`a212b105b07d`](https://git.kernel.org/torvalds/c/a212b105b07d) | [fs] | bdi: make inode_to_bdi() inline |  | generic code, tag [fs] | 3.10.0-1135 |
| CANDIDATE | 4.2 | [`bbab37ddc20b`](https://git.kernel.org/torvalds/c/bbab37ddc20b) | [fs] | block: Add support for DAX reads/writes to block devices |  | generic code, tag [fs] | 3.10.0-427 |
| CANDIDATE | 4.2 | [`45f147a1bc97`](https://git.kernel.org/torvalds/c/45f147a1bc97) (loose) | [fs] | Call security_ops->inode_killpriv on truncate |  | generic code, tag [fs] | 3.10.0-460 |
| CANDIDATE | 4.2 | [`f291095f340d`](https://git.kernel.org/torvalds/c/f291095f340d) | [fs] | client MUST ignore EncryptionKeyLength if CAP_EXTENDED_SECURITY is set |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.2 | [`3958b79266b1`](https://git.kernel.org/torvalds/c/3958b79266b1) | [fs] | configfs: fix kernel infoleak through user-controlled format string |  | CONFIG_CONFIGFS_FS=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.2 | [`8f529795bace`](https://git.kernel.org/torvalds/c/8f529795bace) | [fs] | crush: fix crash from invalid 'take' argument |  | generic code, tag [fs] | 3.10.0-448 |
| CANDIDATE | 4.2 | [`b459be739f97`](https://git.kernel.org/torvalds/c/b459be739f97) | [fs] | crush: sync up with userspace |  | generic code, tag [fs] | 3.10.0-448 |
| CANDIDATE | 4.2 | [`9ce71148b027`](https://git.kernel.org/torvalds/c/9ce71148b027) | [fs] | devpts: if initialization failed, don't crash when opening /dev/ptmx |  | CONFIG_TTY=y in A37 | 3.10.0-593 |
| CANDIDATE | 4.2 | [`3da40c7b0898`](https://git.kernel.org/torvalds/c/3da40c7b0898) | [fs] | ext4: only call ext4_truncate when size <= isize |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-467 |
| CANDIDATE | 4.2 | [`c5e298ae53dc`](https://git.kernel.org/torvalds/c/c5e298ae53dc) | [fs] | ext4: prevent ext4_quota_write() from failing due to ENOSPC |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1142 |
| CANDIDATE | 4.2 | [`42ac1848eac5`](https://git.kernel.org/torvalds/c/42ac1848eac5) | [fs] | ext4: return error code from ext4_mb_good_group() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1041 |
| CANDIDATE | 4.2 | [`bbdc322f2c60`](https://git.kernel.org/torvalds/c/bbdc322f2c60) | [fs] | ext4: try to initialize all groups we can in case of failure on ppc64 |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1041 |
| CANDIDATE | 4.2 | [`41e5b7ed3e95`](https://git.kernel.org/torvalds/c/41e5b7ed3e95) | [fs] | ext4: verify block bitmap even after fresh initialization |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-467 |
| CANDIDATE | 4.2 | [`0d306dcf86e8`](https://git.kernel.org/torvalds/c/0d306dcf86e8) | [fs] | ext4: wait for existing dio workers in ext4_alloc_file_blocks() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-486 |
| CANDIDATE | 4.2 | [`9391dd00d13c`](https://git.kernel.org/torvalds/c/9391dd00d13c) | [fs] | fix a braino in ovl_d_select_inode() |  | generic code, tag [fs] | 3.10.0-358 |
| CANDIDATE | 4.2 | [`182d919b8490`](https://git.kernel.org/torvalds/c/182d919b8490) | [fs] | fs-cache: Count culled objects and objects rejected due to lack of space |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 4.2 | [`03cdd0e4b9a9`](https://git.kernel.org/torvalds/c/03cdd0e4b9a9) | [fs] | fs-cache: Count the number of initialised operations |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 4.2 | [`73c04a47bf79`](https://git.kernel.org/torvalds/c/73c04a47bf79) | [fs] | fs-cache: Fix cancellation of in-progress operation |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 4.2 | [`87021526300f`](https://git.kernel.org/torvalds/c/87021526300f) | [fs] | fs-cache: fscache_object_is_dead() has wrong logic, kill it |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 4.2 | [`6515d1dbf424`](https://git.kernel.org/torvalds/c/6515d1dbf424) | [fs] | fs-cache: Handle a new operation submitted against a killed object |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 4.2 | [`3c3059841a9b`](https://git.kernel.org/torvalds/c/3c3059841a9b) | [fs] | fs-cache: Move fscache_report_unexpected_submission() to make it more available |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 4.2 | [`1339ec98e32b`](https://git.kernel.org/torvalds/c/1339ec98e32b) | [fs] | fs-cache: Out of line fscache_operation_init() |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 4.2 | [`418b7eb9e101`](https://git.kernel.org/torvalds/c/418b7eb9e101) | [fs] | fs-cache: Permit fscache_cancel_op() to cancel in-progress operations too |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 4.2 | [`a39caadf0687`](https://git.kernel.org/torvalds/c/a39caadf0687) | [fs] | fs-cache: Put an aborted initialised op so that it is accounted correctly |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 4.2 | [`4a47132ff472`](https://git.kernel.org/torvalds/c/4a47132ff472) | [fs] | fs-cache: Retain the netfs context in the retrieval op earlier |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 4.2 | [`f09b443d0e09`](https://git.kernel.org/torvalds/c/f09b443d0e09) | [fs] | fs-cache: Synchronise object death state change vs operation submission |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 4.2 | [`d3b97ca4a99e`](https://git.kernel.org/torvalds/c/d3b97ca4a99e) | [fs] | fs-cache: The operation cancellation method needs calling in more places |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 4.2 | [`30ceec628412`](https://git.kernel.org/torvalds/c/30ceec628412) | [fs] | fs-cache: When submitting an op, cancel it if the target object is dying |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | 4.2 | [`c3cddc4c296c`](https://git.kernel.org/torvalds/c/c3cddc4c296c) | [fs] | fsnotify: remove obsolete documentation |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 4.2 | [`bcd7f78d078f`](https://git.kernel.org/torvalds/c/bcd7f78d078f) | [fs] | locks: have flock_lock_file take an inode pointer instead of a filp |  | generic code, tag [fs] | 3.10.0-405 |
| CANDIDATE | 4.2 | [`ee296d7c5709`](https://git.kernel.org/torvalds/c/ee296d7c5709) | [fs] | locks: inline posix_lock_file_wait and flock_lock_file_wait |  | generic code, tag [fs] | 3.10.0-405 |
| CANDIDATE | 4.2 | [`29d01b22eaa1`](https://git.kernel.org/torvalds/c/29d01b22eaa1) | [fs] | locks: new helpers - flock_lock_inode_wait and posix_lock_inode_wait |  | generic code, tag [fs] | 3.10.0-405 |
| CANDIDATE | 4.2 | [`f799d6234b6f`](https://git.kernel.org/torvalds/c/f799d6234b6f) | [fs] | Make dialect negotiation warning message easier to read |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.2 | [`f2d0a123bcf1`](https://git.kernel.org/torvalds/c/f2d0a123bcf1) | [fs] | mnt: Clarify and correct the disconnect logic in umount_tree |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.2 | [`fe78fcc85a20`](https://git.kernel.org/torvalds/c/fe78fcc85a20) | [fs] | mnt: In detach_mounts detach the appropriate unmounted mount |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.2 | [`8c6cf9cc829f`](https://git.kernel.org/torvalds/c/8c6cf9cc829f) | [fs] | mnt: Modify fs_fully_visible to deal with locked ro nodev and atime |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.2 | [`1b852bceb0d1`](https://git.kernel.org/torvalds/c/1b852bceb0d1) | [fs] | mnt: Refactor the logic for mounting sysfs and proc in a user namespace |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.2 | [`7236c85e1be5`](https://git.kernel.org/torvalds/c/7236c85e1be5) | [fs] | mnt: Update fs_fully_visible to test for permanently empty directories |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.2 | [`294d71ff2f02`](https://git.kernel.org/torvalds/c/294d71ff2f02) | [fs] | new helper: __legitimize_mnt() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.2 | [`1bfe3b259ff2`](https://git.kernel.org/torvalds/c/1bfe3b259ff2) | [fs] | nfs42: serialize LAYOUTSTATS calls of the same file |  | generic code, tag [fs] | 3.10.0-381 |
| CANDIDATE | 4.2 | [`eb6d38d5427b`](https://git.kernel.org/torvalds/c/eb6d38d5427b) | [fs] | proc: Allow creating permanently empty directories that serve as mount points |  | CONFIG_PROC_FS=y in A37 | 3.10.0-828 |
| CANDIDATE | 4.2 | [`c2c0bb44620d`](https://git.kernel.org/torvalds/c/c2c0bb44620d) | [fs] | proc: fix PAGE_SIZE limit of /proc/$PID/cmdline |  | CONFIG_PROC_FS=y in A37 | 3.10.0-254 |
| CANDIDATE | 4.2 | [`dbfae0cdcd87`](https://git.kernel.org/torvalds/c/dbfae0cdcd87) (loose) | [fs] | Provide function telling whether file_remove_privs() will do anything |  | generic code, tag [fs] | 3.10.0-460 |
| CANDIDATE | 4.2 | [`ae2ffef383fa`](https://git.kernel.org/torvalds/c/ae2ffef383fa) | [fs] | Recover from stateid-type error on SETATTR |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | 4.2 | [`5fa8e0a1c6a7`](https://git.kernel.org/torvalds/c/5fa8e0a1c6a7) (loose) | [fs] | Rename file_remove_suid() to file_remove_privs() |  | generic code, tag [fs] | 3.10.0-460 |
| CANDIDATE | 4.2 | [`ed056764271e`](https://git.kernel.org/torvalds/c/ed056764271e) | [fs] | revert "nfs: take extra reference to fl->fl_file when running a LOCKU operation" |  | generic code, tag [fs] | 3.10.0-405 |
| CANDIDATE | 4.2 | [`f9bd6733d3f1`](https://git.kernel.org/torvalds/c/f9bd6733d3f1) | [fs] | sysctl: Allow creating permanently empty directories that serve as mountpoints |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.2 | [`87d2846fcf88`](https://git.kernel.org/torvalds/c/87d2846fcf88) | [fs] | sysfs: Add support for permanently empty directories to serve as mount points |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 4.2 | [`f9bb48825a6b`](https://git.kernel.org/torvalds/c/f9bb48825a6b) | [fs] | sysfs: Create mountpoints with sysfs_create_mount_point |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | 4.2 | [`ebb3a9d4ba3b`](https://git.kernel.org/torvalds/c/ebb3a9d4ba3b) | [fs] | Update negotiate protocol for SMB3.11 dialect |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.2 | [`2adc376c5519`](https://git.kernel.org/torvalds/c/2adc376c5519) | [fs] | vfs: avoid creation of inode number 0 in get_next_ino |  | generic code, tag [fs] | 3.10.0-301 |
| CANDIDATE | 4.2 | [`ceeb0e5d39fc`](https://git.kernel.org/torvalds/c/ceeb0e5d39fc) | [fs] | vfs: Ignore unlocked mounts in fs_fully_visible |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.3 | [`0de1f4c6f6c0`](https://git.kernel.org/torvalds/c/0de1f4c6f6c0) | [fs] | Add way to query server fs info for smb3 |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.3 | [`7f49294282c4`](https://git.kernel.org/torvalds/c/7f49294282c4) | [fs] | audit: clean simple fsnotify implementation |  | CONFIG_AUDIT=y in A37 | 3.10.0-351 |
| CANDIDATE | 4.3 | [`aa7c043d9783`](https://git.kernel.org/torvalds/c/aa7c043d9783) | [fs] | audit: eliminate unnecessary extra layer of watch parent references |  | CONFIG_AUDIT=y in A37 | 3.10.0-351 |
| CANDIDATE | 4.3 | [`f8259b262bed`](https://git.kernel.org/torvalds/c/f8259b262bed) | [fs] | audit: eliminate unnecessary extra layer of watch references |  | CONFIG_AUDIT=y in A37 | 3.10.0-351 |
| CANDIDATE | 4.3 | [`ae9d2fb482fa`](https://git.kernel.org/torvalds/c/ae9d2fb482fa) | [fs] | audit: fix uninitialized variable in audit_add_rule() |  | CONFIG_AUDIT=y in A37 | 3.10.0-351 |
| CANDIDATE | 4.3 | [`34d99af52ad4`](https://git.kernel.org/torvalds/c/34d99af52ad4) | [fs] | audit: implement audit by executable |  | CONFIG_AUDIT=y in A37 | 3.10.0-351 |
| CANDIDATE | 4.3 | [`8c85fc9ae69a`](https://git.kernel.org/torvalds/c/8c85fc9ae69a) | [fs] | audit: make audit_del_rule() more robust |  | CONFIG_AUDIT=y in A37 | 3.10.0-351 |
| CANDIDATE | 4.3 | [`84cb777e6781`](https://git.kernel.org/torvalds/c/84cb777e6781) | [fs] | audit: use macros for unset inode and device values |  | CONFIG_AUDIT=y in A37 | 3.10.0-351 |
| CANDIDATE | 4.3 | [`1241d7bf2ac8`](https://git.kernel.org/torvalds/c/1241d7bf2ac8) | [fs] | core: Remove the ib_reg_phys_mr() and ib_rereg_phys_mr() verbs |  | generic code, tag [fs] | 3.10.0-381 |
| CANDIDATE | 4.3 | [`a068acf2ee77`](https://git.kernel.org/torvalds/c/a068acf2ee77) (loose) | [fs] | create and use seq_show_option for escaping |  | generic code, tag [fs] | 3.10.0-358 |
| CANDIDATE | 4.3 | [`ed923b5776a2`](https://git.kernel.org/torvalds/c/ed923b5776a2) | [fs] | ext4: add ext4_get_block_dax() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-469 |
| CANDIDATE | 4.3 | [`11bd1a9ecdd6`](https://git.kernel.org/torvalds/c/11bd1a9ecdd6) | [fs] | ext4: huge page fault support |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-469 |
| CANDIDATE | 4.3 | [`5ba92bcf0dd6`](https://git.kernel.org/torvalds/c/5ba92bcf0dd6) | [fs] | ext4: reject journal options for ext2 mounts |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-313 |
| CANDIDATE | 4.3 | [`01a33b4ace68`](https://git.kernel.org/torvalds/c/01a33b4ace68) | [fs] | ext4: start transaction before calling into DAX |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-469 |
| CANDIDATE | 4.3 | [`911af577de4e`](https://git.kernel.org/torvalds/c/911af577de4e) | [fs] | ext4: update c/mtime on truncate up |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-467 |
| CANDIDATE | 4.3 | [`e676a4c19165`](https://git.kernel.org/torvalds/c/e676a4c19165) | [fs] | ext4: use ext4_get_block_write() for DAX |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-469 |
| CANDIDATE | 4.3 | [`88627148400e`](https://git.kernel.org/torvalds/c/88627148400e) | [fs] | fix encryption error checks on mount |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.3 | [`15ce414b82b0`](https://git.kernel.org/torvalds/c/15ce414b82b0) | [fs] | fixup: audit: implement audit by executable |  | generic code, tag [fs] | 3.10.0-351 |
| CANDIDATE | 4.3 | [`1e39fc01836d`](https://git.kernel.org/torvalds/c/1e39fc01836d) | [fs] | fsnotify: document mark locking |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 4.3 | [`3c53e5142124`](https://git.kernel.org/torvalds/c/3c53e5142124) | [fs] | fsnotify: fix check in inotify fdinfo printing |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 4.3 | [`4712e722f914`](https://git.kernel.org/torvalds/c/4712e722f914) | [fs] | fsnotify: get rid of fsnotify_destroy_mark_locked() |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 4.3 | [`925d1132a03e`](https://git.kernel.org/torvalds/c/925d1132a03e) | [fs] | fsnotify: remove mark->free_list |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 4.3 | [`515a9adce0f0`](https://git.kernel.org/torvalds/c/515a9adce0f0) | [fs] | include/linux/printk.h: include pr_fmt in pr_debug_ratelimited |  | generic code, tag [fs] | 3.10.0-704 |
| CANDIDATE | 4.3 | [`74278da9f70d`](https://git.kernel.org/torvalds/c/74278da9f70d) | [fs] | inode: convert inode_sb_list_lock to per-sb |  | generic code, tag [fs] | 3.10.0-780 |
| CANDIDATE | 4.3 | [`ac05fbb40062`](https://git.kernel.org/torvalds/c/ac05fbb40062) | [fs] | inode: don't softlockup when evicting inodes |  | generic code, tag [fs] | 3.10.0-1142 |
| CANDIDATE | 4.3 | [`c7f5408493ae`](https://git.kernel.org/torvalds/c/c7f5408493ae) | [fs] | inode: rename i_wb_list to i_io_list |  | generic code, tag [fs] | 3.10.0-780 |
| CANDIDATE | 4.3 | [`841df7df1962`](https://git.kernel.org/torvalds/c/841df7df1962) | [fs] | jbd2: avoid infinite loop when destroying aborted journal |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-647 |
| CANDIDATE | 4.3 | [`6d3ec14d703c`](https://git.kernel.org/torvalds/c/6d3ec14d703c) | [fs] | jbd2: limit number of reserved credits |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-493 |
| CANDIDATE | 4.3 | [`d3691d2c6d3e`](https://git.kernel.org/torvalds/c/d3691d2c6d3e) (loose) | [fs] | kernel: proc: add cond_resched to /proc/kpage* read/write loop |  | generic code, tag [fs] | 3.10.0-963 |
| CANDIDATE | 4.3 | [`f074a8f49eb8`](https://git.kernel.org/torvalds/c/f074a8f49eb8) (loose) | [fs] | kernel: proc: export idle flag via kpageflags |  | generic code, tag [fs] | 3.10.0-963 |
| CANDIDATE | 4.3 | [`1cfc4a9cf89d`](https://git.kernel.org/torvalds/c/1cfc4a9cf89d) | [fs] | libxfs: add xfs_bit.c |  | generic code, tag [fs] | 3.10.0-354 |
| CANDIDATE | 4.3 | [`dfdd4ac66c2f`](https://git.kernel.org/torvalds/c/dfdd4ac66c2f) | [fs] | libxfs: bad magic number should set da block buffer error |  | generic code, tag [fs] | 3.10.0-354 |
| CANDIDATE | 4.3 | [`2f123bce1894`](https://git.kernel.org/torvalds/c/2f123bce1894) | [fs] | libxfs: readahead of dir3 data blocks should use the read verifier |  | generic code, tag [fs] | 3.10.0-354 |
| CANDIDATE | 4.3 | [`77b1a97d2182`](https://git.kernel.org/torvalds/c/77b1a97d2182) | [fs] | mnt: fs_fully_visible enforce noexec and nosuid if !SB_I_NOEXEC |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.3 | [`19cf6335134d`](https://git.kernel.org/torvalds/c/19cf6335134d) | [fs] | nfs42: decode_layoutstats does not need res parameter |  | generic code, tag [fs] | 3.10.0-381 |
| CANDIDATE | 4.3 | [`1090c3bf81ef`](https://git.kernel.org/torvalds/c/1090c3bf81ef) | [fs] | nfs42: remove unused declaration |  | generic code, tag [fs] | 3.10.0-381 |
| CANDIDATE | 4.3 | [`2259f960b3a9`](https://git.kernel.org/torvalds/c/2259f960b3a9) | [fs] | nfsv4.x/pnfs: Don't try to recover stateids twice in layoutget |  | generic code, tag [fs] | 3.10.0-381 |
| CANDIDATE | 4.3 | [`a06db751c321`](https://git.kernel.org/torvalds/c/a06db751c321) | [fs] | pagemap: check permissions and capabilities at open time |  | generic code, tag [fs] | 3.10.0-977 |
| CANDIDATE | 4.3 | [`1c90308e7a77`](https://git.kernel.org/torvalds/c/1c90308e7a77) | [fs] | pagemap: hide physical addresses from non-privileged users |  | generic code, tag [fs] | 3.10.0-977 |
| CANDIDATE | 4.3 | [`356515e7b64c`](https://git.kernel.org/torvalds/c/356515e7b64c) | [fs] | pagemap: rework hugetlb and thp report |  | generic code, tag [fs] | 3.10.0-977 |
| CANDIDATE | 4.3 | [`4eae50143bcb`](https://git.kernel.org/torvalds/c/4eae50143bcb) | [fs] | revert "nfs: Make close(2) asynchronous when closing NFS O_DIRECT files" |  | generic code, tag [fs] | 3.10.0-320 |
| CANDIDATE | 4.3 | [`36319608e287`](https://git.kernel.org/torvalds/c/36319608e287) | [fs] | revert "nfsv4: Remove incorrect check in can_open_delegated()" |  | generic code, tag [fs] | 3.10.0-381 |
| CANDIDATE | 4.3 | [`e97fedb9ef98`](https://git.kernel.org/torvalds/c/e97fedb9ef98) | [fs] | sync: serialise per-superblock sync operations |  | generic code, tag [fs] | 3.10.0-780 |
| CANDIDATE | 4.3 | [`90f8572b0f02`](https://git.kernel.org/torvalds/c/90f8572b0f02) | [fs] | vfs: Commit to never having exectuables on proc and sysfs |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.4 | [`592fafe644bf`](https://git.kernel.org/torvalds/c/592fafe644bf) | [fs] | Add resilienthandles mount parm |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.4 | [`7b52e2793a58`](https://git.kernel.org/torvalds/c/7b52e2793a58) | [fs] | Allow copy offload (CopyChunk) across shares |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.4 | [`ca9e7a1c8559`](https://git.kernel.org/torvalds/c/ca9e7a1c8559) | [fs] | Allow duplicate extents in SMB3 not just SMB3.1.1 |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.4 | [`5a48fc147d7f`](https://git.kernel.org/torvalds/c/5a48fc147d7f) | [fs] | block: blk_flush_integrity() for bio-based drivers |  | generic code, tag [fs] | 3.10.0-486 |
| CANDIDATE | 4.4 | [`ab27a8d04b32`](https://git.kernel.org/torvalds/c/ab27a8d04b32) | [fs] | coredump: add DAX filtering for FDPIC ELF coredumps |  | CONFIG_COREDUMP=y in A37 | 3.10.0-486 |
| CANDIDATE | 4.4 | [`74cedf9b6c60`](https://git.kernel.org/torvalds/c/74cedf9b6c60) | [fs] | direct-io: Fix negative return from dio read beyond eof |  | generic code, tag [fs] | 3.10.0-694 |
| CANDIDATE | 4.4 | [`ef83b6e8f40b`](https://git.kernel.org/torvalds/c/ef83b6e8f40b) | [fs] | ext2, ext4: warn when mounting with dax enabled |  | generic code, tag [fs] | 3.10.0-486 |
| CANDIDATE | 4.4 | [`2d4594acbf6d`](https://git.kernel.org/torvalds/c/2d4594acbf6d) | [fs] | fix the regression from "direct-io: Fix negative return from dio read beyond eof" |  | generic code, tag [fs] | 3.10.0-694 |
| CANDIDATE | 4.4 | [`cf89752645e4`](https://git.kernel.org/torvalds/c/cf89752645e4) | [fs] | fs-cache: Add missing initialization of ret in cachefiles_write_page() |  | generic code, tag [fs] | 3.10.0-470 |
| CANDIDATE | 4.4 | [`b130ed5998e6`](https://git.kernel.org/torvalds/c/b130ed5998e6) | [fs] | fs-cache: Don't override netfs's primary_index if registering failed |  | generic code, tag [fs] | 3.10.0-470 |
| CANDIDATE | 4.4 | [`102f4d900c9c`](https://git.kernel.org/torvalds/c/102f4d900c9c) | [fs] | fs-cache: Handle a write to the page immediately beyond the EOF marker |  | generic code, tag [fs] | 3.10.0-470 |
| CANDIDATE | 4.4 | [`118c91635624`](https://git.kernel.org/torvalds/c/118c91635624) | [fs] | fs/nfs: remove unnecessary new_valid_dev check |  | generic code, tag [fs] | 3.10.0-381 |
| CANDIDATE | 4.4 | [`a1c83681d527`](https://git.kernel.org/torvalds/c/a1c83681d527) | [fs] | fs: Drop unlikely before IS_ERR(_OR_NULL) |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.4 | [`d30e2c05a1a2`](https://git.kernel.org/torvalds/c/d30e2c05a1a2) | [fs] | inotify: actually check for invalid bits in sys_inotify_add_watch() |  | CONFIG_INOTIFY_USER=y in A37 | 3.10.0-593 |
| CANDIDATE | 4.4 | [`6933599697c9`](https://git.kernel.org/torvalds/c/6933599697c9) | [fs] | inotify: hide internal kernel bits from fdinfo |  | CONFIG_INOTIFY_USER=y in A37 | 3.10.0-593 |
| CANDIDATE | 4.4 | [`33d14975e5ac`](https://git.kernel.org/torvalds/c/33d14975e5ac) | [fs] | jbd2: fix checkpoint list cleanup |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-647 |
| CANDIDATE | 4.4 | [`fef4ded8cb2e`](https://git.kernel.org/torvalds/c/fef4ded8cb2e) | [fs] | libxfs: fix two comment typos |  | generic code, tag [fs] | 3.10.0-354 |
| CANDIDATE | 4.4 | [`e55c34a66f87`](https://git.kernel.org/torvalds/c/e55c34a66f87) | [fs] | locks: introduce locks_lock_inode_wait() |  | generic code, tag [fs] | 3.10.0-667 |
| CANDIDATE | 4.4 | [`6ca7d910121a`](https://git.kernel.org/torvalds/c/6ca7d910121a) | [fs] | locks: Use more file_inode and fix a comment |  | generic code, tag [fs] | 3.10.0-470 |
| CANDIDATE | 4.4 | [`4f6563677ae8`](https://git.kernel.org/torvalds/c/4f6563677ae8) | [fs] | Move locks API users to locks_lock_inode_wait() |  | generic code, tag [fs] | 3.10.0-667 |
| CANDIDATE | 4.4 | [`f2ca379642d7`](https://git.kernel.org/torvalds/c/f2ca379642d7) | [fs] | namei: permit linking with CAP_FOWNER in userns |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | 4.4 | [`e5341f3a5762`](https://git.kernel.org/torvalds/c/e5341f3a5762) | [fs] | nfs42: add CLONE proc functions |  | generic code, tag [fs] | 3.10.0-381 |
| CANDIDATE | 4.4 | [`36022770de6c`](https://git.kernel.org/torvalds/c/36022770de6c) | [fs] | nfs42: add CLONE xdr functions |  | generic code, tag [fs] | 3.10.0-381 |
| CANDIDATE | 4.4 | [`bea51b30b281`](https://git.kernel.org/torvalds/c/bea51b30b281) | [fs] | nfs42: add NFS_IOC_CLONE ioctl |  | generic code, tag [fs] | 3.10.0-381 |
| CANDIDATE | 4.4 | [`a340abcf4173`](https://git.kernel.org/torvalds/c/a340abcf4173) | [fs] | nfs42: add NFS_IOC_CLONE_RANGE ioctl |  | generic code, tag [fs] | 3.10.0-381 |
| CANDIDATE | 4.4 | [`811b7b85d664`](https://git.kernel.org/torvalds/c/811b7b85d664) | [fs] | nfs42: respect clone_blksize |  | generic code, tag [fs] | 3.10.0-381 |
| CANDIDATE | 4.4 | [`c646619355d1`](https://git.kernel.org/torvalds/c/c646619355d1) | [fs] | nfsroot: make nfsroot to accept the 1024 bytes long directory name |  | generic code, tag [fs] | 3.10.0-381 |
| CANDIDATE | 4.4 | [`ea5c58e70c3a`](https://git.kernel.org/torvalds/c/ea5c58e70c3a) | [fs] | vfs: clear remainder of 'full_fds_bits' in dup_fd() |  | generic code, tag [fs] | 3.10.0-717 |
| CANDIDATE | 4.4 | [`fc90888d07b8`](https://git.kernel.org/torvalds/c/fc90888d07b8) | [fs] | vfs: conditionally clear close-on-exec flag |  | generic code, tag [fs] | 3.10.0-717 |
| CANDIDATE | 4.4 | [`f3f86e33dc3d`](https://git.kernel.org/torvalds/c/f3f86e33dc3d) | [fs] | vfs: Fix pathological performance case for __alloc_fd() |  | generic code, tag [fs] | 3.10.0-717 |
| CANDIDATE | 4.5 | [`48c9579a1afe`](https://git.kernel.org/torvalds/c/48c9579a1afe) | [fs] | Adding stateid information to tracepoints |  | generic code, tag [fs] | 3.10.0-483 |
| CANDIDATE | 4.5 | [`9759b0fb1d20`](https://git.kernel.org/torvalds/c/9759b0fb1d20) | [fs] | Adding tracepoint to cached open |  | generic code, tag [fs] | 3.10.0-614 |
| CANDIDATE | 4.5 | [`2feb55f89096`](https://git.kernel.org/torvalds/c/2feb55f89096) (loose) | [fs] | allow no_seek_end_llseek to actually seek |  | generic code, tag [fs] | 3.10.0-459 |
| CANDIDATE | 4.5 | [`03cdadb04077`](https://git.kernel.org/torvalds/c/03cdadb04077) | [fs] | block: disable block device DAX by default |  | generic code, tag [fs] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`4ebb16ca9a06`](https://git.kernel.org/torvalds/c/4ebb16ca9a06) | [fs] | block: introduce bdev_file_inode() |  | generic code, tag [fs] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`01b9b0b28626`](https://git.kernel.org/torvalds/c/01b9b0b28626) | [fs] | cifs_dbg() outputs an uninitialized buffer in cifs_readdir() |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.5 | [`dc6ae6d8e772`](https://git.kernel.org/torvalds/c/dc6ae6d8e772) | [fs] | crush: add chooseleaf_stable tunable |  | generic code, tag [fs] | 3.10.0-448 |
| CANDIDATE | 4.5 | [`b9b519b78cfb`](https://git.kernel.org/torvalds/c/b9b519b78cfb) | [fs] | crush: decode and initialize chooseleaf_stable |  | generic code, tag [fs] | 3.10.0-448 |
| CANDIDATE | 4.5 | [`f224a6915f26`](https://git.kernel.org/torvalds/c/f224a6915f26) | [fs] | crush: ensure bucket id is valid before indexing buckets array |  | generic code, tag [fs] | 3.10.0-448 |
| CANDIDATE | 4.5 | [`56a4f3091dce`](https://git.kernel.org/torvalds/c/56a4f3091dce) | [fs] | crush: ensure take bucket value is valid |  | generic code, tag [fs] | 3.10.0-448 |
| CANDIDATE | 4.5 | [`62fb4a155f74`](https://git.kernel.org/torvalds/c/62fb4a155f74) | [fs] | don't carry MAY_OPEN in op->acc_mode |  | generic code, tag [fs] | 3.10.0-966 |
| CANDIDATE | 4.5 | [`df0108c5da56`](https://git.kernel.org/torvalds/c/df0108c5da56) | [fs] | epoll: add EPOLLEXCLUSIVE flag |  | CONFIG_EPOLL=y in A37 | 3.10.0-386 |
| CANDIDATE | 4.5 | [`b6a515c8a0f6`](https://git.kernel.org/torvalds/c/b6a515c8a0f6) | [fs] | epoll: restrict EPOLLEXCLUSIVE to POLLIN and POLLOUT |  | CONFIG_EPOLL=y in A37 | 3.10.0-386 |
| CANDIDATE | 4.5 | [`1e9d180ba39f`](https://git.kernel.org/torvalds/c/1e9d180ba39f) | [fs] | ext2, ext4: fix issue with missing journal entry in ext4_dax_mkwrite() |  | generic code, tag [fs] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`0a6cf9137ded`](https://git.kernel.org/torvalds/c/0a6cf9137ded) | [fs] | ext2, ext4: only set S_DAX for regular inodes |  | generic code, tag [fs] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`d5be7a03b002`](https://git.kernel.org/torvalds/c/d5be7a03b002) | [fs] | ext4: call dax_pfn_mkwrite() for DAX fsync/msync |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-486 |
| CANDIDATE | 4.5 | [`bcff24887d00`](https://git.kernel.org/torvalds/c/bcff24887d00) | [fs] | ext4: don't read blocks from disk after extents being swapped |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-611 |
| CANDIDATE | 4.5 | [`ed8ad83808f0`](https://git.kernel.org/torvalds/c/ed8ad83808f0) | [fs] | ext4: fix bh->b_state corruption |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-619 |
| CANDIDATE | 4.5 | [`74dae4278546`](https://git.kernel.org/torvalds/c/74dae4278546) | [fs] | ext4: fix crashes in dioread_nolock mode |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.5 | [`32ebffd3bbb4`](https://git.kernel.org/torvalds/c/32ebffd3bbb4) | [fs] | ext4: fix races between buffered IO and collapse / insert range |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-486 |
| CANDIDATE | 4.5 | [`ea3d7209ca01`](https://git.kernel.org/torvalds/c/ea3d7209ca01) | [fs] | ext4: fix races between page faults and hole punching |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-486 |
| CANDIDATE | 4.5 | [`011278485ecc`](https://git.kernel.org/torvalds/c/011278485ecc) | [fs] | ext4: fix races of writeback with punch hole and zero range |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-486 |
| CANDIDATE | 4.5 | [`6ffe77bad545`](https://git.kernel.org/torvalds/c/6ffe77bad545) | [fs] | ext4: iterate over buffer heads correctly in move_extent_per_page() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-611 |
| CANDIDATE | 4.5 | [`17048e8a083f`](https://git.kernel.org/torvalds/c/17048e8a083f) | [fs] | ext4: move unlocked dio protection from ext4_alloc_file_blocks() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-486 |
| CANDIDATE | 4.5 | [`73f34a5e2ced`](https://git.kernel.org/torvalds/c/73f34a5e2ced) | [fs] | ext4: online defrag not supported with DAX |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-486 |
| CANDIDATE | 4.5 | [`ba5843f51d46`](https://git.kernel.org/torvalds/c/ba5843f51d46) | [fs] | ext4: use pre-zeroed blocks for DAX page faults |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-486 |
| CANDIDATE | 4.5 | [`1ee9f4bd1a97`](https://git.kernel.org/torvalds/c/1ee9f4bd1a97) | [fs] | Fix cifs_uniqueid_to_ino_t() function for s390x |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | 4.5 | [`1deaf9d19776`](https://git.kernel.org/torvalds/c/1deaf9d19776) | [fs] | fs/notify/inode_mark.c: use list_next_entry in fsnotify_unmount_inodes |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 4.5 | [`e458bcd16f5b`](https://git.kernel.org/torvalds/c/e458bcd16f5b) | [fs] | fs/overlayfs/super.c needs pagemap.h |  | generic code, tag [fs] | 3.10.0-562 |
| CANDIDATE | 4.5 | [`90330e689c32`](https://git.kernel.org/torvalds/c/90330e689c32) | [fs] | fs: __generic_file_splice_read retry lookup on AOP_TRUNCATED_PAGE |  | generic code, tag [fs] | 3.10.0-351 |
| CANDIDATE | 4.5 | [`0fcbf996d848`](https://git.kernel.org/torvalds/c/0fcbf996d848) | [fs] | fs: return -EOPNOTSUPP if clone is not supported |  | generic code, tag [fs] | 3.10.0-674 |
| CANDIDATE | 4.5 | [`0918f1c309b8`](https://git.kernel.org/torvalds/c/0918f1c309b8) | [fs] | fsnotify: turn fsnotify reaper thread into a workqueue job |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 4.5 | [`0b5da8db145b`](https://git.kernel.org/torvalds/c/0b5da8db145b) | [fs] | fuse: add support for SEEK_HOLE and SEEK_DATA in lseek |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-579 |
| CANDIDATE | 4.5 | [`5d097056c9a0`](https://git.kernel.org/torvalds/c/5d097056c9a0) | [fs] | kmemcg: account certain kmem allocations to memcg |  | generic code, tag [fs] | 3.10.0-1075 |
| CANDIDATE | 4.5 | [`2e9101da6047`](https://git.kernel.org/torvalds/c/2e9101da6047) | [fs] | libxfs: make xfs_alloc_fix_freelist non-static |  | generic code, tag [fs] | 3.10.0-354 |
| CANDIDATE | 4.5 | [`1d4292bfdc77`](https://git.kernel.org/torvalds/c/1d4292bfdc77) | [fs] | libxfs: Optimize the loop for xfs_bitmap_empty |  | generic code, tag [fs] | 3.10.0-354 |
| CANDIDATE | 4.5 | [`96f859d52bcb`](https://git.kernel.org/torvalds/c/96f859d52bcb) | [fs] | libxfs: pack the agfl header structure so XFS_AGFL_SIZE is correct |  | generic code, tag [fs] | 3.10.0-354 |
| CANDIDATE | 4.5 | [`c5ab131ba0df`](https://git.kernel.org/torvalds/c/c5ab131ba0df) | [fs] | libxfs: refactor short btree block verification |  | generic code, tag [fs] | 3.10.0-354 |
| CANDIDATE | 4.5 | [`6d3eb1eca0e3`](https://git.kernel.org/torvalds/c/6d3eb1eca0e3) | [fs] | libxfs: use a convenience variable instead of open-coding the fork |  | generic code, tag [fs] | 3.10.0-354 |
| CANDIDATE | 4.5 | [`9e8925b67a80`](https://git.kernel.org/torvalds/c/9e8925b67a80) | [fs] | locks: Allow disabling mandatory locking at compile time |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.5 | [`95ace75414f3`](https://git.kernel.org/torvalds/c/95ace75414f3) | [fs] | locks: Don't allow mounts in user namespaces to enable mandatory locking |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.5 | [`acc15575e78e`](https://git.kernel.org/torvalds/c/acc15575e78e) | [fs] | locks: new locks_mandatory_area calling convention |  | generic code, tag [fs] | 3.10.0-579 |
| CANDIDATE | 4.5 | [`68d264cf02b0`](https://git.kernel.org/torvalds/c/68d264cf02b0) | [fs] | nfs42: handle layoutstats stateid error |  | generic code, tag [fs] | 3.10.0-614 |
| CANDIDATE | 4.5 | [`414ca017a54d`](https://git.kernel.org/torvalds/c/414ca017a54d) | [fs] | nfsd4: fix gss-proxy 4.1 mounts for some AD principals |  | generic code, tag [fs] | 3.10.0-337 |
| CANDIDATE | 4.5 | [`9fd4b9fc7695`](https://git.kernel.org/torvalds/c/9fd4b9fc7695) | [fs] | nfsv4.x/pnfs: Fix a race between layoutget and bulk recalls |  | generic code, tag [fs] | 3.10.0-614 |
| CANDIDATE | 4.5 | [`2454dfea0aef`](https://git.kernel.org/torvalds/c/2454dfea0aef) | [fs] | nfsv4.x/pnfs: Fix a race between layoutget and pnfs_destroy_layout |  | generic code, tag [fs] | 3.10.0-614 |
| CANDIDATE | 4.5 | [`52db400fcd50`](https://git.kernel.org/torvalds/c/52db400fcd50) | [fs] | pmem, dax: clean up clear_pmem() |  | generic code, tag [fs] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`275516cdcfa4`](https://git.kernel.org/torvalds/c/275516cdcfa4) | [fs] | Print IP address of unresponsive server |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.5 | [`84ad5802a33a`](https://git.kernel.org/torvalds/c/84ad5802a33a) | [fs] | proc: meminfo: estimate available memory more conservatively |  | CONFIG_PROC_FS=y in A37 | 3.10.0-482 |
| CANDIDATE | 4.5 | [`65376df58217`](https://git.kernel.org/torvalds/c/65376df58217) | [fs] | proc: revert /proc/<pid>/maps [stack:TID] annotation |  | CONFIG_PROC_FS=y in A37 | 3.10.0-695 |
| CANDIDATE | 4.5 | [`80ad623edd2d`](https://git.kernel.org/torvalds/c/80ad623edd2d) | [fs] | revert "btrfs: clear PF_NOFREEZE in cleaner_kthread()" |  | generic code, tag [fs] | 3.10.0-374 |
| CANDIDATE | 4.5 | [`3e85286e7522`](https://git.kernel.org/torvalds/c/3e85286e7522) | [fs] | revert "xfs: clear PF_NOFREEZE for xfsaild kthread" |  | generic code, tag [fs] | 3.10.0-354 |
| CANDIDATE | 4.5 | [`b40ef8696fbb`](https://git.kernel.org/torvalds/c/b40ef8696fbb) | [fs] | saner calling conventions for copy_mount_options() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.5 | [`41662f5cc553`](https://git.kernel.org/torvalds/c/41662f5cc553) | [fs] | sysctl: enable strict writes |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.5 | [`29732938a628`](https://git.kernel.org/torvalds/c/29732938a628) | [fs] | vfs: add copy_file_range syscall and vfs helper |  | generic code, tag [fs] | 3.10.0-579 |
| CANDIDATE | 4.5 | [`eac70053a141`](https://git.kernel.org/torvalds/c/eac70053a141) | [fs] | vfs: Add vfs_copy_file_range() support for pagecache copies |  | generic code, tag [fs] | 3.10.0-579 |
| CANDIDATE | 4.5 | [`04b38d601239`](https://git.kernel.org/torvalds/c/04b38d601239) | [fs] | vfs: pull btrfs clone API to vfs layer |  | generic code, tag [fs] | 3.10.0-618 |
| CANDIDATE | 4.5 | [`04b38d601239`](https://git.kernel.org/torvalds/c/04b38d601239) | [fs] | vfs: pull btrfs clone API to vfs layer |  | generic code, tag [fs] | 3.10.0-579 |
| CANDIDATE | 4.5 | [`d79bdd52d8be`](https://git.kernel.org/torvalds/c/d79bdd52d8be) | [fs] | vfs: wire up compat ioctl for CLONE/CLONE_RANGE |  | generic code, tag [fs] | 3.10.0-822 |
| CANDIDATE | 4.5 | [`5955102c9984`](https://git.kernel.org/torvalds/c/5955102c9984) | [fs] | wrappers for ->i_mutex access |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | 4.5 | [`5955102c9984`](https://git.kernel.org/torvalds/c/5955102c9984) | [fs] | wrappers for ->i_mutex access |  | generic code, tag [fs] | 3.10.0-562 |
| CANDIDATE | 4.5 | [`0b2a6f231dcb`](https://git.kernel.org/torvalds/c/0b2a6f231dcb) (loose) | [fs] | xattr: Use kvfree() |  | generic code, tag [fs] | 3.10.0-812 |
| CANDIDATE | 4.6 | [`d101a125954e`](https://git.kernel.org/torvalds/c/d101a125954e) (loose) | [fs] | add file_dentry() |  | generic code, tag [fs] | 3.10.0-495 |
| CANDIDATE | 4.6 | [`10c64cea04d3`](https://git.kernel.org/torvalds/c/10c64cea04d3) | [fs] | atomic_open(): fix the handling of create_error |  | generic code, tag [fs] | 3.10.0-919 |
| CANDIDATE | 4.6 | [`f8b31710e46c`](https://git.kernel.org/torvalds/c/f8b31710e46c) | [fs] | ceph_fill_trace(): don't bother with d_instantiate(dn, NULL) |  | generic code, tag [fs] | 3.10.0-701 |
| CANDIDATE | 4.6 | [`85f40482bc17`](https://git.kernel.org/torvalds/c/85f40482bc17) | [fs] | cifs_get_root(): use lookup_one_len_unlocked() |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | 4.6 | [`67245ff33206`](https://git.kernel.org/torvalds/c/67245ff33206) | [fs] | devpts: clean up interface to pty drivers |  | CONFIG_TTY=y in A37 | 3.10.0-593 |
| CANDIDATE | 4.6 | [`187372a3b9fa`](https://git.kernel.org/torvalds/c/187372a3b9fa) | [fs] | direct-io: always call ->end_io if non-NULL |  | generic code, tag [fs] | 3.10.0-868 |
| CANDIDATE | 4.6 | [`a484c3dd9426`](https://git.kernel.org/torvalds/c/a484c3dd9426) | [fs] | eventfd: document lockless access in eventfd_poll |  | CONFIG_EVENTFD=y in A37 | 3.10.0-371 |
| CANDIDATE | 4.6 | [`e3fb8eb14eaf`](https://git.kernel.org/torvalds/c/e3fb8eb14eaf) | [fs] | ext4: cleanup handling of bh->b_state in DAX mmap |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-619 |
| CANDIDATE | 4.6 | [`140a52508a68`](https://git.kernel.org/torvalds/c/140a52508a68) | [fs] | ext4: factor out determining of hole size |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-619 |
| CANDIDATE | 4.6 | [`74c66bcb7eda`](https://git.kernel.org/torvalds/c/74c66bcb7eda) | [fs] | ext4: Fix data exposure after failed AIO DIO |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-868 |
| CANDIDATE | 4.6 | [`87d8a74b5674`](https://git.kernel.org/torvalds/c/87d8a74b5674) | [fs] | ext4: fix setting of referenced bit in ext4_es_lookup_extent() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1146 |
| CANDIDATE | 4.6 | [`2d90c160e5f1`](https://git.kernel.org/torvalds/c/2d90c160e5f1) | [fs] | ext4: more efficient SEEK_DATA implementation |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-619 |
| CANDIDATE | 4.6 | [`7915a861c018`](https://git.kernel.org/torvalds/c/7915a861c018) | [fs] | ext4: print ext4 mount option data_err=abort correctly |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-506 |
| CANDIDATE | 4.6 | [`600be30a8bc1`](https://git.kernel.org/torvalds/c/600be30a8bc1) | [fs] | ext4: remove i_ioend_count |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-912 |
| CANDIDATE | 4.6 | [`facab4d9711e`](https://git.kernel.org/torvalds/c/facab4d9711e) | [fs] | ext4: return hole from ext4_map_blocks() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-619 |
| CANDIDATE | 4.6 | [`34dbbcdbf633`](https://git.kernel.org/torvalds/c/34dbbcdbf633) | [fs] | Make file credentials available to the seqfile interfaces |  | generic code, tag [fs] | 3.10.0-773 |
| CANDIDATE | 4.6 | [`40cf446b9482`](https://git.kernel.org/torvalds/c/40cf446b9482) | [fs] | nfs4.h: add SCSI layout definitions |  | generic code, tag [fs] | 3.10.0-467 |
| CANDIDATE | 4.6 | [`4aed9c46afb8`](https://git.kernel.org/torvalds/c/4aed9c46afb8) | [fs] | nfsd4: fix bad bounds checking |  | generic code, tag [fs] | 3.10.0-460 |
| CANDIDATE | 4.6 | [`0f1738a10bf0`](https://git.kernel.org/torvalds/c/0f1738a10bf0) | [fs] | nfsd4: resfh unused in nfsd4_secinfo |  | generic code, tag [fs] | 3.10.0-460 |
| CANDIDATE | 4.6 | [`810d82e68301`](https://git.kernel.org/torvalds/c/810d82e68301) | [fs] | nfsv4.x: Allow multiple callbacks in flight |  | generic code, tag [fs] | 3.10.0-614 |
| CANDIDATE | 4.6 | [`f74a834a0e1b`](https://git.kernel.org/torvalds/c/f74a834a0e1b) | [fs] | nfsv4.x: CB_SEQUENCE should return NFS4ERR_DELAY if still executing |  | generic code, tag [fs] | 3.10.0-614 |
| CANDIDATE | 4.6 | [`80f9642724af`](https://git.kernel.org/torvalds/c/80f9642724af) | [fs] | nfsv4.x: Enforce the ca_maxresponsesize_cached on the back channel |  | generic code, tag [fs] | 3.10.0-614 |
| CANDIDATE | 4.6 | [`e5003b2f6a75`](https://git.kernel.org/torvalds/c/e5003b2f6a75) | [fs] | nfsv4.x: Fix NFS4ERR_RETRY_UNCACHED_REP in nfs4_callback_sequence |  | generic code, tag [fs] | 3.10.0-614 |
| CANDIDATE | 4.6 | [`5f83d86cf531`](https://git.kernel.org/torvalds/c/5f83d86cf531) | [fs] | nfsv4.x: Fix wraparound issues when validing the callback sequence id |  | generic code, tag [fs] | 3.10.0-614 |
| CANDIDATE | 4.6 | [`f4f58ed19b9e`](https://git.kernel.org/torvalds/c/f4f58ed19b9e) | [fs] | nfsv4.x: Remove hard coded slotids in callback channel |  | generic code, tag [fs] | 3.10.0-614 |
| CANDIDATE | 4.6 | [`5ec0811d3037`](https://git.kernel.org/torvalds/c/5ec0811d3037) | [fs] | propogate_mnt: Handle the first propogated copy being a slave | CVE-2016-4581 | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | 4.6 | [`926132c0257a`](https://git.kernel.org/torvalds/c/926132c0257a) | [fs] | quota: add new quotactl Q_GETNEXTQUOTA |  | CONFIG_QUOTA=y in A37 | 3.10.0-358 |
| CANDIDATE | 4.6 | [`8b37524962b9`](https://git.kernel.org/torvalds/c/8b37524962b9) | [fs] | quota: add new quotactl Q_XGETNEXTQUOTA |  | CONFIG_QUOTA=y in A37 | 3.10.0-358 |
| CANDIDATE | 4.6 | [`ba58148b6f04`](https://git.kernel.org/torvalds/c/ba58148b6f04) | [fs] | quota: Fixup comments about return value of Q_[X]GETNEXTQUOTA |  | CONFIG_QUOTA=y in A37 | 3.10.0-358 |
| CANDIDATE | 4.6 | [`3218a3ec87f7`](https://git.kernel.org/torvalds/c/3218a3ec87f7) | [fs] | quota: remove unused cmd argument from quota_quotaon() |  | CONFIG_QUOTA=y in A37 | 3.10.0-358 |
| CANDIDATE | 4.6 | [`27f203f655a2`](https://git.kernel.org/torvalds/c/27f203f655a2) | [fs] | untangle fsnotify_d_instantiate() a bit |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.6 | [`3c9fe8cdff1b`](https://git.kernel.org/torvalds/c/3c9fe8cdff1b) | [fs] | vfs: add lookup_hash() helper |  | generic code, tag [fs] | 3.10.0-448 |
| CANDIDATE | 4.6 | [`54d5ca871e72`](https://git.kernel.org/torvalds/c/54d5ca871e72) | [fs] | vfs: add vfs_select_inode() helper |  | generic code, tag [fs] | 3.10.0-448 |
| CANDIDATE | 4.6 | [`9409e22acdfc`](https://git.kernel.org/torvalds/c/9409e22acdfc) | [fs] | vfs: rename: check backing inode being equal |  | generic code, tag [fs] | 3.10.0-448 |
| CANDIDATE | 4.6 | [`5f8d498d4364`](https://git.kernel.org/torvalds/c/5f8d498d4364) | [fs] | vfs: show_vfsstat: do not ignore errors from show_devname method |  | generic code, tag [fs] | 3.10.0-1126.2 |
| CANDIDATE | 4.7 | [`eb0a4a47ae89`](https://git.kernel.org/torvalds/c/eb0a4a47ae89) | [fs] | af_unix: fix hard linked sockets on overlay |  | CONFIG_UNIX=y in A37 | 3.10.0-460 |
| CANDIDATE | 4.7 | [`2d96afc8f70e`](https://git.kernel.org/torvalds/c/2d96afc8f70e) | [fs] | block: Add bdev_dax_supported() for dax mount checks |  | generic code, tag [fs] | 3.10.0-504 |
| CANDIDATE | 4.7 | [`2af3a8159cd2`](https://git.kernel.org/torvalds/c/2af3a8159cd2) | [fs] | block: Add vfs_msg() interface |  | generic code, tag [fs] | 3.10.0-504 |
| CANDIDATE | 4.7 | [`a6137305a8c4`](https://git.kernel.org/torvalds/c/a6137305a8c4) | [fs] | cifs_readv_receive: use cifs_read_from_socket() |  | generic code, tag [fs] | 3.10.0-715 |
| CANDIDATE | 4.7 | [`9ecd10b7a027`](https://git.kernel.org/torvalds/c/9ecd10b7a027) | [fs] | direct-io: fix direct write stale data exposure from concurrent buffered read |  | generic code, tag [fs] | 3.10.0-474 |
| CANDIDATE | 4.7 | [`fc64005c9309`](https://git.kernel.org/torvalds/c/fc64005c9309) | [fs] | don't bother with ->d_inode->i_sb - it's always equal to ->d_sb |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | 4.7 | [`87eefeb4e80b`](https://git.kernel.org/torvalds/c/87eefeb4e80b) | [fs] | ext4: Add alignment check for DAX mount |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-504 |
| CANDIDATE | 4.7 | [`7827a7f6ebfc`](https://git.kernel.org/torvalds/c/7827a7f6ebfc) | [fs] | ext4: clean up error handling when orphan list is corrupted |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.7 | [`74177f55b70e`](https://git.kernel.org/torvalds/c/74177f55b70e) | [fs] | ext4: fix oops on corrupted filesystem |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-611 |
| CANDIDATE | 4.7 | [`7cb476f834d0`](https://git.kernel.org/torvalds/c/7cb476f834d0) | [fs] | ext4: handle transient ENOSPC properly for DAX |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-619 |
| CANDIDATE | 4.7 | [`12735f881952`](https://git.kernel.org/torvalds/c/12735f881952) | [fs] | ext4: pre-zero allocated blocks for DAX IO |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-521 |
| CANDIDATE | 4.7 | [`12735f881952`](https://git.kernel.org/torvalds/c/12735f881952) | [fs] | ext4: pre-zero allocated blocks for DAX IO |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-511 |
| CANDIDATE | 4.7 | [`45e8a2583d97`](https://git.kernel.org/torvalds/c/45e8a2583d97) | [fs] | File names with trailing period or space need special case conversion |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | 4.7 | [`c2985d001d2f`](https://git.kernel.org/torvalds/c/c2985d001d2f) | [fs] | Fixing oops in callback path |  | generic code, tag [fs] | 3.10.0-614 |
| CANDIDATE | 4.7 | [`95e2b7e95d43`](https://git.kernel.org/torvalds/c/95e2b7e95d43) | [fs] | flexfiles: add kerneldoc header to nfs4_ff_layout_prepare_ds |  | generic code, tag [fs] | 3.10.0-614 |
| CANDIDATE | 4.7 | [`094069f1d96f`](https://git.kernel.org/torvalds/c/094069f1d96f) | [fs] | flexfiles: remove pointless setting of NFS_LAYOUT_RETURN_REQUESTED |  | generic code, tag [fs] | 3.10.0-614 |
| CANDIDATE | 4.7 | [`35e481761cdc`](https://git.kernel.org/torvalds/c/35e481761cdc) | [fs] | fsnotify: avoid spurious EMFILE errors from inotify_init() |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 4.7 | [`922dab613417`](https://git.kernel.org/torvalds/c/922dab613417) | [fs] | libceph, rbd: ceph_osd_linger_request, watch/notify v2 |  | generic code, tag [fs] | 3.10.0-448 |
| CANDIDATE | 4.7 | [`4f42c1b5b9c2`](https://git.kernel.org/torvalds/c/4f42c1b5b9c2) | [fs] | libfs.c: new helper - next_positive() |  | generic code, tag [fs] | 3.10.0-1115 |
| CANDIDATE | 4.7 | [`6343a2120862`](https://git.kernel.org/torvalds/c/6343a2120862) | [fs] | locks: use file_inode() |  | generic code, tag [fs] | 3.10.0-470 |
| CANDIDATE | 4.7 | [`d20cb71dbf34`](https://git.kernel.org/torvalds/c/d20cb71dbf34) | [fs] | make nfs_atomic_open() call d_drop() on all ->open_context() errors |  | generic code, tag [fs] | 3.10.0-481 |
| CANDIDATE | 4.7 | [`695e9df010e4`](https://git.kernel.org/torvalds/c/695e9df010e4) | [fs] | mnt: Account for MS_RDONLY in fs_fully_visible |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.7 | [`d71ed6c930ac`](https://git.kernel.org/torvalds/c/d71ed6c930ac) | [fs] | mnt: fs_fully_visible test the proper mount for MNT_LOCKED |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.7 | [`97c1df3e54e8`](https://git.kernel.org/torvalds/c/97c1df3e54e8) | [fs] | mnt: If fs_fully_visible fails call put_filesystem |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.7 | [`ba65dc5ef16f`](https://git.kernel.org/torvalds/c/ba65dc5ef16f) | [fs] | much milder d_walk() race |  | generic code, tag [fs] | 3.10.0-1115 |
| CANDIDATE | 4.7 | [`e06b933e6ded`](https://git.kernel.org/torvalds/c/e06b933e6ded) | [fs] | namespace: update event counter when umounting a deleted dentry |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.7 | [`d50039ea5ee6`](https://git.kernel.org/torvalds/c/d50039ea5ee6) | [fs] | nfsd4/rpc: move backchannel create logic into rpc code |  | generic code, tag [fs] | 3.10.0-563 |
| CANDIDATE | 4.7 | [`5e3a98883e7e`](https://git.kernel.org/torvalds/c/5e3a98883e7e) | [fs] | pnfs_nfs: fix _cancel_empty_pagelist |  | generic code, tag [fs] | 3.10.0-614 |
| CANDIDATE | 4.7 | [`3e42979e65da`](https://git.kernel.org/torvalds/c/3e42979e65da) | [fs] | procfs: expose umask in /proc/<PID>/status |  | CONFIG_PROC_FS=y in A37 | 3.10.0-616 |
| CANDIDATE | 4.7 | [`897fba1172d6`](https://git.kernel.org/torvalds/c/897fba1172d6) | [fs] | remove directory incorrectly tries to set delete on close on non-empty directories |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | 4.7 | [`5a4f7e8e7ff5`](https://git.kernel.org/torvalds/c/5a4f7e8e7ff5) | [fs] | Update cifs.ko version to 2.09 |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | 4.7 | [`a118084432d6`](https://git.kernel.org/torvalds/c/a118084432d6) | [fs] | vfs: add d_real_inode() helper |  | generic code, tag [fs] | 3.10.0-460 |
| CANDIDATE | 4.8 | [`5b23c97d7ee8`](https://git.kernel.org/torvalds/c/5b23c97d7ee8) | [fs] | Add MF-Symlinks support for SMB 2.0 |  | generic code, tag [fs] | 3.10.0-470 |
| CANDIDATE | 4.8 | [`6e4eab577a0c`](https://git.kernel.org/torvalds/c/6e4eab577a0c) (loose) | [fs] | Add user namespace member to struct super_block |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.8 | [`9f834ec18def`](https://git.kernel.org/torvalds/c/9f834ec18def) | [fs] | binfmt_elf: switch to new creds when switching to new mm | CVE-2019-11190 | CONFIG_BINFMT_ELF=y in A37 | 3.10.0-1103 |
| CANDIDATE | 4.8 | [`99a01cdf9d57`](https://git.kernel.org/torvalds/c/99a01cdf9d57) | [fs] | block: remove BLK_DEV_DAX config option |  | generic code, tag [fs] | 3.10.0-779 |
| CANDIDATE | 4.8 | [`5f65e5ca2861`](https://git.kernel.org/torvalds/c/5f65e5ca2861) | [fs] | cred: Reject inodes with invalid ids in set_create_file_as() |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | 4.8 | [`5c0048280bab`](https://git.kernel.org/torvalds/c/5c0048280bab) | [fs] | dquot: For now explicitly don't support filesystems outside of init_user_ns |  | CONFIG_QUOTA=y in A37 | 3.10.0-1089 |
| CANDIDATE | 4.8 | [`b4bba38909c2`](https://git.kernel.org/torvalds/c/b4bba38909c2) (loose) | [fs] | export __block_write_full_page |  | generic code, tag [fs] | 3.10.0-470 |
| CANDIDATE | 4.8 | [`646caa9c8e19`](https://git.kernel.org/torvalds/c/646caa9c8e19) | [fs] | ext4: fix deadlock during page writeback |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-611 |
| CANDIDATE | 4.8 | [`4743f8399061`](https://git.kernel.org/torvalds/c/4743f8399061) | [fs] | ext4: Fix WARN_ON_ONCE in ext4_commit_super() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-937 |
| CANDIDATE | 4.8 | [`d0141191a202`](https://git.kernel.org/torvalds/c/d0141191a202) | [fs] | ext4: fix xattr shifting when expanding inodes |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-611 |
| CANDIDATE | 4.8 | [`418c12d08dc6`](https://git.kernel.org/torvalds/c/418c12d08dc6) | [fs] | ext4: fix xattr shifting when expanding inodes part 2 |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-611 |
| CANDIDATE | 4.8 | [`443a8c41cd49`](https://git.kernel.org/torvalds/c/443a8c41cd49) | [fs] | ext4: properly align shifted xattrs when expanding inodes |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-611 |
| CANDIDATE | 4.8 | [`5b9554dc5bf0`](https://git.kernel.org/torvalds/c/5b9554dc5bf0) | [fs] | ext4: validate s_reserved_gdt_blocks on mount |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-611 |
| CANDIDATE | 4.8 | [`297fae4d0bee`](https://git.kernel.org/torvalds/c/297fae4d0bee) | [fs] | Fix NULL pointer dereference in bl_free_device() |  | generic code, tag [fs] | 3.10.0-507 |
| CANDIDATE | 4.8 | [`6c60d2b5746c`](https://git.kernel.org/torvalds/c/6c60d2b5746c) | [fs] | fs/fs-writeback.c: add a new writeback list for sync |  | generic code, tag [fs] | 3.10.0-780 |
| CANDIDATE | 4.8 | [`2d7f9e2ad35e`](https://git.kernel.org/torvalds/c/2d7f9e2ad35e) | [fs] | fs: Check for invalid i_uid in may_follow_link() |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | 4.8 | [`ae259a9c8593`](https://git.kernel.org/torvalds/c/ae259a9c8593) | [fs] | fs: introduce iomap infrastructure |  | generic code, tag [fs] | 3.10.0-779 |
| CANDIDATE | 4.8 | [`8be9f564d25e`](https://git.kernel.org/torvalds/c/8be9f564d25e) | [fs] | fs: iomap based fiemap implementation |  | generic code, tag [fs] | 3.10.0-779 |
| CANDIDATE | 4.8 | [`199a31c6d93b`](https://git.kernel.org/torvalds/c/199a31c6d93b) | [fs] | fs: move struct iomap from exportfs.h to a separate header |  | generic code, tag [fs] | 3.10.0-779 |
| CANDIDATE | 4.8 | [`a475acf01f79`](https://git.kernel.org/torvalds/c/a475acf01f79) | [fs] | fs: Refuse uid/gid changes which don't map into s_user_ns |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | 4.8 | [`9a286f0e52a2`](https://git.kernel.org/torvalds/c/9a286f0e52a2) | [fs] | fs: support DAX based iomap zeroing |  | generic code, tag [fs] | 3.10.0-779 |
| CANDIDATE | 4.8 | [`81754357770e`](https://git.kernel.org/torvalds/c/81754357770e) | [fs] | fs: Update i_[ug]id_(read\|write) to translate relative to s_user_ns |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | 4.8 | [`12703dbfeb15`](https://git.kernel.org/torvalds/c/12703dbfeb15) | [fs] | fsnotify: add a way to stop queueing events on group shutdown |  | generic code, tag [fs] | 3.10.0-517 |
| CANDIDATE | 4.8 | [`ac7f052b9e15`](https://git.kernel.org/torvalds/c/ac7f052b9e15) | [fs] | fuse: fsync() did not return IO errors |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.8 | [`9ebce595f63a`](https://git.kernel.org/torvalds/c/9ebce595f63a) | [fs] | fuse: fuse_flush must check mapping->flags for errors |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.8 | [`160ae76fa1a2`](https://git.kernel.org/torvalds/c/160ae76fa1a2) | [fs] | libxfs: directory node splitting does not have an extra block |  | generic code, tag [fs] | 3.10.0-780 |
| CANDIDATE | 4.8 | [`d07b846f6200`](https://git.kernel.org/torvalds/c/d07b846f6200) (loose) | [fs] | Limit file caps to the user namespace of the super block |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.8 | [`a001e74cef34`](https://git.kernel.org/torvalds/c/a001e74cef34) | [fs] | mnt: Move the FS_USERNS_MOUNT check into sget_userns |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.8 | [`8654df4e2ac9`](https://git.kernel.org/torvalds/c/8654df4e2ac9) | [fs] | mnt: Refactor fs_fully_visible into mount_too_revealing |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.8 | [`a1935c1738af`](https://git.kernel.org/torvalds/c/a1935c1738af) | [fs] | mnt: Simplify mount_too_revealing |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.8 | [`e68fd7c8071d`](https://git.kernel.org/torvalds/c/e68fd7c8071d) | [fs] | mount: use sec= that was specified on the command line |  | generic code, tag [fs] | 3.10.0-614 |
| CANDIDATE | 4.8 | [`e94591d0d90c`](https://git.kernel.org/torvalds/c/e94591d0d90c) | [fs] | proc: Convert proc_mount to use mount_ns |  | CONFIG_PROC_FS=y in A37 | 3.10.0-828 |
| CANDIDATE | 4.8 | [`8ac790f312c4`](https://git.kernel.org/torvalds/c/8ac790f312c4) | [fs] | qstr: constify instances in autofs4 |  | generic code, tag [fs] | 3.10.0-621 |
| CANDIDATE | 4.8 | [`29c42e80ba5b`](https://git.kernel.org/torvalds/c/29c42e80ba5b) | [fs] | qstr: constify instances in overlayfs |  | generic code, tag [fs] | 3.10.0-562 |
| CANDIDATE | 4.8 | [`d49d37624a19`](https://git.kernel.org/torvalds/c/d49d37624a19) | [fs] | quota: Ensure qids map to the filesystem |  | CONFIG_QUOTA=y in A37 | 3.10.0-1089 |
| CANDIDATE | 4.8 | [`20d00ee82942`](https://git.kernel.org/torvalds/c/20d00ee82942) | [fs] | revert "vfs: add lookup_hash() helper" |  | generic code, tag [fs] | 3.10.0-562 |
| CANDIDATE | 4.8 | [`aad82892af26`](https://git.kernel.org/torvalds/c/aad82892af26) | [fs] | selinux: Add support for unprivileged mounts from user namespaces |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-1089 |
| CANDIDATE | 4.8 | [`e7d316a02f68`](https://git.kernel.org/torvalds/c/e7d316a02f68) | [fs] | sysctl: handle error writing UINT_MAX to u32 fields |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.8 | [`380cf5ba6b0a`](https://git.kernel.org/torvalds/c/380cf5ba6b0a) (loose) | [fs] | Treat foreign mounts as nosuid |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.8 | [`affda48410a5`](https://git.kernel.org/torvalds/c/affda48410a5) | [fs] | trim fsnotify hooks a bit |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.8 | [`2853908a5960`](https://git.kernel.org/torvalds/c/2853908a5960) | [fs] | undo "fs: allow d_instantiate to be called with negative parent dentry" |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.8 | [`e698b8a43659`](https://git.kernel.org/torvalds/c/e698b8a43659) | [fs] | vfs: document ->d_real() |  | generic code, tag [fs] | 3.10.0-495 |
| CANDIDATE | 4.8 | [`036d523641c6`](https://git.kernel.org/torvalds/c/036d523641c6) | [fs] | vfs: Don't create inodes with a uid or gid unknown to the vfs |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | 4.8 | [`0bd23d09b874`](https://git.kernel.org/torvalds/c/0bd23d09b874) | [fs] | vfs: Don't modify inodes with a uid or gid unknown to the vfs |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | 4.8 | [`c1892c37769c`](https://git.kernel.org/torvalds/c/c1892c37769c) | [fs] | vfs: fix deadlock in file_remove_privs() on overlayfs |  | generic code, tag [fs] | 3.10.0-495 |
| CANDIDATE | 4.8 | [`a2982cc922c3`](https://git.kernel.org/torvalds/c/a2982cc922c3) | [fs] | vfs: Generalize filesystem nodev handling |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.8 | [`2d902671ce1c`](https://git.kernel.org/torvalds/c/2d902671ce1c) | [fs] | vfs: merge .d_select_inode() into .d_real() |  | generic code, tag [fs] | 3.10.0-495 |
| CANDIDATE | 4.8 | [`d91ee87d8d85`](https://git.kernel.org/torvalds/c/d91ee87d8d85) | [fs] | vfs: Pass data, ns, and ns->userns to mount_ns |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.8 | [`0d4d717f2583`](https://git.kernel.org/torvalds/c/0d4d717f2583) | [fs] | vfs: Verify acls are valid within superblock's s_user_ns. |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | 4.9 | [`223757016837`](https://git.kernel.org/torvalds/c/223757016837) | [fs] | block_dev: remove DAX leftovers |  | generic code, tag [fs] | 3.10.0-779 |
| CANDIDATE | 4.9 | [`b8c600120fc8`](https://git.kernel.org/torvalds/c/b8c600120fc8) | [fs] | Call echo service immediately after socket reconnect |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | 4.9 | [`3afca265b5f5`](https://git.kernel.org/torvalds/c/3afca265b5f5) | [fs] | Clarify locking of cifs file and tcon structures and make more granular |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | 4.9 | [`24df1483c272`](https://git.kernel.org/torvalds/c/24df1483c272) | [fs] | Cleanup missing frees on some ioctls |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | 4.9 | [`74a5293832b3`](https://git.kernel.org/torvalds/c/74a5293832b3) | [fs] | crush: don't normalize input of crush_ln iteratively |  | generic code, tag [fs] | 3.10.0-701 |
| CANDIDATE | 4.9 | [`64f77566e1c8`](https://git.kernel.org/torvalds/c/64f77566e1c8) | [fs] | crush: remove redundant local variable |  | generic code, tag [fs] | 3.10.0-701 |
| CANDIDATE | 4.9 | [`e98d41370392`](https://git.kernel.org/torvalds/c/e98d41370392) | [fs] | devpts: Change the owner of /dev/pts/ptmx to the mounter of /dev/pts |  | CONFIG_TTY=y in A37 | 3.10.0-1082 |
| CANDIDATE | 4.9 | [`40b320e1c757`](https://git.kernel.org/torvalds/c/40b320e1c757) | [fs] | devpts: Make devpts_kill_sb safe if fsi is NULL |  | CONFIG_TTY=y in A37 | 3.10.0-1015 |
| CANDIDATE | 4.9 | [`9742805d6b1b`](https://git.kernel.org/torvalds/c/9742805d6b1b) | [fs] | Display number of credits available |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | 4.9 | [`18dd8e1a65dd`](https://git.kernel.org/torvalds/c/18dd8e1a65dd) | [fs] | Do not send SMB3 SET_INFO request if nothing is changing |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | 4.9 | [`834170c85978`](https://git.kernel.org/torvalds/c/834170c85978) | [fs] | Enable previous version support |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | 4.9 | [`cb978ac8b85f`](https://git.kernel.org/torvalds/c/cb978ac8b85f) | [fs] | Expose cifs module parameters in sysfs |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | 4.9 | [`4e800c0359d9`](https://git.kernel.org/torvalds/c/4e800c0359d9) | [fs] | ext4: bugfix for mmaped pages in mpage_release_unused_pages() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-611 |
| CANDIDATE | 4.9 | [`2de58f1102cf`](https://git.kernel.org/torvalds/c/2de58f1102cf) | [fs] | ext4: Check that external xattr value block is zero |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.9 | [`e81d44778d1d`](https://git.kernel.org/torvalds/c/e81d44778d1d) | [fs] | ext4: release bh in make_indexed_dir |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-611 |
| CANDIDATE | 4.9 | [`9b623df61457`](https://git.kernel.org/torvalds/c/9b623df61457) | [fs] | ext4: unmap metadata when zeroing blocks |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-619 |
| CANDIDATE | 4.9 | [`5f4e5752a8a3`](https://git.kernel.org/torvalds/c/5f4e5752a8a3) | [fs] | fs: add iomap_file_dirty |  | generic code, tag [fs] | 3.10.0-779 |
| CANDIDATE | 4.9 | [`c663e29f8885`](https://git.kernel.org/torvalds/c/c663e29f8885) | [fs] | fs: Do to trim high file position bits in iomap_page_mkwrite_actor |  | generic code, tag [fs] | 3.10.0-779 |
| CANDIDATE | 4.9 | [`ed2726406c6a`](https://git.kernel.org/torvalds/c/ed2726406c6a) | [fs] | fsnotify: clean up spinlock assertions |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 4.9 | [`c21dbe20f606`](https://git.kernel.org/torvalds/c/c21dbe20f606) | [fs] | fsnotify: convert notification_mutex to a spinlock |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 4.9 | [`1404ff3cc3a1`](https://git.kernel.org/torvalds/c/1404ff3cc3a1) | [fs] | fsnotify: drop notification_mutex before destroying event |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 4.9 | [`f3fbbb079263`](https://git.kernel.org/torvalds/c/f3fbbb079263) | [fs] | fsnotify: support overlayfs |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 4.9 | [`59c3b76cc61d`](https://git.kernel.org/torvalds/c/59c3b76cc61d) | [fs] | fuse: fix fuse_write_end() if zero bytes were copied |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.9 | [`5e2b8828ff3d`](https://git.kernel.org/torvalds/c/5e2b8828ff3d) | [fs] | fuse: invalidate dir dentry after chmod |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.9 | [`cb3ae6d25a54`](https://git.kernel.org/torvalds/c/cb3ae6d25a54) | [fs] | fuse: listxattr: verify xattr list |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.9 | [`2864f3014242`](https://git.kernel.org/torvalds/c/2864f3014242) | [fs] | iget_locked et.al.: make sure we don't return bad inodes |  | generic code, tag [fs] | 3.10.0-1041 |
| CANDIDATE | 4.9 | [`559cce698eaf`](https://git.kernel.org/torvalds/c/559cce698eaf) | [fs] | jbd2: fix incorrect unlock on j_list_lock |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-616 |
| CANDIDATE | 4.9 | [`8cdcc8102c0c`](https://git.kernel.org/torvalds/c/8cdcc8102c0c) | [fs] | libxfs: v3 inodes are only valid on crc-enabled filesystems |  | generic code, tag [fs] | 3.10.0-780 |
| CANDIDATE | 4.9 | [`d67fd44f697d`](https://git.kernel.org/torvalds/c/d67fd44f697d) | [fs] | locks: Filter /proc/locks output on proc pid ns |  | generic code, tag [fs] | 3.10.0-773 |
| CANDIDATE | 4.9 | [`c568d68341be`](https://git.kernel.org/torvalds/c/c568d68341be) | [fs] | locks: fix file locking on overlayfs |  | generic code, tag [fs] | 3.10.0-562 |
| CANDIDATE | 4.9 | [`791cc43b36eb`](https://git.kernel.org/torvalds/c/791cc43b36eb) | [fs] | Make __xfs_xattr_put_listen preperly report errors |  | generic code, tag [fs] | 3.10.0-566 |
| CANDIDATE | 4.9 | [`d29216842a85`](https://git.kernel.org/torvalds/c/d29216842a85) | [fs] | mnt: Add a per mount namespace limit on the number of mounts |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.9 | [`7d22fc11c7ed`](https://git.kernel.org/torvalds/c/7d22fc11c7ed) | [fs] | nfsd4: setclientid_confirm with unmatched verifier should fail |  | generic code, tag [fs] | 3.10.0-543 |
| CANDIDATE | 4.9 | [`41020b671aa5`](https://git.kernel.org/torvalds/c/41020b671aa5) | [fs] | nfsv4.x: Allow callers of nfs_remove_bad_delegation() to specify a stateid |  | generic code, tag [fs] | 3.10.0-614 |
| CANDIDATE | 4.9 | [`d55b352b01bc`](https://git.kernel.org/torvalds/c/d55b352b01bc) | [fs] | NFSv4.x: hide array-bounds warning |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | 4.9 | [`086e774a57fb`](https://git.kernel.org/torvalds/c/086e774a57fb) | [fs] | pipe: cap initial pipe capacity according to pipe-max-size limit |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.9 | [`a005ca0e6813`](https://git.kernel.org/torvalds/c/a005ca0e6813) | [fs] | pipe: fix limit checking in alloc_pipe_info() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.9 | [`b0b91d18e2e9`](https://git.kernel.org/torvalds/c/b0b91d18e2e9) | [fs] | pipe: fix limit checking in pipe_set_size() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.9 | [`9c87bcf0a31b`](https://git.kernel.org/torvalds/c/9c87bcf0a31b) | [fs] | pipe: make account_pipe_buffers() return a value, and use it |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.9 | [`d37d41666408`](https://git.kernel.org/torvalds/c/d37d41666408) | [fs] | pipe: move limit checking logic into pipe_set_size() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.9 | [`3734a13b96eb`](https://git.kernel.org/torvalds/c/3734a13b96eb) | [fs] | pipe: refactor argument for account_pipe_buffers() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.9 | [`f491bd71118b`](https://git.kernel.org/torvalds/c/f491bd71118b) | [fs] | pipe: relocate round_pipe_size() above pipe_set_size() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.9 | [`09b4d1990094`](https://git.kernel.org/torvalds/c/09b4d1990094) | [fs] | pipe: simplify logic in alloc_pipe_info() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.9 | [`a865880e20ca`](https://git.kernel.org/torvalds/c/a865880e20ca) | [fs] | Retry operation on EREMOTEIO on an interrupted slot |  | generic code, tag [fs] | 3.10.0-521 |
| CANDIDATE | 4.9 | [`19c4d2f99478`](https://git.kernel.org/torvalds/c/19c4d2f99478) | [fs] | revert "btrfs: let btrfs_delete_unused_bgs() to clean relocated bgs" |  | generic code, tag [fs] | 3.10.0-618 |
| CANDIDATE | 4.9 | [`d8ad8b496184`](https://git.kernel.org/torvalds/c/d8ad8b496184) | [fs] | security, overlayfs: provide copy up security hook for unioned files |  | generic code, tag [fs] | 3.10.0-517 |
| CANDIDATE | 4.9 | [`2602625b7e46`](https://git.kernel.org/torvalds/c/2602625b7e46) | [fs] | security, overlayfs: Provide hook to correctly label newly created files |  | generic code, tag [fs] | 3.10.0-517 |
| CANDIDATE | 4.9 | [`a518b0a5b0d7`](https://git.kernel.org/torvalds/c/a518b0a5b0d7) | [fs] | selinux: Implement dentry_create_files_as() hook |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-517 |
| CANDIDATE | 4.9 | [`56909eb3f559`](https://git.kernel.org/torvalds/c/56909eb3f559) | [fs] | selinux: Implementation for inode_copy_up() hook |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-517 |
| CANDIDATE | 4.9 | [`19472b69d639`](https://git.kernel.org/torvalds/c/19472b69d639) | [fs] | selinux: Implementation for inode_copy_up_xattr() hook |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-517 |
| CANDIDATE | 4.9 | [`c957f6df52c5`](https://git.kernel.org/torvalds/c/c957f6df52c5) | [fs] | selinux: Pass security pointer to determine_inode_label() |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-517 |
| CANDIDATE | 4.9 | [`c2afb8147e69`](https://git.kernel.org/torvalds/c/c2afb8147e69) | [fs] | Set previous session id correctly on SMB3 reconnect |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | 4.9 | [`4d0c5ba2ff79`](https://git.kernel.org/torvalds/c/4d0c5ba2ff79) | [fs] | vfs: do get_write_access() on upper layer of overlayfs |  | generic code, tag [fs] | 3.10.0-562 |
| CANDIDATE | 4.9 | [`7b1742eb06ea`](https://git.kernel.org/torvalds/c/7b1742eb06ea) | [fs] | vfs: make argument of d_real_inode() const |  | generic code, tag [fs] | 3.10.0-562 |
| CANDIDATE | 4.9 | [`f2b20f6ee842`](https://git.kernel.org/torvalds/c/f2b20f6ee842) | [fs] | vfs: move permission checking into notify_change() for utimes(NULL) |  | generic code, tag [fs] | 3.10.0-562 |
| CANDIDATE | 4.9 | [`598e3c8f72f5`](https://git.kernel.org/torvalds/c/598e3c8f72f5) | [fs] | vfs: update ovl inode before relatime check |  | generic code, tag [fs] | 3.10.0-562 |
| CANDIDATE | 4.10 | [`374402a2a1df`](https://git.kernel.org/torvalds/c/374402a2a1df) | [fs] | cifs_get_root shouldn't use path with tree name |  | generic code, tag [fs] | 3.10.0-665 |
| CANDIDATE | 4.10 | [`066715d3fde4`](https://git.kernel.org/torvalds/c/066715d3fde4) | [fs] | clone_private_mount() doesn't need to touch namespace_sem |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.10 | [`12c7f9dc0fd1`](https://git.kernel.org/torvalds/c/12c7f9dc0fd1) | [fs] | constify fsnotify_parent() |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 4.10 | [`640eb7e7b524`](https://git.kernel.org/torvalds/c/640eb7e7b524) (loose) | [fs] | Constify path_is_under()'s arguments |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.10 | [`f6c0d1a3edb5`](https://git.kernel.org/torvalds/c/f6c0d1a3edb5) | [fs] | crush: include mapper.h in mapper.c |  | generic code, tag [fs] | 3.10.0-701 |
| CANDIDATE | 4.10 | [`4f5a763c9a0d`](https://git.kernel.org/torvalds/c/4f5a763c9a0d) | [fs] | ext4: Add select for CONFIG_FS_IOMAP |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-793 |
| CANDIDATE | 4.10 | [`96f8ba3dd632`](https://git.kernel.org/torvalds/c/96f8ba3dd632) | [fs] | ext4: avoid split extents for DAX writes |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-779 |
| CANDIDATE | 4.10 | [`96f8ba3dd632`](https://git.kernel.org/torvalds/c/96f8ba3dd632) | [fs] | ext4: avoid split extents for DAX writes |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-619 |
| CANDIDATE | 4.10 | [`e2ae766c1b03`](https://git.kernel.org/torvalds/c/e2ae766c1b03) | [fs] | ext4: convert DAX faults to iomap infrastructure |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-779 |
| CANDIDATE | 4.10 | [`364443cbcfe7`](https://git.kernel.org/torvalds/c/364443cbcfe7) | [fs] | ext4: convert DAX reads to iomap infrastructure |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-779 |
| CANDIDATE | 4.10 | [`d7614cc16146`](https://git.kernel.org/torvalds/c/d7614cc16146) | [fs] | ext4: correctly detect when an xattr value has an invalid size |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.10 | [`776722e85d3b`](https://git.kernel.org/torvalds/c/776722e85d3b) | [fs] | ext4: DAX iomap write support |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-779 |
| CANDIDATE | 4.10 | [`1566a48aaa10`](https://git.kernel.org/torvalds/c/1566a48aaa10) | [fs] | ext4: don't lock buffer in ext4_commit_super if holding spinlock |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.10 | [`213bcd9ccbf0`](https://git.kernel.org/torvalds/c/213bcd9ccbf0) | [fs] | ext4: factor out checks from ext4_file_write_iter() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-779 |
| CANDIDATE | 4.10 | [`9060dd2c5036`](https://git.kernel.org/torvalds/c/9060dd2c5036) | [fs] | ext4: fix mmp use after free during unmount |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-616 |
| CANDIDATE | 4.10 | [`2dc8d9e19b0d`](https://git.kernel.org/torvalds/c/2dc8d9e19b0d) | [fs] | ext4: forbid i_extra_isize not divisible by 4 | CVE-2019-19767 | CONFIG_EXT4_FS=y in A37 | 3.10.0-1145 |
| CANDIDATE | 4.10 | [`a3caa24b7037`](https://git.kernel.org/torvalds/c/a3caa24b7037) | [fs] | ext4: only set S_DAX if DAX is really supported |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-619 |
| CANDIDATE | 4.10 | [`0bd2d5ec3d76`](https://git.kernel.org/torvalds/c/0bd2d5ec3d76) | [fs] | ext4: rip out DAX handling from direct IO path |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-779 |
| CANDIDATE | 4.10 | [`547edce3ba23`](https://git.kernel.org/torvalds/c/547edce3ba23) | [fs] | ext4: tell DAX the size of allocation holes |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-619 |
| CANDIDATE | 4.10 | [`47e6935136b1`](https://git.kernel.org/torvalds/c/47e6935136b1) | [fs] | ext4: use iomap for zeroing blocks in DAX mode |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-779 |
| CANDIDATE | 4.10 | [`b9de313cf05f`](https://git.kernel.org/torvalds/c/b9de313cf05f) | [fs] | fix ceph_write_end() |  | generic code, tag [fs] | 3.10.0-701 |
| CANDIDATE | 4.10 | [`395664439c49`](https://git.kernel.org/torvalds/c/395664439c49) | [fs] | Fix default behaviour for empty domains and add domainauto option |  | generic code, tag [fs] | 3.10.0-715 |
| CANDIDATE | 4.10 | [`62deb8187d11`](https://git.kernel.org/torvalds/c/62deb8187d11) | [fs] | fs-cache: Initialise stores_lock in netfs cookie |  | generic code, tag [fs] | 3.10.0-561 |
| CANDIDATE | 4.10 | [`d1908f52557b`](https://git.kernel.org/torvalds/c/d1908f52557b) | [fs] | fs: break out of iomap_file_buffered_write on fatal signals |  | generic code, tag [fs] | 3.10.0-779 |
| CANDIDATE | 4.10 | [`cf7841c12d85`](https://git.kernel.org/torvalds/c/cf7841c12d85) | [fs] | fs: xfs: libxfs: constify xfs_nameops structures |  | generic code, tag [fs] | 3.10.0-902 |
| CANDIDATE | 4.10 | [`bb6e0ebed7f7`](https://git.kernel.org/torvalds/c/bb6e0ebed7f7) | [fs] | fs: xfs: xfs_icreate_item: constify xfs_item_ops structure |  | generic code, tag [fs] | 3.10.0-902 |
| CANDIDATE | 4.10 | [`3cd5eca8d7a2`](https://git.kernel.org/torvalds/c/3cd5eca8d7a2) | [fs] | fsnotify: constify 'data' passed to ->handle_event() |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 4.10 | [`40212d531d4b`](https://git.kernel.org/torvalds/c/40212d531d4b) | [fs] | fsnotify: constify the places working with ->f_path |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 4.10 | [`5716863e0f82`](https://git.kernel.org/torvalds/c/5716863e0f82) | [fs] | fsnotify: Fix possible use-after-free in inode iteration on umount |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 4.10 | [`e3ba730702af`](https://git.kernel.org/torvalds/c/e3ba730702af) | [fs] | fsnotify: Remove fsnotify_duplicate_mark() |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | 4.10 | [`523b2e76e3ec`](https://git.kernel.org/torvalds/c/523b2e76e3ec) | [fs] | libxfs: clean up _dir2_data_freescan |  | generic code, tag [fs] | 3.10.0-902 |
| CANDIDATE | 4.10 | [`755c7bf5ddca`](https://git.kernel.org/torvalds/c/755c7bf5ddca) | [fs] | libxfs: convert ushort to unsigned short |  | generic code, tag [fs] | 3.10.0-902 |
| CANDIDATE | 4.10 | [`68c098582b20`](https://git.kernel.org/torvalds/c/68c098582b20) | [fs] | libxfs: fix whitespace problems |  | generic code, tag [fs] | 3.10.0-902 |
| CANDIDATE | 4.10 | [`ae90b994b40f`](https://git.kernel.org/torvalds/c/ae90b994b40f) | [fs] | libxfs: fix xfs_attr_shortform_bytesfit declaration |  | generic code, tag [fs] | 3.10.0-902 |
| CANDIDATE | 4.10 | [`420fbeb4bff4`](https://git.kernel.org/torvalds/c/420fbeb4bff4) | [fs] | libxfs: synchronize dinode_verify with userspace |  | generic code, tag [fs] | 3.10.0-902 |
| CANDIDATE | 4.10 | [`3895dbf8985f`](https://git.kernel.org/torvalds/c/3895dbf8985f) | [fs] | mnt: Protect the mountpoint hashtable with mount_lock |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.10 | [`ca71cf71eeda`](https://git.kernel.org/torvalds/c/ca71cf71eeda) | [fs] | namespace.c: constify struct path passed to a bunch of primitives |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.10 | [`af884cd4a5ae`](https://git.kernel.org/torvalds/c/af884cd4a5ae) | [fs] | proc: report no_new_privs state |  | CONFIG_PROC_FS=y in A37 | 3.10.0-993 |
| CANDIDATE | 4.10 | [`f4cc1c3810a0`](https://git.kernel.org/torvalds/c/f4cc1c3810a0) | [fs] | remove a bogus claim about namespace_sem being held by callers of mnt_alloc_id() |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | 4.10 | [`5235d448c48e`](https://git.kernel.org/torvalds/c/5235d448c48e) | [fs] | reorganize do_make_slave() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.10 | [`e522751d605d`](https://git.kernel.org/torvalds/c/e522751d605d) | [fs] | seq_file: reset iterator to first record for zero offset |  | generic code, tag [fs] | 3.10.0-543 |
| CANDIDATE | 4.10 | [`4d712ef1db05`](https://git.kernel.org/torvalds/c/4d712ef1db05) | [fs] | svcauth_gss: Close connection when dropping an incoming message | CVE-2018-16884 | generic code, tag [fs] | 3.10.0-1053 |
| CANDIDATE | 4.10 | [`a76b5b04375f`](https://git.kernel.org/torvalds/c/a76b5b04375f) (loose) | [fs] | try to clone files first in vfs_copy_file_range |  | generic code, tag [fs] | 3.10.0-579 |
| CANDIDATE | 4.10 | [`01619491a5f0`](https://git.kernel.org/torvalds/c/01619491a5f0) | [fs] | vfs: add path_has_submounts() |  | generic code, tag [fs] | 3.10.0-658 |
| CANDIDATE | 4.10 | [`c6609c0a1c34`](https://git.kernel.org/torvalds/c/c6609c0a1c34) | [fs] | vfs: add path_is_mountpoint() helper |  | generic code, tag [fs] | 3.10.0-658 |
| CANDIDATE | 4.10 | [`913b86e92e1f`](https://git.kernel.org/torvalds/c/913b86e92e1f) | [fs] | vfs: allow vfs_clone_file_range() across mount points |  | generic code, tag [fs] | 3.10.0-822 |
| CANDIDATE | 4.10 | [`fb5f51c7425e`](https://git.kernel.org/torvalds/c/fb5f51c7425e) | [fs] | vfs: change d_manage() to take a struct path |  | generic code, tag [fs] | 3.10.0-658 |
| CANDIDATE | 4.10 | [`64d2ab32efe3`](https://git.kernel.org/torvalds/c/64d2ab32efe3) | [fs] | vfs: fix put_compat_statfs64() does not handle errors |  | generic code, tag [fs] | 3.10.0-585 |
| CANDIDATE | 4.10 | [`b335e9d9944d`](https://git.kernel.org/torvalds/c/b335e9d9944d) | [fs] | vfs: fix vfs_clone_file_range() for overlayfs files |  | generic code, tag [fs] | 3.10.0-822 |
| CANDIDATE | 4.11 | [`93faccbbfa95`](https://git.kernel.org/torvalds/c/93faccbbfa95) (loose) | [fs] | Better permission checking for submounts |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.11 | [`6ac93117ab00`](https://git.kernel.org/torvalds/c/6ac93117ab00) | [fs] | blktrace: use existing disk debugfs directory |  | generic code, tag [fs] | 3.10.0-825 |
| CANDIDATE | 4.11 | [`98ba6af728de`](https://git.kernel.org/torvalds/c/98ba6af728de) | [fs] | crush: do is_out test only if we do not collide |  | generic code, tag [fs] | 3.10.0-701 |
| CANDIDATE | 4.11 | [`7ba0487cca61`](https://git.kernel.org/torvalds/c/7ba0487cca61) | [fs] | crush: fix dprintk compilation |  | generic code, tag [fs] | 3.10.0-701 |
| CANDIDATE | 4.11 | [`743efcffffc6`](https://git.kernel.org/torvalds/c/743efcffffc6) | [fs] | crush: merge working data and scratch |  | generic code, tag [fs] | 3.10.0-701 |
| CANDIDATE | 4.11 | [`66a0e2d579db`](https://git.kernel.org/torvalds/c/66a0e2d579db) | [fs] | crush: remove mutable part of CRUSH map |  | generic code, tag [fs] | 3.10.0-701 |
| CANDIDATE | 4.11 | [`a7c5437b0bbe`](https://git.kernel.org/torvalds/c/a7c5437b0bbe) | [fs] | debugfs: add debugfs_lookup() |  | CONFIG_DEBUG_FS=y in A37 | 3.10.0-825 |
| CANDIDATE | 4.11 | [`54ea0046b6fe`](https://git.kernel.org/torvalds/c/54ea0046b6fe) | [fs] | libceph, rbd, ceph: WRITE \| ONDISK -> WRITE |  | generic code, tag [fs] | 3.10.0-701 |
| CANDIDATE | 4.11 | [`01cddfe99008`](https://git.kernel.org/torvalds/c/01cddfe99008) | [fs] | mm,fs,dax: mark dax_iomap_pmd_fault as const |  | generic code, tag [fs] | 3.10.0-793 |
| CANDIDATE | 4.11 | [`1064f874abc0`](https://git.kernel.org/torvalds/c/1064f874abc0) | [fs] | mnt: Tuck mounts under others instead of creating shadow/side mounts |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.11 | [`db44bac41bbf`](https://git.kernel.org/torvalds/c/db44bac41bbf) | [fs] | nfsd4: minor NFSv2/v3 write decoding cleanup | CVE-2017-7895 | generic code, tag [fs] | 3.10.0-664 |
| CANDIDATE | 4.11 | [`b88009210932`](https://git.kernel.org/torvalds/c/b88009210932) | [fs] | nfsdv4: use export cache flushtime for changeid on V4ROOT objects |  | generic code, tag [fs] | 3.10.0-966 |
| CANDIDATE | 4.11 | [`ace0c791e6c3`](https://git.kernel.org/torvalds/c/ace0c791e6c3) | [fs] | proc/sysctl: Don't grab i_lock under sysctl_lock. |  | CONFIG_PROC_FS=y in A37 | 3.10.0-1103 |
| CANDIDATE | 4.11 | [`d6cffbbe9a7e`](https://git.kernel.org/torvalds/c/d6cffbbe9a7e) | [fs] | proc/sysctl: prune stale dentries during unregistering |  | CONFIG_PROC_FS=y in A37 | 3.10.0-1103 |
| CANDIDATE | 4.11 | [`9332ef9dbd17`](https://git.kernel.org/torvalds/c/9332ef9dbd17) | [fs] | scripts/spelling.txt: add "an user" pattern and fix typo instances |  | generic code, tag [fs] | 3.10.0-631 |
| CANDIDATE | 4.11 | [`1680a3868f00`](https://git.kernel.org/torvalds/c/1680a3868f00) | [fs] | sysctl: add sanity check for proc_douintvec |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.11 | [`5380e5644afb`](https://git.kernel.org/torvalds/c/5380e5644afb) | [fs] | sysctl: don't print negative flag for proc_douintvec |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.11 | [`96333187ab16`](https://git.kernel.org/torvalds/c/96333187ab16) | [fs] | userfaultfd_copy: return -ENOSPC in case mm has gone |  | generic code, tag [fs] | 3.10.0-631 |
| CANDIDATE | 4.11 | [`af7bd4dc1309`](https://git.kernel.org/torvalds/c/af7bd4dc1309) | [fs] | vfs: create vfs helper vfs_tmpfile() |  | generic code, tag [fs] | 3.10.0-1041 |
| CANDIDATE | 4.11 | [`1328c727004d`](https://git.kernel.org/torvalds/c/1328c727004d) | [fs] | vfs: open() with O_CREAT should not create inodes with unknown ids |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | 4.11 | [`fea6d2a610c8`](https://git.kernel.org/torvalds/c/fea6d2a610c8) | [fs] | vfs: Use upper filesystem inode in bprm_fill_uid() |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | 4.12 | [`f410ff65548c`](https://git.kernel.org/torvalds/c/f410ff65548c) | [fs] | audit: Abstract hash key handling |  | CONFIG_AUDIT=y in A37 | 3.10.0-810 |
| CANDIDATE | 4.12 | [`43471d15df0e`](https://git.kernel.org/torvalds/c/43471d15df0e) | [fs] | audit_tree: Use mark flags to check whether mark is alive |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`67fd38973513`](https://git.kernel.org/torvalds/c/67fd38973513) | [fs] | block, dax: use correct format string in bdev_dax_supported |  | generic code, tag [fs] | 3.10.0-817 |
| CANDIDATE | 4.12 | [`f5705aa8cfed`](https://git.kernel.org/torvalds/c/f5705aa8cfed) | [fs] | dax, xfs, ext4: compile out iomap-dax paths in the FS_DAX=n case |  | generic code, tag [fs] | 3.10.0-868 |
| CANDIDATE | 4.12 | [`de1892b887ee`](https://git.kernel.org/torvalds/c/de1892b887ee) | [fs] | Don't delay freeing mids when blocked on slow socket write of request |  | generic code, tag [fs] | 3.10.0-799 |
| CANDIDATE | 4.12 | [`4068367c9ca7`](https://git.kernel.org/torvalds/c/4068367c9ca7) (loose) | [fs] | don't forget to put old mntns in mntns_install |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.12 | [`964edf66bf9a`](https://git.kernel.org/torvalds/c/964edf66bf9a) | [fs] | ext4: clear lockdep subtype for quota files on quota off |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.12 | [`7b4cc9787fe3`](https://git.kernel.org/torvalds/c/7b4cc9787fe3) | [fs] | ext4: evict inline data when writing to memory map |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.12 | [`a056bdaae7a1`](https://git.kernel.org/torvalds/c/a056bdaae7a1) | [fs] | ext4: fix data corruption for mmap writes |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-799 |
| CANDIDATE | 4.12 | [`4f8caa60a5a1`](https://git.kernel.org/torvalds/c/4f8caa60a5a1) | [fs] | ext4: fix data corruption with EXT4_GET_BLOCKS_ZERO |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-793 |
| CANDIDATE | 4.12 | [`67a7d5f561f4`](https://git.kernel.org/torvalds/c/67a7d5f561f4) | [fs] | ext4: fix fdatasync(2) after extent manipulation operations |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.12 | [`624327f87947`](https://git.kernel.org/torvalds/c/624327f87947) | [fs] | ext4: fix off-by-one on max nr_pages in ext4_find_unwritten_pgoff() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-738 |
| CANDIDATE | 4.12 | [`fb26a1cbed8c`](https://git.kernel.org/torvalds/c/fb26a1cbed8c) | [fs] | ext4: return to starting transaction in ext4_dax_huge_fault() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-793 |
| CANDIDATE | 4.12 | [`957153fce8d2`](https://git.kernel.org/torvalds/c/957153fce8d2) | [fs] | ext4: Set flags on quota files directly |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.12 | [`e84b83b9ee21`](https://git.kernel.org/torvalds/c/e84b83b9ee21) | [fs] | filesystem-dax: fix broken __dax_zero_page_range() conversion |  | generic code, tag [fs] | 3.10.0-817 |
| CANDIDATE | 4.12 | [`cd8c42968ee6`](https://git.kernel.org/torvalds/c/cd8c42968ee6) | [fs] | Fix match_prepath() |  | generic code, tag [fs] | 3.10.0-665 |
| CANDIDATE | 4.12 | [`a5f6a6a9c72e`](https://git.kernel.org/torvalds/c/a5f6a6a9c72e) | [fs] | fs/block_dev: always invalidate cleancache in invalidate_bdev() |  | generic code, tag [fs] | 3.10.0-1070 |
| CANDIDATE | 4.12 | [`1eb643d02b21`](https://git.kernel.org/torvalds/c/1eb643d02b21) | [fs] | fs/dax.c: fix inefficiency in dax_writeback_mapping_range() |  | generic code, tag [fs] | 3.10.0-793 |
| CANDIDATE | 4.12 | [`7b1293234084`](https://git.kernel.org/torvalds/c/7b1293234084) | [fs] | fsnotify: Add group pointer in fsnotify_init_mark() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`73cd3c33ab79`](https://git.kernel.org/torvalds/c/73cd3c33ab79) | [fs] | fsnotify: Avoid double locking in fsnotify_detach_from_object() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`6b3f05d24d35`](https://git.kernel.org/torvalds/c/6b3f05d24d35) | [fs] | fsnotify: Detach mark from object list when last reference is dropped |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`a03e2e4f0783`](https://git.kernel.org/torvalds/c/a03e2e4f0783) | [fs] | fsnotify: Determine lock in fsnotify_destroy_marks() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`ebb3b47e37a4`](https://git.kernel.org/torvalds/c/ebb3b47e37a4) | [fs] | fsnotify: Drop inode_mark.c |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`08991e83b728`](https://git.kernel.org/torvalds/c/08991e83b728) | [fs] | fsnotify: Free fsnotify_mark_connector when there is no mark attached |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`416bcdbcbbb4`](https://git.kernel.org/torvalds/c/416bcdbcbbb4) | [fs] | fsnotify: Inline fsnotify_clear_{inode\|vfsmount}_mark_group() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`04662cab59fc`](https://git.kernel.org/torvalds/c/04662cab59fc) | [fs] | fsnotify: Lock object list with connector lock |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`e911d8af87db`](https://git.kernel.org/torvalds/c/e911d8af87db) | [fs] | fsnotify: Make fsnotify_mark_connector hold inode reference |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`054c636e5c80`](https://git.kernel.org/torvalds/c/054c636e5c80) | [fs] | fsnotify: Move ->free_mark callback to fsnotify_ops |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`0810b4f9f207`](https://git.kernel.org/torvalds/c/0810b4f9f207) | [fs] | fsnotify: Move fsnotify_destroy_marks() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`f06fd9875945`](https://git.kernel.org/torvalds/c/f06fd9875945) | [fs] | fsnotify: Move locking into fsnotify_find_mark() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`a242677bb1e6`](https://git.kernel.org/torvalds/c/a242677bb1e6) | [fs] | fsnotify: Move locking into fsnotify_recalc_mask() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`9dd813c15b2c`](https://git.kernel.org/torvalds/c/9dd813c15b2c) | [fs] | fsnotify: Move mark list head from object into dedicated structure |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`86ffe245c430`](https://git.kernel.org/torvalds/c/86ffe245c430) | [fs] | fsnotify: Move object pointer to fsnotify_mark_connector |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`11375145a70d`](https://git.kernel.org/torvalds/c/11375145a70d) | [fs] | fsnotify: Move queueing of mark for destruction into fsnotify_put_mark() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`9385a84d7e1f`](https://git.kernel.org/torvalds/c/9385a84d7e1f) | [fs] | fsnotify: Pass fsnotify_iter_info into handle_event handler |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`abc77577a669`](https://git.kernel.org/torvalds/c/abc77577a669) | [fs] | fsnotify: Provide framework for dropping SRCU lock in ->handle_event |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`f4edce1afd53`](https://git.kernel.org/torvalds/c/f4edce1afd53) | [fs] | fsnotify: remove a stray unlock |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`2e37c6ca8d76`](https://git.kernel.org/torvalds/c/2e37c6ca8d76) | [fs] | fsnotify: Remove fsnotify_detach_group_marks() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`b1362edfe15b`](https://git.kernel.org/torvalds/c/b1362edfe15b) | [fs] | fsnotify: Remove fsnotify_find_{inode\|vfsmount}_mark() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`8920d2734d9a`](https://git.kernel.org/torvalds/c/8920d2734d9a) | [fs] | fsnotify: Remove fsnotify_recalc_{inode\|vfsmount}_mask() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`8212a6097a72`](https://git.kernel.org/torvalds/c/8212a6097a72) | [fs] | fsnotify: Remove indirection from fsnotify_detach_mark() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`755b5bc681eb`](https://git.kernel.org/torvalds/c/755b5bc681eb) | [fs] | fsnotify: Remove indirection from mark list addition |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`f09b04a03e02`](https://git.kernel.org/torvalds/c/f09b04a03e02) | [fs] | fsnotify: Remove special handling of mark destruction on group shutdown |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`5198adf649a0`](https://git.kernel.org/torvalds/c/5198adf649a0) | [fs] | fsnotify: Remove unnecessary tests when showing fdinfo |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`2629718dd26f`](https://git.kernel.org/torvalds/c/2629718dd26f) | [fs] | fsnotify: Remove useless list deletion and comment |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`18f2e0d3a436`](https://git.kernel.org/torvalds/c/18f2e0d3a436) | [fs] | fsnotify: Rename fsnotify_clear_marks_by_group_flags() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`c1f33073ac1b`](https://git.kernel.org/torvalds/c/c1f33073ac1b) | [fs] | fsnotify: Update comments |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.12 | [`0b6e9ea041e6`](https://git.kernel.org/torvalds/c/0b6e9ea041e6) | [fs] | fuse: Add support for pid namespaces |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-799 |
| CANDIDATE | 4.12 | [`81be24d263db`](https://git.kernel.org/torvalds/c/81be24d263db) | [fs] | Hang/soft lockup in d_invalidate with simultaneous calls |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 4.12 | [`e7253760587e`](https://git.kernel.org/torvalds/c/e7253760587e) | [fs] | inotify: Do not drop mark reference under idr_lock |  | CONFIG_INOTIFY_USER=y in A37 | 3.10.0-810 |
| CANDIDATE | 4.12 | [`25c829afbd74`](https://git.kernel.org/torvalds/c/25c829afbd74) | [fs] | inotify: Remove inode pointers from debug messages |  | CONFIG_INOTIFY_USER=y in A37 | 3.10.0-810 |
| CANDIDATE | 4.12 | [`74da4a0f574d`](https://git.kernel.org/torvalds/c/74da4a0f574d) | [fs] | libceph, ceph: always advertise all supported features |  | generic code, tag [fs] | 3.10.0-701 |
| CANDIDATE | 4.12 | [`50f2112cf7a3`](https://git.kernel.org/torvalds/c/50f2112cf7a3) | [fs] | locks: Set FL_CLOSE when removing flock locks on close() |  | generic code, tag [fs] | 3.10.0-658 |
| CANDIDATE | 4.12 | [`159b09562885`](https://git.kernel.org/torvalds/c/159b09562885) | [fs] | make sure that fchdir() won't accept referral points, etc |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.12 | [`4f757f3cbf54`](https://git.kernel.org/torvalds/c/4f757f3cbf54) | [fs] | make sure that mntns_install() doesn't end up with referral for root |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.12 | [`cd656375f946`](https://git.kernel.org/torvalds/c/cd656375f946) | [fs] | mm: fix data corruption due to stale mmap reads |  | generic code, tag [fs] | 3.10.0-793 |
| CANDIDATE | 4.12 | [`88bd4f862943`](https://git.kernel.org/torvalds/c/88bd4f862943) | [fs] | NFS4.1 handle interrupted slot reuse from ERR_DELAY |  | generic code, tag [fs] | 3.10.0-1066 |
| CANDIDATE | 4.12 | [`9a307403d374`](https://git.kernel.org/torvalds/c/9a307403d374) | [fs] | nfsd4: fix null dereference on replay |  | generic code, tag [fs] | 3.10.0-679 |
| CANDIDATE | 4.12 | [`93893862fb7b`](https://git.kernel.org/torvalds/c/93893862fb7b) | [fs] | path_init(): don't bother with checking MAY_EXEC for LOOKUP_ROOT |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.12 | [`d66bb1607e2d`](https://git.kernel.org/torvalds/c/d66bb1607e2d) | [fs] | proc: Fix unbalanced hard link numbers |  | CONFIG_PROC_FS=y in A37 | 3.10.0-828 |
| CANDIDATE | 4.12 | [`d4da31986c5d`](https://git.kernel.org/torvalds/c/d4da31986c5d) | [fs] | revert "gfs2: Wait for iopen glock dequeues" |  | generic code, tag [fs] | 3.10.0-704 |
| CANDIDATE | 4.12 | [`d9f2950006f1`](https://git.kernel.org/torvalds/c/d9f2950006f1) | [fs] | revert "nfs: nfs_rename() handle -ERESTARTSYS dentry left behind" |  | generic code, tag [fs] | 3.10.0-686 |
| CANDIDATE | 4.12 | [`26c9cb668c7f`](https://git.kernel.org/torvalds/c/26c9cb668c7f) | [fs] | Set unicode flag on cifs echo request to avoid Mac error |  | generic code, tag [fs] | 3.10.0-767 |
| CANDIDATE | 4.12 | [`78757af6518a`](https://git.kernel.org/torvalds/c/78757af6518a) | [fs] | vfs: ftruncate check IS_APPEND() on real upper inode |  | generic code, tag [fs] | 3.10.0-822 |
| CANDIDATE | 4.13 | [`d76036ab47ea`](https://git.kernel.org/torvalds/c/d76036ab47ea) | [fs] | audit: Fix use after free in audit_remove_watch_rule() |  | CONFIG_AUDIT=y in A37 | 3.10.0-810 |
| CANDIDATE | 4.13 | [`b5fed474b983`](https://git.kernel.org/torvalds/c/b5fed474b983) | [fs] | audit: Receive unmount event |  | CONFIG_AUDIT=y in A37 | 3.10.0-810 |
| CANDIDATE | 4.13 | [`67c6777a5d33`](https://git.kernel.org/torvalds/c/67c6777a5d33) | [fs] | binfmt_elf: safely increment argv pointers |  | CONFIG_BINFMT_ELF=y in A37 | 3.10.0-825 |
| CANDIDATE | 4.13 | [`9efc160f4bbd`](https://git.kernel.org/torvalds/c/9efc160f4bbd) | [fs] | block: Introduce queue flag QUEUE_FLAG_SCSI_PASSTHROUGH |  | generic code, tag [fs] | 3.10.0-923 |
| CANDIDATE | 4.13 | [`87354e5de04f`](https://git.kernel.org/torvalds/c/87354e5de04f) | [fs] | buffer: set errors in mapping at the time that the error occurs |  | generic code, tag [fs] | 3.10.0-1004 |
| CANDIDATE | 4.13 | [`c7ed1a4bf4b4`](https://git.kernel.org/torvalds/c/c7ed1a4bf4b4) | [fs] | crush: assume weight_set != null imples weight_set_size > 0 |  | generic code, tag [fs] | 3.10.0-733 |
| CANDIDATE | 4.13 | [`b88ed8d84fbd`](https://git.kernel.org/torvalds/c/b88ed8d84fbd) | [fs] | crush: crush_init_workspace starts with struct crush_work |  | generic code, tag [fs] | 3.10.0-733 |
| CANDIDATE | 4.13 | [`069f3222ca96`](https://git.kernel.org/torvalds/c/069f3222ca96) | [fs] | crush: implement weight and id overrides for straw2 |  | generic code, tag [fs] | 3.10.0-733 |
| CANDIDATE | 4.13 | [`9eebe45c091e`](https://git.kernel.org/torvalds/c/9eebe45c091e) | [fs] | crush: remove an obsolete comment |  | generic code, tag [fs] | 3.10.0-733 |
| CANDIDATE | 4.13 | [`abebfbe2f731`](https://git.kernel.org/torvalds/c/abebfbe2f731) | [fs] | dm: add ->flush() dax operation support |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-868 |
| CANDIDATE | 4.13 | [`138e4ad67afd`](https://git.kernel.org/torvalds/c/138e4ad67afd) | [fs] | epoll: fix race between ep_poll_callback(POLLFREE) and ep_free()/ep_remove() |  | CONFIG_EPOLL=y in A37 | 3.10.0-1121 |
| CANDIDATE | 4.13 | [`a3bb2d558752`](https://git.kernel.org/torvalds/c/a3bb2d558752) | [fs] | ext4: Don't clear SGID when inheriting ACLs |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-799 |
| CANDIDATE | 4.13 | [`c74148920672`](https://git.kernel.org/torvalds/c/c74148920672) | [fs] | ext4: fix dir_nlink behaviour |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1015 |
| CANDIDATE | 4.13 | [`397e434176bb`](https://git.kernel.org/torvalds/c/397e434176bb) | [fs] | ext4: preserve i_mode if __ext4_set_acl() fails |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-799 |
| CANDIDATE | 4.13 | [`fec53774fd04`](https://git.kernel.org/torvalds/c/fec53774fd04) | [fs] | filesystem-dax: convert to dax_copy_from_iter() |  | generic code, tag [fs] | 3.10.0-942 |
| CANDIDATE | 4.13 | [`7e682f766f28`](https://git.kernel.org/torvalds/c/7e682f766f28) | [fs] | Fix warning messages when mounting to older servers |  | generic code, tag [fs] | 3.10.0-868 |
| CANDIDATE | 4.13 | [`9183976ef1c8`](https://git.kernel.org/torvalds/c/9183976ef1c8) | [fs] | fuse: set mapping error in writepage_locked when it fails |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.13 | [`5cf9c4a9959b`](https://git.kernel.org/torvalds/c/5cf9c4a9959b) | [fs] | libceph, crush: per-pool crush_choose_arg_map for crush_do_rule() |  | generic code, tag [fs] | 3.10.0-733 |
| CANDIDATE | 4.13 | [`a8e2b6367794`](https://git.kernel.org/torvalds/c/a8e2b6367794) | [fs] | Make statfs properly return read-only state after emergency remount |  | generic code, tag [fs] | 3.10.0-700 |
| CANDIDATE | 4.13 | [`78bb920344b8`](https://git.kernel.org/torvalds/c/78bb920344b8) | [fs] | mm: hwpoison: dissolve in-use hugepage in unrecoverable memory error |  | generic code, tag [fs] | 3.10.0-1146 |
| CANDIDATE | 4.13 | [`99b19d16471e`](https://git.kernel.org/torvalds/c/99b19d16471e) | [fs] | mnt: In propgate_umount handle visiting mounts in any order |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.13 | [`570487d3faf2`](https://git.kernel.org/torvalds/c/570487d3faf2) | [fs] | mnt: In umount propagation reparent in a separate pass |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.13 | [`296990deb389`](https://git.kernel.org/torvalds/c/296990deb389) | [fs] | mnt: Make propagate_umount less slow for overlapping mount propagation trees |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | 4.13 | [`89a6814d9b66`](https://git.kernel.org/torvalds/c/89a6814d9b66) | [fs] | mount: copy the port field into the cloned nfs_server structure |  | generic code, tag [fs] | 3.10.0-923 |
| CANDIDATE | 4.13 | [`eebe53e87f97`](https://git.kernel.org/torvalds/c/eebe53e87f97) | [fs] | net: sunrpc: svcsock: fix NULL-pointer exception |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | 4.13 | [`2fd1d2c4ceb2`](https://git.kernel.org/torvalds/c/2fd1d2c4ceb2) | [fs] | proc: Fix proc_sys_prune_dcache to hold a sb reference |  | CONFIG_PROC_FS=y in A37 | 3.10.0-1103 |
| CANDIDATE | 4.13 | [`61d9b56a8920`](https://git.kernel.org/torvalds/c/61d9b56a8920) | [fs] | sysctl: add unsigned int range support |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.13 | [`89c5b53b16bf`](https://git.kernel.org/torvalds/c/89c5b53b16bf) | [fs] | sysctl: fix lax sysctl_check_table() sanity check |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.13 | [`d383d4847081`](https://git.kernel.org/torvalds/c/d383d4847081) | [fs] | sysctl: fold sysctl_writes_strict checks into helper |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.13 | [`a19ac3374995`](https://git.kernel.org/torvalds/c/a19ac3374995) | [fs] | sysctl: kdoc'ify sysctl_writes_strict |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.13 | [`4f2fec00afa6`](https://git.kernel.org/torvalds/c/4f2fec00afa6) | [fs] | sysctl: simplify unsigned int support |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.13 | [`2b4db79618ad`](https://git.kernel.org/torvalds/c/2b4db79618ad) | [fs] | tmpfs: generate random sb->s_uuid |  | generic code, tag [fs] | 3.10.0-822 |
| CANDIDATE | 4.13 | [`0ed3b0d45fd3`](https://git.kernel.org/torvalds/c/0ed3b0d45fd3) | [fs] | vfs: Add iomap_seek_hole and iomap_seek_data helpers |  | generic code, tag [fs] | 3.10.0-799 |
| CANDIDATE | 4.13 | [`334fd34d76f2`](https://git.kernel.org/torvalds/c/334fd34d76f2) | [fs] | vfs: Add page_cache_seek_hole_data helper |  | generic code, tag [fs] | 3.10.0-799 |
| CANDIDATE | 4.13 | [`ad0af7104dad`](https://git.kernel.org/torvalds/c/ad0af7104dad) | [fs] | vfs: introduce inode 'inuse' lock |  | generic code, tag [fs] | 3.10.0-822 |
| CANDIDATE | 4.14 | [`ffe51f0142a2`](https://git.kernel.org/torvalds/c/ffe51f0142a2) (loose) | [fs] | Avoid invalidation in interrupt context in dio_complete() |  | generic code, tag [fs] | 3.10.0-799 |
| CANDIDATE | 4.14 | [`fd96b8da68d3`](https://git.kernel.org/torvalds/c/fd96b8da68d3) | [fs] | ext4: fix fault handling when mounted with -o dax,ro |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-816 |
| CANDIDATE | 4.14 | [`b0a5a9589dec`](https://git.kernel.org/torvalds/c/b0a5a9589dec) | [fs] | ext4: fix incorrect quotaoff if the quota feature is enabled |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.14 | [`aed9eb1b21e8`](https://git.kernel.org/torvalds/c/aed9eb1b21e8) | [fs] | ext4: fix null pointer dereference on sbi |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-868 |
| CANDIDATE | 4.14 | [`95f1fda47c9d`](https://git.kernel.org/torvalds/c/95f1fda47c9d) | [fs] | ext4: fix quota inconsistency during orphan cleanup for read-only mounts |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.14 | [`5e405595e5bf`](https://git.kernel.org/torvalds/c/5e405595e5bf) | [fs] | ext4: perform dax_device lookup at mount |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-868 |
| CANDIDATE | 4.14 | [`06e2290844fa`](https://git.kernel.org/torvalds/c/06e2290844fa) | [fs] | Fix encryption labels and lengths for SMB3.1.1 |  | generic code, tag [fs] | 3.10.0-868 |
| CANDIDATE | 4.14 | [`332391a9935d`](https://git.kernel.org/torvalds/c/332391a9935d) (loose) | [fs] | Fix page cache inconsistency when mixing buffered and AIO DIO |  | generic code, tag [fs] | 3.10.0-799 |
| CANDIDATE | 4.14 | [`23586b66d84b`](https://git.kernel.org/torvalds/c/23586b66d84b) | [fs] | Fix SMB3.1.1 guest authentication to Samba |  | generic code, tag [fs] | 3.10.0-868 |
| CANDIDATE | 4.14 | [`95d78c28b5a8`](https://git.kernel.org/torvalds/c/95d78c28b5a8) | [fs] | fix unbalanced page refcounting in bio_map_user_iov | CVE-2017-12190 | generic code, tag [fs] | 3.10.0-808 |
| CANDIDATE | 4.14 | [`ab615a5b8792`](https://git.kernel.org/torvalds/c/ab615a5b8792) | [fs] | fs/hugetlbfs/inode.c: fix hwpoison reserve accounting |  | generic code, tag [fs] | 3.10.0-1146 |
| CANDIDATE | 4.14 | [`c9ea9df3032e`](https://git.kernel.org/torvalds/c/c9ea9df3032e) | [fs] | fsnotify: make dnotify_fsnotify_ops const |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.14 | [`5d6d3a301c4e`](https://git.kernel.org/torvalds/c/5d6d3a301c4e) | [fs] | fuse: allow server to run in different pid_ns |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-799 |
| CANDIDATE | 4.14 | [`c6cdd51404b7`](https://git.kernel.org/torvalds/c/c6cdd51404b7) | [fs] | fuse: fix READDIRPLUS skipping an entry |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.14 | [`67427715da97`](https://git.kernel.org/torvalds/c/67427715da97) | [fs] | maintainers: Update entries for notification subsystem |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.14 | [`2b04e8f6bbb1`](https://git.kernel.org/torvalds/c/2b04e8f6bbb1) | [fs] | more bio_map_user_iov() leak fixes | CVE-2017-12190 | generic code, tag [fs] | 3.10.0-808 |
| CANDIDATE | 4.14 | [`ff7a5fb0f1d5`](https://git.kernel.org/torvalds/c/ff7a5fb0f1d5) | [fs] | overlayfs, locking: Remove smp_mb__before_spinlock() usage |  | generic code, tag [fs] | 3.10.0-1041 |
| CANDIDATE | 4.14 | [`94a9daeaece4`](https://git.kernel.org/torvalds/c/94a9daeaece4) | [fs] | Update version of cifs module |  | generic code, tag [fs] | 3.10.0-893 |
| CANDIDATE | 4.14 | [`495e64293911`](https://git.kernel.org/torvalds/c/495e64293911) | [fs] | vfs: add flags to d_real() |  | generic code, tag [fs] | 3.10.0-1041 |
| CANDIDATE | 4.14 | [`fc46820b27a2`](https://git.kernel.org/torvalds/c/fc46820b27a2) | [fs] | vfs: Return -ENXIO for negative SEEK_HOLE / SEEK_DATA offsets |  | generic code, tag [fs] | 3.10.0-887 |
| CANDIDATE | 4.15 | [`caa51d26f85c`](https://git.kernel.org/torvalds/c/caa51d26f85c) | [fs] | dax, iomap: Add support for synchronous faults |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | 4.15 | [`b3a006600582`](https://git.kernel.org/torvalds/c/b3a006600582) | [fs] | dnotify: Handle errors from fsnotify_add_mark_locked() in fcntl_dirnotify() |  | CONFIG_DNOTIFY=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.15 | [`6642586b3e5f`](https://git.kernel.org/torvalds/c/6642586b3e5f) | [fs] | ext4: add ext4_should_use_dax() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-799 |
| CANDIDATE | 4.15 | [`9d5afec6b8bd`](https://git.kernel.org/torvalds/c/9d5afec6b8bd) | [fs] | ext4: fix crash when a directory's i_size is too small |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.15 | [`c894aa97577e`](https://git.kernel.org/torvalds/c/c894aa97577e) | [fs] | ext4: fix fdatasync(2) after fallocate(2) operation |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.15 | [`51e3ae81ec58`](https://git.kernel.org/torvalds/c/51e3ae81ec58) | [fs] | ext4: fix interaction between i_size, fallocate, and delalloc after a crash |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-912 |
| CANDIDATE | 4.15 | [`559db4c6d784`](https://git.kernel.org/torvalds/c/559db4c6d784) | [fs] | ext4: prevent data corruption with inline data + DAX |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-799 |
| CANDIDATE | 4.15 | [`e9072d859df3`](https://git.kernel.org/torvalds/c/e9072d859df3) | [fs] | ext4: prevent data corruption with journaling + DAX |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-799 |
| CANDIDATE | 4.15 | [`497f6926d880`](https://git.kernel.org/torvalds/c/497f6926d880) | [fs] | ext4: Simplify error handling in ext4_dax_huge_fault() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-912 |
| CANDIDATE | 4.15 | [`b8a6176c214c`](https://git.kernel.org/torvalds/c/b8a6176c214c) | [fs] | ext4: Support for synchronous DAX faults |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-912 |
| CANDIDATE | 4.15 | [`545052e9e35a`](https://git.kernel.org/torvalds/c/545052e9e35a) | [fs] | ext4: Switch to iomap for SEEK_HOLE / SEEK_DATA |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-808 |
| CANDIDATE | 4.15 | [`aaa422c4c3f6`](https://git.kernel.org/torvalds/c/aaa422c4c3f6) | [fs] | fs, dax: unify IOMAP_F_DIRTY read vs write handling policy in the dax core |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | 4.15 | [`72639e6df412`](https://git.kernel.org/torvalds/c/72639e6df412) | [fs] | fs/hugetlbfs/inode.c: change put_page/unlock_page order in hugetlbfs_fallocate() |  | generic code, tag [fs] | 3.10.0-1070 |
| CANDIDATE | 4.15 | [`478f8da0f7c9`](https://git.kernel.org/torvalds/c/478f8da0f7c9) | [fs] | fs/xfs: Remove NULL check before kmem_cache_destroy |  | generic code, tag [fs] | 3.10.0-1004 |
| CANDIDATE | 4.15 | [`eaf0ec303bd7`](https://git.kernel.org/torvalds/c/eaf0ec303bd7) | [fs] | fs: xfs: remove duplicate includes |  | generic code, tag [fs] | 3.10.0-1004 |
| CANDIDATE | 4.15 | [`3427ce715541`](https://git.kernel.org/torvalds/c/3427ce715541) | [fs] | fsnotify: clean up fsnotify() |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 4.15 | [`24c20305c7fc`](https://git.kernel.org/torvalds/c/24c20305c7fc) | [fs] | fsnotify: clean up fsnotify_prepare/finish_user_wait() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.15 | [`9a31d7ad997f`](https://git.kernel.org/torvalds/c/9a31d7ad997f) | [fs] | fsnotify: fix pinning group in fsnotify_prepare_user_wait() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.15 | [`0d6ec079d6aa`](https://git.kernel.org/torvalds/c/0d6ec079d6aa) | [fs] | fsnotify: pin both inode and vfsmount mark |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.15 | [`b6fb293f2497`](https://git.kernel.org/torvalds/c/b6fb293f2497) | [fs] | mm: Define MAP_SYNC and VM_SYNC flags |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | 4.15 | [`592e25450204`](https://git.kernel.org/torvalds/c/592e25450204) | [fs] | mm: Handle 0 flags in _calc_vm_trans() macro |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | 4.15 | [`1c9725974074`](https://git.kernel.org/torvalds/c/1c9725974074) | [fs] | mm: introduce MAP_SHARED_VALIDATE, a mechanism to safely define new mmap flags |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | 4.15 | [`d81b8a722f69`](https://git.kernel.org/torvalds/c/d81b8a722f69) | [fs] | mm: Remove VM_FAULT_HWPOISON_LARGE_MASK |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | 4.15 | [`256a89fa3deb`](https://git.kernel.org/torvalds/c/256a89fa3deb) | [fs] | nfds: avoid gettimeofday for nfssvc_boot time |  | generic code, tag [fs] | 3.10.0-919 |
| CANDIDATE | 4.15 | [`9e137ed5abcb`](https://git.kernel.org/torvalds/c/9e137ed5abcb) | [fs] | nlm_shutdown_hosts_net() cleanup |  | generic code, tag [fs] | 3.10.0-1142 |
| CANDIDATE | 4.15 | [`7a8d181949fb`](https://git.kernel.org/torvalds/c/7a8d181949fb) | [fs] | pipe: add proc_dopipe_max_size() to safely assign pipe_max_size |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.15 | [`d3f14c485867`](https://git.kernel.org/torvalds/c/d3f14c485867) | [fs] | pipe: avoid round_pipe_size() nr_pages overflow on 32-bit |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.15 | [`98159d977f71`](https://git.kernel.org/torvalds/c/98159d977f71) | [fs] | pipe: match pipe_max_size data type with procfs |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.15 | [`6b18dd1c03e0`](https://git.kernel.org/torvalds/c/6b18dd1c03e0) | [fs] | race of lockd inetaddr notifiers vs nlmsvc_rqst change |  | generic code, tag [fs] | 3.10.0-919 |
| CANDIDATE | 4.15 | [`2317dc557a3b`](https://git.kernel.org/torvalds/c/2317dc557a3b) | [fs] | race of nfsd inetaddr notifiers vs nn->nfsd_serv change |  | generic code, tag [fs] | 3.10.0-919 |
| CANDIDATE | 4.15 | [`fb910c42cceb`](https://git.kernel.org/torvalds/c/fb910c42cceb) | [fs] | sysctl: check for UINT_MAX before unsigned int min/max |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | 4.15 | [`f121aadede37`](https://git.kernel.org/torvalds/c/f121aadede37) | [fs] | vfs: add path_put_init() |  | generic code, tag [fs] | 3.10.0-1041 |
| CANDIDATE | 4.16 | [`5f60a56494ea`](https://git.kernel.org/torvalds/c/5f60a56494ea) | [fs] | Add missing structs and defines from recent SMB3.1.1 documentation |  | generic code, tag [fs] | 3.10.0-868 |
| CANDIDATE | 4.16 | [`ede2e520a148`](https://git.kernel.org/torvalds/c/ede2e520a148) | [fs] | Add some missing debug fields in server and tcon structs |  | generic code, tag [fs] | 3.10.0-966 |
| CANDIDATE | 4.16 | [`24f3478d664b`](https://git.kernel.org/torvalds/c/24f3478d664b) | [fs] | ext4: auto disable dax instead of failing mount |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-912 |
| CANDIDATE | 4.16 | [`abbc3f9395c7`](https://git.kernel.org/torvalds/c/abbc3f9395c7) | [fs] | ext4: fix a race in the ext4 shutdown path |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.16 | [`22446423108f`](https://git.kernel.org/torvalds/c/22446423108f) | [fs] | ext4: fix ENOSPC handling in DAX page fault handler |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-912 |
| CANDIDATE | 4.16 | [`06f29cc81f03`](https://git.kernel.org/torvalds/c/06f29cc81f03) | [fs] | ext4: save error to disk in __ext4_grp_locked_error() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.16 | [`f515f86b34b2`](https://git.kernel.org/torvalds/c/f515f86b34b2) | [fs] | fix parallelism for rpc tasks |  | generic code, tag [fs] | 3.10.0-914 |
| CANDIDATE | 4.16 | [`ee190ca6516b`](https://git.kernel.org/torvalds/c/ee190ca6516b) | [fs] | fs/dax.c: release PMD lock even when there is no PMD support in DAX |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | 4.16 | [`95dd77580ccd`](https://git.kernel.org/torvalds/c/95dd77580ccd) | [fs] | fs: Teach path_connected to handle nfs filesystems with multiple roots |  | generic code, tag [fs] | 3.10.0-871 |
| CANDIDATE | 4.16 | [`70a20655339a`](https://git.kernel.org/torvalds/c/70a20655339a) | [fs] | Get rid of xfs_buf_log_item_t typedef |  | generic code, tag [fs] | 3.10.0-1066 |
| CANDIDATE | 4.16 | [`937441f3a315`](https://git.kernel.org/torvalds/c/937441f3a315) | [fs] | libceph, ceph: avoid memory leak when specifying same option several times |  | generic code, tag [fs] | 3.10.0-902 |
| CANDIDATE | 4.16 | [`785a3fab4adb`](https://git.kernel.org/torvalds/c/785a3fab4adb) | [fs] | mm, dax: introduce pfn_t_special() |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | 4.16 | [`a365ac09d334`](https://git.kernel.org/torvalds/c/a365ac09d334) | [fs] | mm, userfaultfd, thp: avoid waiting when PMD under THP migration | CVE-2018-18397 | generic code, tag [fs] | 3.10.0-971 |
| CANDIDATE | 4.16 | [`85c2dd5473b2`](https://git.kernel.org/torvalds/c/85c2dd5473b2) | [fs] | pipe: actually allow root to exceed the pipe buffer limits |  | generic code, tag [fs] | 3.10.0-1147 |
| CANDIDATE | 4.16 | [`bdba0d5ec13e`](https://git.kernel.org/torvalds/c/bdba0d5ec13e) | [fs] | Turn gfs2_block_truncate_page into gfs2_block_zero_range |  | generic code, tag [fs] | 3.10.0-974 |
| CANDIDATE | 4.16 | [`595dd46ebfc1`](https://git.kernel.org/torvalds/c/595dd46ebfc1) | [fs] | vfs/proc/kcore, x86/mm/kcore: Fix SMAP fault when dumping vsyscall user page |  | generic code, tag [fs] | 3.10.0-920 |
| CANDIDATE | 4.16 | [`61647823aa92`](https://git.kernel.org/torvalds/c/61647823aa92) | [fs] | vfs: close race between getcwd() and d_move() |  | generic code, tag [fs] | 3.10.0-1084 |
| CANDIDATE | 4.16 | [`f9c34674bc60`](https://git.kernel.org/torvalds/c/f9c34674bc60) | [fs] | vfs: factor out helpers d_instantiate_anon() and d_alloc_anon() |  | generic code, tag [fs] | 3.10.0-1041 |
| CANDIDATE | 4.17 | [`15aa8a01189b`](https://git.kernel.org/torvalds/c/15aa8a01189b) | [fs] | block, dax: remove dead code in blkdev_writepages() |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | 4.17 | [`3172485f4f80`](https://git.kernel.org/torvalds/c/3172485f4f80) | [fs] | block_invalidatepage(): only release page if the full page was invalidated |  | generic code, tag [fs] | 3.10.0-1070 |
| CANDIDATE | 4.17 | [`08fdc8a0138a`](https://git.kernel.org/torvalds/c/08fdc8a0138a) | [fs] | buffer.c: call thaw_super during emergency thaw |  | generic code, tag [fs] | 3.10.0-680 |
| CANDIDATE | 4.17 | [`1f5781725dcb`](https://git.kernel.org/torvalds/c/1f5781725dcb) | [fs] | commoncap: Handle memory allocation failure. |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | 4.17 | [`1e2e547a93a0`](https://git.kernel.org/torvalds/c/1e2e547a93a0) | [fs] | do d_instantiate/unlock_new_inode combinations safely |  | generic code, tag [fs] | 3.10.0-1041 |
| CANDIDATE | 4.17 | [`2a18287b54f8`](https://git.kernel.org/torvalds/c/2a18287b54f8) | [fs] | Don't log confusing message on reconnect by default |  | generic code, tag [fs] | 3.10.0-1114 |
| CANDIDATE | 4.17 | [`2564f2ff8397`](https://git.kernel.org/torvalds/c/2564f2ff8397) | [fs] | Don't log expected error on DFS referral request |  | generic code, tag [fs] | 3.10.0-983 |
| CANDIDATE | 4.17 | [`5f0663bb4a64`](https://git.kernel.org/torvalds/c/5f0663bb4a64) | [fs] | ext4, dax: introduce ext4_dax_aops |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | 4.17 | [`18db4b4e6fc3`](https://git.kernel.org/torvalds/c/18db4b4e6fc3) | [fs] | ext4: don't allow r/w mounts if metadata blocks overlap the superblock | CVE-2018-1094 | CONFIG_EXT4_FS=y in A37 | 3.10.0-912 |
| CANDIDATE | 4.17 | [`fe23cb65c2c3`](https://git.kernel.org/torvalds/c/fe23cb65c2c3) | [fs] | ext4: fix offset overflow on 32-bit archs in ext4_iomap_begin() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.17 | [`e40ff2138985`](https://git.kernel.org/torvalds/c/e40ff2138985) | [fs] | ext4: force revalidation of directory pointer after seekdir(2) |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.17 | [`ce3fd194fcc6`](https://git.kernel.org/torvalds/c/ce3fd194fcc6) | [fs] | ext4: limit xattr size to INT_MAX |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.17 | [`73fdad00b208`](https://git.kernel.org/torvalds/c/73fdad00b208) | [fs] | ext4: protect i_disksize update by i_data_sem in direct write path |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-902 |
| CANDIDATE | 4.17 | [`b2569260d552`](https://git.kernel.org/torvalds/c/b2569260d552) | [fs] | ext4: set h_journal if there is a failure starting a reserved handle |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-912 |
| CANDIDATE | 4.17 | [`45d8ec4d9fd5`](https://git.kernel.org/torvalds/c/45d8ec4d9fd5) | [fs] | ext4: update i_disksize if direct write past ondisk size |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-902 |
| CANDIDATE | 4.17 | [`8c81dd46ef3c`](https://git.kernel.org/torvalds/c/8c81dd46ef3c) | [fs] | Force log to disk before reading the AGF during a fstrim |  | generic code, tag [fs] | 3.10.0-879 |
| CANDIDATE | 4.17 | [`f44c77630d26`](https://git.kernel.org/torvalds/c/f44c77630d26) | [fs] | fs, dax: prepare for dax-specific address_space_operations |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | 4.17 | [`d2c997c0f145`](https://git.kernel.org/torvalds/c/d2c997c0f145) | [fs] | fs, dax: use page->mapping to warn if truncate collides with a busy page |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | 4.17 | [`79f546a696bf`](https://git.kernel.org/torvalds/c/79f546a696bf) | [fs] | fs: don't scan the inode cache before SB_BORN is set |  | generic code, tag [fs] | 3.10.0-919 |
| CANDIDATE | 4.17 | [`92183a42898d`](https://git.kernel.org/torvalds/c/92183a42898d) | [fs] | fsnotify: fix ignore mask logic in send_to_group() |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 4.17 | [`8e984f8667ff`](https://git.kernel.org/torvalds/c/8e984f8667ff) | [fs] | fsnotify: fix typo in a comment about mark->g_list |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 4.17 | [`85e0c4e89c1b`](https://git.kernel.org/torvalds/c/85e0c4e89c1b) | [fs] | jbd2: if the journal is aborted then don't allow update of the log tail |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.17 | [`57a35dfb522c`](https://git.kernel.org/torvalds/c/57a35dfb522c) | [fs] | libceph, ceph: add __init attribution to init funcitons |  | generic code, tag [fs] | 3.10.0-902 |
| CANDIDATE | 4.17 | [`dccbf08005df`](https://git.kernel.org/torvalds/c/dccbf08005df) | [fs] | libceph, ceph: change ceph_calc_file_object_mapping() signature |  | generic code, tag [fs] | 3.10.0-902 |
| CANDIDATE | 4.17 | [`11e1478df91c`](https://git.kernel.org/torvalds/c/11e1478df91c) | [fs] | libceph, ceph: change permission for readonly debugfs entries |  | generic code, tag [fs] | 3.10.0-902 |
| CANDIDATE | 4.17 | [`88c28f246915`](https://git.kernel.org/torvalds/c/88c28f246915) | [fs] | mm, pagemap: fix swap offset value for PMD migration entry |  | generic code, tag [fs] | 3.10.0-977 |
| CANDIDATE | 4.17 | [`7f7ccc2ccc2e`](https://git.kernel.org/torvalds/c/7f7ccc2ccc2e) | [fs] | proc: do not access cmdline nor environ from file-backed areas | CVE-2018-1120 | CONFIG_PROC_FS=y in A37 | 3.10.0-907 |
| CANDIDATE | 4.17 | [`fae1fa0fc6cc`](https://git.kernel.org/torvalds/c/fae1fa0fc6cc) | [fs] | proc: Provide details on speculation flaw mitigations | CVE-2018-3639 | CONFIG_PROC_FS=y in A37 | 3.10.0-905 |
| CANDIDATE | 4.17 | [`e96f46ee8587`](https://git.kernel.org/torvalds/c/e96f46ee8587) | [fs] | proc: Use underscores for SSBD in 'status' | CVE-2018-3639 | CONFIG_PROC_FS=y in A37 | 3.10.0-905 |
| CANDIDATE | 4.17 | [`6e2608dfd934`](https://git.kernel.org/torvalds/c/6e2608dfd934) | [fs] | xfs, dax: introduce xfs_dax_aops |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | 4.18 | [`ba23cba9b3bd`](https://git.kernel.org/torvalds/c/ba23cba9b3bd) (loose) | [fs] | allow per-device dax status checking for filesystems |  | generic code, tag [fs] | 3.10.0-928 |
| CANDIDATE | 4.18 | [`b1d749c5c341`](https://git.kernel.org/torvalds/c/b1d749c5c341) | [fs] | capabilities: Allow privileged user in s_user_ns to set security.* xattrs |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | 4.18 | [`ff17fa561a04`](https://git.kernel.org/torvalds/c/ff17fa561a04) | [fs] | d_invalidate(): unhash immediately |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 4.18 | [`bfe0a5f47ada`](https://git.kernel.org/torvalds/c/bfe0a5f47ada) | [fs] | ext4: add more mount time checks of the superblock |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-937 |
| CANDIDATE | 4.18 | [`8d5a803c6a6c`](https://git.kernel.org/torvalds/c/8d5a803c6a6c) | [fs] | ext4: check for allocation block validity with block group locked |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-937 |
| CANDIDATE | 4.18 | [`a17712c8e4be`](https://git.kernel.org/torvalds/c/a17712c8e4be) | [fs] | ext4: check superblock mapped prior to committing |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1059 |
| CANDIDATE | 4.18 | [`db6516a5e7dd`](https://git.kernel.org/torvalds/c/db6516a5e7dd) | [fs] | ext4: do not update s_last_mounted of a frozen fs |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-912 |
| CANDIDATE | 4.18 | [`833a950882d3`](https://git.kernel.org/torvalds/c/833a950882d3) | [fs] | ext4: factor out helper ext4_sample_last_mounted() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-912 |
| CANDIDATE | 4.18 | [`44de022c4382`](https://git.kernel.org/torvalds/c/44de022c4382) | [fs] | ext4: fix false negatives *and* false positives in ext4_check_descriptors() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-937 |
| CANDIDATE | 4.18 | [`4f2f76f75143`](https://git.kernel.org/torvalds/c/4f2f76f75143) | [fs] | ext4: fix fencepost error in check for inode count overflow during resize |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-912 |
| CANDIDATE | 4.18 | [`2ee3ee06a8fd`](https://git.kernel.org/torvalds/c/2ee3ee06a8fd) | [fs] | ext4: fix hole length detection in ext4_ind_map_blocks() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-912 |
| CANDIDATE | 4.18 | [`bdbd6ce01a70`](https://git.kernel.org/torvalds/c/bdbd6ce01a70) | [fs] | ext4: include the illegal physical block in the bad map ext4_error msg |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-937 |
| CANDIDATE | 4.18 | [`77260807d117`](https://git.kernel.org/torvalds/c/77260807d117) | [fs] | ext4: make sure bitmaps and the inode table don't overlap with bg descriptors |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-937 |
| CANDIDATE | 4.18 | [`eee597ac9313`](https://git.kernel.org/torvalds/c/eee597ac9313) | [fs] | ext4: update mtime in ext4_punch_hole even if no blocks are released |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-912 |
| CANDIDATE | 4.18 | [`0070ed3d9ebf`](https://git.kernel.org/torvalds/c/0070ed3d9ebf) | [fs] | Fix 16-byte memory leak in gssp_accept_sec_context_upcall |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | 4.18 | [`9ea0a46ca2c3`](https://git.kernel.org/torvalds/c/9ea0a46ca2c3) | [fs] | fix mntput/mntput race |  | generic code, tag [fs] | 3.10.0-1142 |
| CANDIDATE | 4.18 | [`0fa3ecd87848`](https://git.kernel.org/torvalds/c/0fa3ecd87848) | [fs] | Fix up non-directory creation in SGID directories | CVE-2018-13405 | generic code, tag [fs] | 3.10.0-950 |
| CANDIDATE | 4.18 | [`f3f1a18330ac`](https://git.kernel.org/torvalds/c/f3f1a18330ac) | [fs] | fs: Allow CAP_SYS_ADMIN in s_user_ns to freeze and thaw filesystems |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | 4.18 | [`bc6155d13260`](https://git.kernel.org/torvalds/c/bc6155d13260) | [fs] | fs: Allow superblock owner to access do_remount_sb() |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | 4.18 | [`0031181c49ca`](https://git.kernel.org/torvalds/c/0031181c49ca) | [fs] | fs: Allow superblock owner to replace invalid owners of inodes |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | 4.18 | [`62750d040bd1`](https://git.kernel.org/torvalds/c/62750d040bd1) | [fs] | fs: copy BTRFS_IOC_[SG]ET_FSLABEL to vfs |  | generic code, tag [fs] | 3.10.0-914 |
| CANDIDATE | 4.18 | [`b249f5be6165`](https://git.kernel.org/torvalds/c/b249f5be6165) | [fs] | fsnotify: add fsnotify_add_inode_mark() wrappers |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 4.18 | [`47d9c7cc457a`](https://git.kernel.org/torvalds/c/47d9c7cc457a) | [fs] | fsnotify: generalize iteration of marks by object type |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 4.18 | [`3dca1a7494e3`](https://git.kernel.org/torvalds/c/3dca1a7494e3) | [fs] | fsnotify: generalize send_to_group() |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 4.18 | [`d9a6f30bb893`](https://git.kernel.org/torvalds/c/d9a6f30bb893) | [fs] | fsnotify: introduce marks iteration helpers |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 4.18 | [`5b0457ad021f`](https://git.kernel.org/torvalds/c/5b0457ad021f) | [fs] | fsnotify: remove redundant arguments to handle_event() |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 4.18 | [`d6f7b98bc814`](https://git.kernel.org/torvalds/c/d6f7b98bc814) | [fs] | fsnotify: use type id to identify connector object type |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 4.18 | [`4ad769f3c346`](https://git.kernel.org/torvalds/c/4ad769f3c346) | [fs] | fuse: Allow fully unprivileged mounts |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1089 |
| CANDIDATE | 4.18 | [`df0e91d48827`](https://git.kernel.org/torvalds/c/df0e91d48827) | [fs] | fuse: atomic_o_trunc should truncate pagecache |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.18 | [`543b8f8662fe`](https://git.kernel.org/torvalds/c/543b8f8662fe) | [fs] | fuse: don't keep dead fuse_conn at fuse_fill_super(). |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.18 | [`c9582eb0ff7d`](https://git.kernel.org/torvalds/c/c9582eb0ff7d) | [fs] | fuse: Fail all requests with invalid uids or gids |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1089 |
| CANDIDATE | 4.18 | [`8a301eb16d99`](https://git.kernel.org/torvalds/c/8a301eb16d99) | [fs] | fuse: fix congested state leak on aborted connections |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.18 | [`6becdb601bae`](https://git.kernel.org/torvalds/c/6becdb601bae) | [fs] | fuse: fix control dir setup and teardown |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.18 | [`dbf107b2a7f3`](https://git.kernel.org/torvalds/c/dbf107b2a7f3) | [fs] | fuse: Remove the buggy retranslation of pids in fuse_dev_do_read |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.18 | [`73f03c2b4b52`](https://git.kernel.org/torvalds/c/73f03c2b4b52) | [fs] | fuse: Restrict allow_other to the superblock's namespace or a descendant |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1089 |
| CANDIDATE | 4.18 | [`8cb08329b080`](https://git.kernel.org/torvalds/c/8cb08329b080) | [fs] | fuse: Support fuse filesystems outside of init_user_ns |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1089 |
| CANDIDATE | 4.18 | [`5fac7408d828`](https://git.kernel.org/torvalds/c/5fac7408d828) (loose) | [fs] | mm, dax: handle layout changes to pinned dax mappings |  | generic code, tag [fs] | 3.10.0-928 |
| CANDIDATE | 4.18 | [`ab6ecf247a93`](https://git.kernel.org/torvalds/c/ab6ecf247a93) | [fs] | mm: /proc/pid/pagemap: hide swap entries from unprivileged users |  | generic code, tag [fs] | 3.10.0-977 |
| CANDIDATE | 4.18 | [`5d008fb414f7`](https://git.kernel.org/torvalds/c/5d008fb414f7) | [fs] | proc: use "unsigned int" for /proc/*/stack | CVE-2018-17972 | CONFIG_PROC_FS=y in A37 | 3.10.0-993 |
| CANDIDATE | 4.18 | [`93b7f7ad2018`](https://git.kernel.org/torvalds/c/93b7f7ad2018) | [fs] | skip LAYOUTRETURN if layout is invalid |  | generic code, tag [fs] | 3.10.0-937 |
| CANDIDATE | 4.18 | [`0c8e3fe35db9`](https://git.kernel.org/torvalds/c/0c8e3fe35db9) | [fs] | vfs: add the sb_start_intwrite_trylock() helper |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | 4.18 | [`593d1ce854df`](https://git.kernel.org/torvalds/c/593d1ce854df) | [fs] | vfs: Don't allow changing the link count of an inode with an invalid uid or gid |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | 4.18 | [`80ea09a002bf`](https://git.kernel.org/torvalds/c/80ea09a002bf) | [fs] | vfs: factor out inode_insert5() |  | generic code, tag [fs] | 3.10.0-1041 |
| CANDIDATE | 4.18 | [`2724273e8fd0`](https://git.kernel.org/torvalds/c/2724273e8fd0) | [fs] | vmcore: add API to collect hardware dump in second kernel |  | generic code, tag [fs] | 3.10.0-999 |
| CANDIDATE | 4.18 | [`7efe48df8a3d`](https://git.kernel.org/torvalds/c/7efe48df8a3d) | [fs] | vmcore: append device dumps to vmcore as elf notes |  | generic code, tag [fs] | 3.10.0-999 |
| CANDIDATE | 4.18 | [`44c752fe584d`](https://git.kernel.org/torvalds/c/44c752fe584d) | [fs] | vmcore: move get_vmcore_size out of __init |  | generic code, tag [fs] | 3.10.0-999 |
| CANDIDATE | 4.18 | [`d6dc57e251a4`](https://git.kernel.org/torvalds/c/d6dc57e251a4) | [fs] | xfs, dax: introduce xfs_break_dax_layouts() |  | generic code, tag [fs] | 3.10.0-928 |
| CANDIDATE | 4.19 | [`7e8a6304d541`](https://git.kernel.org/torvalds/c/7e8a6304d541) | [fs] | /proc/meminfo: add percpu populated pages count |  | generic code, tag [fs] | 3.10.0-1106 |
| CANDIDATE | 4.19 | [`94dbb63117e8`](https://git.kernel.org/torvalds/c/94dbb63117e8) | [fs] | ext4, dax: add ext4_bmap to ext4_dax_aops |  | generic code, tag [fs] | 3.10.0-1027 |
| CANDIDATE | 4.19 | [`cce6c9f7e602`](https://git.kernel.org/torvalds/c/cce6c9f7e602) | [fs] | ext4, dax: set ext4_dax_aops for dax files |  | generic code, tag [fs] | 3.10.0-1027 |
| CANDIDATE | 4.19 | [`bcd8e91f98c1`](https://git.kernel.org/torvalds/c/bcd8e91f98c1) | [fs] | ext4: avoid arithemetic overflow that can trigger a BUG |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.19 | [`4d982e25d0bd`](https://git.kernel.org/torvalds/c/4d982e25d0bd) | [fs] | ext4: avoid divide by zero fault when deleting corrupted inline directories |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.19 | [`7d95178c7701`](https://git.kernel.org/torvalds/c/7d95178c7701) | [fs] | ext4: check for NUL characters in extended attribute's name |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.19 | [`b50282f3241a`](https://git.kernel.org/torvalds/c/b50282f3241a) | [fs] | ext4: check to make sure the rename(2)'s destination is not freed |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.19 | [`b1f382178d15`](https://git.kernel.org/torvalds/c/b1f382178d15) | [fs] | ext4: Close race between direct IO and ext4_break_layouts() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-943 |
| CANDIDATE | 4.19 | [`fe18d649891d`](https://git.kernel.org/torvalds/c/fe18d649891d) | [fs] | ext4: don't mark mmp buffer head dirty |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.19 | [`f0a459dec549`](https://git.kernel.org/torvalds/c/f0a459dec549) | [fs] | ext4: fix online resize's handling of a too-small final block group |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.19 | [`5f8c10936fab`](https://git.kernel.org/torvalds/c/5f8c10936fab) | [fs] | ext4: fix online resizing for bigalloc file systems with a 1k block size |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.19 | [`430657b6be89`](https://git.kernel.org/torvalds/c/430657b6be89) | [fs] | ext4: handle layout changes to pinned DAX mappings |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-943 |
| CANDIDATE | 4.19 | [`4274f516d4bc`](https://git.kernel.org/torvalds/c/4274f516d4bc) | [fs] | ext4: recalucate superblock checksum after updating free blocks/inodes |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.19 | [`f39b3f45dbcb`](https://git.kernel.org/torvalds/c/f39b3f45dbcb) | [fs] | ext4: reset error code in ext4_find_entry in fallback |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.19 | [`d7782145e1ad`](https://git.kernel.org/torvalds/c/d7782145e1ad) | [fs] | filesystem-dax: Fix dax_layout_busy_page() livelock |  | generic code, tag [fs] | 3.10.0-1135 |
| CANDIDATE | 4.19 | [`c2a7d2a11552`](https://git.kernel.org/torvalds/c/c2a7d2a11552) | [fs] | filesystem-dax: Introduce dax_lock_mapping_entry() |  | generic code, tag [fs] | 3.10.0-1077 |
| CANDIDATE | 4.19 | [`73449daf8f0d`](https://git.kernel.org/torvalds/c/73449daf8f0d) | [fs] | filesystem-dax: Set page->index |  | generic code, tag [fs] | 3.10.0-1077 |
| CANDIDATE | 4.19 | [`a61246c96195`](https://git.kernel.org/torvalds/c/a61246c96195) | [fs] | Fix error code in nfs_lookup_verify_inode() |  | generic code, tag [fs] | 3.10.0-1113 |
| CANDIDATE | 4.19 | [`a6d639da63ae`](https://git.kernel.org/torvalds/c/a6d639da63ae) | [fs] | fs: factor out a __generic_write_end helper |  | generic code, tag [fs] | 3.10.0-974 |
| CANDIDATE | 4.19 | [`9bdda4e9cf2d`](https://git.kernel.org/torvalds/c/9bdda4e9cf2d) | [fs] | fsnotify: fix ignore mask logic in fsnotify() |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 4.19 | [`36f10f55ff1d`](https://git.kernel.org/torvalds/c/36f10f55ff1d) | [fs] | fsnotify: let connector point to an abstract object |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 4.19 | [`b812a9f58963`](https://git.kernel.org/torvalds/c/b812a9f58963) | [fs] | fsnotify: pass connp and object type to fsnotify_add_mark() |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 4.19 | [`9b6e543450dc`](https://git.kernel.org/torvalds/c/9b6e543450dc) | [fs] | fsnotify: use typedef fsnotify_connp_t for brevity |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 4.19 | [`109728ccc593`](https://git.kernel.org/torvalds/c/109728ccc593) | [fs] | fuse: Add missed unlock_page() to fuse_readpages_fill() |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.19 | [`a2477b0e67c5`](https://git.kernel.org/torvalds/c/a2477b0e67c5) | [fs] | fuse: Don't access pipe->buffers without pipe_lock() |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.19 | [`c2b6d621c4ff`](https://git.kernel.org/torvalds/c/c2b6d621c4ff) | [fs] | new primitive: discard_new_inode() |  | generic code, tag [fs] | 3.10.0-1041 |
| CANDIDATE | 4.19 | [`f8a00cef1720`](https://git.kernel.org/torvalds/c/f8a00cef1720) | [fs] | proc: restrict kernel stack dumps to root | CVE-2018-17972 | CONFIG_PROC_FS=y in A37 | 3.10.0-993 |
| CANDIDATE | 4.19 | [`84fe4cc09abc`](https://git.kernel.org/torvalds/c/84fe4cc09abc) | [fs] | signal: Don't send signals to tasks that don't exist |  | generic code, tag [fs] | 3.10.0-1157 |
| CANDIDATE | 4.19 | [`e950564b97fd`](https://git.kernel.org/torvalds/c/e950564b97fd) | [fs] | vfs: don't evict uninitialized inode |  | generic code, tag [fs] | 3.10.0-1041 |
| CANDIDATE | 4.20 | [`f55adad601c6`](https://git.kernel.org/torvalds/c/f55adad601c6) | [fs] | block/bio: Do not zero user pages |  | generic code, tag [fs] | 3.10.0-1083 |
| CANDIDATE | 4.20 | [`f3587d76da05`](https://git.kernel.org/torvalds/c/f3587d76da05) | [fs] | block: Clear kernel memory before copying to user |  | generic code, tag [fs] | 3.10.0-1083 |
| CANDIDATE | 4.20 | [`cea579412212`](https://git.kernel.org/torvalds/c/cea579412212) | [fs] | ext4: add missing brelse() in set_flexbg_block_bitmap()'s error path |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.20 | [`ea0abbb64845`](https://git.kernel.org/torvalds/c/ea0abbb64845) | [fs] | ext4: add missing brelse() update_backups()'s error path |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.20 | [`feaf264ce7f8`](https://git.kernel.org/torvalds/c/feaf264ce7f8) | [fs] | ext4: avoid buffer leak in ext4_orphan_add() after prior errors |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.20 | [`4f32c38b4662`](https://git.kernel.org/torvalds/c/4f32c38b4662) | [fs] | ext4: avoid possible double brelse() in add_new_gdb() on error path |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.20 | [`9e4028935cca`](https://git.kernel.org/torvalds/c/9e4028935cca) | [fs] | ext4: avoid potential extra brelse in setup_new_flex_group_blocks() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.20 | [`de59fae0043f`](https://git.kernel.org/torvalds/c/de59fae0043f) | [fs] | ext4: fix buffer leak in __ext4_read_dirblock() on error path |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.20 | [`6bdc9977fcde`](https://git.kernel.org/torvalds/c/6bdc9977fcde) | [fs] | ext4: fix buffer leak in ext4_xattr_move_to_block() on error path |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1146 |
| CANDIDATE | 4.20 | [`f348e2241fb7`](https://git.kernel.org/torvalds/c/f348e2241fb7) | [fs] | ext4: fix missing cleanup if ext4_alloc_flex_bg_array() fails while resizing |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.20 | [`db6aee62406d`](https://git.kernel.org/torvalds/c/db6aee62406d) | [fs] | ext4: fix possible inode leak in the retry loop of ext4_resize_fs() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.20 | [`9e463084cdb2`](https://git.kernel.org/torvalds/c/9e463084cdb2) | [fs] | ext4: fix possible leak of sbi->s_group_desc_leak in error path |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.20 | [`625ef8a3acd1`](https://git.kernel.org/torvalds/c/625ef8a3acd1) | [fs] | ext4: initialize retries variable in ext4_da_write_inline_data_begin() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.20 | [`45ae932d246f`](https://git.kernel.org/torvalds/c/45ae932d246f) | [fs] | ext4: release bs.bh before re-using in ext4_xattr_block_find() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 4.20 | [`320f35b7bf8c`](https://git.kernel.org/torvalds/c/320f35b7bf8c) | [fs] | flexfiles: enforce per-mirror stateid only for v4 DSes |  | generic code, tag [fs] | 3.10.0-974 |
| CANDIDATE | 4.20 | [`bb21ce0ad227`](https://git.kernel.org/torvalds/c/bb21ce0ad227) | [fs] | flexfiles: use per-mirror specified stateid for IO |  | generic code, tag [fs] | 3.10.0-974 |
| CANDIDATE | 4.20 | [`721fb6fbfd21`](https://git.kernel.org/torvalds/c/721fb6fbfd21) | [fs] | fsnotify: Fix busy inodes during unmount |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 4.20 | [`2b30a533148a`](https://git.kernel.org/torvalds/c/2b30a533148a) | [fs] | fuse: add locking to max_background and congestion_threshold changes |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.20 | [`2e64ff154ce6`](https://git.kernel.org/torvalds/c/2e64ff154ce6) | [fs] | fuse: continue to send FUSE_RELEASEDIR when FUSE_OPEN returns ENOSYS |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.20 | [`802dc0497be2`](https://git.kernel.org/torvalds/c/802dc0497be2) | [fs] | fuse: don't need GETATTR after every READ |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-983 |
| CANDIDATE | 4.20 | [`908a572b80f6`](https://git.kernel.org/torvalds/c/908a572b80f6) | [fs] | fuse: fix blocked_waitq wakeup |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.20 | [`7fabaf303458`](https://git.kernel.org/torvalds/c/7fabaf303458) | [fs] | fuse: fix leaked notify reply |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.20 | [`9a2eb24d1a34`](https://git.kernel.org/torvalds/c/9a2eb24d1a34) | [fs] | fuse: only invalidate atime in direct read |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1041 |
| CANDIDATE | 4.20 | [`2a23f2b8adbe`](https://git.kernel.org/torvalds/c/2a23f2b8adbe) | [fs] | fuse: use READ_ONCE on congestion_threshold and max_background |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 4.20 | [`1e9c75fb9c47`](https://git.kernel.org/torvalds/c/1e9c75fb9c47) | [fs] | mnt: fix __detach_mounts infinite loop |  | generic code, tag [fs] | 3.10.0-1032 |
| CANDIDATE | 4.20 | [`9c8e0a1b6835`](https://git.kernel.org/torvalds/c/9c8e0a1b6835) | [fs] | mount: Prevent MNT_DETACH from disconnecting locked mounts |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | 4.20 | [`44f411c353bf`](https://git.kernel.org/torvalds/c/44f411c353bf) | [fs] | nfsv4.x: fix lock recovery during delegation recall |  | generic code, tag [fs] | 3.10.0-974 |
| CANDIDATE | 4.20 | [`ea5751ccd665`](https://git.kernel.org/torvalds/c/ea5751ccd665) | [fs] | proc/sysctl: don't return ENOMEM on lookup when a table is unregistering |  | CONFIG_PROC_FS=y in A37 | 3.10.0-1103 |
| CANDIDATE | 4.20 | [`cf089611f4c4`](https://git.kernel.org/torvalds/c/cf089611f4c4) | [fs] | proc/vmcore: Fix i386 build error of missing copy_oldmem_page_encrypted() |  | CONFIG_PROC_FS=y in A37 | 3.10.0-1058 |
| CANDIDATE | 5.0 | [`04906b2f542c`](https://git.kernel.org/torvalds/c/04906b2f542c) | [fs] | blockdev: Fix livelocks on loop device |  | generic code, tag [fs] | 3.10.0-1037 |
| CANDIDATE | 5.0 | [`8b9433eb4de3`](https://git.kernel.org/torvalds/c/8b9433eb4de3) | [fs] | direct-io: allow direct writes to empty inodes |  | generic code, tag [fs] | 3.10.0-1127.5 |
| CANDIDATE | 5.0 | [`1413d9af241c`](https://git.kernel.org/torvalds/c/1413d9af241c) | [fs] | documentation: Fix grammatical error in sysctl/fs.txt & clarify negative dentry |  | generic code, tag [fs] | 3.10.0-1027 |
| CANDIDATE | 5.0 | [`e86807862e68`](https://git.kernel.org/torvalds/c/e86807862e68) | [fs] | ext4: avoid kernel warning when writing the superblock to a dead device |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 5.0 | [`61157b24e60f`](https://git.kernel.org/torvalds/c/61157b24e60f) | [fs] | ext4: fix possible use after free in ext4_quota_enable |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 5.0 | [`132d00becb31`](https://git.kernel.org/torvalds/c/132d00becb31) | [fs] | ext4: missing unlock/put_page() in ext4_try_to_write_inline_data() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1027 |
| CANDIDATE | 5.0 | [`9509941e9c53`](https://git.kernel.org/torvalds/c/9509941e9c53) | [fs] | fuse: call pipe_buf_release() under pipe lock |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 5.0 | [`a2ebba824106`](https://git.kernel.org/torvalds/c/a2ebba824106) | [fs] | fuse: decrement NR_WRITEBACK_TEMP on the right page |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 5.0 | [`97e1532ef81a`](https://git.kernel.org/torvalds/c/97e1532ef81a) | [fs] | fuse: handle zero sized retrieve correctly |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 5.1 | [`d64264d6218e`](https://git.kernel.org/torvalds/c/d64264d6218e) | [fs] | ext4: add missing brelse() in add_new_gdb_meta_bg() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1094 |
| CANDIDATE | 5.1 | [`d64264d6218e`](https://git.kernel.org/torvalds/c/d64264d6218e) | [fs] | ext4: add missing brelse() in add_new_gdb_meta_bg() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1094 |
| CANDIDATE | 5.1 | [`1dc1097ff60e`](https://git.kernel.org/torvalds/c/1dc1097ff60e) | [fs] | ext4: avoid panic during forced reboot |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1094 |
| CANDIDATE | 5.1 | [`674a2b27234d`](https://git.kernel.org/torvalds/c/674a2b27234d) | [fs] | ext4: brelse all indirect buffer in ext4_ind_remove_space() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1094 |
| CANDIDATE | 5.1 | [`5e86bdda4153`](https://git.kernel.org/torvalds/c/5e86bdda4153) | [fs] | ext4: cleanup bh release code in ext4_ind_remove_space() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1094 |
| CANDIDATE | 5.1 | [`f96c3ac8dfc2`](https://git.kernel.org/torvalds/c/f96c3ac8dfc2) | [fs] | ext4: fix crash during online resizing |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1037 |
| CANDIDATE | 5.1 | [`372a03e01853`](https://git.kernel.org/torvalds/c/372a03e01853) | [fs] | ext4: Fix data corruption caused by unaligned direct AIO |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1031 |
| CANDIDATE | 5.1 | [`fa30dde38aa8`](https://git.kernel.org/torvalds/c/fa30dde38aa8) | [fs] | ext4: fix NULL pointer dereference while journal is aborted |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1094 |
| CANDIDATE | 5.1 | [`18915b5873f0`](https://git.kernel.org/torvalds/c/18915b5873f0) | [fs] | ext4: prohibit fstrim in norecovery mode |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1094 |
| CANDIDATE | 5.1 | [`6c7328400e04`](https://git.kernel.org/torvalds/c/6c7328400e04) | [fs] | ext4: report real fs size after failed resize |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1094 |
| CANDIDATE | 5.1 | [`89189557b47b`](https://git.kernel.org/torvalds/c/89189557b47b) | [fs] | fs/proc/proc_sysctl.c: Fix a NULL pointer dereference | CVE-2019-20054 | CONFIG_PROC_FS=y in A37 | 3.10.0-1126.1 |
| CANDIDATE | 5.1 | [`23da9588037e`](https://git.kernel.org/torvalds/c/23da9588037e) | [fs] | fs/proc/proc_sysctl.c: fix NULL pointer dereference in put_links | CVE-2019-20054 | CONFIG_PROC_FS=y in A37 | 3.10.0-1126.1 |
| CANDIDATE | 5.1 | [`dce30ca9e3b6`](https://git.kernel.org/torvalds/c/dce30ca9e3b6) | [fs] | fs: fix guard_bio_eod to check for real EOD errors |  | generic code, tag [fs] | 3.10.0-1015 |
| CANDIDATE | 5.1 | [`7f305ca1928d`](https://git.kernel.org/torvalds/c/7f305ca1928d) | [fs] | fuse: clean up fuse_writepage_in_flight() |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 5.1 | [`2fe93bd43264`](https://git.kernel.org/torvalds/c/2fe93bd43264) | [fs] | fuse: extract fuse_find_writeback() helper |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 5.1 | [`e2653bd53a98`](https://git.kernel.org/torvalds/c/e2653bd53a98) | [fs] | fuse: fix leaked aux requests |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 5.1 | [`419234d5958b`](https://git.kernel.org/torvalds/c/419234d5958b) | [fs] | fuse: only reuse auxiliary request in fuse_writepage_in_flight() |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1032 |
| CANDIDATE | 5.1 | [`53cf97845732`](https://git.kernel.org/torvalds/c/53cf97845732) | [fs] | jbd2: fix deadlock while checkpoint thread waits commit thread to finish |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1094 |
| CANDIDATE | 5.1 | [`6e876c3dd205`](https://git.kernel.org/torvalds/c/6e876c3dd205) | [fs] | jbd2: fix invalid descriptor block checksum |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1094 |
| CANDIDATE | 5.1 | [`c2da3f1b7111`](https://git.kernel.org/torvalds/c/c2da3f1b7111) | [fs] | proc/stat: Make the interrupt statistics more efficient |  | CONFIG_PROC_FS=y in A37 | 3.10.0-1009 |
| CANDIDATE | 5.2 | [`2c1d0e3631e5`](https://git.kernel.org/torvalds/c/2c1d0e3631e5) | [fs] | ext4: avoid panic during forced reboot due to aborted journal |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1094 |
| CANDIDATE | 5.2 | [`ee0ed02ca93e`](https://git.kernel.org/torvalds/c/ee0ed02ca93e) | [fs] | ext4: do not delete unlinked inode from orphan list on failed truncate |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1094 |
| CANDIDATE | 5.2 | [`57a0da28ced8`](https://git.kernel.org/torvalds/c/57a0da28ced8) | [fs] | ext4: fix data corruption caused by overlapping unaligned and aligned IO |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1094 |
| CANDIDATE | 5.2 | [`82a25b027ca4`](https://git.kernel.org/torvalds/c/82a25b027ca4) | [fs] | ext4: wait for outstanding dio during truncate in nojournal mode |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1094 |
| CANDIDATE | 5.2 | [`26ddb1f4fd88`](https://git.kernel.org/torvalds/c/26ddb1f4fd88) | [fs] | fs: Turn __generic_write_end into a void function |  | generic code, tag [fs] | 3.10.0-1063 |
| CANDIDATE | 5.2 | [`742b06b5628f`](https://git.kernel.org/torvalds/c/742b06b5628f) | [fs] | jbd2: check superblock mapped prior to committing |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1094 |
| CANDIDATE | 5.2 | [`141731d15d6e`](https://git.kernel.org/torvalds/c/141731d15d6e) | [fs] | revert "lockd: Show pid of lockd for remote locks" |  | generic code, tag [fs] | 3.10.0-1057 |
| CANDIDATE | 5.3 | [`5ec27ec735ba`](https://git.kernel.org/torvalds/c/5ec27ec735ba) | [fs] | fs/proc/proc_sysctl.c: fix the default values of i_uid/i_gid on /proc/sys inodes |  | CONFIG_PROC_FS=y in A37 | 3.10.0-1089 |
| CANDIDATE | 5.3 | [`8af54f291e5c`](https://git.kernel.org/torvalds/c/8af54f291e5c) | [fs] | fs: fold __generic_write_end back into generic_write_end |  | generic code, tag [fs] | 3.10.0-1063 |
| CANDIDATE | 5.3 | [`46d0b24c5ee1`](https://git.kernel.org/torvalds/c/46d0b24c5ee1) | [fs] | userfaultfd_release: always remove uffd flags and clear vm_userfaultfd_ctx |  | generic code, tag [fs] | 3.10.0-1091 |
| CANDIDATE | 5.3 | [`c6c405336bd3`](https://git.kernel.org/torvalds/c/c6c405336bd3) | [fs] | vmcore: Add a kernel parameter novmcoredd |  | generic code, tag [fs] | 3.10.0-1054 |
| CANDIDATE | 5.4 | [`d4f4de5e5ef8`](https://git.kernel.org/torvalds/c/d4f4de5e5ef8) | [fs] | Fix the locking in dcache_readdir() and friends |  | generic code, tag [fs] | 3.10.0-1115 |
| CANDIDATE | 5.4 | [`cc3a7bfe62b9`](https://git.kernel.org/torvalds/c/cc3a7bfe62b9) | [fs] | vfs: Fix EOVERFLOW testing in put_compat_statfs64 |  | generic code, tag [fs] | 3.10.0-1109 |
| CANDIDATE | 5.5 | [`1edc8eb2e931`](https://git.kernel.org/torvalds/c/1edc8eb2e931) (loose) | [fs] | call fsnotify_sb_delete after evict_inodes |  | generic code, tag [fs] | 3.10.0-1142 |
| CANDIDATE | 5.5 | [`4ea99936a163`](https://git.kernel.org/torvalds/c/4ea99936a163) | [fs] | ext4: add more paranoia checking in ext4_expand_extra_isize handling | CVE-2019-19767 | CONFIG_EXT4_FS=y in A37 | 3.10.0-1145 |
| CANDIDATE | 5.5 | [`9803387c55f7`](https://git.kernel.org/torvalds/c/9803387c55f7) | [fs] | ext4: validate the debug_want_extra_isize mount option at parse time | CVE-2019-19767 | CONFIG_EXT4_FS=y in A37 | 3.10.0-1145 |
| CANDIDATE | 5.5 | [`c7df4a1ecb85`](https://git.kernel.org/torvalds/c/c7df4a1ecb85) | [fs] | ext4: work around deleting a file with i_nlink == 0 safely |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1128 |
| CANDIDATE | 5.5 | [`04646aebd30b`](https://git.kernel.org/torvalds/c/04646aebd30b) | [fs] | fs: avoid softlockups in s_inodes iterators |  | generic code, tag [fs] | 3.10.0-1143 |
| CANDIDATE | 5.5 | [`add3efdd78b8`](https://git.kernel.org/torvalds/c/add3efdd78b8) | [fs] | jbd2: Fix possible overflow in jbd2_log_space_left() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1145 |
| CANDIDATE | 5.6 | [`51f57b01e4a3`](https://git.kernel.org/torvalds/c/51f57b01e4a3) | [fs] | ext4, jbd2: ensure panic when aborting with zero errno |  | generic code, tag [fs] | 3.10.0-1146 |
| CANDIDATE | 5.6 | [`4f97a68192bd`](https://git.kernel.org/torvalds/c/4f97a68192bd) | [fs] | ext4: fix support for inode sizes > 1024 bytes | CVE-2019-19767 | CONFIG_EXT4_FS=y in A37 | 3.10.0-1145 |
| CANDIDATE | 5.6 | [`a09decff5c32`](https://git.kernel.org/torvalds/c/a09decff5c32) | [fs] | jbd2: clear JBD2_ABORT flag before journal_reset to update log tail info when load journal |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1146 |
| CANDIDATE | 5.6 | [`d0a186e0d3e7`](https://git.kernel.org/torvalds/c/d0a186e0d3e7) | [fs] | jbd2: switch to use jbd2_journal_abort() when failed to submit the commit record |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1146 |
| CANDIDATE | 5.7 | [`de6a78b601c5`](https://git.kernel.org/torvalds/c/de6a78b601c5) | [fs] | block: Prevent hung_check firing during long sync IO |  | generic code, tag [fs] | 3.10.0-1145 |
| CANDIDATE | 5.7 | [`801674f34ecf`](https://git.kernel.org/torvalds/c/801674f34ecf) | [fs] | ext4: do not zeroout extents beyond i_disksize |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1142 |
| CANDIDATE | 5.7 | [`1d605416fb71`](https://git.kernel.org/torvalds/c/1d605416fb71) | [fs] | fs/binfmt_elf.c: allocate initialized memory in fill_thread_core_info() | CVE-2020-10732 | generic code, tag [fs] | 3.10.0-1151 |
| CANDIDATE | 5.7 | [`d1e7fd6462ca`](https://git.kernel.org/torvalds/c/d1e7fd6462ca) | [fs] | signal: Extend exec_id to 64bits | CVE-2020-12826 | generic code, tag [fs] | 3.10.0-1149 |
| CANDIDATE | 5.8 | [`2d3a8e2dedde`](https://git.kernel.org/torvalds/c/2d3a8e2dedde) | [fs] | block: Fix use-after-free in blkdev_get() | CVE-2020-15436 | generic code, tag [fs] | 3.10.0-1160.13.1 |
| CANDIDATE | — | — | [fs] | Add helper kstrtobool_from_user |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | — | — | [fs] | Add may_detach_mounts sysctl to hide new behavior |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | — | — | [fs] | Add parsing for new mount option controlling persistent handles |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | — | — | [fs] | aio, memory-hotplug: Fix confliction when migrating and accessing ring pages |  | generic code, tag [fs] | 3.10.0-108 |
| CANDIDATE | — | — | [fs] | aio: Add support to aio ring pages migration |  | CONFIG_AIO=y in A37 | 3.10.0-72 |
| CANDIDATE | — | — | [fs] | aio: fix inconsistent ring state |  | CONFIG_AIO=y in A37 | 3.10.0-1152 |
| CANDIDATE | — | — | [fs] | aio: fix plug memory disclosure and fix reqs_active accounting backport | CVE-2014-0206 | CONFIG_AIO=y in A37 | 3.10.0-127 |
| CANDIDATE | — | — | [fs] | aio: fix race between aio event completion and reaping |  | CONFIG_AIO=y in A37 | 3.10.0-217 |
| CANDIDATE | — | — | [fs] | aio: get rid of unnecessary locking in aio_read_events_ring |  | CONFIG_AIO=y in A37 | 3.10.0-1074 |
| CANDIDATE | — | — | [fs] | aio: plug memory disclosure and fix reqs_active accounting | CVE-2014-0206 | CONFIG_AIO=y in A37 | 3.10.0-126 |
| CANDIDATE | — | — | [fs] | Allow do_tmpfile set I_LINKABLE inode state |  | generic code, tag [fs] | 3.10.0-799 |
| CANDIDATE | — | — | [fs] | anon_inode: Introduce a new lib function anon_inode_getfile_private() |  | generic code, tag [fs] | 3.10.0-72 |
| CANDIDATE | — | — | [fs] | assorted conversions to p[dD] |  | generic code, tag [fs] | 3.10.0-621 |
| CANDIDATE | — | — | [fs] | Backport iov_iter_truncate() |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | — | — | [fs] | binfmt_elf.c: fix bug in loading of PIE binaries |  | generic code, tag [fs] | 3.10.0-589 |
| CANDIDATE | — | — | [fs] | binfmt_elf.c:load_elf_binary(): return -EINVAL on zero-length mappings |  | generic code, tag [fs] | 3.10.0-589 |
| CANDIDATE | — | — | [fs] | binfmt_misc.c: do not allow offset overflow |  | generic code, tag [fs] | 3.10.0-1063 |
| CANDIDATE | — | — | [fs] | bio-integrity: do not assume bio_integrity_pool exists if bioset exists |  | generic code, tag [fs] | 3.10.0-298 |
| CANDIDATE | — | — | [fs] | bio: fix __bio_map_user_iov() |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | — | — | [fs] | bio: Need to free integrity payload if the split bio gets memory by itself |  | generic code, tag [fs] | 3.10.0-448 |
| CANDIDATE | — | — | [fs] | block: fix integrity verificaton on READ bio |  | generic code, tag [fs] | 3.10.0-1034 |
| CANDIDATE | — | — | [fs] | block_dev.c: Remove WARN_ON() when inode writeback fails |  | generic code, tag [fs] | 3.10.0-498 |
| CANDIDATE | — | — | [fs] | block_dev.c: return the right error in thaw_bdev() |  | generic code, tag [fs] | 3.10.0-680 |
| CANDIDATE | — | — | [fs] | block_dev.c: skip rw_page if bdev has integrity |  | generic code, tag [fs] | 3.10.0-427 |
| CANDIDATE | — | — | [fs] | block_dev: add bdev_read_page() and bdev_write_page() |  | generic code, tag [fs] | 3.10.0-427 |
| CANDIDATE | — | — | [fs] | blocklayout: Mark the NFSv4 Block Layout Driver layout driver as a tech preview |  | generic code, tag [fs] | 3.10.0-313 |
| CANDIDATE | — | — | [fs] | blocklayout: put deviceid node after releasing bl_ext_lock |  | generic code, tag [fs] | 3.10.0-543 |
| CANDIDATE | — | — | [fs] | buffer: __set_page_dirty uses spin_lock_irqsave instead of spin_lock_irq |  | generic code, tag [fs] | 3.10.0-90 |
| CANDIDATE | — | — | [fs] | buffer: increase the buffer-head per-CPU LRU size |  | generic code, tag [fs] | 3.10.0-199 |
| CANDIDATE | — | — | [fs] | buffer: remove block_write_full_page_endio() |  | generic code, tag [fs] | 3.10.0-427 |
| CANDIDATE | — | — | [fs] | cache: make cache flushing more reliable |  | generic code, tag [fs] | 3.10.0-337 |
| CANDIDATE | — | — | [fs] | capabilities: Use d_find_any_alias() instead of d_find_alias() |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | — | — | [fs] | clean up page array when uncached write send fails |  | generic code, tag [fs] | 3.10.0-108 |
| CANDIDATE | — | — | [fs] | compat: fix lookup_dcookie() parameter handling |  | generic code, tag [fs] | 3.10.0-92 |
| CANDIDATE | — | — | [fs] | compat: fix parameter handling for compat readv/writev syscalls |  | generic code, tag [fs] | 3.10.0-92 |
| CANDIDATE | — | — | [fs] | config: enable dlm for ppc64le |  | generic code, tag [fs] | 3.10.0-657 |
| CANDIDATE | — | — | [fs] | configs: enable ceph filesystem ACL support |  | generic code, tag [fs] | 3.10.0-448 |
| CANDIDATE | — | — | [fs] | configs: enable gfs2 for ppc64le |  | generic code, tag [fs] | 3.10.0-657 |
| CANDIDATE | — | — | [fs] | copy_file_range should return ENOSYS not EOPNOTSUPP |  | generic code, tag [fs] | 3.10.0-1148 |
| CANDIDATE | — | — | [fs] | coredump: add i/I in core_pattern to report the tid of the crashed thread |  | CONFIG_COREDUMP=y in A37 | 3.10.0-298 |
| CANDIDATE | — | — | [fs] | coredump: add new P variable in core_pattern |  | CONFIG_COREDUMP=y in A37 | 3.10.0-228 |
| CANDIDATE | — | — | [fs] | dax, ext2: replace ext2_clear_xip_target with dax_clear_blocks |  | generic code, tag [fs] | 3.10.0-427 |
| CANDIDATE | — | — | [fs] | dax, ext2: replace the XIP page fault handler with the DAX page fault handler |  | generic code, tag [fs] | 3.10.0-427 |
| CANDIDATE | — | — | [fs] | dax, ext2: replace XIP read and write with DAX I/O |  | generic code, tag [fs] | 3.10.0-427 |
| CANDIDATE | — | — | [fs] | dax, ext2: replace xip_truncate_page with dax_truncate_page |  | generic code, tag [fs] | 3.10.0-427 |
| CANDIDATE | — | — | [fs] | dax, libnvdimm: remove wb_cache_pmem() indirection |  | generic code, tag [fs] | 3.10.0-868 |
| CANDIDATE | — | — | [fs] | dax.c: fix typo in #endif comment |  | generic code, tag [fs] | 3.10.0-469 |
| CANDIDATE | — | — | [fs] | dcache.c: add cond_resched() in shrink_dentry_list() |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | — | — | [fs] | dcache.c: avoid soft-lockup in dput() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | — | — | [fs] | dcache: __dentry_path() fixes |  | generic code, tag [fs] | 3.10.0-125 |
| CANDIDATE | — | — | [fs] | dcache: Add negative dentries to LRU tail |  | generic code, tag [fs] | 3.10.0-1027 |
| CANDIDATE | — | — | [fs] | dcache: d_walk() might skip too much | CVE-2014-8559 | generic code, tag [fs] | 3.10.0-305 |
| CANDIDATE | — | — | [fs] | dcache: d_walk/dentry_free race |  | generic code, tag [fs] | 3.10.0-448 |
| CANDIDATE | — | — | [fs] | dcache: deal with deadlock in d_walk() | CVE-2014-8559 | generic code, tag [fs] | 3.10.0-305 |
| CANDIDATE | — | — | [fs] | dcache: fix races between __d_instantiate() and checks of dentry flags |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | — | — | [fs] | dcache: fold try_to_ascend() into the sole remaining caller | CVE-2014-8559 | generic code, tag [fs] | 3.10.0-305 |
| CANDIDATE | — | — | [fs] | dcache: make prepend_name() work correctly when called with negative *buflen |  | generic code, tag [fs] | 3.10.0-125 |
| CANDIDATE | — | — | [fs] | dcache: missing EXPORT_SYMBOL(simple_dname) |  | generic code, tag [fs] | 3.10.0-164 |
| CANDIDATE | — | — | [fs] | dcache: move d_rcu from overlapping d_child to overlapping d_alias | CVE-2014-8559 | generic code, tag [fs] | 3.10.0-305 |
| CANDIDATE | — | — | [fs] | dcache: prepend_path() needs to reinitialize dentry/vfsmount/mnt on restarts |  | generic code, tag [fs] | 3.10.0-125 |
| CANDIDATE | — | — | [fs] | dcache: Track & report number of negative dentries |  | generic code, tag [fs] | 3.10.0-1027 |
| CANDIDATE | — | — | [fs] | dcache_{readdir, dir_lseek}(): don't bother with nested ->d_lock |  | generic code, tag [fs] | 3.10.0-1115 |
| CANDIDATE | — | — | [fs] | Delete cifs specific helper functions for iter operations |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | — | — | [fs] | direct-io: only inc_dec inode->i_dio_count for file systems |  | generic code, tag [fs] | 3.10.0-10 |
| CANDIDATE | — | — | [fs] | Display persistenthandles in /proc/mounts for SMB3 shares if enabled |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | — | — | [fs] | Do not defer completion for fs without FS_HAS_DIO_IODONE2 |  | generic code, tag [fs] | 3.10.0-808 |
| CANDIDATE | — | — | [fs] | Do not fall back to SMBWriteX in set_file_size error cases |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | — | — | [fs] | don't bother with {get, put}_write_access() on non-regular files |  | generic code, tag [fs] | 3.10.0-1125.1 |
| CANDIDATE | — | — | [fs] | don't call file_pos_write() if vfs_read/write(, v) fails |  | generic code, tag [fs] | 3.10.0-837 |
| CANDIDATE | — | — | [fs] | Don't warn if both ->rename() and ->rename2() iops are defined |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | — | — | [fs] | drop_caches.c: avoid softlockups in drop_pagecache_sb() |  | generic code, tag [fs] | 3.10.0-1142 |
| CANDIDATE | — | — | [fs] | eliminate BUG() call when there's an unexpected lock on file close |  | generic code, tag [fs] | 3.10.0-185 |
| CANDIDATE | — | — | [fs] | Enable checking for continuous availability and persistent handle support |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | — | — | [fs] | Enable CONFIG_PROC_VMCORE_DEVICE_DUMP by default |  | generic code, tag [fs] | 3.10.0-999 |
| CANDIDATE | — | — | [fs] | Enable fallocate -z support for SMB3 mounts |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | — | — | [fs] | eventpoll: do not use sigprocmask() |  | CONFIG_EPOLL=y in A37 | 3.10.0-103 |
| CANDIDATE | — | — | [fs] | eventpoll: switch epoll_ctl() to fdget |  | CONFIG_EPOLL=y in A37 | 3.10.0-103 |
| CANDIDATE | — | — | [fs] | exec.c: Add missing 'audit_bprm()' call in 'exec_binprm()' |  | generic code, tag [fs] | 3.10.0-943 |
| CANDIDATE | — | — | [fs] | exec: account for argv/envp pointers | CVE-2018-14634 | generic code, tag [fs] | 3.10.0-954 |
| CANDIDATE | — | — | [fs] | exec: de_thread(), use change_pid() rather than detach_pid/attach_pid |  | generic code, tag [fs] | 3.10.0-108 |
| CANDIDATE | — | — | [fs] | exec: de_thread: mt-exec should update ->real_start_time |  | generic code, tag [fs] | 3.10.0-506 |
| CANDIDATE | — | — | [fs] | exec: Limit arg stack to at most 75 of _STK_LIM | CVE-2018-14634 | generic code, tag [fs] | 3.10.0-954 |
| CANDIDATE | — | — | [fs] | exec: take i_mutex during prepare_binprm for set[ug]id executables | CVE-2015-3339 | generic code, tag [fs] | 3.10.0-260 |
| CANDIDATE | — | — | [fs] | ext4: Add new flag(FALLOC_FL_COLLAPSE_RANGE) for fallocate |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | — | — | [fs] | ext4: add remap_file_pages support for dax mounts |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-474 |
| CANDIDATE | — | — | [fs] | ext4: Define EFSCORRUPTED error value |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-611 |
| CANDIDATE | — | — | [fs] | ext4: Disable punch hole on non-extent mapped files |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-97 |
| CANDIDATE | — | — | [fs] | ext4: disallow all fallocate operation on active swapfile |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | — | — | [fs] | ext4: find the group descriptors on a 1k-block bigalloc, meta_bg filesystem |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | — | — | [fs] | ext4: fix missing return values checks in ext4_cross_rename |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1146 |
| CANDIDATE | — | — | [fs] | ext4: fix off-by-in loop termination in ext4_find_unwritten_pgoff() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-735 |
| CANDIDATE | — | — | [fs] | ext4: fix overwrite race condition | CVE-2014-8086 | CONFIG_EXT4_FS=y in A37 | 3.10.0-227 |
| CANDIDATE | — | — | [fs] | ext4: Fix POSIX ACL leak in ext4_xattr_set_acl |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1146 |
| CANDIDATE | — | — | [fs] | ext4: Fix race when checking i_size on direct i/o read |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1148 |
| CANDIDATE | — | — | [fs] | ext4: in ext4_seek_{hole, data}, return -ENXIO for negative offsets |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-735 |
| CANDIDATE | — | — | [fs] | ext4: move falloc collapse range check into the filesystem methods |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | — | — | [fs] | ext4: move i_size, i_disksize update routines to helper function |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | — | — | [fs] | ext4: pass allocation_request struct to ext4_(alloc, splice)_branch |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-715 |
| CANDIDATE | — | — | [fs] | ext4: Remove unwanted ext4_bread() from ext4_quota_write() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-1151 |
| CANDIDATE | — | — | [fs] | ext4: revert Disable punch hole on non-extent mapped files |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | — | — | [fs] | ext4: set S_IOPS_WRAPPER flag in ext4_mkdir() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-460 |
| CANDIDATE | — | — | [fs] | ext4: use pd printk specificer |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-199 |
| CANDIDATE | — | — | [fs] | ext4: use sbi in ext4_orphan_[add\|del]() |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-200 |
| CANDIDATE | — | — | [fs] | file.c: __const_max is actually __const_min |  | generic code, tag [fs] | 3.10.0-474 |
| CANDIDATE | — | — | [fs] | file.c: don't acquire files->file_lock in fd_install() |  | generic code, tag [fs] | 3.10.0-717 |
| CANDIDATE | — | — | [fs] | file_table: get rid of s_files and files_lock |  | generic code, tag [fs] | 3.10.0-206 |
| CANDIDATE | — | — | [fs] | Fix incorrect hex vs. decimal in some debug print statements |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | — | — | [fs] | fix mount failure with broken pathnames when smb3 mount with mapchars option |  | generic code, tag [fs] | 3.10.0-279 |
| CANDIDATE | — | — | [fs] | fix null pointer check |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | — | — | [fs] | Fix oops when creating symlinks on smb3 |  | generic code, tag [fs] | 3.10.0-212 |
| CANDIDATE | — | — | [fs] | Fix sec=krb5 on smb3 mounts |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | — | — | [fs] | Fix setting time before epoch (negative time values) |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | — | — | [fs] | fix the performance of reading /proc/mounts and friends |  | generic code, tag [fs] | 3.10.0-108 |
| CANDIDATE | — | — | [fs] | flexfilelayout: Mark the Flexfile layout driver as a tech preview |  | generic code, tag [fs] | 3.10.0-313 |
| CANDIDATE | — | — | [fs] | flexfiles: delete deviceid, don't mark inactive |  | generic code, tag [fs] | 3.10.0-727 |
| CANDIDATE | — | — | [fs] | flexfiles: Don't tie up all the rpciod threads in resends |  | generic code, tag [fs] | 3.10.0-1127.1 |
| CANDIDATE | — | — | [fs] | flexfiles: Fix ff_layout_add_ds_error_locked() |  | generic code, tag [fs] | 3.10.0-727 |
| CANDIDATE | — | — | [fs] | flexfiles: fix leak of nfs4_ff_ds_version arrays |  | generic code, tag [fs] | 3.10.0-738 |
| CANDIDATE | — | — | [fs] | flexfiles: Fix up the ff_layout_write_pagelist failure path |  | generic code, tag [fs] | 3.10.0-738 |
| CANDIDATE | — | — | [fs] | flexfiles: If the layout is invalid, it must be updated before retrying |  | generic code, tag [fs] | 3.10.0-727 |
| CANDIDATE | — | — | [fs] | flexfiles: never nfs4_mark_deviceid_unavailable |  | generic code, tag [fs] | 3.10.0-727 |
| CANDIDATE | — | — | [fs] | fs-cache: use __seq_open_private() |  | generic code, tag [fs] | 3.10.0-264 |
| CANDIDATE | — | — | [fs] | fs-writeback: make wb_do_writeback() as static |  | generic code, tag [fs] | 3.10.0-65 |
| CANDIDATE | — | — | [fs] | fs/bio-integrity: don't enable integrity for data-less bio |  | generic code, tag [fs] | 3.10.0-1146 |
| CANDIDATE | — | — | [fs] | fs/dcache: Add sysctl parameter negative-dentry-limit as a soft limit on negative dentries |  | generic code, tag [fs] | 3.10.0-1115 |
| CANDIDATE | — | — | [fs] | fs/dcache: Don't set DCACHE_REFERENCED on dentries when first put into LRU |  | generic code, tag [fs] | 3.10.0-1115 |
| CANDIDATE | — | — | [fs] | fs/dcache: Enable automatic reclaim of excess negative dentries |  | generic code, tag [fs] | 3.10.0-1115 |
| CANDIDATE | — | — | [fs] | fs/dcache: Move percpu count updates out of dcache_lru_lock |  | generic code, tag [fs] | 3.10.0-1115 |
| CANDIDATE | — | — | [fs] | fs/xfs: Use pS printk format for direct addresses |  | generic code, tag [fs] | 3.10.0-1004 |
| CANDIDATE | — | — | [fs] | fs: do not fall back to splice in copy_file_range |  | generic code, tag [fs] | 3.10.0-1103 |
| CANDIDATE | — | — | [fs] | fs: initmpfs replace MS_NOUSER in initramfs |  | generic code, tag [fs] | 3.10.0-382 |
| CANDIDATE | — | — | [fs] | fs: seq_file: fallback to vmalloc allocation |  | generic code, tag [fs] | 3.10.0-203 |
| CANDIDATE | — | — | [fs] | fs: Use correct xattr length |  | generic code, tag [fs] | 3.10.0-1089 |
| CANDIDATE | — | — | [fs] | fsnotify: constify 'data' |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | — | — | [fs] | fsnotify: Remove fsnotify_set_mark_{, ignored_}mask_locked() |  | generic code, tag [fs] | 3.10.0-810 |
| CANDIDATE | — | — | [fs] | fuse: fix "do not use iocb after it may have been freed" backport |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1074 |
| CANDIDATE | — | — | [fs] | fuse: fix readdirplus dentry leak |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-5 |
| CANDIDATE | — | — | [fs] | fuse: ignore entry-timeout LOOKUP_REVAL |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-191 |
| CANDIDATE | — | — | [fs] | fuse: readdirplus change attributes once |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-5 |
| CANDIDATE | — | — | [fs] | fuse: readdirplus cleanup |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-5 |
| CANDIDATE | — | — | [fs] | fuse: readdirplus fix instantiate |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-5 |
| CANDIDATE | — | — | [fs] | fuse: readdirplus sanity checks |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-5 |
| CANDIDATE | — | — | [fs] | get rid of {lock, unlock}_rcu_walk() |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | — | — | [fs] | helpers: no_seek_end_llseek{, _size}() |  | generic code, tag [fs] | 3.10.0-446 |
| CANDIDATE | — | — | [fs] | Implement O_TMPFILE |  | generic code, tag [fs] | 3.10.0-799 |
| CANDIDATE | — | — | [fs] | Improve security, move default dialect to SMB3 from old CIFS |  | generic code, tag [fs] | 3.10.0-868 |
| CANDIDATE | — | — | [fs] | inotify: don't add consecutive overflow events to the queue |  | CONFIG_INOTIFY_USER=y in A37 | 3.10.0-308 |
| CANDIDATE | — | — | [fs] | Introduce copy_page_to_iter |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | — | — | [fs] | kabi: Adjust O_TMPFILE support to use kABI safe struct inode_operations_wrapper |  | generic code, tag [fs] | 3.10.0-799 |
| CANDIDATE | — | — | [fs] | kill anon_inode_getfile_private() |  | generic code, tag [fs] | 3.10.0-72 |
| CANDIDATE | — | — | [fs] | kill iov_iter_copy_from_user() (Partial) |  | generic code, tag [fs] | 3.10.0-279 |
| CANDIDATE | — | — | [fs] | lib: update single-char callers of strtobool()(cifs only) |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | — | — | [fs] | libfs: make simple_lookup() usable for filesystems that set ->s_d_op |  | generic code, tag [fs] | 3.10.0-28 |
| CANDIDATE | — | — | [fs] | libnvdimm, pmem: export a cache control attribute |  | generic code, tag [fs] | 3.10.0-868 |
| CANDIDATE | — | — | [fs] | lock: show locks taken by processes from another pidns |  | generic code, tag [fs] | 3.10.0-932 |
| CANDIDATE | — | — | [fs] | lock: skip lock owner pid translation in case we are in init_pid_ns |  | generic code, tag [fs] | 3.10.0-932 |
| CANDIDATE | — | — | [fs] | locks: allow filesystems to request that ->setlease be called without i_lock |  | generic code, tag [fs] | 3.10.0-1143 |
| CANDIDATE | — | — | [fs] | locks: move fasync setup into generic_add_lease |  | generic code, tag [fs] | 3.10.0-1143 |
| CANDIDATE | — | — | [fs] | locks: pass kernel struct flock to fcntl_getlk/setlk |  | generic code, tag [fs] | 3.10.0-773 |
| CANDIDATE | — | — | [fs] | locks: Remove fl_nspid and use fs-specific l_pid for remote locks |  | generic code, tag [fs] | 3.10.0-773 |
| CANDIDATE | — | — | [fs] | locks: Use allocation rather than the stack in fcntl_getlk() |  | generic code, tag [fs] | 3.10.0-773 |
| CANDIDATE | — | — | [fs] | lsm, audit, selinux: Introduce a new audit data type LSM_AUDIT_DATA_FILE |  | generic code, tag [fs] | 3.10.0-517 |
| CANDIDATE | — | — | [fs] | make fs/{namespace, super}.c forget about acct.h |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | — | — | [fs] | Minor cleanup of xattr query function |  | generic code, tag [fs] | 3.10.0-727 |
| CANDIDATE | — | — | [fs] | Missing null tcon check |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | — | — | [fs] | mm, fs: get rid of PAGE_CACHE_* and page_cache_{get, release} macros(cifs only) |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | — | — | [fs] | mm, fs: remove remaining PAGE_CACHE_* and page_cache_{get, release} usage(cifs only) |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | — | — | [fs] | mnt: Make may_detach_mounts one-way and use it in copy_mnt_ns |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | — | — | [fs] | mnt: Move the clear of MNT_LOCKED from copy_tree to its callers |  | generic code, tag [fs] | 3.10.0-371 |
| CANDIDATE | — | — | [fs] | mnt: Move unprivileged use of the mntns to tech preview |  | generic code, tag [fs] | 3.10.0-681 |
| CANDIDATE | — | — | [fs] | mnt: Take unprivileged use of the mntns out of tech preview |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | — | — | [fs] | mntns: drop namespace reference if !CAP_SYS_ADMIN |  | generic code, tag [fs] | 3.10.0-456 |
| CANDIDATE | — | — | [fs] | mntns: Remove incorrect put_mnt_ns |  | generic code, tag [fs] | 3.10.0-687 |
| CANDIDATE | — | — | [fs] | mount option sec=none not displayed properly in /proc/mounts |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | — | — | [fs] | mpage.c: fix mpage_writepage() for pages with buffers |  | generic code, tag [fs] | 3.10.0-805 |
| CANDIDATE | — | — | [fs] | mpage: factor clean_buffers() out of __mpage_writepage() |  | generic code, tag [fs] | 3.10.0-427 |
| CANDIDATE | — | — | [fs] | mpage: factor page_endio() out of mpage_end_io() |  | generic code, tag [fs] | 3.10.0-427 |
| CANDIDATE | — | — | [fs] | namei: Add missing unlocks to error paths of mountpoint_last |  | generic code, tag [fs] | 3.10.0-28 |
| CANDIDATE | — | — | [fs] | namei: create proper filename objects using getname_kernel() |  | generic code, tag [fs] | 3.10.0-230 |
| CANDIDATE | — | — | [fs] | namei: cut down the number of do_path_lookup() callers |  | generic code, tag [fs] | 3.10.0-230 |
| CANDIDATE | — | — | [fs] | namei: introduce kern_path_mountpoint() |  | generic code, tag [fs] | 3.10.0-28 |
| CANDIDATE | — | — | [fs] | namei: move d_move() up |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | — | — | [fs] | namei: rename user_path_umountat() to user_path_mountpoint_at() |  | generic code, tag [fs] | 3.10.0-28 |
| CANDIDATE | — | — | [fs] | namei: rework getname_kernel to handle up to PATH_MAX sized filenames |  | generic code, tag [fs] | 3.10.0-230 |
| CANDIDATE | — | — | [fs] | namei: simpler calling conventions for filename_mountpoint() |  | generic code, tag [fs] | 3.10.0-230 |
| CANDIDATE | — | — | [fs] | namei: take unlazy_walk() into umount_lookup_last() |  | generic code, tag [fs] | 3.10.0-28 |
| CANDIDATE | — | — | [fs] | namei: use common code for dir and non-dir |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | — | — | [fs] | namespace.c: bury long-dead define |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | — | — | [fs] | namespace.c: path_is_under can be boolean |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | — | — | [fs] | namespace: convert devname allocation to kstrdup_const |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | — | — | [fs] | namespace: mount hash table is too small |  | generic code, tag [fs] | 3.10.0-108 |
| CANDIDATE | — | — | [fs] | nfs4layouts: Remove unnecessary BUG_ON in nfsd4_layout_setlease() |  | generic code, tag [fs] | 3.10.0-313 |
| CANDIDATE | — | — | [fs] | notify: don't show f_handle if exportfs_encode_inode_fh failed |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | — | — | [fs] | notify: don't use module_init for non-modular inotify_user code |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | — | — | [fs] | notify: optimize inotify/fsnotify code for unwatched files |  | generic code, tag [fs] | 3.10.0-593 |
| CANDIDATE | — | — | [fs] | pipe: fix offset and len mismatch on pipe_iov_copy_to_user() failure |  | generic code, tag [fs] | 3.10.0-305 |
| CANDIDATE | — | — | [fs] | pipe: fix pipe corruption and iovec overrun on partial copy | CVE-2015-1805 | generic code, tag [fs] | 3.10.0-263 |
| CANDIDATE | — | — | [fs] | pipe: skip file_update_time on frozen fs |  | generic code, tag [fs] | 3.10.0-199 |
| CANDIDATE | — | — | [fs] | pnode: smarter propagate_mnt() |  | generic code, tag [fs] | 3.10.0-109 |
| CANDIDATE | — | — | [fs] | pnode: treat zero mnt_group_id-s as unequal |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | — | — | [fs] | posix acls: Remove duplicate xattr name definitions (cifs only) |  | generic code, tag [fs] | 3.10.0-616 |
| CANDIDATE | — | — | [fs] | proc/kcore.c: Add bounce buffer for ktext data |  | CONFIG_PROC_FS=y in A37 | 3.10.0-920 |
| CANDIDATE | — | — | [fs] | proc/kcore.c: Make bounce buffer global for read |  | CONFIG_PROC_FS=y in A37 | 3.10.0-920 |
| CANDIDATE | — | — | [fs] | proc/kcore.c: use probe_kernel_read() instead of memcpy() |  | CONFIG_PROC_FS=y in A37 | 3.10.0-920 |
| CANDIDATE | — | — | [fs] | proc/kcore: update physical address for kcore ram and text |  | CONFIG_PROC_FS=y in A37 | 3.10.0-655 |
| CANDIDATE | — | — | [fs] | proc/meminfo: provide estimated available memory |  | CONFIG_PROC_FS=y in A37 | 3.10.0-86 |
| CANDIDATE | — | — | [fs] | proc/page: add PageAnon check to surely detect thp |  | CONFIG_PROC_FS=y in A37 | 3.10.0-90 |
| CANDIDATE | — | — | [fs] | proc/task_mmu.c: cleanup the "tail_vma" horror in m_next() |  | CONFIG_PROC_FS=y in A37 | 3.10.0-585 |
| CANDIDATE | — | — | [fs] | proc/task_mmu.c: don't use task->mm in m_start() and show_*map() |  | CONFIG_PROC_FS=y in A37 | 3.10.0-585 |
| CANDIDATE | — | — | [fs] | proc/task_mmu.c: introduce m_next_vma() helper |  | CONFIG_PROC_FS=y in A37 | 3.10.0-585 |
| CANDIDATE | — | — | [fs] | proc/task_mmu.c: kill the suboptimal and confusing m->version logic |  | CONFIG_PROC_FS=y in A37 | 3.10.0-585 |
| CANDIDATE | — | — | [fs] | proc/task_mmu.c: reintroduce m->version logic |  | CONFIG_PROC_FS=y in A37 | 3.10.0-585 |
| CANDIDATE | — | — | [fs] | proc/task_mmu.c: shift "priv->task = NULL" from m_start() to m_stop() |  | CONFIG_PROC_FS=y in A37 | 3.10.0-585 |
| CANDIDATE | — | — | [fs] | proc/task_mmu.c: shift mm_access() from m_start() to proc_maps_open() |  | CONFIG_PROC_FS=y in A37 | 3.10.0-585 |
| CANDIDATE | — | — | [fs] | proc/task_mmu.c: simplify m_start() to make it readable |  | CONFIG_PROC_FS=y in A37 | 3.10.0-585 |
| CANDIDATE | — | — | [fs] | proc/task_mmu.c: simplify the vma_stop() logic |  | CONFIG_PROC_FS=y in A37 | 3.10.0-585 |
| CANDIDATE | — | — | [fs] | proc/task_mmu.c: unify/simplify do_maps_open() and numa_maps_open() |  | CONFIG_PROC_FS=y in A37 | 3.10.0-585 |
| CANDIDATE | — | — | [fs] | proc/task_mmu.c: update m->version in the main loop in m_start() |  | CONFIG_PROC_FS=y in A37 | 3.10.0-585 |
| CANDIDATE | — | — | [fs] | proc/task_mmu: bump kernelpagesize_kB to EOL in /proc/pid/numa_maps |  | CONFIG_PROC_FS=y in A37 | 3.10.0-239 |
| CANDIDATE | — | — | [fs] | proc/task_mmu: fix missing check during hugepage migration | CVE-2014-3940 | CONFIG_PROC_FS=y in A37 | 3.10.0-217 |
| CANDIDATE | — | — | [fs] | proc/task_mmu: show page size in /proc/<pid>/numa_maps |  | CONFIG_PROC_FS=y in A37 | 3.10.0-239 |
| CANDIDATE | — | — | [fs] | proc/uptime: uptime_proc_show() use get_monotonic_boottime() |  | CONFIG_PROC_FS=y in A37 | 3.10.0-506 |
| CANDIDATE | — | — | [fs] | proc/vmcore: allocate buffer for ELF headers on page-size alignment |  | CONFIG_PROC_FS=y in A37 | 3.10.0-24 |
| CANDIDATE | — | — | [fs] | proc/vmcore: allocate ELF note segment in the 2nd kernel vmalloc memory |  | CONFIG_PROC_FS=y in A37 | 3.10.0-24 |
| CANDIDATE | — | — | [fs] | proc/vmcore: allow user process to remap ELF note segment buffer |  | CONFIG_PROC_FS=y in A37 | 3.10.0-24 |
| CANDIDATE | — | — | [fs] | proc/vmcore: calculate vmcore file size from buffer size and total size of vmcore objects |  | CONFIG_PROC_FS=y in A37 | 3.10.0-24 |
| CANDIDATE | — | — | [fs] | proc/vmcore: clean up read_vmcore() |  | CONFIG_PROC_FS=y in A37 | 3.10.0-24 |
| CANDIDATE | — | — | [fs] | proc/vmcore: continue vmcore initialization if PT_NOTE is found empty |  | CONFIG_PROC_FS=y in A37 | 3.10.0-116 |
| CANDIDATE | — | — | [fs] | proc/vmcore: Disable mmap for s390 |  | CONFIG_PROC_FS=y in A37 | 3.10.0-34 |
| CANDIDATE | — | — | [fs] | proc/vmcore: enable /proc/vmcore mmap for s390 |  | CONFIG_PROC_FS=y in A37 | 3.10.0-34 |
| CANDIDATE | — | — | [fs] | proc/vmcore: introduce ELF header in new memory feature |  | CONFIG_PROC_FS=y in A37 | 3.10.0-34 |
| CANDIDATE | — | — | [fs] | proc/vmcore: introduce remap_oldmem_pfn_range() |  | CONFIG_PROC_FS=y in A37 | 3.10.0-34 |
| CANDIDATE | — | — | [fs] | proc/vmcore: prevent PT_NOTE p_memsz overflow during header update |  | CONFIG_PROC_FS=y in A37 | 3.10.0-106 |
| CANDIDATE | — | — | [fs] | proc/vmcore: support mmap() on /proc/vmcore |  | CONFIG_PROC_FS=y in A37 | 3.10.0-24 |
| CANDIDATE | — | — | [fs] | proc/vmcore: treat memory chunks referenced by PT_LOAD program header entries in page-size boundary in vmcore_list |  | CONFIG_PROC_FS=y in A37 | 3.10.0-24 |
| CANDIDATE | — | — | [fs] | proc: fix BUG_ON() introduced by PAGE_SIZE cmdline limit fix |  | CONFIG_PROC_FS=y in A37 | 3.10.0-267 |
| CANDIDATE | — | — | [fs] | proc: fix for infinite loop in proc_device_tree_update_prop |  | CONFIG_PROC_FS=y in A37 | 3.10.0-362 |
| CANDIDATE | — | — | [fs] | proc: fix GPF in /proc/$PID/map_files |  | CONFIG_PROC_FS=y in A37 | 3.10.0-657 |
| CANDIDATE | — | — | [fs] | proc: fix page_size limit of proc pid cmdline fix |  | CONFIG_PROC_FS=y in A37 | 3.10.0-254 |
| CANDIDATE | — | — | [fs] | proc: fix showing locks in /proc/pid/fdinfo/X |  | CONFIG_PROC_FS=y in A37 | 3.10.0-914 |
| CANDIDATE | — | — | [fs] | proc: meminfo: meminfo_proc_show() fix typo in comment |  | CONFIG_PROC_FS=y in A37 | 3.10.0-482 |
| CANDIDATE | — | — | [fs] | proc: read mm's {arg, env}_{start, end} with mmap semaphore taken |  | CONFIG_PROC_FS=y in A37 | 3.10.0-585 |
| CANDIDATE | — | — | [fs] | proc: use a rb tree for the directory entries |  | CONFIG_PROC_FS=y in A37 | 3.10.0-358 |
| CANDIDATE | — | — | [fs] | proc: use rb_entry_safe() instead of rb_entry() |  | CONFIG_PROC_FS=y in A37 | 3.10.0-358 |
| CANDIDATE | — | — | [fs] | proc_namespace: simplify testing nsp and nsp->mnt_ns |  | generic code, tag [fs] | 3.10.0-343 |
| CANDIDATE | — | — | [fs] | proc_sysctl.c: fix potential page fault while unregistering sysctl table |  | generic code, tag [fs] | 3.10.0-1149 |
| CANDIDATE | — | — | [fs] | quota: fix return value in dqget() |  | CONFIG_QUOTA=y in A37 | 3.10.0-1149 |
| CANDIDATE | — | — | [fs] | quota: use nla_put_u64_64bit() |  | CONFIG_QUOTA=y in A37 | 3.10.0-577 |
| CANDIDATE | — | — | [fs] | quota: use proper genetlink multicast APIs |  | CONFIG_QUOTA=y in A37 | 3.10.0-180 |
| CANDIDATE | — | — | [fs] | read_write: new helper, fixed_size_llseek() |  | generic code, tag [fs] | 3.10.0-27 |
| CANDIDATE | — | — | [fs] | Readd include of linux/lglock.h in fs/internal.h to preserve the kabi |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | — | — | [fs] | red hat kabi: Add new system call to nfs in a kABI compatible way |  | generic code, tag [fs] | 3.10.0-579 |
| CANDIDATE | — | — | [fs] | red hat kabi: Added flag signifying the use of file_operations_extend structure |  | generic code, tag [fs] | 3.10.0-579 |
| CANDIDATE | — | — | [fs] | red hat kabi: introduce new calls to file_operations_extend |  | generic code, tag [fs] | 3.10.0-579 |
| CANDIDATE | — | — | [fs] | red hat kabi: Remove the file operations that cause the kABI breakage |  | generic code, tag [fs] | 3.10.0-579 |
| CANDIDATE | — | — | [fs] | red hat kabi: Use #ifndef __GENKSYMS__ to maintain kAPI |  | generic code, tag [fs] | 3.10.0-579 |
| CANDIDATE | — | — | [fs] | Remove "tech preview" label for flexfile driver |  | generic code, tag [fs] | 3.10.0-614 |
| CANDIDATE | — | — | [fs] | Remove ifdef since SMB3 (and later) now STRONGLY preferred |  | generic code, tag [fs] | 3.10.0-868 |
| CANDIDATE | — | — | [fs] | remove the pmem_dax_ops->flush abstraction |  | generic code, tag [fs] | 3.10.0-868 |
| CANDIDATE | — | — | [fs] | Remove VM_FOP_EXTEND mm flag |  | generic code, tag [fs] | 3.10.0-912 |
| CANDIDATE | — | — | [fs] | Restore inode_dio_done declaration |  | generic code, tag [fs] | 3.10.0-383 |
| CANDIDATE | — | — | [fs] | revert "[fs] cifs: add more spinlocks to pretect against races" |  | generic code, tag [fs] | 3.10.0-1106 |
| CANDIDATE | — | — | [fs] | revert "[fs] cifs: add spinlock for the openFileList to cifsInodeInfo |  | generic code, tag [fs] | 3.10.0-1106 |
| CANDIDATE | — | — | [fs] | revert "[fs] cifs: use cifsInodeInfo->open_file_lock while iterating to avoid a panic |  | generic code, tag [fs] | 3.10.0-1106 |
| CANDIDATE | — | — | [fs] | revert "[fs] d_invalidate(): unhash immediately" |  | generic code, tag [fs] | 3.10.0-1037 |
| CANDIDATE | — | — | [fs] | revert "[fs] Hang/soft lockup in d_invalidate with simultaneous calls" |  | generic code, tag [fs] | 3.10.0-1037 |
| CANDIDATE | — | — | [fs] | revert "[fs] mnt: fix __detach_mounts infinite loop" |  | generic code, tag [fs] | 3.10.0-1037 |
| CANDIDATE | — | — | [fs] | revert "[fs] nfs: Don't write back further requests if there is a pending write error" |  | generic code, tag [fs] | 3.10.0-999 |
| CANDIDATE | — | — | [fs] | revert "[fs] nfsd: Implement the COPY call" |  | generic code, tag [fs] | 3.10.0-1103 |
| CANDIDATE | — | — | [fs] | revert "[fs] sunrpc: Ensure we always close the socket after a connection shuts down" |  | generic code, tag [fs] | 3.10.0-983 |
| CANDIDATE | — | — | [fs] | revert "[fs] xfs: catch bad stripe alignment configurations" |  | generic code, tag [fs] | 3.10.0-1143 |
| CANDIDATE | — | — | [fs] | revert "[fs] xfs: use rhashtable to track buffer cache" |  | generic code, tag [fs] | 3.10.0-1041 |
| CANDIDATE | — | — | [fs] | revert "cifs: Fix null pointer deref during read resp processing" |  | generic code, tag [fs] | 3.10.0-727 |
| CANDIDATE | — | — | [fs] | revert "ext4: pre-zero allocated blocks for DAX IO" |  | generic code, tag [fs] | 3.10.0-512 |
| CANDIDATE | — | — | [fs] | revert "gfs2: Use d_materialise_unique instead of d_splice_alias" |  | generic code, tag [fs] | 3.10.0-1060 |
| CANDIDATE | — | — | [fs] | revert "inotify: don't add consecutive overflow events to the queue" |  | generic code, tag [fs] | 3.10.0-351 |
| CANDIDATE | — | — | [fs] | revert "libxfs: pack the agfl header structure so XFS_AGFL_SIZE is correct" |  | generic code, tag [fs] | 3.10.0-419 |
| CANDIDATE | — | — | [fs] | revert "nfs: Fixing lease renewal" |  | generic code, tag [fs] | 3.10.0-297 |
| CANDIDATE | — | — | [fs] | revert "replace remaining users of arch_fast_hash with jhash" |  | generic code, tag [fs] | 3.10.0-441 |
| CANDIDATE | — | — | [fs] | revert "userfaultfd: call mark_tech_preview" |  | generic code, tag [fs] | 3.10.0-494 |
| CANDIDATE | — | — | [fs] | revert "xfs: disable copy_file_range() to avoid broken splice copy" |  | generic code, tag [fs] | 3.10.0-1062 |
| CANDIDATE | — | — | [fs] | revert "xfs: fix bogus space reservation in xfs_iomap_write_allocate" |  | generic code, tag [fs] | 3.10.0-680 |
| CANDIDATE | — | — | [fs] | revert 'direct-io: only inc_dec inode->i_dio_count for file systems' |  | generic code, tag [fs] | 3.10.0-354 |
| CANDIDATE | — | — | [fs] | rhel: add a file_operations_extend registration function |  | generic code, tag [fs] | 3.10.0-923 |
| CANDIDATE | — | — | [fs] | rhel: get rid of FS_HAS_FO_EXTEND |  | generic code, tag [fs] | 3.10.0-923 |
| CANDIDATE | — | — | [fs] | rhel: have file systems register their fo_extend structs |  | generic code, tag [fs] | 3.10.0-923 |
| CANDIDATE | — | — | [fs] | scsi_transport_sas: move bsg destructor into sas_rphy_remove |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | — | — | [fs] | security, overlayfs: Provide security hook for copy up of xattrs for overlay file |  | generic code, tag [fs] | 3.10.0-517 |
| CANDIDATE | — | — | [fs] | select: add vmalloc fallback for select(2) |  | generic code, tag [fs] | 3.10.0-812 |
| CANDIDATE | — | — | [fs] | selinux: Create a common helper to determine an inode label |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-517 |
| CANDIDATE | — | — | [fs] | Send durable handle v2 contexts when use of persistent handles required |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | — | — | [fs] | seq_file: don't include mm.h in genksyms calculation |  | generic code, tag [fs] | 3.10.0-225 |
| CANDIDATE | — | — | [fs] | seq_file: fix out-of-bounds read |  | generic code, tag [fs] | 3.10.0-945 |
| CANDIDATE | — | — | [fs] | signal: Don't take tasklist_lock if PID type is PIDTYPE_PID |  | generic code, tag [fs] | 3.10.0-1156 |
| CANDIDATE | — | — | [fs] | splice: perform generic write checks |  | generic code, tag [fs] | 3.10.0-203 |
| CANDIDATE | — | — | [fs] | sunrpc, nfs: Add and use dprintk_cont macros |  | generic code, tag [fs] | 3.10.0-658 |
| CANDIDATE | — | — | [fs] | super.c: fix race between freeze_super() and thaw_super() |  | generic code, tag [fs] | 3.10.0-670 |
| CANDIDATE | — | — | [fs] | super: uninline destroy_super(), consolidate alloc_super() |  | generic code, tag [fs] | 3.10.0-206 |
| CANDIDATE | — | — | [fs] | superblock: avoid locking counting inodes and dentries before reclaiming them |  | generic code, tag [fs] | 3.10.0-239 |
| CANDIDATE | — | — | [fs] | superblock: unregister sb shrinker before ->kill_sb() |  | generic code, tag [fs] | 3.10.0-239 |
| CANDIDATE | — | — | [fs] | switch dcache_readdir() users to ->iterate() |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | — | — | [fs] | sysfs, kernfs: move sysfs_open_file to linux/kernfs.h |  | generic code, tag [fs] | 3.10.0-828 |
| CANDIDATE | — | — | [fs] | sysfs/group: add kerneldoc for sysfs_remove_group |  | CONFIG_SYSFS=y in A37 | 3.10.0-58 |
| CANDIDATE | — | — | [fs] | sysfs/group: fix trailing whitespace |  | CONFIG_SYSFS=y in A37 | 3.10.0-58 |
| CANDIDATE | — | — | [fs] | sysfs/group: fix up broken string coding style |  | CONFIG_SYSFS=y in A37 | 3.10.0-58 |
| CANDIDATE | — | — | [fs] | sysfs/group: fix up kerneldoc |  | CONFIG_SYSFS=y in A37 | 3.10.0-58 |
| CANDIDATE | — | — | [fs] | sysfs/group: fix up some * coding style issues |  | CONFIG_SYSFS=y in A37 | 3.10.0-58 |
| CANDIDATE | — | — | [fs] | sysfs/group: move EXPORT_SYMBOL_GPL() to the proper location |  | CONFIG_SYSFS=y in A37 | 3.10.0-58 |
| CANDIDATE | — | — | [fs] | sysfs/group: update copyright to add myself and the LF |  | CONFIG_SYSFS=y in A37 | 3.10.0-58 |
| CANDIDATE | — | — | [fs] | sysfs: Do not warn about missing kernfs_node if kobj is not active |  | CONFIG_SYSFS=y in A37 | 3.10.0-843 |
| CANDIDATE | — | — | [fs] | sysfs: Remove namespace handling from __compat_only_sysfs_link_entry_to_kobj |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | — | — | [fs] | sysfs: Update __compat_only_sysfs_link_entry_to_kobj to it's upstream form |  | CONFIG_SYSFS=y in A37 | 3.10.0-828 |
| CANDIDATE | — | — | [fs] | task_mmu.c: do not show VmExe bigger than total executable virtual memory |  | generic code, tag [fs] | 3.10.0-1037 |
| CANDIDATE | — | — | [fs] | Update session and share information displayed for debugging SMB2/SMB3 |  | generic code, tag [fs] | 3.10.0-868 |
| CANDIDATE | — | — | [fs] | Use RH_KABI_EXTEND to wrap nameidata.m_seq |  | generic code, tag [fs] | 3.10.0-620 |
| CANDIDATE | — | — | [fs] | userfaultfd.c: remove redundant pointer uwq | CVE-2018-18397 | generic code, tag [fs] | 3.10.0-971 |
| CANDIDATE | — | — | [fs] | vfs, ext2: remove CONFIG_EXT2_FS_XIP and rename CONFIG_FS_XIP to CONFIG_FS_DAX |  | generic code, tag [fs] | 3.10.0-427 |
| CANDIDATE | — | — | [fs] | vfs: Convert S_ISLNK/DIR/REG(dentry->d_inode) to d_is_*(dentry) |  | generic code, tag [fs] | 3.10.0-621 |
| CANDIDATE | — | — | [fs] | vfs: fix locks_lock_file_wait() on overlayfs |  | generic code, tag [fs] | 3.10.0-679 |
| CANDIDATE | — | — | [fs] | vfs: fix ref count leak in path_mountpoint() | CVE-2014-5045 | generic code, tag [fs] | 3.10.0-171 |
| CANDIDATE | — | — | [fs] | vfs: fix softlockup in shrink_dcache_for_umount() |  | generic code, tag [fs] | 3.10.0-796 |
| CANDIDATE | — | — | [fs] | vfs: in iomap seek_{hole, data}, return -ENXIO for negative offsets |  | generic code, tag [fs] | 3.10.0-799 |
| CANDIDATE | — | — | [fs] | vfs: lock_two_nondirectories - allow directory args |  | generic code, tag [fs] | 3.10.0-220 |
| CANDIDATE | — | — | [fs] | vfs: normal filesystems and lustre d_inode() annotations - CIFS only |  | generic code, tag [fs] | 3.10.0-428 |
| CANDIDATE | — | — | [fs] | vfs: pull btrfs clone API to vfs layer(cifs_only) |  | generic code, tag [fs] | 3.10.0-704 |
| CANDIDATE | — | — | [fs] | vfs: split generic splice code from i_mutex locking |  | generic code, tag [fs] | 3.10.0-372 |
| CANDIDATE | — | — | [fs] | Workaround MacOS server problem with SMB2.1 write response |  | generic code, tag [fs] | 3.10.0-289 |
| CANDIDATE | — | — | [fs] | writeback: don't check force_wait to handle bdi->work_list |  | generic code, tag [fs] | 3.10.0-65 |
| CANDIDATE | — | — | [fs] | writeback: make writeback_inodes_wb static |  | generic code, tag [fs] | 3.10.0-65 |
| CANDIDATE | — | — | [fs] | xattr.c: zero out memory copied to userspace in getxattr |  | generic code, tag [fs] | 3.10.0-812 |
| FEATURE-MISSING | 3.14 | [`bb8b9d095c5c`](https://git.kernel.org/torvalds/c/bb8b9d095c5c) | [fs] | kernfs: add @mode to kernfs_create_dir[_ns]() |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`bb8b9d095c5c`](https://git.kernel.org/torvalds/c/bb8b9d095c5c) | [fs] | kernfs: add @mode to kernfs_create_dir[_ns]() |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`80b9bbefc345`](https://git.kernel.org/torvalds/c/80b9bbefc345) | [fs] | kernfs: add kernfs_dir_ops |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`80b9bbefc345`](https://git.kernel.org/torvalds/c/80b9bbefc345) | [fs] | kernfs: add kernfs_dir_ops |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`d0ae3d4347ee`](https://git.kernel.org/torvalds/c/d0ae3d4347ee) | [fs] | kernfs: add REMOVED check to create and rename paths |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`d0ae3d4347ee`](https://git.kernel.org/torvalds/c/d0ae3d4347ee) | [fs] | kernfs: add REMOVED check to create and rename paths |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`917f56caaabc`](https://git.kernel.org/torvalds/c/917f56caaabc) | [fs] | kernfs: add struct dentry declaration in kernfs.h |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`917f56caaabc`](https://git.kernel.org/torvalds/c/917f56caaabc) | [fs] | kernfs: add struct dentry declaration in kernfs.h |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`19bbb926203d`](https://git.kernel.org/torvalds/c/19bbb926203d) | [fs] | kernfs: allow negative dentries |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`19bbb926203d`](https://git.kernel.org/torvalds/c/19bbb926203d) | [fs] | kernfs: allow negative dentries |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`db4aad209bc9`](https://git.kernel.org/torvalds/c/db4aad209bc9) | [fs] | kernfs: associate a new kernfs_node with its parent on creation |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`db4aad209bc9`](https://git.kernel.org/torvalds/c/db4aad209bc9) | [fs] | kernfs: associate a new kernfs_node with its parent on creation |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`adc5e8b58f48`](https://git.kernel.org/torvalds/c/adc5e8b58f48) | [fs] | kernfs: drop s_ prefix from kernfs_node members |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`adc5e8b58f48`](https://git.kernel.org/torvalds/c/adc5e8b58f48) | [fs] | kernfs: drop s_ prefix from kernfs_node members |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`bb305947bdbb`](https://git.kernel.org/torvalds/c/bb305947bdbb) | [fs] | kernfs: fix get_active failure handling in kernfs_seq_*() |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`bb305947bdbb`](https://git.kernel.org/torvalds/c/bb305947bdbb) | [fs] | kernfs: fix get_active failure handling in kernfs_seq_*() |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`2322392b020b`](https://git.kernel.org/torvalds/c/2322392b020b) | [fs] | kernfs: implement "trusted.*" xattr support |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`2322392b020b`](https://git.kernel.org/torvalds/c/2322392b020b) | [fs] | kernfs: implement "trusted.*" xattr support |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`da9846ae1518`](https://git.kernel.org/torvalds/c/da9846ae1518) | [fs] | kernfs: make kernfs_deactivate() honor KERNFS_LOCKDEP flag |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`da9846ae1518`](https://git.kernel.org/torvalds/c/da9846ae1518) | [fs] | kernfs: make kernfs_deactivate() honor KERNFS_LOCKDEP flag |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`2063d608f511`](https://git.kernel.org/torvalds/c/2063d608f511) | [fs] | kernfs: mark static names with KERNFS_STATIC_NAME |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`2063d608f511`](https://git.kernel.org/torvalds/c/2063d608f511) | [fs] | kernfs: mark static names with KERNFS_STATIC_NAME |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`a69d001cfc71`](https://git.kernel.org/torvalds/c/a69d001cfc71) | [fs] | kernfs: remove KERNFS_ACTIVE_REF and add kernfs_lockdep() |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`a69d001cfc71`](https://git.kernel.org/torvalds/c/a69d001cfc71) | [fs] | kernfs: remove KERNFS_ACTIVE_REF and add kernfs_lockdep() |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`99177a341108`](https://git.kernel.org/torvalds/c/99177a341108) | [fs] | kernfs: remove kernfs_addrm_cxt |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`99177a341108`](https://git.kernel.org/torvalds/c/99177a341108) | [fs] | kernfs: remove kernfs_addrm_cxt |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`ae34372eb840`](https://git.kernel.org/torvalds/c/ae34372eb840) | [fs] | kernfs: remove KERNFS_REMOVED |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`ae34372eb840`](https://git.kernel.org/torvalds/c/ae34372eb840) | [fs] | kernfs: remove KERNFS_REMOVED |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`ea1c472dfead`](https://git.kernel.org/torvalds/c/ea1c472dfead) | [fs] | kernfs: replace kernfs_node->u.completion with kernfs_root->deactivate_waitq |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`ea1c472dfead`](https://git.kernel.org/torvalds/c/ea1c472dfead) | [fs] | kernfs: replace kernfs_node->u.completion with kernfs_root->deactivate_waitq |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`45a140e587f3`](https://git.kernel.org/torvalds/c/45a140e587f3) | [fs] | kernfs: restructure removal path to fix possible premature return |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`45a140e587f3`](https://git.kernel.org/torvalds/c/45a140e587f3) | [fs] | kernfs: restructure removal path to fix possible premature return |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`df23fc39bce0`](https://git.kernel.org/torvalds/c/df23fc39bce0) | [fs] | kernfs: s/sysfs/kernfs/ in constants |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`df23fc39bce0`](https://git.kernel.org/torvalds/c/df23fc39bce0) | [fs] | kernfs: s/sysfs/kernfs/ in constants |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`a797bfc30532`](https://git.kernel.org/torvalds/c/a797bfc30532) | [fs] | kernfs: s/sysfs/kernfs/ in global variables |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`a797bfc30532`](https://git.kernel.org/torvalds/c/a797bfc30532) | [fs] | kernfs: s/sysfs/kernfs/ in global variables |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`c637b8acbe07`](https://git.kernel.org/torvalds/c/c637b8acbe07) | [fs] | kernfs: s/sysfs/kernfs/ in internal functions and whatever is left |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`c637b8acbe07`](https://git.kernel.org/torvalds/c/c637b8acbe07) | [fs] | kernfs: s/sysfs/kernfs/ in internal functions and whatever is left |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`c525aaddc366`](https://git.kernel.org/torvalds/c/c525aaddc366) | [fs] | kernfs: s/sysfs/kernfs/ in various data structures |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`c525aaddc366`](https://git.kernel.org/torvalds/c/c525aaddc366) | [fs] | kernfs: s/sysfs/kernfs/ in various data structures |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`324a56e16e44`](https://git.kernel.org/torvalds/c/324a56e16e44) | [fs] | kernfs: s/sysfs_dirent/kernfs_node/ and rename its friends accordingly |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`324a56e16e44`](https://git.kernel.org/torvalds/c/324a56e16e44) | [fs] | kernfs: s/sysfs_dirent/kernfs_node/ and rename its friends accordingly |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`47a52e91f485`](https://git.kernel.org/torvalds/c/47a52e91f485) | [fs] | kernfs: update kernfs_rename_ns() to consider KERNFS_STATIC_NAME |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`47a52e91f485`](https://git.kernel.org/torvalds/c/47a52e91f485) | [fs] | kernfs: update kernfs_rename_ns() to consider KERNFS_STATIC_NAME |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.14 | [`9a8049affd55`](https://git.kernel.org/torvalds/c/9a8049affd55) | [fs] | kernfs: update sysfs_init_inode_attrs() |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.14 | [`9a8049affd55`](https://git.kernel.org/torvalds/c/9a8049affd55) | [fs] | kernfs: update sysfs_init_inode_attrs() |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`b44b2140265d`](https://git.kernel.org/torvalds/c/b44b2140265d) | [fs] | kernfs: add back missing error check in kernfs_fop_mmap() |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`b44b2140265d`](https://git.kernel.org/torvalds/c/b44b2140265d) | [fs] | kernfs: add back missing error check in kernfs_fop_mmap() |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`ba341d55a420`](https://git.kernel.org/torvalds/c/ba341d55a420) | [fs] | kernfs: add CONFIG_KERNFS |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`ba341d55a420`](https://git.kernel.org/torvalds/c/ba341d55a420) | [fs] | kernfs: add CONFIG_KERNFS |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`2536390da0d3`](https://git.kernel.org/torvalds/c/2536390da0d3) | [fs] | kernfs: add kernfs_open_file->priv |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`2536390da0d3`](https://git.kernel.org/torvalds/c/2536390da0d3) | [fs] | kernfs: add kernfs_open_file->priv |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`b9c9dad0c457`](https://git.kernel.org/torvalds/c/b9c9dad0c457) | [fs] | kernfs: add missing kernfs_active() checks in directory operations |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`b9c9dad0c457`](https://git.kernel.org/torvalds/c/b9c9dad0c457) | [fs] | kernfs: add missing kernfs_active() checks in directory operations |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`d35258ef702c`](https://git.kernel.org/torvalds/c/d35258ef702c) | [fs] | kernfs: allow nodes to be created in the deactivated state |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`d35258ef702c`](https://git.kernel.org/torvalds/c/d35258ef702c) | [fs] | kernfs: allow nodes to be created in the deactivated state |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`b7ce40cff0b9`](https://git.kernel.org/torvalds/c/b7ce40cff0b9) | [fs] | kernfs: cache atomic_write_len in kernfs_open_file |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`b7ce40cff0b9`](https://git.kernel.org/torvalds/c/b7ce40cff0b9) | [fs] | kernfs: cache atomic_write_len in kernfs_open_file |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`c1befb885939`](https://git.kernel.org/torvalds/c/c1befb885939) | [fs] | kernfs: fix a subdir count leak |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`c1befb885939`](https://git.kernel.org/torvalds/c/c1befb885939) | [fs] | kernfs: fix a subdir count leak |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`9561a8961c70`](https://git.kernel.org/torvalds/c/9561a8961c70) | [fs] | kernfs: fix hash calculation in kernfs_rename_ns() |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`9561a8961c70`](https://git.kernel.org/torvalds/c/9561a8961c70) | [fs] | kernfs: fix hash calculation in kernfs_rename_ns() |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`f41c59345494`](https://git.kernel.org/torvalds/c/f41c59345494) | [fs] | kernfs: fix kernfs_node_from_dentry() |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`f41c59345494`](https://git.kernel.org/torvalds/c/f41c59345494) | [fs] | kernfs: fix kernfs_node_from_dentry() |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`88391d49abb7`](https://git.kernel.org/torvalds/c/88391d49abb7) | [fs] | kernfs: fix off by one error |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`88391d49abb7`](https://git.kernel.org/torvalds/c/88391d49abb7) | [fs] | kernfs: fix off by one error. |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`3eef34ad7dc3`](https://git.kernel.org/torvalds/c/3eef34ad7dc3) | [fs] | kernfs: implement kernfs_get_parent(), kernfs_name/path() and friends |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`3eef34ad7dc3`](https://git.kernel.org/torvalds/c/3eef34ad7dc3) | [fs] | kernfs: implement kernfs_get_parent(), kernfs_name/path() and friends |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`0c23b2259a48`](https://git.kernel.org/torvalds/c/0c23b2259a48) | [fs] | kernfs: implement kernfs_node_from_dentry(), kernfs_root_from_sb() and kernfs_rename() |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`0c23b2259a48`](https://git.kernel.org/torvalds/c/0c23b2259a48) | [fs] | kernfs: implement kernfs_node_from_dentry(), kernfs_root_from_sb() and kernfs_rename() |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`4d3773c4bb41`](https://git.kernel.org/torvalds/c/4d3773c4bb41) | [fs] | kernfs: implement kernfs_ops->atomic_write_len |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`4d3773c4bb41`](https://git.kernel.org/torvalds/c/4d3773c4bb41) | [fs] | kernfs: implement kernfs_ops->atomic_write_len |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`6a7fed4eefdd`](https://git.kernel.org/torvalds/c/6a7fed4eefdd) | [fs] | kernfs: implement kernfs_syscall_ops->remount_fs() and ->show_options() |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`6a7fed4eefdd`](https://git.kernel.org/torvalds/c/6a7fed4eefdd) | [fs] | kernfs: implement kernfs_syscall_ops->remount_fs() and ->show_options() |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`07c7530dd467`](https://git.kernel.org/torvalds/c/07c7530dd467) | [fs] | kernfs: invoke dir_ops while holding active ref of the target node |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`07c7530dd467`](https://git.kernel.org/torvalds/c/07c7530dd467) | [fs] | kernfs: invoke dir_ops while holding active ref of the target node |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`ccf02aaf8167`](https://git.kernel.org/torvalds/c/ccf02aaf8167) | [fs] | kernfs: invoke kernfs_unmap_bin_file() directly from kernfs_deactivate() |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`ccf02aaf8167`](https://git.kernel.org/torvalds/c/ccf02aaf8167) | [fs] | kernfs: invoke kernfs_unmap_bin_file() directly from kernfs_deactivate() |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`c9482a5bdcc0`](https://git.kernel.org/torvalds/c/c9482a5bdcc0) | [fs] | kernfs: move the last knowledge of sysfs out from kernfs |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`c9482a5bdcc0`](https://git.kernel.org/torvalds/c/c9482a5bdcc0) | [fs] | kernfs: move the last knowledge of sysfs out from kernfs |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`4afddd60a770`](https://git.kernel.org/torvalds/c/4afddd60a770) | [fs] | kernfs: protect lazy kernfs_iattrs allocation with mutex |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`4afddd60a770`](https://git.kernel.org/torvalds/c/4afddd60a770) | [fs] | kernfs: protect lazy kernfs_iattrs allocation with mutex |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.15 | [`90c07c895c87`](https://git.kernel.org/torvalds/c/90c07c895c87) | [fs] | kernfs: rename kernfs_dir_ops to kernfs_syscall_ops |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.15 | [`90c07c895c87`](https://git.kernel.org/torvalds/c/90c07c895c87) | [fs] | kernfs: rename kernfs_dir_ops to kernfs_syscall_ops |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | 3.16 | [`7d568a8383bb`](https://git.kernel.org/torvalds/c/7d568a8383bb) | [fs] | kernfs: implement kernfs_root->supers list |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.16 | [`4e26445faad3`](https://git.kernel.org/torvalds/c/4e26445faad3) | [fs] | kernfs: introduce kernfs_pin_sb() |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.16 | [`ecca47ce8294`](https://git.kernel.org/torvalds/c/ecca47ce8294) | [fs] | kernfs: kernfs_notify() must be useable from non-sleepable contexts |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.16 | [`d911d9874801`](https://git.kernel.org/torvalds/c/d911d9874801) | [fs] | kernfs: make kernfs_notify() trigger inotify events too |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 3.18 | [`cc2596392af3`](https://git.kernel.org/torvalds/c/cc2596392af3) | [fs] | overlayfs: add statfs support |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | 3.18 | [`d45f00ae43e6`](https://git.kernel.org/torvalds/c/d45f00ae43e6) | [fs] | overlayfs: barriers for opening upper-layer directory |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | 3.18 | [`3d268c9b136f`](https://git.kernel.org/torvalds/c/3d268c9b136f) | [fs] | overlayfs: don't hold ->i_mutex over opening the real directory |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | 3.18 | [`db6ec212b53a`](https://git.kernel.org/torvalds/c/db6ec212b53a) | [fs] | overlayfs: embed middle into overlay_readdir_data |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | 3.18 | [`49be4fb9cc34`](https://git.kernel.org/torvalds/c/49be4fb9cc34) | [fs] | overlayfs: embed root into overlay_readdir_data |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | 3.18 | [`d1b72cc6d8cb`](https://git.kernel.org/torvalds/c/d1b72cc6d8cb) | [fs] | overlayfs: fix lockdep misannotation |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | 3.18 | [`f45827e84186`](https://git.kernel.org/torvalds/c/f45827e84186) | [fs] | overlayfs: implement show_options |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | 3.18 | [`68bf8611076a`](https://git.kernel.org/torvalds/c/68bf8611076a) | [fs] | overlayfs: make ovl_cache_entry->name an array instead of pointer |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | 3.18 | [`91c77947133f`](https://git.kernel.org/torvalds/c/91c77947133f) | [fs] | ovl: allow filenames with comma |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | 3.18 | [`521484639ec1`](https://git.kernel.org/torvalds/c/521484639ec1) | [fs] | ovl: fix race in private xattr checks |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | 3.18 | [`a105d685a848`](https://git.kernel.org/torvalds/c/a105d685a848) | [fs] | ovl: fix remove/copy-up race |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | 3.18 | [`7676895f4736`](https://git.kernel.org/torvalds/c/7676895f4736) | [fs] | ovl: ovl_dir_fsync() cleanup |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | 3.18 | [`c9f00fdb9ab3`](https://git.kernel.org/torvalds/c/c9f00fdb9ab3) | [fs] | ovl: pass dentry into ovl_dir_read_merged() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | 3.18 | [`ef94b1864d1e`](https://git.kernel.org/torvalds/c/ef94b1864d1e) | [fs] | ovl: rename filesystem type to "overlay" |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | 3.18 | [`1d113735ecf2`](https://git.kernel.org/torvalds/c/1d113735ecf2) | [fs] | ovl: update MAINTAINERS |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-448 |
| FEATURE-MISSING | 3.18 | [`71d509280f7e`](https://git.kernel.org/torvalds/c/71d509280f7e) | [fs] | ovl: use lockless_dereference() for upperdentry |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | 4.0 | [`dd662667e6d3`](https://git.kernel.org/torvalds/c/dd662667e6d3) | [fs] | ovl: add mutli-layer infrastructure |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`2b7a8f36f092`](https://git.kernel.org/torvalds/c/2b7a8f36f092) | [fs] | ovl: add testsuite to docs |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-448 |
| FEATURE-MISSING | 4.0 | [`4ebc581828d5`](https://git.kernel.org/torvalds/c/4ebc581828d5) | [fs] | ovl: allow statfs if no upper layer |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`6be4506e34cf`](https://git.kernel.org/torvalds/c/6be4506e34cf) | [fs] | ovl: check lowerdir amount for non-upper mount |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`3e01cee3b980`](https://git.kernel.org/torvalds/c/3e01cee3b980) | [fs] | ovl: check whiteout on lowest layer as well |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`49c21e1cacd7`](https://git.kernel.org/torvalds/c/49c21e1cacd7) | [fs] | ovl: check whiteout while reading directory |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`1ba38725a351`](https://git.kernel.org/torvalds/c/1ba38725a351) | [fs] | ovl: Cleanup redundant blank lines |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`4330397e4e8a`](https://git.kernel.org/torvalds/c/4330397e4e8a) | [fs] | ovl: discard independent cursor in readdir() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`6d900f5a3339`](https://git.kernel.org/torvalds/c/6d900f5a3339) | [fs] | ovl: document lower layer ordering |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-448 |
| FEATURE-MISSING | 4.0 | [`263b4a0fee43`](https://git.kernel.org/torvalds/c/263b4a0fee43) | [fs] | ovl: dont replace opaque dir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`2f83fd8c2849`](https://git.kernel.org/torvalds/c/2f83fd8c2849) | [fs] | ovl: Fix kernel panic while mounting overlayfs |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`a425c037f3dd`](https://git.kernel.org/torvalds/c/a425c037f3dd) | [fs] | ovl: Fix opaque regression in ovl_lookup |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`5ef88da56a77`](https://git.kernel.org/torvalds/c/5ef88da56a77) | [fs] | ovl: helper to iterate layers |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`ab508822cab4`](https://git.kernel.org/torvalds/c/ab508822cab4) | [fs] | ovl: improve mount helpers |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`09e10322b717`](https://git.kernel.org/torvalds/c/09e10322b717) | [fs] | ovl: lookup ENAMETOOLONG on lower means ENOENT |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`1afaba1ecb52`](https://git.kernel.org/torvalds/c/1afaba1ecb52) | [fs] | ovl: make path-type a bitmap |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`53a08cb9b8bc`](https://git.kernel.org/torvalds/c/53a08cb9b8bc) | [fs] | ovl: make upperdir optional |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`3b7a9a249a93`](https://git.kernel.org/torvalds/c/3b7a9a249a93) | [fs] | ovl: mount: change order of initialization |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`3d3c6b89399a`](https://git.kernel.org/torvalds/c/3d3c6b89399a) | [fs] | ovl: multi-layer lookup |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`9d7459d834c2`](https://git.kernel.org/torvalds/c/9d7459d834c2) | [fs] | ovl: multi-layer readdir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`3cdf6fe91041`](https://git.kernel.org/torvalds/c/3cdf6fe91041) | [fs] | ovl: Prevent rw remount when it should be ro mount |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`bead55ef775f`](https://git.kernel.org/torvalds/c/bead55ef775f) | [fs] | ovl: print error message for invalid mount options |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`a78d9f0d5d5c`](https://git.kernel.org/torvalds/c/a78d9f0d5d5c) | [fs] | ovl: support multiple lower layers |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`71cbad7e694e`](https://git.kernel.org/torvalds/c/71cbad7e694e) | [fs] | ovl: upper fs should not be R/O |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.0 | [`cead89bb08c0`](https://git.kernel.org/torvalds/c/cead89bb08c0) | [fs] | ovl: Use macros to present ovl_xattr |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.1 | [`d377c5eb54dd`](https://git.kernel.org/torvalds/c/d377c5eb54dd) | [fs] | ovl: don't remove non-empty opaque directory |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.1 | [`cc6f67bcafcb`](https://git.kernel.org/torvalds/c/cc6f67bcafcb) | [fs] | ovl: mount read-only if workdir can't be created |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.2 | [`ea015218f2f7`](https://git.kernel.org/torvalds/c/ea015218f2f7) | [fs] | kernfs: Add support for always empty directories |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 4.2 | [`f25801ee4680`](https://git.kernel.org/torvalds/c/f25801ee4680) | [fs] | overlay: Call ovl_drop_write() earlier in ovl_dentry_open() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-358 |
| FEATURE-MISSING | 4.2 | [`4bacc9c9234c`](https://git.kernel.org/torvalds/c/4bacc9c9234c) | [fs] | overlayfs: Make f_path always point to the overlay and f_inode to the underlay |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-358 |
| FEATURE-MISSING | 4.2 | [`7c03b5d45b8e`](https://git.kernel.org/torvalds/c/7c03b5d45b8e) | [fs] | ovl: allow distributed fs as lower layer |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.2 | [`a6f15d9a7565`](https://git.kernel.org/torvalds/c/a6f15d9a7565) | [fs] | ovl: don't traverse automount points |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.2 | [`cdb672795876`](https://git.kernel.org/torvalds/c/cdb672795876) | [fs] | ovl: lookup whiteouts outside iterate_dir() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.2 | [`3188b2955de3`](https://git.kernel.org/torvalds/c/3188b2955de3) | [fs] | ovl: rearrange ovl_follow_link to it doesn't need to call ->put_link |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-298 |
| FEATURE-MISSING | 4.3 | [`ab79efab0a0b`](https://git.kernel.org/torvalds/c/ab79efab0a0b) | [fs] | ovl: fix dentry reference leak |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-351 |
| FEATURE-MISSING | 4.3 | [`1c8a47df36d7`](https://git.kernel.org/torvalds/c/1c8a47df36d7) | [fs] | ovl: fix open in stacked overlay |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-358 |
| FEATURE-MISSING | 4.3 | [`5ffdbe8bf1e4`](https://git.kernel.org/torvalds/c/5ffdbe8bf1e4) | [fs] | ovl: free lower_mnt array in ovl_put_super |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-358 |
| FEATURE-MISSING | 4.3 | [`0f95502ad848`](https://git.kernel.org/torvalds/c/0f95502ad848) | [fs] | ovl: free stack of paths in ovl_fill_super |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-358 |
| FEATURE-MISSING | 4.3 | [`0480334fa604`](https://git.kernel.org/torvalds/c/0480334fa604) | [fs] | ovl: use O_LARGEFILE in ovl_copy_up() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-358 |
| FEATURE-MISSING | 4.3 | [`c03e946fdd65`](https://git.kernel.org/torvalds/c/c03e946fdd65) | [fs] | userfaultfd: add missing mmput() in error path |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-323 |
| FEATURE-MISSING | 4.3 | [`dfa37dc3fc1f`](https://git.kernel.org/torvalds/c/dfa37dc3fc1f) | [fs] | userfaultfd: allow signals to interrupt a userfault |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`2c5b7e1be74f`](https://git.kernel.org/torvalds/c/2c5b7e1be74f) | [fs] | userfaultfd: avoid missing wakeups during refile in userfaultfd_read |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.3 | [`e6485a47b758`](https://git.kernel.org/torvalds/c/e6485a47b758) | [fs] | userfaultfd: require UFFDIO_API before other ioctls |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | 4.4 | [`acff81ec2c79`](https://git.kernel.org/torvalds/c/acff81ec2c79) | [fs] | ovl: fix permission checking for setattr |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-358 |
| FEATURE-MISSING | 4.4 | [`0f7ff2dabbc9`](https://git.kernel.org/torvalds/c/0f7ff2dabbc9) | [fs] | ovl: get rid of the dead code left from broken (and disabled) optimizations |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-358 |
| FEATURE-MISSING | 4.5 | [`97daf8b97ad6`](https://git.kernel.org/torvalds/c/97daf8b97ad6) | [fs] | ovl: allow zero size xattr |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-358 |
| FEATURE-MISSING | 4.5 | [`84889d493356`](https://git.kernel.org/torvalds/c/84889d493356) | [fs] | ovl: check dentry positiveness in ovl_cleanup_whiteouts() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-358 |
| FEATURE-MISSING | 4.5 | [`b81de061fa59`](https://git.kernel.org/torvalds/c/b81de061fa59) | [fs] | ovl: copy new uid/gid into overlayfs runtime inode |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-448 |
| FEATURE-MISSING | 4.5 | [`8d3095f4ad47`](https://git.kernel.org/torvalds/c/8d3095f4ad47) | [fs] | ovl: default permissions |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-358 |
| FEATURE-MISSING | 4.5 | [`ce9113bbcbf4`](https://git.kernel.org/torvalds/c/ce9113bbcbf4) | [fs] | ovl: fix getcwd() failure after unsuccessful rmdir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-448 |
| FEATURE-MISSING | 4.5 | [`b5891cfab08f`](https://git.kernel.org/torvalds/c/b5891cfab08f) | [fs] | ovl: fix working on distributed fs as lower layer |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-448 |
| FEATURE-MISSING | 4.5 | [`45d117389696`](https://git.kernel.org/torvalds/c/45d117389696) | [fs] | ovl: ignore lower entries when checking purity of non-directory entries |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-448 |
| FEATURE-MISSING | 4.5 | [`257f87199347`](https://git.kernel.org/torvalds/c/257f87199347) | [fs] | ovl: move super block magic number to magic.h |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-358 |
| FEATURE-MISSING | 4.5 | [`ed06e069775a`](https://git.kernel.org/torvalds/c/ed06e069775a) | [fs] | ovl: root: copy attr |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-358 |
| FEATURE-MISSING | 4.5 | [`cf9a6784f7c1`](https://git.kernel.org/torvalds/c/cf9a6784f7c1) | [fs] | ovl: setattr: check permissions before copy-up |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-358 |
| FEATURE-MISSING | 4.5 | [`e4ad29fa0d22`](https://git.kernel.org/torvalds/c/e4ad29fa0d22) | [fs] | ovl: use a minimal buffer in ovl_copy_xattr |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-358 |
| FEATURE-MISSING | 4.5 | [`39680f50ae54`](https://git.kernel.org/torvalds/c/39680f50ae54) | [fs] | userfaultfd: don't block on the last VM updates at exit time |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-367 |
| FEATURE-MISSING | 4.6 | [`6986c012faa4`](https://git.kernel.org/torvalds/c/6986c012faa4) | [fs] | ovl: cleanup unused var in rename2 |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-448 |
| FEATURE-MISSING | 4.6 | [`45aebeaf4f67`](https://git.kernel.org/torvalds/c/45aebeaf4f67) | [fs] | ovl: Ensure upper filesystem supports d_type |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-386 |
| FEATURE-MISSING | 4.6 | [`f134f2446548`](https://git.kernel.org/torvalds/c/f134f2446548) | [fs] | ovl: fixed coding style warning |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.6 | [`07f2af7bfd24`](https://git.kernel.org/torvalds/c/07f2af7bfd24) | [fs] | ovl: honor flag MS_SILENT at mount |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.6 | [`38b78a5f1858`](https://git.kernel.org/torvalds/c/38b78a5f1858) | [fs] | ovl: ignore permissions on underlying lookup |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-448 |
| FEATURE-MISSING | 4.6 | [`56656e960b55`](https://git.kernel.org/torvalds/c/56656e960b55) | [fs] | ovl: rename is_merge to is_lowest |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-448 |
| FEATURE-MISSING | 4.6 | [`11f3710417d0`](https://git.kernel.org/torvalds/c/11f3710417d0) | [fs] | ovl: verify upper dentry before unlink and rename |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-448 |
| FEATURE-MISSING | 4.7 | [`07a2daab49c5`](https://git.kernel.org/torvalds/c/07a2daab49c5) | [fs] | ovl: Copy up underlying inode's ->i_mode to overlay inode |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-481 |
| FEATURE-MISSING | 4.7 | [`21765194cecf`](https://git.kernel.org/torvalds/c/21765194cecf) | [fs] | ovl: Do d_type check only if work dir creation was successful |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-448 |
| FEATURE-MISSING | 4.7 | [`a4859d75944a`](https://git.kernel.org/torvalds/c/a4859d75944a) | [fs] | ovl: fix dentry leak for default_permissions |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-467 |
| FEATURE-MISSING | 4.7 | [`d0e13f5bbe4b`](https://git.kernel.org/torvalds/c/d0e13f5bbe4b) | [fs] | ovl: fix uid/gid when creating over whiteout |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-460 |
| FEATURE-MISSING | 4.7 | [`03bea6040932`](https://git.kernel.org/torvalds/c/03bea6040932) | [fs] | ovl: get_write_access() in truncate |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-481 |
| FEATURE-MISSING | 4.7 | [`b99c2d913810`](https://git.kernel.org/torvalds/c/b99c2d913810) | [fs] | ovl: handle ATTR_KILL* |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-481 |
| FEATURE-MISSING | 4.7 | [`3fe6e52f0626`](https://git.kernel.org/torvalds/c/3fe6e52f0626) | [fs] | ovl: override creds with the ones from the superblock mounter |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-448 |
| FEATURE-MISSING | 4.7 | [`942fd803e6df`](https://git.kernel.org/torvalds/c/942fd803e6df) | [fs] | ovl: update documentation |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-448 |
| FEATURE-MISSING | 4.7 | [`cfc9fde0b07c`](https://git.kernel.org/torvalds/c/cfc9fde0b07c) | [fs] | ovl: verify upper dentry in ovl_remove_and_whiteout() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-481 |
| FEATURE-MISSING | 4.7 | [`b581755b1c56`](https://git.kernel.org/torvalds/c/b581755b1c56) | [fs] | ovl: xattr filter fix |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-481 |
| FEATURE-MISSING | 4.7 | [`d2005e3f41d4`](https://git.kernel.org/torvalds/c/d2005e3f41d4) | [fs] | userfaultfd: don't pin the user memory in userfaultfd_file_create() |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-481 |
| FEATURE-MISSING | 4.8 | [`df6a58c5c5aa`](https://git.kernel.org/torvalds/c/df6a58c5c5aa) | [fs] | kernfs: don't depend on d_find_any_alias() when generating notifications |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 4.8 | [`29a517c232d2`](https://git.kernel.org/torvalds/c/29a517c232d2) | [fs] | kernfs: The cgroup filesystem also benefits from SB_I_NOEXEC |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | 4.8 | [`500cac3ccee6`](https://git.kernel.org/torvalds/c/500cac3ccee6) | [fs] | ovl: append MAY_READ when diluting write checks |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-495 |
| FEATURE-MISSING | 4.8 | [`c1b2cc1a765a`](https://git.kernel.org/torvalds/c/c1b2cc1a765a) | [fs] | ovl: check mounter creds on underlying lookup |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-495 |
| FEATURE-MISSING | 4.8 | [`dbc816d05ddc`](https://git.kernel.org/torvalds/c/dbc816d05ddc) | [fs] | ovl: clear nlink on rmdir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-506 |
| FEATURE-MISSING | 4.8 | [`ce31513a9114`](https://git.kernel.org/torvalds/c/ce31513a9114) | [fs] | ovl: copyattr after setting POSIX ACL |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-506 |
| FEATURE-MISSING | 4.8 | [`39a25b2b3762`](https://git.kernel.org/torvalds/c/39a25b2b3762) | [fs] | ovl: define ->get_acl() for overlay inodes |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-495 |
| FEATURE-MISSING | 4.8 | [`e29841a0ab3d`](https://git.kernel.org/torvalds/c/e29841a0ab3d) | [fs] | ovl: dilute permission checks on lower only if not special file |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-495 |
| FEATURE-MISSING | 4.8 | [`76bc8e2843b6`](https://git.kernel.org/torvalds/c/76bc8e2843b6) | [fs] | ovl: disallow overlayfs as upperdir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.8 | [`754f8cb72b42`](https://git.kernel.org/torvalds/c/754f8cb72b42) | [fs] | ovl: do not require mounter to have MAY_WRITE on lower |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-495 |
| FEATURE-MISSING | 4.8 | [`1175b6b8d963`](https://git.kernel.org/torvalds/c/1175b6b8d963) | [fs] | ovl: do operations on underlying file system in mounter's context |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-495 |
| FEATURE-MISSING | 4.8 | [`0956254a2d5b`](https://git.kernel.org/torvalds/c/0956254a2d5b) | [fs] | ovl: don't copy up opaqueness |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.8 | [`fe2b75952347`](https://git.kernel.org/torvalds/c/fe2b75952347) | [fs] | ovl: Fix OVL_XATTR_PREFIX |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.8 | [`d837a49bd57f`](https://git.kernel.org/torvalds/c/d837a49bd57f) | [fs] | ovl: fix POSIX ACL setting |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-495 |
| FEATURE-MISSING | 4.8 | [`bb0d2b8ad296`](https://git.kernel.org/torvalds/c/bb0d2b8ad296) | [fs] | ovl: fix sgid on directory |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-506 |
| FEATURE-MISSING | 4.8 | [`fd36570a8805`](https://git.kernel.org/torvalds/c/fd36570a8805) | [fs] | ovl: fix spelling mistake: "directries" -> "directories" |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.8 | [`656189d207f0`](https://git.kernel.org/torvalds/c/656189d207f0) | [fs] | ovl: fix warning |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.8 | [`e1ff3dd1ae52`](https://git.kernel.org/torvalds/c/e1ff3dd1ae52) | [fs] | ovl: fix workdir creation |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.8 | [`0c97be22f928`](https://git.kernel.org/torvalds/c/0c97be22f928) | [fs] | ovl: Get rid of ovl_xattr_noacl_handlers array |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-506 |
| FEATURE-MISSING | 4.8 | [`38b256973ea9`](https://git.kernel.org/torvalds/c/38b256973ea9) | [fs] | ovl: handle umask and posix_acl_default correctly on creation |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-506 |
| FEATURE-MISSING | 4.8 | [`7cb35119d067`](https://git.kernel.org/torvalds/c/7cb35119d067) | [fs] | ovl: listxattr: use strnlen() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.8 | [`c0ca3d70e8d3`](https://git.kernel.org/torvalds/c/c0ca3d70e8d3) | [fs] | ovl: modify ovl_permission() to do checks on two inodes |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-495 |
| FEATURE-MISSING | 4.8 | [`72e48481815e`](https://git.kernel.org/torvalds/c/72e48481815e) | [fs] | ovl: move some common code in a function |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-495 |
| FEATURE-MISSING | 4.8 | [`a999d7e161a0`](https://git.kernel.org/torvalds/c/a999d7e161a0) | [fs] | ovl: permission: return ECHILD instead of ENOENT |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.8 | [`eea2fb4851e9`](https://git.kernel.org/torvalds/c/eea2fb4851e9) | [fs] | ovl: proper cleanup of workdir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.8 | [`5f215013a9a1`](https://git.kernel.org/torvalds/c/5f215013a9a1) | [fs] | ovl: remove duplicated include from super.c |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.8 | [`c11b9fdd6a61`](https://git.kernel.org/torvalds/c/c11b9fdd6a61) | [fs] | ovl: remove posix_acl_default from workdir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.8 | [`51f7e52dc943`](https://git.kernel.org/torvalds/c/51f7e52dc943) | [fs] | ovl: share inode for hard link |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-506 |
| FEATURE-MISSING | 4.8 | [`30c17ebfb2a1`](https://git.kernel.org/torvalds/c/30c17ebfb2a1) | [fs] | ovl: simplify empty checking |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.8 | [`9c630ebefeee`](https://git.kernel.org/torvalds/c/9c630ebefeee) | [fs] | ovl: simplify permission checking |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-495 |
| FEATURE-MISSING | 4.8 | [`58ed4e70f253`](https://git.kernel.org/torvalds/c/58ed4e70f253) | [fs] | ovl: store ovl_entry in inode->i_private for all inodes |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-495 |
| FEATURE-MISSING | 4.8 | [`39b681f8026c`](https://git.kernel.org/torvalds/c/39b681f8026c) | [fs] | ovl: store real inode pointer in ->i_private |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-495 |
| FEATURE-MISSING | 4.8 | [`0eb45fc3bb7a`](https://git.kernel.org/torvalds/c/0eb45fc3bb7a) | [fs] | ovl: Switch to generic_getxattr |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.8 | [`0e585ccc13b3`](https://git.kernel.org/torvalds/c/0e585ccc13b3) | [fs] | ovl: Switch to generic_removexattr |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-506 |
| FEATURE-MISSING | 4.8 | [`d719e8f268fa`](https://git.kernel.org/torvalds/c/d719e8f268fa) | [fs] | ovl: update atime on upper |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.8 | [`026e5e0cc124`](https://git.kernel.org/torvalds/c/026e5e0cc124) | [fs] | ovl: update doc |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.8 | [`026e5e0cc124`](https://git.kernel.org/torvalds/c/026e5e0cc124) | [fs] | ovl: update doc |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.8 | [`5201dc449e4b`](https://git.kernel.org/torvalds/c/5201dc449e4b) | [fs] | ovl: use cached acl on underlying layer |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.8 | [`eead4f2dc4f8`](https://git.kernel.org/torvalds/c/eead4f2dc4f8) | [fs] | ovl: use generic_delete_inode |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-506 |
| FEATURE-MISSING | 4.9 | [`655042cc1406`](https://git.kernel.org/torvalds/c/655042cc1406) | [fs] | overlayfs: Fix setting IOP_XATTR flag |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.9 | [`8b326c61de08`](https://git.kernel.org/torvalds/c/8b326c61de08) | [fs] | ovl: copy_up_xattr(): use strnlen |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.9 | [`8eac98b8beb4`](https://git.kernel.org/torvalds/c/8eac98b8beb4) | [fs] | ovl: during copy up, switch to mounter's creds early |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-517 |
| FEATURE-MISSING | 4.9 | [`cb348edb6bef`](https://git.kernel.org/torvalds/c/cb348edb6bef) | [fs] | ovl: explain error values when removing acl from workdir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.9 | [`c4fcfc1619ea`](https://git.kernel.org/torvalds/c/c4fcfc1619ea) | [fs] | ovl: fix d_real() for stacked fs |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.9 | [`b93d4a0eb308`](https://git.kernel.org/torvalds/c/b93d4a0eb308) | [fs] | ovl: fix get_acl() on tmpfs |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.9 | [`6a45b3628ce4`](https://git.kernel.org/torvalds/c/6a45b3628ce4) | [fs] | ovl: Fix info leak in ovl_lookup_temp() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.9 | [`641089c1549d`](https://git.kernel.org/torvalds/c/641089c1549d) | [fs] | ovl: fsync after copy-up |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.9 | [`2b6bc7f48d34`](https://git.kernel.org/torvalds/c/2b6bc7f48d34) | [fs] | ovl: lookup: do getxattr with mounter's permission |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.9 | [`fd3220d37b1f`](https://git.kernel.org/torvalds/c/fd3220d37b1f) | [fs] | ovl: update S_ISGID when setting posix ACLs |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.9 | [`78a3fa4f3249`](https://git.kernel.org/torvalds/c/78a3fa4f3249) | [fs] | ovl: use generic_readlink |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-562 |
| FEATURE-MISSING | 4.10 | [`c412ce498396`](https://git.kernel.org/torvalds/c/c412ce498396) | [fs] | ovl: add ovl_dentry_is_whiteout() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`688ea0e5a0e2`](https://git.kernel.org/torvalds/c/688ea0e5a0e2) | [fs] | ovl: allow redirect_dir to default to "on" |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`3ea22a71b65b`](https://git.kernel.org/torvalds/c/3ea22a71b65b) | [fs] | ovl: allow setting max size of redirect |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`d15951198eac`](https://git.kernel.org/torvalds/c/d15951198eac) | [fs] | ovl: check for emptiness of redirect dir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`3ee23ff1025a`](https://git.kernel.org/torvalds/c/3ee23ff1025a) | [fs] | ovl: check lower existence of rename target |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`2aff4534b6c4`](https://git.kernel.org/torvalds/c/2aff4534b6c4) | [fs] | ovl: check lower existence when removing |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`6b2d5fe46fa8`](https://git.kernel.org/torvalds/c/6b2d5fe46fa8) | [fs] | ovl: check namelen |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`32a3d848eb91`](https://git.kernel.org/torvalds/c/32a3d848eb91) | [fs] | ovl: clean up kstat usage |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`e28edc46b8e2`](https://git.kernel.org/torvalds/c/e28edc46b8e2) | [fs] | ovl: consolidate lookup for underlying layers |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`97c684cc9110`](https://git.kernel.org/torvalds/c/97c684cc9110) | [fs] | ovl: create directories inside merged parent opaque |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`804032fabb3b`](https://git.kernel.org/torvalds/c/804032fabb3b) | [fs] | ovl: don't check rename to self |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`99f5d08e3640`](https://git.kernel.org/torvalds/c/99f5d08e3640) | [fs] | ovl: don't check sticky |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`48fab5d7c750`](https://git.kernel.org/torvalds/c/48fab5d7c750) | [fs] | ovl: fix nested overlayfs mount |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`4c7d0c9cb713`](https://git.kernel.org/torvalds/c/4c7d0c9cb713) | [fs] | ovl: fix possible use after free on redirect dir lookup |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`c3c869966480`](https://git.kernel.org/torvalds/c/c3c869966480) | [fs] | ovl: fix reStructuredText syntax errors in documentation |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`313684c48cc0`](https://git.kernel.org/torvalds/c/313684c48cc0) | [fs] | ovl: fix return value of ovl_fill_super |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`9aba652190f8`](https://git.kernel.org/torvalds/c/9aba652190f8) | [fs] | ovl: fold ovl_copy_up_truncate() into ovl_copy_up() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`38e813db61c3`](https://git.kernel.org/torvalds/c/38e813db61c3) | [fs] | ovl: get rid of PURE type |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`02b69b284cd7`](https://git.kernel.org/torvalds/c/02b69b284cd7) | [fs] | ovl: lookup redirects |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`5cf5b477f0ca`](https://git.kernel.org/torvalds/c/5cf5b477f0ca) | [fs] | ovl: opaque cleanup |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`a6c606551141`](https://git.kernel.org/torvalds/c/a6c606551141) | [fs] | ovl: redirect on rename-dir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`6c02cb59e6fe`](https://git.kernel.org/torvalds/c/6c02cb59e6fe) | [fs] | ovl: rename ovl_rename2() to ovl_rename() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`370e55ace59c`](https://git.kernel.org/torvalds/c/370e55ace59c) | [fs] | ovl: rename: simplify handling of lower/merged directory |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`c5bef3a72b9d`](https://git.kernel.org/torvalds/c/c5bef3a72b9d) | [fs] | ovl: show redirect_dir mount option |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`8ee6059c58ea`](https://git.kernel.org/torvalds/c/8ee6059c58ea) | [fs] | ovl: simplify lookup |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`bbb1e54dd53c`](https://git.kernel.org/torvalds/c/bbb1e54dd53c) | [fs] | ovl: split super.c |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`ca4c8a3a8000`](https://git.kernel.org/torvalds/c/ca4c8a3a8000) | [fs] | ovl: treat special files like a regular fs |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`2b8c30e9ef14`](https://git.kernel.org/torvalds/c/2b8c30e9ef14) | [fs] | ovl: use d_is_dir() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`2ea98466491b`](https://git.kernel.org/torvalds/c/2ea98466491b) | [fs] | ovl: use vfs_clone_file_range() for copy up if possible |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.10 | [`15a77c6fe494`](https://git.kernel.org/torvalds/c/15a77c6fe494) | [fs] | userfaultfd: fix SIGBUS resulting from false rwsem wakeups |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`e7f52429b4a5`](https://git.kernel.org/torvalds/c/e7f52429b4a5) | [fs] | ovl: check if upperdir fs supports O_TMPFILE |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.11 | [`e7f52429b4a5`](https://git.kernel.org/torvalds/c/e7f52429b4a5) | [fs] | ovl: check if upperdir fs supports O_TMPFILE |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.11 | [`01ad3eb8a073`](https://git.kernel.org/torvalds/c/01ad3eb8a073) | [fs] | ovl: concurrent copy up of regular files |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.11 | [`d8514d8edb5b`](https://git.kernel.org/torvalds/c/d8514d8edb5b) | [fs] | ovl: copy up regular file using O_TMPFILE |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.11 | [`51f8f3c4e225`](https://git.kernel.org/torvalds/c/51f8f3c4e225) | [fs] | ovl: drop CAP_SYS_RESOURCE from saved mounter's credentials |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.11 | [`39d3d60a54df`](https://git.kernel.org/torvalds/c/39d3d60a54df) | [fs] | ovl: introduce copy up waitqueue |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.11 | [`e593b2bf513d`](https://git.kernel.org/torvalds/c/e593b2bf513d) | [fs] | ovl: properly implement sync_filesystem() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.11 | [`42f269b92540`](https://git.kernel.org/torvalds/c/42f269b92540) | [fs] | ovl: rearrange code in ovl_copy_up_locked() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.11 | [`8474901a33d8`](https://git.kernel.org/torvalds/c/8474901a33d8) | [fs] | userfaultfd: convert BUG() to WARN_ON_ONCE() |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`a4605a61d642`](https://git.kernel.org/torvalds/c/a4605a61d642) | [fs] | userfaultfd: correct comment about UFFD_FEATURE_PAGEFAULT_FLAG_WP |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`369cd2121be4`](https://git.kernel.org/torvalds/c/369cd2121be4) | [fs] | userfaultfd: hugetlbfs: userfaultfd_huge_must_wait for hugepmd ranges |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`ba6907db6de1`](https://git.kernel.org/torvalds/c/ba6907db6de1) | [fs] | userfaultfd: introduce vma_can_userfault |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`9cd75c3cd4c3`](https://git.kernel.org/torvalds/c/9cd75c3cd4c3) | [fs] | userfaultfd: non-cooperative: add ability to report non-PF events from uffd descriptor |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`d3aadc8ed4cb`](https://git.kernel.org/torvalds/c/d3aadc8ed4cb) | [fs] | userfaultfd: non-cooperative: dup_userfaultfd: use mm_count instead of mm_users |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`7eb76d457fd7`](https://git.kernel.org/torvalds/c/7eb76d457fd7) | [fs] | userfaultfd: non-cooperative: fix fork fctx->new memleak |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`8c9e7bb7a41f`](https://git.kernel.org/torvalds/c/8c9e7bb7a41f) | [fs] | userfaultfd: non-cooperative: release all ctx in dup_userfaultfd_complete |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`656031445d5a`](https://git.kernel.org/torvalds/c/656031445d5a) | [fs] | userfaultfd: non-cooperative: report all available features to userland |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`9a69a829f9b6`](https://git.kernel.org/torvalds/c/9a69a829f9b6) | [fs] | userfaultfd: non-cooperative: robustness check |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`6dcc27fd3943`](https://git.kernel.org/torvalds/c/6dcc27fd3943) | [fs] | userfaultfd: non-cooperative: Split the find_userfault() routine |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`09fa5296a40d`](https://git.kernel.org/torvalds/c/09fa5296a40d) | [fs] | userfaultfd: non-cooperative: wake userfaults after UFFDIO_UNREGISTER |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`2378cd6181ed`](https://git.kernel.org/torvalds/c/2378cd6181ed) | [fs] | userfaultfd: remove wrong comment from userfaultfd_ctx_get() |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`6bbc4a4144b1`](https://git.kernel.org/torvalds/c/6bbc4a4144b1) | [fs] | userfaultfd: shmem: __do_fault requires VM_FAULT_NOPAGE |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.12 | [`7bcd74b98d7b`](https://git.kernel.org/torvalds/c/7bcd74b98d7b) | [fs] | ovl: check if all layers are on the same fs |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`b0990fbbbd14`](https://git.kernel.org/torvalds/c/b0990fbbbd14) | [fs] | ovl: check IS_APPEND() on real upper inode |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`82b749b2c65e`](https://git.kernel.org/torvalds/c/82b749b2c65e) | [fs] | ovl: check on mount time if upper fs supports setting xattr |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`72b608f08528`](https://git.kernel.org/torvalds/c/72b608f08528) | [fs] | ovl: constant st_ino/st_dev across copy up |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`e85f82ff9b8e`](https://git.kernel.org/torvalds/c/e85f82ff9b8e) | [fs] | ovl: copy-up: don't unlock between lookup and link |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`4a99f3c83dc4`](https://git.kernel.org/torvalds/c/4a99f3c83dc4) | [fs] | ovl: do not set overlay.opaque on non-dir create |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`6266d465bde0`](https://git.kernel.org/torvalds/c/6266d465bde0) | [fs] | ovl: don't fail copy-up if upper doesn't support xattr |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`fbaf94ee3cd5`](https://git.kernel.org/torvalds/c/fbaf94ee3cd5) | [fs] | ovl: don't set origin on broken lower hardlink |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`a082c6f680da`](https://git.kernel.org/torvalds/c/a082c6f680da) | [fs] | ovl: filter trusted xattr for non-admin |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`8137ae26d253`](https://git.kernel.org/torvalds/c/8137ae26d253) | [fs] | ovl: fix creds leak in copy up error path |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`21a228781104`](https://git.kernel.org/torvalds/c/21a228781104) | [fs] | ovl: handle rename when upper doesn't support xattr |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`b1eaa950f7e9`](https://git.kernel.org/torvalds/c/b1eaa950f7e9) | [fs] | ovl: lockdep annotate of nested stacked overlayfs inode lock |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`a9d019573e88`](https://git.kernel.org/torvalds/c/a9d019573e88) | [fs] | ovl: lookup non-dir copy-up-origin by file handle |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`ee1d6d37b6b8`](https://git.kernel.org/torvalds/c/ee1d6d37b6b8) | [fs] | ovl: mark upper dir with type origin entries "impure" |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`f3a1568582cc`](https://git.kernel.org/torvalds/c/f3a1568582cc) | [fs] | ovl: mark upper merge dir with type origin entries "impure" |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`5b712091a3a3`](https://git.kernel.org/torvalds/c/5b712091a3a3) | [fs] | ovl: merge getattr for dir and nondir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`b7a807dc2010`](https://git.kernel.org/torvalds/c/b7a807dc2010) | [fs] | ovl: persistent inode number for directories |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`5b6c9053fb38`](https://git.kernel.org/torvalds/c/5b6c9053fb38) | [fs] | ovl: persistent inode numbers for upper hardlinks |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`3d27573ce32b`](https://git.kernel.org/torvalds/c/3d27573ce32b) | [fs] | ovl: remove unused arg from ovl_lookup_temp() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`72d42504bd7f`](https://git.kernel.org/torvalds/c/72d42504bd7f) | [fs] | ovl: select EXPORTFS |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`595485033db2`](https://git.kernel.org/torvalds/c/595485033db2) | [fs] | ovl: set the ORIGIN type flag |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`3a1e819b4e80`](https://git.kernel.org/torvalds/c/3a1e819b4e80) | [fs] | ovl: store file handle of lower inode on copy up |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`65f2673832d4`](https://git.kernel.org/torvalds/c/65f2673832d4) | [fs] | ovl: update documentation w.r.t. constant inode numbers |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`c22205d0584b`](https://git.kernel.org/torvalds/c/c22205d0584b) | [fs] | ovl: use an auxiliary var for overlay root entry |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`33006cdf9c03`](https://git.kernel.org/torvalds/c/33006cdf9c03) | [fs] | ovl: Use designated initializers |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.12 | [`f9fe1c12d126`](https://git.kernel.org/torvalds/c/f9fe1c12d126) | [fs] | rhashtable: Add rhashtable_lookup_get_insert_fast |  | lib/rhashtable.c not in A37 tree | 3.10.0-704 |
| FEATURE-MISSING | 4.13 | [`01633fd25418`](https://git.kernel.org/torvalds/c/01633fd25418) | [fs] | overlayfs: use uuid_t instead of uuid_be |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.13 | [`55acc6618259`](https://git.kernel.org/torvalds/c/55acc6618259) | [fs] | ovl: add flag for upper in ovl_entry |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`13cf199d0088`](https://git.kernel.org/torvalds/c/13cf199d0088) | [fs] | ovl: allocate an ovl_inode struct |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`7ab8b1763fd8`](https://git.kernel.org/torvalds/c/7ab8b1763fd8) | [fs] | ovl: base tmpfile in workdir too |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`0e082555cec9`](https://git.kernel.org/torvalds/c/0e082555cec9) | [fs] | ovl: check for bad and whiteout index on lookup |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`415543d5c64f`](https://git.kernel.org/torvalds/c/415543d5c64f) | [fs] | ovl: cleanup bad and stale index entries on mount |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`caf70cb2ba5d`](https://git.kernel.org/torvalds/c/caf70cb2ba5d) | [fs] | ovl: cleanup orphan index entries |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`9020df372078`](https://git.kernel.org/torvalds/c/9020df372078) | [fs] | ovl: compare inodes |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`15932c415b3e`](https://git.kernel.org/torvalds/c/15932c415b3e) | [fs] | ovl: defer upper dir lock to tempfile link |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`61b674710cd9`](https://git.kernel.org/torvalds/c/61b674710cd9) | [fs] | ovl: do not cleanup directory and whiteout index entries |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`9412812ef548`](https://git.kernel.org/torvalds/c/9412812ef548) | [fs] | ovl: document copying layers restrictions with inodes index |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`7d90b853f932`](https://git.kernel.org/torvalds/c/7d90b853f932) | [fs] | ovl: extract helper to get temp file in copy up |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`02209d10709c`](https://git.kernel.org/torvalds/c/02209d10709c) | [fs] | ovl: factor out ovl_copy_up_inode() helper |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`f681eb1d5c02`](https://git.kernel.org/torvalds/c/f681eb1d5c02) | [fs] | ovl: fix nlink leak in ovl_rename() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`961af647fc9e`](https://git.kernel.org/torvalds/c/961af647fc9e) | [fs] | ovl: fix origin verification of index dir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`8fc646b44385`](https://git.kernel.org/torvalds/c/8fc646b44385) | [fs] | ovl: fix random return value on mount |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`1d88f183734c`](https://git.kernel.org/torvalds/c/1d88f183734c) | [fs] | ovl: fix xattr get and set with selinux |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`6b8aa129dcbe`](https://git.kernel.org/torvalds/c/6b8aa129dcbe) | [fs] | ovl: generalize ovl_create_workdir() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`2cac0c00a6cd`](https://git.kernel.org/torvalds/c/2cac0c00a6cd) | [fs] | ovl: get exclusive ownership on upper/work dirs |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`b9ac5c274b8c`](https://git.kernel.org/torvalds/c/b9ac5c274b8c) | [fs] | ovl: hash overlay non-dir inodes by copy up origin |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`59be09712ab9`](https://git.kernel.org/torvalds/c/59be09712ab9) | [fs] | ovl: implement index dir copy up |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`02bcd1577400`](https://git.kernel.org/torvalds/c/02bcd1577400) | [fs] | ovl: introduce the inodes index dir feature |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`359f392ca53e`](https://git.kernel.org/torvalds/c/359f392ca53e) | [fs] | ovl: lookup index entry for copy up origin |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`f4439de11828`](https://git.kernel.org/torvalds/c/f4439de11828) | [fs] | ovl: mark parent impure and restore timestamp on ovl_link_up() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`ea3dad18dc5f`](https://git.kernel.org/torvalds/c/ea3dad18dc5f) | [fs] | ovl: mark parent impure on ovl_link() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`09d8b586731b`](https://git.kernel.org/torvalds/c/09d8b586731b) | [fs] | ovl: move __upperdentry to ovl_inode |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`04a01ac7ed3c`](https://git.kernel.org/torvalds/c/04a01ac7ed3c) | [fs] | ovl: move cache and version to ovl_inode |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`fd210b7d67ee`](https://git.kernel.org/torvalds/c/fd210b7d67ee) | [fs] | ovl: move copy up lock out |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`13c72075ac9f`](https://git.kernel.org/torvalds/c/13c72075ac9f) | [fs] | ovl: move impure to ovl_inode |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`cf31c46347e8`](https://git.kernel.org/torvalds/c/cf31c46347e8) | [fs] | ovl: move redirect to ovl_inode |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`5f8415d6b87e`](https://git.kernel.org/torvalds/c/5f8415d6b87e) | [fs] | ovl: persistent overlay inode nlink for indexed inodes |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`a6fb235a448b`](https://git.kernel.org/torvalds/c/a6fb235a448b) | [fs] | ovl: rearrange copy up |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`f7d3daca7c79`](https://git.kernel.org/torvalds/c/f7d3daca7c79) | [fs] | ovl: relax same fs constrain for ovl_check_origin() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`a59f97ff66f0`](https://git.kernel.org/torvalds/c/a59f97ff66f0) | [fs] | ovl: remove unneeded check for IS_ERR() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`e6d2ebddbc52`](https://git.kernel.org/torvalds/c/e6d2ebddbc52) | [fs] | ovl: simplify getting inode |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`25b7713afe50`](https://git.kernel.org/torvalds/c/25b7713afe50) | [fs] | ovl: use i_private only as a key |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`a015dafcaf5b`](https://git.kernel.org/torvalds/c/a015dafcaf5b) | [fs] | ovl: use ovl_inode mutex to synchronize concurrent copy up |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`23f0ab13eaa6`](https://git.kernel.org/torvalds/c/23f0ab13eaa6) | [fs] | ovl: use struct copy_up_ctx as function argument |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`54fb347e836f`](https://git.kernel.org/torvalds/c/54fb347e836f) | [fs] | ovl: verify index dir matches upper dir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.13 | [`8b88a2e64036`](https://git.kernel.org/torvalds/c/8b88a2e64036) | [fs] | ovl: verify upper root dir matches lower root dir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.14 | [`319ba91d352a`](https://git.kernel.org/torvalds/c/319ba91d352a) | [fs] | kernfs: don't set dentry->d_fsdata |  | fs/kernfs not in A37 tree | 3.10.0-1074 |
| FEATURE-MISSING | 4.14 | [`b3885bd6edb4`](https://git.kernel.org/torvalds/c/b3885bd6edb4) | [fs] | ovl: add NULL check in ovl_alloc_inode |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.14 | [`6787341a0f15`](https://git.kernel.org/torvalds/c/6787341a0f15) | [fs] | ovl: check snprintf return |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.14 | [`191a3980c616`](https://git.kernel.org/torvalds/c/191a3980c616) | [fs] | ovl: cleanup d_real for negative |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.14 | [`b5efccbe0a12`](https://git.kernel.org/torvalds/c/b5efccbe0a12) | [fs] | ovl: constant d_ino across copy up |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.14 | [`4edb83bb1041`](https://git.kernel.org/torvalds/c/4edb83bb1041) | [fs] | ovl: constant d_ino for non-merge dirs |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.14 | [`fa0096e3bad6`](https://git.kernel.org/torvalds/c/fa0096e3bad6) | [fs] | ovl: do not cleanup unsupported index entries |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.14 | [`7c6893e3c9ab`](https://git.kernel.org/torvalds/c/7c6893e3c9ab) | [fs] | ovl: don't allow writing ioctl on lower layer |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.14 | [`dc7ab6773e81`](https://git.kernel.org/torvalds/c/dc7ab6773e81) | [fs] | ovl: fix dentry leak in ovl_indexdir_cleanup() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.14 | [`9f4ec904dbd4`](https://git.kernel.org/torvalds/c/9f4ec904dbd4) | [fs] | ovl: fix dput() of ERR_PTR in ovl_cleanup_index() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.14 | [`6eaf011144af`](https://git.kernel.org/torvalds/c/6eaf011144af) | [fs] | ovl: fix EIO from lookup of non-indexed upper |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.14 | [`e0082a0f04c4`](https://git.kernel.org/torvalds/c/e0082a0f04c4) | [fs] | ovl: fix error value printed in ovl_lookup_index() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.14 | [`939ae4efd51c`](https://git.kernel.org/torvalds/c/939ae4efd51c) | [fs] | ovl: fix false positive ESTALE on lookup |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.14 | [`954c736f865d`](https://git.kernel.org/torvalds/c/954c736f865d) | [fs] | ovl: fix may_write_real() for overlayfs directories |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.14 | [`5820dc0888d3`](https://git.kernel.org/torvalds/c/5820dc0888d3) | [fs] | ovl: fix missing unlock_rename() in ovl_do_copy_up() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.14 | [`31e8ccea3cd7`](https://git.kernel.org/torvalds/c/31e8ccea3cd7) | [fs] | ovl: fix readdir error value |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.14 | [`85fdee1eef1a`](https://git.kernel.org/torvalds/c/85fdee1eef1a) | [fs] | ovl: fix regression caused by exclusive upper/work dir protection |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.14 | [`cd91304e7190`](https://git.kernel.org/torvalds/c/cd91304e7190) | [fs] | ovl: fix relatime for directories |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.14 | [`7937a56fdf0b`](https://git.kernel.org/torvalds/c/7937a56fdf0b) | [fs] | ovl: handle ENOENT on index lookup |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.14 | [`0ce5cdc9d792`](https://git.kernel.org/torvalds/c/0ce5cdc9d792) | [fs] | ovl: Return -ENOMEM if an allocation fails ovl_lookup() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.15 | [`2a9c6d066e98`](https://git.kernel.org/torvalds/c/2a9c6d066e98) | [fs] | ovl: allocate anonymous devs for lowerdirs |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`c6fe62549313`](https://git.kernel.org/torvalds/c/c6fe62549313) | [fs] | ovl: change order of setup in ovl_fill_super() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`4155c10a0309`](https://git.kernel.org/torvalds/c/4155c10a0309) | [fs] | ovl: clean up getting lower layers |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`5064975e7fec`](https://git.kernel.org/torvalds/c/5064975e7fec) | [fs] | ovl: clean up getting upper layer |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`bca44b52f835`](https://git.kernel.org/torvalds/c/bca44b52f835) | [fs] | ovl: clean up workdir creation |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`438c84c2f0c7`](https://git.kernel.org/torvalds/c/438c84c2f0c7) | [fs] | ovl: don't follow redirects if redirect_dir=off |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.15 | [`a9075cdb467d`](https://git.kernel.org/torvalds/c/a9075cdb467d) | [fs] | ovl: factor out ovl_free_fs() helper |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`da2e6b7eeda8`](https://git.kernel.org/torvalds/c/da2e6b7eeda8) | [fs] | ovl: fix overlay: warning prefix |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`07f6fff14836`](https://git.kernel.org/torvalds/c/07f6fff14836) | [fs] | ovl: fix rmdir problem on non-merge dir with origin xattr |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`95e6d4177cb7`](https://git.kernel.org/torvalds/c/95e6d4177cb7) | [fs] | ovl: grab reference to workbasedir early |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`4eae06de482b`](https://git.kernel.org/torvalds/c/4eae06de482b) | [fs] | ovl: lockdep annotate of nested OVL_I(inode)->lock |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.15 | [`ee023c30d7d6`](https://git.kernel.org/torvalds/c/ee023c30d7d6) | [fs] | ovl: move include of ovl_entry.h into overlayfs.h |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`520d7c867f26`](https://git.kernel.org/torvalds/c/520d7c867f26) | [fs] | ovl: move ovl_get_workdir() and ovl_get_lower_layers() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`b79e05aaa166`](https://git.kernel.org/torvalds/c/b79e05aaa166) | [fs] | ovl: no direct iteration for dir with origin xattr |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`08d8f8a5b094`](https://git.kernel.org/torvalds/c/08d8f8a5b094) | [fs] | ovl: Pass ovl_get_nlink() parameters in right order |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`5455f92b54e5`](https://git.kernel.org/torvalds/c/5455f92b54e5) | [fs] | ovl: Put upperdentry if ovl_check_origin() fails |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | 4.15 | [`b93436320c1e`](https://git.kernel.org/torvalds/c/b93436320c1e) | [fs] | ovl: re-structure overlay lower layers in-memory |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`6e88256e197d`](https://git.kernel.org/torvalds/c/6e88256e197d) | [fs] | ovl: reduce the number of arguments for ovl_workdir_create() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`a0c5ad307ac0`](https://git.kernel.org/torvalds/c/a0c5ad307ac0) | [fs] | ovl: relax same fs constraint for constant st_ino |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`d9768076068f`](https://git.kernel.org/torvalds/c/d9768076068f) | [fs] | ovl: remove unneeded arg from ovl_verify_origin() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`ad204488d304`](https://git.kernel.org/torvalds/c/ad204488d304) | [fs] | ovl: rename ufs to ofs |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`ba1e563cdc6b`](https://git.kernel.org/torvalds/c/ba1e563cdc6b) | [fs] | ovl: return anonymous st_dev for lower inodes |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`95e598e7ace2`](https://git.kernel.org/torvalds/c/95e598e7ace2) | [fs] | ovl: simplify ovl_check_empty_and_clear() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`f7e3a7d947f8`](https://git.kernel.org/torvalds/c/f7e3a7d947f8) | [fs] | ovl: split out ovl_get_indexdir() from ovl_fill_super() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`c0d91fb91011`](https://git.kernel.org/torvalds/c/c0d91fb91011) | [fs] | ovl: split out ovl_get_lower_layers() from ovl_fill_super() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`53dbb0b4787e`](https://git.kernel.org/torvalds/c/53dbb0b4787e) | [fs] | ovl: split out ovl_get_lowerstack() from ovl_fill_super() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`21a3b317a601`](https://git.kernel.org/torvalds/c/21a3b317a601) | [fs] | ovl: split out ovl_get_upper() from ovl_fill_super() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`6ee8acf0f72b`](https://git.kernel.org/torvalds/c/6ee8acf0f72b) | [fs] | ovl: split out ovl_get_upperpath() from ovl_fill_super() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`8ed61dc37ee0`](https://git.kernel.org/torvalds/c/8ed61dc37ee0) | [fs] | ovl: split out ovl_get_workdir() from ovl_fill_super() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`87ad447a9d4f`](https://git.kernel.org/torvalds/c/87ad447a9d4f) | [fs] | ovl: split out ovl_get_workpath() from ovl_fill_super() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`e8d4bfe3a715`](https://git.kernel.org/torvalds/c/e8d4bfe3a715) | [fs] | ovl: Sync upper dirty data when syncing overlayfs |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`f30536f0f955`](https://git.kernel.org/torvalds/c/f30536f0f955) | [fs] | ovl: update cache version of impure parent on rename |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`b02a16e6413a`](https://git.kernel.org/torvalds/c/b02a16e6413a) | [fs] | ovl: update ctx->pos on impure dir iteration |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`8aafcb593d25`](https://git.kernel.org/torvalds/c/8aafcb593d25) | [fs] | ovl: use path_put_init() in error paths for ovl_fill_super() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.15 | [`7879cb43f9a7`](https://git.kernel.org/torvalds/c/7879cb43f9a7) | [fs] | ovl: Use PTR_ERR_OR_ZERO() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`f168f1098dd9`](https://git.kernel.org/torvalds/c/f168f1098dd9) | [fs] | ovl: add support for "nfs_export" configuration |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`9b6faee07470`](https://git.kernel.org/torvalds/c/9b6faee07470) | [fs] | ovl: check ERR_PTR() return value from ovl_encode_fh() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`7168179fcf25`](https://git.kernel.org/torvalds/c/7168179fcf25) | [fs] | ovl: check ERR_PTR() return value from ovl_lookup_real() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`2ca3c148a062`](https://git.kernel.org/torvalds/c/2ca3c148a062) | [fs] | ovl: check lower ancestry on encode of lower dir file handle |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`89a17556ce4d`](https://git.kernel.org/torvalds/c/89a17556ce4d) | [fs] | ovl: cleanup dir index when dir nlink drops to zero |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`9ee60ce24911`](https://git.kernel.org/torvalds/c/9ee60ce24911) | [fs] | ovl: cleanup temp index entries |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`05e1f11816d7`](https://git.kernel.org/torvalds/c/05e1f11816d7) | [fs] | ovl: copy up before encoding non-connectable dir file handle |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`aa3ff3c152ff`](https://git.kernel.org/torvalds/c/aa3ff3c152ff) | [fs] | ovl: copy up of disconnected dentries |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`24b33ee104ec`](https://git.kernel.org/torvalds/c/24b33ee104ec) | [fs] | ovl: create ovl_need_index() helper |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`3985b70a3e3f`](https://git.kernel.org/torvalds/c/3985b70a3e3f) | [fs] | ovl: decode connected upper dir file handles |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`3b0bfc6ed3c4`](https://git.kernel.org/torvalds/c/3b0bfc6ed3c4) | [fs] | ovl: decode indexed dir file handles |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`f71bd9cfb692`](https://git.kernel.org/torvalds/c/f71bd9cfb692) | [fs] | ovl: decode indexed non-dir file handles |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`9436a1a339fa`](https://git.kernel.org/torvalds/c/9436a1a339fa) | [fs] | ovl: decode lower file handles of unlinked but open files |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`f941866fc4a8`](https://git.kernel.org/torvalds/c/f941866fc4a8) | [fs] | ovl: decode lower non-dir file handles |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`988925164f65`](https://git.kernel.org/torvalds/c/988925164f65) | [fs] | ovl: decode pure lower dir file handles |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`8556a4205b11`](https://git.kernel.org/torvalds/c/8556a4205b11) | [fs] | ovl: decode pure upper file handles |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`a683737ba924`](https://git.kernel.org/torvalds/c/a683737ba924) | [fs] | ovl: disable index when no xattr support |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`0aceb53e73be`](https://git.kernel.org/torvalds/c/0aceb53e73be) | [fs] | ovl: do not pass overlay dentry to ovl_get_inode() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`a01f64b5c06c`](https://git.kernel.org/torvalds/c/a01f64b5c06c) | [fs] | ovl: document NFS export |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`03e1c584ffbc`](https://git.kernel.org/torvalds/c/03e1c584ffbc) | [fs] | ovl: encode lower file handles |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`b305e8443f3a`](https://git.kernel.org/torvalds/c/b305e8443f3a) | [fs] | ovl: encode non-indexed upper file handles |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`8ed5eec9d6c4`](https://git.kernel.org/torvalds/c/8ed5eec9d6c4) | [fs] | ovl: encode pure upper file handles |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`2e1a532883cf`](https://git.kernel.org/torvalds/c/2e1a532883cf) | [fs] | ovl: factor out ovl_check_origin_fh() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`91ffe7beb31e`](https://git.kernel.org/torvalds/c/91ffe7beb31e) | [fs] | ovl: factor out ovl_get_index_fh() helper |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`f81678173ce2`](https://git.kernel.org/torvalds/c/f81678173ce2) | [fs] | ovl: fix another overlay: warning prefix |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`d796e77f1dd5`](https://git.kernel.org/torvalds/c/d796e77f1dd5) | [fs] | ovl: fix failure to fsync lower dir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`9678e6303057`](https://git.kernel.org/torvalds/c/9678e6303057) | [fs] | ovl: fix inconsistent d_ino for legacy merge dir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`b5095f24e791`](https://git.kernel.org/torvalds/c/b5095f24e791) | [fs] | ovl: fix ptr_ret.cocci warnings |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`2aed489d163a`](https://git.kernel.org/torvalds/c/2aed489d163a) | [fs] | ovl: fix regression in fsnotify of overlay merge dir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`972d0093c2f7`](https://git.kernel.org/torvalds/c/972d0093c2f7) | [fs] | ovl: force r/o mount when index dir creation fails |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`051224438af2`](https://git.kernel.org/torvalds/c/051224438af2) | [fs] | ovl: generalize ovl_verify_origin() and helpers |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`31747eda41ef`](https://git.kernel.org/torvalds/c/31747eda41ef) | [fs] | ovl: hash directory inodes for fsnotify |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`764baba80168`](https://git.kernel.org/torvalds/c/764baba80168) | [fs] | ovl: hash non-dir by lower inode for fsnotify |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`7a9dadef9684`](https://git.kernel.org/torvalds/c/7a9dadef9684) | [fs] | ovl: hash non-indexed dir by upper inode for NFS export |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`fbd2d2074bde`](https://git.kernel.org/torvalds/c/fbd2d2074bde) | [fs] | ovl: index all non-dir on copy up for NFS export |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`016b720f5558`](https://git.kernel.org/torvalds/c/016b720f5558) | [fs] | ovl: index directories on copy up for NFS export |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`4b91c30a5a19`](https://git.kernel.org/torvalds/c/4b91c30a5a19) | [fs] | ovl: lookup connected ancestor of dir in inode cache |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`061701540349`](https://git.kernel.org/torvalds/c/061701540349) | [fs] | ovl: lookup indexed ancestor of lower dir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`d1fe96c0e4de`](https://git.kernel.org/torvalds/c/d1fe96c0e4de) | [fs] | ovl: redirect_dir=nofollow should not follow redirect for opaque lower |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`1eff1a1deec7`](https://git.kernel.org/torvalds/c/1eff1a1deec7) | [fs] | ovl: simplify arguments to ovl_check_origin_fh() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`c62520a83bce`](https://git.kernel.org/torvalds/c/c62520a83bce) | [fs] | ovl: store 'has_upper' and 'opaque' as bit flags |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`d583ed7d1388`](https://git.kernel.org/torvalds/c/d583ed7d1388) | [fs] | ovl: store layer index in ovl_layer |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`6d0a8a90a5bb`](https://git.kernel.org/torvalds/c/6d0a8a90a5bb) | [fs] | ovl: take lower dir inode mutex outside upper sb_writers lock |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`a5a927a7c82e`](https://git.kernel.org/torvalds/c/a5a927a7c82e) | [fs] | ovl: take mnt_want_write() for removing impure xattr |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`2ba9d57e6504`](https://git.kernel.org/torvalds/c/2ba9d57e6504) | [fs] | ovl: take mnt_want_write() for work/index dir setup |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`86eaa13046d5`](https://git.kernel.org/torvalds/c/86eaa13046d5) | [fs] | ovl: unbless lower st_ino of unverified origin |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`60b866420ba7`](https://git.kernel.org/torvalds/c/60b866420ba7) | [fs] | ovl: update documentation of inodes index feature |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`36cd95dfa1ed`](https://git.kernel.org/torvalds/c/36cd95dfa1ed) | [fs] | ovl: update Kconfig texts |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`829c28be9bb9`](https://git.kernel.org/torvalds/c/829c28be9bb9) | [fs] | ovl: use d_splice_alias() in place of d_add() in lookup |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`ad1d615cec1c`](https://git.kernel.org/torvalds/c/ad1d615cec1c) | [fs] | ovl: use directory index entries for consistency verification |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`e8f9e5b780b0`](https://git.kernel.org/torvalds/c/e8f9e5b780b0) | [fs] | ovl: verify directory index entries on mount |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`37b12916c0f8`](https://git.kernel.org/torvalds/c/37b12916c0f8) | [fs] | ovl: verify stored origin fh matches lower dir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`7db25d36d925`](https://git.kernel.org/torvalds/c/7db25d36d925) | [fs] | ovl: verify whiteout index entries on mount |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`e7dd0e71348c`](https://git.kernel.org/torvalds/c/e7dd0e71348c) | [fs] | ovl: whiteout index when union nlink drops to zero |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`24f0b1720369`](https://git.kernel.org/torvalds/c/24f0b1720369) | [fs] | ovl: whiteout orphan index entries on mount |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`8383f1748829`](https://git.kernel.org/torvalds/c/8383f1748829) | [fs] | ovl: wire up NFS export operations |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.16 | [`2db54b475ae9`](https://git.kernel.org/torvalds/c/2db54b475ae9) | [fs] | rhashtable: Add rhastable_walk_peek |  | lib/rhashtable.c not in A37 tree | 3.10.0-838 |
| FEATURE-MISSING | 4.16 | [`284cd241a18e`](https://git.kernel.org/torvalds/c/284cd241a18e) | [fs] | userfaultfd: convert to use anon_inode_getfd() | CVE-2018-18397 | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-971 |
| FEATURE-MISSING | 4.17 | [`82382acec0c9`](https://git.kernel.org/torvalds/c/82382acec0c9) | [fs] | kernfs: deal with kernfs_fill_super() failures |  | fs/kernfs not in A37 tree | 3.10.0-1074 |
| FEATURE-MISSING | 4.17 | [`795939a93e60`](https://git.kernel.org/torvalds/c/795939a93e60) | [fs] | ovl: add support for "xino" mount and config options |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.17 | [`3a291774d17e`](https://git.kernel.org/torvalds/c/3a291774d17e) | [fs] | ovl: add WARN_ON() for non-dir redirect cases |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.17 | [`5148626b806a`](https://git.kernel.org/torvalds/c/5148626b806a) | [fs] | ovl: allocate anon bdev per unique lower fs |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.17 | [`8f35cf51cd24`](https://git.kernel.org/torvalds/c/8f35cf51cd24) | [fs] | ovl: cleanup ovl_update_time() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.17 | [`0471a9cdb00f`](https://git.kernel.org/torvalds/c/0471a9cdb00f) | [fs] | ovl: cleanup setting OVL_INDEX |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.17 | [`adbf4f7ea834`](https://git.kernel.org/torvalds/c/adbf4f7ea834) | [fs] | ovl: consistent d_ino for non-samefs with xino |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.17 | [`12574a9f4c9c`](https://git.kernel.org/torvalds/c/12574a9f4c9c) | [fs] | ovl: consistent i_ino for non-samefs with xino |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.17 | [`e487d889b7e3`](https://git.kernel.org/torvalds/c/e487d889b7e3) | [fs] | ovl: constant st_ino for non-samefs with xino |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.17 | [`5b2cccd32c66`](https://git.kernel.org/torvalds/c/5b2cccd32c66) | [fs] | ovl: disambiguate ovl_encode_fh() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.17 | [`e9b77f90cc23`](https://git.kernel.org/torvalds/c/e9b77f90cc23) | [fs] | ovl: Do not check for redirect if this is last layer |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.17 | [`8a22efa15b46`](https://git.kernel.org/torvalds/c/8a22efa15b46) | [fs] | ovl: do not try to reconnect a disconnected origin dentry |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.17 | [`da309e8c055d`](https://git.kernel.org/torvalds/c/da309e8c055d) | [fs] | ovl: factor out ovl_map_dev_ino() helper |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.17 | [`3ec9b3fafcaf`](https://git.kernel.org/torvalds/c/3ec9b3fafcaf) | [fs] | ovl: fix lookup with middle layer opaque dir and absolute path redirects |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.17 | [`8b58924ad55c`](https://git.kernel.org/torvalds/c/8b58924ad55c) | [fs] | ovl: lookup in inode cache first when decoding lower file handle |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.17 | [`102b0d11cbe8`](https://git.kernel.org/torvalds/c/102b0d11cbe8) | [fs] | ovl: set d->is_dir and d->opaque for last path element |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.17 | [`452061fd4521`](https://git.kernel.org/torvalds/c/452061fd4521) | [fs] | ovl: Set d->last properly during lookup |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.17 | [`695b46e76b62`](https://git.kernel.org/torvalds/c/695b46e76b62) | [fs] | ovl: set i_ino to the value of st_ino for NFS export |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.17 | [`9f99e50d460a`](https://git.kernel.org/torvalds/c/9f99e50d460a) | [fs] | ovl: set lower layer st_dev only if setting lower st_ino |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.17 | [`16149013f839`](https://git.kernel.org/torvalds/c/16149013f839) | [fs] | ovl: update documentation w.r.t "xino" feature |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.18 | [`b148cba403f4`](https://git.kernel.org/torvalds/c/b148cba403f4) | [fs] | ovl: clean up copy-up error paths |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.18 | [`137ec526a20c`](https://git.kernel.org/torvalds/c/137ec526a20c) | [fs] | ovl: create helper ovl_create_temp() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.18 | [`4280f74a577d`](https://git.kernel.org/torvalds/c/4280f74a577d) | [fs] | ovl: Kconfig documentation fixes |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.18 | [`f73cc77c3aff`](https://git.kernel.org/torvalds/c/f73cc77c3aff) | [fs] | ovl: make ovl_create_real() cope with vfs_mkdir() safely |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.18 | [`ac6a52eb65b5`](https://git.kernel.org/torvalds/c/ac6a52eb65b5) | [fs] | ovl: Pass argument to ovl_get_inode() in a structure |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.18 | [`a8b9e0ceed32`](https://git.kernel.org/torvalds/c/a8b9e0ceed32) | [fs] | ovl: remove WARN_ON() real inode attributes mismatch |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.18 | [`95a1c8153ad8`](https://git.kernel.org/torvalds/c/95a1c8153ad8) | [fs] | ovl: return dentry from ovl_create_real() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.18 | [`dd8ac699ed6e`](https://git.kernel.org/torvalds/c/dd8ac699ed6e) | [fs] | ovl: return EIO on internal error |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.18 | [`6cf00764b008`](https://git.kernel.org/torvalds/c/6cf00764b008) | [fs] | ovl: strip debug argument from ovl_do_ helpers |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.18 | [`471ec5dcf4e7`](https://git.kernel.org/torvalds/c/471ec5dcf4e7) | [fs] | ovl: struct cattr cleanups |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.18 | [`05af4fe79b80`](https://git.kernel.org/torvalds/c/05af4fe79b80) | [fs] | ovl: update documentation for unionmount-testsuite |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.18 | [`01b39dcc9568`](https://git.kernel.org/torvalds/c/01b39dcc9568) | [fs] | ovl: use inode_insert5() to hash a newly created inode |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.18 | [`1e2c043628c7`](https://git.kernel.org/torvalds/c/1e2c043628c7) | [fs] | userfaultfd: hugetlbfs: fix userfaultfd_huge_must_wait() pte access | CVE-2018-18397 | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-971 |
| FEATURE-MISSING | 4.18 | [`31e810aa1033`](https://git.kernel.org/torvalds/c/31e810aa1033) | [fs] | userfaultfd: remove uffd flags from vma->vm_flags if UFFD_EVENT_FORK fails | CVE-2018-18397 | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-971 |
| FEATURE-MISSING | 4.19 | [`4f3572954a9d`](https://git.kernel.org/torvalds/c/4f3572954a9d) | [fs] | ovl: copy up inode flags |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.19 | [`601350ff58d5`](https://git.kernel.org/torvalds/c/601350ff58d5) | [fs] | ovl: fix access beyond unterminated strings |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.19 | [`1a8f8d2a443e`](https://git.kernel.org/torvalds/c/1a8f8d2a443e) | [fs] | ovl: fix format of setxattr debug |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.19 | [`63e132528032`](https://git.kernel.org/torvalds/c/63e132528032) | [fs] | ovl: fix memory leak on unlink of indexed file |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.19 | [`8c25741aaad8`](https://git.kernel.org/torvalds/c/8c25741aaad8) | [fs] | ovl: fix oopses in ovl_fill_super() failure paths |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.19 | [`67810693077a`](https://git.kernel.org/torvalds/c/67810693077a) | [fs] | ovl: fix wrong use of impure dir cache in ovl_iterate() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.19 | [`6faf05c2b2b4`](https://git.kernel.org/torvalds/c/6faf05c2b2b4) | [fs] | ovl: set I_CREATING on inode being created |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.20 | [`5e1275808630`](https://git.kernel.org/torvalds/c/5e1275808630) | [fs] | ovl: check whiteout in ovl_create_over_whiteout() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1035 |
| FEATURE-MISSING | 4.20 | [`155b8a0492a9`](https://git.kernel.org/torvalds/c/155b8a0492a9) | [fs] | ovl: fix decode of dir file handle with multi lower layers |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.20 | [`babf4770be0a`](https://git.kernel.org/torvalds/c/babf4770be0a) | [fs] | ovl: fix error handling in ovl_verify_set_fh() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.20 | [`6cd078702f2f`](https://git.kernel.org/torvalds/c/6cd078702f2f) | [fs] | ovl: fix recursive oi->lock in ovl_link() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | 4.20 | [`01e881f5a1fc`](https://git.kernel.org/torvalds/c/01e881f5a1fc) | [fs] | userfaultfd: check VM_MAYWRITE was set after verifying the uffd is registered | CVE-2018-18397 | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-976 |
| FEATURE-MISSING | 4.20 | [`ae62c16e105a`](https://git.kernel.org/torvalds/c/ae62c16e105a) | [fs] | userfaultfd: disable irqs when taking the waitqueue lock | CVE-2018-18397 | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-971 |
| FEATURE-MISSING | 5.0 | [`3cfd22be0ad6`](https://git.kernel.org/torvalds/c/3cfd22be0ad6) | [fs] | userfaultfd: clear flag if remap event not enabled |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-993 |
| FEATURE-MISSING | — | — | [fs] | kernfs: Enable kernfs build by default in RHEL7 |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | — | — | [fs] | kernfs: Fix kernfs interface differences |  | fs/kernfs not in A37 tree | 3.10.0-646 |
| FEATURE-MISSING | — | — | [fs] | kernfs: Now that kernfs has been rebuilt reenable INTEL_RDT |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | — | — | [fs] | kernfs: Temporarily remove kernfs the change from sysfs to kernfs can be replayed |  | fs/kernfs not in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | — | — | [fs] | overlayfs: Add call to mark_tech_preview (BZ 1180613) |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-224 |
| FEATURE-MISSING | — | — | [fs] | overlayfs: don't poison cursor |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | — | — | [fs] | overlayfs: filesystem |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | — | — | [fs] | overlayfs: fix check for cursor |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | — | — | [fs] | overlayfs: Fix the kABI for overlayfs |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | — | — | [fs] | overlayfs: initialize ->is_cursor |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | — | — | [fs] | overlayfs: limit filesystem stacking depth |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | — | — | [fs] | overlayfs: overlay filesystem documentation |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-220 |
| FEATURE-MISSING | — | — | [fs] | overlayfs: Replace vfs_readdir with iterate_dir |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-828 |
| FEATURE-MISSING | — | — | [fs] | overlayfs: VFS: (Scripted) Convert S_ISLNK/DIR/REG(dentry->d_inode) to d_is_*(dentry) |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-822 |
| FEATURE-MISSING | — | — | [fs] | overlayfs: Warn instead of error if upper filesystem does not support d_type |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-448 |
| FEATURE-MISSING | — | — | [fs] | overlayfs: Warn on copy up if a process has a R/O fd open to the lower file |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-293 |
| FEATURE-MISSING | — | — | [fs] | overlayfs: Warn on copy up if a process has a R/O fd open to the lower file V2 |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-305 |
| FEATURE-MISSING | — | — | [fs] | ovl: Enable copy-up fd checking by default |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-301 |
| FEATURE-MISSING | — | — | [fs] | ovl: fix copy-up warning |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-483 |
| FEATURE-MISSING | — | — | [fs] | ovl: fix return value from ovl_posix_acl_create() |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1035 |
| FEATURE-MISSING | — | — | [fs] | ovl: Remove email address from Documentation/filesystems/overlayfs.txt |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-448 |
| FEATURE-MISSING | — | — | [fs] | ovl: wrappers for ->i_mutex access |  | CONFIG_OVERLAY_FS does not exist in A37 tree | 3.10.0-1041 |
| FEATURE-MISSING | — | — | [fs] | userfaultfd: call mark_tech_preview |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| FEATURE-MISSING | — | — | [fs] | userfaultfd: fs/userfaultfd.c add more comments |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-302 |
| REVIEW | — | — | [fs] | arm: fix handling of F_OFD_... in oabi_fcntl64() |  | arm/arm64 or unclear | 3.10.0-704 |
