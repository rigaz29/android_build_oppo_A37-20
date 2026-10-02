# lib, include, uapi, everything else: backport candidates from CentOS 7

1309 entries: 1145 CANDIDATE, 162 FEATURE-MISSING, 2 REVIEW. Sorted by status, then by the first mainline release that has the commit. "loose" means the RHEL subject only matched after normalising its prefix; check it before cherry-picking. See ../README.md for the method and its limits.

| Status | First in | Upstream | Tag | Subject | CVE | Why relevant | RHEL |
|---|---|---|---|---|---|---|---|
| CANDIDATE | 3.11 | [`e9a17bd73a29`](https://git.kernel.org/torvalds/c/e9a17bd73a29) | [lib] | llist: llist_add() can use llist_add_batch() |  | generic code, tag [lib] | 3.10.0-100 |
| CANDIDATE | 3.11 | [`60443712195b`](https://git.kernel.org/torvalds/c/60443712195b) | [include] | mmc: core: Fix select power class after resume |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.11 | [`53275c2136cc`](https://git.kernel.org/torvalds/c/53275c2136cc) | [include] | mmc: core: Invent MMC_CAP2_FULL_PWR_CYCLE |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.11 | [`b689167984bc`](https://git.kernel.org/torvalds/c/b689167984bc) | [include] | mmc: core: Re-use code for MMC_CAP2_DETECT_ON_ERR in polling mode |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.11 | [`dcaff04d36fd`](https://git.kernel.org/torvalds/c/dcaff04d36fd) | [include] | mmc: esdhc: Fix bug when writing to SDHCI_HOST_CONTROL register |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.11 | [`ec0a7517dc25`](https://git.kernel.org/torvalds/c/ec0a7517dc25) | [include] | mmc: return mmc_of_parse() errors to caller |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.11 | [`f0710a557cb1`](https://git.kernel.org/torvalds/c/f0710a557cb1) | [include] | mmc: sdhci: add ability to stay runtime-resumed if the card is powered up |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.11 | [`156e14b126ff`](https://git.kernel.org/torvalds/c/156e14b126ff) | [include] | mmc: sdhci: fix caps2 for HS200 |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.11 | [`03a0675b2a11`](https://git.kernel.org/torvalds/c/03a0675b2a11) | [include] | mmc: sdhi/tmio: make DMA filter implementation specific |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.11 | [`eec95ee22611`](https://git.kernel.org/torvalds/c/eec95ee22611) | [include] | mmc: sdhi/tmio: switch to using dmaengine_slave_config() |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.11 | [`acac7883ee7b`](https://git.kernel.org/torvalds/c/acac7883ee7b) | [lib] | percpu-refcount: add __must_check to percpu_ref_init() and don't use ACCESS_ONCE() in percpu_ref_kill_rcu() |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.11 | [`6a24474da83e`](https://git.kernel.org/torvalds/c/6a24474da83e) | [lib] | percpu-refcount: consistently use plain (non-sched) RCU |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.11 | [`ac899061a932`](https://git.kernel.org/torvalds/c/ac899061a932) | [lib] | percpu-refcount: cosmetic updates |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.11 | [`c1ae6e9b4db0`](https://git.kernel.org/torvalds/c/c1ae6e9b4db0) | [lib] | percpu-refcount: Don't use silly cmpxchg() |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.11 | [`bc497bd33b2d`](https://git.kernel.org/torvalds/c/bc497bd33b2d) | [lib] | percpu-refcount: implement percpu_ref_cancel_init() |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.11 | [`dbece3a0f1ef`](https://git.kernel.org/torvalds/c/dbece3a0f1ef) | [lib] | percpu-refcount: implement percpu_tryget() along with percpu_ref_kill_and_confirm() |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.11 | [`a4244454df12`](https://git.kernel.org/torvalds/c/a4244454df12) | [lib] | percpu-refcount: use RCU-sched insted of normal RCU |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.11 | [`215e262f2aeb`](https://git.kernel.org/torvalds/c/215e262f2aeb) | [lib] | percpu: implement generic percpu refcounting |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.11 | [`c8587eeef8fc`](https://git.kernel.org/torvalds/c/c8587eeef8fc) | [include] | pinctrl: add pin list based GPIO ranges |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-445 |
| CANDIDATE | 3.11 | [`29000caecbe8`](https://git.kernel.org/torvalds/c/29000caecbe8) | [uapi] | ptrace: add ability to get/set signal-blocked mask |  | generic code, tag [uapi] | 3.10.0-285 |
| CANDIDATE | 3.11 | [`e23ee74777f3`](https://git.kernel.org/torvalds/c/e23ee74777f3) | [] | sched/rt: Simplify pull_rt_task() logic and remove .leaf_rt_rq_list |  | generic code, tag [none] | 3.10.0-1160.22.1 |
| CANDIDATE | 3.11 | [`069e2b351de6`](https://git.kernel.org/torvalds/c/069e2b351de6) | [include] | slob: Rework #ifdeffery in slab.h |  | generic code, tag [include] | 3.10.0-1127.3 |
| CANDIDATE | 3.12 | [`9e03aa2f830c`](https://git.kernel.org/torvalds/c/9e03aa2f830c) (loose) | [treewide] | Convert retrun typos to return |  | generic code, tag [treewide] | 3.10.0-46 |
| CANDIDATE | 3.12 | [`798ab48eecdf`](https://git.kernel.org/torvalds/c/798ab48eecdf) | [lib] | idr: Percpu ida |  | generic code, tag [lib] | 3.10.0-53 |
| CANDIDATE | 3.12 | [`c26d436cbf7a`](https://git.kernel.org/torvalds/c/c26d436cbf7a) (loose) | [lib] | introduce upper case hex ascii helpers |  | generic code, tag [lib] | 3.10.0-414 |
| CANDIDATE | 3.12 | [`d2212b4dce59`](https://git.kernel.org/torvalds/c/d2212b4dce59) | [lib] | lockref: allow relaxed cmpxchg64 variant for lockless updates |  | generic code, tag [lib] | 3.10.0-87 |
| CANDIDATE | 3.12 | [`44a0cf92926c`](https://git.kernel.org/torvalds/c/44a0cf92926c) | [lib] | lockref: fix docbook argument names |  | generic code, tag [lib] | 3.10.0-87 |
| CANDIDATE | 3.12 | [`491f6f8e5fd9`](https://git.kernel.org/torvalds/c/491f6f8e5fd9) | [lib] | lockref: use arch_mutex_cpu_relax() in CMPXCHG_LOOP() |  | generic code, tag [lib] | 3.10.0-87 |
| CANDIDATE | 3.12 | [`8f4c344696b9`](https://git.kernel.org/torvalds/c/8f4c344696b9) | [lib] | lockref: use cmpxchg64 explicitly for lockless updates |  | generic code, tag [lib] | 3.10.0-87 |
| CANDIDATE | 3.12 | [`eb18cba78c2b`](https://git.kernel.org/torvalds/c/eb18cba78c2b) | [lib] | math64: New separate div64_u64_rem helper |  | generic code, tag [lib] | 3.10.0-30 |
| CANDIDATE | 3.12 | [`6e9e318b304f`](https://git.kernel.org/torvalds/c/6e9e318b304f) | [include] | mmc: core: parse voltage from device-tree |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.12 | [`c0b887b66c95`](https://git.kernel.org/torvalds/c/c0b887b66c95) | [include] | mmc: sdhci: get voltage from sdhc host |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.12 | [`d00cadacbe47`](https://git.kernel.org/torvalds/c/d00cadacbe47) | [include] | mmc: sh_mmcif: move header include from header into .c |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.12 | [`dcbfaf36c193`](https://git.kernel.org/torvalds/c/dcbfaf36c193) | [include] | mmc: sh_mmcif: Remove .down_pwr() callback from platform data |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.12 | [`83a0c7797e96`](https://git.kernel.org/torvalds/c/83a0c7797e96) | [include] | mmc: sh_mmcif: Remove .set_pwr() callback from platform data |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.12 | [`6d6fd3674259`](https://git.kernel.org/torvalds/c/6d6fd3674259) | [include] | mmc: sh_mmcif: revision-specific CLK_CTRL2 handling |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.12 | [`967bcb77177c`](https://git.kernel.org/torvalds/c/967bcb77177c) | [include] | mmc: sh_mmcif: revision-specific Command Completion Signal handling |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.12 | [`57fcb523e5fc`](https://git.kernel.org/torvalds/c/57fcb523e5fc) | [include] | mmc: sh_mobile_sdhi: Remove .get_cd() callback from platform data |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.12 | [`1036563e1417`](https://git.kernel.org/torvalds/c/1036563e1417) | [include] | mmc: sh_mobile_sdhi: Remove .set_pwr() callback from platform data |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.12 | [`214fc309d138`](https://git.kernel.org/torvalds/c/214fc309d138) | [include] | mmc: slot-gpio: Add debouncing capability to mmc_gpio_request_cd() |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.12 | [`2b63b341d42c`](https://git.kernel.org/torvalds/c/2b63b341d42c) | [include] | mmc: tmio-mmc: Remove .get_cd() callback from platform data |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.12 | [`3af9d15c7190`](https://git.kernel.org/torvalds/c/3af9d15c7190) | [include] | mmc: tmio-mmc: Remove .set_pwr() callback from platform data |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.12 | [`274481de6cb6`](https://git.kernel.org/torvalds/c/274481de6cb6) | [include] | perf: Export struct perf_branch_entry to userspace |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-361 |
| CANDIDATE | 3.12 | [`61875f30daf6`](https://git.kernel.org/torvalds/c/61875f30daf6) | [lib] | random: allow architectures to optionally define random_get_entropy() |  | generic code, tag [lib] | 3.10.0-128 |
| CANDIDATE | 3.12 | [`9dee5c51516d`](https://git.kernel.org/torvalds/c/9dee5c51516d) | [lib] | rbtree: add postorder iteration functions |  | generic code, tag [lib] | 3.10.0-247 |
| CANDIDATE | 3.12 | [`2b5290892577`](https://git.kernel.org/torvalds/c/2b5290892577) | [lib] | rbtree: add rbtree_postorder_for_each_entry_safe() helper |  | generic code, tag [lib] | 3.10.0-247 |
| CANDIDATE | 3.12 | [`9d731e753971`](https://git.kernel.org/torvalds/c/9d731e753971) | [include] | revert "mmc: tmio-mmc: Remove .set_pwr() callback from platform data" |  | generic code, tag [include] | 3.10.0-411 |
| CANDIDATE | 3.12 | [`1370e97bb2eb`](https://git.kernel.org/torvalds/c/1370e97bb2eb) | [lib] | seqlock: Add a new locking reader type |  | generic code, tag [lib] | 3.10.0-87 |
| CANDIDATE | 3.12 | [`7d50195f6c50`](https://git.kernel.org/torvalds/c/7d50195f6c50) | [include] | usb: host: Faraday fotg210-hcd driver |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.12 | [`9cf7b244187b`](https://git.kernel.org/torvalds/c/9cf7b244187b) | [include] | usb: of: fix build breakage caused by recent patches |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.12 | [`3fa4d7344be0`](https://git.kernel.org/torvalds/c/3fa4d7344be0) | [include] | usb: phy: rename nop_usb_xceiv => usb_phy_gen_xceiv |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.12 | [`94468783cd96`](https://git.kernel.org/torvalds/c/94468783cd96) | [include] | usb: usb_phy_gen: refine conditional declaration of usb_nop_xceiv_register |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.13 | [`db751fe3ea68`](https://git.kernel.org/torvalds/c/db751fe3ea68) | [linux] | cpuset: Fix potential deadlock w/ set_mems_allowed |  | CONFIG_CGROUPS=y in A37 | 3.10.0-1015 |
| CANDIDATE | 3.13 | [`6e95fcaa42e5`](https://git.kernel.org/torvalds/c/6e95fcaa42e5) (loose) | [lib] | crc32: add functionality to combine two crc32{, c}s in GF(2) |  | generic code, tag [lib] | 3.10.0-128 |
| CANDIDATE | 3.13 | [`efba721f636e`](https://git.kernel.org/torvalds/c/efba721f636e) (loose) | [lib] | crc32: add test cases for crc32{, c}_combine routines |  | generic code, tag [lib] | 3.10.0-128 |
| CANDIDATE | 3.13 | [`d921e049a02c`](https://git.kernel.org/torvalds/c/d921e049a02c) (loose) | [lib] | crc32: clean up spacing in test cases |  | generic code, tag [lib] | 3.10.0-128 |
| CANDIDATE | 3.13 | [`cc0ac1999589`](https://git.kernel.org/torvalds/c/cc0ac1999589) (loose) | [lib] | crc32: conditionally resched when running testcases |  | generic code, tag [lib] | 3.10.0-128 |
| CANDIDATE | 3.13 | [`165148396d8a`](https://git.kernel.org/torvalds/c/165148396d8a) (loose) | [lib] | crc32: reduce number of cases for crc32{, c}_combine |  | generic code, tag [lib] | 3.10.0-128 |
| CANDIDATE | 3.13 | [`d468bf9ecaab`](https://git.kernel.org/torvalds/c/d468bf9ecaab) | [include] | gpio: add API to be strict about GPIO IRQ usage |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.13 | [`403c1d0be5cc`](https://git.kernel.org/torvalds/c/403c1d0be5cc) | [include] | gpio: provide stubs for devres gpio functions |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.13 | [`936e15dd2128`](https://git.kernel.org/torvalds/c/936e15dd2128) | [include] | gpiolib / acpi: convert to gpiod interfaces |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.13 | [`bae48da237fc`](https://git.kernel.org/torvalds/c/bae48da237fc) | [include] | gpiolib: add gpiod_get() and gpiod_put() functions |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.13 | [`c9a9972b6f09`](https://git.kernel.org/torvalds/c/c9a9972b6f09) | [include] | gpiolib: add missing declarations |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.13 | [`79a9becda894`](https://git.kernel.org/torvalds/c/79a9becda894) | [include] | gpiolib: export descriptor-based GPIO interface |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.13 | [`335d7a7d63aa`](https://git.kernel.org/torvalds/c/335d7a7d63aa) | [include] | gpiolib: include gpio/consumer.h in of_gpio.h for desc_to_gpio() |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.13 | [`af8b6375a829`](https://git.kernel.org/torvalds/c/af8b6375a829) | [include] | gpiolib: port of_ functions to use gpiod |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.13 | [`f3ed0b66482f`](https://git.kernel.org/torvalds/c/f3ed0b66482f) | [include] | gpiolib: provide a declaration of seq_file in gpio/driver.h |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.13 | [`53e7cac35db5`](https://git.kernel.org/torvalds/c/53e7cac35db5) | [include] | gpiolib: use dedicated flags for GPIO properties |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.13 | [`3b5a7ab40c2a`](https://git.kernel.org/torvalds/c/3b5a7ab40c2a) | [uapi] | input: add SW_MUTE_DEVICE switch definition |  | CONFIG_INPUT=y in A37 | 3.10.0-612 |
| CANDIDATE | 3.13 | [`26ea12dec0c8`](https://git.kernel.org/torvalds/c/26ea12dec0c8) | [lib] | kobject: grab an extra reference on kobject->sd to allow duplicate deletes |  | generic code, tag [lib] | 3.10.0-612 |
| CANDIDATE | 3.13 | [`4d22378221bd`](https://git.kernel.org/torvalds/c/4d22378221bd) | [include] | mmc: core: Add MMC_CAP_RUNTIME_RESUME to resume at runtime_resume |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.13 | [`71ef1ea418ee`](https://git.kernel.org/torvalds/c/71ef1ea418ee) | [include] | mmc: core: clean up duplicate macros |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.13 | [`878e200bbb1f`](https://git.kernel.org/torvalds/c/878e200bbb1f) | [include] | mmc: core: Do not poll for busy with status cmd for all switch cmds |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.13 | [`6904115095ad`](https://git.kernel.org/torvalds/c/6904115095ad) | [include] | mmc: core: Move cached value of the negotiated ocr mask to card struct |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.13 | [`b83e867026ca`](https://git.kernel.org/torvalds/c/b83e867026ca) | [include] | mmc: core: remove dead function mmc_try_claim_host |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.13 | [`3c0d22e8180b`](https://git.kernel.org/torvalds/c/3c0d22e8180b) | [include] | mmc: core: Remove deprecated mmc_suspend\|resume_host APIs |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.13 | [`9ec775f7efd6`](https://git.kernel.org/torvalds/c/9ec775f7efd6) | [include] | mmc: Don't force card to active state when entering suspend/shutdown |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.13 | [`f6f0747e5bc6`](https://git.kernel.org/torvalds/c/f6f0747e5bc6) | [include] | of: Add empty for_each_available_child_of_node() macro definition |  | CONFIG_OF=y in A37 | 3.10.0-422 |
| CANDIDATE | 3.13 | [`954e04b9491a`](https://git.kernel.org/torvalds/c/954e04b9491a) | [include] | of: introduce of_get_available_child_count |  | CONFIG_OF=y in A37 | 3.10.0-422 |
| CANDIDATE | 3.13 | [`098faf5805c8`](https://git.kernel.org/torvalds/c/098faf5805c8) | [lib] | percpu_counter: make APIs irq safe |  | generic code, tag [lib] | 3.10.0-10 |
| CANDIDATE | 3.13 | [`d1969a84dd6a`](https://git.kernel.org/torvalds/c/d1969a84dd6a) | [lib] | percpu_counter: unbreak __percpu_counter_add() |  | generic code, tag [lib] | 3.10.0-143 |
| CANDIDATE | 3.13 | [`1dddc01af0d4`](https://git.kernel.org/torvalds/c/1dddc01af0d4) | [lib] | percpu_ida: add an API to return free tags |  | generic code, tag [lib] | 3.10.0-53 |
| CANDIDATE | 3.13 | [`7fc2ba17e8bf`](https://git.kernel.org/torvalds/c/7fc2ba17e8bf) | [lib] | percpu_ida: add percpu_ida_for_each_free |  | generic code, tag [lib] | 3.10.0-53 |
| CANDIDATE | 3.13 | [`e26b53d0b287`](https://git.kernel.org/torvalds/c/e26b53d0b287) | [lib] | percpu_ida: make percpu_ida percpu size/batch configurable |  | generic code, tag [lib] | 3.10.0-53 |
| CANDIDATE | 3.13 | [`6b378382396f`](https://git.kernel.org/torvalds/c/6b378382396f) | [lib] | percpu_ida: Removing unused arguement from alloc_local_tag |  | generic code, tag [lib] | 3.10.0-100 |
| CANDIDATE | 3.13 | [`586a87e6edc9`](https://git.kernel.org/torvalds/c/586a87e6edc9) | [include] | pinctrl/gpio: non-linear GPIO ranges accesible from gpiolib |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.13 | [`66b251422be7`](https://git.kernel.org/torvalds/c/66b251422be7) | [lib] | random32: add __init prefix to prandom_start_seed_timer |  | generic code, tag [lib] | 3.10.0-128 |
| CANDIDATE | 3.13 | [`a6a9c0f1bf5a`](https://git.kernel.org/torvalds/c/a6a9c0f1bf5a) | [lib] | random32: add test cases for taus113 implementation |  | generic code, tag [lib] | 3.10.0-128 |
| CANDIDATE | 3.13 | [`38e9efcdb332`](https://git.kernel.org/torvalds/c/38e9efcdb332) | [lib] | random32: move rnd_state to linux/random.h |  | generic code, tag [lib] | 3.10.0-128 |
| CANDIDATE | 3.13 | [`a98814cef879`](https://git.kernel.org/torvalds/c/a98814cef879) | [lib] | random32: upgrade taus88 generator to taus113 from errata paper |  | generic code, tag [lib] | 3.10.0-128 |
| CANDIDATE | 3.13 | [`0125737accc5`](https://git.kernel.org/torvalds/c/0125737accc5) | [lib] | random32: use msecs_to_jiffies for reseed timer |  | generic code, tag [lib] | 3.10.0-128 |
| CANDIDATE | 3.13 | [`1310a5a99d90`](https://git.kernel.org/torvalds/c/1310a5a99d90) | [lib] | rbtree: fix rbtree_postorder_for_each_entry_safe() iterator |  | generic code, tag [lib] | 3.10.0-247 |
| CANDIDATE | 3.13 | [`ccf17cc4b815`](https://git.kernel.org/torvalds/c/ccf17cc4b815) | [] | selinux: cleanup and consolidate the XFRM alloc/clone/delete/free code |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-1160.117.1 |
| CANDIDATE | 3.13 | [`8e933359ee2c`](https://git.kernel.org/torvalds/c/8e933359ee2c) | [include] | usb: phy: generic: Add gpio_reset to platform data |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.14 | [`3b7a6418c749`](https://git.kernel.org/torvalds/c/3b7a6418c749) | [lib] | dma debug: account for cachelines and read-only mappings in overlap tracking |  | generic code, tag [lib] | 3.10.0-722 |
| CANDIDATE | 3.14 | [`59f2e7df574c`](https://git.kernel.org/torvalds/c/59f2e7df574c) | [lib] | dma-debug: fix overlap detection |  | generic code, tag [lib] | 3.10.0-722 |
| CANDIDATE | 3.14 | [`578b1e0701af`](https://git.kernel.org/torvalds/c/578b1e0701af) | [lib] | dynamic_debug: add wildcard support to filter files/functions/modules |  | generic code, tag [lib] | 3.10.0-1067 |
| CANDIDATE | 3.14 | [`e6ff9a9fa4e0`](https://git.kernel.org/torvalds/c/e6ff9a9fa4e0) | [] | fs: __fget_light() can use __fget() in slow path | CVE-2021-4083 | generic code, tag [none] | 3.10.0-1160.60.1 |
| CANDIDATE | 3.14 | [`1deb46e25625`](https://git.kernel.org/torvalds/c/1deb46e25625) | [] | fs: factor out common code in fget() and fget_raw() | CVE-2021-4083 | generic code, tag [none] | 3.10.0-1160.60.1 |
| CANDIDATE | 3.14 | [`ad4618344504`](https://git.kernel.org/torvalds/c/ad4618344504) | [] | fs: factor out common code in fget_light() and fget_raw_light() | CVE-2021-4083 | generic code, tag [none] | 3.10.0-1160.60.1 |
| CANDIDATE | 3.14 | [`bd2a31d52234`](https://git.kernel.org/torvalds/c/bd2a31d52234) | [] | get rid of fget_light() | CVE-2021-4083 | generic code, tag [none] | 3.10.0-1160.60.1 |
| CANDIDATE | 3.14 | [`5ccff85276ad`](https://git.kernel.org/torvalds/c/5ccff85276ad) | [include] | gpio / acpi: get rid of acpi_gpio.h |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.14 | [`664e3e5ac64c`](https://git.kernel.org/torvalds/c/664e3e5ac64c) | [include] | gpio / acpi: register to ACPI events automatically |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.14 | [`9fb1f39eb2d6`](https://git.kernel.org/torvalds/c/9fb1f39eb2d6) | [include] | gpio/pinctrl: make gpio_chip members typed boolean |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.14 | [`ad824783fb23`](https://git.kernel.org/torvalds/c/ad824783fb23) | [include] | gpio: better lookup method for platform GPIOs |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.14 | [`a3485d088516`](https://git.kernel.org/torvalds/c/a3485d088516) | [include] | gpio: consumer.h: Move forward declarations outside #ifdef |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.14 | [`2ebac4f8ba48`](https://git.kernel.org/torvalds/c/2ebac4f8ba48) | [include] | gpio: Remove duplicate include of errno.h |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.14 | [`f9244ae5dce1`](https://git.kernel.org/torvalds/c/f9244ae5dce1) | [include] | gpiolib: convert gpiod_lookup description to kernel-doc |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.14 | [`237217546d44`](https://git.kernel.org/torvalds/c/237217546d44) (loose) | [lib] | hash: follow-up fixups for arch hash |  | generic code, tag [lib] | 3.10.0-93 |
| CANDIDATE | 3.14 | [`0abc652c796d`](https://git.kernel.org/torvalds/c/0abc652c796d) (loose) | [include] | if_arp: add ARPHRD_6LOWPAN type |  | generic code, tag [include] | 3.10.0-422 |
| CANDIDATE | 3.14 | [`a8d4b8345e0e`](https://git.kernel.org/torvalds/c/a8d4b8345e0e) | [] | introduce __fcheck_files() to fix rcu_dereference_check_fdtable(), kill rcu_my_thread_group_empty() | CVE-2021-4083 | generic code, tag [none] | 3.10.0-1160.60.1 |
| CANDIDATE | 3.14 | [`aace05097a0f`](https://git.kernel.org/torvalds/c/aace05097a0f) | [lib] | lib/parser.c: add match_wildcard() function |  | generic code, tag [lib] | 3.10.0-1067 |
| CANDIDATE | 3.14 | [`13868bf20f2f`](https://git.kernel.org/torvalds/c/13868bf20f2f) | [include] | mmc: sdhci: add quirk for broken HS200 support |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.14 | [`e5624054c172`](https://git.kernel.org/torvalds/c/e5624054c172) | [include] | mmc: sdio: add a quirk for broken SDIO_CCCR_INTx polling |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.14 | [`5d60e500541e`](https://git.kernel.org/torvalds/c/5d60e500541e) | [include] | mmc: tmio: add new TMIO_MMC_HAVE_HIGH_REG flags |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.14 | [`3b159a6e955c`](https://git.kernel.org/torvalds/c/3b159a6e955c) | [include] | mmc: tmio: bus_shift become tmio_mmc_data member |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.14 | [`662372e42e46`](https://git.kernel.org/torvalds/c/662372e42e46) | [include] | of: restructure for_each macros to fix compile warnings |  | CONFIG_OF=y in A37 | 3.10.0-422 |
| CANDIDATE | 3.14 | [`687b0ad2751c`](https://git.kernel.org/torvalds/c/687b0ad2751c) | [lib] | percpu-refcount: Add a WARN() for ref going negative |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.14 | [`d835502f3dac`](https://git.kernel.org/torvalds/c/d835502f3dac) | [lib] | percpu_ida: fix a live lock |  | generic code, tag [lib] | 3.10.0-68 |
| CANDIDATE | 3.14 | [`6f6b5d1ec56a`](https://git.kernel.org/torvalds/c/6f6b5d1ec56a) | [lib] | percpu_ida: Make percpu_ida_alloc + callers accept task state bitmask |  | generic code, tag [lib] | 3.10.0-100 |
| CANDIDATE | 3.14 | [`e73d84e33f15`](https://git.kernel.org/torvalds/c/e73d84e33f15) | [] | posix-timers: Remove remaining uses of tasklist_lock |  | generic code, tag [none] | 3.10.0-1160.77.1 |
| CANDIDATE | 3.14 | [`3d7a1427e4ce`](https://git.kernel.org/torvalds/c/3d7a1427e4ce) | [] | posix-timers: Use sighand lock instead of tasklist_lock on timer deletion |  | generic code, tag [none] | 3.10.0-1160.77.1 |
| CANDIDATE | 3.14 | [`05efa8c943b1`](https://git.kernel.org/torvalds/c/05efa8c943b1) | [lib] | random32: avoid attempt to late reseed if in the middle of seeding |  | generic code, tag [lib] | 3.10.0-128 |
| CANDIDATE | 3.14 | [`809fa972fd90`](https://git.kernel.org/torvalds/c/809fa972fd90) | [lib] | reciprocal_divide: update/correction of the algorithm |  | generic code, tag [lib] | 3.10.0-180 |
| CANDIDATE | 3.14 | [`93079162bf0e`](https://git.kernel.org/torvalds/c/93079162bf0e) | [include] | scsi_transport_srp: Fix a race condition |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 3.14 | [`00e188ef6a7e`](https://git.kernel.org/torvalds/c/00e188ef6a7e) | [] | sockfd_lookup_light(): switch to fdget^W^Waway from fget_light | CVE-2021-4083 | generic code, tag [none] | 3.10.0-1160.60.1 |
| CANDIDATE | 3.14 | [`103e127d1f8f`](https://git.kernel.org/torvalds/c/103e127d1f8f) | [include] | usb: hcd: Remove USB phy if needed |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.14 | [`5653668c9585`](https://git.kernel.org/torvalds/c/5653668c9585) | [include] | usb: phy: move OTG FSM header |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.14 | [`99aea68134f3`](https://git.kernel.org/torvalds/c/99aea68134f3) | [] | vfs: Don't let __fdget_pos() get FMODE_PATH files | CVE-2021-4083 | generic code, tag [none] | 3.10.0-1160.60.1 |
| CANDIDATE | 3.15 | [`3ebae4f3a2e7`](https://git.kernel.org/torvalds/c/3ebae4f3a2e7) | [lib] | asmlinkage: Mark rwsem functions that can be called from assembler asmlinkage |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 3.15 | [`a4aeb2117571`](https://git.kernel.org/torvalds/c/a4aeb2117571) | [include] | ehci-platform: Add support for clks and phy passed through devicetree |  | CONFIG_USB_EHCI_HCD=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.15 | [`730876be2566`](https://git.kernel.org/torvalds/c/730876be2566) | [include] | mfd: Add realtek USB card reader driver |  | generic code, tag [include] | 3.10.0-411 |
| CANDIDATE | 3.15 | [`a2d1086de6cc`](https://git.kernel.org/torvalds/c/a2d1086de6cc) | [include] | mmc: card: Remove host cap MMC_CAP2_SANITIZE |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.15 | [`4509f847751c`](https://git.kernel.org/torvalds/c/4509f847751c) | [include] | mmc: core: Add ignore_crc flag to __mmc_switch |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.15 | [`7536d3f83aa4`](https://git.kernel.org/torvalds/c/7536d3f83aa4) | [include] | mmc: core: Enable MMC_CAP2_CACHE_CTRL as default |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.15 | [`469a00b017a9`](https://git.kernel.org/torvalds/c/469a00b017a9) | [include] | mmc: core: Remove support for MMC_CAP2_NO_SLEEP_CMD |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.15 | [`325e2f96b926`](https://git.kernel.org/torvalds/c/325e2f96b926) | [include] | mmc: core: Remove unused host cap MMC_CAP2_BROKEN_VOLTAGE |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.15 | [`1d4d77444bf4`](https://git.kernel.org/torvalds/c/1d4d77444bf4) | [include] | mmc: core: Rename cmd_timeout_ms to busy_timeout |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.15 | [`68eb80e06bfa`](https://git.kernel.org/torvalds/c/68eb80e06bfa) | [include] | mmc: core: Rename max_discard_to to max_busy_timeout |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.15 | [`10e5d9652499`](https://git.kernel.org/torvalds/c/10e5d9652499) | [include] | mmc: core: Use mmc_flush_cache() during mmc suspend |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.15 | [`42c1add97073`](https://git.kernel.org/torvalds/c/42c1add97073) | [include] | mmc: sdhci-spear: remove support for power gpio |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.15 | [`9107ebbf9652`](https://git.kernel.org/torvalds/c/9107ebbf9652) | [include] | mmc: sdhci: add support for realtek rts5250 |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.15 | [`740a221ef0e5`](https://git.kernel.org/torvalds/c/740a221ef0e5) | [include] | mmc: slot-gpio: Add GPIO descriptor based CD GPIO API |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.15 | [`259fef033ffe`](https://git.kernel.org/torvalds/c/259fef033ffe) | [include] | net: cdc_ncm: respect operator preferred MTU reported by MBIM |  | generic code, tag [include] | 3.10.0-355 |
| CANDIDATE | 3.15 | [`633fc86ff621`](https://git.kernel.org/torvalds/c/633fc86ff621) | [include] | net: ns: add ieee802154_6lowpan namespace |  | generic code, tag [include] | 3.10.0-422 |
| CANDIDATE | 3.15 | [`0c36b390a546`](https://git.kernel.org/torvalds/c/0c36b390a546) | [lib] | percpu-refcount: fix usage of this_cpu_ops |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.15 | [`b69cf53640da`](https://git.kernel.org/torvalds/c/b69cf53640da) | [linux] | perf: Fix a race between ring_buffer_detach() and ring_buffer_attach() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-1034 |
| CANDIDATE | 3.15 | [`81a44c5441d7`](https://git.kernel.org/torvalds/c/81a44c5441d7) | [] | sched: Queue RT tasks to head when prio drops |  | generic code, tag [none] | 3.10.0-1160.22.1 |
| CANDIDATE | 3.15 | [`6080cd0e9239`](https://git.kernel.org/torvalds/c/6080cd0e9239) | [include] | staging: usbip: claim ports used by shared devices |  | generic code, tag [include] | 3.10.0-365 |
| CANDIDATE | 3.15 | [`b7945b77cd03`](https://git.kernel.org/torvalds/c/b7945b77cd03) | [include] | staging: usbip: convert usbip-host driver to usb_device_driver |  | generic code, tag [include] | 3.10.0-365 |
| CANDIDATE | 3.15 | [`bfe9b3f8c522`](https://git.kernel.org/torvalds/c/bfe9b3f8c522) | [include] | usb: cdc: add MBIM extended functional descriptor structure |  | CONFIG_USB=y in A37 | 3.10.0-355 |
| CANDIDATE | 3.15 | [`57bf9b09a6ad`](https://git.kernel.org/torvalds/c/57bf9b09a6ad) | [include] | usb: phy: Add set_wakeup API |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.15 | [`9b6f0c4b9817`](https://git.kernel.org/torvalds/c/9b6f0c4b9817) | [include] | usbcore: rename struct dev_state to struct usb_dev_state |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.16 | [`da91309e0a7e`](https://git.kernel.org/torvalds/c/da91309e0a7e) | [lib] | cpumask: Utility function to set n'th cpu - local cpu first |  | generic code, tag [lib] | 3.10.0-183 |
| CANDIDATE | 3.16 | [`a88cc108f6f3`](https://git.kernel.org/torvalds/c/a88cc108f6f3) (loose) | [lib] | Export interval_tree |  | generic code, tag [lib] | 3.10.0-164 |
| CANDIDATE | 3.16 | [`aef0f62e8712`](https://git.kernel.org/torvalds/c/aef0f62e8712) | [lib] | idr: fix NULL pointer dereference when ida_remove(unallocated_id) |  | generic code, tag [lib] | 3.10.0-774 |
| CANDIDATE | 3.16 | [`8f9f665a7077`](https://git.kernel.org/torvalds/c/8f9f665a7077) | [lib] | idr: fix unexpected ID-removal when idr_remove(unallocated_id) |  | generic code, tag [lib] | 3.10.0-774 |
| CANDIDATE | 3.16 | [`5db6c6fefb1c`](https://git.kernel.org/torvalds/c/5db6c6fefb1c) | [lib] | locking/rwsem: Add CONFIG_RWSEM_SPIN_ON_OWNER |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 3.16 | [`37e9562453b8`](https://git.kernel.org/torvalds/c/37e9562453b8) | [lib] | locking/rwsem: Allow conservative optimistic spinning when readers have lock |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 3.16 | [`0cc3d01164ab`](https://git.kernel.org/torvalds/c/0cc3d01164ab) | [lib] | locking/rwsem: Fix checkpatch.pl warnings |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 3.16 | [`4fc828e24cd9`](https://git.kernel.org/torvalds/c/4fc828e24cd9) | [lib] | locking/rwsem: Support optimistic spinning |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 3.16 | [`90631822c5d3`](https://git.kernel.org/torvalds/c/90631822c5d3) | [lib] | locking/spinlocks/mcs: Convert osq lock to atomic_t to reduce overhead |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 3.16 | [`4d9d951e6b5d`](https://git.kernel.org/torvalds/c/4d9d951e6b5d) | [lib] | locking/spinlocks/mcs: Introduce and use init macro and function for osq locks |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 3.16 | [`52383431b37c`](https://git.kernel.org/torvalds/c/52383431b37c) | [include] | mm: get rid of __GFP_KMEMCG |  | generic code, tag [include] | 3.10.0-1075 |
| CANDIDATE | 3.16 | [`0a5b6438ee48`](https://git.kernel.org/torvalds/c/0a5b6438ee48) | [include] | mmc: add support for HS400 mode of eMMC5.0 |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.16 | [`297d40560bc8`](https://git.kernel.org/torvalds/c/297d40560bc8) | [include] | mmc: card.h: Use NULL instead of 0 for END_FIXUP |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.16 | [`79f7ae7c45a6`](https://git.kernel.org/torvalds/c/79f7ae7c45a6) | [include] | mmc: clarify DDR timing mode between SD-UHS and eMMC |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.16 | [`4d1f52f9a9f9`](https://git.kernel.org/torvalds/c/4d1f52f9a9f9) | [include] | mmc: core: Improve support for deferred regulators |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.16 | [`fa372a51cb5f`](https://git.kernel.org/torvalds/c/fa372a51cb5f) | [include] | mmc: Delay the card_event callback into the mmc_rescan worker |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.16 | [`cdc991790c51`](https://git.kernel.org/torvalds/c/cdc991790c51) | [include] | mmc: drop the speed mode of card's state |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.16 | [`2415c0ef618b`](https://git.kernel.org/torvalds/c/2415c0ef618b) | [include] | mmc: identify available device type to select |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.16 | [`577fb13199b1`](https://git.kernel.org/torvalds/c/577fb13199b1) | [include] | mmc: rework selection of bus speed mode |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.16 | [`d975f121011a`](https://git.kernel.org/torvalds/c/d975f121011a) | [include] | mmc: sdhci: cache timing information locally |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.16 | [`1771059cf5f9`](https://git.kernel.org/torvalds/c/1771059cf5f9) | [include] | mmc: sdhci: convert sdhci_set_clock() into a library function |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.16 | [`781e989cf593`](https://git.kernel.org/torvalds/c/781e989cf593) | [include] | mmc: sdhci: convert to new SDIO IRQ handling |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.16 | [`b537f94ce195`](https://git.kernel.org/torvalds/c/b537f94ce195) | [include] | mmc: sdhci: more efficient interrupt enable register handling |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.16 | [`0718e59ae259`](https://git.kernel.org/torvalds/c/0718e59ae259) | [include] | mmc: sdhci: move FSL ESDHC reset handling quirk into esdhc code |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.16 | [`3560db8e247a`](https://git.kernel.org/torvalds/c/3560db8e247a) | [include] | mmc: sdhci: push card_tasklet into threaded irq handler |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.16 | [`da91a8f9c0f5`](https://git.kernel.org/torvalds/c/da91a8f9c0f5) | [include] | mmc: sdhci: track whether preset mode is currently enabled in hardware |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.16 | [`bf3b5ec66bd0`](https://git.kernel.org/torvalds/c/bf3b5ec66bd0) | [include] | mmc: sdio_irq: rework sdio irq handling |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.16 | [`beeecd42c3b4`](https://git.kernel.org/torvalds/c/beeecd42c3b4) | [include] | net: cdc_ncm/cdc_mbim: adding NCM protocol statistics |  | generic code, tag [include] | 3.10.0-355 |
| CANDIDATE | 3.16 | [`50a0ffaf75e9`](https://git.kernel.org/torvalds/c/50a0ffaf75e9) | [include] | net: cdc_ncm/cdc_mbim: rework probing of NCM/MBIM functions |  | generic code, tag [include] | 3.10.0-355 |
| CANDIDATE | 3.16 | [`7d10d2610cc0`](https://git.kernel.org/torvalds/c/7d10d2610cc0) | [include] | net: cdc_ncm: fix 64bit division build error |  | generic code, tag [include] | 3.10.0-355 |
| CANDIDATE | 3.16 | [`fa83dbeee558`](https://git.kernel.org/torvalds/c/fa83dbeee558) | [include] | net: cdc_ncm: remove redundant "disconnected" flag |  | generic code, tag [include] | 3.10.0-355 |
| CANDIDATE | 3.16 | [`43e4c6dfc0fd`](https://git.kernel.org/torvalds/c/43e4c6dfc0fd) | [include] | net: cdc_ncm: set reasonable padding limits |  | generic code, tag [include] | 3.10.0-355 |
| CANDIDATE | 3.16 | [`6c4e548ff366`](https://git.kernel.org/torvalds/c/6c4e548ff366) | [include] | net: cdc_ncm: use ethtool to tune coalescing settings |  | generic code, tag [include] | 3.10.0-355 |
| CANDIDATE | 3.16 | [`50f1cb1cc8f5`](https://git.kernel.org/torvalds/c/50f1cb1cc8f5) | [include] | net: cdc_ncm: use sane defaults for rx/tx buffers |  | generic code, tag [include] | 3.10.0-355 |
| CANDIDATE | 3.16 | [`70559b8970e5`](https://git.kernel.org/torvalds/c/70559b8970e5) | [include] | net: cdc_ncm: use true max dgram count for header estimates |  | generic code, tag [include] | 3.10.0-355 |
| CANDIDATE | 3.16 | [`4fb6e25049cb`](https://git.kernel.org/torvalds/c/4fb6e25049cb) | [lib] | percpu-refcount: implement percpu_ref_tryget() |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.16 | [`2070d50e1cbe`](https://git.kernel.org/torvalds/c/2070d50e1cbe) | [lib] | percpu-refcount: rename percpu_ref_tryget() to percpu_ref_tryget_live() |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.16 | [`357d596ea7be`](https://git.kernel.org/torvalds/c/357d596ea7be) | [include] | revert "usb: gadget: net2280: Add support for PLX USB338X" |  | generic code, tag [include] | 3.10.0-365 |
| CANDIDATE | 3.16 | [`3cf2f34e1a3d`](https://git.kernel.org/torvalds/c/3cf2f34e1a3d) | [lib] | rwsem: Add comments to explain the meaning of the rwsem's count field |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 3.16 | [`c4128cac3557`](https://git.kernel.org/torvalds/c/c4128cac3557) | [include] | usb: gadget: net2280: Add support for PLX USB338X |  | CONFIG_USB_GADGET=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.16 | [`2f36ff6915c6`](https://git.kernel.org/torvalds/c/2f36ff6915c6) | [include] | usb: phy: generic: allow multiples calls to usb_phy_generic_register() |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.16 | [`dca769bd5a76`](https://git.kernel.org/torvalds/c/dca769bd5a76) | [include] | usb: phy: generic: switch over to IS_ENABLED() |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.16 | [`d7078df6be6e`](https://git.kernel.org/torvalds/c/d7078df6be6e) | [include] | usb: phy: rename <linux/usb/usb_phy_gen_xceiv.h> to <linux/usb/usb_phy_generic.h> |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.16 | [`4525beeb9aad`](https://git.kernel.org/torvalds/c/4525beeb9aad) | [include] | usb: phy: rename usb_nop_xceiv to usb_phy_generic |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.17 | [`3e3dc25fe7d5`](https://git.kernel.org/torvalds/c/3e3dc25fe7d5) | [include] | crypto: Resolve shadow warnings |  | CONFIG_CRYPTO=y in A37 | 3.10.0-446 |
| CANDIDATE | 3.17 | [`ef6b571fb892`](https://git.kernel.org/torvalds/c/ef6b571fb892) | [linux] | include/linux/mmdebug.h: add VM_WARN_ONCE() | CVE-2018-7740 | generic code, tag [linux] | 3.10.0-879 |
| CANDIDATE | 3.17 | [`d97b07c54f34`](https://git.kernel.org/torvalds/c/d97b07c54f34) | [lib] | initramfs: support initramfs that is bigger than 2GiB |  | generic code, tag [lib] | 3.10.0-588 |
| CANDIDATE | 3.17 | [`27419604f51a`](https://git.kernel.org/torvalds/c/27419604f51a) | [lib] | keys: Fix use-after-free in assoc_array_gc() |  | CONFIG_KEYS=y in A37 | 3.10.0-453 |
| CANDIDATE | 3.17 | [`3a48edc4bd68`](https://git.kernel.org/torvalds/c/3a48edc4bd68) | [include] | mmc: sdhci: Use mmc core regulator infrastucture |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.17 | [`eae7975ddf03`](https://git.kernel.org/torvalds/c/eae7975ddf03) | [lib] | percpu-refcount: add helpers for ->percpu_count accesses |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.17 | [`2d7227828e14`](https://git.kernel.org/torvalds/c/2d7227828e14) | [lib] | percpu-refcount: implement percpu_ref_reinit() and percpu_ref_is_zero() |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.17 | [`d630dc4c9adb`](https://git.kernel.org/torvalds/c/d630dc4c9adb) | [lib] | percpu-refcount: one bit is enough for REF_STATUS |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.17 | [`9a1049da9bd2`](https://git.kernel.org/torvalds/c/9a1049da9bd2) | [lib] | percpu-refcount: require percpu_ref to be exited explicitly |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.17 | [`7d742075120d`](https://git.kernel.org/torvalds/c/7d742075120d) | [lib] | percpu-refcount: use unsigned long for pcpu_count pointer |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`6ccc72b87b83`](https://git.kernel.org/torvalds/c/6ccc72b87b83) (loose) | [lib] | Add a generic cmdline parse function parse_option_str |  | generic code, tag [lib] | 3.10.0-364 |
| CANDIDATE | 3.18 | [`112eeaa7f87b`](https://git.kernel.org/torvalds/c/112eeaa7f87b) | [include] | asm-generic/io.h: Fix ioport_map() for !CONFIG_GENERIC_IOMAP |  | generic code, tag [include] | 3.10.0-382 |
| CANDIDATE | 3.18 | [`833c95456a70`](https://git.kernel.org/torvalds/c/833c95456a70) | [include] | device coredump: add new device coredump class |  | generic code, tag [include] | 3.10.0-422 |
| CANDIDATE | 3.18 | [`f9134be491de`](https://git.kernel.org/torvalds/c/f9134be491de) | [lib] | dma-debug: modify check_for_stack output |  | generic code, tag [lib] | 3.10.0-892 |
| CANDIDATE | 3.18 | [`3d9a0d2f8212`](https://git.kernel.org/torvalds/c/3d9a0d2f8212) | [lib] | dql: dql_queued() should write first to reduce bus transactions |  | generic code, tag [lib] | 3.10.0-882 |
| CANDIDATE | 3.18 | [`c15952dc18d8`](https://git.kernel.org/torvalds/c/c15952dc18d8) (loose) | [uapi] | filter: move common defines into bpf_common.h |  | generic code, tag [uapi] | 3.10.0-913 |
| CANDIDATE | 3.18 | [`daedfb22451d`](https://git.kernel.org/torvalds/c/daedfb22451d) (loose) | [uapi] | filter: split filter.h and expose eBPF to user space |  | generic code, tag [uapi] | 3.10.0-913 |
| CANDIDATE | 3.18 | [`7ca267faba8a`](https://git.kernel.org/torvalds/c/7ca267faba8a) | [include] | gpio: Increase ARCH_NR_GPIOs to 512 |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-555 |
| CANDIDATE | 3.18 | [`debfab74e453`](https://git.kernel.org/torvalds/c/debfab74e453) | [lib] | locking/rwsem: Avoid double checking before try acquiring write lock |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 3.18 | [`db0e716a1512`](https://git.kernel.org/torvalds/c/db0e716a1512) | [lib] | locking/rwsem: Move EXPORT_SYMBOL() lines to follow function definition |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 3.18 | [`2e47e84245ad`](https://git.kernel.org/torvalds/c/2e47e84245ad) | [include] | mmc: Add .multi_io_quirk callback for multi I/O HW bug |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.18 | [`48d11e067fc9`](https://git.kernel.org/torvalds/c/48d11e067fc9) | [include] | mmc: Consolidate emmc tuning blocks |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.18 | [`8af465db967b`](https://git.kernel.org/torvalds/c/8af465db967b) | [include] | mmc: core: Add new power_mode MMC_POWER_UNDEFINED |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.18 | [`89168b489915`](https://git.kernel.org/torvalds/c/89168b489915) | [include] | mmc: core: restore detect line inversion semantics |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.18 | [`b3683994843a`](https://git.kernel.org/torvalds/c/b3683994843a) | [include] | mmc: Correct the value of MMC_NUM_PHY_PARTITION |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.18 | [`3d705d14fe4c`](https://git.kernel.org/torvalds/c/3d705d14fe4c) | [include] | mmc: implement Driver Stage Register handling |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.18 | [`0abb71feb228`](https://git.kernel.org/torvalds/c/0abb71feb228) | [include] | mmc: remove MMC_CAP2_NO_MULTI_READ flags |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.18 | [`69803d4f487f`](https://git.kernel.org/torvalds/c/69803d4f487f) | [include] | mmc: Replace "enhanced_area_en" attribute by "partition_setting_completed" |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.18 | [`615413979487`](https://git.kernel.org/torvalds/c/615413979487) | [include] | mmc: sdhci: Add quirk for always getting TC with stop cmd |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.18 | [`e99783a45220`](https://git.kernel.org/torvalds/c/e99783a45220) | [include] | mmc: sdhci: handle busy-end interrupt during command |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.18 | [`9d2fa2428ae1`](https://git.kernel.org/torvalds/c/9d2fa2428ae1) | [include] | mmc: slot-gpio: add gpiod variant to get wp GPIO |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.18 | [`da29fe2bf573`](https://git.kernel.org/torvalds/c/da29fe2bf573) | [include] | mmc: tmio: add actual clock support as option |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.18 | [`6b98757e53cb`](https://git.kernel.org/torvalds/c/6b98757e53cb) | [include] | mmc: tmio: add TMIO_MMC_SDIO_STATUS_QUIRK |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.18 | [`384b2cbd56a0`](https://git.kernel.org/torvalds/c/384b2cbd56a0) | [include] | mmc: tmio: care about DMA tx/rx addr offset |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.18 | [`b8d11962c2d8`](https://git.kernel.org/torvalds/c/b8d11962c2d8) | [include] | mmc: tmio: control multiple block transfer mode |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.18 | [`e85dd04ea8c8`](https://git.kernel.org/torvalds/c/e85dd04ea8c8) | [include] | mmc: tmio: remove Renesas specific #ifdef |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.18 | [`bbf0208d3912`](https://git.kernel.org/torvalds/c/bbf0208d3912) | [include] | mmc: use .multi_io_quirk on tmio_mmc |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.18 | [`a34375ef9e65`](https://git.kernel.org/torvalds/c/a34375ef9e65) | [lib] | percpu-refcount: add @gfp to percpu_ref_init() |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`4843c3320c3d`](https://git.kernel.org/torvalds/c/4843c3320c3d) | [lib] | percpu-refcount: improve WARN messages |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`e625305b3907`](https://git.kernel.org/torvalds/c/e625305b3907) | [lib] | percpu-refcount: make percpu_ref based on longs instead of ints |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | 3.18 | [`53d91c5ce0cb`](https://git.kernel.org/torvalds/c/53d91c5ce0cb) | [lib] | Provide a binary to hex conversion function |  | generic code, tag [lib] | 3.10.0-414 |
| CANDIDATE | 3.18 | [`cb9a684acb3d`](https://git.kernel.org/torvalds/c/cb9a684acb3d) | [include] | trace, ras: Add additional PCIe AER error strings |  | generic code, tag [include] | 3.10.0-382 |
| CANDIDATE | 3.18 | [`99d440242c08`](https://git.kernel.org/torvalds/c/99d440242c08) | [include] | trace, ras: Replace bare numbers with #defines for PCIe AER error strings |  | generic code, tag [include] | 3.10.0-382 |
| CANDIDATE | 3.18 | [`05f8b35a62ef`](https://git.kernel.org/torvalds/c/05f8b35a62ef) | [include] | usb: common: add API to get if the platform supports TPL |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.18 | [`004332549522`](https://git.kernel.org/torvalds/c/004332549522) | [include] | usb: hcd: add generic PHY support |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.18 | [`3d46e73dfdb8`](https://git.kernel.org/torvalds/c/3d46e73dfdb8) | [include] | usb: rename phy to usb_phy in HCD |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.19 | [`5e19b013f55a`](https://git.kernel.org/torvalds/c/5e19b013f55a) (loose) | [lib] | bitmap: add alignment offset for bitmap_find_next_zero_area() |  | CONFIG_MD=y in A37 | 3.10.0-769 |
| CANDIDATE | 3.19 | [`3274f52073d8`](https://git.kernel.org/torvalds/c/3274f52073d8) | [uapi] | bpf: add 'flags' attribute to BPF_MAP_UPDATE_ELEM command |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 3.19 | [`5aaba36318e5`](https://git.kernel.org/torvalds/c/5aaba36318e5) | [lib] | cpumask: factor out show_cpumap into separate helper function |  | generic code, tag [lib] | 3.10.0-576 |
| CANDIDATE | 3.19 | [`e135303bd5be`](https://git.kernel.org/torvalds/c/e135303bd5be) | [include] | device: Add dev_<level>_once variants |  | generic code, tag [include] | 3.10.0-357 |
| CANDIDATE | 3.19 | [`01ce18b31153`](https://git.kernel.org/torvalds/c/01ce18b31153) | [lib] | dma-debug: introduce dma_debug_disabled |  | generic code, tag [lib] | 3.10.0-722 |
| CANDIDATE | 3.19 | [`2ce8e7ed006a`](https://git.kernel.org/torvalds/c/2ce8e7ed006a) | [lib] | dma-debug: prevent early callers from crashing |  | generic code, tag [lib] | 3.10.0-722 |
| CANDIDATE | 3.19 | [`6adc4a22f20b`](https://git.kernel.org/torvalds/c/6adc4a22f20b) | [lib] | fault-inject: add ratelimit option |  | generic code, tag [lib] | 3.10.0-785 |
| CANDIDATE | 3.19 | [`fc95e30ba33b`](https://git.kernel.org/torvalds/c/fc95e30ba33b) | [include] | mmc: block: Use dev_set\|get_drvdata() |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.19 | [`996903de92f0`](https://git.kernel.org/torvalds/c/996903de92f0) | [include] | mmc: core: add core-level function for sending tuning commands |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.19 | [`6685ac62b2f0`](https://git.kernel.org/torvalds/c/6685ac62b2f0) | [include] | mmc: core: Convert mmc_driver to device_driver |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.19 | [`433b7b1210a4`](https://git.kernel.org/torvalds/c/433b7b1210a4) | [include] | mmc: core: Don't export the to_sdio_driver macro |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.19 | [`e21aa519ee36`](https://git.kernel.org/torvalds/c/e21aa519ee36) | [include] | mmc: core: Export mmc_get_ext_csd() |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.19 | [`fe5afb13d46e`](https://git.kernel.org/torvalds/c/fe5afb13d46e) | [include] | mmc: core: Let mmc_send_tuning() to take struct mmc_host* as parameter |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.19 | [`2fc91e8b0e1c`](https://git.kernel.org/torvalds/c/2fc91e8b0e1c) | [include] | mmc: core: Remove the redundant mmc_send_ext_csd() API |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.19 | [`390e316c606d`](https://git.kernel.org/torvalds/c/390e316c606d) | [include] | mmc: core: Remove unused mmc_list_to_card() macro |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.19 | [`0f762426769a`](https://git.kernel.org/torvalds/c/0f762426769a) | [include] | mmc: core: Report firmware version for eMMC 5.0 devices |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.19 | [`e57a5f61eae7`](https://git.kernel.org/torvalds/c/e57a5f61eae7) | [include] | mmc: sdhci: Add 64-bit ADMA support |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.19 | [`9b8ffea6efb0`](https://git.kernel.org/torvalds/c/9b8ffea6efb0) | [include] | mmc: sdhci: Add a quirk for AMD SDHC transfer mode register need to be cleared for cmd without data |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.19 | [`e9fb05d5bca7`](https://git.kernel.org/torvalds/c/e9fb05d5bca7) | [include] | mmc: sdhci: Add HS400 support to SDHCI driver |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.19 | [`549c0b18485d`](https://git.kernel.org/torvalds/c/549c0b18485d) | [include] | mmc: sdhci: Clear also HS400 1.2V capability if 1.2V is not supported |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.19 | [`b5540ce1512e`](https://git.kernel.org/torvalds/c/b5540ce1512e) | [include] | mmc: sdhci: Disable re-tuning for HS400 |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.19 | [`76fe379acaeb`](https://git.kernel.org/torvalds/c/76fe379acaeb) | [include] | mmc: sdhci: Parameterize ADMA sizes and alignment |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.19 | [`4efaa6fbe1fd`](https://git.kernel.org/torvalds/c/4efaa6fbe1fd) | [include] | mmc: sdhci: Rename adma_desc to adma_table |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.19 | [`1c3d5f6ddcb9`](https://git.kernel.org/torvalds/c/1c3d5f6ddcb9) | [include] | mmc: sdhci: Use 'void *' for not 'u8 *' for ADMA data |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 3.19 | [`98a18b6ffc79`](https://git.kernel.org/torvalds/c/98a18b6ffc79) | [include] | netdevice: add ieee802154_ptr to net_device |  | generic code, tag [include] | 3.10.0-422 |
| CANDIDATE | 3.19 | [`1f33c41c03da`](https://git.kernel.org/torvalds/c/1f33c41c03da) | [include] | seq_file: Rename seq_overflow() to seq_has_overflowed() and make public |  | generic code, tag [include] | 3.10.0-414 |
| CANDIDATE | 3.19 | [`ceb6c9c862c8`](https://git.kernel.org/torvalds/c/ceb6c9c862c8) | [include] | usb / pm: Drop CONFIG_PM_RUNTIME from the USB core |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.19 | [`48bcc18076df`](https://git.kernel.org/torvalds/c/48bcc18076df) | [include] | usb: add support to the generic PHY framework in OTG |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.19 | [`e47d92545c29`](https://git.kernel.org/torvalds/c/e47d92545c29) | [include] | usb: move the OTG state from the USB PHY to the OTG structure |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.19 | [`df9f7b311db1`](https://git.kernel.org/torvalds/c/df9f7b311db1) | [include] | usb: phy: introduce usb_phy_set_event interface |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 3.19 | [`19c1eac2685b`](https://git.kernel.org/torvalds/c/19c1eac2685b) | [include] | usb: rename phy to usb_phy in OTG |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 4.0 | [`dd22f551ac0a`](https://git.kernel.org/torvalds/c/dd22f551ac0a) | [include] | block: Change direct_access calling convention |  | generic code, tag [include] | 3.10.0-427 |
| CANDIDATE | 4.0 | [`5d909c8d54b1`](https://git.kernel.org/torvalds/c/5d909c8d54b1) | [lib] | hexdump: do a few calculations ahead |  | generic code, tag [lib] | 3.10.0-414 |
| CANDIDATE | 4.0 | [`6f6f3fcb87a5`](https://git.kernel.org/torvalds/c/6f6f3fcb87a5) | [lib] | hexdump: fix ascii column for the tail of a dump |  | generic code, tag [lib] | 3.10.0-414 |
| CANDIDATE | 4.0 | [`114fc1afb2de`](https://git.kernel.org/torvalds/c/114fc1afb2de) | [lib] | hexdump: make it return number of bytes placed in buffer |  | generic code, tag [lib] | 3.10.0-414 |
| CANDIDATE | 4.0 | [`a736775db683`](https://git.kernel.org/torvalds/c/a736775db683) | [uapi] | input: add MT_TOOL_PALM |  | CONFIG_INPUT=y in A37 | 3.10.0-884 |
| CANDIDATE | 4.0 | [`73105994c57d`](https://git.kernel.org/torvalds/c/73105994c57d) | [lib] | locking/rwsem: Use task->state helpers |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 4.0 | [`83533ab28380`](https://git.kernel.org/torvalds/c/83533ab28380) | [include] | mmc: core: always check status after reset |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`04cdbbfa73eb`](https://git.kernel.org/torvalds/c/04cdbbfa73eb) | [include] | mmc: core: Make tuning block patterns static |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`0501be6429e4`](https://git.kernel.org/torvalds/c/0501be6429e4) | [include] | mmc: Resolve BKOPS compatability issue |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`d3fc5d71ac4d`](https://git.kernel.org/torvalds/c/d3fc5d71ac4d) | [include] | mmc: sdhci: add a quirk for single block transactions |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`67d0d04a762d`](https://git.kernel.org/torvalds/c/67d0d04a762d) | [include] | mmc: sdhci: add a quirk for tuning work around |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`348487cb28e6`](https://git.kernel.org/torvalds/c/348487cb28e6) | [include] | mmc: sdhci: use pipeline mmc requests to improve performance |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`010f4aa758f4`](https://git.kernel.org/torvalds/c/010f4aa758f4) | [include] | mmc: sh_mobile_sdhi: remove .init/.cleanup |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`c7ea834d8190`](https://git.kernel.org/torvalds/c/c7ea834d8190) | [include] | mmc: slot-gpio: Allow host driver to provide isr for card-detect interrupts |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`eddbc3abc5bf`](https://git.kernel.org/torvalds/c/eddbc3abc5bf) | [include] | mmc: slot-gpio: Remove option to explicitly free requested CD/WP GPIOs |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`df8aca162e5f`](https://git.kernel.org/torvalds/c/df8aca162e5f) | [include] | mmc: slot-gpio: Rework how to handle allocation of slot-gpio data |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`94b110aff867`](https://git.kernel.org/torvalds/c/94b110aff867) | [include] | mmc: tmio: add tmio_mmc_host_alloc/free() |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`de122cb17453`](https://git.kernel.org/torvalds/c/de122cb17453) | [include] | mmc: tmio: remove TMIO_MMC_HAVE_CTL_DMA_REG flag |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`e471df0bcaa1`](https://git.kernel.org/torvalds/c/e471df0bcaa1) | [include] | mmc: tmio: tmio_mmc_data has .alignment_shift |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`8b4c8f32da91`](https://git.kernel.org/torvalds/c/8b4c8f32da91) | [include] | mmc: tmio: tmio_mmc_data has .dma_rx_offset |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`7445bf9e6f4e`](https://git.kernel.org/torvalds/c/7445bf9e6f4e) | [include] | mmc: tmio: tmio_mmc_host has .bus_shift |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`00452c11ea0e`](https://git.kernel.org/torvalds/c/00452c11ea0e) | [include] | mmc: tmio: tmio_mmc_host has .clk_disable |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`4fe2ec57a15f`](https://git.kernel.org/torvalds/c/4fe2ec57a15f) | [include] | mmc: tmio: tmio_mmc_host has .clk_enable |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`7ecc09bab1e8`](https://git.kernel.org/torvalds/c/7ecc09bab1e8) | [include] | mmc: tmio: tmio_mmc_host has .dma |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`85c02ddd591e`](https://git.kernel.org/torvalds/c/85c02ddd591e) | [include] | mmc: tmio: tmio_mmc_host has .multi_io_quirk |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`dfe9a229e0a6`](https://git.kernel.org/torvalds/c/dfe9a229e0a6) | [include] | mmc: tmio: tmio_mmc_host has .write16_hook |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.0 | [`05fbf357d941`](https://git.kernel.org/torvalds/c/05fbf357d941) | [] | proc/pagemap: walk page tables under pte lock |  | CONFIG_PROC_FS=y in A37 | 3.10.0-1160.93.1 |
| CANDIDATE | 4.0 | [`44fc0e5eec00`](https://git.kernel.org/torvalds/c/44fc0e5eec00) | [include] | sched/wait: Introduce wait_on_bit_timeout() |  | generic code, tag [include] | 3.10.0-422 |
| CANDIDATE | 4.0 | [`997d5c3f4427`](https://git.kernel.org/torvalds/c/997d5c3f4427) | [] | sock: sock_dequeue_err_skb() needs hard irq safety |  | generic code, tag [none] | 3.10.0-1160.68.1 |
| CANDIDATE | 4.0 | [`314b41b16a71`](https://git.kernel.org/torvalds/c/314b41b16a71) | [include] | usb: ehci-platform: Support ehci reset after resume quirk |  | CONFIG_USB_EHCI_HCD=y in A37 | 3.10.0-365 |
| CANDIDATE | 4.0 | [`c99e76c55f68`](https://git.kernel.org/torvalds/c/c99e76c55f68) | [include] | usb: host: Introduce flag to enable use of 64-bit dma_mask for ehci-platform |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 4.0 | [`07673204777a`](https://git.kernel.org/torvalds/c/07673204777a) | [include] | usb: phy: change some comments |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.0 | [`07673204777a`](https://git.kernel.org/torvalds/c/07673204777a) | [include] | usb: phy: change some comments |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 4.0 | [`7acc9973e3c4`](https://git.kernel.org/torvalds/c/7acc9973e3c4) | [include] | usb: phy: generic: add vbus support |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 4.0 | [`7a1e890e2168`](https://git.kernel.org/torvalds/c/7a1e890e2168) | [include] | usbnet: Fix tx_bytes statistic running backward in cdc_ncm |  | CONFIG_USB_USBNET=y in A37 | 3.10.0-365 |
| CANDIDATE | 4.0 | [`1e9e39f4a298`](https://git.kernel.org/torvalds/c/1e9e39f4a298) | [include] | usbnet: Fix tx_packets stat for FLAG_MULTI_FRAME drivers |  | CONFIG_USB_USBNET=y in A37 | 3.10.0-365 |
| CANDIDATE | 4.1 | [`06ca7f68d4c8`](https://git.kernel.org/torvalds/c/06ca7f68d4c8) | [include] | crypto: api - prevent helper ciphers from being used |  | CONFIG_CRYPTO=y in A37 | 3.10.0-414 |
| CANDIDATE | 4.1 | [`34644524bce9`](https://git.kernel.org/torvalds/c/34644524bce9) (loose) | [lib] | devres: add a helper function for ioremap_wc |  | generic code, tag [lib] | 3.10.0-707 |
| CANDIDATE | 4.1 | [`d82d54af7b14`](https://git.kernel.org/torvalds/c/d82d54af7b14) | [lib] | kobject: WARN as tip when call kobject_get() to a kobject not initialized |  | generic code, tag [lib] | 3.10.0-518 |
| CANDIDATE | 4.1 | [`b3fd4f03ca0b`](https://git.kernel.org/torvalds/c/b3fd4f03ca0b) | [lib] | locking/rwsem: Avoid deceiving lock spinners |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 4.1 | [`1a99367023f6`](https://git.kernel.org/torvalds/c/1a99367023f6) | [lib] | locking/rwsem: Check for active lock before bailing on spinning |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 4.1 | [`49e4b2bcf7b8`](https://git.kernel.org/torvalds/c/49e4b2bcf7b8) | [lib] | locking/rwsem: Document barrier need when waking tasks |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 4.1 | [`9198f6edfd9c`](https://git.kernel.org/torvalds/c/9198f6edfd9c) | [lib] | locking/rwsem: Fix lock optimistic spinning when owner is not running |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 4.1 | [`7a215f89a033`](https://git.kernel.org/torvalds/c/7a215f89a033) | [lib] | locking/rwsem: Set lock ownership ASAP |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 4.1 | [`4d3199e4ca8e`](https://git.kernel.org/torvalds/c/4d3199e4ca8e) | [lib] | locking: Remove ACCESS_ONCE() usage |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 4.1 | [`74672d069b29`](https://git.kernel.org/torvalds/c/74672d069b29) | [] | md: fix md io stats accounting broken |  | CONFIG_MD=y in A37 | 3.10.0-1160.26.1 |
| CANDIDATE | 4.1 | [`e61ce6ade404`](https://git.kernel.org/torvalds/c/e61ce6ade404) | [lib] | mm: change ioremap to set up huge I/O mappings |  | generic code, tag [lib] | 3.10.0-427 |
| CANDIDATE | 4.1 | [`f5c5179b9a8a`](https://git.kernel.org/torvalds/c/f5c5179b9a8a) | [include] | mmc: core: Convert the error field in struct mmc_command\|data into an int |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.1 | [`40433267331b`](https://git.kernel.org/torvalds/c/40433267331b) | [include] | mmc: core: Remove the ->enable\|disable() callbacks |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.1 | [`03a6d291047d`](https://git.kernel.org/torvalds/c/03a6d291047d) | [include] | mmc: sdhci-spear: Remove exported header |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.1 | [`3bfa6f030a01`](https://git.kernel.org/torvalds/c/3bfa6f030a01) | [include] | mmc: sdhci: add quirk for ACMD23 broken |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.1 | [`83f13cc9af98`](https://git.kernel.org/torvalds/c/83f13cc9af98) | [include] | mmc: sdhci: Remove the sdhci exported header file |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.1 | [`f33c9d655893`](https://git.kernel.org/torvalds/c/f33c9d655893) | [include] | mmc: tmio: mmc: tmio: tmio_mmc_data has .chan_priv_?x |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.1 | [`11b58ba146cc`](https://git.kernel.org/torvalds/c/11b58ba146cc) | [lib] | netlink: Use default rhashtable hashfn |  | generic code, tag [lib] | 3.10.0-368 |
| CANDIDATE | 4.1 | [`e8c6deac6962`](https://git.kernel.org/torvalds/c/e8c6deac6962) | [include] | perf: Add data_{offset,size} to user_page |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-352 |
| CANDIDATE | 4.1 | [`96541bac0b4e`](https://git.kernel.org/torvalds/c/96541bac0b4e) | [include] | revert "mmc: core: Convert mmc_driver to device_driver" |  | generic code, tag [include] | 3.10.0-411 |
| CANDIDATE | 4.1 | [`b9f28d863594`](https://git.kernel.org/torvalds/c/b9f28d863594) | [lib] | sd, mmc, virtio_blk, string_helpers: fix block size units |  | generic code, tag [lib] | 3.10.0-904 |
| CANDIDATE | 4.1 | [`2f8a467a11ae`](https://git.kernel.org/torvalds/c/2f8a467a11ae) | [include] | usb: otg-fsm: move 2 otg fsm timers definition to otg_fsm_timer |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | 4.1 | [`6b6378355b92`](https://git.kernel.org/torvalds/c/6b6378355b92) | [lib] | x86, mm: support huge KVA mappings on x86 |  | generic code, tag [lib] | 3.10.0-427 |
| CANDIDATE | 4.2 | [`5538d294dd66`](https://git.kernel.org/torvalds/c/5538d294dd66) (loose) | [treewide] | Add missing vmalloc.h inclusion |  | generic code, tag [treewide] | 3.10.0-708 |
| CANDIDATE | 4.2 | [`2da572c959dd`](https://git.kernel.org/torvalds/c/2da572c959dd) (loose) | [lib] | add software 842 compression/decompression |  | generic code, tag [lib] | 3.10.0-296 |
| CANDIDATE | 4.2 | [`4a0e3e989d66`](https://git.kernel.org/torvalds/c/4a0e3e989d66) | [include] | cdc_ncm: Add support for moving NDP to end of NCM frame |  | CONFIG_USB_USBNET=y in A37 | 3.10.0-355 |
| CANDIDATE | 4.2 | [`ca7fc7e962fa`](https://git.kernel.org/torvalds/c/ca7fc7e962fa) (loose) | [lib] | correct 842 decompress for 32 bit |  | generic code, tag [lib] | 3.10.0-296 |
| CANDIDATE | 4.2 | [`2fc3384dc75b`](https://git.kernel.org/torvalds/c/2fc3384dc75b) | [] | cpufreq: Initialize policy->kobj while allocating policy |  | generic code, tag [none] | 3.10.0-1160.112.1 |
| CANDIDATE | 4.2 | [`21b7013414db`](https://git.kernel.org/torvalds/c/21b7013414db) | [include] | crypto: aead - Add crypto_aead_set_reqsize helper |  | CONFIG_CRYPTO=y in A37 | 3.10.0-414 |
| CANDIDATE | 4.2 | [`3c339ab83fc0`](https://git.kernel.org/torvalds/c/3c339ab83fc0) | [include] | crypto: akcipher - add PKE API |  | CONFIG_CRYPTO=y in A37 | 3.10.0-414 |
| CANDIDATE | 4.2 | [`d6ef2f198d4c`](https://git.kernel.org/torvalds/c/d6ef2f198d4c) | [include] | crypto: api - Add crypto_grab_spawn primitive |  | CONFIG_CRYPTO=y in A37 | 3.10.0-414 |
| CANDIDATE | 4.2 | [`cfc2bb32b313`](https://git.kernel.org/torvalds/c/cfc2bb32b313) | [include] | crypto: rsa - add a new rsa generic implementation |  | CONFIG_CRYPTO=y in A37 | 3.10.0-414 |
| CANDIDATE | 4.2 | [`c9d120b0b2b5`](https://git.kernel.org/torvalds/c/c9d120b0b2b5) | [lib] | dma-debug: skip debug_dma_assert_idle() when disabled |  | generic code, tag [lib] | 3.10.0-892 |
| CANDIDATE | 4.2 | [`386ecb1216f9`](https://git.kernel.org/torvalds/c/386ecb1216f9) | [lib] | drivers/scsi/scsi_debug.c: resolve sg buffer const-ness issue |  | generic code, tag [lib] | 3.10.0-624 |
| CANDIDATE | 4.2 | [`ad5fb870c486`](https://git.kernel.org/torvalds/c/ad5fb870c486) | [include] | e820, efi: add ACPI 6.0 persistent memory types |  | generic code, tag [include] | 3.10.0-427 |
| CANDIDATE | 4.2 | [`5ba97d2832f8`](https://git.kernel.org/torvalds/c/5ba97d2832f8) | [] | fs/file.c: __fget() and dup2() atomicity rules | CVE-2021-4083 | generic code, tag [none] | 3.10.0-1160.60.1 |
| CANDIDATE | 4.2 | [`985aa49556a5`](https://git.kernel.org/torvalds/c/985aa49556a5) | [include] | ib/srp: Add 64-bit LUN support |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.2 | [`3fdf70acec13`](https://git.kernel.org/torvalds/c/3fdf70acec13) | [include] | ib/srp: Avoid using uninitialized variable |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.2 | [`10081fb532a2`](https://git.kernel.org/torvalds/c/10081fb532a2) (loose) | [lib] | introduce crc_t10dif_update() |  | generic code, tag [lib] | 3.10.0-753 |
| CANDIDATE | 4.2 | [`07c09787b26d`](https://git.kernel.org/torvalds/c/07c09787b26d) | [include] | iommu, x86: Add cap_pi_support() to detect VT-d PI capability |  | generic code, tag [include] | 3.10.0-375 |
| CANDIDATE | 4.2 | [`3bf17472226b`](https://git.kernel.org/torvalds/c/3bf17472226b) | [include] | iommu: dmar: Extend struct irte for VT-d Posted-Interrupts |  | generic code, tag [include] | 3.10.0-375 |
| CANDIDATE | 4.2 | [`bf56027ff4d9`](https://git.kernel.org/torvalds/c/bf56027ff4d9) | [include] | iommu: dmar: Provide helper to copy shared irte fields |  | generic code, tag [include] | 3.10.0-375 |
| CANDIDATE | 4.2 | [`047fc8a1f9a6`](https://git.kernel.org/torvalds/c/047fc8a1f9a6) | [include] | libnvdimm, nfit, nd_blk: driver for BLK-mode access persistent memory |  | generic code, tag [include] | 3.10.0-427 |
| CANDIDATE | 4.2 | [`eaf961536e16`](https://git.kernel.org/torvalds/c/eaf961536e16) | [include] | libnvdimm, nfit: add interleave-set state-tracking infrastructure |  | generic code, tag [include] | 3.10.0-427 |
| CANDIDATE | 4.2 | [`e6dfb2de4776`](https://git.kernel.org/torvalds/c/e6dfb2de4776) | [include] | libnvdimm, nfit: dimm/memory-devices |  | generic code, tag [include] | 3.10.0-427 |
| CANDIDATE | 4.2 | [`b94d5230d06e`](https://git.kernel.org/torvalds/c/b94d5230d06e) | [include] | libnvdimm, nfit: initial libnvdimm infrastructure and NFIT support |  | generic code, tag [include] | 3.10.0-427 |
| CANDIDATE | 4.2 | [`1f7df6f88b92`](https://git.kernel.org/torvalds/c/1f7df6f88b92) | [include] | libnvdimm, nfit: regions (block-data-window, persistent memory, volatile memory) |  | generic code, tag [include] | 3.10.0-427 |
| CANDIDATE | 4.2 | [`4d88a97aa9e8`](https://git.kernel.org/torvalds/c/4d88a97aa9e8) | [include] | libnvdimm, nvdimm: dimm driver and base libnvdimm device-driver infrastructure |  | generic code, tag [include] | 3.10.0-427 |
| CANDIDATE | 4.2 | [`59aabfc7e959`](https://git.kernel.org/torvalds/c/59aabfc7e959) | [lib] | locking/rwsem: Reduce spinlock contention in wakeup after up_read()/up_write() |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 4.2 | [`f7ead7b47a75`](https://git.kernel.org/torvalds/c/f7ead7b47a75) (loose) | [lib] | make lib/842 decompress functions static |  | generic code, tag [lib] | 3.10.0-296 |
| CANDIDATE | 4.2 | [`9f6e0bff2afb`](https://git.kernel.org/torvalds/c/9f6e0bff2afb) | [include] | mmc: Add support for disabling write-protect detection |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.2 | [`f168359efbb9`](https://git.kernel.org/torvalds/c/f168359efbb9) | [include] | mmc: core: Add 'card' to drive strength selection callback |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.2 | [`b4f30a174e1f`](https://git.kernel.org/torvalds/c/b4f30a174e1f) | [include] | mmc: core: Allow card drive strength to be different to host |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.2 | [`3853a042325e`](https://git.kernel.org/torvalds/c/3853a042325e) | [include] | mmc: core: Record card drive strength |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.2 | [`dfa13ebbe334`](https://git.kernel.org/torvalds/c/dfa13ebbe334) | [include] | mmc: host: Add facility to support re-tuning |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.2 | [`208489032bdd`](https://git.kernel.org/torvalds/c/208489032bdd) | [include] | mmc: mediatek: Add Mediatek MMC driver |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.2 | [`cc4f414c885c`](https://git.kernel.org/torvalds/c/cc4f414c885c) | [include] | mmc: mmc: Add driver strength selection |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.2 | [`b097e07f5793`](https://git.kernel.org/torvalds/c/b097e07f5793) | [include] | mmc: mmc: Read card's valid driver strength mask |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.2 | [`d37e296979ed`](https://git.kernel.org/torvalds/c/d37e296979ed) | [lib] | mpilib: add mpi_read_buf() and mpi_get_size() helpers |  | generic code, tag [lib] | 3.10.0-414 |
| CANDIDATE | 4.2 | [`6a21165480a0`](https://git.kernel.org/torvalds/c/6a21165480a0) | [] | net: ipv4: route: Fix sending IGMP messages with link address |  | generic code, tag [none] | 3.10.0-1160.32.1 |
| CANDIDATE | 4.2 | [`d45337328b1f`](https://git.kernel.org/torvalds/c/d45337328b1f) | [include] | pci_ids: Add AMD KERNCZ device ID support |  | generic code, tag [include] | 3.10.0-411 |
| CANDIDATE | 4.2 | [`c9fdfa14c379`](https://git.kernel.org/torvalds/c/c9fdfa14c379) | [include] | perf: add new PERF_SAMPLE_BRANCH_IND_JUMP branch sample type |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-360 |
| CANDIDATE | 4.2 | [`d72da4a4d973`](https://git.kernel.org/torvalds/c/d72da4a4d973) | [lib] | rbtree: Make lockless searches non-fatal |  | generic code, tag [lib] | 3.10.0-713 |
| CANDIDATE | 4.2 | [`fe16d4f202c5`](https://git.kernel.org/torvalds/c/fe16d4f202c5) | [include] | revert "libata-eh: Set 'information' field for autosense" |  | generic code, tag [include] | 3.10.0-409 |
| CANDIDATE | 4.2 | [`74a80d67b831`](https://git.kernel.org/torvalds/c/74a80d67b831) | [include] | revert "libata: Implement NCQ autosense" |  | generic code, tag [include] | 3.10.0-409 |
| CANDIDATE | 4.2 | [`84ded2f8e7dd`](https://git.kernel.org/torvalds/c/84ded2f8e7dd) | [include] | revert "libata: Implement support for sense data reporting" |  | generic code, tag [include] | 3.10.0-409 |
| CANDIDATE | 4.2 | [`cfaed10d1f27`](https://git.kernel.org/torvalds/c/cfaed10d1f27) | [lib] | scatterlist: introduce sg_nents_for_len |  | generic code, tag [lib] | 3.10.0-414 |
| CANDIDATE | 4.2 | [`4cfafd3082af`](https://git.kernel.org/torvalds/c/4cfafd3082af) | [] | sched,perf: Fix periodic timers |  | generic code, tag [none] | 3.10.0-1160.72.1 |
| CANDIDATE | 4.2 | [`77a4d1a1b9a1`](https://git.kernel.org/torvalds/c/77a4d1a1b9a1) | [] | sched: Cleanup bandwidth timers |  | generic code, tag [none] | 3.10.0-1160.72.1 |
| CANDIDATE | 4.2 | [`b484403b9abe`](https://git.kernel.org/torvalds/c/b484403b9abe) | [] | sched: debug: Remove the cfs bandwidth timer_active printout |  | generic code, tag [none] | 3.10.0-1160.72.1 |
| CANDIDATE | 4.2 | [`31f02455455d`](https://git.kernel.org/torvalds/c/31f02455455d) | [include] | sparse: fix misplaced __pmem definition |  | generic code, tag [include] | 3.10.0-427 |
| CANDIDATE | 4.2 | [`dccf7369652f`](https://git.kernel.org/torvalds/c/dccf7369652f) | [include] | spi: pxa2xx: Prepare for new Intel LPSS SPI type |  | generic code, tag [include] | 3.10.0-445 |
| CANDIDATE | 4.2 | [`a09e23f53e2c`](https://git.kernel.org/torvalds/c/a09e23f53e2c) | [include] | usb: gadget: net2280: check interrupts for all endpoints |  | CONFIG_USB_GADGET=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.2 | [`c65c4f052bc3`](https://git.kernel.org/torvalds/c/c65c4f052bc3) | [include] | usb: gadget: net2280: fix use of GPEP in both directions |  | CONFIG_USB_GADGET=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.2 | [`f0e6a326deec`](https://git.kernel.org/torvalds/c/f0e6a326deec) | [include] | usb: hcd.h : Removed an unnecessary function prototype usb_find_interface_driver() |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.2 | [`e842b84c8e72`](https://git.kernel.org/torvalds/c/e842b84c8e72) | [include] | usb: phy: Add interface to get phy give of device_node |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.2 | [`307c858bc245`](https://git.kernel.org/torvalds/c/307c858bc245) | [include] | usb: phy: add static inline wrapper for devm_usb_get_phy_by_node |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.2 | [`138c3f03b017`](https://git.kernel.org/torvalds/c/138c3f03b017) (loose) | [include] | usb:fsl: Add support for USB controller version-2.5 |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.3 | [`2377799c084d`](https://git.kernel.org/torvalds/c/2377799c084d) | [include] | average: provide macro to create static EWMA |  | generic code, tag [include] | 3.10.0-444 |
| CANDIDATE | 4.3 | [`71db87ba5700`](https://git.kernel.org/torvalds/c/71db87ba5700) | [include] | bus: subsys: update return type of ->remove_dev() to void |  | generic code, tag [include] | 3.10.0-412 |
| CANDIDATE | 4.3 | [`319382a69708`](https://git.kernel.org/torvalds/c/319382a69708) | [include] | crypto: api - Add instance free function to crypto_type |  | CONFIG_CRYPTO=y in A37 | 3.10.0-414 |
| CANDIDATE | 4.3 | [`7a7ffe65c8c5`](https://git.kernel.org/torvalds/c/7a7ffe65c8c5) | [include] | crypto: skcipher - Add top-level skcipher interface |  | CONFIG_CRYPTO=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.3 | [`65be2c79acc3`](https://git.kernel.org/torvalds/c/65be2c79acc3) | [include] | cxlflash: Superpipe support |  | generic code, tag [include] | 3.10.0-407 |
| CANDIDATE | 4.3 | [`2cb79266d6b2`](https://git.kernel.org/torvalds/c/2cb79266d6b2) | [include] | cxlflash: Virtual LUN support |  | generic code, tag [include] | 3.10.0-407 |
| CANDIDATE | 4.3 | [`24cad9a7e8bf`](https://git.kernel.org/torvalds/c/24cad9a7e8bf) | [include] | ib/cm: Expose BTH P_Key in CM and SIDR request events |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`15865e7dab62`](https://git.kernel.org/torvalds/c/15865e7dab62) | [include] | ib/cm: Expose service ID in request events |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`73fec7fd04a2`](https://git.kernel.org/torvalds/c/73fec7fd04a2) | [include] | ib/cm: Remove compare_data checks |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`067b171b8679`](https://git.kernel.org/torvalds/c/067b171b8679) | [include] | ib/cm: Share listening CM IDs |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`bc10ed7d3d19`](https://git.kernel.org/torvalds/c/bc10ed7d3d19) | [include] | ib/core: Add rdma netlink helper functions |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`03db3a2d81e6`](https://git.kernel.org/torvalds/c/03db3a2d81e6) | [include] | ib/core: Add RoCE GID table management |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`d9f272c523db`](https://git.kernel.org/torvalds/c/d9f272c523db) | [include] | ib/core: Drop ib_alloc_fast_reg_mr |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`9268f72dcb24`](https://git.kernel.org/torvalds/c/9268f72dcb24) | [include] | ib/core: Find the network device matching connection parameters |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`8b91ffc1cf67`](https://git.kernel.org/torvalds/c/8b91ffc1cf67) | [include] | ib/core: Get rid of redundant verb ib_destroy_mr |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`96249d70dd70`](https://git.kernel.org/torvalds/c/96249d70dd70) | [include] | ib/core: Guarantee that a local_dma_lkey is available |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`0629cb06cdf8`](https://git.kernel.org/torvalds/c/0629cb06cdf8) | [include] | ib/core: Move SM class defines from ib_mad.h to ib_smi.h |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`ce755c9b01e0`](https://git.kernel.org/torvalds/c/ce755c9b01e0) | [include] | ib/core: Remove unnecessary defines from ib_mad.h |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`aadfc3b2042d`](https://git.kernel.org/torvalds/c/aadfc3b2042d) | [include] | ib/hfi1: fix pstateinfo from returning improperly byteswapped value |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`4be90bc60df4`](https://git.kernel.org/torvalds/c/4be90bc60df4) | [include] | ib/mad: Remove ib_get_dma_mr calls |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`e26be1bfef81`](https://git.kernel.org/torvalds/c/e26be1bfef81) | [include] | ib/mlx4: Implement ib_device callbacks |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`c6790aa9f4fd`](https://git.kernel.org/torvalds/c/c6790aa9f4fd) | [include] | ib/mlx5: Remove support for IB_DEVICE_LOCAL_DMA_LKEY |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`6431eb87065f`](https://git.kernel.org/torvalds/c/6431eb87065f) | [include] | ib/netlink: Add defines for local service requests through netlink |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`036b10635739`](https://git.kernel.org/torvalds/c/036b10635739) | [include] | ib/uverbs: Enable device removal when there are active user space applications |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`9bee178b4f6b`](https://git.kernel.org/torvalds/c/9bee178b4f6b) | [include] | ib: Modify ib_create_mr API |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`1a6877b9c0c2`](https://git.kernel.org/torvalds/c/1a6877b9c0c2) (loose) | [lib] | introduce strncpy_from_unsafe() |  | generic code, tag [lib] | 3.10.0-913 |
| CANDIDATE | 4.3 | [`004f1afbe199`](https://git.kernel.org/torvalds/c/004f1afbe199) | [include] | libnvdimm, pmem: direct map legacy pmem by default |  | generic code, tag [include] | 3.10.0-469 |
| CANDIDATE | 4.3 | [`b5b4ff0a6339`](https://git.kernel.org/torvalds/c/b5b4ff0a6339) | [include] | mmc: block: skip trim for some kingston eMMCs |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.3 | [`642c28ab86f7`](https://git.kernel.org/torvalds/c/642c28ab86f7) | [include] | mmc: core: Optimize case for exactly one erase-group budget |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.3 | [`f13e5b9f3c62`](https://git.kernel.org/torvalds/c/f13e5b9f3c62) | [include] | mmc: sdio: avoid using NULL sdio_irq_thread pointer |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.3 | [`79857cd31fe7`](https://git.kernel.org/torvalds/c/79857cd31fe7) | [include] | net/mlx4: Postpone the registration of net_device |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`e802f8e4c54e`](https://git.kernel.org/torvalds/c/e802f8e4c54e) | [include] | net/mlx4: Prepare VLAN macros for 802.1ad Hardware accelerated support |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`77fc29c4bbbb`](https://git.kernel.org/torvalds/c/77fc29c4bbbb) | [include] | net/mlx4_core: Preparations for 802.1ad VLAN support |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`e38af4faf01d`](https://git.kernel.org/torvalds/c/e38af4faf01d) | [include] | net/mlx4_en: Add support for hardware accelerated 802.1ad vlan |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`d9eea403ca81`](https://git.kernel.org/torvalds/c/d9eea403ca81) | [include] | net/mlx5_core: Introduce access function to modify RSS/LRO params |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`efea389d3cc6`](https://git.kernel.org/torvalds/c/efea389d3cc6) | [include] | net/mlx5_core: Support physical port counters |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`311c7c71c9bb`](https://git.kernel.org/torvalds/c/311c7c71c9bb) | [include] | net/mlx5e: Allocate DMA coherent memory on reader NUMA node |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`6fa1bcab6be6`](https://git.kernel.org/torvalds/c/6fa1bcab6be6) | [include] | net/mlx5e: Ethtool link speed setting fixes |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`5c50368f3831`](https://git.kernel.org/torvalds/c/5c50368f3831) | [include] | net/mlx5e: Light-weight netdev open/stop |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`2be6967cdbc9`](https://git.kernel.org/torvalds/c/2be6967cdbc9) | [include] | net/mlx5e: Support ETH_RSS_HASH_XOR |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`3c2d18ef22df`](https://git.kernel.org/torvalds/c/3c2d18ef22df) | [include] | net/mlx5e: Support ethtool get/set_pauseparam |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`88a85f99e51f`](https://git.kernel.org/torvalds/c/88a85f99e51f) | [include] | net/mlx5e: TX latency optimization to save DMA reads |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`71ef3c6b9d46`](https://git.kernel.org/torvalds/c/71ef3c6b9d46) | [include] | perf: Add cycles to branch_info |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-361 |
| CANDIDATE | 4.3 | [`475908bc4d29`](https://git.kernel.org/torvalds/c/475908bc4d29) | [include] | revert "usb: interface authorization: Declare authorized attribute" |  | generic code, tag [include] | 3.10.0-399 |
| CANDIDATE | 4.3 | [`12e1a6a0f161`](https://git.kernel.org/torvalds/c/12e1a6a0f161) | [include] | revert "usb: interface authorization: Introduces the default interface authorization" |  | generic code, tag [include] | 3.10.0-399 |
| CANDIDATE | 4.3 | [`a1b93ab71587`](https://git.kernel.org/torvalds/c/a1b93ab71587) | [include] | revert "usb: interface authorization: Use a flag for the default device authorization" |  | generic code, tag [include] | 3.10.0-399 |
| CANDIDATE | 4.3 | [`37607102c442`](https://git.kernel.org/torvalds/c/37607102c442) | [include] | seq_file: provide an analogue of print_hex_dump() |  | generic code, tag [include] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`30035e45753b`](https://git.kernel.org/torvalds/c/30035e45753b) | [lib] | string: provide strscpy() |  | generic code, tag [lib] | 3.10.0-1020 |
| CANDIDATE | 4.3 | [`69d755747d31`](https://git.kernel.org/torvalds/c/69d755747d31) | [include] | target/iscsi: Keep local_ip as the actual sockaddr |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`13a3cf08fa1e`](https://git.kernel.org/torvalds/c/13a3cf08fa1e) | [include] | target/iscsi: Replace __kernel_sockaddr_storage with sockaddr_storage |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`dc58f760e2e1`](https://git.kernel.org/torvalds/c/dc58f760e2e1) | [include] | target/iscsi: Replace conn->login_ip with login_sockaddr |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`8486a0bba6fc`](https://git.kernel.org/torvalds/c/8486a0bba6fc) | [include] | usb: add usb_otg20_descriptor for OTG 2.0 and above |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.3 | [`5d701cef9b40`](https://git.kernel.org/torvalds/c/5d701cef9b40) | [include] | usb: add USB_OTG_ADP definition |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.3 | [`929412d94f2b`](https://git.kernel.org/torvalds/c/929412d94f2b) | [include] | usb: common: add API to update usb otg capabilities by device tree |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.3 | [`523f1dec5840`](https://git.kernel.org/torvalds/c/523f1dec5840) (loose) | [include] | usb: fsl: Implement Workaround for USB Erratum A007792 |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.3 | [`6009d95e04cf`](https://git.kernel.org/torvalds/c/6009d95e04cf) (loose) | [include] | usb: fsl: Introduce FSL_USB2_PHY_UTMI_DUAL macro |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.3 | [`f4fdfaa280a2`](https://git.kernel.org/torvalds/c/f4fdfaa280a2) (loose) | [include] | usb: fsl: Modify phy clk valid bit checking |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.3 | [`38aa420096e5`](https://git.kernel.org/torvalds/c/38aa420096e5) (loose) | [include] | usb: fsl: Replace macros with enumerated type |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.3 | [`f8786a91548d`](https://git.kernel.org/torvalds/c/f8786a91548d) (loose) | [include] | usb: fsl: Workaround for USB erratum-A005275 |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.3 | [`7e34d70a7163`](https://git.kernel.org/torvalds/c/7e34d70a7163) | [include] | usb: hcd.h: Fix the values of SetHubDepth and GetPortErrorCount to match USB 3.1 specification |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.3 | [`484ebaedecc5`](https://git.kernel.org/torvalds/c/484ebaedecc5) | [include] | usb: interface authorization: Declare authorized attribute |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.3 | [`484ebaedecc5`](https://git.kernel.org/torvalds/c/484ebaedecc5) | [include] | usb: interface authorization: Declare authorized attribute |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.3 | [`1d958bef4503`](https://git.kernel.org/torvalds/c/1d958bef4503) | [include] | usb: interface authorization: Introduces the default interface authorization |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.3 | [`1d958bef4503`](https://git.kernel.org/torvalds/c/1d958bef4503) | [include] | usb: interface authorization: Introduces the default interface authorization |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.3 | [`3cf1fc80655d`](https://git.kernel.org/torvalds/c/3cf1fc80655d) | [include] | usb: interface authorization: Use a flag for the default device authorization |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.3 | [`3cf1fc80655d`](https://git.kernel.org/torvalds/c/3cf1fc80655d) | [include] | usb: interface authorization: Use a flag for the default device authorization |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.3 | [`6a88bbe8e30d`](https://git.kernel.org/torvalds/c/6a88bbe8e30d) | [include] | usb: otg: add usb_otg_caps structure for otg capabilities |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.3 | [`96601adb7451`](https://git.kernel.org/torvalds/c/96601adb7451) | [include] | x86, pmem: clarify that ARCH_HAS_PMEM_API implies PMEM mapped WB |  | generic code, tag [include] | 3.10.0-469 |
| CANDIDATE | 4.4 | [`bc1043cdcd84`](https://git.kernel.org/torvalds/c/bc1043cdcd84) | [include] | alsa: Add helper function to add single value constraint |  | CONFIG_SND=y in A37 | 3.10.0-418 |
| CANDIDATE | 4.4 | [`8a3e33cf92c7`](https://git.kernel.org/torvalds/c/8a3e33cf92c7) | [include] | ata: ahci: find eSATA ports and flag them as removable |  | generic code, tag [include] | 3.10.0-409 |
| CANDIDATE | 4.4 | [`b2197755b263`](https://git.kernel.org/torvalds/c/b2197755b263) | [uapi] | bpf: add support for persistent maps/progs |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.4 | [`a43eec304259`](https://git.kernel.org/torvalds/c/a43eec304259) | [uapi] | bpf: introduce bpf_perf_event_output() helper |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.4 | [`b84ee0d7f375`](https://git.kernel.org/torvalds/c/b84ee0d7f375) | [include] | cdc: add header guards |  | generic code, tag [include] | 3.10.0-399 |
| CANDIDATE | 4.4 | [`c40a2c8817e4`](https://git.kernel.org/torvalds/c/c40a2c8817e4) | [include] | cdc: common parser for extra headers |  | generic code, tag [include] | 3.10.0-399 |
| CANDIDATE | 4.4 | [`ad1e7b97b3ad`](https://git.kernel.org/torvalds/c/ad1e7b97b3ad) | [include] | cdc: Fix build warning |  | generic code, tag [include] | 3.10.0-399 |
| CANDIDATE | 4.4 | [`870823e629ea`](https://git.kernel.org/torvalds/c/870823e629ea) | [include] | configfs: add show and store methods to struct configfs_attribute |  | CONFIG_CONFIGFS_FS=y in A37 | 3.10.0-447 |
| CANDIDATE | 4.4 | [`22287b0b5988`](https://git.kernel.org/torvalds/c/22287b0b5988) | [include] | crypto: akcipher - Changes to asymmetric key API |  | CONFIG_CRYPTO=y in A37 | 3.10.0-414 |
| CANDIDATE | 4.4 | [`71cdb6978a80`](https://git.kernel.org/torvalds/c/71cdb6978a80) | [include] | dm: add support for passing through persistent reservations |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.4 | [`e56f81e0b01e`](https://git.kernel.org/torvalds/c/e56f81e0b01e) | [include] | dm: refactor ioctl handling |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.4 | [`7f8306429c4c`](https://git.kernel.org/torvalds/c/7f8306429c4c) | [lib] | dma-debug: check nents in dma_sync_sg* |  | generic code, tag [lib] | 3.10.0-892 |
| CANDIDATE | 4.4 | [`0354aec19ce3`](https://git.kernel.org/torvalds/c/0354aec19ce3) | [lib] | dma-debug: Fix dma_debug_entry offset calculation |  | generic code, tag [lib] | 3.10.0-722 |
| CANDIDATE | 4.4 | [`565edd1d5555`](https://git.kernel.org/torvalds/c/565edd1d5555) | [include] | ib/addr: Pass network namespace as a parameter |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`99b27e3b5da0`](https://git.kernel.org/torvalds/c/99b27e3b5da0) | [include] | ib/cache: Add ib_find_gid_by_filter cache API |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`db7489e07669`](https://git.kernel.org/torvalds/c/db7489e07669) | [include] | ib/core, cma: Make __attribute_const__ declarations sparse-friendly |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`55ee3ab2e49a`](https://git.kernel.org/torvalds/c/55ee3ab2e49a) | [include] | ib/core: Add netdev and gid attributes paramteres to cache |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`ba36e37fd3ca`](https://git.kernel.org/torvalds/c/ba36e37fd3ca) | [include] | ib/core: Add netdev to path record |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`d300ec528b79`](https://git.kernel.org/torvalds/c/d300ec528b79) | [include] | ib/core: Expose and rename ib_find_cached_gid_by_port cache API |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`6d8a74972b71`](https://git.kernel.org/torvalds/c/6d8a74972b71) | [include] | ib/core: Extend ib_uverbs_create_qp |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`4c67e2bfc8b7`](https://git.kernel.org/torvalds/c/4c67e2bfc8b7) | [include] | ib/core: Introduce new fast registration API |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`39bfc271bd68`](https://git.kernel.org/torvalds/c/39bfc271bd68) | [include] | ib/core: Remove old fast registration API |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`10e07f13c066`](https://git.kernel.org/torvalds/c/10e07f13c066) | [include] | ib/core: Remove smac and vlan id from path record |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`aa744cc01fe0`](https://git.kernel.org/torvalds/c/aa744cc01fe0) | [include] | ib/core: Remove smac and vlan id from qp_attr and ah_attr |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`dbf727de7440`](https://git.kernel.org/torvalds/c/dbf727de7440) | [include] | ib/core: Use GID table in AH creation and dmac resolution |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`d144da8c6f51`](https://git.kernel.org/torvalds/c/d144da8c6f51) | [include] | ib/core: use RCU for uverbs id lookup |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`533708867dd6`](https://git.kernel.org/torvalds/c/533708867dd6) | [include] | ib/mad: Require CM send method for everything except ClassPortInfo |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`25556ae6b965`](https://git.kernel.org/torvalds/c/25556ae6b965) | [include] | ib: remove xrc_remote_srq_num from struct ib_send_wr |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`931cf9a3e55c`](https://git.kernel.org/torvalds/c/931cf9a3e55c) | [include] | ib_pack.h: Fix commentary IBA reference for CNP in IB opcode enum |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`c8299cb605b2`](https://git.kernel.org/torvalds/c/c8299cb605b2) | [include] | kernel.h: make abs() work with 64-bit types |  | generic code, tag [include] | 3.10.0-399 |
| CANDIDATE | 4.4 | [`fa40ae344412`](https://git.kernel.org/torvalds/c/fa40ae344412) | [lib] | kobject: move EXPORT_SYMBOL() macros next to corresponding definitions |  | generic code, tag [lib] | 3.10.0-867 |
| CANDIDATE | 4.4 | [`ce6a5acc9387`](https://git.kernel.org/torvalds/c/ce6a5acc9387) | [include] | mfd: rtsx: Add support for rts522A |  | generic code, tag [include] | 3.10.0-411 |
| CANDIDATE | 4.4 | [`a5f5774c55a2`](https://git.kernel.org/torvalds/c/a5f5774c55a2) | [include] | mmc: block: Add new ioctl to send multi commands |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.4 | [`2086f801cb2a`](https://git.kernel.org/torvalds/c/2086f801cb2a) | [include] | mmc: core: Add mmc_regulator_set_vqmmc() |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.4 | [`f90d2e4035d4`](https://git.kernel.org/torvalds/c/f90d2e4035d4) | [include] | mmc: core: Convert __mmc_switch() into an internal core function |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.4 | [`9eadcc0581a8`](https://git.kernel.org/torvalds/c/9eadcc0581a8) | [include] | mmc: core: Remove MMC_CLKGATE |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.4 | [`9979dbe51588`](https://git.kernel.org/torvalds/c/9979dbe51588) | [include] | mmc: mmc: extend the mmc_send_tuning() |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.4 | [`9a8928359736`](https://git.kernel.org/torvalds/c/9a8928359736) | [include] | net/mlx4_core: Add support for filtering multicast loopback |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`2b3ddf27f48c`](https://git.kernel.org/torvalds/c/2b3ddf27f48c) | [include] | net/mlx4_core: Replace VF zero mac with random mac in mlx4_core |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`89d44f0a6c73`](https://git.kernel.org/torvalds/c/89d44f0a6c73) | [include] | net/mlx5_core: Add pci error handlers to mlx5_core driver |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`fd76ee4da55a`](https://git.kernel.org/torvalds/c/fd76ee4da55a) | [include] | net/mlx5_core: Fix internal error detection conditions |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`78ccb25861d7`](https://git.kernel.org/torvalds/c/78ccb25861d7) | [include] | net/mlx5_core: Fix wrong name in struct |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`020446e01eeb`](https://git.kernel.org/torvalds/c/020446e01eeb) | [include] | net/mlx5_core: Prepare cmd interface to system errors handling |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`ac6ea6e81a80`](https://git.kernel.org/torvalds/c/ac6ea6e81a80) | [include] | net/mlx5_core: Use private health thread for each device |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`e3297246c2c8`](https://git.kernel.org/torvalds/c/e3297246c2c8) | [include] | net/mlx5_core: Wait for FW readiness on startup |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`66189961e986`](https://git.kernel.org/torvalds/c/66189961e986) | [include] | net/mlx5e: Added self loopback prevention |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`1dfddff5fcd8`](https://git.kernel.org/torvalds/c/1dfddff5fcd8) | [include] | net: cdc_ncm: avoid changing RX/TX buffers on MTU changes |  | generic code, tag [include] | 3.10.0-399 |
| CANDIDATE | 4.4 | [`c648a0138b8f`](https://git.kernel.org/torvalds/c/c648a0138b8f) | [include] | netlink: add nla_get for le32 and le64 |  | generic code, tag [include] | 3.10.0-422 |
| CANDIDATE | 4.4 | [`8f3e5684d3fb`](https://git.kernel.org/torvalds/c/8f3e5684d3fb) | [include] | perf/core: Drop PERF_EVENT_TXN |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-366 |
| CANDIDATE | 4.4 | [`c229bf9dc179`](https://git.kernel.org/torvalds/c/c229bf9dc179) | [include] | perf: Add PERF_SAMPLE_BRANCH_CALL |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-362 |
| CANDIDATE | 4.4 | [`897ece56e714`](https://git.kernel.org/torvalds/c/897ece56e714) | [lib] | random32: add prandom_init_once helper for own rngs |  | generic code, tag [lib] | 3.10.0-913 |
| CANDIDATE | 4.4 | [`0dd50d1b0c00`](https://git.kernel.org/torvalds/c/0dd50d1b0c00) | [lib] | random32: add prandom_seed_full_state helper |  | generic code, tag [lib] | 3.10.0-913 |
| CANDIDATE | 4.4 | [`3c2f85b8ce8a`](https://git.kernel.org/torvalds/c/3c2f85b8ce8a) | [include] | staging/rdma/hfi1: Remove QSFP_ENABLED from HFI capability mask |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`37c1c04cca92`](https://git.kernel.org/torvalds/c/37c1c04cca92) | [include] | sysfs: added __compat_only_sysfs_link_entry_to_kobj() |  | CONFIG_SYSFS=y in A37 | 3.10.0-430 |
| CANDIDATE | 4.4 | [`45b6a73f62eb`](https://git.kernel.org/torvalds/c/45b6a73f62eb) | [include] | usb-gadget: use per-attribute show and store methods |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.4 | [`90ec9247808e`](https://git.kernel.org/torvalds/c/90ec9247808e) | [include] | usb: Add USB 3.1 SuperSpeedPlus device capability descriptor |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.4 | [`07294cc2ea30`](https://git.kernel.org/torvalds/c/07294cc2ea30) | [include] | usb: Added forgotten parameter description for authorized attribute in usb.h |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.4 | [`7117522520b9`](https://git.kernel.org/torvalds/c/7117522520b9) | [include] | usb: define HCD_USB31 speed option for hosts that support USB 3.1 features |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.4 | [`3220befddc0d`](https://git.kernel.org/torvalds/c/3220befddc0d) | [include] | usb: store the new usb 3.1 SuperSpeedPlus device capability descriptor |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.5 | [`28a4618ad14c`](https://git.kernel.org/torvalds/c/28a4618ad14c) | [include] | crypto: akcipher - add akcipher declarations needed by templates |  | CONFIG_CRYPTO=y in A37 | 3.10.0-414 |
| CANDIDATE | 4.5 | [`3d5b1ecdea6f`](https://git.kernel.org/torvalds/c/3d5b1ecdea6f) | [include] | crypto: rsa - RSA padding algorithm |  | CONFIG_CRYPTO=y in A37 | 3.10.0-414 |
| CANDIDATE | 4.5 | [`d5e26bb1d812`](https://git.kernel.org/torvalds/c/d5e26bb1d812) | [include] | cxlflash: Fix to avoid virtual LUN failover failure |  | generic code, tag [include] | 3.10.0-407 |
| CANDIDATE | 4.5 | [`a0c80efe5956`](https://git.kernel.org/torvalds/c/a0c80efe5956) | [] | floppy: fix lock_fdc() signal handling |  | generic code, tag [none] | 3.10.0-1160.25.1 |
| CANDIDATE | 4.5 | [`de2dd0eb30af`](https://git.kernel.org/torvalds/c/de2dd0eb30af) | [lib] | genalloc:support memory-allocation with bytes-alignment to genalloc |  | generic code, tag [lib] | 3.10.0-1034 |
| CANDIDATE | 4.5 | [`bee3c3c91865`](https://git.kernel.org/torvalds/c/bee3c3c91865) | [include] | ib/cma: Join and leave multicast groups with IGMP |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`8a06ce59a4cd`](https://git.kernel.org/torvalds/c/8a06ce59a4cd) | [include] | ib/core: Add cross-channel support |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`7ead4bcb1b78`](https://git.kernel.org/torvalds/c/7ead4bcb1b78) | [include] | ib/core: Add definition for the standard RoCE V2 UDP port |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`b39ffa1df505`](https://git.kernel.org/torvalds/c/b39ffa1df505) | [include] | ib/core: Add gid_type to gid attribute |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`301a721e1fcb`](https://git.kernel.org/torvalds/c/301a721e1fcb) | [include] | ib/core: Add ib_is_udata_cleared |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`c865f24628b9`](https://git.kernel.org/torvalds/c/c865f24628b9) | [include] | ib/core: Add rdma_network_type to wc |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`7766a99fdcd3`](https://git.kernel.org/torvalds/c/7766a99fdcd3) | [include] | ib/core: Add ROCE_UDP_ENCAP (RoCE V2) type |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`7ca0bc536523`](https://git.kernel.org/torvalds/c/7ca0bc536523) | [include] | ib/core: Align coding style of ib_device_cap_flags structure |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`145d9c541032`](https://git.kernel.org/torvalds/c/145d9c541032) | [include] | ib/core: Display extended counter set if available |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`25f40220e56b`](https://git.kernel.org/torvalds/c/25f40220e56b) | [include] | ib/core: Initialize UD header structure with IP and UDP headers |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`182a2da0c768`](https://git.kernel.org/torvalds/c/182a2da0c768) | [include] | ib/core: Remove ib_query_device |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`f7f4b23e27f7`](https://git.kernel.org/torvalds/c/f7f4b23e27f7) | [include] | ib/core: Rename rdma_addr_find_dmac_by_grh |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`3e153a93a1c1`](https://git.kernel.org/torvalds/c/3e153a93a1c1) | [include] | ib/core: Save the device attributes on the device structure |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`c3efe7500add`](https://git.kernel.org/torvalds/c/c3efe7500add) | [include] | ib/core: Use hop-limit from IP stack for RoCE |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`200298326b27`](https://git.kernel.org/torvalds/c/200298326b27) | [include] | ib/core: Validate route when we init ah |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`ca281265c02f`](https://git.kernel.org/torvalds/c/ca281265c02f) | [include] | ib/mad: pass ib_mad_send_buf explicitly to the recv_handler |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`7e57b85c444c`](https://git.kernel.org/torvalds/c/7e57b85c444c) | [include] | ib/mlx4: Add support for setting RoCEv2 gids in hardware |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`3ef967a4affe`](https://git.kernel.org/torvalds/c/3ef967a4affe) | [include] | ib/mlx4: Enable send of RoCE QP1 packets with IP/UDP headers |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`3b5daf28ac4b`](https://git.kernel.org/torvalds/c/3b5daf28ac4b) | [include] | ib/mlx4: Support modify_qp for RoCE v2 |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`051f263098a9`](https://git.kernel.org/torvalds/c/051f263098a9) | [include] | ib/mlx5: Add driver cross-channel support |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`038d2ef87572`](https://git.kernel.org/torvalds/c/038d2ef87572) | [include] | ib/mlx5: Add flow steering support |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`b368d7cb8ceb`](https://git.kernel.org/torvalds/c/b368d7cb8ceb) | [include] | ib/mlx5: Add hca_core_clock_offset to udata in init_ucontext |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`6d2f89df04b7`](https://git.kernel.org/torvalds/c/6d2f89df04b7) | [include] | ib/mlx5: Add Raw Packet QP query functionality |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`2811ba51b049`](https://git.kernel.org/torvalds/c/2811ba51b049) | [include] | ib/mlx5: Add RoCE fields to Address Vector |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`7c60bcbb6812`](https://git.kernel.org/torvalds/c/7c60bcbb6812) | [include] | ib/mlx5: Add support for hca_core_clock and timestamp_mask |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`da7525d2a9ae`](https://git.kernel.org/torvalds/c/da7525d2a9ae) | [include] | ib/mlx5: Advertise atomic capabilities in query device |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`3f89a643eb29`](https://git.kernel.org/torvalds/c/3f89a643eb29) | [include] | ib/mlx5: Extend query_device/port to support RoCE |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`cb34be6da25f`](https://git.kernel.org/torvalds/c/cb34be6da25f) | [include] | ib/mlx5: Set network_hdr_type upon RoCE responder completion |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`3cca26069a4b`](https://git.kernel.org/torvalds/c/3cca26069a4b) | [include] | ib/mlx5: Support IB device's callbacks for adding/deleting GIDs |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`75850d0bcece`](https://git.kernel.org/torvalds/c/75850d0bcece) | [include] | ib/mlx5: Support setting Ethernet priority for Raw Packet QPs |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`14d3a3b2498e`](https://git.kernel.org/torvalds/c/14d3a3b2498e) | [include] | ib: add a proper completion queue abstraction |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`a4d825a01e51`](https://git.kernel.org/torvalds/c/a4d825a01e51) | [include] | ib: remove ib_query_mr |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`feb7c1e38bcc`](https://git.kernel.org/torvalds/c/feb7c1e38bcc) | [include] | ib: remove in-kernel support for memory windows |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`b7d3e0a94fe1`](https://git.kernel.org/torvalds/c/b7d3e0a94fe1) | [include] | ib: remove support for phys MRs |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`7cf9ff643b7f`](https://git.kernel.org/torvalds/c/7cf9ff643b7f) | [include] | ib: remove the struct ib_phys_buf definition |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`ab67ed8de025`](https://git.kernel.org/torvalds/c/ab67ed8de025) | [include] | ib: remove the write-only usecnt field from struct ib_mr |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`b1adc7146af5`](https://git.kernel.org/torvalds/c/b1adc7146af5) | [include] | ib: start documenting device capabilities |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`d30b5545bdcf`](https://git.kernel.org/torvalds/c/d30b5545bdcf) | [include] | include/linux/memblock.h: fix ordering of 'flags' argument in comments |  | generic code, tag [include] | 3.10.0-1070 |
| CANDIDATE | 4.5 | [`818f1f3e70dd`](https://git.kernel.org/torvalds/c/818f1f3e70dd) | [include] | ipv6: add ipv6_addr_prefix_copy |  | generic code, tag [include] | 3.10.0-422 |
| CANDIDATE | 4.5 | [`d77a117e6871`](https://git.kernel.org/torvalds/c/d77a117e6871) | [lib] | list: kill list_force_poison() |  | generic code, tag [lib] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`a9bb7e620efd`](https://git.kernel.org/torvalds/c/a9bb7e620efd) | [include] | memcg: only account kmem allocations marked as __GFP_ACCOUNT |  | CONFIG_MEMCG=y in A37 | 3.10.0-1075 |
| CANDIDATE | 4.5 | [`5c2c2587b132`](https://git.kernel.org/torvalds/c/5c2c2587b132) | [lib] | mm, dax, pmem: introduce {get\|put}_dev_pagemap() for dax-gup |  | generic code, tag [lib] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`100a606d54a0`](https://git.kernel.org/torvalds/c/100a606d54a0) | [include] | mmc: core: Introduce MMC_CAP2_NO_SDIO cap |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.5 | [`8dede18e2e86`](https://git.kernel.org/torvalds/c/8dede18e2e86) | [include] | mmc: core: Refactor code to register the MMC PM notifier |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.5 | [`7b6471a968bf`](https://git.kernel.org/torvalds/c/7b6471a968bf) | [include] | mmc: core: Remove MMC_CAP_RUNTIME_RESUME as it's redundant |  | CONFIG_MMC=y in A37 | 3.10.0-411 |
| CANDIDATE | 4.5 | [`d8ae914196d3`](https://git.kernel.org/torvalds/c/d8ae914196d3) | [include] | net/mlx4: Query RoCE support |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`f25bf1977f7a`](https://git.kernel.org/torvalds/c/f25bf1977f7a) | [include] | net/mlx4: Remove unused macro |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`fca83006294a`](https://git.kernel.org/torvalds/c/fca83006294a) | [include] | net/mlx4_core: Add support for configuring RoCE v2 UDP port |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`3f723f42d9d6`](https://git.kernel.org/torvalds/c/3f723f42d9d6) | [include] | net/mlx4_core: Add support for RoCE v2 entropy |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`5f61385d2ebc`](https://git.kernel.org/torvalds/c/5f61385d2ebc) | [include] | net/mlx4_core: Keep VLAN/MAC tables mirrored in multifunc HA mode |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`85743f1eb345`](https://git.kernel.org/torvalds/c/85743f1eb345) | [include] | net/mlx4_core: Set UAR page size to 4KB regardless of system page size |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`54f0a411ec72`](https://git.kernel.org/torvalds/c/54f0a411ec72) | [include] | net/mlx5: Add HW capabilities and structs for SR-IOV E-Switch |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`81848731ff40`](https://git.kernel.org/torvalds/c/81848731ff40) | [include] | net/mlx5: E-Switch, Add SR-IOV (FDB) support |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`495716b191f6`](https://git.kernel.org/torvalds/c/495716b191f6) | [include] | net/mlx5: E-Switch, Introduce FDB hardware capabilities |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`d6666753c6e8`](https://git.kernel.org/torvalds/c/d6666753c6e8) | [include] | net/mlx5: E-Switch, Introduce HCA cap and E-Switch vport context |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`e16aea2744ab`](https://git.kernel.org/torvalds/c/e16aea2744ab) | [include] | net/mlx5: Introduce access functions to modify/query vport mac lists |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`d82b73186dab`](https://git.kernel.org/torvalds/c/d82b73186dab) | [include] | net/mlx5: Introduce access functions to modify/query vport promisc mode |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`e75465148b7d`](https://git.kernel.org/torvalds/c/e75465148b7d) | [include] | net/mlx5: Introduce access functions to modify/query vport state |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`c0046cf7b81a`](https://git.kernel.org/torvalds/c/c0046cf7b81a) | [include] | net/mlx5: Introduce access functions to modify/query vport vlans |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`073bb189a41d`](https://git.kernel.org/torvalds/c/073bb189a41d) | [include] | net/mlx5: Introducing E-Switch and l2 table |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`e1d7d349c69d`](https://git.kernel.org/torvalds/c/e1d7d349c69d) | [include] | net/mlx5: Update access functions to Query/Modify vport MAC address |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`86d722ad2c3b`](https://git.kernel.org/torvalds/c/86d722ad2c3b) | [include] | net/mlx5: Use flow steering infrastructure for mlx5_en |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`b4ff3a36d3e4`](https://git.kernel.org/torvalds/c/b4ff3a36d3e4) | [include] | net/mlx5: Use offset based reserved field names in the IFC header file |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`fc50db98ff87`](https://git.kernel.org/torvalds/c/fc50db98ff87) | [include] | net/mlx5_core: Add base sriov support |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`e2013b212f9f`](https://git.kernel.org/torvalds/c/e2013b212f9f) | [include] | net/mlx5_core: Add RQ and SQ event handling |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`f91e6d8941bf`](https://git.kernel.org/torvalds/c/f91e6d8941bf) | [include] | net/mlx5_core: Add setting ATOMIC endian mode |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`4cbdd30ed5c8`](https://git.kernel.org/torvalds/c/4cbdd30ed5c8) | [include] | net/mlx5_core: Enable flow steering support for the IB driver |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`8d7f9ecb371a`](https://git.kernel.org/torvalds/c/8d7f9ecb371a) | [include] | net/mlx5_core: Export transport objects |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`0b6e26ce8939`](https://git.kernel.org/torvalds/c/0b6e26ce8939) | [include] | net/mlx5_core: Fix trimming down IRQ number |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`2530236303d9`](https://git.kernel.org/torvalds/c/2530236303d9) | [include] | net/mlx5_core: Flow steering tree initialization |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`b0844444590e`](https://git.kernel.org/torvalds/c/b0844444590e) | [include] | net/mlx5_core: Introduce access function to read internal timer |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`0de60af64953`](https://git.kernel.org/torvalds/c/0de60af64953) | [include] | net/mlx5_core: Introduce access functions to enable/disable RoCE |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`9efa75254593`](https://git.kernel.org/torvalds/c/9efa75254593) | [include] | net/mlx5_core: Introduce access functions to query vport RoCE fields |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`f0d22d187473`](https://git.kernel.org/torvalds/c/f0d22d187473) | [include] | net/mlx5_core: Introduce flow steering autogrouped flow table |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`26a8145390b3`](https://git.kernel.org/torvalds/c/26a8145390b3) | [include] | net/mlx5_core: Introduce flow steering firmware commands |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`34a40e689393`](https://git.kernel.org/torvalds/c/34a40e689393) | [include] | net/mlx5_core: Introduce modify flow table command |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`b4d1f032d75b`](https://git.kernel.org/torvalds/c/b4d1f032d75b) | [include] | net/mlx5_core: Make ipv4/ipv6 location more clear |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`2cc43b494a6c`](https://git.kernel.org/torvalds/c/2cc43b494a6c) | [include] | net/mlx5_core: Managing root flow table |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`bdfc028de1b3`](https://git.kernel.org/torvalds/c/bdfc028de1b3) | [include] | net/mlx5e: Fix ethtool RX hash func configuration change |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`4577b0665515`](https://git.kernel.org/torvalds/c/4577b0665515) | [uapi] | nfit: update address range scrub commands to the acpi 6.1 format |  | generic code, tag [uapi] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`cd371e0959a3`](https://git.kernel.org/torvalds/c/cd371e0959a3) | [include] | staging/rdma/hfi1: Adjust EPROM partitions, add EPROM commands |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`3bd4dce1366f`](https://git.kernel.org/torvalds/c/3bd4dce1366f) | [include] | staging/rdma/hfi1: Clean up macro indentation |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`6fb8ac81cb31`](https://git.kernel.org/torvalds/c/6fb8ac81cb31) | [include] | usb: constify usb_mon_operations structure |  | CONFIG_USB=y in A37 | 3.10.0-399 |
| CANDIDATE | 4.5 | [`bf5ce5bf3cc7`](https://git.kernel.org/torvalds/c/bf5ce5bf3cc7) | [include] | usb: core: lpm: fix usb3_hardware_lpm sysfs node |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.5 | [`498378d9d2c1`](https://git.kernel.org/torvalds/c/498378d9d2c1) | [include] | usb: core: lpm: remove usb3_lpm_enabled in usb_device |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.5 | [`82607adcf9cd`](https://git.kernel.org/torvalds/c/82607adcf9cd) | [lib] | workqueue: implement lockup detector |  | generic code, tag [lib] | 3.10.0-403 |
| CANDIDATE | 4.5 | [`427c1e7bcd7e`](https://git.kernel.org/torvalds/c/427c1e7bcd7e) | [include] | {ib, net}/mlx5: Move the modify QP operation table to mlx5_ib |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | 4.6 | [`29779d89fd04`](https://git.kernel.org/torvalds/c/29779d89fd04) | [include] | Add ioctl to retrieve USBTMC-USB488 capabilities |  | generic code, tag [include] | 3.10.0-446 |
| CANDIDATE | 4.6 | [`379d3d33c83b`](https://git.kernel.org/torvalds/c/379d3d33c83b) | [include] | Add ioctls to enable and disable local controls on an instrument |  | generic code, tag [include] | 3.10.0-446 |
| CANDIDATE | 4.6 | [`8d4a2ec1e0b4`](https://git.kernel.org/torvalds/c/8d4a2ec1e0b4) | [lib] | assoc_array: don't call compare_object() on a node |  | generic code, tag [lib] | 3.10.0-453 |
| CANDIDATE | 4.6 | [`3712bba1a260`](https://git.kernel.org/torvalds/c/3712bba1a260) | [lib] | cpumask: Export cpumask_any_but() |  | generic code, tag [lib] | 3.10.0-1042 |
| CANDIDATE | 4.6 | [`973fb3fb50e3`](https://git.kernel.org/torvalds/c/973fb3fb50e3) | [include] | crypto: skcipher - Add default key size helper |  | CONFIG_CRYPTO=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`a2d382a4f1ff`](https://git.kernel.org/torvalds/c/a2d382a4f1ff) | [include] | crypto: skcipher - Add helper to retrieve driver name |  | CONFIG_CRYPTO=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`1aaa753d918c`](https://git.kernel.org/torvalds/c/1aaa753d918c) | [include] | crypto: skcipher - Add helper to zero stack request |  | CONFIG_CRYPTO=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`92b3cad3af31`](https://git.kernel.org/torvalds/c/92b3cad3af31) | [include] | crypto: skcipher - Fix driver name helper |  | CONFIG_CRYPTO=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`30187e1d48a2`](https://git.kernel.org/torvalds/c/30187e1d48a2) | [include] | dm: rename target's per_bio_data_size to per_io_data_size |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`f083b09b7819`](https://git.kernel.org/torvalds/c/f083b09b7819) | [include] | dm: set DM_TARGET_WILDCARD feature on "error" target |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-369 |
| CANDIDATE | 4.6 | [`a8463d4b0e47`](https://git.kernel.org/torvalds/c/a8463d4b0e47) | [lib] | dma: Provide simple noop dma ops |  | generic code, tag [lib] | 3.10.0-658 |
| CANDIDATE | 4.6 | [`f5aa9159a418`](https://git.kernel.org/torvalds/c/f5aa9159a418) | [include] | ib/core: Add arbitrary sg_list support |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.6 | [`a3100a787941`](https://git.kernel.org/torvalds/c/a3100a787941) | [include] | ib/core: Add don't trap flag to flow creation |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.6 | [`50174a7f2c24`](https://git.kernel.org/torvalds/c/50174a7f2c24) | [include] | ib/core: Add interfaces to control VF attributes |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.6 | [`fad61ad4e755`](https://git.kernel.org/torvalds/c/fad61ad4e755) | [include] | ib/core: Add subnet prefix to port info |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.6 | [`b2a239df4e65`](https://git.kernel.org/torvalds/c/b2a239df4e65) | [include] | ib/core: Add vendor's specific data to alloc mw |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.6 | [`5a30247bf09e`](https://git.kernel.org/torvalds/c/5a30247bf09e) | [include] | ib/core: Documentation fix in the MAD header file |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.6 | [`a0c1b2a35087`](https://git.kernel.org/torvalds/c/a0c1b2a35087) | [include] | ib/core: Support accessing SA in virtualized environment |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.6 | [`0e451e883bd1`](https://git.kernel.org/torvalds/c/0e451e883bd1) | [include] | ib/mlx4: Add support for the don't trap rule |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.6 | [`d2370e0a573e`](https://git.kernel.org/torvalds/c/d2370e0a573e) | [include] | ib/mlx5: Add memory windows allocation support |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.6 | [`35d1901134e9`](https://git.kernel.org/torvalds/c/35d1901134e9) | [include] | ib/mlx5: Add support for don't trap rules |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.6 | [`b11a4f9cde1c`](https://git.kernel.org/torvalds/c/b11a4f9cde1c) | [include] | ib/mlx5: Add support for setting source QP number |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.6 | [`1015c2e8ca2b`](https://git.kernel.org/torvalds/c/1015c2e8ca2b) | [include] | ib/mlx5: Define interface bits for IPoIB offloads |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.6 | [`986ef95ecdd3`](https://git.kernel.org/torvalds/c/986ef95ecdd3) | [include] | ib/mlx5: Expose correct max_sge_rd limit |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.6 | [`eff901d30e6c`](https://git.kernel.org/torvalds/c/eff901d30e6c) | [include] | ib/mlx5: Implement callbacks for manipulating VFs |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.6 | [`3efd9a11212d`](https://git.kernel.org/torvalds/c/3efd9a11212d) | [include] | ib/mlx5: Modify MAD reading counters method to use counter registers |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.6 | [`fb532d6a79b9`](https://git.kernel.org/torvalds/c/fb532d6a79b9) | [include] | IB/{core, ulp} Support above 32 possible device capability flags |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.6 | [`dbf3e7f654c0`](https://git.kernel.org/torvalds/c/dbf3e7f654c0) | [include] | Implement an ioctl to support the USMTMC-USB488 READ_STATUS_BYTE operation |  | generic code, tag [include] | 3.10.0-446 |
| CANDIDATE | 4.6 | [`2b6a321da9a2`](https://git.kernel.org/torvalds/c/2b6a321da9a2) | [uapi] | input: synaptics-rmi4 - add support for Synaptics RMI4 devices |  | CONFIG_INPUT=y in A37 | 3.10.0-884 |
| CANDIDATE | 4.6 | [`49cd53bf14ae`](https://git.kernel.org/torvalds/c/49cd53bf14ae) | [uapi] | mm/pkeys: Fix siginfo ABI breakage caused by new u64 field |  | generic code, tag [uapi] | 3.10.0-706 |
| CANDIDATE | 4.6 | [`644c7e48cb59`](https://git.kernel.org/torvalds/c/644c7e48cb59) | [] | netfilter: nf_conntrack_tcp: Fix stack out of bounds when parsing TCP options |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1160.97.1 |
| CANDIDATE | 4.6 | [`ff77e4685359`](https://git.kernel.org/torvalds/c/ff77e4685359) | [] | sched/rt: Fix PI handling vs. sched_setscheduler() |  | generic code, tag [none] | 3.10.0-1160.22.1 |
| CANDIDATE | 4.6 | [`1b83349fddd1`](https://git.kernel.org/torvalds/c/1b83349fddd1) | [include] | usb/storage: misc fixes to comments in include/linux/usb/storage.h |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`346dbc699330`](https://git.kernel.org/torvalds/c/346dbc699330) | [include] | usb: add OTG status selector definition for HNP polling |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`f7d34b445abc`](https://git.kernel.org/torvalds/c/f7d34b445abc) | [include] | usb: Add support for usbfs zerocopy |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`faee822c5a7a`](https://git.kernel.org/torvalds/c/faee822c5a7a) | [include] | usb: Add USB 3.1 Precision time measurement capability descriptor support |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`c8b1d8977eee`](https://git.kernel.org/torvalds/c/c8b1d8977eee) | [include] | usb: Add USB3.1 SuperSpeedPlus Isoc Endpoint Companion descriptor |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`446fa3a95df1`](https://git.kernel.org/torvalds/c/446fa3a95df1) | [include] | usb: ch9: Add size macro for SSP dev cap descriptor |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`743bc4b06951`](https://git.kernel.org/torvalds/c/743bc4b06951) | [include] | usb: ch9: Fix SSP Device Cap wFunctionalitySupport type |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`ae57e97a9521`](https://git.kernel.org/torvalds/c/ae57e97a9521) | [include] | usb: common: otg-fsm: add HNP polling support |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`69bec7259853`](https://git.kernel.org/torvalds/c/69bec7259853) | [include] | usb: core: let USB device know device node |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`a4b5d606b957`](https://git.kernel.org/torvalds/c/a4b5d606b957) | [include] | usb: core: rename mutex usb_bus_list_lock to usb_bus_idr_lock |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`5363de75307e`](https://git.kernel.org/torvalds/c/5363de75307e) | [include] | usb: core: switch bus numbering to using idr |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`8a1b2725a60d`](https://git.kernel.org/torvalds/c/8a1b2725a60d) | [include] | usb: define USB_SPEED_SUPER_PLUS speed for SuperSpeedPlus USB3.1 devices |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`d883f52e1f6d`](https://git.kernel.org/torvalds/c/d883f52e1f6d) | [include] | usb: devio: Add ioctl to disallow detaching kernel USB drivers |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`9c527f49a731`](https://git.kernel.org/torvalds/c/9c527f49a731) | [include] | usb: otg-fsm: add B_AIDL_BDIS timer |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`b37d83a6a414`](https://git.kernel.org/torvalds/c/b37d83a6a414) | [include] | usb: Parse the new USB 3.1 SuperSpeedPlus Isoc endpoint companion descriptor |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`0cdd49a1d1a4`](https://git.kernel.org/torvalds/c/0cdd49a1d1a4) | [include] | usb: Support USB 3.1 extended port status request |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.6 | [`7dd9cba5bb90`](https://git.kernel.org/torvalds/c/7dd9cba5bb90) | [include] | usb: sysfs: make locking interruptible |  | CONFIG_USB=y in A37 | 3.10.0-446 |
| CANDIDATE | 4.7 | [`0b24e5ac93c2`](https://git.kernel.org/torvalds/c/0b24e5ac93c2) | [include] | ib/core: Add extended device capability flags |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.7 | [`45686f2d6535`](https://git.kernel.org/torvalds/c/45686f2d6535) | [include] | ib/core: Add Raw Scatter FCS device capability |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.7 | [`b531b9094819`](https://git.kernel.org/torvalds/c/b531b9094819) | [include] | ib/core: Add Scatter FCS create flag |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.7 | [`47355b3cd7d3`](https://git.kernel.org/torvalds/c/47355b3cd7d3) | [include] | ib/core: Fix bit curruption in ib_device_cap_flags structure |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.7 | [`c7e162a41748`](https://git.kernel.org/torvalds/c/c7e162a41748) | [include] | ib/core: Make all casts in ib_device_cap_flags enum consistent |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.7 | [`d3ae2bdeba9b`](https://git.kernel.org/torvalds/c/d3ae2bdeba9b) | [include] | ib/mlx5: Fix pkey_index length in the QP path record |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | 4.7 | [`31eca76ba2fc`](https://git.kernel.org/torvalds/c/31eca76ba2fc) | [uapi] | nfit, libnvdimm: limited/whitelisted dimm command marshaling mechanism |  | generic code, tag [uapi] | 3.10.0-490 |
| CANDIDATE | 4.7 | [`9b1d6c895002`](https://git.kernel.org/torvalds/c/9b1d6c895002) (loose) | [lib] | scatterlist: move SG pool code from SCSI driver to lib/sg_pool.c |  | generic code, tag [lib] | 3.10.0-624 |
| CANDIDATE | 4.7 | [`e10f9a42e9e8`](https://git.kernel.org/torvalds/c/e10f9a42e9e8) | [uapi] | usb: add descriptors from USB Power Delivery spec |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.7 | [`351e67ab5c05`](https://git.kernel.org/torvalds/c/351e67ab5c05) | [uapi] | usb: pd: additional feature selectors |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.7 | [`e1669f4a425c`](https://git.kernel.org/torvalds/c/e1669f4a425c) | [uapi] | usb: pd: define specific requests |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.8 | [`545ed20e6df6`](https://git.kernel.org/torvalds/c/545ed20e6df6) | [uapi] | dm: add infrastructure for DAX support |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-640 |
| CANDIDATE | 4.8 | [`d5dfc80f80db`](https://git.kernel.org/torvalds/c/d5dfc80f80db) | [lib] | dma-debug: track bucket lock state for static checkers |  | generic code, tag [lib] | 3.10.0-892 |
| CANDIDATE | 4.8 | [`89da45b8b5b2`](https://git.kernel.org/torvalds/c/89da45b8b5b2) | [uapi] | ethtool: Add 50G baseSR2 link mode |  | generic code, tag [uapi] | 3.10.0-576 |
| CANDIDATE | 4.8 | [`e456cd37bc28`](https://git.kernel.org/torvalds/c/e456cd37bc28) | [uapi] | i2c: smbus: add SMBus Host Notify support |  | CONFIG_I2C=y in A37 | 3.10.0-884 |
| CANDIDATE | 4.8 | [`4c2aae712cb0`](https://git.kernel.org/torvalds/c/4c2aae712cb0) | [uapi] | ib/core: Add IPv6 support to flow steering |  | generic code, tag [uapi] | 3.10.0-576 |
| CANDIDATE | 4.8 | [`c49298026908`](https://git.kernel.org/torvalds/c/c49298026908) | [uapi] | ib/hfi1: Allow for non-double word multiple message sizes for user SDMA |  | generic code, tag [uapi] | 3.10.0-576 |
| CANDIDATE | 4.8 | [`f213c0527210`](https://git.kernel.org/torvalds/c/f213c0527210) | [uapi] | ib/uverbs: Add WQ support |  | generic code, tag [uapi] | 3.10.0-576 |
| CANDIDATE | 4.8 | [`c70285f880e8`](https://git.kernel.org/torvalds/c/c70285f880e8) | [uapi] | ib/uverbs: Extend create QP to get RWQ indirection table |  | generic code, tag [uapi] | 3.10.0-576 |
| CANDIDATE | 4.8 | [`de019a94049d`](https://git.kernel.org/torvalds/c/de019a94049d) | [uapi] | ib/uverbs: Introduce RWQ Indirection table |  | generic code, tag [uapi] | 3.10.0-576 |
| CANDIDATE | 4.8 | [`a54f9aebaa9f`](https://git.kernel.org/torvalds/c/a54f9aebaa9f) | [linux] | include/linux/mmdebug.h: add VM_WARN which maps to WARN() | CVE-2018-7740 | generic code, tag [linux] | 3.10.0-879 |
| CANDIDATE | 4.8 | [`19c5d690e416`](https://git.kernel.org/torvalds/c/19c5d690e416) | [lib] | locking/rwsem: Add reader-owned state to the owner field |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 4.8 | [`8ee62b1870be`](https://git.kernel.org/torvalds/c/8ee62b1870be) | [lib] | locking/rwsem: Convert sem->count to 'atomic_long_t' |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 4.8 | [`133e89ef5ef3`](https://git.kernel.org/torvalds/c/133e89ef5ef3) | [lib] | locking/rwsem: Enable lockless waiter wakeup(s) |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 4.8 | [`bf7b4c472db4`](https://git.kernel.org/torvalds/c/bf7b4c472db4) | [lib] | locking/rwsem: Improve reader wakeup code |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 4.8 | [`c0fcb6c2d332`](https://git.kernel.org/torvalds/c/c0fcb6c2d332) | [lib] | locking/rwsem: Optimize write lock by reducing operations in slowpath |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 4.8 | [`d157bd860f1c`](https://git.kernel.org/torvalds/c/d157bd860f1c) | [asm-generic] | locking/rwsem: Remove rwsem_atomic_add() and rwsem_atomic_update() |  | generic code, tag [asm-generic] | 3.10.0-629 |
| CANDIDATE | 4.8 | [`e38513905eea`](https://git.kernel.org/torvalds/c/e38513905eea) | [lib] | locking/rwsem: Rework zeroing reader waiter->task |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 4.8 | [`ddd0fa73c2b7`](https://git.kernel.org/torvalds/c/ddd0fa73c2b7) | [lib] | locking/rwsem: Streamline the rwsem_optimistic_spin() code |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 4.8 | [`e02fb7264d8a`](https://git.kernel.org/torvalds/c/e02fb7264d8a) | [uapi] | nfit: add Microsoft NVDIMM DSM command set to white list |  | generic code, tag [uapi] | 3.10.0-490 |
| CANDIDATE | 4.9 | [`b4a0f533e597`](https://git.kernel.org/torvalds/c/b4a0f533e597) | [lib] | dma-api: Teach the "DMA-from-stack" check about vmapped stacks |  | generic code, tag [lib] | 3.10.0-892 |
| CANDIDATE | 4.9 | [`0e74b34dfc33`](https://git.kernel.org/torvalds/c/0e74b34dfc33) | [lib] | dma-debug: add support for resource mappings |  | generic code, tag [lib] | 3.10.0-722 |
| CANDIDATE | 4.9 | [`5711a9822144`](https://git.kernel.org/torvalds/c/5711a9822144) (loose) | [uapi] | ethtool: add support for 1000BaseX and missing 10G link modes |  | generic code, tag [uapi] | 3.10.0-639 |
| CANDIDATE | 4.9 | [`71757904efad`](https://git.kernel.org/torvalds/c/71757904efad) | [uapi] | generic syscalls: kill cruft from removed pkey syscalls |  | generic code, tag [uapi] | 3.10.0-706 |
| CANDIDATE | 4.9 | [`a60f7b69d92c`](https://git.kernel.org/torvalds/c/a60f7b69d92c) | [uapi] | generic syscalls: Wire up memory protection keys syscalls |  | generic code, tag [uapi] | 3.10.0-706 |
| CANDIDATE | 4.9 | [`a72c6a2b0e69`](https://git.kernel.org/torvalds/c/a72c6a2b0e69) | [uapi] | ib/core: Add more fields to IPv6 flow specification |  | generic code, tag [uapi] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`a85fb3383340`](https://git.kernel.org/torvalds/c/a85fb3383340) | [uapi] | ib/cxgb3: Move user vendor structures |  | generic code, tag [uapi] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`e44ee2fd9845`](https://git.kernel.org/torvalds/c/e44ee2fd9845) | [uapi] | ib/cxgb4: Move user vendor structures |  | generic code, tag [uapi] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`9ce28a20eec5`](https://git.kernel.org/torvalds/c/9ce28a20eec5) | [uapi] | ib/mlx4: Move user vendor structures |  | generic code, tag [uapi] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`3085e29e2f83`](https://git.kernel.org/torvalds/c/3085e29e2f83) | [uapi] | ib/mlx5: Move and decouple user vendor structures |  | generic code, tag [uapi] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`486f60954c71`](https://git.kernel.org/torvalds/c/486f60954c71) | [uapi] | ib/mthca: Move user vendor structures |  | generic code, tag [uapi] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`c546b2a3b661`](https://git.kernel.org/torvalds/c/c546b2a3b661) | [uapi] | ib/nes: Move user vendor structures |  | generic code, tag [uapi] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`a7fe7380f6b2`](https://git.kernel.org/torvalds/c/a7fe7380f6b2) | [uapi] | ib/ocrdma: Move user vendor structures |  | generic code, tag [uapi] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`989a3a8f91ba`](https://git.kernel.org/torvalds/c/989a3a8f91ba) | [uapi] | ib/uverbs: Add more fields to IPv4 flow specification |  | generic code, tag [uapi] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`47adf2f4f580`](https://git.kernel.org/torvalds/c/47adf2f4f580) | [uapi] | ib/uverbs: Expose RSS related capabilities |  | generic code, tag [uapi] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`84b23f9b5868`](https://git.kernel.org/torvalds/c/84b23f9b5868) | [lib] | locking/rwsem: Return void in __rwsem_mark_wake() |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 4.9 | [`70800c3c0cc5`](https://git.kernel.org/torvalds/c/70800c3c0cc5) | [lib] | locking/rwsem: Scan the wait_list for readers only once |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | 4.9 | [`f573bbc7a777`](https://git.kernel.org/torvalds/c/f573bbc7a777) | [include] | pkeys: Remove easily triggered WARN |  | generic code, tag [include] | 3.10.0-1076 |
| CANDIDATE | 4.10 | [`6ea76f33e9ab`](https://git.kernel.org/torvalds/c/6ea76f33e9ab) | [uapi] | Add type 0x28 NVME type code to scsi fc headers |  | generic code, tag [uapi] | 3.10.0-624 |
| CANDIDATE | 4.10 | [`610236587600`](https://git.kernel.org/torvalds/c/610236587600) | [uapi] | bpf: Add new cgroup attach type to enable sock modifications |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`7092dff2af0b`](https://git.kernel.org/torvalds/c/7092dff2af0b) | [lib] | debugobj, workqueue: remove keventd_up() usage |  | generic code, tag [lib] | 3.10.0-981 |
| CANDIDATE | 4.10 | [`94842b4fc4d6`](https://git.kernel.org/torvalds/c/94842b4fc4d6) (loose) | [uapi] | ethtool: add support for 2500BaseT and 5000BaseT link modes |  | generic code, tag [uapi] | 3.10.0-639 |
| CANDIDATE | 4.10 | [`b1a27eac7fef`](https://git.kernel.org/torvalds/c/b1a27eac7fef) | [uapi] | ib/cxgb3: fix misspelling in header guard |  | generic code, tag [uapi] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`e730139b3464`](https://git.kernel.org/torvalds/c/e730139b3464) | [uapi] | ib/hfi1: Disable header suppression for short packets |  | generic code, tag [uapi] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`1cbe6fc86ccf`](https://git.kernel.org/torvalds/c/1cbe6fc86ccf) | [uapi] | ib/mlx5: Add support for CQE compressing |  | generic code, tag [uapi] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`7e43a2a5bae3`](https://git.kernel.org/torvalds/c/7e43a2a5bae3) | [uapi] | ib/mlx5: Report mlx5 CQE compression caps during query |  | generic code, tag [uapi] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`191ded4a4d99`](https://git.kernel.org/torvalds/c/191ded4a4d99) | [uapi] | ib/mlx5: Report mlx5 multi packet WQE caps during query |  | generic code, tag [uapi] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`d949167d68b3`](https://git.kernel.org/torvalds/c/d949167d68b3) | [uapi] | ib/mlx5: Report mlx5 packet pacing capabilities when querying device |  | generic code, tag [uapi] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`6ad279c5a2e5`](https://git.kernel.org/torvalds/c/6ad279c5a2e5) | [uapi] | ib/mlx5: Report that device has udata response in create_ah |  | generic code, tag [uapi] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`5097e71f3eda`](https://git.kernel.org/torvalds/c/5097e71f3eda) | [uapi] | ib/mlx5: Use kernel driver to help userspace create ah |  | generic code, tag [uapi] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`a0cb4c759af1`](https://git.kernel.org/torvalds/c/a0cb4c759af1) | [uapi] | ib/uverbs: Add support for Vxlan protocol |  | generic code, tag [uapi] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`189aba99e700`](https://git.kernel.org/torvalds/c/189aba99e700) | [uapi] | ib/uverbs: Extend modify_qp and support packet pacing |  | generic code, tag [uapi] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`d5a187daf585`](https://git.kernel.org/torvalds/c/d5a187daf585) | [] | mm, rmap: handle anon_vma_prepare() common case inline | CVE-2022-42703 | generic code, tag [none] | 3.10.0-1160.87.1 |
| CANDIDATE | 4.10 | [`bb1107f7c605`](https://git.kernel.org/torvalds/c/bb1107f7c605) | [include] | mm, slab: make sure that KMALLOC_MAX_SIZE will fit into MAX_ORDER |  | generic code, tag [include] | 3.10.0-1127.3 |
| CANDIDATE | 4.10 | [`c1ef8e2c0235`](https://git.kernel.org/torvalds/c/c1ef8e2c0235) | [linux] | mm: disable numa migration faults for dax vmas |  | generic code, tag [linux] | 3.10.0-1046 |
| CANDIDATE | 4.10 | [`a317178e36b5`](https://git.kernel.org/torvalds/c/a317178e36b5) | [lib] | parser: add u64 number parser |  | generic code, tag [lib] | 3.10.0-624 |
| CANDIDATE | 4.10 | [`602d9858f07c`](https://git.kernel.org/torvalds/c/602d9858f07c) | [lib] | swiotlb: ensure that page-sized mappings are page-aligned |  | generic code, tag [lib] | 3.10.0-743 |
| CANDIDATE | 4.10 | [`541b6fe63023`](https://git.kernel.org/torvalds/c/541b6fe63023) | [uapi] | usb: add helper to extract bits 12:11 of wMaxPacketSize |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.10 | [`abb621844f6a`](https://git.kernel.org/torvalds/c/abb621844f6a) | [uapi] | usb: ch9: make usb_endpoint_maxp() return only packet size |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.11 | [`bbfc3c5d6c78`](https://git.kernel.org/torvalds/c/bbfc3c5d6c78) | [] | block: queue lock must be acquired when iterating over rls |  | generic code, tag [none] | 3.10.0-1160.54.1 |
| CANDIDATE | 4.11 | [`a5759b2bffa8`](https://git.kernel.org/torvalds/c/a5759b2bffa8) | [lib] | dma-debug: add comment for failed to check map error |  | generic code, tag [lib] | 3.10.0-892 |
| CANDIDATE | 4.11 | [`af1cb95d2e34`](https://git.kernel.org/torvalds/c/af1cb95d2e34) | [uapi] | ib/uverbs: Enable WQ creation and modification with cvlan offload |  | generic code, tag [uapi] | 3.10.0-650 |
| CANDIDATE | 4.11 | [`5f23d4265f8e`](https://git.kernel.org/torvalds/c/5f23d4265f8e) | [uapi] | ib/uverbs: Expose vlan offloads capabilities |  | generic code, tag [uapi] | 3.10.0-650 |
| CANDIDATE | 4.11 | [`19ba1eb15a2a`](https://git.kernel.org/torvalds/c/19ba1eb15a2a) | [uapi] | input: psmouse - add a custom serio protocol to send extra information |  | CONFIG_INPUT=y in A37 | 3.10.0-884 |
| CANDIDATE | 4.11 | [`44091d29f207`](https://git.kernel.org/torvalds/c/44091d29f207) (loose) | [lib] | Introduce priority array area manager |  | generic code, tag [lib] | 3.10.0-647 |
| CANDIDATE | 4.11 | [`9dcfe2c75b51`](https://git.kernel.org/torvalds/c/9dcfe2c75b51) | [lib] | locking/refcounts: Change WARN() to WARN_ONCE() |  | generic code, tag [lib] | 3.10.0-785 |
| CANDIDATE | 4.11 | [`29dee3c03abc`](https://git.kernel.org/torvalds/c/29dee3c03abc) | [lib] | locking/refcounts: Out-of-line everything |  | generic code, tag [lib] | 3.10.0-785 |
| CANDIDATE | 4.11 | [`bc88c10d7e69`](https://git.kernel.org/torvalds/c/bc88c10d7e69) | [lib] | locking/spinlock/debug: Remove spinlock lockup detection code |  | generic code, tag [lib] | 3.10.0-589 |
| CANDIDATE | 4.11 | [`f405df5de317`](https://git.kernel.org/torvalds/c/f405df5de317) | [lib] | refcount_t: Introduce a special purpose refcount type |  | generic code, tag [lib] | 3.10.0-785 |
| CANDIDATE | 4.11 | [`50ab3af16c48`](https://git.kernel.org/torvalds/c/50ab3af16c48) (loose) | [lib] | Remove string from parman config selection |  | generic code, tag [lib] | 3.10.0-647 |
| CANDIDATE | 4.11 | [`2c956a60778c`](https://git.kernel.org/torvalds/c/2c956a60778c) | [lib] | siphash: add cryptographically secure PRF | CVE-2019-10638 | generic code, tag [lib] | 3.10.0-1090 |
| CANDIDATE | 4.12 | [`d8edd9ed156a`](https://git.kernel.org/torvalds/c/d8edd9ed156a) | [] | Bluetooth: L2CAP: Fix L2CAP_CR_SCID_IN_USE value | CVE-2022-42896 | CONFIG_BT=y in A37 | 3.10.0-1160.113.1 |
| CANDIDATE | 4.12 | [`e57d05520f9c`](https://git.kernel.org/torvalds/c/e57d05520f9c) | [lib] | dma-debug: use offset_in_page() macro |  | generic code, tag [lib] | 3.10.0-892 |
| CANDIDATE | 4.12 | [`25ce4be72411`](https://git.kernel.org/torvalds/c/25ce4be72411) | [linux] | genirq: Return the IRQ name from free_irq() |  | generic code, tag [linux] | 3.10.0-878 |
| CANDIDATE | 4.12 | [`bd174169c7a1`](https://git.kernel.org/torvalds/c/bd174169c7a1) | [lib] | locking/refcount: Add refcount_t API kernel-doc comments |  | generic code, tag [lib] | 3.10.0-785 |
| CANDIDATE | 4.12 | [`d110a3942aca`](https://git.kernel.org/torvalds/c/d110a3942aca) | [] | netfilter: don't setup nat info for confirmed ct |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1160.38.1 |
| CANDIDATE | 4.12 | [`d557d1b58b35`](https://git.kernel.org/torvalds/c/d557d1b58b35) | [lib] | refcount: change EXPORT_SYMBOL markings |  | generic code, tag [lib] | 3.10.0-785 |
| CANDIDATE | 4.12 | [`ea6819e1f2d6`](https://git.kernel.org/torvalds/c/ea6819e1f2d6) | [uapi] | smc_diag.h: fix include from userland |  | generic code, tag [uapi] | 3.10.0-785 |
| CANDIDATE | 4.13 | [`40304b2a1567`](https://git.kernel.org/torvalds/c/40304b2a1567) | [uapi] | bpf: BPF support for sock_ops |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`b7d3ed5be9bd`](https://git.kernel.org/torvalds/c/b7d3ed5be9bd) | [uapi] | bpf: update perf event helper functions documentation |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`3be6d9b6da2c`](https://git.kernel.org/torvalds/c/3be6d9b6da2c) | [lib] | dma-virt: remove dma_supported and mapping_error methods |  | generic code, tag [lib] | 3.10.0-722 |
| CANDIDATE | 4.13 | [`fd25d19f6b8d`](https://git.kernel.org/torvalds/c/fd25d19f6b8d) | [lib] | locking/refcount: Create unchecked atomic_t implementation |  | generic code, tag [lib] | 3.10.0-785 |
| CANDIDATE | 4.13 | [`8812c24d28f4`](https://git.kernel.org/torvalds/c/8812c24d28f4) | [] | net/mlx5: Add fast unload support in shutdown flow |  | generic code, tag [none] | 3.10.0-1160.77.1 |
| CANDIDATE | 4.13 | [`4525abeaae54`](https://git.kernel.org/torvalds/c/4525abeaae54) | [] | net/mlx5: Expose command polling interface |  | generic code, tag [none] | 3.10.0-1160.77.1 |
| CANDIDATE | 4.13 | [`c800aaf8d869`](https://git.kernel.org/torvalds/c/c800aaf8d869) | [] | packet: fix use-after-free in prb_retire_rx_blk_timer_expired() |  | CONFIG_PACKET=y in A37 | 3.10.0-1160.92.1 |
| CANDIDATE | 4.13 | [`81fbfe8adaf3`](https://git.kernel.org/torvalds/c/81fbfe8adaf3) | [linux] | ptr_ring: use kmalloc_array() |  | generic code, tag [linux] | 3.10.0-996 |
| CANDIDATE | 4.13 | [`3c4d7559159b`](https://git.kernel.org/torvalds/c/3c4d7559159b) | [uapi] | tls: kernel TLS support |  | generic code, tag [uapi] | 3.10.0-974 |
| CANDIDATE | 4.13 | [`b10bf0e28104`](https://git.kernel.org/torvalds/c/b10bf0e28104) | [lib] | uuid: don't export guid_index and uuid_index |  | generic code, tag [lib] | 3.10.0-817 |
| CANDIDATE | 4.13 | [`df33767d9fe0`](https://git.kernel.org/torvalds/c/df33767d9fe0) | [lib] | uuid: hoist helpers uuid_equal() and uuid_copy() from xfs |  | generic code, tag [lib] | 3.10.0-817 |
| CANDIDATE | 4.13 | [`ef40dda5bbc3`](https://git.kernel.org/torvalds/c/ef40dda5bbc3) | [lib] | uuid: hoist uuid_is_null() helper from libnvdimm |  | generic code, tag [lib] | 3.10.0-817 |
| CANDIDATE | 4.13 | [`f9727a17db9b`](https://git.kernel.org/torvalds/c/f9727a17db9b) | [lib] | uuid: rename uuid types |  | generic code, tag [lib] | 3.10.0-817 |
| CANDIDATE | 4.14 | [`ea6789980fda`](https://git.kernel.org/torvalds/c/ea6789980fda) | [lib] | assoc_array: Fix a buggy node-splitting case | CVE-2017-1219 | generic code, tag [lib] | 3.10.0-794 |
| CANDIDATE | 4.14 | [`19cab8872692`](https://git.kernel.org/torvalds/c/19cab8872692) (loose) | [uapi] | ethtool: Add back transceiver type |  | generic code, tag [uapi] | 3.10.0-976 |
| CANDIDATE | 4.14 | [`e2be04c7f995`](https://git.kernel.org/torvalds/c/e2be04c7f995) | [uapi] | license cleanup: add SPDX license identifier to uapi header files with a license |  | generic code, tag [uapi] | 3.10.0-974 |
| CANDIDATE | 4.14 | [`d2aa060d40fa`](https://git.kernel.org/torvalds/c/d2aa060d40fa) | [] | net/mlx5: Cancel health poll before sending panic teardown command |  | generic code, tag [none] | 3.10.0-1160.77.1 |
| CANDIDATE | 4.14 | [`75c2631468e8`](https://git.kernel.org/torvalds/c/75c2631468e8) | [] | netfilter: nf_nat: don't bug when mapping already exists |  | CONFIG_NF_NAT=y in A37 | 3.10.0-1160.38.1 |
| CANDIDATE | 4.15 | [`6e66ec3cae02`](https://git.kernel.org/torvalds/c/6e66ec3cae02) | [linux] | audit: Add new syscalls to the perm=w filter |  | CONFIG_AUDIT=y in A37 | 3.10.0-1015 |
| CANDIDATE | 4.15 | [`067cae47771c`](https://git.kernel.org/torvalds/c/067cae47771c) | [uapi] | bpf: Use char in prog and map name |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`bc48f001de12`](https://git.kernel.org/torvalds/c/bc48f001de12) | [] | buffer: eliminate the need to call free_more_memory() in __getblk_slow() |  | generic code, tag [none] | 3.10.0-1160.62.1 |
| CANDIDATE | 4.15 | [`bc48f001de12`](https://git.kernel.org/torvalds/c/bc48f001de12) | [] | buffer: eliminate the need to call free_more_memory() in __getblk_slow() |  | generic code, tag [none] | 3.10.0-1160.55.1 |
| CANDIDATE | 4.15 | [`94dc24c0c59a`](https://git.kernel.org/torvalds/c/94dc24c0c59a) | [] | buffer: grow_dev_page() should use __GFP_NOFAIL for all cases |  | generic code, tag [none] | 3.10.0-1160.62.1 |
| CANDIDATE | 4.15 | [`94dc24c0c59a`](https://git.kernel.org/torvalds/c/94dc24c0c59a) | [] | buffer: grow_dev_page() should use __GFP_NOFAIL for all cases |  | generic code, tag [none] | 3.10.0-1160.55.1 |
| CANDIDATE | 4.15 | [`640ab98fb362`](https://git.kernel.org/torvalds/c/640ab98fb362) | [] | buffer: have alloc_page_buffers() use __GFP_NOFAIL |  | generic code, tag [none] | 3.10.0-1160.62.1 |
| CANDIDATE | 4.15 | [`640ab98fb362`](https://git.kernel.org/torvalds/c/640ab98fb362) | [] | buffer: have alloc_page_buffers() use __GFP_NOFAIL |  | generic code, tag [none] | 3.10.0-1160.55.1 |
| CANDIDATE | 4.15 | [`2a8358d8a339`](https://git.kernel.org/torvalds/c/2a8358d8a339) | [lib] | bug: define the "cut here" string in a single place |  | generic code, tag [lib] | 3.10.0-975 |
| CANDIDATE | 4.15 | [`309fa3470fca`](https://git.kernel.org/torvalds/c/309fa3470fca) | [uapi] | ib/mlx5: Add support for RSS on the inner packet |  | generic code, tag [uapi] | 3.10.0-889 |
| CANDIDATE | 4.15 | [`f95ef6cbae61`](https://git.kernel.org/torvalds/c/f95ef6cbae61) | [uapi] | ib/mlx5: Add tunneling offloads support |  | generic code, tag [uapi] | 3.10.0-889 |
| CANDIDATE | 4.15 | [`ccc870879027`](https://git.kernel.org/torvalds/c/ccc870879027) | [uapi] | ib/mlx5: Allow creation of a multi-packet RQ |  | generic code, tag [uapi] | 3.10.0-889 |
| CANDIDATE | 4.15 | [`b4f34597a5ce`](https://git.kernel.org/torvalds/c/b4f34597a5ce) | [uapi] | ib/mlx5: Expose multi-packet RQ capabilities |  | generic code, tag [uapi] | 3.10.0-889 |
| CANDIDATE | 4.15 | [`f17966f19575`](https://git.kernel.org/torvalds/c/f17966f19575) | [uapi] | ib/mlx5: Fix ABI alignment to 64 bit |  | generic code, tag [uapi] | 3.10.0-889 |
| CANDIDATE | 4.15 | [`de57f2ad06d5`](https://git.kernel.org/torvalds/c/de57f2ad06d5) | [uapi] | ib/mlx5: Support 128B CQE compression feature |  | generic code, tag [uapi] | 3.10.0-889 |
| CANDIDATE | 4.15 | [`7a0c8f4244e9`](https://git.kernel.org/torvalds/c/7a0c8f4244e9) | [uapi] | ib/mlx5: Support padded 128B CQE feature |  | generic code, tag [uapi] | 3.10.0-889 |
| CANDIDATE | 4.15 | [`18bd90729237`](https://git.kernel.org/torvalds/c/18bd90729237) | [uapi] | ib/uverbs: Add CQ moderation capability to query_device |  | generic code, tag [uapi] | 3.10.0-876 |
| CANDIDATE | 4.15 | [`869ddcf8b351`](https://git.kernel.org/torvalds/c/869ddcf8b351) | [uapi] | ib/uverbs: Allow CQ moderation with modify CQ |  | generic code, tag [uapi] | 3.10.0-876 |
| CANDIDATE | 4.15 | [`085b30625e39`](https://git.kernel.org/torvalds/c/085b30625e39) | [uapi] | perf/core: Add PERF_AUX_FLAG_COLLISION to report colliding samples |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.15 | [`a8ceb5dbfde1`](https://git.kernel.org/torvalds/c/a8ceb5dbfde1) | [linux] | ptr_ring: add barriers |  | generic code, tag [linux] | 3.10.0-996 |
| CANDIDATE | 4.15 | [`66940f35d5a8`](https://git.kernel.org/torvalds/c/66940f35d5a8) | [linux] | ptr_ring: document usage around __ptr_ring_peek |  | generic code, tag [linux] | 3.10.0-996 |
| CANDIDATE | 4.16 | [`a6618f4aedb2`](https://git.kernel.org/torvalds/c/a6618f4aedb2) | [uapi] | alsa: usb-audio: Fix parsing descriptor of UAC2 processing unit |  | CONFIG_SND_USB_AUDIO=y in A37 | 3.10.0-1019 |
| CANDIDATE | 4.16 | [`af1da6868437`](https://git.kernel.org/torvalds/c/af1da6868437) | [lib] | dma-debug: fix memory leak in debug_dma_alloc_coherent |  | generic code, tag [lib] | 3.10.0-892 |
| CANDIDATE | 4.16 | [`776a3906b692`](https://git.kernel.org/torvalds/c/776a3906b692) | [uapi] | ib/mlx5: Add support for DC target QP |  | generic code, tag [uapi] | 3.10.0-889 |
| CANDIDATE | 4.16 | [`1ee47ab3e8d8`](https://git.kernel.org/torvalds/c/1ee47ab3e8d8) | [uapi] | ib/mlx5: Enable QP creation with a given blue flame index |  | generic code, tag [uapi] | 3.10.0-889 |
| CANDIDATE | 4.16 | [`31a78a5a7983`](https://git.kernel.org/torvalds/c/31a78a5a7983) | [uapi] | ib/mlx5: Extend UAR stuff to support dynamic allocation |  | generic code, tag [uapi] | 3.10.0-889 |
| CANDIDATE | 4.16 | [`b4aaa1f0b415`](https://git.kernel.org/torvalds/c/b4aaa1f0b415) | [uapi] | ib/mlx5: Handle type IB_QPT_DRIVER when creating a QP |  | generic code, tag [uapi] | 3.10.0-889 |
| CANDIDATE | 4.16 | [`5c99eaecb1fc`](https://git.kernel.org/torvalds/c/5c99eaecb1fc) | [uapi] | ib/mlx5: Mmap the HCA's clock info to user-space |  | generic code, tag [uapi] | 3.10.0-889 |
| CANDIDATE | 4.16 | [`4e2b53a5cb5a`](https://git.kernel.org/torvalds/c/4e2b53a5cb5a) | [uapi] | ib/mlx5: Report inner RSS capability |  | generic code, tag [uapi] | 3.10.0-889 |
| CANDIDATE | 4.16 | [`5d2beb576d32`](https://git.kernel.org/torvalds/c/5d2beb576d32) | [uapi] | ib/uverbs: Use __aligned_u64 for uapi headers |  | generic code, tag [uapi] | 3.10.0-876 |
| CANDIDATE | 4.16 | [`4982327ff675`](https://git.kernel.org/torvalds/c/4982327ff675) | [uapi] | input: add KEY_ROTATE_LOCK_TOGGLE |  | CONFIG_INPUT=y in A37 | 3.10.0-832 |
| CANDIDATE | 4.16 | [`172856eac7cf`](https://git.kernel.org/torvalds/c/172856eac7cf) | [lib] | kobject: Export kobj_ns_grab_current() and kobj_ns_drop() |  | generic code, tag [lib] | 3.10.0-867 |
| CANDIDATE | 4.16 | [`f2ba5a5baecf`](https://git.kernel.org/torvalds/c/f2ba5a5baecf) | [uapi] | libnvdimm, namespace: make min namespace size 4K |  | generic code, tag [uapi] | 3.10.0-1034 |
| CANDIDATE | 4.16 | [`e496612c5130`](https://git.kernel.org/torvalds/c/e496612c5130) | [] | mm: do not stall register_shrinker() |  | generic code, tag [none] | 3.10.0-1160.22.1 |
| CANDIDATE | 4.16 | [`8619d384eb5e`](https://git.kernel.org/torvalds/c/8619d384eb5e) | [linux] | ptr_ring: clean up documentation |  | generic code, tag [linux] | 3.10.0-996 |
| CANDIDATE | 4.16 | [`84328342a70a`](https://git.kernel.org/torvalds/c/84328342a70a) | [linux] | ptr_ring: disallow lockless __ptr_ring_full |  | generic code, tag [linux] | 3.10.0-996 |
| CANDIDATE | 4.16 | [`6e6e41c31122`](https://git.kernel.org/torvalds/c/6e6e41c31122) | [linux] | ptr_ring: fail early if queue occupies more than KMALLOC_MAX_SIZE |  | generic code, tag [linux] | 3.10.0-996 |
| CANDIDATE | 4.16 | [`406de7555424`](https://git.kernel.org/torvalds/c/406de7555424) | [linux] | ptr_ring: keep consumer_head valid at all times |  | generic code, tag [linux] | 3.10.0-996 |
| CANDIDATE | 4.16 | [`54e02162d445`](https://git.kernel.org/torvalds/c/54e02162d445) | [linux] | ptr_ring: prevent integer overflow when calculating size |  | generic code, tag [linux] | 3.10.0-996 |
| CANDIDATE | 4.16 | [`a07d29c6724a`](https://git.kernel.org/torvalds/c/a07d29c6724a) | [linux] | ptr_ring: prevent queue load/store tearing |  | generic code, tag [linux] | 3.10.0-996 |
| CANDIDATE | 4.16 | [`a259df36d1fb`](https://git.kernel.org/torvalds/c/a259df36d1fb) | [linux] | ptr_ring: READ/WRITE_ONCE for __ptr_ring_empty |  | generic code, tag [linux] | 3.10.0-996 |
| CANDIDATE | 4.16 | [`0bf7800f1799`](https://git.kernel.org/torvalds/c/0bf7800f1799) | [linux] | ptr_ring: try vmalloc() when kmalloc() fails |  | generic code, tag [linux] | 3.10.0-996 |
| CANDIDATE | 4.17 | [`d90a10e2444b`](https://git.kernel.org/torvalds/c/d90a10e2444b) | [linux] | fsnotify: Fix fsnotify_mark_connector race |  | generic code, tag [linux] | 3.10.0-896 |
| CANDIDATE | 4.17 | [`d41c12089553`](https://git.kernel.org/torvalds/c/d41c12089553) | [uapi] | ib/uverbs: Expose device memory capabilities to user |  | generic code, tag [uapi] | 3.10.0-975 |
| CANDIDATE | 4.17 | [`0ede73bc012c`](https://git.kernel.org/torvalds/c/0ede73bc012c) | [uapi] | ib/uverbs: Extend uverbs_ioctl header with driver_id |  | generic code, tag [uapi] | 3.10.0-975 |
| CANDIDATE | 4.17 | [`56ab0b38b80e`](https://git.kernel.org/torvalds/c/56ab0b38b80e) | [uapi] | ib/uverbs: Introduce ESP steering match filter |  | generic code, tag [uapi] | 3.10.0-975 |
| CANDIDATE | 4.17 | [`be23fb9a2c1d`](https://git.kernel.org/torvalds/c/be23fb9a2c1d) | [uapi] | ib/uverbs: UAPI pointers should use __aligned_u64 type |  | generic code, tag [uapi] | 3.10.0-975 |
| CANDIDATE | 4.17 | [`3e14c6abbfb5`](https://git.kernel.org/torvalds/c/3e14c6abbfb5) | [lib] | kobject: don't use WARN for registration failures |  | generic code, tag [lib] | 3.10.0-1139 |
| CANDIDATE | 4.17 | [`82d1f1178a85`](https://git.kernel.org/torvalds/c/82d1f1178a85) | [lib] | lib/kobject: Join string literals back |  | generic code, tag [lib] | 3.10.0-1139 |
| CANDIDATE | 4.17 | [`f07cbebb6daf`](https://git.kernel.org/torvalds/c/f07cbebb6daf) | [lib] | locking/kconfig: Add LOCK_DEBUGGING_SUPPORT to make it more readable |  | generic code, tag [lib] | 3.10.0-969 |
| CANDIDATE | 4.17 | [`19193bcad8dc`](https://git.kernel.org/torvalds/c/19193bcad8dc) | [lib] | locking/kconfig: Restructure the lock debugging menu |  | generic code, tag [lib] | 3.10.0-969 |
| CANDIDATE | 4.17 | [`d7d760efad70`](https://git.kernel.org/torvalds/c/d7d760efad70) | [lib] | locking/rwsem: Add a new RWSEM_ANONYMOUSLY_OWNED flag |  | generic code, tag [lib] | 3.10.0-969 |
| CANDIDATE | 4.17 | [`5149cbac4235`](https://git.kernel.org/torvalds/c/5149cbac4235) | [lib] | locking/rwsem: Add DEBUG_RWSEMS to look for lock/unlock mismatches |  | generic code, tag [lib] | 3.10.0-969 |
| CANDIDATE | 4.17 | [`6c75062823d8`](https://git.kernel.org/torvalds/c/6c75062823d8) | [] | net/mlx5: Change teardown with force mode failure message to warning |  | generic code, tag [none] | 3.10.0-1160.77.1 |
| CANDIDATE | 4.17 | [`1ef903bf795b`](https://git.kernel.org/torvalds/c/1ef903bf795b) | [] | net/mlx5: Free IRQs in shutdown path |  | generic code, tag [none] | 3.10.0-1160.77.1 |
| CANDIDATE | 4.17 | [`3caa973b7a26`](https://git.kernel.org/torvalds/c/3caa973b7a26) | [] | rcu: Call touch_nmi_watchdog() while printing stall warnings |  | generic code, tag [none] | 3.10.0-1160.32.1 |
| CANDIDATE | 4.17 | [`4ace53f1ed40`](https://git.kernel.org/torvalds/c/4ace53f1ed40) | [lib] | sbitmap: use test_and_set_bit_lock()/clear_bit_unlock() |  | generic code, tag [lib] | 3.10.0-896 |
| CANDIDATE | 4.17 | [`c46234ebb4d1`](https://git.kernel.org/torvalds/c/c46234ebb4d1) | [uapi] | tls: RX path for ktls |  | generic code, tag [uapi] | 3.10.0-974 |
| CANDIDATE | 4.17 | [`0c92c7a3c5d4`](https://git.kernel.org/torvalds/c/0c92c7a3c5d4) | [] | tracing: Fix bad use of igrab in trace_uprobe.c |  | CONFIG_FTRACE=y in A37 | 3.10.0-1160.74.1 |
| CANDIDATE | 4.18 | [`e6f32bf48fb1`](https://git.kernel.org/torvalds/c/e6f32bf48fb1) | [uapi] | alsa: control: complement TLV macro for db-minmax and db-linear types |  | CONFIG_SND=y in A37 | 3.10.0-1019 |
| CANDIDATE | 4.18 | [`08f9f4485f21`](https://git.kernel.org/torvalds/c/08f9f4485f21) | [uapi] | alsa: core api: define offsets for TLV items |  | CONFIG_SND=y in A37 | 3.10.0-1019 |
| CANDIDATE | 4.18 | [`2dd5aa15d9a2`](https://git.kernel.org/torvalds/c/2dd5aa15d9a2) | [uapi] | alsa: usb-audio: Add bi-directional terminal types |  | CONFIG_SND_USB_AUDIO=y in A37 | 3.10.0-1019 |
| CANDIDATE | 4.18 | [`ae20b254306a`](https://git.kernel.org/torvalds/c/ae20b254306a) | [] | Drivers: hv: vmbus: enable VMBus protocol version 5.0 |  | generic code, tag [none] | 3.10.0-1160.27.1 |
| CANDIDATE | 4.18 | [`20b6563ba164`](https://git.kernel.org/torvalds/c/20b6563ba164) | [uapi] | ib/uverbs: Expose GRE flow spec to the user-kernel ABI header |  | generic code, tag [uapi] | 3.10.0-982 |
| CANDIDATE | 4.18 | [`0d86bbec71b2`](https://git.kernel.org/torvalds/c/0d86bbec71b2) | [uapi] | ib/uverbs: Expose MPLS flow spec to the user-kernel ABI header |  | generic code, tag [uapi] | 3.10.0-982 |
| CANDIDATE | 4.18 | [`522239b445a2`](https://git.kernel.org/torvalds/c/522239b445a2) | [lib] | uio, lib: Fix CONFIG_ARCH_HAS_UACCESS_MCSAFE compilation |  | generic code, tag [lib] | 3.10.0-942 |
| CANDIDATE | 4.19 | [`5544adb9707f`](https://git.kernel.org/torvalds/c/5544adb9707f) | [] | flow_dissector: Dissect tos and ttl from the tunnel info |  | generic code, tag [none] | 3.10.0-998 |
| CANDIDATE | 4.19 | [`8942acea3723`](https://git.kernel.org/torvalds/c/8942acea3723) | [uapi] | ib/uverbs: Pass IB_UVERBS_QPF_GRH_REQUIRED to user space |  | generic code, tag [uapi] | 3.10.0-992 |
| CANDIDATE | 4.20 | [`571f739083e2`](https://git.kernel.org/torvalds/c/571f739083e2) | [] | Bluetooth: Use separate L2CAP LE credit based connection result values | CVE-2022-42896 | CONFIG_BT=y in A37 | 3.10.0-1160.113.1 |
| CANDIDATE | 4.20 | [`925b9cd1b89a`](https://git.kernel.org/torvalds/c/925b9cd1b89a) | [lib] | locking/rwsem: Make owner store task pointer of last owning reader |  | generic code, tag [lib] | 3.10.0-969 |
| CANDIDATE | 4.20 | [`fcd29ad17c6f`](https://git.kernel.org/torvalds/c/fcd29ad17c6f) | [] | net/mlx5: Add Fast teardown support |  | generic code, tag [none] | 3.10.0-1160.77.1 |
| CANDIDATE | 5.0 | [`96d7cb932e82`](https://git.kernel.org/torvalds/c/96d7cb932e82) | [] | floppy: check_events callback should not return a negative number |  | generic code, tag [none] | 3.10.0-1160.25.1 |
| CANDIDATE | 5.0 | [`2c2ade81741c`](https://git.kernel.org/torvalds/c/2c2ade81741c) | [] | mm: page_alloc: fix ref bias in page_frag_alloc() for 1-byte allocs |  | generic code, tag [none] | 3.10.0-1160.86.1 |
| CANDIDATE | 5.0 | [`8644772637de`](https://git.kernel.org/torvalds/c/8644772637de) | [] | mm: Use fixed constant in page_frag_alloc instead of size + 1 |  | generic code, tag [none] | 3.10.0-1160.86.1 |
| CANDIDATE | 5.0 | [`dcf6e2e38a1c`](https://git.kernel.org/torvalds/c/dcf6e2e38a1c) | [] | mmc: block: handle complete_work on separate workqueue |  | CONFIG_MMC=y in A37 | 3.10.0-1160.22.1 |
| CANDIDATE | 5.0 | [`aff6db454599`](https://git.kernel.org/torvalds/c/aff6db454599) | [linux] | ptr_ring: wrap back ->producer in __ptr_ring_swap_queue() |  | generic code, tag [linux] | 3.10.0-996 |
| CANDIDATE | 5.1 | [`04f5866e41fb`](https://git.kernel.org/torvalds/c/04f5866e41fb) | [linux] | coredump: fix race condition between mmget_not_zero()/get_task_mm() and core dumping | CVE-2019-3892 | CONFIG_COREDUMP=y in A37 | 3.10.0-1043 |
| CANDIDATE | 5.1 | [`091141a42e15`](https://git.kernel.org/torvalds/c/091141a42e15) | [] | fs: add fget_many() and fput_many() | CVE-2021-4083 | generic code, tag [none] | 3.10.0-1160.60.1 |
| CANDIDATE | 5.1 | [`c546951d9c93`](https://git.kernel.org/torvalds/c/c546951d9c93) | [] | sched/core: Use READ_ONCE()/WRITE_ONCE() in move_queued_task()/task_rq_lock() |  | generic code, tag [none] | 3.10.0-1160.22.1 |
| CANDIDATE | 5.1 | [`abe420bfae52`](https://git.kernel.org/torvalds/c/abe420bfae52) | [lib] | swiotlb: Introduce swiotlb_max_mapping_size() |  | generic code, tag [lib] | 3.10.0-1068 |
| CANDIDATE | 5.2 | [`a9e9bcb45b15`](https://git.kernel.org/torvalds/c/a9e9bcb45b15) | [lib] | locking/rwsem: Prevent decrement of reader count before increment |  | generic code, tag [lib] | 3.10.0-1050 |
| CANDIDATE | 5.2 | [`316793fb2d90`](https://git.kernel.org/torvalds/c/316793fb2d90) | [include] | net/mlx5: E-Switch: Introduce prio tag mode |  | generic code, tag [include] | 3.10.0-1080 |
| CANDIDATE | 5.3 | [`7a32f2962c56`](https://git.kernel.org/torvalds/c/7a32f2962c56) | [include] | net/mlx5: Fix modify_cq_in alignment |  | generic code, tag [include] | 3.10.0-1080 |
| CANDIDATE | 5.3 | [`c6d4e45d3b44`](https://git.kernel.org/torvalds/c/c6d4e45d3b44) | [include] | net/mlx5: Introduce termination table bits |  | generic code, tag [include] | 3.10.0-1080 |
| CANDIDATE | 5.3 | [`e2ca070f89ec`](https://git.kernel.org/torvalds/c/e2ca070f89ec) | [] | net: sched: protect against stack overflow in TC act_mirred |  | generic code, tag [none] | 3.10.0-1160.25.1 |
| CANDIDATE | 5.3 | [`959b69ef57db`](https://git.kernel.org/torvalds/c/959b69ef57db) | [] | netfilter: conntrack: always store window size un-scaled |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1160.97.1 |
| CANDIDATE | 5.3 | [`5e2d2cc2588b`](https://git.kernel.org/torvalds/c/5e2d2cc2588b) | [] | sched/fair: Don't assign runtime for throttled cfs_rq |  | generic code, tag [none] | 3.10.0-1160.96.1 |
| CANDIDATE | 5.3 | [`16d51a590a8c`](https://git.kernel.org/torvalds/c/16d51a590a8c) | [] | sched/fair: Don't free p->numa_faults with concurrent readers | CVE-2019-20934 | generic code, tag [none] | 3.10.0-1160.32.1 |
| CANDIDATE | 5.3 | [`cb361d8cdef6`](https://git.kernel.org/torvalds/c/cb361d8cdef6) | [] | sched/fair: Use RCU accessors consistently for ->numa_group | CVE-2019-20934 | generic code, tag [none] | 3.10.0-1160.32.1 |
| CANDIDATE | 5.4 | [`d1854d509d61`](https://git.kernel.org/torvalds/c/d1854d509d61) | [] | ax88179_178a: Merge memcpy + le32_to_cpus to get_unaligned_le32 | CVE-2022-2964 | CONFIG_USB_USBNET=y in A37 | 3.10.0-1160.82.1 |
| CANDIDATE | 5.4 | [`e1a366be5cb4`](https://git.kernel.org/torvalds/c/e1a366be5cb4) | [] | mm: memcontrol: switch to rcu protection in drain_all_stock() |  | generic code, tag [none] | 3.10.0-1160.33.1 |
| CANDIDATE | 5.4 | [`1eba383f4e36`](https://git.kernel.org/torvalds/c/1eba383f4e36) | [include] | net/mlx5: Add lag_tx_port_affinity capability bit |  | generic code, tag [include] | 3.10.0-1094 |
| CANDIDATE | 5.4 | [`30b10e89f2ae`](https://git.kernel.org/torvalds/c/30b10e89f2ae) | [include] | net/mlx5: Add support for VNIC_ENV internal rq counter |  | generic code, tag [include] | 3.10.0-1094 |
| CANDIDATE | 5.4 | [`7c422d0ce975`](https://git.kernel.org/torvalds/c/7c422d0ce975) | [] | net: add READ_ONCE() annotation in __skb_wait_for_more_packets() |  | generic code, tag [none] | 3.10.0-1160.55.1 |
| CANDIDATE | 5.4 | [`7e24b4ed5ac4`](https://git.kernel.org/torvalds/c/7e24b4ed5ac4) | [] | net: usb: Merge cpu_to_le32s + memcpy to put_unaligned_le32 | CVE-2022-2964 | generic code, tag [none] | 3.10.0-1160.82.1 |
| CANDIDATE | 5.4 | [`6b1340cc00ed`](https://git.kernel.org/torvalds/c/6b1340cc00ed) | [] | tracing: Fix race in perf_trace_buf initialization |  | CONFIG_FTRACE=y in A37 | 3.10.0-1160.117.1 |
| CANDIDATE | 5.5 | [`9d81fbe09a56`](https://git.kernel.org/torvalds/c/9d81fbe09a56) | [] | mm/mmap.c: __vma_unlink_prev() is not necessary now |  | generic code, tag [none] | 3.10.0-1160.67.1 |
| CANDIDATE | 5.5 | [`1b9fc5b24fa2`](https://git.kernel.org/torvalds/c/1b9fc5b24fa2) | [] | mm/mmap.c: extract __vma_unlink_list() as counterpart for __vma_link_list() |  | generic code, tag [none] | 3.10.0-1160.67.1 |
| CANDIDATE | 5.5 | [`93b343ab2d2f`](https://git.kernel.org/torvalds/c/93b343ab2d2f) | [] | mm/mmap.c: prev could be retrieved from vma->vm_prev |  | generic code, tag [none] | 3.10.0-1160.67.1 |
| CANDIDATE | 5.5 | [`aba6dfb75fe1`](https://git.kernel.org/torvalds/c/aba6dfb75fe1) | [] | mm/mmap.c: rb_parent is not necessary in __vma_link_list() |  | generic code, tag [none] | 3.10.0-1160.67.1 |
| CANDIDATE | 5.5 | [`47b390d23bf8`](https://git.kernel.org/torvalds/c/47b390d23bf8) | [] | mm/rmap.c: don't reuse anon_vma if we just want a copy |  | generic code, tag [none] | 3.10.0-1160.67.1 |
| CANDIDATE | 5.5 | [`67e7cdb4829d`](https://git.kernel.org/torvalds/c/67e7cdb4829d) | [] | video: hyperv: hyperv_fb: Obtain screen resolution from Hyper-V host |  | generic code, tag [none] | 3.10.0-1160.27.1 |
| CANDIDATE | 5.6 | [`02d4ac5885a1`](https://git.kernel.org/torvalds/c/02d4ac5885a1) | [] | sched/debug: Reset watchdog on all CPUs while processing sysrq-t |  | generic code, tag [none] | 3.10.0-1160.36.1 |
| CANDIDATE | 5.6 | [`5e876fb43dbf`](https://git.kernel.org/torvalds/c/5e876fb43dbf) | [] | vfs, fdtable: Add fget_task helper | CVE-2021-4083 | generic code, tag [none] | 3.10.0-1160.60.1 |
| CANDIDATE | 5.6 | [`07e6124a1a46`](https://git.kernel.org/torvalds/c/07e6124a1a46) | [] | vt: selection, close sel_buffer race | CVE-2020-8648 | CONFIG_TTY=y in A37 | 3.10.0-1160.30.1 |
| CANDIDATE | 5.6 | [`6cd1ed50efd8`](https://git.kernel.org/torvalds/c/6cd1ed50efd8) | [] | vt: vt_ioctl: fix race in VT_RESIZEX | CVE-2020-36558 | CONFIG_TTY=y in A37 | 3.10.0-1160.117.1 |
| CANDIDATE | 5.7 | [`dc392fc56f39`](https://git.kernel.org/torvalds/c/dc392fc56f39) | [include] | net/mlx5: Expose link speed directly |  | generic code, tag [include] | 3.10.0-1146 |
| CANDIDATE | 5.7 | [`26a8b12747c9`](https://git.kernel.org/torvalds/c/26a8b12747c9) | [] | sched/fair: Fix race between runtime distribution and assignment |  | generic code, tag [none] | 3.10.0-1160.96.1 |
| CANDIDATE | 5.7 | [`e587e8f17433`](https://git.kernel.org/torvalds/c/e587e8f17433) | [] | vt: ioctl, switch VT_IS_IN_USE and VT_BUSY to inlines |  | CONFIG_TTY=y in A37 | 3.10.0-1160.36.1 |
| CANDIDATE | 5.7 | [`dce05aa6eec9`](https://git.kernel.org/torvalds/c/dce05aa6eec9) | [] | vt: selection, introduce vc_is_sel |  | CONFIG_TTY=y in A37 | 3.10.0-1160.36.1 |
| CANDIDATE | 5.7 | [`7cf64b18b0b9`](https://git.kernel.org/torvalds/c/7cf64b18b0b9) | [] | vt: vt_ioctl: fix use-after-free in vt_in_use() |  | CONFIG_TTY=y in A37 | 3.10.0-1160.36.1 |
| CANDIDATE | 5.7 | [`ca4463bf8438`](https://git.kernel.org/torvalds/c/ca4463bf8438) | [] | vt: vt_ioctl: fix VT_DISALLOCATE freeing in-use virtual console |  | CONFIG_TTY=y in A37 | 3.10.0-1160.36.1 |
| CANDIDATE | 5.8 | [`b7d6c3033323`](https://git.kernel.org/torvalds/c/b7d6c3033323) | [] | block: fix use-after-free on cached last_lookup partition |  | generic code, tag [none] | 3.10.0-1160.30.1 |
| CANDIDATE | 5.8 | [`e869e7a17798`](https://git.kernel.org/torvalds/c/e869e7a17798) | [] | net: usb: ax88179_178a: fix packet alignment padding | CVE-2022-2964 | generic code, tag [none] | 3.10.0-1160.82.1 |
| CANDIDATE | 5.8 | [`e98fa02c4f2e`](https://git.kernel.org/torvalds/c/e98fa02c4f2e) | [] | sched/fair: Eliminate bandwidth race between throttling and distribution |  | generic code, tag [none] | 3.10.0-1160.96.1 |
| CANDIDATE | 5.8 | [`662051215c75`](https://git.kernel.org/torvalds/c/662051215c75) | [] | tcp: grow window for OOO packets only for SACK flows |  | generic code, tag [none] | 3.10.0-1160.50.1 |
| CANDIDATE | 5.9 | [`2accfa69050c`](https://git.kernel.org/torvalds/c/2accfa69050c) | [] | cpu/speculation: Add prototype for cpu_show_srbds() | CVE-2022-21123 CVE-2022-21125 CVE-2022-21166 | generic code, tag [none] | 3.10.0-1160.75.1 |
| CANDIDATE | 5.9 | [`a9ed4a6560b8`](https://git.kernel.org/torvalds/c/a9ed4a6560b8) | [] | epoll: Keep a reference on files added to the check list | CVE-2020-0466 | CONFIG_EPOLL=y in A37 | 3.10.0-1160.57.1 |
| CANDIDATE | 5.9 | [`77f4689de17c`](https://git.kernel.org/torvalds/c/77f4689de17c) | [] | fix regression in "epoll: Keep a reference on files added to the check list" | CVE-2020-0466 | generic code, tag [none] | 3.10.0-1160.57.1 |
| CANDIDATE | 5.9 | [`ba3ab3ca68ca`](https://git.kernel.org/torvalds/c/ba3ab3ca68ca) | [] | fs: dlm: change handling of reconnects |  | generic code, tag [none] | 3.10.0-1160.44.1 |
| CANDIDATE | 5.9 | [`35556bed836f`](https://git.kernel.org/torvalds/c/35556bed836f) | [] | HID: core: Sanitize event code and type when mapping input | CVE-2020-0465 | CONFIG_HID=y in A37 | 3.10.0-1160.55.1 |
| CANDIDATE | 5.9 | [`cbedcb044e9c`](https://git.kernel.org/torvalds/c/cbedcb044e9c) | [] | net: ethernet: mlx4: Fix memory allocation in mlx4_buddy_init() |  | generic code, tag [none] | 3.10.0-1160.36.1 |
| CANDIDATE | 5.9 | [`ce787a5a074a`](https://git.kernel.org/torvalds/c/ce787a5a074a) | [] | net: Set fput_needed iff FDPUT_FPUT is set | CVE-2021-4083 | generic code, tag [none] | 3.10.0-1160.60.1 |
| CANDIDATE | 5.10 | [`bfe8cc1db02a`](https://git.kernel.org/torvalds/c/bfe8cc1db02a) | [] | mm/userfaultfd: do not access vma->vm_mm after calling handle_userfault() |  | generic code, tag [none] | 3.10.0-1160.31.1 |
| CANDIDATE | 5.10 | [`fed91613c9dd`](https://git.kernel.org/torvalds/c/fed91613c9dd) | [] | net/mlx4_en: Avoid scheduling restart task if it is already running |  | generic code, tag [none] | 3.10.0-1160.23.1 |
| CANDIDATE | 5.10 | [`ba603d9d7b12`](https://git.kernel.org/torvalds/c/ba603d9d7b12) | [] | net/mlx4_en: Handle TX error CQE |  | generic code, tag [none] | 3.10.0-1160.23.1 |
| CANDIDATE | 5.10 | [`909172a14974`](https://git.kernel.org/torvalds/c/909172a14974) | [] | net: Update window_clamp if SOCK_RCVBUF is set |  | generic code, tag [none] | 3.10.0-1160.37.1 |
| CANDIDATE | 5.10 | [`4f25434bccc2`](https://git.kernel.org/torvalds/c/4f25434bccc2) | [] | netfilter: conntrack: connection timeout after re-register |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1160.97.1 |
| CANDIDATE | 5.10 | [`7bdb157cdebb`](https://git.kernel.org/torvalds/c/7bdb157cdebb) | [] | perf/core: Fix a memory leak in perf_event_parse_addr_filter() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-1160.51.1 |
| CANDIDATE | 5.10 | [`18ded910b589`](https://git.kernel.org/torvalds/c/18ded910b589) | [] | tcp: fix to update snd_wl1 in bulk receiver fast path |  | generic code, tag [none] | 3.10.0-1160.22.1 |
| CANDIDATE | 5.11 | [`5d069dbe8aaf`](https://git.kernel.org/torvalds/c/5d069dbe8aaf) | [] | fuse: fix bad inode |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1160.53.1 |
| CANDIDATE | 5.11 | [`12bb3f7f1b03`](https://git.kernel.org/torvalds/c/12bb3f7f1b03) | [] | futex: Ensure the correct return value from futex_lock_pi() | CVE-2021-3347 | generic code, tag [none] | 3.10.0-1160.31.1 |
| CANDIDATE | 5.11 | [`34b1a1ce1458`](https://git.kernel.org/torvalds/c/34b1a1ce1458) | [] | futex: Handle faults correctly for PI futexes | CVE-2021-3347 | generic code, tag [none] | 3.10.0-1160.31.1 |
| CANDIDATE | 5.11 | [`c5cade200ab9`](https://git.kernel.org/torvalds/c/c5cade200ab9) | [] | futex: Provide and use pi_state_update_owner() | CVE-2021-3347 | generic code, tag [none] | 3.10.0-1160.31.1 |
| CANDIDATE | 5.11 | [`04b79c55201f`](https://git.kernel.org/torvalds/c/04b79c55201f) | [] | futex: Replace pointless printk in fixup_owner() | CVE-2021-3347 | generic code, tag [none] | 3.10.0-1160.31.1 |
| CANDIDATE | 5.11 | [`a2bc221b972d`](https://git.kernel.org/torvalds/c/a2bc221b972d) | [] | netxen_nic: fix MSI/MSI-x interrupts |  | generic code, tag [none] | 3.10.0-1160.30.1 |
| CANDIDATE | 5.12 | [`e4d4d456436b`](https://git.kernel.org/torvalds/c/e4d4d456436b) | [] | bpf, x86: Validate computation of branch displacements for x86-64 | CVE-2021-29154 | generic code, tag [none] | 3.10.0-1160.37.1 |
| CANDIDATE | 5.12 | [`1b1597e64e1a`](https://git.kernel.org/torvalds/c/1b1597e64e1a) | [] | bpf: Add sanity check for upper ptr_limit | CVE-2020-27170 | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-1160.30.1 |
| CANDIDATE | 5.12 | [`10d2bb2e6b1d`](https://git.kernel.org/torvalds/c/10d2bb2e6b1d) | [] | bpf: Fix off-by-one for area size in creating mask to left | CVE-2020-27170 | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-1160.30.1 |
| CANDIDATE | 5.12 | [`b5871dca250c`](https://git.kernel.org/torvalds/c/b5871dca250c) | [] | bpf: Simplify alu_limit masking for pointer arithmetic | CVE-2020-27170 | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-1160.30.1 |
| CANDIDATE | 5.12 | [`ad5d07f4a9cd`](https://git.kernel.org/torvalds/c/ad5d07f4a9cd) | [] | cipso,calipso: resolve a number of problems with the DOI refcounts |  | generic code, tag [none] | 3.10.0-1160.36.1 |
| CANDIDATE | 5.12 | [`a4c8dd9c2d09`](https://git.kernel.org/torvalds/c/a4c8dd9c2d09) | [] | dm table: fix iterate_devices based device capability checks |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-1160.62.1 |
| CANDIDATE | 5.12 | [`775c5033a0d1`](https://git.kernel.org/torvalds/c/775c5033a0d1) | [] | fuse: fix live lock in fuse_iget() |  | CONFIG_FUSE_FS=y in A37 | 3.10.0-1160.53.1 |
| CANDIDATE | 5.12 | [`07b5a76e1892`](https://git.kernel.org/torvalds/c/07b5a76e1892) | [] | netfilter: conntrack: avoid misleading 'invalid' in log message |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1160.97.1 |
| CANDIDATE | 5.12 | [`b29c457a6511`](https://git.kernel.org/torvalds/c/b29c457a6511) | [] | netfilter: x_tables: fix compat match/target pad out-of-bound write | CVE-2021-22555 | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-1160.39.1 |
| CANDIDATE | 5.12 | [`175e476b8cdf`](https://git.kernel.org/torvalds/c/175e476b8cdf) | [] | netfilter: x_tables: Use correct memory barriers. | CVE-2021-29650 | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-1160.38.1 |
| CANDIDATE | 5.12 | [`e8266c4c3307`](https://git.kernel.org/torvalds/c/e8266c4c3307) | [] | VMCI: Stop log spew when qp allocation isn't possible |  | generic code, tag [none] | 3.10.0-1160.32.1 |
| CANDIDATE | 5.13 | [`e2cb6b891ad2`](https://git.kernel.org/torvalds/c/e2cb6b891ad2) | [] | bluetooth: eliminate the potential race condition when removing the HCI controller |  | CONFIG_BT=y in A37 | 3.10.0-1160.37.1 |
| CANDIDATE | 5.13 | [`6a137caec23a`](https://git.kernel.org/torvalds/c/6a137caec23a) | [] | Bluetooth: fix the erroneous flush_work() order | CVE-2021-3564 | CONFIG_BT=y in A37 | 3.10.0-1160.56.1 |
| CANDIDATE | 5.13 | [`e305509e678b`](https://git.kernel.org/torvalds/c/e305509e678b) | [] | Bluetooth: use correct lock to prevent UAF of hdev object | CVE-2021-3573 | CONFIG_BT=y in A37 | 3.10.0-1160.54.1 |
| CANDIDATE | 5.13 | [`5c4c8c954409`](https://git.kernel.org/torvalds/c/5c4c8c954409) | [] | Bluetooth: verify AMP hci_chan before amp_destroy | CVE-2021-33034 | CONFIG_BT=y in A37 | 3.10.0-1160.32.1 |
| CANDIDATE | 5.13 | [`77db0ec8b776`](https://git.kernel.org/torvalds/c/77db0ec8b776) | [] | Drivers: hv: vmbus: Increase wait time for VMbus unload |  | generic code, tag [none] | 3.10.0-1160.34.1 |
| CANDIDATE | 5.13 | [`8c2d5e0640e5`](https://git.kernel.org/torvalds/c/8c2d5e0640e5) | [] | Drivers: hv: vmbus: Initialize unload_event statically |  | generic code, tag [none] | 3.10.0-1160.34.1 |
| CANDIDATE | 5.13 | [`2ba0aa2feebd`](https://git.kernel.org/torvalds/c/2ba0aa2feebd) | [] | IB/mlx5: Fix initializing CQ fragments buffer |  | generic code, tag [none] | 3.10.0-1160.40.1 |
| CANDIDATE | 5.13 | [`9317d0fffeb4`](https://git.kernel.org/torvalds/c/9317d0fffeb4) | [] | mm: page_counter: mitigate consequences of a page_counter underflow |  | generic code, tag [none] | 3.10.0-1160.45.1 |
| CANDIDATE | 5.13 | [`198ad973839c`](https://git.kernel.org/torvalds/c/198ad973839c) | [] | netfilter: remove BUG_ON() after skb_header_pointer() |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1160.97.1 |
| CANDIDATE | 5.13 | [`ad789f84c9a1`](https://git.kernel.org/torvalds/c/ad789f84c9a1) | [] | sched/debug: Fix cgroup_path[] serialization |  | generic code, tag [none] | 3.10.0-1160.36.1 |
| CANDIDATE | 5.13 | [`aa5b7d11c7cb`](https://git.kernel.org/torvalds/c/aa5b7d11c7cb) | [] | video: hyperv_fb: Add ratelimit on error message |  | generic code, tag [none] | 3.10.0-1160.34.1 |
| CANDIDATE | 5.14 | [`cbcf01128d0a`](https://git.kernel.org/torvalds/c/cbcf01128d0a) | [] | af_unix: fix garbage collect vs MSG_PEEK | CVE-2021-0920 | CONFIG_UNIX=y in A37 | 3.10.0-1160.56.1 |
| CANDIDATE | 5.14 | [`a850e932df65`](https://git.kernel.org/torvalds/c/a850e932df65) | [] | mm: vmalloc: add cond_resched() in __vunmap() |  | generic code, tag [none] | 3.10.0-1160.37.1 |
| CANDIDATE | 5.14 | [`e15d4cdf27cb`](https://git.kernel.org/torvalds/c/e15d4cdf27cb) | [] | netfilter: conntrack: do not renew entry stuck in tcp SYN_SENT state |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1160.97.1 |
| CANDIDATE | 5.14 | [`8cae8cd89f05`](https://git.kernel.org/torvalds/c/8cae8cd89f05) | [] | seq_file: Disallow extremely large seq buffer allocations |  | generic code, tag [none] | 3.10.0-1160.38.1 |
| CANDIDATE | 5.16 | [`1bff51ea59a9`](https://git.kernel.org/torvalds/c/1bff51ea59a9) | [] | Bluetooth: fix use-after-free error in lock_sock_nested() |  | CONFIG_BT=y in A37 | 3.10.0-1160.58.1 |
| CANDIDATE | 5.16 | [`054aa8d439b9`](https://git.kernel.org/torvalds/c/054aa8d439b9) | [] | fget: check that the fd still exists after getting a ref to it | CVE-2021-4083 | generic code, tag [none] | 3.10.0-1160.60.1 |
| CANDIDATE | 5.16 | [`e386dfc56f83`](https://git.kernel.org/torvalds/c/e386dfc56f83) | [] | fget: clarify and improve __fget_files() implementation | CVE-2021-4083 | generic code, tag [none] | 3.10.0-1160.60.1 |
| CANDIDATE | 5.16 | [`cbfcd13be5cb`](https://git.kernel.org/torvalds/c/cbfcd13be5cb) | [] | selinux: fix race condition when computing ocontext SIDs |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-1160.56.1 |
| CANDIDATE | 5.17 | [`24f600856418`](https://git.kernel.org/torvalds/c/24f600856418) | [] | cgroup-v1: Require capabilities to set release_agent | CVE-2022-0492 | CONFIG_CGROUPS=y in A37 | 3.10.0-1160.64.1 |
| CANDIDATE | 5.17 | [`4224cfd7fb65`](https://git.kernel.org/torvalds/c/4224cfd7fb65) | [] | net-sysfs: add check for netdevice being present to speed_show |  | generic code, tag [none] | 3.10.0-1160.66.1 |
| CANDIDATE | 5.17 | [`57bc3d3ae8c1`](https://git.kernel.org/torvalds/c/57bc3d3ae8c1) | [] | net: usb: ax88179_178a: Fix out-of-bounds accesses in RX fixup | CVE-2022-2964 | generic code, tag [none] | 3.10.0-1160.82.1 |
| CANDIDATE | 5.17 | [`cc4f9d62037e`](https://git.kernel.org/torvalds/c/cc4f9d62037e) | [] | netfilter: conntrack: move synack init code to helper |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1160.97.1 |
| CANDIDATE | 5.17 | [`82b72cb94666`](https://git.kernel.org/torvalds/c/82b72cb94666) | [] | netfilter: conntrack: re-init state for retransmitted syn-ack |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1160.97.1 |
| CANDIDATE | 5.18 | [`f2dd495a8d58`](https://git.kernel.org/torvalds/c/f2dd495a8d58) | [] | netfilter: nf_conntrack_tcp: preserve liberal flag in tcp options |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1160.97.1 |
| CANDIDATE | 5.18 | [`c7aab4f17021`](https://git.kernel.org/torvalds/c/c7aab4f17021) | [] | netfilter: nf_conntrack_tcp: re-init for syn packets only |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1160.97.1 |
| CANDIDATE | 5.18 | [`3ac6487e584a`](https://git.kernel.org/torvalds/c/3ac6487e584a) | [] | perf: Fix sys_perf_event_open() race against self |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-1160.70.1 |
| CANDIDATE | 5.19 | [`ea304a8b89fd`](https://git.kernel.org/torvalds/c/ea304a8b89fd) | [] | docs/kernel-parameters: Update descriptions for "mitigations=" param with retbleed |  | generic code, tag [none] | 3.10.0-1160.104.1 |
| CANDIDATE | 5.19 | [`441947019138`](https://git.kernel.org/torvalds/c/441947019138) | [] | Documentation: Add documentation for Processor MMIO Stale Data | CVE-2022-21123 CVE-2022-21125 CVE-2022-21166 | generic code, tag [none] | 3.10.0-1160.75.1 |
| CANDIDATE | 5.19 | [`ab84db251c04`](https://git.kernel.org/torvalds/c/ab84db251c04) | [] | net: bonding: fix possible NULL deref in rlb code |  | generic code, tag [none] | 3.10.0-1160.112.1 |
| CANDIDATE | 5.19 | [`050133e1aa2c`](https://git.kernel.org/torvalds/c/050133e1aa2c) | [] | net: bonding: fix use-after-free after 802.3ad slave unbind |  | generic code, tag [none] | 3.10.0-1160.112.1 |
| CANDIDATE | 5.19 | [`f8ebb3ac881b`](https://git.kernel.org/torvalds/c/f8ebb3ac881b) | [] | net: usb: ax88179_178a: Fix packet receiving | CVE-2022-2964 | generic code, tag [none] | 3.10.0-1160.82.1 |
| CANDIDATE | 5.19 | [`56b14ecec97f`](https://git.kernel.org/torvalds/c/56b14ecec97f) | [] | netfilter: conntrack: re-fetch conntrack after insertion |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1160.97.1 |
| CANDIDATE | 5.19 | [`d9e9d2300681`](https://git.kernel.org/torvalds/c/d9e9d2300681) | [] | x86,objtool: Create .return_sites | CVE-2022-23816 CVE-2022-23825 CVE-2022-29900 CVE-2022-29901 | generic code, tag [none] | 3.10.0-1160.79.1 |
| CANDIDATE | 6.0 | [`00da0cb385d0`](https://git.kernel.org/torvalds/c/00da0cb385d0) | [] | Documentation/ABI: Mention retbleed vulnerability info file for sysfs |  | generic code, tag [none] | 3.10.0-1160.104.1 |
| CANDIDATE | 6.0 | [`ac6800e279a2`](https://git.kernel.org/torvalds/c/ac6800e279a2) | [] | fs: Add missing umask strip in vfs_tmpfile | CVE-2018-13405 CVE-2021-4037 | generic code, tag [none] | 3.10.0-1160.87.1 |
| CANDIDATE | 6.0 | [`2b3416ceff5e`](https://git.kernel.org/torvalds/c/2b3416ceff5e) | [] | fs: add mode_strip_sgid() helper | CVE-2018-13405 CVE-2021-4037 | generic code, tag [none] | 3.10.0-1160.87.1 |
| CANDIDATE | 6.0 | [`1639a49ccdce`](https://git.kernel.org/torvalds/c/1639a49ccdce) | [] | fs: move S_ISGID stripping into the vfs_*() helpers | CVE-2018-13405 CVE-2021-4037 | generic code, tag [none] | 3.10.0-1160.87.1 |
| CANDIDATE | 6.0 | [`2555283eb40d`](https://git.kernel.org/torvalds/c/2555283eb40d) | [] | mm/rmap: Fix anon_vma->degree ambiguity leading to double-reuse | CVE-2022-42703 | generic code, tag [none] | 3.10.0-1160.87.1 |
| CANDIDATE | 6.0 | [`dac22531bbd4`](https://git.kernel.org/torvalds/c/dac22531bbd4) | [] | mm: prevent page_frag_alloc() from corrupting the memory |  | generic code, tag [none] | 3.10.0-1160.86.1 |
| CANDIDATE | 6.0 | [`cf97769c761a`](https://git.kernel.org/torvalds/c/cf97769c761a) | [] | netfilter: conntrack: work around exceeded receive window |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1160.97.1 |
| CANDIDATE | 6.0 | [`7249921d94ff`](https://git.kernel.org/torvalds/c/7249921d94ff) | [] | tracing/perf: Fix double put of trace event when init fails |  | CONFIG_FTRACE=y in A37 | 3.10.0-1160.117.1 |
| CANDIDATE | 6.1 | [`711f8c3fb3db`](https://git.kernel.org/torvalds/c/711f8c3fb3db) | [] | Bluetooth: L2CAP: Fix accepting connection request for invalid SPSM | CVE-2022-42896 | CONFIG_BT=y in A37 | 3.10.0-1160.113.1 |
| CANDIDATE | 6.1 | [`f937b758a188`](https://git.kernel.org/torvalds/c/f937b758a188) | [] | Bluetooth: L2CAP: Fix l2cap_global_chan_by_psm | CVE-2022-42896 | CONFIG_BT=y in A37 | 3.10.0-1160.113.1 |
| CANDIDATE | 6.1 | [`3aff8aaca4e3`](https://git.kernel.org/torvalds/c/3aff8aaca4e3) | [] | Bluetooth: L2CAP: Fix use-after-free caused by l2cap_reassemble_sdu | CVE-2022-3564 | CONFIG_BT=y in A37 | 3.10.0-1160.93.1 |
| CANDIDATE | 6.1 | [`6e250dcbff1d`](https://git.kernel.org/torvalds/c/6e250dcbff1d) | [] | netfilter: conntrack: ignore overly delayed tcp packets |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1160.97.1 |
| CANDIDATE | 6.1 | [`d9a6f0d0df18`](https://git.kernel.org/torvalds/c/d9a6f0d0df18) | [] | netfilter: conntrack: prepare tcp_in_window for ternary return value |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1160.97.1 |
| CANDIDATE | 6.1 | [`628d694344a0`](https://git.kernel.org/torvalds/c/628d694344a0) | [] | netfilter: conntrack: reduce timeout when receiving out-of-window fin or rst |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1160.97.1 |
| CANDIDATE | 6.1 | [`09a59001b0d6`](https://git.kernel.org/torvalds/c/09a59001b0d6) | [] | netfilter: conntrack: remove unneeded indent level |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1160.97.1 |
| CANDIDATE | 6.1 | [`e6cfaf34be9f`](https://git.kernel.org/torvalds/c/e6cfaf34be9f) | [] | proc: avoid integer type confusion in get_proc_long | CVE-2022-4378 | CONFIG_PROC_FS=y in A37 | 3.10.0-1160.87.1 |
| CANDIDATE | 6.1 | [`bce9332220bd`](https://git.kernel.org/torvalds/c/bce9332220bd) | [] | proc: proc_skip_spaces() shouldn't think it is working on C strings | CVE-2022-4378 | CONFIG_PROC_FS=y in A37 | 3.10.0-1160.87.1 |
| CANDIDATE | 6.1 | [`a659daf63d16`](https://git.kernel.org/torvalds/c/a659daf63d16) | [] | usb: mon: make mmapped memory read only | CVE-2022-43750 | CONFIG_USB=y in A37 | 3.10.0-1160.89.1 |
| CANDIDATE | 6.2 | [`c410cb974f2b`](https://git.kernel.org/torvalds/c/c410cb974f2b) | [] | netfilter: conntrack: handle tcp challenge acks during connection reuse |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1160.97.1 |
| CANDIDATE | 6.3 | [`fffb0b52d525`](https://git.kernel.org/torvalds/c/fffb0b52d525) | [] | fbcon: set_con2fb_map needs to set con2fb_map! | CVE-2023-38409 | generic code, tag [none] | 3.10.0-1160.111.1 |
| CANDIDATE | 6.4 | [`000c2fa2c144`](https://git.kernel.org/torvalds/c/000c2fa2c144) | [] | bluetooth: Add cmd validity checks at the start of hci_sock_ioctl() | CVE-2023-2002 | CONFIG_BT=y in A37 | 3.10.0-1160.117.1 |
| CANDIDATE | 6.4 | [`000c2fa2c144`](https://git.kernel.org/torvalds/c/000c2fa2c144) | [] | bluetooth: Add cmd validity checks at the start of hci_sock_ioctl() | CVE-2023-2002 | CONFIG_BT=y in A37 | 3.10.0-1160.116.1 |
| CANDIDATE | 6.4 | [`25c150ac103a`](https://git.kernel.org/torvalds/c/25c150ac103a) | [] | bluetooth: Perform careful capability checks in hci_sock_ioctl() | CVE-2023-2002 | CONFIG_BT=y in A37 | 3.10.0-1160.117.1 |
| CANDIDATE | 6.4 | [`25c150ac103a`](https://git.kernel.org/torvalds/c/25c150ac103a) | [] | bluetooth: Perform careful capability checks in hci_sock_ioctl() | CVE-2023-2002 | CONFIG_BT=y in A37 | 3.10.0-1160.116.1 |
| CANDIDATE | 6.4 | [`04c55383fa56`](https://git.kernel.org/torvalds/c/04c55383fa56) | [] | net/sched: cls_u32: Fix reference counter leak leading to overflow | CVE-2023-3609 | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-1160.102.1 |
| CANDIDATE | 6.4 | [`4d56304e5827`](https://git.kernel.org/torvalds/c/4d56304e5827) | [] | net/sched: flower: fix possible OOB write in fl_set_geneve_opt() | CVE-2023-35788 | CONFIG_NET_SCHED=y in A37 | 3.10.0-1160.97.1 |
| CANDIDATE | 6.5 | [`1b0fc0345f28`](https://git.kernel.org/torvalds/c/1b0fc0345f28) | [] | Documentation/x86: Fix backwards on/off logic about YMM support | CVE-2022-40982 | generic code, tag [none] | 3.10.0-1160.104.1 |
| CANDIDATE | 6.5 | [`0323bce598ee`](https://git.kernel.org/torvalds/c/0323bce598ee) | [] | net/sched: cls_fw: Fix improper refcount update leads to use-after-free | CVE-2023-3776 | CONFIG_NET_CLS_FW=y in A37 | 3.10.0-1160.103.1 |
| CANDIDATE | 6.5 | [`76e42ae83199`](https://git.kernel.org/torvalds/c/76e42ae83199) | [] | net/sched: cls_fw: No longer copy tcf_result on update to avoid use-after-free | CVE-2023-4128 | CONFIG_NET_CLS_FW=y in A37 | 3.10.0-1160.105.1 |
| CANDIDATE | 6.5 | [`3044b16e7c6f`](https://git.kernel.org/torvalds/c/3044b16e7c6f) | [] | net/sched: cls_u32: No longer copy tcf_result on update to avoid use-after-free | CVE-2023-4128 | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-1160.105.1 |
| CANDIDATE | 6.7 | [`0739af07d1d9`](https://git.kernel.org/torvalds/c/0739af07d1d9) | [] | net: usb: ax88179_178a: fix failed operations during ax88179_reset |  | generic code, tag [none] | 3.10.0-1160.108.1 |
| CANDIDATE | 6.8 | [`944d5fe50f3f`](https://git.kernel.org/torvalds/c/944d5fe50f3f) | [] | sched/membarrier: reduce the ability to hammer on sys_membarrier | CVE-2024-26602 | generic code, tag [none] | 3.10.0-1160.117.1 |
| CANDIDATE | — | — | [uapi] | [netdrv] virtio_net: Introduce VIRTIO_NET_F_STANDBY feature bit |  | generic code, tag [uapi] | 3.10.0-1092 |
| CANDIDATE | — | — | [include] | Add IS_REACHABLE macro |  | generic code, tag [include] | 3.10.0-444 |
| CANDIDATE | — | — | [uapi] | add missing network related headers to kbuild |  | generic code, tag [uapi] | 3.10.0-571 |
| CANDIDATE | — | — | [uapi] | Add new secure boot capability |  | generic code, tag [uapi] | 3.10.0-10 |
| CANDIDATE | — | — | [] | Added ZSTREAM=yes to makefile |  | generic code, tag [none] | 3.10.0-1160.62.1 |
| CANDIDATE | — | — | [] | af_unix: Fix null-ptr-deref in unix_stream_sendpage(). | CVE-2023-4622 | CONFIG_UNIX=y in A37 | 3.10.0-1160.117.1 |
| CANDIDATE | — | — | [] | af_unix: Fix null-ptr-deref in unix_stream_sendpage(). | CVE-2023-4622 | CONFIG_UNIX=y in A37 | 3.10.0-1160.115.1 |
| CANDIDATE | — | — | [lib] | assoc_array: Add a generic associative array implementation |  | generic code, tag [lib] | 3.10.0-42 |
| CANDIDATE | — | — | [lib] | assoc_array: Fix termination condition in assoc array garbage collection | CVE-2014-3631 | generic code, tag [lib] | 3.10.0-169 |
| CANDIDATE | — | — | [lib] | bitmap: conversion routines to/from u32 array |  | CONFIG_MD=y in A37 | 3.10.0-388 |
| CANDIDATE | — | — | [include] | bluetooth: Fix kabi breakage in struct hci_core |  | CONFIG_BT=y in A37 | 3.10.0-502 |
| CANDIDATE | — | — | [uapi] | bpf: Add bpf load syscall header bits |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [uapi] | bpf: Add missing functions |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [uapi] | bpf: Add missing macros to filter.h/bpf.h |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [uapi] | bpf: Fix BPF_PROG_TYPE_XDP enum |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [uapi] | bpf: Sync enum bpf_func_id with v4.5 code |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [uapi] | bpf: Sync enums to v4.5 code in uapi bpf.h |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [linux] | Break up long walk of wait queue during wakeup |  | generic code, tag [linux] | 3.10.0-1025 |
| CANDIDATE | — | — | [lib] | bug.c: convert printk to pr_foo() |  | generic code, tag [lib] | 3.10.0-568 |
| CANDIDATE | — | — | [lib] | bug.c: make panic_on_warn available for all architectures |  | generic code, tag [lib] | 3.10.0-568 |
| CANDIDATE | — | — | [lib] | bug.c: use common WARN helper |  | generic code, tag [lib] | 3.10.0-568 |
| CANDIDATE | — | — | [] | CI: Disable result checking for realtime check |  | generic code, tag [none] | 3.10.0-1160.33.1 |
| CANDIDATE | — | — | [] | CI: Drop baseline runs |  | generic code, tag [none] | 3.10.0-1160.66.1 |
| CANDIDATE | — | — | [] | CI: Drop private CI config |  | generic code, tag [none] | 3.10.0-1160.45.1 |
| CANDIDATE | — | — | [] | CI: Enable baseline realtime checks |  | generic code, tag [none] | 3.10.0-1160.60.1 |
| CANDIDATE | — | — | [] | CI: Explicitly disable result checking for private CI |  | generic code, tag [none] | 3.10.0-1160.33.1 |
| CANDIDATE | — | — | [] | CI: extend template use |  | generic code, tag [none] | 3.10.0-1160.45.1 |
| CANDIDATE | — | — | [] | CI: handle RT branches in a single config |  | generic code, tag [none] | 3.10.0-1160.45.1 |
| CANDIDATE | — | — | [] | CI: Merge configuration |  | generic code, tag [none] | 3.10.0-1160.35.1 |
| CANDIDATE | — | — | [] | CI: Remove deprecated option |  | generic code, tag [none] | 3.10.0-1160.65.1 |
| CANDIDATE | — | — | [] | CI: Remove unused kpet_tree_family |  | generic code, tag [none] | 3.10.0-1160.104.1 |
| CANDIDATE | — | — | [] | CI: Rename pipelines to include release names |  | generic code, tag [none] | 3.10.0-1160.60.1 |
| CANDIDATE | — | — | [] | CI: Rename variable |  | generic code, tag [none] | 3.10.0-1160.33.1 |
| CANDIDATE | — | — | [lib] | cmdline: add size unit t/p/e to memparse |  | generic code, tag [lib] | 3.10.0-165 |
| CANDIDATE | — | — | [lib] | cpumask: cpumask_set_cpu_local_first => cpumask_local_spread, lament |  | generic code, tag [lib] | 3.10.0-271 |
| CANDIDATE | — | — | [lib] | cpumask: cpumask_set_cpu_local_first to use all cores when numa node is not defined |  | generic code, tag [lib] | 3.10.0-183 |
| CANDIDATE | — | — | [lib] | crc32: update the comments of crc32_{be, le}_generic() |  | generic code, tag [lib] | 3.10.0-128 |
| CANDIDATE | — | — | [lib] | decompress_inflate.c: include appropriate header file |  | generic code, tag [lib] | 3.10.0-588 |
| CANDIDATE | — | — | [lib] | decompressors: fix "no limit" output buffer length |  | generic code, tag [lib] | 3.10.0-588 |
| CANDIDATE | — | — | [lib] | decompressors: use real out buf size for gunzip with kernel |  | generic code, tag [lib] | 3.10.0-588 |
| CANDIDATE | — | — | [include] | define DIV_ROUND_UP for userland |  | generic code, tag [include] | 3.10.0-388 |
| CANDIDATE | — | — | [lib] | dma-debug.c: fix incorrect pfn calculation |  | generic code, tag [lib] | 3.10.0-892 |
| CANDIDATE | — | — | [lib] | dma-debug.c: make locking work for RT |  | generic code, tag [lib] | 3.10.0-892 |
| CANDIDATE | — | — | [lib] | dma-debug: fix bucket_find_contain() |  | generic code, tag [lib] | 3.10.0-892 |
| CANDIDATE | — | — | [lib] | dma-virt: Add dma_virt_ops |  | generic code, tag [lib] | 3.10.0-722 |
| CANDIDATE | — | — | [] | Fix double free in nvme_trans_log_temperature |  | generic code, tag [none] | 3.10.0-1160.32.1 |
| CANDIDATE | — | — | [uapi] | fix linux/tls.h userspace compilation error |  | generic code, tag [uapi] | 3.10.0-974 |
| CANDIDATE | — | — | [uapi] | Fix SPDX tags for files referring to the 'OpenIB.org' license |  | generic code, tag [uapi] | 3.10.0-974 |
| CANDIDATE | — | — | [uapi] | fix to export linux/vm_sockets.h |  | generic code, tag [uapi] | 3.10.0-571 |
| CANDIDATE | — | — | [] | futex: futex_requeue can potentially free the pi_state structure twice |  | generic code, tag [none] | 3.10.0-1160.39.1 |
| CANDIDATE | — | — | [] | futex: remove lockdep_assert_held() in pi_state_update_owner() |  | generic code, tag [none] | 3.10.0-1160.34.1 |
| CANDIDATE | — | — | [lib] | genalloc.c: add power aligned algorithm |  | generic code, tag [lib] | 3.10.0-1034 |
| CANDIDATE | — | — | [lib] | genalloc.c: make the avail variable an atomic_long_t |  | generic code, tag [lib] | 3.10.0-1034 |
| CANDIDATE | — | — | [lib] | genalloc.c: start search from start of chunk |  | generic code, tag [lib] | 3.10.0-1034 |
| CANDIDATE | — | — | [] | gitlab-ci: use CI templates from production branch |  | generic code, tag [none] | 3.10.0-1160.86.1 |
| CANDIDATE | — | — | [include] | gso: Add UDP GSO facade |  | generic code, tag [include] | 3.10.0-993 |
| CANDIDATE | — | — | [lib] | hash: Add missing arch generic-y entries for asm-generic/hash.h |  | generic code, tag [lib] | 3.10.0-93 |
| CANDIDATE | — | — | [lib] | hash: introduce arch optimized hash library |  | generic code, tag [lib] | 3.10.0-93 |
| CANDIDATE | — | — | [include] | ib/iser, isert: Create and use new shared header |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | — | — | [include] | ide, ata: Rename ATA_IDX to ATA_SENSE |  | generic code, tag [include] | 3.10.0-409 |
| CANDIDATE | — | — | [lib] | idr: fix out-of-bounds pointer dereference |  | generic code, tag [lib] | 3.10.0-339 |
| CANDIDATE | — | — | [lib] | idr: free the top layer if idr tree has the maximum height |  | generic code, tag [lib] | 3.10.0-1039 |
| CANDIDATE | — | — | [lib] | idr: implement extended variant of idr |  | generic code, tag [lib] | 3.10.0-774 |
| CANDIDATE | — | — | [lib] | idr_ext: Refactor idr_alloc_ext(), remove cast from idr_get_next_ext() |  | generic code, tag [lib] | 3.10.0-829 |
| CANDIDATE | — | — | [linux] | include/linux/mmdebug.h: fix VM_WARN(_*)() with CONFIG_DEBUG_VM=n | CVE-2018-7740 | generic code, tag [linux] | 3.10.0-879 |
| CANDIDATE | — | — | [uapi] | include: do not export changes made to struct ip_ct_sctp |  | generic code, tag [uapi] | 3.10.0-1160.9.1 |
| CANDIDATE | — | — | [uapi] | includes linux/types.h before exporting files |  | generic code, tag [uapi] | 3.10.0-785 |
| CANDIDATE | — | — | [uapi] | input: Fix KEY_BRIGHTNESS_MIN definition |  | CONFIG_INPUT=y in A37 | 3.10.0-886 |
| CANDIDATE | — | — | [lib] | ioremap: add huge I/O map capability interfaces |  | generic code, tag [lib] | 3.10.0-427 |
| CANDIDATE | — | — | [lib] | kasprintf.c: introduce kvasprintf_const |  | generic code, tag [lib] | 3.10.0-638 |
| CANDIDATE | — | — | [] | kernel/timer: Fix incorrect assertion in requeue_timers() |  | generic code, tag [none] | 3.10.0-1160.63.1 |
| CANDIDATE | — | — | [lib] | lib: radix-tree: update the kmemleak stack trace for radix tree allocations |  | generic code, tag [lib] | 3.10.0-1070 |
| CANDIDATE | — | — | [include] | list_bl: Add hlist_bl_add_before_behind helpers |  | generic code, tag [include] | 3.10.0-1075 |
| CANDIDATE | — | — | [lib] | llist: fix_simplify llist_add() and llist_add_batch() |  | generic code, tag [lib] | 3.10.0-100 |
| CANDIDATE | — | — | [lib] | llist: move llist_reverse_order from raid5 to llist.c |  | generic code, tag [lib] | 3.10.0-100 |
| CANDIDATE | — | — | [asm-generic] | locking, arch: Use ACCESS_ONCE() instead of cast to volatile in atomic_read() |  | generic code, tag [asm-generic] | 3.10.0-652 |
| CANDIDATE | — | — | [lib] | locking/rwsem: Fix rwsem kABI issues |  | generic code, tag [lib] | 3.10.0-629 |
| CANDIDATE | — | — | [] | memcg, slab: Fix incorrect placement of rcu_head in struct memcg_cache_params |  | generic code, tag [none] | 3.10.0-1160.38.1 |
| CANDIDATE | — | — | [include] | mlx4_core: Add basic elements for QCN |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | — | — | [include] | mlx4_core: Avoid repeated calls to pci enable/disable |  | generic code, tag [include] | 3.10.0-452 |
| CANDIDATE | — | — | [] | mm, fs: Fix do_generic_file_read() error return |  | generic code, tag [none] | 3.10.0-1160.51.1 |
| CANDIDATE | — | — | [] | mm/rmap.c: explicitly reset vma->anon_vma in unlink_anon_vmas() |  | generic code, tag [none] | 3.10.0-1160.67.1 |
| CANDIDATE | — | — | [] | mm/vmalloc: __vmalloc_area_node(): avoid 32-bit overflow |  | generic code, tag [none] | 3.10.0-1160.37.1 |
| CANDIDATE | — | — | [] | mm: filemap: do not drop action modifier flags from the gfp_mask passed to __add_to_page_cache_locked() |  | generic code, tag [none] | 3.10.0-1160.62.1 |
| CANDIDATE | — | — | [] | mm: memcg: charge memsw as well in __GFP_NOFAIL case |  | CONFIG_MEMCG=y in A37 | 3.10.0-1160.69.1 |
| CANDIDATE | — | — | [] | mm: memcg: do not fail __GFP_NOFAIL charges |  | CONFIG_MEMCG=y in A37 | 3.10.0-1160.62.1 |
| CANDIDATE | — | — | [] | mm: reduce struct page_cgroup overhead when page_owner is not enabled |  | generic code, tag [none] | 3.10.0-1160.30.1 |
| CANDIDATE | — | — | [include] | mm: slb: fix misleading comments |  | generic code, tag [include] | 3.10.0-1127.3 |
| CANDIDATE | — | — | [] | mm: swap: disable swap_vma_readahead for PPC64 |  | generic code, tag [none] | 3.10.0-1160.82.1 |
| CANDIDATE | — | — | [lib] | mpi: add module description and license |  | generic code, tag [lib] | 3.10.0-42 |
| CANDIDATE | — | — | [lib] | mpi: Add mpi sgl helpers |  | generic code, tag [lib] | 3.10.0-414 |
| CANDIDATE | — | — | [lib] | mpi: Fix NULL ptr dereference in mpi_powm() | CVE-2016-8650 | generic code, tag [lib] | 3.10.0-530 |
| CANDIDATE | — | — | [] | net: netfilter: Avoid deadlock when loading logger backend |  | generic code, tag [none] | 3.10.0-1160.31.1 |
| CANDIDATE | — | — | [] | net: netfilter: Link nfnetlink into bzImage |  | generic code, tag [none] | 3.10.0-1160.31.1 |
| CANDIDATE | — | — | [include] | of: make for_each_child_of_node() reference its args when CONFIG_OF=n |  | CONFIG_OF=y in A37 | 3.10.0-422 |
| CANDIDATE | — | — | [lib] | oid_registry.c: x.509: fix the buffer overflow in the utility function for OID string |  | generic code, tag [lib] | 3.10.0-794 |
| CANDIDATE | — | — | [lib] | partially revert "[lib] vsprintf: implement bitmap printing through '*pb[l]'" |  | generic code, tag [lib] | 3.10.0-323 |
| CANDIDATE | — | — | [uapi] | pci_regs: Add PCI bus link speed and width defines |  | generic code, tag [uapi] | 3.10.0-69 |
| CANDIDATE | — | — | [lib] | percpu-counter: add @gfp to percpu_counter_init() |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | — | — | [lib] | percpu-counter: make percpu_counters_lock irq-safe |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | — | — | [lib] | percpu-refcount: add PCPU_REF_DEAD |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | — | — | [lib] | percpu-refcount: add PERCPU_REF_INIT_* flags |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | — | — | [lib] | percpu-refcount: decouple switching to atomic mode and killing |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | — | — | [lib] | percpu-refcount: decouple switching to percpu mode and reinit |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | — | — | [lib] | percpu-refcount: export symbols |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | — | — | [lib] | percpu-refcount: fix DEAD flag contamination of percpu pointer |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | — | — | [lib] | percpu-refcount: fix synchronize_rcu() in comments |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | — | — | [lib] | percpu-refcount: implement percpu_ref_is_dying() |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | — | — | [lib] | percpu-refcount: make INIT_ATOMIC and switch_to_atomic() sticky |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | — | — | [lib] | percpu-refcount: minor code and comment updates |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | — | — | [lib] | percpu-refcount: relocate percpu_ref_reinit() |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | — | — | [lib] | percpu-refcount: remove unnecessary ACCESS_ONCE() in percpu_ref_tryget_live() |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | — | — | [lib] | percpu-refcount: rename things to prepare for decoupling percpu_atomic mode switch |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | — | — | [lib] | percpu-refcount: replace pcpu_ prefix with percpu_ |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | — | — | [lib] | percpu-refcount: Replace smp_read_barrier_depends() with lockless_dereference() |  | generic code, tag [lib] | 3.10.0-253 |
| CANDIDATE | — | — | [lib] | percpu_counter: __this_cpu_write() doesn't need to be protected by spinlock |  | generic code, tag [lib] | 3.10.0-53 |
| CANDIDATE | — | — | [lib] | percpu_counter: fix __percpu_counter_add() |  | generic code, tag [lib] | 3.10.0-143 |
| CANDIDATE | — | — | [lib] | percpu_counter: fix bad percpu counter state during suspend |  | generic code, tag [lib] | 3.10.0-147 |
| CANDIDATE | — | — | [] | perf/s390x: Align the register list to what we support |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-1160.95.1 |
| CANDIDATE | — | — | [] | pf: Prohibit alu ops for pointer types not defining ptr_limit | CVE-2020-27170 | generic code, tag [none] | 3.10.0-1160.30.1 |
| CANDIDATE | — | — | [lib] | plist: add helper functions |  | generic code, tag [lib] | 3.10.0-133 |
| CANDIDATE | — | — | [lib] | plist: add plist_requeue |  | generic code, tag [lib] | 3.10.0-133 |
| CANDIDATE | — | — | [] | posix-cpu-timers: remove tasklist_lock in posix_cpu_clock_get() |  | generic code, tag [none] | 3.10.0-1160.77.1 |
| CANDIDATE | — | — | [lib] | radix-tree: handle allocation failure in radix_tree_insert() |  | generic code, tag [lib] | 3.10.0-316 |
| CANDIDATE | — | — | [lib] | radix-tree: make radix_tree_node_alloc() work correctly within interrupt |  | generic code, tag [lib] | 3.10.0-174 |
| CANDIDATE | — | — | [lib] | radix-tree: radix_tree_delete_item() |  | generic code, tag [lib] | 3.10.0-90 |
| CANDIDATE | — | — | [lib] | random32: minor cleanups and kdoc fix |  | generic code, tag [lib] | 3.10.0-128 |
| CANDIDATE | — | — | [] | redhat: add CI file for kernel-private |  | generic code, tag [none] | 3.10.0-1160.24.1 |
| CANDIDATE | — | — | [] | redhat: Add git suffix to realtime_check merge_tree |  | generic code, tag [none] | 3.10.0-1160.27.1 |
| CANDIDATE | — | — | [] | redhat: Enable CKI RT verification |  | generic code, tag [none] | 3.10.0-1160.25.1 |
| CANDIDATE | — | — | [] | redhat: Enable CKI RT verification for kernel-private |  | generic code, tag [none] | 3.10.0-1160.25.1 |
| CANDIDATE | — | — | [] | redhat: Fix realtime_check for -private |  | generic code, tag [none] | 3.10.0-1160.26.1 |
| CANDIDATE | — | — | [] | redhat: fix to be able to build with rpm 4.19.0 |  | generic code, tag [none] | 3.10.0-1160.103.1 |
| CANDIDATE | — | — | [] | redhat: genspec: generate changelog entries since last release |  | generic code, tag [none] | 3.10.0-1160.36.1 |
| CANDIDATE | — | — | [] | redhat: kernel.spec: install new kernel boot entry in posttrans, not post |  | generic code, tag [none] | 3.10.0-1160.62.1 |
| CANDIDATE | — | — | [] | redhat: ppc64: CONFIG_RTAS_FILTER | CVE-2020-27777 | generic code, tag [none] | 3.10.0-1160.40.1 |
| CANDIDATE | — | — | [] | redhat: rewrite genlog and support Y- tags |  | generic code, tag [none] | 3.10.0-1160.111.1 |
| CANDIDATE | — | — | [include] | regulator: Sync regulator/consumer.h with v4.5 |  | generic code, tag [include] | 3.10.0-411 |
| CANDIDATE | — | — | [include] | revert "objtool: Add STACK_FRAME_NON_STANDARD() macro" |  | generic code, tag [include] | 3.10.0-441 |
| CANDIDATE | — | — | [lib] | rhashtable.c: simplify a strange allocation pattern |  | generic code, tag [lib] | 3.10.0-812 |
| CANDIDATE | — | — | [lib] | rhashtable.c: use kvzalloc() in bucket_table_alloc() when possible |  | generic code, tag [lib] | 3.10.0-1030 |
| CANDIDATE | — | — | [lib] | rhel-only: Add null function for task_stack_vm_area() to simplify backports |  | generic code, tag [lib] | 3.10.0-892 |
| CANDIDATE | — | — | [lib] | scatterlist.c: fix kerneldoc for sg_pcopy_{to, from}_buffer() |  | generic code, tag [lib] | 3.10.0-624 |
| CANDIDATE | — | — | [lib] | scatterlist: export sg_miter_skip() |  | generic code, tag [lib] | 3.10.0-365 |
| CANDIDATE | — | — | [lib] | scatterlist: fix memory leak with scsi-mq |  | generic code, tag [lib] | 3.10.0-267 |
| CANDIDATE | — | — | [lib] | scatterlist: mark input buffer parameters as 'const' |  | generic code, tag [lib] | 3.10.0-624 |
| CANDIDATE | — | — | [] | sched: prevent divide by zero error in scale_rt_power() |  | generic code, tag [none] | 3.10.0-1160.29.1 |
| CANDIDATE | — | — | [] | selinux: fix deadlock in security_set_bools() |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-1160.26.1 |
| CANDIDATE | — | — | [lib] | seq: Add minimal support for seq_buf |  | generic code, tag [lib] | 3.10.0-426 |
| CANDIDATE | — | — | [include] | signal: Unfairly acquire tasklist_lock in send_sigio() if irq disabled |  | generic code, tag [include] | 3.10.0-1156 |
| CANDIDATE | — | — | [linux] | slab.h: add kmalloc_array_node() and kcalloc_node() |  | generic code, tag [linux] | 3.10.0-874 |
| CANDIDATE | — | — | [include] | stddef.h: Move offsetofend() from vfio.h to a generic kernel header |  | generic code, tag [include] | 3.10.0-426 |
| CANDIDATE | — | — | [include] | stddef: move offsetofend inside #ifndef/#endif guard, neaten |  | generic code, tag [include] | 3.10.0-433 |
| CANDIDATE | — | — | [lib] | string: introduce match_string() helper |  | generic code, tag [lib] | 3.10.0-422 |
| CANDIDATE | — | — | [lib] | string_helpers.c: fix infinite loop in string_get_size() |  | generic code, tag [lib] | 3.10.0-993 |
| CANDIDATE | — | — | [] | target: iscsi: use GFP_NOIO with loopback connections |  | generic code, tag [none] | 3.10.0-1160.91.1 |
| CANDIDATE | — | — | [include] | target: Remove first argument of target_{get, put}_sess_cmd() |  | generic code, tag [include] | 3.10.0-447 |
| CANDIDATE | — | — | [] | tcm_loop: add WQ_MEM_RECLAIM and flush_work |  | generic code, tag [none] | 3.10.0-1160.23.1 |
| CANDIDATE | — | — | [] | Trimmed changelog for rhel7.git, see rhpkg git for earlier history. |  | generic code, tag [none] | pre-GA |
| CANDIDATE | — | — | [lib] | ucs2_string: Add ucs2 -> utf8 helper functions |  | generic code, tag [lib] | 3.10.0-833 |
| CANDIDATE | — | — | [include] | usb: Add phy/phy.h to help keep files in sync |  | CONFIG_USB=y in A37 | 3.10.0-365 |
| CANDIDATE | — | — | [lib] | uuid.c: introduce a few more generic helpers |  | generic code, tag [lib] | 3.10.0-552 |
| CANDIDATE | — | — | [lib] | uuid.c: move generate_random_uuid() to uuid.c |  | generic code, tag [lib] | 3.10.0-552 |
| CANDIDATE | — | — | [lib] | uuid.c: use correct offset in uuid parser |  | generic code, tag [lib] | 3.10.0-561 |
| CANDIDATE | — | — | [include] | uvcvideo: Enable UVC 1.5 device detection |  | CONFIG_USB_VIDEO_CLASS=y in A37 | 3.10.0-446 |
| CANDIDATE | — | — | [lib] | vsprintf: add formats for dentry/file pathnames |  | generic code, tag [lib] | 3.10.0-95 |
| CANDIDATE | — | — | [lib] | vsprintf: add IPv4/v6 generic p[Ii]S[pfs] format specifier |  | generic code, tag [lib] | 3.10.0-21 |
| CANDIDATE | — | — | [lib] | vsprintf: Add support for IORESOURCE_UNSET in pR |  | generic code, tag [lib] | 3.10.0-146 |
| CANDIDATE | — | — | [lib] | vsprintf: document formats for dentry and struct file |  | generic code, tag [lib] | 3.10.0-95 |
| CANDIDATE | — | — | [lib] | vsprintf: implement bitmap printing through '*pb[l]' |  | generic code, tag [lib] | 3.10.0-302 |
| FEATURE-MISSING | 3.17 | [`93f560811e80`](https://git.kernel.org/torvalds/c/93f560811e80) | [lib] | rhashtable: fix annotations for rht_for_each_entry_rcu() |  | lib/rhashtable.c not in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.17 | [`ae82ddcf8e82`](https://git.kernel.org/torvalds/c/ae82ddcf8e82) | [lib] | rhashtable: fix lockdep splat in rhashtable_destroy() |  | lib/rhashtable.c not in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.17 | [`5300fdcb7b7e`](https://git.kernel.org/torvalds/c/5300fdcb7b7e) | [lib] | rhashtable: RCU annotations for next pointers |  | lib/rhashtable.c not in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.17 | [`b3f2512ecdb3`](https://git.kernel.org/torvalds/c/b3f2512ecdb3) (loose) | [lib] | rhashtable: remove second linux/log2.h inclusion |  | lib/rhashtable.c not in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.17 | [`c91eee56dc4f`](https://git.kernel.org/torvalds/c/c91eee56dc4f) | [lib] | rhashtable: unexport and make rht_obj() static |  | lib/rhashtable.c not in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`45d5acd3cdf3`](https://git.kernel.org/torvalds/c/45d5acd3cdf3) (loose) | [lib] | rhashtable: Spelling s/compuate/compute/ |  | lib/rhashtable.c not in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.19 | [`3e7b2ec4fe8e`](https://git.kernel.org/torvalds/c/3e7b2ec4fe8e) | [lib] | rhashtable: Check for count mismatch while iterating in selftest |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 3.19 | [`6eba82248ef4`](https://git.kernel.org/torvalds/c/6eba82248ef4) | [lib] | rhashtable: Drop gfp_flags arg in insert/remove functions |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`6f73d3b13dc5`](https://git.kernel.org/torvalds/c/6f73d3b13dc5) | [lib] | rhashtable: add a note for grow and shrink decision functions |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`7cd10db8de2b`](https://git.kernel.org/torvalds/c/7cd10db8de2b) | [lib] | rhashtable: Add more lock verification |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`6dd0c1655be2`](https://git.kernel.org/torvalds/c/6dd0c1655be2) | [lib] | rhashtable: allow to unload test module |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`cf52d52f9ccb`](https://git.kernel.org/torvalds/c/cf52d52f9ccb) | [lib] | rhashtable: Avoid bucket cross reference after removal |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`c0c09bfdc415`](https://git.kernel.org/torvalds/c/c0c09bfdc415) | [lib] | rhashtable: avoid unnecessary wakeup for worker queue |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`eb6d1abf1bd8`](https://git.kernel.org/torvalds/c/eb6d1abf1bd8) | [lib] | rhashtable: better high order allocation attempts |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`88d6ed15acff`](https://git.kernel.org/torvalds/c/88d6ed15acff) | [lib] | rhashtable: Convert bucket iterators to take table and index |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`8d24c0b43125`](https://git.kernel.org/torvalds/c/8d24c0b43125) | [lib] | rhashtable: Do hashing inside of rhashtable_lookup_compare() |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`b7f5e5c7f8ce`](https://git.kernel.org/torvalds/c/b7f5e5c7f8ce) | [lib] | rhashtable: don't allocate ht structure on stack in test_rht_init |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`342100d937ed`](https://git.kernel.org/torvalds/c/342100d937ed) | [lib] | rhashtable: don't test for shrink on insert, expansion on delete |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`a03eaec0df52`](https://git.kernel.org/torvalds/c/a03eaec0df52) | [lib] | rhashtable: Dump bucket tables on locking violation under PROVE_LOCKING |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`b9ebafbe8cfe`](https://git.kernel.org/torvalds/c/b9ebafbe8cfe) | [lib] | rhashtable: ensure cache line alignment on bucket_table |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`b8e1943e9f75`](https://git.kernel.org/torvalds/c/b8e1943e9f75) | [lib] | rhashtable: Factor out bucket_tail() function |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`86b35b64ed7b`](https://git.kernel.org/torvalds/c/86b35b64ed7b) | [lib] | rhashtable: fix missing header |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`28134a53d624`](https://git.kernel.org/torvalds/c/28134a53d624) | [lib] | rhashtable: Fix potential crash on destroy in rhashtable_shrink |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`57699a40b4f2`](https://git.kernel.org/torvalds/c/57699a40b4f2) | [lib] | rhashtable: Fix race in rhashtable_destroy() and use regular work_struct |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`020219a69d40`](https://git.kernel.org/torvalds/c/020219a69d40) | [lib] | rhashtable: Fix remove logic to avoid cross references between buckets |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`607954b084d4`](https://git.kernel.org/torvalds/c/607954b084d4) | [lib] | rhashtable: fix rht_for_each_entry_safe() endless loop |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`bd6d4db552ce`](https://git.kernel.org/torvalds/c/bd6d4db552ce) | [lib] | rhashtable: future table needs to be traversed when remove an object |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`71bb0012c38f`](https://git.kernel.org/torvalds/c/71bb0012c38f) | [lib] | rhashtable: initialize all rhashtable walker members |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`545a148e43be`](https://git.kernel.org/torvalds/c/545a148e43be) | [lib] | rhashtable: initialize atomic nelems variable |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`54c5b7d311c8`](https://git.kernel.org/torvalds/c/54c5b7d311c8) | [lib] | rhashtable: introduce rhashtable_wakeup_worker helper function |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`f2dba9c6ff0d`](https://git.kernel.org/torvalds/c/f2dba9c6ff0d) | [lib] | rhashtable: Introduce rhashtable_walk_* |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`7a868d1e9ab3`](https://git.kernel.org/torvalds/c/7a868d1e9ab3) | [lib] | rhashtable: involve rhashtable_lookup_compare_insert routine |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`db3048540832`](https://git.kernel.org/torvalds/c/db3048540832) | [lib] | rhashtable: involve rhashtable_lookup_insert routine |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`c88455ce50ae`](https://git.kernel.org/torvalds/c/c88455ce50ae) | [lib] | rhashtable: key_hashfn() must return full hash value |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`80ca8c3a84c7`](https://git.kernel.org/torvalds/c/80ca8c3a84c7) | [lib] | rhashtable: Lower/upper bucket may map to same lock while shrinking |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`9d6dbe1bbaf8`](https://git.kernel.org/torvalds/c/9d6dbe1bbaf8) | [lib] | rhashtable: Make selftest modular |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`efb975a67ea7`](https://git.kernel.org/torvalds/c/efb975a67ea7) | [lib] | rhashtable: optimize rhashtable_lookup routine |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`97defe1ecf86`](https://git.kernel.org/torvalds/c/97defe1ecf86) | [lib] | rhashtable: Per bucket locks & deferred expansion/shrinking |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`4c4b52d9b2df`](https://git.kernel.org/torvalds/c/4c4b52d9b2df) | [lib] | rhashtable: remove indirection for grow/shrink decision functions |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`fe6a043c535a`](https://git.kernel.org/torvalds/c/fe6a043c535a) | [lib] | rhashtable: rhashtable_remove() must unlink in both tbl and future_tbl |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`f89bd6f87a53`](https://git.kernel.org/torvalds/c/f89bd6f87a53) | [lib] | rhashtable: Supports for nulls marker |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`8331de75cb13`](https://git.kernel.org/torvalds/c/8331de75cb13) | [lib] | rhashtable: unconditionally grow when max_shift is not specified |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`a5ec68e3b8f2`](https://git.kernel.org/torvalds/c/a5ec68e3b8f2) | [lib] | rhashtable: Use a single bucket lock for sibling buckets |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`5beb5c90c1f5`](https://git.kernel.org/torvalds/c/5beb5c90c1f5) | [lib] | rhashtable: use cond_resched() |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`a4b18cda4c26`](https://git.kernel.org/torvalds/c/a4b18cda4c26) | [lib] | rhashtable: Use rht_obj() instead of manual offset calculation |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`61d7b097738c`](https://git.kernel.org/torvalds/c/61d7b097738c) | [lib] | rhashtable: using ERR_PTR requires linux/err.h |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.0 | [`2af4b52988fd`](https://git.kernel.org/torvalds/c/2af4b52988fd) | [lib] | rhashtable: Wait for RCU readers after final unzip work |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`84ed82b74dcb`](https://git.kernel.org/torvalds/c/84ed82b74dcb) | [lib] | rhashtable: Add annotation to nested lock |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`aa34a6cb0478`](https://git.kernel.org/torvalds/c/aa34a6cb0478) | [lib] | rhashtable: Add arbitrary rehash function |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`d88252f9bb74`](https://git.kernel.org/torvalds/c/d88252f9bb74) | [lib] | rhashtable: Add barrier to ensure we see new tables in walker |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`07ee0722bf94`](https://git.kernel.org/torvalds/c/07ee0722bf94) | [lib] | rhashtable: Add cap on number of elements in hash table |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`27ed44a5d6d8`](https://git.kernel.org/torvalds/c/27ed44a5d6d8) | [lib] | rhashtable: Add comment on choice of elasticity value |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`ccd57b1bd324`](https://git.kernel.org/torvalds/c/ccd57b1bd324) | [lib] | rhashtable: Add immediate rehash during insertion |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`6d7954130c8d`](https://git.kernel.org/torvalds/c/6d7954130c8d) | [lib] | rhashtable: add missing import <linux/export.h> |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`b824478b2145`](https://git.kernel.org/torvalds/c/b824478b2145) | [lib] | rhashtable: Add multiple rehash support |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`63d512d0cffc`](https://git.kernel.org/torvalds/c/63d512d0cffc) | [lib] | rhashtable: Add rehash counter to bucket_table |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`6b6f302ceda7`](https://git.kernel.org/torvalds/c/6b6f302ceda7) | [lib] | rhashtable: Add rhashtable_free_and_destroy() |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`b9ecfdaa1090`](https://git.kernel.org/torvalds/c/b9ecfdaa1090) | [lib] | rhashtable: Allow GFP_ATOMIC bucket table allocation |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`02fd97c3d4a8`](https://git.kernel.org/torvalds/c/02fd97c3d4a8) | [lib] | rhashtable: Allow hash/comparison functions to be inlined |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`31ccde2dacea`](https://git.kernel.org/torvalds/c/31ccde2dacea) | [lib] | rhashtable: Allow hashfn to be unset |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`db4374f48a6c`](https://git.kernel.org/torvalds/c/db4374f48a6c) | [lib] | rhashtable: Annotate RCU locking of walkers |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`617011e7d555`](https://git.kernel.org/torvalds/c/617011e7d555) | [lib] | rhashtable: Avoid calculating hash again to unlock |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`b5e2c150ac91`](https://git.kernel.org/torvalds/c/b5e2c150ac91) | [lib] | rhashtable: Disable automatic shrinking by default |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`a87b9ebf1709`](https://git.kernel.org/torvalds/c/a87b9ebf1709) | [lib] | rhashtable: Do not schedule more than one rehash if we can't grow further |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`1d8dc3d3c8f1`](https://git.kernel.org/torvalds/c/1d8dc3d3c8f1) | [lib] | rhashtable: don't attempt to grow when at max_size |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`de91b25c8011`](https://git.kernel.org/torvalds/c/de91b25c8011) | [lib] | rhashtable: Eliminate unnecessary branch in rht_key_hashfn |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`58be8a583d8d`](https://git.kernel.org/torvalds/c/58be8a583d8d) | [lib] | rhashtable: Extend RCU read lock into rhashtable_insert_rehash() |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`393619474ec0`](https://git.kernel.org/torvalds/c/393619474ec0) | [lib] | rhashtable: Fix read-side crash during rehash |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`9497df88ab55`](https://git.kernel.org/torvalds/c/9497df88ab55) | [lib] | rhashtable: Fix reader/rehash race |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`565e86404e4c`](https://git.kernel.org/torvalds/c/565e86404e4c) | [lib] | rhashtable: Fix rhashtable_remove failures |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`ba7c95ea3870`](https://git.kernel.org/torvalds/c/ba7c95ea3870) | [lib] | rhashtable: Fix sleeping inside RCU critical section in walk_stop |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`6626af692692`](https://git.kernel.org/torvalds/c/6626af692692) | [lib] | rhashtable: Fix undeclared EEXIST build error on ia64 |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`963ecbd41a10`](https://git.kernel.org/torvalds/c/963ecbd41a10) | [lib] | rhashtable: Fix use-after-free in rhashtable_walk_stop |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`eddee5ba34eb`](https://git.kernel.org/torvalds/c/eddee5ba34eb) | [lib] | rhashtable: Fix walker behaviour during rehash |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`9d901bc05153`](https://git.kernel.org/torvalds/c/9d901bc05153) | [lib] | rhashtable: Free bucket tables asynchronously after rehash |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`c2e213cff701`](https://git.kernel.org/torvalds/c/c2e213cff701) | [lib] | rhashtable: Introduce max_size/min_size |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`a5b6846f9e1a`](https://git.kernel.org/torvalds/c/a5b6846f9e1a) | [lib] | rhashtable: kill ht->shift atomic operations |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`488fb86ee91d`](https://git.kernel.org/torvalds/c/488fb86ee91d) | [lib] | rhashtable: Make rhashtable_init params argument const |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`ac833bddb591`](https://git.kernel.org/torvalds/c/ac833bddb591) | [lib] | rhashtable: Mark internal/private inline functions as such |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`c4db8848af6a`](https://git.kernel.org/torvalds/c/c4db8848af6a) | [lib] | rhashtable: Move future_tbl into struct bucket_table |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`988dfbd795cf`](https://git.kernel.org/torvalds/c/988dfbd795cf) | [lib] | rhashtable: Move hash_rnd into bucket_table |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`8d2b18793d16`](https://git.kernel.org/torvalds/c/8d2b18793d16) | [lib] | rhashtable: Move masking back into key_hashfn |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`5269b53da4d4`](https://git.kernel.org/torvalds/c/5269b53da4d4) | [lib] | rhashtable: Move seed init into bucket_table_alloc |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`49f7b33e63fe`](https://git.kernel.org/torvalds/c/49f7b33e63fe) | [lib] | rhashtable: provide len to obj_hashfn |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`cffaa9cb9224`](https://git.kernel.org/torvalds/c/cffaa9cb9224) | [lib] | rhashtable: Remove key length argument to key_hashfn |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`e2e21c1c5808`](https://git.kernel.org/torvalds/c/e2e21c1c5808) | [lib] | rhashtable: Remove max_shift and min_shift |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`ec9f71c59e00`](https://git.kernel.org/torvalds/c/ec9f71c59e00) | [lib] | rhashtable: Remove obj_raw_hashfn |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`6aebd940840a`](https://git.kernel.org/torvalds/c/6aebd940840a) | [lib] | rhashtable: Remove shift from bucket_table |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`dc0ee268d850`](https://git.kernel.org/torvalds/c/dc0ee268d850) | [lib] | rhashtable: Rip out obsolete out-of-line interface |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`a998f712f77e`](https://git.kernel.org/torvalds/c/a998f712f77e) | [lib] | rhashtable: Round up/down min/max_size to ensure we respect limit |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`e2307ed6cbe7`](https://git.kernel.org/torvalds/c/e2307ed6cbe7) | [lib] | rhashtable: Schedule async resize when sync realloc fails |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`18093d1c0d1e`](https://git.kernel.org/torvalds/c/18093d1c0d1e) | [lib] | rhashtable: Shrink to fit |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`299e5c32a37a`](https://git.kernel.org/torvalds/c/299e5c32a37a) | [lib] | rhashtable: Use 'unsigned int' consistently |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`eca849333017`](https://git.kernel.org/torvalds/c/eca849333017) | [lib] | rhashtable: Use head_hashfn instead of obj_raw_hashfn |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.1 | [`8f2484bdb55d`](https://git.kernel.org/torvalds/c/8f2484bdb55d) | [lib] | rhashtable: Use SINGLE_DEPTH_NESTING |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.2 | [`67b7cbf4203f`](https://git.kernel.org/torvalds/c/67b7cbf4203f) | [lib] | rhashtable-test: Detect insertion failures |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.2 | [`fcc570207c1e`](https://git.kernel.org/torvalds/c/fcc570207c1e) | [lib] | rhashtable-test: Do not allocate individual test objects |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.2 | [`6decd63acacb`](https://git.kernel.org/torvalds/c/6decd63acacb) | [lib] | rhashtable-test: Fix 64bit division |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.2 | [`c2c8a901660d`](https://git.kernel.org/torvalds/c/c2c8a901660d) | [lib] | rhashtable-test: Get rid of ptr in test_obj structure |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.2 | [`1aa661f5c3df`](https://git.kernel.org/torvalds/c/1aa661f5c3df) | [lib] | rhashtable-test: Measure time to insert, remove & traverse entries |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.2 | [`f54e84b6e9f0`](https://git.kernel.org/torvalds/c/f54e84b6e9f0) | [lib] | rhashtable-test: Remove unused TEST_NEXPANDS |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.2 | [`246b23a7695b`](https://git.kernel.org/torvalds/c/246b23a7695b) | [lib] | rhashtable-test: Use walker to test bucket statistics |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.2 | [`142b942a75cb`](https://git.kernel.org/torvalds/c/142b942a75cb) | [lib] | rhashtable: fix for resize events during table walk |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.2 | [`c936a79fc01e`](https://git.kernel.org/torvalds/c/c936a79fc01e) | [lib] | rhashtable: Simplify iterator code |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.3 | [`f4a3e90ba573`](https://git.kernel.org/torvalds/c/f4a3e90ba573) | [lib] | rhashtable-test: extend to test concurrency |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.3 | [`685a015e44dc`](https://git.kernel.org/torvalds/c/685a015e44dc) | [lib] | rhashtable: Allow other tasks to be scheduled in large lookup loops |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.4 | [`3a324606bbab`](https://git.kernel.org/torvalds/c/3a324606bbab) | [lib] | rhashtable: Enforce minimum size on initial hash table |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.4 | [`c6ff5268293e`](https://git.kernel.org/torvalds/c/c6ff5268293e) | [lib] | rhashtable: Fix walker list corruption |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.4 | [`179ccc0a7364`](https://git.kernel.org/torvalds/c/179ccc0a7364) | [lib] | rhashtable: Kill harmless RCU warning in rhashtable_walk_init |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.4 | [`3cf92222a39c`](https://git.kernel.org/torvalds/c/3cf92222a39c) | [lib] | rhashtable: Prevent spurious EBUSY errors on insertion |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.5 | [`cd5b318daf4a`](https://git.kernel.org/torvalds/c/cd5b318daf4a) | [lib] | rhashtable-test: add cond_resched() to thread test |  | lib/rhashtable.c not in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.5 | [`d662e037fc88`](https://git.kernel.org/torvalds/c/d662e037fc88) | [lib] | rhashtable-test: allow to retry even if -ENOMEM was returned |  | lib/rhashtable.c not in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.5 | [`95e435afefe9`](https://git.kernel.org/torvalds/c/95e435afefe9) | [lib] | rhashtable-test: calculate max_entries value by default |  | lib/rhashtable.c not in A37 tree | 3.10.0-498 |
| FEATURE-MISSING | 4.5 | [`9e9089e5a2d7`](https://git.kernel.org/torvalds/c/9e9089e5a2d7) | [lib] | rhashtable-test: retry insert operations |  | lib/rhashtable.c not in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.5 | [`3502cad73c4b`](https://git.kernel.org/torvalds/c/3502cad73c4b) | [lib] | rhashtable: add function to replace an element |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.5 | [`46c749eac979`](https://git.kernel.org/torvalds/c/46c749eac979) | [lib] | rhashtable: Remove unnecessary wmb for future_tbl |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | 4.7 | [`6cafaf4764a3`](https://git.kernel.org/torvalds/c/6cafaf4764a3) | [] | netfilter: nf_tables: fix memory leak if expr init fails |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1160.71.1 |
| FEATURE-MISSING | 4.7 | [`eaa2bcd6d1d4`](https://git.kernel.org/torvalds/c/eaa2bcd6d1d4) | [] | netfilter: nf_tables: validate NFTA_SET_TABLE parameter |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1160.28.1 |
| FEATURE-MISSING | 4.7 | [`8f6fd83c6c5e`](https://git.kernel.org/torvalds/c/8f6fd83c6c5e) | [lib] | rhashtable: accept GFP flags in rhashtable_walk_init |  | lib/rhashtable.c not in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.8 | [`3b3bf80b994f`](https://git.kernel.org/torvalds/c/3b3bf80b994f) | [lib] | rhashtable-test: Fix max_size parameter description |  | lib/rhashtable.c not in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.8 | [`4cf0b354d92e`](https://git.kernel.org/torvalds/c/4cf0b354d92e) | [lib] | rhashtable: avoid large lock-array allocations |  | lib/rhashtable.c not in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.8 | [`9dbeea7f08f3`](https://git.kernel.org/torvalds/c/9dbeea7f08f3) | [lib] | rhashtable: fix a memory leak in alloc_bucket_locks() |  | lib/rhashtable.c not in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.8 | [`12311959ecf8`](https://git.kernel.org/torvalds/c/12311959ecf8) | [lib] | rhashtable: fix shift by 64 when shrinking |  | lib/rhashtable.c not in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.9 | [`5ca8cc5bf11f`](https://git.kernel.org/torvalds/c/5ca8cc5bf11f) | [lib] | rhashtable: add rhashtable_lookup_get_insert_key() |  | lib/rhashtable.c not in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.9 | [`ca26893f05e8`](https://git.kernel.org/torvalds/c/ca26893f05e8) | [lib] | rhashtable: Add rhlist interface |  | lib/rhashtable.c not in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.9 | [`246779dd090b`](https://git.kernel.org/torvalds/c/246779dd090b) | [lib] | rhashtable: Remove GFP flag from rhashtable_walk_init |  | lib/rhashtable.c not in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.10 | [`40137906c5f5`](https://git.kernel.org/torvalds/c/40137906c5f5) | [lib] | rhashtable: Add nested tables |  | lib/rhashtable.c not in A37 tree | 3.10.0-1030 |
| FEATURE-MISSING | 4.11 | [`c4d2603dac3a`](https://git.kernel.org/torvalds/c/c4d2603dac3a) | [lib] | rhashtable: Fix RCU dereference annotation in rht_bucket_nested |  | lib/rhashtable.c not in A37 tree | 3.10.0-1030 |
| FEATURE-MISSING | 4.11 | [`ca435407ba66`](https://git.kernel.org/torvalds/c/ca435407ba66) | [lib] | rhashtable: Fix use before NULL check in bucket_table_free |  | lib/rhashtable.c not in A37 tree | 3.10.0-1030 |
| FEATURE-MISSING | 4.11 | [`e067eba5871c`](https://git.kernel.org/torvalds/c/e067eba5871c) | [uapi] | userfaultfd: document _IOR/_IOW |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`cab350afcbc9`](https://git.kernel.org/torvalds/c/cab350afcbc9) | [uapi] | userfaultfd: hugetlbfs: allow registration of ranges containing huge pages |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`163e11bc4f6e`](https://git.kernel.org/torvalds/c/163e11bc4f6e) | [uapi] | userfaultfd: hugetlbfs: UFFD_FEATURE_MISSING_HUGETLBFS |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`47dd924508f5`](https://git.kernel.org/torvalds/c/47dd924508f5) | [uapi] | userfaultfd: hugetlbfs: UFFD_FEATURE_MISSING_SHMEM |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`cac673292b9b`](https://git.kernel.org/torvalds/c/cac673292b9b) | [uapi] | userfaultfd: shmem: allow registration of shared memory ranges |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.12 | [`6d684e54690c`](https://git.kernel.org/torvalds/c/6d684e54690c) | [lib] | rhashtable: Cap total number of entries to 2^31 |  | lib/rhashtable.c not in A37 tree | 3.10.0-1030 |
| FEATURE-MISSING | 4.12 | [`2d2ab658d2de`](https://git.kernel.org/torvalds/c/2d2ab658d2de) | [lib] | rhashtable: Do not lower max_elems when max_size is zero |  | lib/rhashtable.c not in A37 tree | 3.10.0-1030 |
| FEATURE-MISSING | 4.12 | [`038a3e858de4`](https://git.kernel.org/torvalds/c/038a3e858de4) | [lib] | rhashtable: remove insecure_max_entries param |  | lib/rhashtable.c not in A37 tree | 3.10.0-1030 |
| FEATURE-MISSING | 4.14 | [`0647169cf9aa`](https://git.kernel.org/torvalds/c/0647169cf9aa) | [lib] | rhashtable: Documentation tweak |  | lib/rhashtable.c not in A37 tree | 3.10.0-1030 |
| FEATURE-MISSING | 4.16 | [`d3dcf8eb6155`](https://git.kernel.org/torvalds/c/d3dcf8eb6155) | [lib] | rhashtable: Fix rhlist duplicates insertion |  | lib/rhashtable.c not in A37 tree | 3.10.0-878 |
| FEATURE-MISSING | 4.17 | [`ae6da1f503ab`](https://git.kernel.org/torvalds/c/ae6da1f503ab) | [lib] | rhashtable: add schedule points |  | lib/rhashtable.c not in A37 tree | 3.10.0-1030 |
| FEATURE-MISSING | 5.0 | [`03c0a9208bb1`](https://git.kernel.org/torvalds/c/03c0a9208bb1) | [] | kernfs: Improve kernfs_notify() poll notification latency |  | fs/kernfs not in A37 tree | 3.10.0-1160.101.1 |
| FEATURE-MISSING | 5.1 | [`49ee4dd2e753`](https://git.kernel.org/torvalds/c/49ee4dd2e753) | [lib] | livepatch: Proper error handling in the shadow variables selftest |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-1067 |
| FEATURE-MISSING | 5.1 | [`86e43f23c171`](https://git.kernel.org/torvalds/c/86e43f23c171) | [lib] | livepatch: return -ENOMEM on ptr_id() allocation failure |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-1067 |
| FEATURE-MISSING | 5.1 | [`408f13ef358a`](https://git.kernel.org/torvalds/c/408f13ef358a) | [lib] | rhashtable: Still do rehash when we get EEXIST |  | lib/rhashtable.c not in A37 tree | 3.10.0-1064 |
| FEATURE-MISSING | 5.10 | [`285008501c65`](https://git.kernel.org/torvalds/c/285008501c65) | [] | blk-mq: always allow reserved allocation in hctx_may_queue |  | block/blk-mq.c not in A37 tree | 3.10.0-1160.34.1 |
| FEATURE-MISSING | 5.19 | [`520778042ccc`](https://git.kernel.org/torvalds/c/520778042ccc) | [] | netfilter: nf_tables: disallow non-stateful expression in sets earlier | CVE-2022-1966 | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1160.71.1 |
| FEATURE-MISSING | 6.0 | [`470ee20e069a`](https://git.kernel.org/torvalds/c/470ee20e069a) | [] | netfilter: nf_tables: do not allow SET_ID to refer to another table |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1160.100.1 |
| FEATURE-MISSING | 6.4 | [`c1592a89942e`](https://git.kernel.org/torvalds/c/c1592a89942e) | [] | netfilter: nf_tables: deactivate anonymous set from preparation phase | CVE-2023-32233 | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1160.94.1 |
| FEATURE-MISSING | 6.5 | [`caf3ef7468f7`](https://git.kernel.org/torvalds/c/caf3ef7468f7) | [] | netfilter: nf_tables: prevent OOB access in nft_byteorder_eval | CVE-2023-35001 | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1160.101.1 |
| FEATURE-MISSING | 6.8 | [`f342de4e2f33`](https://git.kernel.org/torvalds/c/f342de4e2f33) | [] | netfilter: nf_tables: reject QUEUE/DROP verdict parameters | CVE-2024-1086 | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1160.114.1 |
| FEATURE-MISSING | — | — | [] | blk-mq: fix flush-rq race |  | block/blk-mq.c not in A37 tree | 3.10.0-1160.84.1 |
| FEATURE-MISSING | — | — | [] | netfilter: nf_tables: skip deactivated anonymous sets during lookups | CVE-2023-32233 | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1160.100.1 |
| FEATURE-MISSING | — | — | [lib] | rhashtable-test: Get rid of previous workaround |  | lib/rhashtable.c not in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | — | — | [lib] | rhashtable-test: Remove bogus max_size setting |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | — | — | [lib] | rhashtable-test: Use inlined rhashtable interface |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | — | — | [lib] | rhashtable-test: Use rhashtable max_size instead of max_shift |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | — | — | [lib] | rhashtable: allow user to set the minimum shifts of shrinking |  | lib/rhashtable.c not in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | — | — | [lib] | rhashtable: fix data race in rhashtable_rehash_one |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | — | — | [lib] | rhashtable: nft_hash: Remove rhashtable_remove_pprev() |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | — | — | [lib] | rhashtable: Remove weird non-ASCII characters from comments |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | — | — | [lib] | rhashtable: Resizable, Scalable, Concurrent Hash Table |  | lib/rhashtable.c not in A37 tree | 3.10.0-368 |
| FEATURE-MISSING | — | — | [lib] | rhashtable: Resizable, Scalable, Concurrent Hash Table |  | lib/rhashtable.c not in A37 tree | 3.10.0-211 |
| REVIEW | 3.14 | [`2edb90ae421a`](https://git.kernel.org/torvalds/c/2edb90ae421a) | [include] | arm: at91: move at91_pmc.h to include/linux/clk/at91_pmc.h |  | arm/arm64 or unclear | 3.10.0-365 |
| REVIEW | — | — | [nvdimm] | arm: 8522/1:  nvdimm: ensure no negative value gets returned on positive match |  | arm/arm64 or unclear | 3.10.0-490 |
