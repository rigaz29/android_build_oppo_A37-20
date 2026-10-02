# Core kernel (sched, cgroup, bpf, audit, perf, time, ...): backport candidates from CentOS 7

3148 entries: 2924 CANDIDATE, 221 FEATURE-MISSING, 3 REVIEW. Sorted by status, then by the first mainline release that has the commit. "loose" means the RHEL subject only matched after normalising its prefix; check it before cherry-picking. See ../README.md for the method and its limits.

| Status | First in | Upstream | Tag | Subject | CVE | Why relevant | RHEL |
|---|---|---|---|---|---|---|---|
| CANDIDATE | 3.11 | [`d0d98eedee21`](https://git.kernel.org/torvalds/c/d0d98eedee21) | [kernel] | Add arch_phys_wc_{add, del} to manipulate WC MTRRs if needed |  | generic code, tag [kernel] | 3.10.0-50 |
| CANDIDATE | 3.11 | [`03e13cf5ee60`](https://git.kernel.org/torvalds/c/03e13cf5ee60) | [kernel] | clockevents: Implement unbind functionality |  | generic code, tag [kernel] | 3.10.0-355 |
| CANDIDATE | 3.11 | [`501f867064e9`](https://git.kernel.org/torvalds/c/501f867064e9) | [kernel] | clockevents: Provide sysfs interface |  | generic code, tag [kernel] | 3.10.0-355 |
| CANDIDATE | 3.11 | [`7126cac42613`](https://git.kernel.org/torvalds/c/7126cac42613) | [kernel] | clockevents: Simplify locking |  | generic code, tag [kernel] | 3.10.0-355 |
| CANDIDATE | 3.11 | [`09ac369c825d`](https://git.kernel.org/torvalds/c/09ac369c825d) | [kernel] | clocksource: Add module refcount |  | generic code, tag [kernel] | 3.10.0-355 |
| CANDIDATE | 3.11 | [`f5a2e34375a5`](https://git.kernel.org/torvalds/c/f5a2e34375a5) | [kernel] | clocksource: Allow clocksource select to skip current clocksource |  | generic code, tag [kernel] | 3.10.0-355 |
| CANDIDATE | 3.11 | [`5d33b883aed8`](https://git.kernel.org/torvalds/c/5d33b883aed8) | [kernel] | clocksource: Always verify highres capability |  | generic code, tag [kernel] | 3.10.0-355 |
| CANDIDATE | 3.11 | [`a89c7edbe7d7`](https://git.kernel.org/torvalds/c/a89c7edbe7d7) | [kernel] | clocksource: Let clocksource_unregister() return success/error |  | generic code, tag [kernel] | 3.10.0-355 |
| CANDIDATE | 3.11 | [`ba919d1caa2e`](https://git.kernel.org/torvalds/c/ba919d1caa2e) | [kernel] | clocksource: Let timekeeping_notify return success/error |  | generic code, tag [kernel] | 3.10.0-355 |
| CANDIDATE | 3.11 | [`7eaeb34305de`](https://git.kernel.org/torvalds/c/7eaeb34305de) | [kernel] | clocksource: Provide unbind interface in sysfs |  | generic code, tag [kernel] | 3.10.0-355 |
| CANDIDATE | 3.11 | [`332962f2c888`](https://git.kernel.org/torvalds/c/332962f2c888) | [kernel] | clocksource: Reselect clocksource when watchdog validated high-res capability |  | generic code, tag [kernel] | 3.10.0-376 |
| CANDIDATE | 3.11 | [`29b5407819f5`](https://git.kernel.org/torvalds/c/29b5407819f5) | [kernel] | clocksource: Split out user string input |  | generic code, tag [kernel] | 3.10.0-355 |
| CANDIDATE | 3.11 | [`5c5cc62321d9`](https://git.kernel.org/torvalds/c/5c5cc62321d9) | [kernel] | cpuset: allow to keep tasks in empty cpusets |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.11 | [`88fa523bff29`](https://git.kernel.org/torvalds/c/88fa523bff29) | [kernel] | cpuset: allow to move tasks to empty cpusets |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.11 | [`40df2deb5057`](https://git.kernel.org/torvalds/c/40df2deb5057) | [kernel] | cpuset: cleanup guarantee_online_{cpus\|mems}() |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.11 | [`1c09b195d37f`](https://git.kernel.org/torvalds/c/1c09b195d37f) | [kernel] | cpuset: fix a regression in validating config change |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.11 | [`f047cecf2cfc`](https://git.kernel.org/torvalds/c/f047cecf2cfc) | [kernel] | cpuset: fix to migrate mm correctly in a corner case |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.11 | [`070b57fcacc9`](https://git.kernel.org/torvalds/c/070b57fcacc9) | [kernel] | cpuset: introduce effective_{cpumask\|nodemask}_cpuset() |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.11 | [`e44193d39e8d`](https://git.kernel.org/torvalds/c/e44193d39e8d) | [kernel] | cpuset: let hotplug propagation work wait for task attaching |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.11 | [`a73456f37b9d`](https://git.kernel.org/torvalds/c/a73456f37b9d) | [kernel] | cpuset: re-structure update_cpumask() a bit |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.11 | [`33ad801dfb5c`](https://git.kernel.org/torvalds/c/33ad801dfb5c) | [kernel] | cpuset: record old_mems_allowed in struct cpuset |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.11 | [`388afd8549dc`](https://git.kernel.org/torvalds/c/388afd8549dc) | [kernel] | cpuset: remove async hotplug propagation work |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.11 | [`249cc86db749`](https://git.kernel.org/torvalds/c/249cc86db749) | [kernel] | cpuset: remove cpuset_test_cpumask() |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.11 | [`06d6b3cbdf94`](https://git.kernel.org/torvalds/c/06d6b3cbdf94) | [kernel] | cpuset: remove redundant check in cpuset_cpus_allowed_fallback() |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.11 | [`67bd2c59850d`](https://git.kernel.org/torvalds/c/67bd2c59850d) | [kernel] | cpuset: remove unnecessary variable in cpuset_attach() |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.11 | [`c9e5fe66f594`](https://git.kernel.org/torvalds/c/c9e5fe66f594) | [kernel] | cpuset: rename @cont to @cgrp |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.11 | [`0db0628d9012`](https://git.kernel.org/torvalds/c/0db0628d9012) (loose) | [kernel] | delete __cpuinit usage from all core kernel files |  | generic code, tag [kernel] | 3.10.0-136 |
| CANDIDATE | 3.11 | [`2b44c4db2e2f`](https://git.kernel.org/torvalds/c/2b44c4db2e2f) | [kernel] | freezer: set PF_SUSPEND_TASK flag on tasks that call freeze_processes |  | generic code, tag [kernel] | 3.10.0-17 |
| CANDIDATE | 3.11 | [`1f6236bfd7c3`](https://git.kernel.org/torvalds/c/1f6236bfd7c3) | [kernel] | genirq: Add irq_get_trigger_type() to get IRQ flags |  | generic code, tag [kernel] | 3.10.0-884 |
| CANDIDATE | 3.11 | [`bde96030f438`](https://git.kernel.org/torvalds/c/bde96030f438) | [kernel] | hw_breakpoint: Introduce "struct bp_cpuinfo" |  | generic code, tag [kernel] | 3.10.0-4 |
| CANDIDATE | 3.11 | [`1c10adbb9299`](https://git.kernel.org/torvalds/c/1c10adbb9299) | [kernel] | hw_breakpoint: Introduce cpumask_of_bp() |  | generic code, tag [kernel] | 3.10.0-4 |
| CANDIDATE | 3.11 | [`e12cbc10cb27`](https://git.kernel.org/torvalds/c/e12cbc10cb27) | [kernel] | hw_breakpoint: Simplify *register_wide_hw_breakpoint() |  | generic code, tag [kernel] | 3.10.0-4 |
| CANDIDATE | 3.11 | [`e1ebe86203e6`](https://git.kernel.org/torvalds/c/e1ebe86203e6) | [kernel] | hw_breakpoint: Simplify list/idx mess in toggle_bp_slot() paths |  | generic code, tag [kernel] | 3.10.0-4 |
| CANDIDATE | 3.11 | [`7ab71f3244e9`](https://git.kernel.org/torvalds/c/7ab71f3244e9) | [kernel] | hw_breakpoint: Simplify the "weight" usage in toggle_bp_slot() paths |  | generic code, tag [kernel] | 3.10.0-4 |
| CANDIDATE | 3.11 | [`d36f82b24356`](https://git.kernel.org/torvalds/c/d36f82b24356) | [kernel] | ktime: add ms_to_ktime() and ktime_add_ms() helpers |  | generic code, tag [kernel] | 3.10.0-155 |
| CANDIDATE | 3.11 | [`166989e366ff`](https://git.kernel.org/torvalds/c/166989e366ff) | [kernel] | locking-selftests: Handle unexpected failures more strictly |  | generic code, tag [kernel] | 3.10.0-50 |
| CANDIDATE | 3.11 | [`2fe3d4b149cc`](https://git.kernel.org/torvalds/c/2fe3d4b149cc) | [kernel] | mutex: Add more tests to lib/locking-selftest.c |  | generic code, tag [kernel] | 3.10.0-50 |
| CANDIDATE | 3.11 | [`f3cf139efa4b`](https://git.kernel.org/torvalds/c/f3cf139efa4b) | [kernel] | mutex: Add more w/w tests to test EDEADLK path handling |  | generic code, tag [kernel] | 3.10.0-50 |
| CANDIDATE | 3.11 | [`040a0a371005`](https://git.kernel.org/torvalds/c/040a0a371005) | [kernel] | mutex: Add support for wound/wait style locks |  | generic code, tag [kernel] | 3.10.0-50 |
| CANDIDATE | 3.11 | [`230100276955`](https://git.kernel.org/torvalds/c/230100276955) | [kernel] | mutex: Add w/w mutex slowpath debugging |  | generic code, tag [kernel] | 3.10.0-50 |
| CANDIDATE | 3.11 | [`1de994452f44`](https://git.kernel.org/torvalds/c/1de994452f44) | [kernel] | mutex: Add w/w tests to lib/locking-selftest.c |  | generic code, tag [kernel] | 3.10.0-50 |
| CANDIDATE | 3.11 | [`85f4896123d0`](https://git.kernel.org/torvalds/c/85f4896123d0) | [kernel] | mutex: Fix w/w mutex deadlock injection |  | generic code, tag [kernel] | 3.10.0-1020 |
| CANDIDATE | 3.11 | [`1b375dc30710`](https://git.kernel.org/torvalds/c/1b375dc30710) | [kernel] | mutex: Move ww_mutex definitions to ww_mutex.h |  | generic code, tag [kernel] | 3.10.0-50 |
| CANDIDATE | 3.11 | [`543487c7a267`](https://git.kernel.org/torvalds/c/543487c7a267) | [kernel] | nohz: Do not warn about unstable tsc unless user uses nohz_full |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.11 | [`ca06416b2b4f`](https://git.kernel.org/torvalds/c/ca06416b2b4f) | [kernel] | nohz: fix compile warning in tick_nohz_init() |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.11 | [`5b8621a68fdc`](https://git.kernel.org/torvalds/c/5b8621a68fdc) | [kernel] | nohz: Remove obsolete check for full dynticks CPUs to be RCU nocbs |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.11 | [`e12d0271774f`](https://git.kernel.org/torvalds/c/e12d0271774f) | [kernel] | nohz: Warn if the machine can not perform nohz_full |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.11 | [`dcb6b45254e2`](https://git.kernel.org/torvalds/c/dcb6b45254e2) | [kernel] | panic: add cpu/pid to warn_slowpath_common in WARNING printk()s |  | generic code, tag [kernel] | 3.10.0-568 |
| CANDIDATE | 3.11 | [`03d8e80beb7d`](https://git.kernel.org/torvalds/c/03d8e80beb7d) | [kernel] | perf: Add const qualifier to perf_pmu_register's 'name' arg |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-4 |
| CANDIDATE | 3.11 | [`62b856397927`](https://git.kernel.org/torvalds/c/62b856397927) | [kernel] | perf: Add sysfs entry to adjust multiplexing interval per PMU |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-4 |
| CANDIDATE | 3.11 | [`ab573844e305`](https://git.kernel.org/torvalds/c/ab573844e305) | [kernel] | perf: Fix hw breakpoints overflow period sampling |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-4 |
| CANDIDATE | 3.11 | [`e712209a9e0b`](https://git.kernel.org/torvalds/c/e712209a9e0b) | [kernel] | perf: Fix hypervisor branch sampling permission check |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-4 |
| CANDIDATE | 3.11 | [`9e6302056f80`](https://git.kernel.org/torvalds/c/9e6302056f80) | [kernel] | perf: Use hrtimers for event multiplexing |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-4 |
| CANDIDATE | 3.11 | [`ad42fc6c8479`](https://git.kernel.org/torvalds/c/ad42fc6c8479) | [kernel] | pinctrl: rip out the direct pinconf API |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-538 |
| CANDIDATE | 3.11 | [`d7f3e207397d`](https://git.kernel.org/torvalds/c/d7f3e207397d) | [kernel] | rcu: Convert rcutree.c printk calls |  | generic code, tag [kernel] | 3.10.0-423 |
| CANDIDATE | 3.11 | [`efc151c33b97`](https://git.kernel.org/torvalds/c/efc151c33b97) | [kernel] | rcu: Convert rcutree_plugin.h printk calls |  | generic code, tag [kernel] | 3.10.0-485 |
| CANDIDATE | 3.11 | [`49fb4c6290c7`](https://git.kernel.org/torvalds/c/49fb4c6290c7) | [kernel] | rcu: delete __cpuinit usage from all rcu files |  | generic code, tag [kernel] | 3.10.0-136 |
| CANDIDATE | 3.11 | [`026ad2835ce6`](https://git.kernel.org/torvalds/c/026ad2835ce6) | [kernel] | rcu: Drive quiescent-state-forcing delay from HZ |  | generic code, tag [kernel] | 3.10.0-423 |
| CANDIDATE | 3.11 | [`9a5739d73f93`](https://git.kernel.org/torvalds/c/9a5739d73f93) | [kernel] | rcu: Remove "Experimental" flags |  | generic code, tag [kernel] | 3.10.0-239 |
| CANDIDATE | 3.11 | [`b29bebd66dbd`](https://git.kernel.org/torvalds/c/b29bebd66dbd) (loose) | [kernel] | replace strict_strto*() with kstrto*() |  | generic code, tag [kernel] | 3.10.0-745 |
| CANDIDATE | 3.11 | [`add332a1523a`](https://git.kernel.org/torvalds/c/add332a1523a) | [kernel] | sched/debug: Fix formatting of /proc/<PID>/sched |  | generic code, tag [kernel] | 3.10.0-89 |
| CANDIDATE | 3.11 | [`0de358f1c264`](https://git.kernel.org/torvalds/c/0de358f1c264) | [kernel] | sched/fair: Remove unused variable from expire_cfs_rq_runtime() |  | generic code, tag [kernel] | 3.10.0-89 |
| CANDIDATE | 3.11 | [`f6f3c437d09e`](https://git.kernel.org/torvalds/c/f6f3c437d09e) | [kernel] | sched: add cond_resched_rcu() helper |  | generic code, tag [kernel] | 3.10.0-364 |
| CANDIDATE | 3.11 | [`72a4cf20cb71`](https://git.kernel.org/torvalds/c/72a4cf20cb71) | [kernel] | sched: Change cfs_rq load avg to unsigned long |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | 3.11 | [`b92486cbf2aa`](https://git.kernel.org/torvalds/c/b92486cbf2aa) | [kernel] | sched: Compute runnable load avg in cpu_load and cpu_avg_load_per_task |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | 3.11 | [`a003a25b227d`](https://git.kernel.org/torvalds/c/a003a25b227d) | [kernel] | sched: Consider runnable load average in move_tasks() |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | 3.11 | [`c75e01288ce9`](https://git.kernel.org/torvalds/c/c75e01288ce9) | [kernel] | sched: Don't set sd->child to NULL when it is already NULL |  | generic code, tag [kernel] | 3.10.0-332 |
| CANDIDATE | 3.11 | [`cd08e9234c98`](https://git.kernel.org/torvalds/c/cd08e9234c98) | [kernel] | sched: Fix memory leakage in build_sched_groups() |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 3.11 | [`e69f61862ab8`](https://git.kernel.org/torvalds/c/e69f61862ab8) | [kernel] | sched: Fix some kernel-doc warnings |  | generic code, tag [kernel] | 3.10.0-35 |
| CANDIDATE | 3.11 | [`a75cdaa915e4`](https://git.kernel.org/torvalds/c/a75cdaa915e4) | [kernel] | sched: Set an initial value of runnable avg for new forked task |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | 3.11 | [`78becc270975`](https://git.kernel.org/torvalds/c/78becc270975) | [kernel] | sched: Use an accessor to read the rq clock |  | generic code, tag [kernel] | 3.10.0-35 |
| CANDIDATE | 3.11 | [`0936629f01bb`](https://git.kernel.org/torvalds/c/0936629f01bb) | [kernel] | sched: Use cached value of span instead of calling sched_domain_span() |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 3.11 | [`84f9f3a15611`](https://git.kernel.org/torvalds/c/84f9f3a15611) | [kernel] | sched: Use swap() macro in scale_stime() |  | generic code, tag [kernel] | 3.10.0-677 |
| CANDIDATE | 3.11 | [`424c93fe4cbe`](https://git.kernel.org/torvalds/c/424c93fe4cbe) | [kernel] | sched: Use this_rq() helper |  | generic code, tag [kernel] | 3.10.0-585 |
| CANDIDATE | 3.11 | [`d2e08473f248`](https://git.kernel.org/torvalds/c/d2e08473f248) | [kernel] | softirq: Use _RET_IP_ |  | generic code, tag [kernel] | 3.10.0-368 |
| CANDIDATE | 3.11 | [`d738ce8fdc05`](https://git.kernel.org/torvalds/c/d738ce8fdc05) | [kernel] | sysctl: range checking in do_proc_dointvec_ms_jiffies_conv |  | generic code, tag [kernel] | 3.10.0-8 |
| CANDIDATE | 3.11 | [`780427f0e113`](https://git.kernel.org/torvalds/c/780427f0e113) | [kernel] | timekeeping: Indicate that clock was set in the pvclock gtod notifier |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.11 | [`04397fe94ad6`](https://git.kernel.org/torvalds/c/04397fe94ad6) | [kernel] | timekeeping: Pass flags instead of multiple bools to timekeeping_update() |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.11 | [`288e984e6223`](https://git.kernel.org/torvalds/c/288e984e6223) | [kernel] | tracing/kprobes: Avoid perf_trace_buf_*() if ->perf_events is empty |  | CONFIG_FTRACE=y in A37 | 3.10.0-968 |
| CANDIDATE | 3.11 | [`3fe3d6193e7c`](https://git.kernel.org/torvalds/c/3fe3d6193e7c) | [kernel] | tracing/kprobes: Kill probe_enable_lock |  | CONFIG_FTRACE=y in A37 | 3.10.0-917 |
| CANDIDATE | 3.11 | [`195a84d91e92`](https://git.kernel.org/torvalds/c/195a84d91e92) | [kernel] | tracing/kprobes: Remove unnecessary checking of trace_probe_is_enabled |  | CONFIG_FTRACE=y in A37 | 3.10.0-917 |
| CANDIDATE | 3.11 | [`b04d52e368e2`](https://git.kernel.org/torvalds/c/b04d52e368e2) | [kernel] | tracing/kprobes: Turn trace_probe->files into list_head |  | CONFIG_FTRACE=y in A37 | 3.10.0-917 |
| CANDIDATE | 3.11 | [`421c7860c6e1`](https://git.kernel.org/torvalds/c/421c7860c6e1) | [kernel] | tracing/syscall: Avoid perf_trace_buf_*() if sys_data->perf_events is empty |  | CONFIG_FTRACE=y in A37 | 3.10.0-913 |
| CANDIDATE | 3.11 | [`de7edd31457b`](https://git.kernel.org/torvalds/c/de7edd31457b) | [kernel] | tracing: Disable tracing on warning |  | CONFIG_FTRACE=y in A37 | 3.10.0-255 |
| CANDIDATE | 3.11 | [`146c3442f2dd`](https://git.kernel.org/torvalds/c/146c3442f2dd) | [kernel] | tracing: Use trace_seq_puts()/trace_seq_putc() where possible |  | CONFIG_FTRACE=y in A37 | 3.10.0-590 |
| CANDIDATE | 3.11 | [`940be35ac013`](https://git.kernel.org/torvalds/c/940be35ac013) | [kernel] | watchdog: Boot-disable by default on full dynticks |  | generic code, tag [kernel] | 3.10.0-68 |
| CANDIDATE | 3.11 | [`a6572f84c5b1`](https://git.kernel.org/torvalds/c/a6572f84c5b1) | [kernel] | watchdog: Disallow setting watchdog_thresh to -1 |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 3.11 | [`b8900bc0217f`](https://git.kernel.org/torvalds/c/b8900bc0217f) | [kernel] | watchdog: Register / unregister watchdog kthreads on sysctl control |  | generic code, tag [kernel] | 3.10.0-68 |
| CANDIDATE | 3.11 | [`3c00ea82c724`](https://git.kernel.org/torvalds/c/3c00ea82c724) | [kernel] | watchdog: Rename confusing state variable |  | generic code, tag [kernel] | 3.10.0-68 |
| CANDIDATE | 3.11 | [`0668106ca386`](https://git.kernel.org/torvalds/c/0668106ca386) | [kernel] | workqueue: Add system wide power_efficient workqueues |  | generic code, tag [kernel] | 3.10.0-365 |
| CANDIDATE | 3.11 | [`cee22a15052f`](https://git.kernel.org/torvalds/c/cee22a15052f) | [kernel] | workqueues: Introduce new flag WQ_POWER_EFFICIENT for power oriented workqueues |  | generic code, tag [kernel] | 3.10.0-365 |
| CANDIDATE | 3.12 | [`d65ec12127a5`](https://git.kernel.org/torvalds/c/d65ec12127a5) | [kernel] | context_tracking: Fix runtime CPU off-case |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`65f382fd0c8f`](https://git.kernel.org/torvalds/c/65f382fd0c8f) | [kernel] | context_tracking: Ground setup for static key use |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`73d424f9af7b`](https://git.kernel.org/torvalds/c/73d424f9af7b) | [kernel] | context_tracking: Optimize context switch off case with static keys |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`48d6a816a8bf`](https://git.kernel.org/torvalds/c/48d6a816a8bf) | [kernel] | context_tracking: Optimize guest APIs off case with static key |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`ad65782fba50`](https://git.kernel.org/torvalds/c/ad65782fba50) | [kernel] | context_tracking: Optimize main APIs off case with static key |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`d84d27a49188`](https://git.kernel.org/torvalds/c/d84d27a49188) | [kernel] | context_tracking: Remove full dynticks' hacky dependency on wide context tracking |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`e7358b3bc0d7`](https://git.kernel.org/torvalds/c/e7358b3bc0d7) | [kernel] | context_tracking: Split low level state headers |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`1b6a259aa5ab`](https://git.kernel.org/torvalds/c/1b6a259aa5ab) | [kernel] | context_tracking: User/kernel broundary cross trace events |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`c8d2d47a9cbb`](https://git.kernel.org/torvalds/c/c8d2d47a9cbb) | [kernel] | cpumask: Fix cpumask leak in partition_sched_domains() |  | generic code, tag [kernel] | 3.10.0-844 |
| CANDIDATE | 3.12 | [`cb7b6b1cbc20`](https://git.kernel.org/torvalds/c/cb7b6b1cbc20) | [kernel] | exec: cleanup the CONFIG_MODULES logic |  | generic code, tag [kernel] | 3.10.0-919 |
| CANDIDATE | 3.12 | [`40a0d32d1eaf`](https://git.kernel.org/torvalds/c/40a0d32d1eaf) | [kernel] | fork: unify and tighten up CLONE_NEWUSER/CLONE_NEWPID checks |  | generic code, tag [kernel] | 3.10.0-302 |
| CANDIDATE | 3.12 | [`a0a5a0561f63`](https://git.kernel.org/torvalds/c/a0a5a0561f63) | [kernel] | ftrace/rcu: Do not trace debug_lockdep_rcu_enabled() |  | CONFIG_FTRACE=y in A37 | 3.10.0-926 |
| CANDIDATE | 3.12 | [`2d4b84739f0a`](https://git.kernel.org/torvalds/c/2d4b84739f0a) | [kernel] | hardirq: Split preempt count mask definitions |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`851cf6e7d636`](https://git.kernel.org/torvalds/c/851cf6e7d636) | [kernel] | jump_label: Split jumplabel ratelimit |  | generic code, tag [kernel] | 3.10.0-24 |
| CANDIDATE | 3.12 | [`2b4883972271`](https://git.kernel.org/torvalds/c/2b4883972271) | [kernel] | mutex: Avoid label warning when !CONFIG_MUTEX_SPIN_ON_OWNER |  | generic code, tag [kernel] | 3.10.0-96 |
| CANDIDATE | 3.12 | [`ec83f425dbca`](https://git.kernel.org/torvalds/c/ec83f425dbca) | [kernel] | mutex: Do not unnecessarily deal with waiters |  | generic code, tag [kernel] | 3.10.0-75 |
| CANDIDATE | 3.12 | [`083986e8248d`](https://git.kernel.org/torvalds/c/083986e8248d) | [kernel] | mutex: replace CONFIG_HAVE_ARCH_MUTEX_CPU_RELAX with simple ifdef |  | generic code, tag [kernel] | 3.10.0-126 |
| CANDIDATE | 3.12 | [`c2e7fcf53c3c`](https://git.kernel.org/torvalds/c/c2e7fcf53c3c) | [kernel] | nohz: Include local CPU in full dynticks global kick |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`2e70933866ac`](https://git.kernel.org/torvalds/c/2e70933866ac) | [kernel] | nohz: Only enable context tracking on full dynticks CPUs |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`460775df4680`](https://git.kernel.org/torvalds/c/460775df4680) | [kernel] | nohz: Optimize full dynticks state checks with static keys |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`d13508f9440e`](https://git.kernel.org/torvalds/c/d13508f9440e) | [kernel] | nohz: Optimize full dynticks's sched hooks with static keys |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`73867dcd0792`](https://git.kernel.org/torvalds/c/73867dcd0792) | [kernel] | nohz: Rename a few state variables |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`2adfffa22350`](https://git.kernel.org/torvalds/c/2adfffa22350) | [kernel] | of: make of_property_for_each_{u32\|string}() use parameters if OF is not enabled |  | CONFIG_OF=y in A37 | 3.10.0-712 |
| CANDIDATE | 3.12 | [`6723734cdff1`](https://git.kernel.org/torvalds/c/6723734cdff1) | [kernel] | panic: call panic handlers before kmsg_dump |  | generic code, tag [kernel] | 3.10.0-530 |
| CANDIDATE | 3.12 | [`948b26b6ddd0`](https://git.kernel.org/torvalds/c/948b26b6ddd0) | [kernel] | perf: Account freq events globally |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-68 |
| CANDIDATE | 3.12 | [`ba8a75c16e29`](https://git.kernel.org/torvalds/c/ba8a75c16e29) | [kernel] | perf: Account freq events per cpu |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-68 |
| CANDIDATE | 3.12 | [`cf4957f17f2a`](https://git.kernel.org/torvalds/c/cf4957f17f2a) | [kernel] | perf: Add PERF_EVENT_IOC_ID ioctl to return event ID |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-31 |
| CANDIDATE | 3.12 | [`6f5ab0019fd3`](https://git.kernel.org/torvalds/c/6f5ab0019fd3) | [kernel] | perf: Do not get values from disabled counters in group format read |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-31 |
| CANDIDATE | 3.12 | [`766d6c076928`](https://git.kernel.org/torvalds/c/766d6c076928) | [kernel] | perf: Factor out event accounting code to account_event()/__free_event() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-68 |
| CANDIDATE | 3.12 | [`6050cb0b0b36`](https://git.kernel.org/torvalds/c/6050cb0b0b36) | [kernel] | perf: Fix branch stack refcount leak on callchain init failure |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-68 |
| CANDIDATE | 3.12 | [`9886167d20c0`](https://git.kernel.org/torvalds/c/9886167d20c0) | [kernel] | perf: Fix perf_pmu_migrate_context |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-155 |
| CANDIDATE | 3.12 | [`d84153d6c96f`](https://git.kernel.org/torvalds/c/d84153d6c96f) | [kernel] | perf: Implement finer grained full dynticks kick |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-68 |
| CANDIDATE | 3.12 | [`9a545de019b5`](https://git.kernel.org/torvalds/c/9a545de019b5) | [kernel] | perf: Migrate per cpu event accounting |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-68 |
| CANDIDATE | 3.12 | [`ae23bff1d71f`](https://git.kernel.org/torvalds/c/ae23bff1d71f) | [kernel] | perf: Prevent race in unthrottling code |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-29 |
| CANDIDATE | 3.12 | [`fc3b86d673e4`](https://git.kernel.org/torvalds/c/fc3b86d673e4) | [kernel] | perf: Roll back callchain buffer refcount under the callchain mutex |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-68 |
| CANDIDATE | 3.12 | [`90983b16078a`](https://git.kernel.org/torvalds/c/90983b16078a) | [kernel] | perf: Sanitize get_callchain_buffer() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-68 |
| CANDIDATE | 3.12 | [`4beb31f36573`](https://git.kernel.org/torvalds/c/4beb31f36573) | [kernel] | perf: Split the per-cpu accounting part of the event accounting code |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-68 |
| CANDIDATE | 3.12 | [`6e556ce209b0`](https://git.kernel.org/torvalds/c/6e556ce209b0) | [kernel] | pidns: Don't have unshare(CLONE_NEWPID) imply CLONE_THREAD |  | CONFIG_PID_NS=y in A37 | 3.10.0-905 |
| CANDIDATE | 3.12 | [`5167246a8ad6`](https://git.kernel.org/torvalds/c/5167246a8ad6) | [kernel] | pidns: kill the unnecessary CLONE_NEWPID in copy_process() |  | CONFIG_PID_NS=y in A37 | 3.10.0-302 |
| CANDIDATE | 3.12 | [`03b054e9696c`](https://git.kernel.org/torvalds/c/03b054e9696c) | [kernel] | pinctrl: Pass all configs to driver on pin_config_set() |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-538 |
| CANDIDATE | 3.12 | [`948dcf966228`](https://git.kernel.org/torvalds/c/948dcf966228) | [kernel] | power_supply: Prevent suspend until power supply events are processed |  | CONFIG_POWER_SUPPLY=y in A37 | 3.10.0-612 |
| CANDIDATE | 3.12 | [`6e8b8726ad50`](https://git.kernel.org/torvalds/c/6e8b8726ad50) | [kernel] | PTR_RET is now PTR_ERR_OR_ZERO |  | generic code, tag [kernel] | 3.10.0-194 |
| CANDIDATE | 3.12 | [`fbb00b568bc9`](https://git.kernel.org/torvalds/c/fbb00b568bc9) | [kernel] | sched: Consolidate open coded preemptible() checks |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`62470419e993`](https://git.kernel.org/torvalds/c/62470419e993) | [kernel] | sched: Implement smarter wake-affine logic |  | generic code, tag [kernel] | 3.10.0-28 |
| CANDIDATE | 3.12 | [`7d9ffa896148`](https://git.kernel.org/torvalds/c/7d9ffa896148) | [kernel] | sched: Micro-optimize the smart wake-affine logic |  | generic code, tag [kernel] | 3.10.0-28 |
| CANDIDATE | 3.12 | [`685207963be9`](https://git.kernel.org/torvalds/c/685207963be9) | [kernel] | sched: Move h_load calculation to task_h_load() |  | generic code, tag [kernel] | 3.10.0-767 |
| CANDIDATE | 3.12 | [`685207963be9`](https://git.kernel.org/torvalds/c/685207963be9) | [kernel] | sched: Move h_load calculation to task_h_load() |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | 3.12 | [`d027e6a9c834`](https://git.kernel.org/torvalds/c/d027e6a9c834) | [trace] | tracing/perf: Avoid perf_trace_buf_*() in perf_trace_##call() when possible |  | CONFIG_FTRACE=y in A37 | 3.10.0-934 |
| CANDIDATE | 3.12 | [`ccfe9e42e451`](https://git.kernel.org/torvalds/c/ccfe9e42e451) | [kernel] | tracing: Make tracing_cpumask available for all instances |  | CONFIG_FTRACE=y in A37 | 3.10.0-590 |
| CANDIDATE | 3.12 | [`af2350bd1209`](https://git.kernel.org/torvalds/c/af2350bd1209) | [kernel] | vtime: Always debug check snapshot source _before_ updating it |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`b854fafa4e06`](https://git.kernel.org/torvalds/c/b854fafa4e06) | [kernel] | vtime: Always scale generic vtime accounting results |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`a5725ac23bf4`](https://git.kernel.org/torvalds/c/a5725ac23bf4) | [kernel] | vtime: Describe overriden functions in dedicated arch headers |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`54461562c90e`](https://git.kernel.org/torvalds/c/54461562c90e) | [kernel] | vtime: Fix racy cputime delta update |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`b04934061330`](https://git.kernel.org/torvalds/c/b04934061330) | [kernel] | vtime: Optimize full dynticks accounting off case with static keys |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`7621d1f8bcb4`](https://git.kernel.org/torvalds/c/7621d1f8bcb4) | [kernel] | vtime: Remove a few unneeded generic vtime state checks |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`5b206d48e582`](https://git.kernel.org/torvalds/c/5b206d48e582) | [kernel] | vtime: Update a few comments |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | 3.12 | [`93786a5f6aeb`](https://git.kernel.org/torvalds/c/93786a5f6aeb) | [kernel] | watchdog: Make it work under full dynticks |  | generic code, tag [kernel] | 3.10.0-68 |
| CANDIDATE | 3.12 | [`359e6fab6600`](https://git.kernel.org/torvalds/c/359e6fab6600) | [kernel] | watchdog: update watchdog attributes atomically |  | generic code, tag [kernel] | 3.10.0-254 |
| CANDIDATE | 3.12 | [`9809b18fcf6b`](https://git.kernel.org/torvalds/c/9809b18fcf6b) | [kernel] | watchdog: update watchdog_thresh properly |  | generic code, tag [kernel] | 3.10.0-254 |
| CANDIDATE | 3.13 | [`eb3057df732c`](https://git.kernel.org/torvalds/c/eb3057df732c) (loose) | [kernel] | add support for init_array constructors |  | generic code, tag [kernel] | 3.10.0-31 |
| CANDIDATE | 3.13 | [`81407c84ace8`](https://git.kernel.org/torvalds/c/81407c84ace8) | [kernel] | audit: allow unsetting the loginuid (with priv) |  | CONFIG_AUDIT=y in A37 | 3.10.0-82 |
| CANDIDATE | 3.13 | [`d040e5af3805`](https://git.kernel.org/torvalds/c/d040e5af3805) | [kernel] | audit: audit feature to only allow unsetting the loginuid |  | CONFIG_AUDIT=y in A37 | 3.10.0-82 |
| CANDIDATE | 3.13 | [`21b85c31d23f`](https://git.kernel.org/torvalds/c/21b85c31d23f) | [kernel] | audit: audit feature to set loginuid immutable |  | CONFIG_AUDIT=y in A37 | 3.10.0-82 |
| CANDIDATE | 3.13 | [`9410d228a4cf`](https://git.kernel.org/torvalds/c/9410d228a4cf) | [kernel] | audit: call audit_bprm() only once to add AUDIT_EXECVE information |  | CONFIG_AUDIT=y in A37 | 3.10.0-52 |
| CANDIDATE | 3.13 | [`42f74461a5b6`](https://git.kernel.org/torvalds/c/42f74461a5b6) | [kernel] | audit: change decimal constant to macro for invalid uid |  | CONFIG_AUDIT=y in A37 | 3.10.0-82 |
| CANDIDATE | 3.13 | [`78122037b7e8`](https://git.kernel.org/torvalds/c/78122037b7e8) | [kernel] | audit: do not reject all AUDIT_INODE filter types |  | CONFIG_AUDIT=y in A37 | 3.10.0-44 |
| CANDIDATE | 3.13 | [`9175c9d2aed5`](https://git.kernel.org/torvalds/c/9175c9d2aed5) | [kernel] | audit: fix type of sessionid in audit_set_loginuid() |  | CONFIG_AUDIT=y in A37 | 3.10.0-82 |
| CANDIDATE | 3.13 | [`b50eba7e2d53`](https://git.kernel.org/torvalds/c/b50eba7e2d53) | [kernel] | audit: format user messages to size of MAX_AUDIT_MESSAGE_LENGTH |  | CONFIG_AUDIT=y in A37 | 3.10.0-49 |
| CANDIDATE | 3.13 | [`b0fed40214ce`](https://git.kernel.org/torvalds/c/b0fed40214ce) | [kernel] | audit: implement generic feature setting and retrieving |  | CONFIG_AUDIT=y in A37 | 3.10.0-75 |
| CANDIDATE | 3.13 | [`bd131fb1aa5e`](https://git.kernel.org/torvalds/c/bd131fb1aa5e) | [kernel] | audit: Kill the unused struct audit_aux_data_capset |  | CONFIG_AUDIT=y in A37 | 3.10.0-52 |
| CANDIDATE | 3.13 | [`da0a610497ce`](https://git.kernel.org/torvalds/c/da0a610497ce) | [kernel] | audit: loginuid functions coding style |  | CONFIG_AUDIT=y in A37 | 3.10.0-82 |
| CANDIDATE | 3.13 | [`d9cfea91e97d`](https://git.kernel.org/torvalds/c/d9cfea91e97d) | [kernel] | audit: move audit_aux_data_execve contents into audit_context union |  | CONFIG_AUDIT=y in A37 | 3.10.0-52 |
| CANDIDATE | 3.13 | [`83fa6bbe4c45`](https://git.kernel.org/torvalds/c/83fa6bbe4c45) | [kernel] | audit: remove CONFIG_AUDIT_LOGINUID_IMMUTABLE |  | CONFIG_AUDIT=y in A37 | 3.10.0-82 |
| CANDIDATE | 3.13 | [`b8f89caafeb5`](https://git.kernel.org/torvalds/c/b8f89caafeb5) | [kernel] | audit: remove newline accidentally added during session id helper refactor |  | CONFIG_AUDIT=y in A37 | 3.10.0-41 |
| CANDIDATE | 3.13 | [`9462dc598175`](https://git.kernel.org/torvalds/c/9462dc598175) | [kernel] | audit: remove unused envc member of audit_aux_data_execve |  | CONFIG_AUDIT=y in A37 | 3.10.0-52 |
| CANDIDATE | 3.13 | [`e13f91e3c579`](https://git.kernel.org/torvalds/c/e13f91e3c579) | [kernel] | audit: use memset instead of trying to initialize field by field |  | CONFIG_AUDIT=y in A37 | 3.10.0-246 |
| CANDIDATE | 3.13 | [`d48d805122e3`](https://git.kernel.org/torvalds/c/d48d805122e3) | [kernel] | audit_alloc: clear TIF_SYSCALL_AUDIT if !audit_context |  | generic code, tag [kernel] | 3.10.0-49 |
| CANDIDATE | 3.13 | [`2ff2a7d03bbe`](https://git.kernel.org/torvalds/c/2ff2a7d03bbe) | [kernel] | cgroup: kill css_id |  | CONFIG_CGROUPS=y in A37 | 3.10.0-917 |
| CANDIDATE | 3.13 | [`2ff2a7d03bbe`](https://git.kernel.org/torvalds/c/2ff2a7d03bbe) | [kernel] | cgroup: kill css_id |  | CONFIG_CGROUPS=y in A37 | 3.10.0-758 |
| CANDIDATE | 3.13 | [`397bbf6dee50`](https://git.kernel.org/torvalds/c/397bbf6dee50) (loose) | [kernel] | clocksource, fix !CONFIG_CLOCKSOURCE_WATCHDOG compile |  | generic code, tag [kernel] | 3.10.0-1 |
| CANDIDATE | 3.13 | [`82592c38a858`](https://git.kernel.org/torvalds/c/82592c38a858) (loose) | [ipc] | convert use of typedef ctl_table to struct ctl_table |  | generic code, tag [ipc] | 3.10.0-1067 |
| CANDIDATE | 3.13 | [`4aa806b771d1`](https://git.kernel.org/torvalds/c/4aa806b771d1) | [kernel] | dma-api: provide a helper to set both DMA and coherent DMA masks |  | generic code, tag [kernel] | 3.10.0-70 |
| CANDIDATE | 3.13 | [`1f7f4dde5c94`](https://git.kernel.org/torvalds/c/1f7f4dde5c94) | [kernel] | fork: Allow CLONE_PARENT after setns(CLONE_NEWPID) |  | generic code, tag [kernel] | 3.10.0-302 |
| CANDIDATE | 3.13 | [`b5aa3a472b6d`](https://git.kernel.org/torvalds/c/b5aa3a472b6d) | [kernel] | ftrace: Have control op function callback only trace when RCU is watching |  | CONFIG_FTRACE=y in A37 | 3.10.0-255 |
| CANDIDATE | 3.13 | [`5cdec2d83374`](https://git.kernel.org/torvalds/c/5cdec2d83374) | [kernel] | futex: move user address verification up to common code |  | generic code, tag [kernel] | 3.10.0-103 |
| CANDIDATE | 3.13 | [`5f41ea0386a5`](https://git.kernel.org/torvalds/c/5f41ea0386a5) | [kernel] | gcov: add support for gcc 4.7 gcov format |  | generic code, tag [kernel] | 3.10.0-31 |
| CANDIDATE | 3.13 | [`17c568d60af5`](https://git.kernel.org/torvalds/c/17c568d60af5) | [kernel] | gcov: compile specific gcov implementation based on gcc version |  | generic code, tag [kernel] | 3.10.0-31 |
| CANDIDATE | 3.13 | [`8cbce376e3fd`](https://git.kernel.org/torvalds/c/8cbce376e3fd) | [kernel] | gcov: move gcov structs definitions to a gcc version specific file |  | generic code, tag [kernel] | 3.10.0-31 |
| CANDIDATE | 3.13 | [`81fcfb813fe9`](https://git.kernel.org/torvalds/c/81fcfb813fe9) | [kernel] | hashtable: add hash_for_each_possible_rcu_notrace() |  | generic code, tag [kernel] | 3.10.0-171 |
| CANDIDATE | 3.13 | [`6a716c90a513`](https://git.kernel.org/torvalds/c/6a716c90a513) | [kernel] | hung_task debugging: Add tracepoint to report the hang |  | generic code, tag [kernel] | 3.10.0-351 |
| CANDIDATE | 3.13 | [`8b414521bc53`](https://git.kernel.org/torvalds/c/8b414521bc53) | [kernel] | hung_task: add method to reset detector |  | generic code, tag [kernel] | 3.10.0-55 |
| CANDIDATE | 3.13 | [`01284764713b`](https://git.kernel.org/torvalds/c/01284764713b) | [kernel] | kernel/panic.c: reduce 1 byte usage for print tainted buffer |  | generic code, tag [kernel] | 3.10.0-560 |
| CANDIDATE | 3.13 | [`008643b86c5f`](https://git.kernel.org/torvalds/c/008643b86c5f) | [kernel] | keys: Add a 'trusted' flag and a 'trusted only' flag |  | CONFIG_KEYS=y in A37 | 3.10.0-10 |
| CANDIDATE | 3.13 | [`62226983da07`](https://git.kernel.org/torvalds/c/62226983da07) | [kernel] | keys: correct alignment of system_certificate_list content in assembly file |  | CONFIG_KEYS=y in A37 | 3.10.0-75 |
| CANDIDATE | 3.13 | [`0fbd39cf7ffe`](https://git.kernel.org/torvalds/c/0fbd39cf7ffe) | [kernel] | keys: Have make canonicalise the paths of the X.509 certs better to deduplicate |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`af34cb0c3d16`](https://git.kernel.org/torvalds/c/af34cb0c3d16) | [kernel] | keys: Make the system 'trusted' keyring viewable by userspace |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`b56e5a17b6b9`](https://git.kernel.org/torvalds/c/b56e5a17b6b9) | [kernel] | keys: Separate the kernel signature checking keyring from module signing |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`be5e610c0fd6`](https://git.kernel.org/torvalds/c/be5e610c0fd6) | [kernel] | math64: Add mul_u64_u32_shr() |  | generic code, tag [kernel] | 3.10.0-148 |
| CANDIDATE | 3.13 | [`d689fe222a85`](https://git.kernel.org/torvalds/c/d689fe222a85) | [kernel] | nohz: Check for nohz active instead of nohz enabled |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.13 | [`189b84fb5449`](https://git.kernel.org/torvalds/c/189b84fb5449) | [kernel] | perf: Document the new transaction sample type |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-155 |
| CANDIDATE | 3.13 | [`c606850407d9`](https://git.kernel.org/torvalds/c/c606850407d9) | [kernel] | pm / sleep: Fix memory leak in pm_vt_switch_unregister() |  | generic code, tag [kernel] | 3.10.0-874 |
| CANDIDATE | 3.13 | [`40c01e8bd557`](https://git.kernel.org/torvalds/c/40c01e8bd557) (loose) | [kernel] | provide a __smp_call_function_single stub for !CONFIG_SMP |  | generic code, tag [kernel] | 3.10.0-100 |
| CANDIDATE | 3.13 | [`5c173eb8bcb9`](https://git.kernel.org/torvalds/c/5c173eb8bcb9) | [kernel] | rcu: Consistent rcu_is_watching() naming |  | generic code, tag [kernel] | 3.10.0-255 |
| CANDIDATE | 3.13 | [`9418fb208059`](https://git.kernel.org/torvalds/c/9418fb208059) | [kernel] | rcu: Do not trace rcu_is_watching() functions |  | generic code, tag [kernel] | 3.10.0-255 |
| CANDIDATE | 3.13 | [`5d5a08003d3e`](https://git.kernel.org/torvalds/c/5d5a08003d3e) | [kernel] | rcu: Fix CONFIG_RCU_NOCB_CPU_ALL panic on machines with sparse CPU mask |  | generic code, tag [kernel] | 3.10.0-485 |
| CANDIDATE | 3.13 | [`cc6783f788d8`](https://git.kernel.org/torvalds/c/cc6783f788d8) | [kernel] | rcu: Is it safe to enter an RCU read-side critical section? |  | generic code, tag [kernel] | 3.10.0-255 |
| CANDIDATE | 3.13 | [`26cdfedf6a90`](https://git.kernel.org/torvalds/c/26cdfedf6a90) | [kernel] | rcu: Reject memory-order-induced stall-warning false positives |  | generic code, tag [kernel] | 3.10.0-423 |
| CANDIDATE | 3.13 | [`9bd721c55c8a`](https://git.kernel.org/torvalds/c/9bd721c55c8a) | [kernel] | sched/balancing: Consider max cost of idle balance per sched domain |  | generic code, tag [kernel] | 3.10.0-87 |
| CANDIDATE | 3.13 | [`f48627e686a6`](https://git.kernel.org/torvalds/c/f48627e686a6) | [kernel] | sched/balancing: Periodically decay max cost of idle balance |  | generic code, tag [kernel] | 3.10.0-87 |
| CANDIDATE | 3.13 | [`9dbdb1555323`](https://git.kernel.org/torvalds/c/9dbdb1555323) | [kernel] | sched/fair: Rework sched_fair time accounting |  | generic code, tag [kernel] | 3.10.0-148 |
| CANDIDATE | 3.13 | [`41a1431b178c`](https://git.kernel.org/torvalds/c/41a1431b178c) | [kernel] | sched/wait: Introduce ___wait_event() |  | generic code, tag [kernel] | 3.10.0-181 |
| CANDIDATE | 3.13 | [`5d4cf996cf13`](https://git.kernel.org/torvalds/c/5d4cf996cf13) | [kernel] | sched: Assign correct scheduling domain to 'sd_llc' |  | generic code, tag [kernel] | 3.10.0-585 |
| CANDIDATE | 3.13 | [`42eb088ed246`](https://git.kernel.org/torvalds/c/42eb088ed246) | [kernel] | sched: Avoid NULL dereference on sd_busy |  | generic code, tag [kernel] | 3.10.0-585 |
| CANDIDATE | 3.13 | [`9abf24d46518`](https://git.kernel.org/torvalds/c/9abf24d46518) | [kernel] | sched: Check sched_domain before computing group power |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | 3.13 | [`2042abe79772`](https://git.kernel.org/torvalds/c/2042abe79772) | [kernel] | sched: Fix asymmetric scheduling for POWER7 |  | generic code, tag [kernel] | 3.10.0-65 |
| CANDIDATE | 3.13 | [`8e8339a3a106`](https://git.kernel.org/torvalds/c/8e8339a3a106) | [kernel] | sched: Initialize power_orig for overlapping groups |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | 3.13 | [`911b2898b3c9`](https://git.kernel.org/torvalds/c/911b2898b3c9) | [kernel] | sched: Optimize task_sched_runtime() |  | generic code, tag [kernel] | 3.10.0-52 |
| CANDIDATE | 3.13 | [`abfafa54db9a`](https://git.kernel.org/torvalds/c/abfafa54db9a) | [kernel] | sched: Reduce overestimating rq->avg_idle |  | generic code, tag [kernel] | 3.10.0-87 |
| CANDIDATE | 3.13 | [`37dc6b50cee9`](https://git.kernel.org/torvalds/c/37dc6b50cee9) | [kernel] | sched: Remove unnecessary iteration over sched domains to update nr_busy_cpus |  | generic code, tag [kernel] | 3.10.0-585 |
| CANDIDATE | 3.13 | [`59c36455d061`](https://git.kernel.org/torvalds/c/59c36455d061) | [kernel] | scripts/sortextable: support objects with more than 64K sections |  | generic code, tag [kernel] | 3.10.0-654 |
| CANDIDATE | 3.13 | [`b805b198dc74`](https://git.kernel.org/torvalds/c/b805b198dc74) | [kernel] | selinux: apply selinux checks on new audit message types |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-75 |
| CANDIDATE | 3.13 | [`0c3351d451ae`](https://git.kernel.org/torvalds/c/0c3351d451ae) | [kernel] | seqlock: Use raw_ prefix instead of _no_lockdep |  | generic code, tag [kernel] | 3.10.0-984 |
| CANDIDATE | 3.13 | [`c84a83e2aaab`](https://git.kernel.org/torvalds/c/c84a83e2aaab) | [kernel] | smp: don't warn about csd->flags having CSD_FLAG_LOCK cleared for !wait |  | generic code, tag [kernel] | 3.10.0-10 |
| CANDIDATE | 3.13 | [`e3daab6ce467`](https://git.kernel.org/torvalds/c/e3daab6ce467) | [kernel] | smp: Export __smp_call_function_single() |  | generic code, tag [kernel] | 3.10.0-10 |
| CANDIDATE | 3.13 | [`ce332f662deb`](https://git.kernel.org/torvalds/c/ce332f662deb) | [kernel] | srcu: API for barrier after srcu read unlock |  | generic code, tag [kernel] | 3.10.0-258 |
| CANDIDATE | 3.13 | [`c4b2c0c5f647`](https://git.kernel.org/torvalds/c/c4b2c0c5f647) | [kernel] | static_key: WARN on usage before jump_label_init was called |  | generic code, tag [kernel] | 3.10.0-581 |
| CANDIDATE | 3.13 | [`1be0bd77c5dd`](https://git.kernel.org/torvalds/c/1be0bd77c5dd) | [kernel] | stop_machine: Introduce stop_two_cpus() |  | generic code, tag [kernel] | 3.10.0-35 |
| CANDIDATE | 3.13 | [`2bc74feba12f`](https://git.kernel.org/torvalds/c/2bc74feba12f) | [kernel] | take read_seqbegin_or_lock() and friends to seqlock.h |  | generic code, tag [kernel] | 3.10.0-182 |
| CANDIDATE | 3.13 | [`88d36a994951`](https://git.kernel.org/torvalds/c/88d36a994951) | [kernel] | taskstats: use genl_register_family_with_ops() |  | CONFIG_TASKSTATS=y in A37 | 3.10.0-180 |
| CANDIDATE | 3.13 | [`82e06c811163`](https://git.kernel.org/torvalds/c/82e06c811163) | [kernel] | wait: add wait_event_cmd() |  | generic code, tag [kernel] | 3.10.0-181 |
| CANDIDATE | 3.14 | [`a64fb3cd610c`](https://git.kernel.org/torvalds/c/a64fb3cd610c) (loose) | [kernel] | audit/fix non-modular users of module_init in core code |  | CONFIG_AUDIT=y in A37 | 3.10.0-347 |
| CANDIDATE | 3.14 | [`f910fde7307b`](https://git.kernel.org/torvalds/c/f910fde7307b) | [kernel] | audit: add kernel set-up parameter to override default backlog limit |  | CONFIG_AUDIT=y in A37 | 3.10.0-1074 |
| CANDIDATE | 3.14 | [`aa4af831bb4f`](https://git.kernel.org/torvalds/c/aa4af831bb4f) | [kernel] | audit: Allow login in non-init namespaces |  | CONFIG_AUDIT=y in A37 | 3.10.0-119 |
| CANDIDATE | 3.14 | [`6dd80aba9063`](https://git.kernel.org/torvalds/c/6dd80aba9063) | [kernel] | audit: audit_log_start running on auditd should not stop |  | CONFIG_AUDIT=y in A37 | 3.10.0-73 |
| CANDIDATE | 3.14 | [`09f883a9023e`](https://git.kernel.org/torvalds/c/09f883a9023e) | [kernel] | audit: clean up AUDIT_GET/SET local variables and future-proof API |  | CONFIG_AUDIT=y in A37 | 3.10.0-246 |
| CANDIDATE | 3.14 | [`4440e8548153`](https://git.kernel.org/torvalds/c/4440e8548153) | [kernel] | audit: convert all sessionid declaration to unsigned int |  | CONFIG_AUDIT=y in A37 | 3.10.0-550 |
| CANDIDATE | 3.14 | [`b6c50fe0be5b`](https://git.kernel.org/torvalds/c/b6c50fe0be5b) | [kernel] | audit: don't generate audit feature changed log when audit disabled |  | CONFIG_AUDIT=y in A37 | 3.10.0-75 |
| CANDIDATE | 3.14 | [`c2412d91c684`](https://git.kernel.org/torvalds/c/c2412d91c684) | [kernel] | audit: don't generate loginuid log when audit disabled |  | CONFIG_AUDIT=y in A37 | 3.10.0-82 |
| CANDIDATE | 3.14 | [`1b7b533f65db`](https://git.kernel.org/torvalds/c/1b7b533f65db) | [kernel] | audit: drop audit_cmd_lock in AUDIT_USER family of cases |  | CONFIG_AUDIT=y in A37 | 3.10.0-73 |
| CANDIDATE | 3.14 | [`5ee9a75c9fda`](https://git.kernel.org/torvalds/c/5ee9a75c9fda) | [kernel] | audit: fix dangling keywords in audit_log_set_loginuid() output |  | CONFIG_AUDIT=y in A37 | 3.10.0-82 |
| CANDIDATE | 3.14 | [`aabce351b514`](https://git.kernel.org/torvalds/c/aabce351b514) | [kernel] | audit: fix incorrect order of log new and old feature |  | CONFIG_AUDIT=y in A37 | 3.10.0-75 |
| CANDIDATE | 3.14 | [`04ee1a3b8f05`](https://git.kernel.org/torvalds/c/04ee1a3b8f05) | [kernel] | audit: get rid of *NO* daemon at audit_pid=0 message |  | CONFIG_AUDIT=y in A37 | 3.10.0-372 |
| CANDIDATE | 3.14 | [`724e4fcc8d80`](https://git.kernel.org/torvalds/c/724e4fcc8d80) | [kernel] | audit: log on errors from filter user rules |  | CONFIG_AUDIT=y in A37 | 3.10.0-73 |
| CANDIDATE | 3.14 | [`ad2ac2632786`](https://git.kernel.org/torvalds/c/ad2ac2632786) | [kernel] | audit: log task info on feature change |  | CONFIG_AUDIT=y in A37 | 3.10.0-75 |
| CANDIDATE | 3.14 | [`34eab0a7cd45`](https://git.kernel.org/torvalds/c/34eab0a7cd45) | [kernel] | audit: prevent an older auditd shutdown from orphaning a newer auditd startup |  | CONFIG_AUDIT=y in A37 | 3.10.0-372 |
| CANDIDATE | 3.14 | [`2f2ad1013322`](https://git.kernel.org/torvalds/c/2f2ad1013322) | [kernel] | audit: restore order of tty and ses fields in log output |  | CONFIG_AUDIT=y in A37 | 3.10.0-8 |
| CANDIDATE | 3.14 | [`ca24a23ebca1`](https://git.kernel.org/torvalds/c/ca24a23ebca1) | [kernel] | audit: Simplify and correct audit_log_capset |  | CONFIG_AUDIT=y in A37 | 3.10.0-573 |
| CANDIDATE | 3.14 | [`70249a9cfdb4`](https://git.kernel.org/torvalds/c/70249a9cfdb4) | [kernel] | audit: use define's for audit version |  | CONFIG_AUDIT=y in A37 | 3.10.0-246 |
| CANDIDATE | 3.14 | [`532de3fc72ad`](https://git.kernel.org/torvalds/c/532de3fc72ad) | [kernel] | cgroup: update cgroup_enable_task_cg_lists() to grab siglock |  | CONFIG_CGROUPS=y in A37 | 3.10.0-102 |
| CANDIDATE | 3.14 | [`d0df09ebfc12`](https://git.kernel.org/torvalds/c/d0df09ebfc12) | [kernel] | context_tracking: Rename context_tracking_active() to context_tracking_cpu_is_enabled() |  | generic code, tag [kernel] | 3.10.0-239 |
| CANDIDATE | 3.14 | [`58135f574f1b`](https://git.kernel.org/torvalds/c/58135f574f1b) | [kernel] | context_tracking: Wrap static key check into more intuitive function name |  | generic code, tag [kernel] | 3.10.0-239 |
| CANDIDATE | 3.14 | [`472958300677`](https://git.kernel.org/torvalds/c/472958300677) | [kernel] | cpuset: fix a locking issue in cpuset_migrate_mm() |  | CONFIG_CGROUPS=y in A37 | 3.10.0-436 |
| CANDIDATE | 3.14 | [`11d4616bd07f`](https://git.kernel.org/torvalds/c/11d4616bd07f) | [kernel] | futex: revert back to the explicit waiter counting code |  | generic code, tag [kernel] | 3.10.0-119 |
| CANDIDATE | 3.14 | [`b0c29f79ecea`](https://git.kernel.org/torvalds/c/b0c29f79ecea) | [kernel] | futexes: Avoid taking the hb->lock if there's nothing to wake up |  | generic code, tag [kernel] | 3.10.0-103 |
| CANDIDATE | 3.14 | [`0d00c7b20c77`](https://git.kernel.org/torvalds/c/0d00c7b20c77) | [kernel] | futexes: Clean up various details |  | generic code, tag [kernel] | 3.10.0-103 |
| CANDIDATE | 3.14 | [`99b60ce69734`](https://git.kernel.org/torvalds/c/99b60ce69734) | [kernel] | futexes: Document multiprocessor ordering guarantees |  | generic code, tag [kernel] | 3.10.0-103 |
| CANDIDATE | 3.14 | [`63b1a81699c2`](https://git.kernel.org/torvalds/c/63b1a81699c2) | [kernel] | futexes: Fix futex_hashsize initialization |  | generic code, tag [kernel] | 3.10.0-103 |
| CANDIDATE | 3.14 | [`a52b89ebb6d4`](https://git.kernel.org/torvalds/c/a52b89ebb6d4) | [kernel] | futexes: Increase hash table size for better performance |  | generic code, tag [kernel] | 3.10.0-103 |
| CANDIDATE | 3.14 | [`270750dbc18a`](https://git.kernel.org/torvalds/c/270750dbc18a) | [kernel] | hung_task: Display every hung task warning |  | generic code, tag [kernel] | 3.10.0-548 |
| CANDIDATE | 3.14 | [`5f30fc94ca98`](https://git.kernel.org/torvalds/c/5f30fc94ca98) | [kernel] | lib/radix-tree.c: swapoff tmpfs radix_tree: remember to rcu_read_unlock |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 3.14 | [`9ea4c380066f`](https://git.kernel.org/torvalds/c/9ea4c380066f) | [kernel] | locking: Optimize lock_bh functions |  | generic code, tag [kernel] | 3.10.0-549 |
| CANDIDATE | 3.14 | [`91f30a17024f`](https://git.kernel.org/torvalds/c/91f30a17024f) | [kernel] | mutexes: Give more informative mutex warning in the !lock->owner case |  | generic code, tag [kernel] | 3.10.0-126 |
| CANDIDATE | 3.14 | [`855a0fc30b70`](https://git.kernel.org/torvalds/c/855a0fc30b70) | [kernel] | nohz: Get timekeeping max deferment outside jiffies_lock |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.14 | [`e9a2eb403bd9`](https://git.kernel.org/torvalds/c/e9a2eb403bd9) | [kernel] | nohz_full: fix code style issue of tick_nohz_full_stop_tick |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.14 | [`5800dc3cff87`](https://git.kernel.org/torvalds/c/5800dc3cff87) | [kernel] | panic: Make panic_timeout configurable |  | generic code, tag [kernel] | 3.10.0-162 |
| CANDIDATE | 3.14 | [`88a88b320a90`](https://git.kernel.org/torvalds/c/88a88b320a90) | [kernel] | params: improve standard definitions |  | generic code, tag [kernel] | 3.10.0-745 |
| CANDIDATE | 3.14 | [`71ad88efebbc`](https://git.kernel.org/torvalds/c/71ad88efebbc) | [kernel] | perf: Add active_entry list head to struct perf_event |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-155 |
| CANDIDATE | 3.14 | [`bad7192b842c`](https://git.kernel.org/torvalds/c/bad7192b842c) | [kernel] | perf: Fix PERF_EVENT_IOC_PERIOD to force-reset the period |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-155 |
| CANDIDATE | 3.14 | [`a21b0b354d4a`](https://git.kernel.org/torvalds/c/a21b0b354d4a) | [kernel] | perf: Introduce a flag to enable close-on-exec in perf_event_open() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-155 |
| CANDIDATE | 3.14 | [`c7f2e3cd6c1f`](https://git.kernel.org/torvalds/c/c7f2e3cd6c1f) | [kernel] | perf: Optimize ring-buffer write by depending on control dependencies |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-155 |
| CANDIDATE | 3.14 | [`e9fbdf176d2a`](https://git.kernel.org/torvalds/c/e9fbdf176d2a) (loose) | [kernel] | phy: breakdown PHY_*_FEATURES defines |  | generic code, tag [kernel] | 3.10.0-976 |
| CANDIDATE | 3.14 | [`f78c4cffb86a`](https://git.kernel.org/torvalds/c/f78c4cffb86a) | [kernel] | pm / sleep: Add macro to define common late/early system PM callbacks |  | generic code, tag [kernel] | 3.10.0-538 |
| CANDIDATE | 3.14 | [`d4283c654130`](https://git.kernel.org/torvalds/c/d4283c654130) | [kernel] | posix-timers: Spare workqueue if there is no full dynticks CPU to kick |  | generic code, tag [kernel] | 3.10.0-113 |
| CANDIDATE | 3.14 | [`c28aa1f0a847`](https://git.kernel.org/torvalds/c/c28aa1f0a847) | [kernel] | printk/cache: mark printk_once test variable __read_mostly |  | generic code, tag [kernel] | 3.10.0-987 |
| CANDIDATE | 3.14 | [`6193c76aba8e`](https://git.kernel.org/torvalds/c/6193c76aba8e) | [kernel] | rcu: Kick CPU halfway to RCU CPU stall warning |  | generic code, tag [kernel] | 3.10.0-423 |
| CANDIDATE | 3.14 | [`fb00aca47440`](https://git.kernel.org/torvalds/c/fb00aca47440) | [kernel] | rtmutex: Turn the plist into an rb-tree |  | generic code, tag [kernel] | 3.10.0-443 |
| CANDIDATE | 3.14 | [`10b033d434c2`](https://git.kernel.org/torvalds/c/10b033d434c2) | [kernel] | sched/clock, x86: Avoid a runtime condition in native_sched_clock() |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.14 | [`35af99e646c7`](https://git.kernel.org/torvalds/c/35af99e646c7) | [kernel] | sched/clock, x86: Use a static_key for sched_clock_stable |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.14 | [`6577e42a3e16`](https://git.kernel.org/torvalds/c/6577e42a3e16) | [kernel] | sched/clock: Fix up clear_sched_clock_stable() |  | generic code, tag [kernel] | 3.10.0-285 |
| CANDIDATE | 3.14 | [`d375b4e0fa37`](https://git.kernel.org/torvalds/c/d375b4e0fa37) | [kernel] | sched/clock: Fixup early initialization |  | generic code, tag [kernel] | 3.10.0-285 |
| CANDIDATE | 3.14 | [`ef08f0fff876`](https://git.kernel.org/torvalds/c/ef08f0fff876) | [kernel] | sched/clock: Remove local_irq_disable() from the clocks |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.14 | [`5778fccf361c`](https://git.kernel.org/torvalds/c/5778fccf361c) | [kernel] | sched/core: Fix htmldocs warnings |  | generic code, tag [kernel] | 3.10.0-474 |
| CANDIDATE | 3.14 | [`e9e7cb38c21c`](https://git.kernel.org/torvalds/c/e9e7cb38c21c) | [kernel] | sched/core: Fix sched_rt_global_validate |  | generic code, tag [kernel] | 3.10.0-482 |
| CANDIDATE | 3.14 | [`495163420ab5`](https://git.kernel.org/torvalds/c/495163420ab5) | [kernel] | sched/core: Make dl_b->lock IRQ safe |  | generic code, tag [kernel] | 3.10.0-443 |
| CANDIDATE | 3.14 | [`e6c390f2dfd0`](https://git.kernel.org/torvalds/c/e6c390f2dfd0) | [kernel] | sched: Add sched_class->task_dead() method |  | generic code, tag [kernel] | 3.10.0-443 |
| CANDIDATE | 3.14 | [`c726099ec224`](https://git.kernel.org/torvalds/c/c726099ec224) | [kernel] | sched: Factor out the on_null_domain() checks in trigger_load_balance() |  | generic code, tag [kernel] | 3.10.0-981 |
| CANDIDATE | 3.14 | [`eaad45132c56`](https://git.kernel.org/torvalds/c/eaad45132c56) | [kernel] | sched: Fix __sched_setscheduler() nice test |  | generic code, tag [kernel] | 3.10.0-474 |
| CANDIDATE | 3.14 | [`39e24d8ffbb6`](https://git.kernel.org/torvalds/c/39e24d8ffbb6) | [kernel] | sched: Fix a trivial syntax misuse |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | 3.14 | [`0bb040a44381`](https://git.kernel.org/torvalds/c/0bb040a44381) | [kernel] | sched: Fix up attr::sched_priority warning |  | generic code, tag [kernel] | 3.10.0-443 |
| CANDIDATE | 3.14 | [`7479f3c9cf67`](https://git.kernel.org/torvalds/c/7479f3c9cf67) | [kernel] | sched: Move SCHED_RESET_ON_FORK into attr::sched_flags |  | generic code, tag [kernel] | 3.10.0-443 |
| CANDIDATE | 3.14 | [`208cb16ba325`](https://git.kernel.org/torvalds/c/208cb16ba325) | [kernel] | sched: Pass 'struct rq' to nohz_idle_balance() |  | generic code, tag [kernel] | 3.10.0-585 |
| CANDIDATE | 3.14 | [`63f609b16015`](https://git.kernel.org/torvalds/c/63f609b16015) | [kernel] | sched: Pass 'struct rq' to on_null_domain() |  | generic code, tag [kernel] | 3.10.0-981 |
| CANDIDATE | 3.14 | [`f7ed0a895ead`](https://git.kernel.org/torvalds/c/f7ed0a895ead) | [kernel] | sched: Pass 'struct rq' to rebalance_domains() |  | generic code, tag [kernel] | 3.10.0-585 |
| CANDIDATE | 3.14 | [`e3de300d1212`](https://git.kernel.org/torvalds/c/e3de300d1212) | [kernel] | sched: Preserve the nice level over sched_setscheduler() and sched_setparam() calls |  | generic code, tag [kernel] | 3.10.0-443 |
| CANDIDATE | 3.14 | [`177c53d94336`](https://git.kernel.org/torvalds/c/177c53d94336) | [kernel] | stop_machine: Fix^2 race between stop_two_cpus() and stop_cpus() |  | generic code, tag [kernel] | 3.10.0-106 |
| CANDIDATE | 3.14 | [`cab5e127eef0`](https://git.kernel.org/torvalds/c/cab5e127eef0) | [kernel] | time: Revert to calling clock_was_set_delayed() while in irq context |  | generic code, tag [kernel] | 3.10.0-255 |
| CANDIDATE | 3.14 | [`5258d3f25c76`](https://git.kernel.org/torvalds/c/5258d3f25c76) | [kernel] | timekeeping: Fix potential lost pv notification of time change |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.14 | [`c31ffb3ff633`](https://git.kernel.org/torvalds/c/c31ffb3ff633) | [kernel] | tracing/kprobes: Factor out struct trace_probe |  | CONFIG_FTRACE=y in A37 | 3.10.0-917 |
| CANDIDATE | 3.14 | [`2dc1018372c3`](https://git.kernel.org/torvalds/c/2dc1018372c3) | [kernel] | tracing/kprobes: Move common functions to trace_probe.h |  | CONFIG_FTRACE=y in A37 | 3.10.0-917 |
| CANDIDATE | 3.14 | [`50eb2672ce13`](https://git.kernel.org/torvalds/c/50eb2672ce13) | [kernel] | tracing/probes: Fix basic print type functions |  | CONFIG_FTRACE=y in A37 | 3.10.0-540 |
| CANDIDATE | 3.14 | [`5baaa59ef09e`](https://git.kernel.org/torvalds/c/5baaa59ef09e) | [kernel] | tracing/probes: Implement 'memory' fetch method for uprobes |  | CONFIG_FTRACE=y in A37 | 3.10.0-540 |
| CANDIDATE | 3.14 | [`3fd996a29515`](https://git.kernel.org/torvalds/c/3fd996a29515) | [kernel] | tracing/probes: Implement 'stack' fetch method for uprobes |  | CONFIG_FTRACE=y in A37 | 3.10.0-540 |
| CANDIDATE | 3.14 | [`5bf652aaf46c`](https://git.kernel.org/torvalds/c/5bf652aaf46c) | [kernel] | tracing/probes: Integrate duplicate set_print_fmt() |  | CONFIG_FTRACE=y in A37 | 3.10.0-917 |
| CANDIDATE | 3.14 | [`1301a44e7755`](https://git.kernel.org/torvalds/c/1301a44e7755) | [kernel] | tracing/probes: Move 'symbol' fetch method to kprobes |  | CONFIG_FTRACE=y in A37 | 3.10.0-540 |
| CANDIDATE | 3.14 | [`b26c74e116ad`](https://git.kernel.org/torvalds/c/b26c74e116ad) | [kernel] | tracing/probes: Move fetch function helpers to trace_probe.h |  | CONFIG_FTRACE=y in A37 | 3.10.0-540 |
| CANDIDATE | 3.14 | [`34fee3a104ce`](https://git.kernel.org/torvalds/c/34fee3a104ce) | [kernel] | tracing/probes: Split [ku]probes_fetch_type_table |  | CONFIG_FTRACE=y in A37 | 3.10.0-540 |
| CANDIDATE | 3.14 | [`b7e0bf341f6c`](https://git.kernel.org/torvalds/c/b7e0bf341f6c) | [kernel] | tracing/uprobes: Add @+file_offset fetch method |  | CONFIG_FTRACE=y in A37 | 3.10.0-540 |
| CANDIDATE | 3.14 | [`b079d374fd84`](https://git.kernel.org/torvalds/c/b079d374fd84) | [kernel] | tracing/uprobes: Add support for full argument access methods |  | CONFIG_FTRACE=y in A37 | 3.10.0-540 |
| CANDIDATE | 3.14 | [`14577c39927f`](https://git.kernel.org/torvalds/c/14577c39927f) | [kernel] | tracing/uprobes: Convert to struct trace_probe |  | CONFIG_FTRACE=y in A37 | 3.10.0-917 |
| CANDIDATE | 3.14 | [`dcad1a204f72`](https://git.kernel.org/torvalds/c/dcad1a204f72) | [kernel] | tracing/uprobes: Fetch args before reserving a ring buffer |  | CONFIG_FTRACE=y in A37 | 3.10.0-917 |
| CANDIDATE | 3.14 | [`a4734145a477`](https://git.kernel.org/torvalds/c/a4734145a477) | [kernel] | tracing/uprobes: Pass 'is_return' to traceprobe_parse_probe_arg() |  | CONFIG_FTRACE=y in A37 | 3.10.0-540 |
| CANDIDATE | 3.14 | [`e58b57a354ca`](https://git.kernel.org/torvalds/c/e58b57a354ca) | [kernel] | tty: Add C_CMSPAR(tty) |  | CONFIG_TTY=y in A37 | 3.10.0-174 |
| CANDIDATE | 3.14 | [`0d9dfc23f4d8`](https://git.kernel.org/torvalds/c/0d9dfc23f4d8) | [kernel] | uapi: convert u64 to __u64 in exported headers |  | generic code, tag [kernel] | 3.10.0-155 |
| CANDIDATE | 3.15 | [`5a3cb3b6c3a0`](https://git.kernel.org/torvalds/c/5a3cb3b6c3a0) | [kernel] | audit: allow user processes to log from another PID namespace |  | CONFIG_AUDIT=y in A37 | 3.10.0-182 |
| CANDIDATE | 3.15 | [`f1dc4867ff41`](https://git.kernel.org/torvalds/c/f1dc4867ff41) | [kernel] | audit: anchor all pid references in the initial pid namespace |  | CONFIG_AUDIT=y in A37 | 3.10.0-182 |
| CANDIDATE | 3.15 | [`3f1c82502c29`](https://git.kernel.org/torvalds/c/3f1c82502c29) | [kernel] | audit: Audit proc/<pid>/cmdline aka proctitle |  | CONFIG_AUDIT=y in A37 | 3.10.0-641 |
| CANDIDATE | 3.15 | [`c92cdeb45eea`](https://git.kernel.org/torvalds/c/c92cdeb45eea) | [kernel] | audit: convert PPIDs to the inital PID namespace |  | CONFIG_AUDIT=y in A37 | 3.10.0-182 |
| CANDIDATE | 3.15 | [`ddfad8affdb7`](https://git.kernel.org/torvalds/c/ddfad8affdb7) | [kernel] | audit: include subject in login records |  | CONFIG_AUDIT=y in A37 | 3.10.0-111 |
| CANDIDATE | 3.15 | [`f12835276c31`](https://git.kernel.org/torvalds/c/f12835276c31) | [kernel] | audit: remove stray newlines from audit_log_lost messages |  | CONFIG_AUDIT=y in A37 | 3.10.0-372 |
| CANDIDATE | 3.15 | [`aa589a13b5d0`](https://git.kernel.org/torvalds/c/aa589a13b5d0) | [kernel] | audit: remove superfluous new- prefix in AUDIT_LOGIN messages |  | CONFIG_AUDIT=y in A37 | 3.10.0-111 |
| CANDIDATE | 3.15 | [`579ec9e1ab0b`](https://git.kernel.org/torvalds/c/579ec9e1ab0b) | [kernel] | audit: use uapi/linux/audit.h for AUDIT_ARCH declarations |  | CONFIG_AUDIT=y in A37 | 3.10.0-185 |
| CANDIDATE | 3.15 | [`c32fa99f0b42`](https://git.kernel.org/torvalds/c/c32fa99f0b42) | [perf] | bitops: Fix signedness of compile-time hweight implementations |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | 3.15 | [`d8a9ce3f8ad2`](https://git.kernel.org/torvalds/c/d8a9ce3f8ad2) | [kernel] | cputime: Bring cputime -> nsecs conversion |  | generic code, tag [kernel] | 3.10.0-124 |
| CANDIDATE | 3.15 | [`bfc3f0281e08`](https://git.kernel.org/torvalds/c/bfc3f0281e08) | [kernel] | cputime: Default implementation of nsecs -> cputime conversion |  | generic code, tag [kernel] | 3.10.0-124 |
| CANDIDATE | 3.15 | [`dee08a72deef`](https://git.kernel.org/torvalds/c/dee08a72deef) | [kernel] | cputime: Fix jiffies based cputime assumption on steal accounting |  | generic code, tag [kernel] | 3.10.0-124 |
| CANDIDATE | 3.15 | [`1dc43cf0be9a`](https://git.kernel.org/torvalds/c/1dc43cf0be9a) | [kernel] | ftrace: Cleanup of global variables ftrace_new_pgs and ftrace_update_cnt |  | CONFIG_FTRACE=y in A37 | 3.10.0-778 |
| CANDIDATE | 3.15 | [`db0fbadcbd0c`](https://git.kernel.org/torvalds/c/db0fbadcbd0c) | [kernel] | ftrace: Fix compilation warning about control_ops_free |  | CONFIG_FTRACE=y in A37 | 3.10.0-921 |
| CANDIDATE | 3.15 | [`c1bacbae8192`](https://git.kernel.org/torvalds/c/c1bacbae8192) | [kernel] | genirq: Provide irq_request/release_resources chip callbacks |  | generic code, tag [kernel] | 3.10.0-538 |
| CANDIDATE | 3.15 | [`18258f7239a6`](https://git.kernel.org/torvalds/c/18258f7239a6) | [kernel] | genirq: Provide synchronize_hardirq() |  | generic code, tag [kernel] | 3.10.0-411 |
| CANDIDATE | 3.15 | [`1425052097b5`](https://git.kernel.org/torvalds/c/1425052097b5) | [kernel] | gpio: add IRQ chip helpers in gpiolib |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-538 |
| CANDIDATE | 3.15 | [`c3626fdea044`](https://git.kernel.org/torvalds/c/c3626fdea044) | [kernel] | gpio: unmap gpio irqs properly |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-697 |
| CANDIDATE | 3.15 | [`05f7a7d6a7d2`](https://git.kernel.org/torvalds/c/05f7a7d6a7d2) | [kernel] | idr: Add new function idr_is_empty() |  | generic code, tag [kernel] | 3.10.0-287 |
| CANDIDATE | 3.15 | [`8cc7212a0361`](https://git.kernel.org/torvalds/c/8cc7212a0361) | [kernel] | idr: remove unused prototype of idr_free() |  | generic code, tag [kernel] | 3.10.0-287 |
| CANDIDATE | 3.15 | [`c6bda7c988a5`](https://git.kernel.org/torvalds/c/c6bda7c988a5) | [kernel] | kallsyms: fix percpu vars on x86-64 with relocation |  | generic code, tag [kernel] | 3.10.0-664 |
| CANDIDATE | 3.15 | [`78eb71594b32`](https://git.kernel.org/torvalds/c/78eb71594b32) | [kernel] | kallsyms: generalize address range checking |  | generic code, tag [kernel] | 3.10.0-664 |
| CANDIDATE | 3.15 | [`81c98869faa5`](https://git.kernel.org/torvalds/c/81c98869faa5) | [kernel] | kthread: ensure locality of task_struct allocations |  | generic code, tag [kernel] | 3.10.0-218 |
| CANDIDATE | 3.15 | [`6f008e72cd11`](https://git.kernel.org/torvalds/c/6f008e72cd11) | [kernel] | locking/mutex: Fix debug checks |  | generic code, tag [kernel] | 3.10.0-126 |
| CANDIDATE | 3.15 | [`a227960fe0ca`](https://git.kernel.org/torvalds/c/a227960fe0ca) | [kernel] | locking/mutex: Fix debug_mutexes |  | generic code, tag [kernel] | 3.10.0-126 |
| CANDIDATE | 3.15 | [`fb0527bd5ea9`](https://git.kernel.org/torvalds/c/fb0527bd5ea9) | [kernel] | locking/mutexes: Introduce cancelable MCS lock for adaptive spinning |  | generic code, tag [kernel] | 3.10.0-126 |
| CANDIDATE | 3.15 | [`47667fa1502e`](https://git.kernel.org/torvalds/c/47667fa1502e) | [kernel] | locking/mutexes: Modify the way optimistic spinners are queued |  | generic code, tag [kernel] | 3.10.0-126 |
| CANDIDATE | 3.15 | [`46af29e479cc`](https://git.kernel.org/torvalds/c/46af29e479cc) | [kernel] | locking/mutexes: Return false if task need_resched() in mutex_can_spin_on_owner() |  | generic code, tag [kernel] | 3.10.0-126 |
| CANDIDATE | 3.15 | [`1d8fe7dc8078`](https://git.kernel.org/torvalds/c/1d8fe7dc8078) | [kernel] | locking/mutexes: Unlock the mutex without the wait_lock |  | generic code, tag [kernel] | 3.10.0-126 |
| CANDIDATE | 3.15 | [`a90902531a06`](https://git.kernel.org/torvalds/c/a90902531a06) | [kernel] | mm: Create utility function for accessing a tasks commandline value |  | generic code, tag [kernel] | 3.10.0-641 |
| CANDIDATE | 3.15 | [`ffb4ef21ac43`](https://git.kernel.org/torvalds/c/ffb4ef21ac43) | [kernel] | perf: Fix perf_event_init_context() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.15 | [`9e3170411ed1`](https://git.kernel.org/torvalds/c/9e3170411ed1) | [kernel] | perf: Fix prototype of find_pmu_context() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.15 | [`4a2345937c17`](https://git.kernel.org/torvalds/c/4a2345937c17) | [kernel] | perf: Optimize group_sched_in() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.15 | [`fdded676c3ef`](https://git.kernel.org/torvalds/c/fdded676c3ef) | [kernel] | perf: Remove redundant PMU assignment |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.15 | [`fd70f72c66ee`](https://git.kernel.org/torvalds/c/fd70f72c66ee) (loose) | [kernel] | phy: add MoCA PHY type |  | generic code, tag [kernel] | 3.10.0-976 |
| CANDIDATE | 3.15 | [`ad36d2829393`](https://git.kernel.org/torvalds/c/ad36d2829393) | [kernel] | pid: get pid_t ppid of task in init_pid_ns |  | generic code, tag [kernel] | 3.10.0-182 |
| CANDIDATE | 3.15 | [`7b878d4b48c4`](https://git.kernel.org/torvalds/c/7b878d4b48c4) | [kernel] | random: Add arch_has_random[_seed]() |  | generic code, tag [kernel] | 3.10.0-682 |
| CANDIDATE | 3.15 | [`765a3f4fed70`](https://git.kernel.org/torvalds/c/765a3f4fed70) | [kernel] | rcu: Provide grace-period piggybacking API |  | generic code, tag [kernel] | 3.10.0-1020 |
| CANDIDATE | 3.15 | [`5edb93b89f6c`](https://git.kernel.org/torvalds/c/5edb93b89f6c) | [kernel] | resource: Add resource_contains() |  | generic code, tag [kernel] | 3.10.0-146 |
| CANDIDATE | 3.15 | [`6404e88e8385`](https://git.kernel.org/torvalds/c/6404e88e8385) | [kernel] | resources: Set type in __request_region() |  | generic code, tag [kernel] | 3.10.0-146 |
| CANDIDATE | 3.15 | [`d987fc7f3228`](https://git.kernel.org/torvalds/c/d987fc7f3228) | [kernel] | sched, nohz: Exclude isolated cores from load balancing |  | generic code, tag [kernel] | 3.10.0-981 |
| CANDIDATE | 3.15 | [`4c6c4e38c4e9`](https://git.kernel.org/torvalds/c/4c6c4e38c4e9) | [kernel] | sched/core: Fix endless loop in pick_next_task() |  | generic code, tag [kernel] | 3.10.0-1079 |
| CANDIDATE | 3.15 | [`db66d756c74a`](https://git.kernel.org/torvalds/c/db66d756c74a) | [kernel] | sched/docbook: Fix 'make htmldocs' warnings caused by missing description |  | generic code, tag [kernel] | 3.10.0-474 |
| CANDIDATE | 3.15 | [`f10447998a59`](https://git.kernel.org/torvalds/c/f10447998a59) | [kernel] | sched/fair: Clean up the __clear_buddies_*() functions |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 3.15 | [`35805ff8f4fc`](https://git.kernel.org/torvalds/c/35805ff8f4fc) | [kernel] | sched/fair: Fix endless loop in idle_balance() |  | generic code, tag [kernel] | 3.10.0-1079 |
| CANDIDATE | 3.15 | [`09dc4ab03936`](https://git.kernel.org/torvalds/c/09dc4ab03936) | [kernel] | sched/fair: Fix tg_set_cfs_bandwidth() deadlock on rq->lock |  | generic code, tag [kernel] | 3.10.0-423 |
| CANDIDATE | 3.15 | [`678d5718d8d0`](https://git.kernel.org/torvalds/c/678d5718d8d0) | [kernel] | sched/fair: Optimize cgroup pick_next_task_fair() |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 3.15 | [`e4aa358b6c23`](https://git.kernel.org/torvalds/c/e4aa358b6c23) | [kernel] | sched/fair: Push down check for high priority class task into idle_balance() |  | generic code, tag [kernel] | 3.10.0-1079 |
| CANDIDATE | 3.15 | [`6e83125c6b15`](https://git.kernel.org/torvalds/c/6e83125c6b15) | [kernel] | sched/fair: Remove idle_balance() declaration in sched.h |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 3.15 | [`eb7a59b2c888`](https://git.kernel.org/torvalds/c/eb7a59b2c888) | [kernel] | sched/fair: Reset se-depth when task switched to FAIR |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 3.15 | [`fed14d45f945`](https://git.kernel.org/torvalds/c/fed14d45f945) | [kernel] | sched/fair: Track cgroup depth |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 3.15 | [`734ff2a71f9e`](https://git.kernel.org/torvalds/c/734ff2a71f9e) | [kernel] | sched/rt: Fix picking RT and DL tasks from empty queue |  | generic code, tag [kernel] | 3.10.0-1079 |
| CANDIDATE | 3.15 | [`37e6bae8395a`](https://git.kernel.org/torvalds/c/37e6bae8395a) | [kernel] | sched: Add statistic for newidle load balance cost |  | generic code, tag [kernel] | 3.10.0-456 |
| CANDIDATE | 3.15 | [`a1d9a3231eac`](https://git.kernel.org/torvalds/c/a1d9a3231eac) | [kernel] | sched: Check for stop task appearance when balancing happens |  | generic code, tag [kernel] | 3.10.0-1079 |
| CANDIDATE | 3.15 | [`6c3b4d44ba28`](https://git.kernel.org/torvalds/c/6c3b4d44ba28) | [kernel] | sched: Clean up idle task SMP logic |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 3.15 | [`6037dd1a49f9`](https://git.kernel.org/torvalds/c/6037dd1a49f9) | [kernel] | sched: Clean up the task_hot() function |  | generic code, tag [kernel] | 3.10.0-1092 |
| CANDIDATE | 3.15 | [`c365c292d059`](https://git.kernel.org/torvalds/c/c365c292d059) | [kernel] | sched: Consider pi boosting in setscheduler() |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 3.15 | [`80e0b6e8a001`](https://git.kernel.org/torvalds/c/80e0b6e8a001) | [kernel] | sched: declare pid_alive as inline |  | generic code, tag [kernel] | 3.10.0-182 |
| CANDIDATE | 3.15 | [`dbdb22754fde`](https://git.kernel.org/torvalds/c/dbdb22754fde) | [kernel] | sched: Disallow sched_attr::sched_policy < 0 |  | generic code, tag [kernel] | 3.10.0-474 |
| CANDIDATE | 3.15 | [`383afd097153`](https://git.kernel.org/torvalds/c/383afd097153) | [kernel] | sched: Fix broken setscheduler() |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 3.15 | [`3f1d2a318171`](https://git.kernel.org/torvalds/c/3f1d2a318171) | [kernel] | sched: Fix hotplug task migration |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 3.15 | [`e5fc66119ec9`](https://git.kernel.org/torvalds/c/e5fc66119ec9) | [kernel] | sched: Fix race in idle_balance() |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 3.15 | [`b14ed2c273f8`](https://git.kernel.org/torvalds/c/b14ed2c273f8) | [kernel] | sched: Fix sched_policy < 0 comparison |  | generic code, tag [kernel] | 3.10.0-474 |
| CANDIDATE | 3.15 | [`37e117c07b89`](https://git.kernel.org/torvalds/c/37e117c07b89) | [kernel] | sched: Guarantee task priority in pick_next_task() |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 3.15 | [`143cf23df25b`](https://git.kernel.org/torvalds/c/143cf23df25b) | [kernel] | sched: Make sched_setattr() correctly return -EFBIG |  | generic code, tag [kernel] | 3.10.0-474 |
| CANDIDATE | 3.15 | [`3c4017c13f91`](https://git.kernel.org/torvalds/c/3c4017c13f91) | [kernel] | sched: Move rq->idle_stamp up to the core |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 3.15 | [`38033c37faab`](https://git.kernel.org/torvalds/c/38033c37faab) | [kernel] | sched: Push down pre_schedule() and idle_balance() |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 3.15 | [`606dba2e2894`](https://git.kernel.org/torvalds/c/606dba2e2894) | [kernel] | sched: Push put_prev_task() into pick_next_task() |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 3.15 | [`b4f2ab43615e`](https://git.kernel.org/torvalds/c/b4f2ab43615e) | [kernel] | sched: Remove 'cpu' parameter from idle_balance() |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 3.15 | [`dc87734106bb`](https://git.kernel.org/torvalds/c/dc87734106bb) | [kernel] | sched: Remove some #ifdeffery |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 3.15 | [`6ccdc84b81a0`](https://git.kernel.org/torvalds/c/6ccdc84b81a0) | [kernel] | sched: Skip double execution of pick_next_task_fair() |  | generic code, tag [kernel] | 3.10.0-1099 |
| CANDIDATE | 3.15 | [`6ccdc84b81a0`](https://git.kernel.org/torvalds/c/6ccdc84b81a0) | [kernel] | sched: Skip double execution of pick_next_task_fair() |  | generic code, tag [kernel] | 3.10.0-186 |
| CANDIDATE | 3.15 | [`8b28499a71d3`](https://git.kernel.org/torvalds/c/8b28499a71d3) | [kernel] | smp: Consolidate the various smp_call_function_single() declensions |  | generic code, tag [kernel] | 3.10.0-136 |
| CANDIDATE | 3.15 | [`5fd77595ec62`](https://git.kernel.org/torvalds/c/5fd77595ec62) | [kernel] | smp: Iterate functions through llist_for_each_entry_safe() |  | generic code, tag [kernel] | 3.10.0-136 |
| CANDIDATE | 3.15 | [`d7877c03f1b6`](https://git.kernel.org/torvalds/c/d7877c03f1b6) | [kernel] | smp: Move __smp_call_function_single() below its safe version |  | generic code, tag [kernel] | 3.10.0-136 |
| CANDIDATE | 3.15 | [`fce8ad1568c5`](https://git.kernel.org/torvalds/c/fce8ad1568c5) | [kernel] | smp: Remove wait argument from __smp_call_function_single() |  | generic code, tag [kernel] | 3.10.0-136 |
| CANDIDATE | 3.15 | [`c46fff2a3b29`](https://git.kernel.org/torvalds/c/c46fff2a3b29) | [kernel] | smp: Rename __smp_call_function_single() to smp_call_function_single_async() |  | generic code, tag [kernel] | 3.10.0-136 |
| CANDIDATE | 3.15 | [`08eed44c7249`](https://git.kernel.org/torvalds/c/08eed44c7249) | [kernel] | smp: Teach __smp_call_function_single() to check for offline cpus |  | generic code, tag [kernel] | 3.10.0-136 |
| CANDIDATE | 3.15 | [`521c42990e9d`](https://git.kernel.org/torvalds/c/521c42990e9d) | [kernel] | tick-common: Fix wrong check in tick_check_replacement() |  | generic code, tag [kernel] | 3.10.0-355 |
| CANDIDATE | 3.15 | [`27630532ef5e`](https://git.kernel.org/torvalds/c/27630532ef5e) | [kernel] | tick-sched: Check tick_nohz_enabled in tick_nohz_switch_to_nohz() |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.15 | [`03e6bdc5c4d0`](https://git.kernel.org/torvalds/c/03e6bdc5c4d0) | [kernel] | tick-sched: Don't call update_wall_time() when delta is lesser than tick_period |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.15 | [`849401b66d30`](https://git.kernel.org/torvalds/c/849401b66d30) | [kernel] | tick: Fixup more fallout from hrtimer broadcast mode |  | generic code, tag [kernel] | 3.10.0-233 |
| CANDIDATE | 3.15 | [`f1689bb7abec`](https://git.kernel.org/torvalds/c/f1689bb7abec) | [kernel] | time: Fixup fallout from recent clockevent/tick changes |  | generic code, tag [kernel] | 3.10.0-233 |
| CANDIDATE | 3.15 | [`6201b4d61fbf`](https://git.kernel.org/torvalds/c/6201b4d61fbf) | [kernel] | timer: Remove code redundancy while calling get_nohz_timer_target() |  | generic code, tag [kernel] | 3.10.0-896 |
| CANDIDATE | 3.15 | [`8ba14654282e`](https://git.kernel.org/torvalds/c/8ba14654282e) | [kernel] | timer: Spare IPI when deferrable timer is queued on idle remote targets |  | generic code, tag [kernel] | 3.10.0-896 |
| CANDIDATE | 3.15 | [`c41eba7de133`](https://git.kernel.org/torvalds/c/c41eba7de133) | [kernel] | timer: Use variable head instead of &work_list in __run_timers() |  | generic code, tag [kernel] | 3.10.0-896 |
| CANDIDATE | 3.15 | [`aea369b959be`](https://git.kernel.org/torvalds/c/aea369b959be) | [kernel] | timers: Make internal_add_timer() update ->next_timer if ->active_timers == 0 |  | generic code, tag [kernel] | 3.10.0-896 |
| CANDIDATE | 3.15 | [`d550e81dc0dd`](https://git.kernel.org/torvalds/c/d550e81dc0dd) | [kernel] | timers: Reduce __run_timers() latency for empty list |  | generic code, tag [kernel] | 3.10.0-244 |
| CANDIDATE | 3.15 | [`18d8cb64c9c0`](https://git.kernel.org/torvalds/c/18d8cb64c9c0) | [kernel] | timers: Reduce future __run_timers() latency for first add to empty list |  | generic code, tag [kernel] | 3.10.0-244 |
| CANDIDATE | 3.15 | [`fff421580f51`](https://git.kernel.org/torvalds/c/fff421580f51) | [kernel] | timers: Track total number of timers in list |  | generic code, tag [kernel] | 3.10.0-244 |
| CANDIDATE | 3.15 | [`de7b2973903c`](https://git.kernel.org/torvalds/c/de7b2973903c) | [trace] | tracepoint: Use struct pointer instead of name hash for reg/unreg tracepoints |  | CONFIG_FTRACE=y in A37 | 3.10.0-913 |
| CANDIDATE | 3.15 | [`dd9fa555d7bb`](https://git.kernel.org/torvalds/c/dd9fa555d7bb) | [kernel] | tracing/uprobes: Move argument fetching to uprobe_dispatcher() |  | CONFIG_FTRACE=y in A37 | 3.10.0-917 |
| CANDIDATE | 3.15 | [`1d6bae966e90`](https://git.kernel.org/torvalds/c/1d6bae966e90) | [kernel] | tracing: Move raw output code from macro to standalone function |  | CONFIG_FTRACE=y in A37 | 3.10.0-590 |
| CANDIDATE | 3.15 | [`bf6065b5c701`](https://git.kernel.org/torvalds/c/bf6065b5c701) | [kernel] | tracing: Pass trace_array to flag_changed callback |  | CONFIG_FTRACE=y in A37 | 3.10.0-590 |
| CANDIDATE | 3.15 | [`8c1a49aedb73`](https://git.kernel.org/torvalds/c/8c1a49aedb73) | [kernel] | tracing: Pass trace_array to set_flag callback |  | CONFIG_FTRACE=y in A37 | 3.10.0-590 |
| CANDIDATE | 3.15 | [`607e2ea167e5`](https://git.kernel.org/torvalds/c/607e2ea167e5) | [kernel] | tracing: Set up infrastructure to allow tracers for instances |  | CONFIG_FTRACE=y in A37 | 3.10.0-590 |
| CANDIDATE | 3.15 | [`57673c2b0baa`](https://git.kernel.org/torvalds/c/57673c2b0baa) | [kernel] | Use 'E' instead of 'X' for unsigned module taint flag |  | generic code, tag [kernel] | 3.10.0-239 |
| CANDIDATE | 3.15 | [`52f5684c8e1e`](https://git.kernel.org/torvalds/c/52f5684c8e1e) (loose) | [kernel] | use macros from compiler.h instead of __attribute__((...)) |  | generic code, tag [kernel] | 3.10.0-590 |
| CANDIDATE | 3.15 | [`ea2e64f280d2`](https://git.kernel.org/torvalds/c/ea2e64f280d2) | [kernel] | workqueue: Provide destroy_delayed_work_on_stack() |  | generic code, tag [kernel] | 3.10.0-769 |
| CANDIDATE | 3.15 | [`d20f78d25277`](https://git.kernel.org/torvalds/c/d20f78d25277) | [kernel] | x86, random: Enable the RDSEED instruction |  | generic code, tag [kernel] | 3.10.0-682 |
| CANDIDATE | 3.16 | [`73679e508201`](https://git.kernel.org/torvalds/c/73679e508201) | [kernel] | compiler-intel.h: Remove duplicate definition |  | generic code, tag [kernel] | 3.10.0-657 |
| CANDIDATE | 3.16 | [`30743837dd20`](https://git.kernel.org/torvalds/c/30743837dd20) (loose) | [kernel] | filter: make register naming more comprehensible |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 3.16 | [`8844aad89ed6`](https://git.kernel.org/torvalds/c/8844aad89ed6) | [kernel] | genirq: Fix memory leak when calling irq_free_hwirqs() |  | generic code, tag [kernel] | 3.10.0-291 |
| CANDIDATE | 3.16 | [`1c8732bb0355`](https://git.kernel.org/torvalds/c/1c8732bb0355) | [kernel] | gpio: support threaded interrupts in irqchip helpers |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-697 |
| CANDIDATE | 3.16 | [`451ef1caa869`](https://git.kernel.org/torvalds/c/451ef1caa869) | [kernel] | init.h: Update initcall_sync variants to fix build errors |  | generic code, tag [kernel] | 3.10.0-869 |
| CANDIDATE | 3.16 | [`c7eb3a7a1790`](https://git.kernel.org/torvalds/c/c7eb3a7a1790) | [kernel] | kbuild: Fix tar-pkg with relative $(objtree) |  | generic code, tag [kernel] | 3.10.0-808 |
| CANDIDATE | 3.16 | [`67cb9366ff5f`](https://git.kernel.org/torvalds/c/67cb9366ff5f) | [kernel] | ktime: add ktime_after and ktime_before helper |  | generic code, tag [kernel] | 3.10.0-265 |
| CANDIDATE | 3.16 | [`70af2f8a4f48`](https://git.kernel.org/torvalds/c/70af2f8a4f48) | [kernel] | locking/rwlocks: Introduce 'qrwlocks' - fair, queued rwlocks |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 3.16 | [`dbb5eafa23fd`](https://git.kernel.org/torvalds/c/dbb5eafa23fd) | [kernel] | locking/rwsem: Fix warnings for CONFIG_RWSEM_GENERIC_SPINLOCK |  | generic code, tag [kernel] | 3.10.0-629 |
| CANDIDATE | 3.16 | [`ce069fc920e5`](https://git.kernel.org/torvalds/c/ce069fc920e5) | [kernel] | locking/rwsem: Reduce the size of struct rw_semaphore |  | generic code, tag [kernel] | 3.10.0-629 |
| CANDIDATE | 3.16 | [`33ecd2083a95`](https://git.kernel.org/torvalds/c/33ecd2083a95) | [kernel] | locking/spinlocks/mcs: Micro-optimize osq_unlock() |  | generic code, tag [kernel] | 3.10.0-629 |
| CANDIDATE | 3.16 | [`046a619d8e97`](https://git.kernel.org/torvalds/c/046a619d8e97) | [kernel] | locking/spinlocks/mcs: Rename optimistic_spin_queue() to optimistic_spin_node() |  | generic code, tag [kernel] | 3.10.0-629 |
| CANDIDATE | 3.16 | [`7cd2b0a34ab8`](https://git.kernel.org/torvalds/c/7cd2b0a34ab8) | [kernel] | mm, pcp: allow restoring percpu_pagelist_fraction default |  | generic code, tag [kernel] | 3.10.0-549 |
| CANDIDATE | 3.16 | [`7c8e0181e6e0`](https://git.kernel.org/torvalds/c/7c8e0181e6e0) | [kernel] | mm: replace __get_cpu_var uses with this_cpu_ptr |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 3.16 | [`12665b35b0b4`](https://git.kernel.org/torvalds/c/12665b35b0b4) | [kernel] | perf/events/core: Drop unused variable after cleanup |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.16 | [`bac52139f0b7`](https://git.kernel.org/torvalds/c/bac52139f0b7) | [kernel] | perf: Add new conditional branch filter 'PERF_SAMPLE_BRANCH_COND' |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.16 | [`c464c76eec4b`](https://git.kernel.org/torvalds/c/c464c76eec4b) | [kernel] | perf: Allow building PMU drivers as modules |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.16 | [`15a2d4de0eab`](https://git.kernel.org/torvalds/c/15a2d4de0eab) | [kernel] | perf: Always destroy groups on exit |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.16 | [`82b897782d10`](https://git.kernel.org/torvalds/c/82b897782d10) | [kernel] | perf: Differentiate exec() and non-exec() comm events |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.16 | [`53b25335dd60`](https://git.kernel.org/torvalds/c/53b25335dd60) | [kernel] | perf: Disable sampled events if no PMU interrupt |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.16 | [`1f9a7268c67f`](https://git.kernel.org/torvalds/c/1f9a7268c67f) | [kernel] | perf: Do not allow optimized switch for non-cloned events |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.16 | [`1f4ee5038f0c`](https://git.kernel.org/torvalds/c/1f4ee5038f0c) | [kernel] | perf: Ensure consistent inherit state in groups |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.16 | [`4a1c0f262f88`](https://git.kernel.org/torvalds/c/4a1c0f262f88) | [kernel] | perf: Fix lockdep warning on process exit |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.16 | [`e041e328c4b4`](https://git.kernel.org/torvalds/c/e041e328c4b4) | [kernel] | perf: Fix perf_event_comm() vs. exec() assumption |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.16 | [`643fd0b9f5dc`](https://git.kernel.org/torvalds/c/643fd0b9f5dc) | [kernel] | perf: Fix perf_event_open(.flags) test |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.16 | [`ebf905fc7a6e`](https://git.kernel.org/torvalds/c/ebf905fc7a6e) | [kernel] | perf: Fix use after free in perf_remove_from_context() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.16 | [`f972eb63b100`](https://git.kernel.org/torvalds/c/f972eb63b100) | [kernel] | perf: Pass protection and flags bits through mmap2 interface |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.16 | [`683ede43dd41`](https://git.kernel.org/torvalds/c/683ede43dd41) | [kernel] | perf: Rework free paths |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.16 | [`3a497f48637e`](https://git.kernel.org/torvalds/c/3a497f48637e) | [kernel] | perf: Simplify perf_event_exit_task_context() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.16 | [`63342411efd2`](https://git.kernel.org/torvalds/c/63342411efd2) | [kernel] | perf: Validate locking assumption |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-181 |
| CANDIDATE | 3.16 | [`a6e15a39048e`](https://git.kernel.org/torvalds/c/a6e15a39048e) | [kernel] | pm / hibernate: introduce "nohibernate" boot parameter |  | generic code, tag [kernel] | 3.10.0-588 |
| CANDIDATE | 3.16 | [`9113e260767b`](https://git.kernel.org/torvalds/c/9113e260767b) | [kernel] | power_supply: allow power supply devices registered w/o wakeup source |  | CONFIG_POWER_SUPPLY=y in A37 | 3.10.0-612 |
| CANDIDATE | 3.16 | [`c224815dac9c`](https://git.kernel.org/torvalds/c/c224815dac9c) | [kernel] | printk: Add printk_deferred_once |  | generic code, tag [kernel] | 3.10.0-465 |
| CANDIDATE | 3.16 | [`c224815dac9c`](https://git.kernel.org/torvalds/c/c224815dac9c) | [kernel] | printk: Add printk_deferred_once |  | generic code, tag [kernel] | 3.10.0-456 |
| CANDIDATE | 3.16 | [`81954606265a`](https://git.kernel.org/torvalds/c/81954606265a) | [kernel] | printk: disable preemption for printk_sched |  | generic code, tag [kernel] | 3.10.0-465 |
| CANDIDATE | 3.16 | [`939f04bec1a4`](https://git.kernel.org/torvalds/c/939f04bec1a4) | [kernel] | printk: enable interrupts before calling console_trylock_for_printk() |  | generic code, tag [kernel] | 3.10.0-465 |
| CANDIDATE | 3.16 | [`939f04bec1a4`](https://git.kernel.org/torvalds/c/939f04bec1a4) | [kernel] | printk: enable interrupts before calling console_trylock_for_printk() |  | generic code, tag [kernel] | 3.10.0-465 |
| CANDIDATE | 3.16 | [`608873cacb9d`](https://git.kernel.org/torvalds/c/608873cacb9d) | [kernel] | printk: release lockbuf_lock before calling console_trylock_for_printk() |  | generic code, tag [kernel] | 3.10.0-465 |
| CANDIDATE | 3.16 | [`458df9fd4815`](https://git.kernel.org/torvalds/c/458df9fd4815) | [kernel] | printk: remove separate printk_sched buffers and use printk buf instead |  | generic code, tag [kernel] | 3.10.0-465 |
| CANDIDATE | 3.16 | [`650226bd9581`](https://git.kernel.org/torvalds/c/650226bd9581) | [kernel] | ptrace: task_clear_jobctl_trapping()->wake_up_bit() needs mb() |  | generic code, tag [kernel] | 3.10.0-462 |
| CANDIDATE | 3.16 | [`546a9d8519ed`](https://git.kernel.org/torvalds/c/546a9d8519ed) | [kernel] | rcu: Export debug_init_rcu_head() and and debug_init_rcu_head() |  | generic code, tag [kernel] | 3.10.0-1020 |
| CANDIDATE | 3.16 | [`83ebe63ead0f`](https://git.kernel.org/torvalds/c/83ebe63ead0f) | [kernel] | rcu: Print negatives for stall-warning counter wraparound |  | generic code, tag [kernel] | 3.10.0-423 |
| CANDIDATE | 3.16 | [`4fc5b75537d4`](https://git.kernel.org/torvalds/c/4fc5b75537d4) | [kernel] | rcu: Protect uses of jiffies_stall field with ACCESS_ONCE() |  | generic code, tag [kernel] | 3.10.0-423 |
| CANDIDATE | 3.16 | [`61f38db3e3c0`](https://git.kernel.org/torvalds/c/61f38db3e3c0) | [kernel] | rcu: Provide API to suppress stall warnings while sysrc runs |  | generic code, tag [kernel] | 3.10.0-364 |
| CANDIDATE | 3.16 | [`e4c729664339`](https://git.kernel.org/torvalds/c/e4c729664339) | [kernel] | resources: Clarify sanity check message |  | generic code, tag [kernel] | 3.10.0-231 |
| CANDIDATE | 3.16 | [`dfc68f29ae67`](https://git.kernel.org/torvalds/c/dfc68f29ae67) | [kernel] | sched, trace: Add a tracepoint for IPI-less remote wakeups |  | generic code, tag [kernel] | 3.10.0-241 |
| CANDIDATE | 3.16 | [`ed61bbc69c77`](https://git.kernel.org/torvalds/c/ed61bbc69c77) | [kernel] | sched/balancing: Reduce the rate of needless idle load balancing |  | generic code, tag [kernel] | 3.10.0-186 |
| CANDIDATE | 3.16 | [`51f2176d74ac`](https://git.kernel.org/torvalds/c/51f2176d74ac) | [kernel] | sched/fair: Fix unlocked reads of some cfs_b->quota/period |  | generic code, tag [kernel] | 3.10.0-423 |
| CANDIDATE | 3.16 | [`fd99f91aa007`](https://git.kernel.org/torvalds/c/fd99f91aa007) | [kernel] | sched/idle: Avoid spurious wakeup IPIs |  | generic code, tag [kernel] | 3.10.0-241 |
| CANDIDATE | 3.16 | [`82c65d60d644`](https://git.kernel.org/torvalds/c/82c65d60d644) | [kernel] | sched/idle: Clear polling before descheduling the idle thread |  | generic code, tag [kernel] | 3.10.0-241 |
| CANDIDATE | 3.16 | [`e3baac47f0e8`](https://git.kernel.org/torvalds/c/e3baac47f0e8) | [kernel] | sched/idle: Optimize try-to-wake-up IPI |  | generic code, tag [kernel] | 3.10.0-241 |
| CANDIDATE | 3.16 | [`d77b3ed5c9f8`](https://git.kernel.org/torvalds/c/d77b3ed5c9f8) | [kernel] | sched: Add a new SD_SHARE_POWERDOMAIN for sched_domain |  | generic code, tag [kernel] | 3.10.0-1160.5.1 |
| CANDIDATE | 3.16 | [`52a08ef1f13a`](https://git.kernel.org/torvalds/c/52a08ef1f13a) | [kernel] | sched: Fix the rq->next_balance logic in rebalance_domains() and idle_balance() |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | 3.16 | [`cadefd3d6cc9`](https://git.kernel.org/torvalds/c/cadefd3d6cc9) | [kernel] | sched: Make scale_rt_power() deal with backward clocks |  | generic code, tag [kernel] | 3.10.0-1044 |
| CANDIDATE | 3.16 | [`143e1e28cb40`](https://git.kernel.org/torvalds/c/143e1e28cb40) | [kernel] | sched: Rework sched_domain topology definition |  | generic code, tag [kernel] | 3.10.0-201 |
| CANDIDATE | 3.16 | [`a219ccf46373`](https://git.kernel.org/torvalds/c/a219ccf46373) | [kernel] | smp: print more useful debug info upon receiving IPI on an offline CPU |  | generic code, tag [kernel] | 3.10.0-197 |
| CANDIDATE | 3.16 | [`984d74a72076`](https://git.kernel.org/torvalds/c/984d74a72076) | [kernel] | sysrq: rcu-ify __handle_sysrq |  | generic code, tag [kernel] | 3.10.0-364 |
| CANDIDATE | 3.16 | [`6d9bcb621b0b`](https://git.kernel.org/torvalds/c/6d9bcb621b0b) | [kernel] | timekeeping: use printk_deferred when holding timekeeping seqlock |  | generic code, tag [kernel] | 3.10.0-465 |
| CANDIDATE | 3.16 | [`beba4bb09620`](https://git.kernel.org/torvalds/c/beba4bb09620) | [kernel] | tracing: Add __get_dynamic_array_len() macro for trace events |  | CONFIG_FTRACE=y in A37 | 3.10.0-544 |
| CANDIDATE | 3.16 | [`7c65bbc7dcfa`](https://git.kernel.org/torvalds/c/7c65bbc7dcfa) | [kernel] | tracing: Add trace_<tracepoint>_enabled() function |  | CONFIG_FTRACE=y in A37 | 3.10.0-422 |
| CANDIDATE | 3.16 | [`a6af8fbf1798`](https://git.kernel.org/torvalds/c/a6af8fbf1798) | [kernel] | tracing: Cleanup saved_cmdlines_size changes |  | CONFIG_FTRACE=y in A37 | 3.10.0-339 |
| CANDIDATE | 3.16 | [`42584c81c5ad`](https://git.kernel.org/torvalds/c/42584c81c5ad) | [kernel] | tracing: Have saved_cmdlines use the seq_read infrastructure |  | CONFIG_FTRACE=y in A37 | 3.10.0-339 |
| CANDIDATE | 3.16 | [`939c7a4f04fc`](https://git.kernel.org/torvalds/c/939c7a4f04fc) | [kernel] | tracing: Introduce saved_cmdlines_size file |  | CONFIG_FTRACE=y in A37 | 3.10.0-339 |
| CANDIDATE | 3.16 | [`4c27e756bc01`](https://git.kernel.org/torvalds/c/4c27e756bc01) | [kernel] | tracing: Move locking of trace_cmdline_lock into start/stop seq calls |  | CONFIG_FTRACE=y in A37 | 3.10.0-339 |
| CANDIDATE | 3.16 | [`6d9b3fa5e7f6`](https://git.kernel.org/torvalds/c/6d9b3fa5e7f6) | [kernel] | tracing: Move tracing_max_latency into trace_array |  | CONFIG_FTRACE=y in A37 | 3.10.0-590 |
| CANDIDATE | 3.16 | [`73e4354444ee`](https://git.kernel.org/torvalds/c/73e4354444ee) | [kernel] | workqueue: declare system_highpri_wq |  | generic code, tag [kernel] | 3.10.0-769 |
| CANDIDATE | 3.16 | [`24f2e0273f80`](https://git.kernel.org/torvalds/c/24f2e0273f80) | [kernel] | x86, kaslr: boot-time selectable with hibernation |  | generic code, tag [kernel] | 3.10.0-588 |
| CANDIDATE | 3.16 | [`bd01ec1a13f9`](https://git.kernel.org/torvalds/c/bd01ec1a13f9) | [kernel] | x86, locking/rwlocks: Enable qrwlocks on x86 |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 3.17 | [`e2b9a3d7d8f4`](https://git.kernel.org/torvalds/c/e2b9a3d7d8f4) | [kernel] | cpuset: add cs->effective_cpus and cs->effective_mems |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.17 | [`5d8ba82c3a1f`](https://git.kernel.org/torvalds/c/5d8ba82c3a1f) | [kernel] | cpuset: allow writing offlined masks to cpuset.cpus/mems |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.17 | [`ae1c802382f7`](https://git.kernel.org/torvalds/c/ae1c802382f7) | [kernel] | cpuset: apply cs->effective_{cpus,mems} |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.17 | [`be4c9dd7aee5`](https://git.kernel.org/torvalds/c/be4c9dd7aee5) | [kernel] | cpuset: enable onlined cpu/node in effective masks |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.17 | [`afd1a8b3e0bc`](https://git.kernel.org/torvalds/c/afd1a8b3e0bc) | [kernel] | cpuset: export effective masks to userspace |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.17 | [`a13812683f11`](https://git.kernel.org/torvalds/c/a13812683f11) | [kernel] | cpuset: fix the WARN_ON() in update_nodemasks_hier() |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.17 | [`554b0d1c845e`](https://git.kernel.org/torvalds/c/554b0d1c845e) | [kernel] | cpuset: inherit ancestor's masks if effective_{cpus, mems} becomes empty |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.17 | [`39bd0d15eca5`](https://git.kernel.org/torvalds/c/39bd0d15eca5) | [kernel] | cpuset: initialize top_cpuset's configured masks at mount |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.17 | [`7e88291beefb`](https://git.kernel.org/torvalds/c/7e88291beefb) | [kernel] | cpuset: make cs->{cpus, mems}_allowed as user-configured masks |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.17 | [`2ad654bc5e2b`](https://git.kernel.org/torvalds/c/2ad654bc5e2b) | [kernel] | cpuset: PF_SPREAD_PAGE and PF_SPREAD_SLAB should be atomic flags |  | CONFIG_CGROUPS=y in A37 | 3.10.0-202 |
| CANDIDATE | 3.17 | [`390a36aadf39`](https://git.kernel.org/torvalds/c/390a36aadf39) | [kernel] | cpuset: refactor cpuset_hotplug_update_tasks() |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.17 | [`734d45130cb4`](https://git.kernel.org/torvalds/c/734d45130cb4) | [kernel] | cpuset: update cs->effective_{cpus, mems} when config changes |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.17 | [`8b5f1c52dcd1`](https://git.kernel.org/torvalds/c/8b5f1c52dcd1) | [kernel] | cpuset: use effective cpumask to build sched domains |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 3.17 | [`9f12fbe603f7`](https://git.kernel.org/torvalds/c/9f12fbe603f7) (loose) | [kernel] | filter: move load_pointer() into filter.h |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 3.17 | [`1b2f121c1418`](https://git.kernel.org/torvalds/c/1b2f121c1418) | [kernel] | ftrace-graph: Remove dependency of ftrace_stop() from ftrace_graph_stop() |  | CONFIG_FTRACE=y in A37 | 3.10.0-154 |
| CANDIDATE | 3.17 | [`545d47b8f359`](https://git.kernel.org/torvalds/c/545d47b8f359) | [kernel] | ftrace-graph: Remove usage of ftrace_stop() in ftrace_graph_stop() |  | CONFIG_FTRACE=y in A37 | 3.10.0-154 |
| CANDIDATE | 3.17 | [`1820122a76c6`](https://git.kernel.org/torvalds/c/1820122a76c6) | [kernel] | ftrace: Do no disable function tracing on enabling function tracing |  | CONFIG_FTRACE=y in A37 | 3.10.0-154 |
| CANDIDATE | 3.17 | [`7544256aa203`](https://git.kernel.org/torvalds/c/7544256aa203) | [kernel] | ftrace: Remove check for HAVE_FUNCTION_TRACE_MCOUNT_TEST |  | CONFIG_FTRACE=y in A37 | 3.10.0-154 |
| CANDIDATE | 3.17 | [`0ef1b9e0cfd9`](https://git.kernel.org/torvalds/c/0ef1b9e0cfd9) | [kernel] | ftrace: Remove ftrace_start/stop() |  | CONFIG_FTRACE=y in A37 | 3.10.0-154 |
| CANDIDATE | 3.17 | [`1d48d5960f9f`](https://git.kernel.org/torvalds/c/1d48d5960f9f) | [kernel] | ftrace: Remove function_trace_stop check from list func |  | CONFIG_FTRACE=y in A37 | 3.10.0-154 |
| CANDIDATE | 3.17 | [`5c27c775d5e6`](https://git.kernel.org/torvalds/c/5c27c775d5e6) | [kernel] | ftrace: Simplify ftrace_hash_disable/enable path in ftrace_hash_move |  | CONFIG_FTRACE=y in A37 | 3.10.0-406 |
| CANDIDATE | 3.17 | [`cf2cb0b27116`](https://git.kernel.org/torvalds/c/cf2cb0b27116) | [kernel] | ftrace: Use macros for numbers in ftrace rec shift bits |  | CONFIG_FTRACE=y in A37 | 3.10.0-406 |
| CANDIDATE | 3.17 | [`13c42c2f43b1`](https://git.kernel.org/torvalds/c/13c42c2f43b1) | [kernel] | futex: Unlock hb->lock in futex_wait_requeue_pi() error path |  | generic code, tag [kernel] | 3.10.0-1152 |
| CANDIDATE | 3.17 | [`76f4108892d9`](https://git.kernel.org/torvalds/c/76f4108892d9) | [kernel] | hrtimer: Cleanup hrtimer accessors to the timekepeing state |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 3.17 | [`49a2a07514a3`](https://git.kernel.org/torvalds/c/49a2a07514a3) | [kernel] | hrtimer: Kick lowres dynticks targets on timer enqueue |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 3.17 | [`9e1e01dd79ac`](https://git.kernel.org/torvalds/c/9e1e01dd79ac) | [kernel] | hrtimer: Remove hrtimer_enqueue_reprogram() |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 3.17 | [`cddd02489f52`](https://git.kernel.org/torvalds/c/cddd02489f52) | [kernel] | hrtimer: Store cpu-number in struct hrtimer_cpu_base |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 3.17 | [`29b4739134c7`](https://git.kernel.org/torvalds/c/29b4739134c7) | [kernel] | input: wacom - switch from an USB driver to a HID driver |  | CONFIG_INPUT=y in A37 | 3.10.0-612 |
| CANDIDATE | 3.17 | [`478850160636`](https://git.kernel.org/torvalds/c/478850160636) | [kernel] | irq_work: Implement remote queueing |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.17 | [`a77353e5eb56`](https://git.kernel.org/torvalds/c/a77353e5eb56) | [kernel] | irq_work: Remove BUG_ON in irq_work_run() |  | generic code, tag [kernel] | 3.10.0-239 |
| CANDIDATE | 3.17 | [`b93e0b8fa819`](https://git.kernel.org/torvalds/c/b93e0b8fa819) | [kernel] | irq_work: Split raised and lazy lists |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.17 | [`b0108f9e93d0`](https://git.kernel.org/torvalds/c/b0108f9e93d0) (loose) | [kernel] | kexec, purgatory: add clean-up for purgatory directory |  | generic code, tag [kernel] | 3.10.0-173 |
| CANDIDATE | 3.17 | [`d0d480cce8f5`](https://git.kernel.org/torvalds/c/d0d480cce8f5) | [kernel] | leds: add led-class attribute-group support |  | generic code, tag [kernel] | 3.10.0-546 |
| CANDIDATE | 3.17 | [`1d023284c31a`](https://git.kernel.org/torvalds/c/1d023284c31a) | [kernel] | list: fix order of arguments for hlist_add_after(_rcu) |  | generic code, tag [kernel] | 3.10.0-577 |
| CANDIDATE | 3.17 | [`bc18dd335a16`](https://git.kernel.org/torvalds/c/bc18dd335a16) | [kernel] | list: make hlist_add_after() argument names match hlist_add_after_rcu() |  | generic code, tag [kernel] | 3.10.0-577 |
| CANDIDATE | 3.17 | [`c04f9d61caa3`](https://git.kernel.org/torvalds/c/c04f9d61caa3) | [kernel] | maintainers: create seccomp entry |  | generic code, tag [kernel] | 3.10.0-743 |
| CANDIDATE | 3.17 | [`2f3e442ccceb`](https://git.kernel.org/torvalds/c/2f3e442ccceb) | [kernel] | mm: page-flags: clean up the page flag test, set, clear macros |  | generic code, tag [kernel] | 3.10.0-1058 |
| CANDIDATE | 3.17 | [`40bea039593d`](https://git.kernel.org/torvalds/c/40bea039593d) | [kernel] | nohz: Restore NMI safe local irq work for local nohz kick |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.17 | [`3d36aebc2e78`](https://git.kernel.org/torvalds/c/3d36aebc2e78) | [kernel] | nohz: Support nohz full remote kick |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.17 | [`69361eef9056`](https://git.kernel.org/torvalds/c/69361eef9056) | [kernel] | panic: add TAINT_SOFTLOCKUP |  | generic code, tag [kernel] | 3.10.0-239 |
| CANDIDATE | 3.17 | [`28cb5ef16e57`](https://git.kernel.org/torvalds/c/28cb5ef16e57) | [kernel] | pm: Create PM workqueue if runtime PM is not configured too |  | generic code, tag [kernel] | 3.10.0-590 |
| CANDIDATE | 3.17 | [`14c4000a88af`](https://git.kernel.org/torvalds/c/14c4000a88af) | [kernel] | printk: Add function to return log buffer address and size |  | generic code, tag [kernel] | 3.10.0-184 |
| CANDIDATE | 3.17 | [`bc1dce514e9b`](https://git.kernel.org/torvalds/c/bc1dce514e9b) | [kernel] | rcu: Don't use NMIs to dump other CPUs' stacks |  | generic code, tag [kernel] | 3.10.0-423 |
| CANDIDATE | 3.17 | [`3a044178cccf`](https://git.kernel.org/torvalds/c/3a044178cccf) | [kernel] | readq/writeq: Add explicit lo_hi_[read\|write]_q and hi_lo_[read\|write]_q |  | generic code, tag [kernel] | 3.10.0-315 |
| CANDIDATE | 3.17 | [`800df627e2ea`](https://git.kernel.org/torvalds/c/800df627e2ea) | [kernel] | resource: fix the case of null pointer access |  | generic code, tag [kernel] | 3.10.0-173 |
| CANDIDATE | 3.17 | [`8c86e70acead`](https://git.kernel.org/torvalds/c/8c86e70acead) | [kernel] | resource: provide new functions to walk through resources |  | generic code, tag [kernel] | 3.10.0-173 |
| CANDIDATE | 3.17 | [`10e83fd01ccb`](https://git.kernel.org/torvalds/c/10e83fd01ccb) | [kernel] | ring-buffer: Use rb_page_size() instead of open coded head_page size |  | CONFIG_FTRACE=y in A37 | 3.10.0-341 |
| CANDIDATE | 3.17 | [`4486edd12b5a`](https://git.kernel.org/torvalds/c/4486edd12b5a) | [kernel] | sched/fair: Implement fast idling of CPUs when the system is partially loaded |  | generic code, tag [kernel] | 3.10.0-186 |
| CANDIDATE | 3.17 | [`e0e5070b20e0`](https://git.kernel.org/torvalds/c/e0e5070b20e0) | [kernel] | sched: add macros to define bitops for task atomic flags |  | generic code, tag [kernel] | 3.10.0-743 |
| CANDIDATE | 3.17 | [`c1221321b7c2`](https://git.kernel.org/torvalds/c/c1221321b7c2) | [kernel] | sched: Allow wait_on_bit_action() functions to support a timeout |  | generic code, tag [kernel] | 3.10.0-378 |
| CANDIDATE | 3.17 | [`5d5e2b1bcbdc`](https://git.kernel.org/torvalds/c/5d5e2b1bcbdc) | [kernel] | sched: Fix CACHE_HOT_BUDY condition |  | generic code, tag [kernel] | 3.10.0-1092 |
| CANDIDATE | 3.17 | [`4036ac156783`](https://git.kernel.org/torvalds/c/4036ac156783) | [kernel] | sched: Fix clock_gettime(CLOCK_[PROCESS/THREAD]_CPUTIME_ID) monotonicity |  | generic code, tag [kernel] | 3.10.0-171 |
| CANDIDATE | 3.17 | [`a2b86f772227`](https://git.kernel.org/torvalds/c/a2b86f772227) | [kernel] | sched: fix confusing PFA_NO_NEW_PRIVS constant |  | generic code, tag [kernel] | 3.10.0-743 |
| CANDIDATE | 3.17 | [`c06f04c70489`](https://git.kernel.org/torvalds/c/c06f04c70489) | [kernel] | sched: Fix potential near-infinite distribute_cfs_runtime() loop |  | generic code, tag [kernel] | 3.10.0-585 |
| CANDIDATE | 3.17 | [`d8d28c8f00e8`](https://git.kernel.org/torvalds/c/d8d28c8f00e8) | [kernel] | sched: Fix sched_setparam() policy == -1 logic |  | generic code, tag [kernel] | 3.10.0-443 |
| CANDIDATE | 3.17 | [`743162013d40`](https://git.kernel.org/torvalds/c/743162013d40) | [kernel] | sched: Remove proliferation of wait_on_bit() action functions |  | generic code, tag [kernel] | 3.10.0-378 |
| CANDIDATE | 3.17 | [`6ae72dff3759`](https://git.kernel.org/torvalds/c/6ae72dff3759) | [kernel] | sched: Robustify topology setup |  | generic code, tag [kernel] | 3.10.0-332 |
| CANDIDATE | 3.17 | [`8875125efe84`](https://git.kernel.org/torvalds/c/8875125efe84) | [kernel] | sched: Transform resched_task() into resched_curr() |  | generic code, tag [kernel] | 3.10.0-660 |
| CANDIDATE | 3.17 | [`9b0fd802e8c0`](https://git.kernel.org/torvalds/c/9b0fd802e8c0) | [kernel] | seqcount: Add raw_write_seqcount_latch() |  | generic code, tag [kernel] | 3.10.0-573 |
| CANDIDATE | 3.17 | [`0ea5a520f73c`](https://git.kernel.org/torvalds/c/0ea5a520f73c) | [kernel] | seqcount: Provide raw_read_seqcount() |  | generic code, tag [kernel] | 3.10.0-182 |
| CANDIDATE | 3.17 | [`361a3bf00582`](https://git.kernel.org/torvalds/c/361a3bf00582) | [kernel] | time64: Add time64.h header and define struct timespec64 |  | generic code, tag [kernel] | 3.10.0-245 |
| CANDIDATE | 3.17 | [`8b094cd03b4a`](https://git.kernel.org/torvalds/c/8b094cd03b4a) | [kernel] | time: Consolidate the time accessor prototypes |  | generic code, tag [kernel] | 3.10.0-380 |
| CANDIDATE | 3.17 | [`d560fed6abe0`](https://git.kernel.org/torvalds/c/d560fed6abe0) | [kernel] | time: Export nsecs_to_jiffies() |  | generic code, tag [kernel] | 3.10.0-262 |
| CANDIDATE | 3.17 | [`49cd6f869984`](https://git.kernel.org/torvalds/c/49cd6f869984) | [kernel] | time: More core infrastructure for timespec64 |  | generic code, tag [kernel] | 3.10.0-245 |
| CANDIDATE | 3.17 | [`7d489d15ce4b`](https://git.kernel.org/torvalds/c/7d489d15ce4b) | [kernel] | timekeeping: Convert timekeeping core to use timespec64s |  | generic code, tag [kernel] | 3.10.0-260 |
| CANDIDATE | 3.17 | [`d28ede83791d`](https://git.kernel.org/torvalds/c/d28ede83791d) | [kernel] | timekeeping: Create struct tk_read_base and use it in struct timekeeper |  | generic code, tag [kernel] | 3.10.0-380 |
| CANDIDATE | 3.17 | [`4396e058c52e`](https://git.kernel.org/torvalds/c/4396e058c52e) | [kernel] | timekeeping: Provide fast and NMI safe access to CLOCK_MONOTONIC |  | generic code, tag [kernel] | 3.10.0-573 |
| CANDIDATE | 3.17 | [`7c032df55703`](https://git.kernel.org/torvalds/c/7c032df55703) | [kernel] | timekeeping: Provide internal ktime_t based data |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.17 | [`897994e32b2b`](https://git.kernel.org/torvalds/c/897994e32b2b) | [kernel] | timekeeping: Provide ktime_get[*]_ns() helpers |  | generic code, tag [kernel] | 3.10.0-444 |
| CANDIDATE | 3.17 | [`f519b1a2e08c`](https://git.kernel.org/torvalds/c/f519b1a2e08c) | [kernel] | timekeeping: Provide ktime_get_raw() |  | generic code, tag [kernel] | 3.10.0-380 |
| CANDIDATE | 3.17 | [`d6d29896c665`](https://git.kernel.org/torvalds/c/d6d29896c665) | [kernel] | timekeeping: Provide timespec64 based interfaces |  | generic code, tag [kernel] | 3.10.0-260 |
| CANDIDATE | 3.17 | [`dc491596f639`](https://git.kernel.org/torvalds/c/dc491596f639) | [kernel] | timekeeping: Rework frequency adjustments to work better w/ nohz |  | generic code, tag [kernel] | 3.10.0-197 |
| CANDIDATE | 3.17 | [`e06fde37b860`](https://git.kernel.org/torvalds/c/e06fde37b860) | [kernel] | timekeeping: Simplify arch_gettimeoffset() |  | generic code, tag [kernel] | 3.10.0-380 |
| CANDIDATE | 3.17 | [`9bf2419fa7bf`](https://git.kernel.org/torvalds/c/9bf2419fa7bf) | [kernel] | timekeeping: Update timekeeper before updating vsyscall and pvclock |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.17 | [`375f45b5b53a`](https://git.kernel.org/torvalds/c/375f45b5b53a) | [kernel] | timekeeping: Use cached ntp_tick_length when accumulating error |  | generic code, tag [kernel] | 3.10.0-197 |
| CANDIDATE | 3.17 | [`a37c0aad6093`](https://git.kernel.org/torvalds/c/a37c0aad6093) | [kernel] | timekeeping: Use ktime_t data for ktime_get_update_offsets_now() |  | generic code, tag [kernel] | 3.10.0-305 |
| CANDIDATE | 3.17 | [`f111adfdd7ff`](https://git.kernel.org/torvalds/c/f111adfdd7ff) | [kernel] | timekeeping: Use timekeeping_update() instead of memcpy() |  | generic code, tag [kernel] | 3.10.0-553 |
| CANDIDATE | 3.17 | [`0e5ac3a8b100`](https://git.kernel.org/torvalds/c/0e5ac3a8b100) | [kernel] | timekeeping: Use tk_read_base as argument for timekeeping_get_ns() |  | generic code, tag [kernel] | 3.10.0-380 |
| CANDIDATE | 3.17 | [`9f6d9baaa8ca`](https://git.kernel.org/torvalds/c/9f6d9baaa8ca) | [kernel] | timer: Kick dynticks targets on mod_timer*() calls |  | generic code, tag [kernel] | 3.10.0-896 |
| CANDIDATE | 3.18 | [`84db564aad45`](https://git.kernel.org/torvalds/c/84db564aad45) | [kernel] | audit: add arch field to seccomp event log |  | CONFIG_AUDIT=y in A37 | 3.10.0-185 |
| CANDIDATE | 3.18 | [`897f1acbb670`](https://git.kernel.org/torvalds/c/897f1acbb670) | [kernel] | audit: AUDIT_FEATURE_CHANGE message format missing delimiting space |  | CONFIG_AUDIT=y in A37 | 3.10.0-219 |
| CANDIDATE | 3.18 | [`9ef91514774a`](https://git.kernel.org/torvalds/c/9ef91514774a) | [kernel] | audit: correct AUDIT_GET_FEATURE return message type |  | CONFIG_AUDIT=y in A37 | 3.10.0-177 |
| CANDIDATE | 3.18 | [`a9ebe0b98896`](https://git.kernel.org/torvalds/c/a9ebe0b98896) | [kernel] | audit: fix build error when asm/syscall.h does not exist |  | CONFIG_AUDIT=y in A37 | 3.10.0-185 |
| CANDIDATE | 3.18 | [`9eab339b197a`](https://git.kernel.org/torvalds/c/9eab339b197a) | [kernel] | audit: get comm using lock to avoid race in string printing |  | CONFIG_AUDIT=y in A37 | 3.10.0-290 |
| CANDIDATE | 3.18 | [`00b4d9a14125`](https://git.kernel.org/torvalds/c/00b4d9a14125) | [kernel] | bitops: Fix shift overflow in GENMASK macros |  | generic code, tag [kernel] | 3.10.0-475 |
| CANDIDATE | 3.18 | [`738cbe72adc5`](https://git.kernel.org/torvalds/c/738cbe72adc5) (loose) | [kernel] | bpf: consolidate JIT binary allocator |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 3.18 | [`749730ce42a2`](https://git.kernel.org/torvalds/c/749730ce42a2) | [kernel] | bpf: enable bpf syscall on x64 and i386 |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 3.18 | [`60a3b2253c41`](https://git.kernel.org/torvalds/c/60a3b2253c41) (loose) | [kernel] | bpf: make eBPF interpreter images read-only |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 3.18 | [`17a5267067f3`](https://git.kernel.org/torvalds/c/17a5267067f3) | [kernel] | bpf: verifier (add verifier core) |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 3.18 | [`7cc78f8fa02c`](https://git.kernel.org/torvalds/c/7cc78f8fa02c) | [kernel] | context_tracking: Restore previous state in schedule_user |  | generic code, tag [kernel] | 3.10.0-239 |
| CANDIDATE | 3.18 | [`b3292e88e336`](https://git.kernel.org/torvalds/c/b3292e88e336) | [kernel] | crash_dump: Make is_kdump_kernel() accessible from modules |  | generic code, tag [kernel] | 3.10.0-168 |
| CANDIDATE | 3.18 | [`76835b0ebf8a`](https://git.kernel.org/torvalds/c/76835b0ebf8a) | [kernel] | futex: Ensure get_futex_key_refs() always implies a barrier |  | generic code, tag [kernel] | 3.10.0-241 |
| CANDIDATE | 3.18 | [`993b2ff22199`](https://git.kernel.org/torvalds/c/993b2ff22199) | [kernel] | futex: Mention key referencing differences between shared and private futexes |  | generic code, tag [kernel] | 3.10.0-241 |
| CANDIDATE | 3.18 | [`19d860a140be`](https://git.kernel.org/torvalds/c/19d860a140be) | [kernel] | handle suicide on late failure exits in execve() in search_binary_handler() |  | generic code, tag [kernel] | 3.10.0-919 |
| CANDIDATE | 3.18 | [`76a33061b932`](https://git.kernel.org/torvalds/c/76a33061b932) | [kernel] | irq_work: Force raised irq work to run on irq work interrupt |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.18 | [`c5c38ef3d703`](https://git.kernel.org/torvalds/c/c5c38ef3d703) | [kernel] | irq_work: Introduce arch_irq_work_has_interrupt() |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.18 | [`9a37110d20c9`](https://git.kernel.org/torvalds/c/9a37110d20c9) | [kernel] | locking: Add WARN_ON_ONCE lock assertion |  | generic code, tag [kernel] | 3.10.0-422 |
| CANDIDATE | 3.18 | [`2b6d83e2b8b7`](https://git.kernel.org/torvalds/c/2b6d83e2b8b7) | [kernel] | mailbox: Introduce framework for mailbox |  | generic code, tag [kernel] | 3.10.0-712 |
| CANDIDATE | 3.18 | [`2a16fc93d2c9`](https://git.kernel.org/torvalds/c/2a16fc93d2c9) | [kernel] | nohz: Avoid tick's double reprogramming in highres mode |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.18 | [`b5e995e671d8`](https://git.kernel.org/torvalds/c/b5e995e671d8) | [kernel] | nohz: Fix spurious periodic tick behaviour in low-res dynticks mode |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.18 | [`66ce7fb9807b`](https://git.kernel.org/torvalds/c/66ce7fb9807b) (loose) | [kernel] | phy: export phy_{read,write}_mmd_indirect |  | generic code, tag [kernel] | 3.10.0-976 |
| CANDIDATE | 3.18 | [`71fe97e18504`](https://git.kernel.org/torvalds/c/71fe97e18504) | [kernel] | prctl: PR_SET_MM -- factor out mmap_sem when updating mm::exe_file |  | generic code, tag [kernel] | 3.10.0-285 |
| CANDIDATE | 3.18 | [`f606b77f1a9e`](https://git.kernel.org/torvalds/c/f606b77f1a9e) | [kernel] | prctl: PR_SET_MM -- introduce PR_SET_MM_MAP operation |  | generic code, tag [kernel] | 3.10.0-285 |
| CANDIDATE | 3.18 | [`dd56af42bd82`](https://git.kernel.org/torvalds/c/dd56af42bd82) | [kernel] | rcu: Eliminate deadlock between CPU hotplug and expedited grace periods |  | generic code, tag [kernel] | 3.10.0-755 |
| CANDIDATE | 3.18 | [`f4579fc57cf4`](https://git.kernel.org/torvalds/c/f4579fc57cf4) | [kernel] | rcu: Fix attempt to avoid unsolicited offloading of callbacks |  | generic code, tag [kernel] | 3.10.0-485 |
| CANDIDATE | 3.18 | [`d7e29933969e`](https://git.kernel.org/torvalds/c/d7e29933969e) | [kernel] | rcu: Make rcu_barrier() understand about missing rcuo kthreads |  | generic code, tag [kernel] | 3.10.0-339 |
| CANDIDATE | 3.18 | [`54ef6df3f3f1`](https://git.kernel.org/torvalds/c/54ef6df3f3f1) | [kernel] | rcu: Provide counterpart to rcu_dereference() for non-RCU situations |  | generic code, tag [kernel] | 3.10.0-220 |
| CANDIDATE | 3.18 | [`9386c0b75dda`](https://git.kernel.org/torvalds/c/9386c0b75dda) | [kernel] | rcu: Rationalize kthread spawning |  | generic code, tag [kernel] | 3.10.0-339 |
| CANDIDATE | 3.18 | [`8d38821cbcf5`](https://git.kernel.org/torvalds/c/8d38821cbcf5) | [kernel] | resources: Add device-managed request/release_resource() |  | generic code, tag [kernel] | 3.10.0-382 |
| CANDIDATE | 3.18 | [`347abad981c1`](https://git.kernel.org/torvalds/c/347abad981c1) | [kernel] | sched, time: Fix build error with 64 bit cputime_t on 32 bit systems |  | generic code, tag [kernel] | 3.10.0-677 |
| CANDIDATE | 3.18 | [`6e998916dfe3`](https://git.kernel.org/torvalds/c/6e998916dfe3) | [kernel] | sched/cputime: Fix clock_nanosleep()/clock_gettime() inconsistency |  | generic code, tag [kernel] | 3.10.0-290 |
| CANDIDATE | 3.18 | [`23cfa361f3e5`](https://git.kernel.org/torvalds/c/23cfa361f3e5) | [kernel] | sched/cputime: Fix cpu_timer_sample_group() double accounting |  | generic code, tag [kernel] | 3.10.0-290 |
| CANDIDATE | 3.18 | [`2847c90e1b3a`](https://git.kernel.org/torvalds/c/2847c90e1b3a) | [kernel] | sched/fair: Care divide error in update_task_scan_period() |  | generic code, tag [kernel] | 3.10.0-201 |
| CANDIDATE | 3.18 | [`6419265899d9`](https://git.kernel.org/torvalds/c/6419265899d9) | [kernel] | sched/fair: Fix division by zero sysctl_numa_balancing_scan_size |  | generic code, tag [kernel] | 3.10.0-371 |
| CANDIDATE | 3.18 | [`e5673f280501`](https://git.kernel.org/torvalds/c/e5673f280501) | [kernel] | sched/fair: Remove double_lock_balance() from active_load_balance_cpu_stop() |  | generic code, tag [kernel] | 3.10.0-1092 |
| CANDIDATE | 3.18 | [`163122b7fcfa`](https://git.kernel.org/torvalds/c/163122b7fcfa) | [kernel] | sched/fair: Remove double_lock_balance() from load_balance() |  | generic code, tag [kernel] | 3.10.0-1092 |
| CANDIDATE | 3.18 | [`2ee507c47293`](https://git.kernel.org/torvalds/c/2ee507c47293) | [kernel] | sched: Add function single_task_running to let a task check if it is the only task running on a cpu |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | 3.18 | [`cbbce8220949`](https://git.kernel.org/torvalds/c/cbbce8220949) | [kernel] | sched: add some "wait..on_bit...timeout()" interfaces |  | generic code, tag [kernel] | 3.10.0-378 |
| CANDIDATE | 3.18 | [`da0c1e65b51a`](https://git.kernel.org/torvalds/c/da0c1e65b51a) | [kernel] | sched: Add wrapper for checking task_struct::on_rq |  | generic code, tag [kernel] | 3.10.0-907 |
| CANDIDATE | 3.18 | [`5aface53d1a0`](https://git.kernel.org/torvalds/c/5aface53d1a0) | [kernel] | sched: Change autogroup_move_group() to use for_each_thread() |  | generic code, tag [kernel] | 3.10.0-641 |
| CANDIDATE | 3.18 | [`1e4dda08b4c3`](https://git.kernel.org/torvalds/c/1e4dda08b4c3) | [kernel] | sched: change thread_group_cputime() to use for_each_thread() |  | generic code, tag [kernel] | 3.10.0-182 |
| CANDIDATE | 3.18 | [`65fdac08c264`](https://git.kernel.org/torvalds/c/65fdac08c264) | [kernel] | sched: Fix avg_load computation |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | 3.18 | [`eeb61e53ea19`](https://git.kernel.org/torvalds/c/eeb61e53ea19) | [kernel] | sched: Fix race between task_group and sched_task_group |  | generic code, tag [kernel] | 3.10.0-1075 |
| CANDIDATE | 3.18 | [`43f4d66637bc`](https://git.kernel.org/torvalds/c/43f4d66637bc) | [kernel] | sched: Improve sysbench performance by fixing spurious active migration |  | generic code, tag [kernel] | 3.10.0-585 |
| CANDIDATE | 3.18 | [`5bd96ab6fef6`](https://git.kernel.org/torvalds/c/5bd96ab6fef6) | [kernel] | sched: print_rq(): Don't use tasklist_lock |  | generic code, tag [kernel] | 3.10.0-1126.2 |
| CANDIDATE | 3.18 | [`90e362f4a75d`](https://git.kernel.org/torvalds/c/90e362f4a75d) | [kernel] | sched: Provide update_curr callbacks for stop/idle scheduling classes |  | generic code, tag [kernel] | 3.10.0-290 |
| CANDIDATE | 3.18 | [`8236d907ab34`](https://git.kernel.org/torvalds/c/8236d907ab34) | [kernel] | sched: Reduce contention in update_cfs_rq_blocked_load() |  | generic code, tag [kernel] | 3.10.0-1069 |
| CANDIDATE | 3.18 | [`a1e01829796a`](https://git.kernel.org/torvalds/c/a1e01829796a) | [kernel] | sched: Remove double_rq_lock() from __migrate_task() |  | generic code, tag [kernel] | 3.10.0-1092 |
| CANDIDATE | 3.18 | [`f7b8a47da17c`](https://git.kernel.org/torvalds/c/f7b8a47da17c) | [kernel] | sched: Remove lockdep check in sched_move_task() |  | generic code, tag [kernel] | 3.10.0-641 |
| CANDIDATE | 3.18 | [`aaecac4ad46b`](https://git.kernel.org/torvalds/c/aaecac4ad46b) | [kernel] | sched: Rename a misleading variable in build_overlap_sched_groups() |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 3.18 | [`d38e83c71527`](https://git.kernel.org/torvalds/c/d38e83c71527) | [kernel] | sched: s/do_each_thread/for_each_process_thread/ in debug.c |  | generic code, tag [kernel] | 3.10.0-1126.2 |
| CANDIDATE | 3.18 | [`cca26e8009d1`](https://git.kernel.org/torvalds/c/cca26e8009d1) | [kernel] | sched: Teach scheduler to understand TASK_ON_RQ_MIGRATING state |  | generic code, tag [kernel] | 3.10.0-907 |
| CANDIDATE | 3.18 | [`66339c31bc39`](https://git.kernel.org/torvalds/c/66339c31bc39) | [kernel] | sched: Use dl_bw_of() under RCU read lock |  | generic code, tag [kernel] | 3.10.0-443 |
| CANDIDATE | 3.18 | [`13aa72f0fd0a`](https://git.kernel.org/torvalds/c/13aa72f0fd0a) | [kernel] | seccomp: Refactor the filter callback and the API |  | CONFIG_SECCOMP=y in A37 | 3.10.0-911 |
| CANDIDATE | 3.18 | [`b1a8de1f5343`](https://git.kernel.org/torvalds/c/b1a8de1f5343) | [kernel] | softlockup: make detector be aware of task switch of processes hogging cpu |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 3.18 | [`1002d94d3076`](https://git.kernel.org/torvalds/c/1002d94d3076) | [kernel] | syscall.h: fix doc text for syscall_get_arch() |  | generic code, tag [kernel] | 3.10.0-185 |
| CANDIDATE | 3.18 | [`e78c3496790e`](https://git.kernel.org/torvalds/c/e78c3496790e) | [kernel] | time, signal: protect resource use statistics with seqlock |  | generic code, tag [kernel] | 3.10.0-182 |
| CANDIDATE | 3.18 | [`f530504a063c`](https://git.kernel.org/torvalds/c/f530504a063c) | [kernel] | watchdog: Remove unnecessary header files |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 3.18 | [`4846e3784585`](https://git.kernel.org/torvalds/c/4846e3784585) | [kernel] | watchdog: simplify definitions of WATCHDOG_NOWAYOUT(_INIT_STATUS)? |  | generic code, tag [kernel] | 3.10.0-899 |
| CANDIDATE | 3.18 | [`789cbbeca4eb`](https://git.kernel.org/torvalds/c/789cbbeca4eb) | [kernel] | workqueue: Add quiescent state between work items |  | generic code, tag [kernel] | 3.10.0-188 |
| CANDIDATE | 3.19 | [`9e3961a09798`](https://git.kernel.org/torvalds/c/9e3961a09798) (loose) | [kernel] | add panic_on_warn |  | generic code, tag [kernel] | 3.10.0-206 |
| CANDIDATE | 3.19 | [`9216efafc52f`](https://git.kernel.org/torvalds/c/9216efafc52f) | [kernel] | asm-generic/io.h: Reconcile I/O accessor overrides |  | generic code, tag [kernel] | 3.10.0-1008 |
| CANDIDATE | 3.19 | [`0288d7183c41`](https://git.kernel.org/torvalds/c/0288d7183c41) | [kernel] | audit: convert status version to a feature bitmap |  | CONFIG_AUDIT=y in A37 | 3.10.0-246 |
| CANDIDATE | 3.19 | [`3640dcfa4fd0`](https://git.kernel.org/torvalds/c/3640dcfa4fd0) | [kernel] | audit: don't attempt to lookup PIDs when changing PID filtering audit rules |  | CONFIG_AUDIT=y in A37 | 3.10.0-221 |
| CANDIDATE | 3.19 | [`041d7b98ffe5`](https://git.kernel.org/torvalds/c/041d7b98ffe5) | [kernel] | audit: restore AUDIT_LOGINUID unset ABI |  | CONFIG_AUDIT=y in A37 | 3.10.0-230 |
| CANDIDATE | 3.19 | [`394ffa503bc4`](https://git.kernel.org/torvalds/c/394ffa503bc4) | [kernel] | blk: introduce generic io stat accounting help function |  | generic code, tag [kernel] | 3.10.0-640 |
| CANDIDATE | 3.19 | [`9c3997601d51`](https://git.kernel.org/torvalds/c/9c3997601d51) | [kernel] | bpf: reduce verifier memory consumption |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 3.19 | [`e4e458b45c58`](https://git.kernel.org/torvalds/c/e4e458b45c58) | [perf] | calloc/xcalloc: Fix argument order |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | 3.19 | [`43239cbe79fc`](https://git.kernel.org/torvalds/c/43239cbe79fc) (loose) | [kernel] | Change ASSIGN_ONCE(val, x) to WRITE_ONCE(x, val) | CVE-2015-3339 | generic code, tag [kernel] | 3.10.0-260 |
| CANDIDATE | 3.19 | [`b82b6cca4880`](https://git.kernel.org/torvalds/c/b82b6cca4880) | [kernel] | cpuidle: Invert CPUIDLE_FLAG_TIME_VALID logic |  | generic code, tag [kernel] | 3.10.0-547 |
| CANDIDATE | 3.19 | [`482a3767e508`](https://git.kernel.org/torvalds/c/482a3767e508) | [kernel] | exit: reparent: call forget_original_parent() under tasklist_lock |  | generic code, tag [kernel] | 3.10.0-1160.15.1 |
| CANDIDATE | 3.19 | [`f8b8be8a310a`](https://git.kernel.org/torvalds/c/f8b8be8a310a) | [kernel] | ftrace, kprobes: Support IPMODIFY flag to find IP modify conflict |  | generic code, tag [kernel] | 3.10.0-406 |
| CANDIDATE | 3.19 | [`2d926c15d629`](https://git.kernel.org/torvalds/c/2d926c15d629) | [kernel] | hrtimer: Fix incorrect tai offset calculation for non high-res timer systems |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 3.19 | [`97b0c7bd2e86`](https://git.kernel.org/torvalds/c/97b0c7bd2e86) | [kernel] | mailbox: add tx_prepare client callback |  | generic code, tag [kernel] | 3.10.0-712 |
| CANDIDATE | 3.19 | [`4cbbdb51cc92`](https://git.kernel.org/torvalds/c/4cbbdb51cc92) | [kernel] | pci_ids: Add PCI device IDs for F15h M60h |  | generic code, tag [kernel] | 3.10.0-248 |
| CANDIDATE | 3.19 | [`afdc34a3d3b8`](https://git.kernel.org/torvalds/c/afdc34a3d3b8) | [kernel] | printk: Add per_cpu printk func to allow printk to be diverted |  | generic code, tag [kernel] | 3.10.0-426 |
| CANDIDATE | 3.19 | [`1fb8915b9876`](https://git.kernel.org/torvalds/c/1fb8915b9876) | [kernel] | printk: Do not disable preemption for accessing printk_func |  | generic code, tag [kernel] | 3.10.0-589 |
| CANDIDATE | 3.19 | [`230fa253df63`](https://git.kernel.org/torvalds/c/230fa253df63) (loose) | [kernel] | Provide READ_ONCE and ASSIGN_ONCE | CVE-2015-3339 | generic code, tag [kernel] | 3.10.0-260 |
| CANDIDATE | 3.19 | [`89e3f90995b3`](https://git.kernel.org/torvalds/c/89e3f90995b3) | [kernel] | ratelimit: add initialization macro |  | generic code, tag [kernel] | 3.10.0-618 |
| CANDIDATE | 3.19 | [`5b1efc027c0b`](https://git.kernel.org/torvalds/c/5b1efc027c0b) (loose) | [kernel] | res_counter: remove the unused API |  | generic code, tag [kernel] | 3.10.0-363 |
| CANDIDATE | 3.19 | [`7d4d26966e0b`](https://git.kernel.org/torvalds/c/7d4d26966e0b) | [kernel] | sched, smp: Correctly deal with nested sleeps |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 3.19 | [`75e23e49dbdd`](https://git.kernel.org/torvalds/c/75e23e49dbdd) | [kernel] | sched/core: Use dl_bw_of() under rcu_read_lock_sched() |  | generic code, tag [kernel] | 3.10.0-443 |
| CANDIDATE | 3.19 | [`7f1a169b88f5`](https://git.kernel.org/torvalds/c/7f1a169b88f5) | [kernel] | sched/fair: Fix RCU stall upon -ENOMEM in sched_create_group() |  | generic code, tag [kernel] | 3.10.0-1160.8.1 |
| CANDIDATE | 3.19 | [`cb0b9f2445cd`](https://git.kernel.org/torvalds/c/cb0b9f2445cd) | [kernel] | sched/fair: Fix stale overloaded status in the busiest group finding logic |  | generic code, tag [kernel] | 3.10.0-585 |
| CANDIDATE | 3.19 | [`cb6538e740d7`](https://git.kernel.org/torvalds/c/cb6538e740d7) | [kernel] | sched/wait: Fix a kthread race with wait_woken() |  | generic code, tag [kernel] | 3.10.0-422 |
| CANDIDATE | 3.19 | [`61ada528dea0`](https://git.kernel.org/torvalds/c/61ada528dea0) | [kernel] | sched/wait: Provide infrastructure to deal with nested blocking |  | generic code, tag [kernel] | 3.10.0-422 |
| CANDIDATE | 3.19 | [`bb2bc55a694d`](https://git.kernel.org/torvalds/c/bb2bc55a694d) | [kernel] | sched: Fix crash if cpuset_cpumask_can_shrink() is passed an empty cpumask |  | generic code, tag [kernel] | 3.10.0-443 |
| CANDIDATE | 3.19 | [`b74e6278fd6d`](https://git.kernel.org/torvalds/c/b74e6278fd6d) | [kernel] | sched: Fix KMALLOC_MAX_SIZE overflow during cpumask allocation |  | generic code, tag [kernel] | 3.10.0-280 |
| CANDIDATE | 3.19 | [`1a43a14a5bd9`](https://git.kernel.org/torvalds/c/1a43a14a5bd9) | [kernel] | sched: Fix schedule_tail() to disable preemption |  | generic code, tag [kernel] | 3.10.0-1123.1 |
| CANDIDATE | 3.19 | [`6c1d9410f007`](https://git.kernel.org/torvalds/c/6c1d9410f007) | [kernel] | sched: Move p->nr_cpus_allowed check to select_task_rq() |  | generic code, tag [kernel] | 3.10.0-609 |
| CANDIDATE | 3.19 | [`9a92a6ce6f84`](https://git.kernel.org/torvalds/c/9a92a6ce6f84) | [kernel] | stacktrace: introduce snprint_stack_trace for buffer output |  | generic code, tag [kernel] | 3.10.0-1139 |
| CANDIDATE | 3.19 | [`cdba2ec538d9`](https://git.kernel.org/torvalds/c/cdba2ec538d9) | [kernel] | time: Expose getrawmonotonic64 for in-kernel uses |  | generic code, tag [kernel] | 3.10.0-442 |
| CANDIDATE | 3.19 | [`26488b372327`](https://git.kernel.org/torvalds/c/26488b372327) | [kernel] | tracing: Add entry->next_cpu to trace_ctxwake_bin() |  | CONFIG_FTRACE=y in A37 | 3.10.0-590 |
| CANDIDATE | 3.19 | [`19a7fe206232`](https://git.kernel.org/torvalds/c/19a7fe206232) | [kernel] | tracing: Add trace_seq_has_overflowed() and trace_handle_return() |  | CONFIG_FTRACE=y in A37 | 3.10.0-590 |
| CANDIDATE | 3.19 | [`8e2e095cbeca`](https://git.kernel.org/torvalds/c/8e2e095cbeca) | [kernel] | tracing: Fix return value of ftrace_raw_output_prep() |  | CONFIG_FTRACE=y in A37 | 3.10.0-590 |
| CANDIDATE | 4.0 | [`fd3522fdc840`](https://git.kernel.org/torvalds/c/fd3522fdc840) | [kernel] | audit: enable filename recording via getname_kernel() |  | CONFIG_AUDIT=y in A37 | 3.10.0-230 |
| CANDIDATE | 4.0 | [`57c59f5837bd`](https://git.kernel.org/torvalds/c/57c59f5837bd) | [kernel] | audit: fix filename matching in __audit_inode() and __audit_inode_child() |  | CONFIG_AUDIT=y in A37 | 3.10.0-230 |
| CANDIDATE | 4.0 | [`55422d0bd292`](https://git.kernel.org/torvalds/c/55422d0bd292) | [kernel] | audit: replace getname()/putname() hacks with reference counters |  | CONFIG_AUDIT=y in A37 | 3.10.0-230 |
| CANDIDATE | 4.0 | [`536fa402221f`](https://git.kernel.org/torvalds/c/536fa402221f) | [kernel] | compiler: Allow 1- and 2-byte smp_load_acquire() and smp_store_release() |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.0 | [`cb4188ac8e57`](https://git.kernel.org/torvalds/c/cb4188ac8e57) | [kernel] | compiler: introduce __alias(symbol) shortcut |  | generic code, tag [kernel] | 3.10.0-657 |
| CANDIDATE | 4.0 | [`f1bbc032e451`](https://git.kernel.org/torvalds/c/f1bbc032e451) | [kernel] | cpumask, nodemask: implement cpumask/nodemask_pr_args() |  | generic code, tag [kernel] | 3.10.0-302 |
| CANDIDATE | 4.0 | [`79063bffc81f`](https://git.kernel.org/torvalds/c/79063bffc81f) | [kernel] | cpuset: fix a warning when clearing configured masks in old hierarchy |  | CONFIG_CGROUPS=y in A37 | 3.10.0-958 |
| CANDIDATE | 4.0 | [`79063bffc81f`](https://git.kernel.org/torvalds/c/79063bffc81f) | [kernel] | cpuset: fix a warning when clearing configured masks in old hierarchy |  | CONFIG_CGROUPS=y in A37 | 3.10.0-939 |
| CANDIDATE | 4.0 | [`790317e1b266`](https://git.kernel.org/torvalds/c/790317e1b266) | [kernel] | cpuset: initialize effective masks when clone_children is enabled |  | CONFIG_CGROUPS=y in A37 | 3.10.0-958 |
| CANDIDATE | 4.0 | [`4fe7ffb7e17c`](https://git.kernel.org/torvalds/c/4fe7ffb7e17c) | [kernel] | genirq: Fix null pointer reference in irq_set_affinity_hint() |  | generic code, tag [kernel] | 3.10.0-1031 |
| CANDIDATE | 4.0 | [`e2e64a932556`](https://git.kernel.org/torvalds/c/e2e64a932556) | [kernel] | genirq: Set initial affinity in irq_set_affinity_hint() |  | generic code, tag [kernel] | 3.10.0-1031 |
| CANDIDATE | 4.0 | [`edb0ec0725bb`](https://git.kernel.org/torvalds/c/edb0ec0725bb) | [kernel] | kexec, kconfig: spell "architecture" properly |  | generic code, tag [kernel] | 3.10.0-590 |
| CANDIDATE | 4.0 | [`886d3dfa85d5`](https://git.kernel.org/torvalds/c/886d3dfa85d5) | [kernel] | lib/radix-tree.c: change to simpler include |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.0 | [`a3449ded128d`](https://git.kernel.org/torvalds/c/a3449ded128d) | [kernel] | list_nulls: fix missing header |  | generic code, tag [kernel] | 3.10.0-634 |
| CANDIDATE | 4.0 | [`d84b6728c54d`](https://git.kernel.org/torvalds/c/d84b6728c54d) | [kernel] | locking/mcs: Better differentiate between MCS variants |  | generic code, tag [kernel] | 3.10.0-629 |
| CANDIDATE | 4.0 | [`51587bcf31d0`](https://git.kernel.org/torvalds/c/51587bcf31d0) | [kernel] | locking/mutex: Explicitly mark task as running after wakeup |  | generic code, tag [kernel] | 3.10.0-585 |
| CANDIDATE | 4.0 | [`dd36929720f4`](https://git.kernel.org/torvalds/c/dd36929720f4) (loose) | [kernel] | make READ_ONCE() valid on const arguments | CVE-2015-3339 | generic code, tag [kernel] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`0f989f749b51`](https://git.kernel.org/torvalds/c/0f989f749b51) | [kernel] | module_device_table: fix some callsites |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 4.0 | [`c1317ec2b906`](https://git.kernel.org/torvalds/c/c1317ec2b906) | [kernel] | perf: Pass the event to arch_perf_update_userpage() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-573 |
| CANDIDATE | 4.0 | [`90e97820619d`](https://git.kernel.org/torvalds/c/90e97820619d) | [kernel] | resources: Move struct resource_list_entry from ACPI into resource core |  | generic code, tag [kernel] | 3.10.0-437 |
| CANDIDATE | 4.0 | [`ff6f2d29bd31`](https://git.kernel.org/torvalds/c/ff6f2d29bd31) | [kernel] | sched/idle: Add missing checks to the exit condition of cpu_idle_poll() |  | generic code, tag [kernel] | 3.10.0-654 |
| CANDIDATE | 4.0 | [`868933359a3b`](https://git.kernel.org/torvalds/c/868933359a3b) | [kernel] | sched: Fix hrtick_start() on UP |  | generic code, tag [kernel] | 3.10.0-443 |
| CANDIDATE | 4.0 | [`3960c8c0c789`](https://git.kernel.org/torvalds/c/3960c8c0c789) | [kernel] | sched: Make dl_task_time() use task_rq_lock() |  | generic code, tag [kernel] | 3.10.0-443 |
| CANDIDATE | 4.0 | [`113948d841e8`](https://git.kernel.org/torvalds/c/113948d841e8) | [kernel] | spinlock: Add spin_lock_bh_nested() |  | generic code, tag [kernel] | 3.10.0-368 |
| CANDIDATE | 4.0 | [`74d23cc704d1`](https://git.kernel.org/torvalds/c/74d23cc704d1) | [kernel] | time: move the timecounter/cyclecounter code into its own file |  | generic code, tag [kernel] | 3.10.0-271 |
| CANDIDATE | 4.0 | [`2eebdde6528a`](https://git.kernel.org/torvalds/c/2eebdde6528a) | [kernel] | timecounter: keep track of accumulated fractional nanoseconds |  | generic code, tag [kernel] | 3.10.0-271 |
| CANDIDATE | 4.0 | [`796c1efd6fa0`](https://git.kernel.org/torvalds/c/796c1efd6fa0) | [kernel] | timecounter: provide a helper function to shift the time |  | generic code, tag [kernel] | 3.10.0-271 |
| CANDIDATE | 4.0 | [`1891172aa5c3`](https://git.kernel.org/torvalds/c/1891172aa5c3) | [kernel] | timecounter: provide a macro to initialize the cyclecounter mask field |  | generic code, tag [kernel] | 3.10.0-271 |
| CANDIDATE | 4.0 | [`affe3e85ae78`](https://git.kernel.org/torvalds/c/affe3e85ae78) | [kernel] | timekeeping: Pass readout base to update_fast_timekeeper() |  | generic code, tag [kernel] | 3.10.0-573 |
| CANDIDATE | 4.0 | [`a127d2bcf1fb`](https://git.kernel.org/torvalds/c/a127d2bcf1fb) | [kernel] | timers/tick/broadcast-hrtimer: Fix suspicious RCU usage in idle loop |  | generic code, tag [kernel] | 3.10.0-249 |
| CANDIDATE | 4.0 | [`6ea22486ba46`](https://git.kernel.org/torvalds/c/6ea22486ba46) | [kernel] | tracing: Add array printing helper |  | CONFIG_FTRACE=y in A37 | 3.10.0-544 |
| CANDIDATE | 4.1 | [`32a158325acf`](https://git.kernel.org/torvalds/c/32a158325acf) | [kernel] | clockevents: export clockevents_unbind_device instead of clockevents_unbind |  | generic code, tag [kernel] | 3.10.0-355 |
| CANDIDATE | 4.1 | [`345527b1edce`](https://git.kernel.org/torvalds/c/345527b1edce) | [kernel] | clockevents: Fix cpu_down() race for hrtimer based broadcasting |  | generic code, tag [kernel] | 3.10.0-250 |
| CANDIDATE | 4.1 | [`a3a9c7dff257`](https://git.kernel.org/torvalds/c/a3a9c7dff257) | [kernel] | context_tracking: Add stub context_tracking_is_enabled |  | generic code, tag [kernel] | 3.10.0-239 |
| CANDIDATE | 4.1 | [`efc1e2c9bcba`](https://git.kernel.org/torvalds/c/efc1e2c9bcba) | [kernel] | context_tracking: Export context_tracking_user_enter/exit |  | generic code, tag [kernel] | 3.10.0-239 |
| CANDIDATE | 4.1 | [`3aab4f50bff8`](https://git.kernel.org/torvalds/c/3aab4f50bff8) | [kernel] | context_tracking: Generalize context tracking APIs to support user and guest |  | generic code, tag [kernel] | 3.10.0-239 |
| CANDIDATE | 4.1 | [`c467ea763fd5`](https://git.kernel.org/torvalds/c/c467ea763fd5) | [kernel] | context_tracking: Rename context symbols to prepare for transition state |  | generic code, tag [kernel] | 3.10.0-239 |
| CANDIDATE | 4.1 | [`19fdd98b6253`](https://git.kernel.org/torvalds/c/19fdd98b6253) | [kernel] | context_tracking: Run vtime_user_enter/exit only when state == CONTEXT_USER |  | generic code, tag [kernel] | 3.10.0-239 |
| CANDIDATE | 4.1 | [`47b8ea7186aa`](https://git.kernel.org/torvalds/c/47b8ea7186aa) (loose) | [kernel] | cpusets: isolcpus: exclude isolcpus from load balancing in cpusets |  | generic code, tag [kernel] | 3.10.0-236 |
| CANDIDATE | 4.1 | [`02cea3958664`](https://git.kernel.org/torvalds/c/02cea3958664) | [kernel] | genirq: Provide disable_hardirq() |  | generic code, tag [kernel] | 3.10.0-875 |
| CANDIDATE | 4.1 | [`7829fb09a2b4`](https://git.kernel.org/torvalds/c/7829fb09a2b4) | [kernel] | lib: make memzero_explicit more robust against dead store elimination |  | generic code, tag [kernel] | 3.10.0-657 |
| CANDIDATE | 4.1 | [`e8c6158fef15`](https://git.kernel.org/torvalds/c/e8c6158fef15) | [kernel] | mm: consolidate all page-flags helpers in <linux/page-flags.h> |  | generic code, tag [kernel] | 3.10.0-1058 |
| CANDIDATE | 4.1 | [`2b68f6caeac2`](https://git.kernel.org/torvalds/c/2b68f6caeac2) | [kernel] | mm: expose arch_mmap_rnd when available |  | generic code, tag [kernel] | 3.10.0-589 |
| CANDIDATE | 4.1 | [`204db6ed1774`](https://git.kernel.org/torvalds/c/204db6ed1774) | [kernel] | mm: fold arch_randomize_brk into ARCH_HAS_ELF_RANDOMIZE |  | generic code, tag [kernel] | 3.10.0-589 |
| CANDIDATE | 4.1 | [`90f31d0ea888`](https://git.kernel.org/torvalds/c/90f31d0ea888) | [kernel] | mm: rcu-protected get_mm_exe_file() |  | generic code, tag [kernel] | 3.10.0-510 |
| CANDIDATE | 4.1 | [`6a279230391b`](https://git.kernel.org/torvalds/c/6a279230391b) | [kernel] | perf: Add a capability for AUX_NO_SG pmus to do software double buffering |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-352 |
| CANDIDATE | 4.1 | [`bed5b25ad9c8`](https://git.kernel.org/torvalds/c/bed5b25ad9c8) | [kernel] | perf: Add a pmu capability for "exclusive" events |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-352 |
| CANDIDATE | 4.1 | [`fdc2670666f4`](https://git.kernel.org/torvalds/c/fdc2670666f4) | [kernel] | perf: Add API for PMUs to write to the AUX area |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-352 |
| CANDIDATE | 4.1 | [`45bfb2e50471`](https://git.kernel.org/torvalds/c/45bfb2e50471) | [kernel] | perf: Add AUX area to ring buffer for raw data streams |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-352 |
| CANDIDATE | 4.1 | [`68db7e98c3a6`](https://git.kernel.org/torvalds/c/68db7e98c3a6) | [kernel] | perf: Add AUX record |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-352 |
| CANDIDATE | 4.1 | [`ec0d7729bbae`](https://git.kernel.org/torvalds/c/ec0d7729bbae) | [kernel] | perf: Add ITRACE_START record to indicate that tracing has started |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-352 |
| CANDIDATE | 4.1 | [`34f439278cef`](https://git.kernel.org/torvalds/c/34f439278cef) | [kernel] | perf: Add per event clockid support |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-573 |
| CANDIDATE | 4.1 | [`1a5941312414`](https://git.kernel.org/torvalds/c/1a5941312414) | [kernel] | perf: Add wakeup watermark control to the AUX area |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-352 |
| CANDIDATE | 4.1 | [`8b10c5e2b59e`](https://git.kernel.org/torvalds/c/8b10c5e2b59e) | [kernel] | perf: Annotate inherited event ctx->mutex recursion |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-360 |
| CANDIDATE | 4.1 | [`aa319bcd3663`](https://git.kernel.org/torvalds/c/aa319bcd3663) | [kernel] | perf: Disallow sparse AUX allocations for non-SG PMUs in overwrite mode |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-352 |
| CANDIDATE | 4.1 | [`dead9f29ddcc`](https://git.kernel.org/torvalds/c/dead9f29ddcc) | [kernel] | perf: Fix race in BPF program unregister |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.1 | [`0a4e38e64f5e`](https://git.kernel.org/torvalds/c/0a4e38e64f5e) | [kernel] | perf: Support high-order allocations for AUX space |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-352 |
| CANDIDATE | 4.1 | [`2023a0d2829e`](https://git.kernel.org/torvalds/c/2023a0d2829e) | [kernel] | perf: Support overwrite mode for the AUX area |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-352 |
| CANDIDATE | 4.1 | [`1d4a9c17d4d2`](https://git.kernel.org/torvalds/c/1d4a9c17d4d2) | [kernel] | pm / sleep: add configurable delay for pm_test |  | generic code, tag [kernel] | 3.10.0-652 |
| CANDIDATE | 4.1 | [`5d8a4219a079`](https://git.kernel.org/torvalds/c/5d8a4219a079) | [kernel] | power_supply core: support use of devres to register/unregister a power supply |  | CONFIG_POWER_SUPPLY=y in A37 | 3.10.0-612 |
| CANDIDATE | 4.1 | [`6e399cd144d8`](https://git.kernel.org/torvalds/c/6e399cd144d8) | [kernel] | prctl: avoid using mmap_sem for exe_file serialization |  | generic code, tag [kernel] | 3.10.0-510 |
| CANDIDATE | 4.1 | [`b826565aaf88`](https://git.kernel.org/torvalds/c/b826565aaf88) | [kernel] | rcu: Reverse rcu_dereference_check() conditions |  | generic code, tag [kernel] | 3.10.0-622 |
| CANDIDATE | 4.1 | [`0687eba7872d`](https://git.kernel.org/torvalds/c/0687eba7872d) | [perf] | revert "perf probe: Fix to fall back to find probe point in symbols" |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | 4.1 | [`3c18d447b3b3`](https://git.kernel.org/torvalds/c/3c18d447b3b3) | [kernel] | sched/core: Check for available DL bandwidth in cpuset_cpu_inactive() |  | generic code, tag [kernel] | 3.10.0-443 |
| CANDIDATE | 4.1 | [`62a935b256f6`](https://git.kernel.org/torvalds/c/62a935b256f6) | [kernel] | sched/core: Drop debugging leftover trace_printk call |  | generic code, tag [kernel] | 3.10.0-443 |
| CANDIDATE | 4.1 | [`533445c6e533`](https://git.kernel.org/torvalds/c/533445c6e533) | [kernel] | sched/core: Fix regression in cpuset_cpu_inactive() for suspend |  | generic code, tag [kernel] | 3.10.0-443 |
| CANDIDATE | 4.1 | [`1e78cdbd9b22`](https://git.kernel.org/torvalds/c/1e78cdbd9b22) | [kernel] | sched/rt/nohz: Stop scheduler tick if running realtime task |  | generic code, tag [kernel] | 3.10.0-247 |
| CANDIDATE | 4.1 | [`ca6d75e6908e`](https://git.kernel.org/torvalds/c/ca6d75e6908e) | [kernel] | sched: Add struct rq::cpu_capacity_orig |  | generic code, tag [kernel] | 3.10.0-712 |
| CANDIDATE | 4.1 | [`0782e63bc6fe`](https://git.kernel.org/torvalds/c/0782e63bc6fe) | [kernel] | sched: Handle priority boosted tasks proper in setscheduler() |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 4.1 | [`d4573c3e1c99`](https://git.kernel.org/torvalds/c/d4573c3e1c99) | [kernel] | sched: Improve load balancing in the presence of idle CPUs |  | generic code, tag [kernel] | 3.10.0-585 |
| CANDIDATE | 4.1 | [`3fa0818b3c85`](https://git.kernel.org/torvalds/c/3fa0818b3c85) (loose) | [kernel] | sched: isolcpu: make cpu_isolated_map visible outside scheduler |  | generic code, tag [kernel] | 3.10.0-236 |
| CANDIDATE | 4.1 | [`1aaf90a4b88a`](https://git.kernel.org/torvalds/c/1aaf90a4b88a) | [kernel] | sched: Move CFS tasks to CPUs with higher capacity |  | generic code, tag [kernel] | 3.10.0-712 |
| CANDIDATE | 4.1 | [`8038dad7e888`](https://git.kernel.org/torvalds/c/8038dad7e888) | [kernel] | smpboot: Add common code for notification from dying CPU |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.1 | [`4a4ad80d32ce`](https://git.kernel.org/torvalds/c/4a4ad80d32ce) | [kernel] | time: Add timerkeeper::tkr_raw |  | generic code, tag [kernel] | 3.10.0-380 |
| CANDIDATE | 4.1 | [`f09cb9a1808e`](https://git.kernel.org/torvalds/c/f09cb9a1808e) | [kernel] | time: Introduce tk_fast_raw |  | generic code, tag [kernel] | 3.10.0-573 |
| CANDIDATE | 4.1 | [`4498e7467e9e`](https://git.kernel.org/torvalds/c/4498e7467e9e) | [kernel] | time: Parametrize all tk_fast_mono users |  | generic code, tag [kernel] | 3.10.0-573 |
| CANDIDATE | 4.1 | [`876e78818def`](https://git.kernel.org/torvalds/c/876e78818def) | [kernel] | time: Rename timekeeper::tkr to timekeeper::tkr_mono |  | generic code, tag [kernel] | 3.10.0-380 |
| CANDIDATE | 4.1 | [`b337a9380f7e`](https://git.kernel.org/torvalds/c/b337a9380f7e) | [kernel] | timer: Allocate per-cpu tvec_base's statically |  | generic code, tag [kernel] | 3.10.0-896 |
| CANDIDATE | 4.1 | [`8def906044c0`](https://git.kernel.org/torvalds/c/8def906044c0) | [kernel] | timer: Don't initialize 'tvec_base' on hotplug |  | generic code, tag [kernel] | 3.10.0-896 |
| CANDIDATE | 4.1 | [`3650b57fdf20`](https://git.kernel.org/torvalds/c/3650b57fdf20) | [kernel] | timer: Further simplify the SMP and HOTPLUG logic |  | generic code, tag [kernel] | 3.10.0-896 |
| CANDIDATE | 4.1 | [`2541517c32be`](https://git.kernel.org/torvalds/c/2541517c32be) | [kernel] | tracing, perf: Implement BPF programs attached to kprobes |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.1 | [`72cbbc899424`](https://git.kernel.org/torvalds/c/72cbbc899424) | [kernel] | tracing: Add kprobe flag |  | CONFIG_FTRACE=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.1 | [`3193899d4dd5`](https://git.kernel.org/torvalds/c/3193899d4dd5) | [kernel] | tracing: Fix possible out of bounds memory access when parsing enums |  | CONFIG_FTRACE=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.1 | [`d939be3add4f`](https://git.kernel.org/torvalds/c/d939be3add4f) | [perf] | treewide: Fix typo in printk messages |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | 4.1 | [`b3738d293233`](https://git.kernel.org/torvalds/c/b3738d293233) | [perf] | watchdog: Add watchdog enable/disable all functions |  | generic code, tag [perf] | 3.10.0-284 |
| CANDIDATE | 4.1 | [`b2f57c3a0df9`](https://git.kernel.org/torvalds/c/b2f57c3a0df9) | [kernel] | watchdog: clean up some function names and arguments |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.1 | [`195daf665a62`](https://git.kernel.org/torvalds/c/195daf665a62) | [kernel] | watchdog: enable the new user interface of the watchdog mechanism |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.1 | [`1173ff09b9c5`](https://git.kernel.org/torvalds/c/1173ff09b9c5) | [kernel] | watchdog: fix double lock in watchdog_nmi_enable_all |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.1 | [`ab992dc38f9a`](https://git.kernel.org/torvalds/c/ab992dc38f9a) | [kernel] | watchdog: Fix merge 'conflict' |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.1 | [`bcfba4f4bf3c`](https://git.kernel.org/torvalds/c/bcfba4f4bf3c) | [kernel] | watchdog: implement error handling for failure to set up hardware perf events |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.1 | [`ef246a216b02`](https://git.kernel.org/torvalds/c/ef246a216b02) | [kernel] | watchdog: introduce proc_watchdog_common() |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.1 | [`83a80a39075a`](https://git.kernel.org/torvalds/c/83a80a39075a) | [kernel] | watchdog: introduce separate handlers for parameters in /proc/sys/kernel |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.1 | [`692297d8f968`](https://git.kernel.org/torvalds/c/692297d8f968) | [kernel] | watchdog: introduce the hardlockup_detector_disable() function |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.1 | [`a0c9cbb93da9`](https://git.kernel.org/torvalds/c/a0c9cbb93da9) | [kernel] | watchdog: introduce the proc_watchdog_update() function |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.1 | [`f54c2274f551`](https://git.kernel.org/torvalds/c/f54c2274f551) | [kernel] | watchdog: move definition of 'watchdog_proc_mutex' outside of proc_dowatchdog() |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.1 | [`84d56e66b9b4`](https://git.kernel.org/torvalds/c/84d56e66b9b4) | [kernel] | watchdog: new definitions and variables, initialization |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.2 | [`b193217e6dc3`](https://git.kernel.org/torvalds/c/b193217e6dc3) | [kernel] | alarmtimer: Get rid of unused return value |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 4.2 | [`4ecd4fef3a07`](https://git.kernel.org/torvalds/c/4ecd4fef3a07) | [kernel] | block: use an atomic_t for mq_freeze_depth |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.2 | [`04fd61ab36ec`](https://git.kernel.org/torvalds/c/04fd61ab36ec) | [kernel] | bpf: allow bpf programs to tail-call other bpf programs |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.2 | [`f6d133f877c8`](https://git.kernel.org/torvalds/c/f6d133f877c8) | [kernel] | compiler-gcc.h: neatening |  | generic code, tag [kernel] | 3.10.0-657 |
| CANDIDATE | 4.2 | [`24ee3cf89bef`](https://git.kernel.org/torvalds/c/24ee3cf89bef) | [kernel] | cpuset: use trialcs->mems_allowed as a temp variable |  | CONFIG_CGROUPS=y in A37 | 3.10.0-958 |
| CANDIDATE | 4.2 | [`2e4b0d3fe88b`](https://git.kernel.org/torvalds/c/2e4b0d3fe88b) | [kernel] | futex: Remove bogus hrtimer_active() check |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 4.2 | [`c64301a230a6`](https://git.kernel.org/torvalds/c/c64301a230a6) | [kernel] | genirq: Introduce helper function irq_data_get_affinity_mask() |  | generic code, tag [kernel] | 3.10.0-992 |
| CANDIDATE | 4.2 | [`a614a610ac9b`](https://git.kernel.org/torvalds/c/a614a610ac9b) | [kernel] | genirq: Remove bogus restriction in irq_move_mask_irq() |  | generic code, tag [kernel] | 3.10.0-1031 |
| CANDIDATE | 4.2 | [`5de2755c8c8b`](https://git.kernel.org/torvalds/c/5de2755c8c8b) | [kernel] | hrtimer: Allow concurrent hrtimer_start() for self restarting timers |  | generic code, tag [kernel] | 3.10.0-920 |
| CANDIDATE | 4.2 | [`887d9dc989eb`](https://git.kernel.org/torvalds/c/887d9dc989eb) | [kernel] | hrtimer: Allow hrtimer::function() to free the timer |  | generic code, tag [kernel] | 3.10.0-984 |
| CANDIDATE | 4.2 | [`19d9f4225dd6`](https://git.kernel.org/torvalds/c/19d9f4225dd6) | [kernel] | hrtimer: Avoid locking in hrtimer_cancel() if timer not active |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 4.2 | [`8edfb0362e8e`](https://git.kernel.org/torvalds/c/8edfb0362e8e) | [kernel] | hrtimer: Fix hrtimer_is_queued() hole |  | generic code, tag [kernel] | 3.10.0-984 |
| CANDIDATE | 4.2 | [`58f1f803f1d6`](https://git.kernel.org/torvalds/c/58f1f803f1d6) | [kernel] | hrtimer: Get rid of __hrtimer_start_range_ns() |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 4.2 | [`c6eb3f70d448`](https://git.kernel.org/torvalds/c/c6eb3f70d448) | [kernel] | hrtimer: Get rid of hrtimer softirq |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 4.2 | [`21d6d52a1b70`](https://git.kernel.org/torvalds/c/21d6d52a1b70) | [kernel] | hrtimer: Get rid of softirq time |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 4.2 | [`895bdfa793f6`](https://git.kernel.org/torvalds/c/895bdfa793f6) | [kernel] | hrtimer: Keep pointer to first timer and simplify __remove_hrtimer() |  | generic code, tag [kernel] | 3.10.0-984 |
| CANDIDATE | 4.2 | [`868a3e915f7f`](https://git.kernel.org/torvalds/c/868a3e915f7f) | [kernel] | hrtimer: Make offset update smarter |  | generic code, tag [kernel] | 3.10.0-305 |
| CANDIDATE | 4.2 | [`3f7b349ac148`](https://git.kernel.org/torvalds/c/3f7b349ac148) | [kernel] | hrtimer: Remove bogus hrtimer_active() check |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 4.2 | [`c04dca02bc73`](https://git.kernel.org/torvalds/c/c04dca02bc73) | [kernel] | hrtimer: Remove HRTIMER_STATE_MIGRATE |  | generic code, tag [kernel] | 3.10.0-984 |
| CANDIDATE | 4.2 | [`d9f0acdeef48`](https://git.kernel.org/torvalds/c/d9f0acdeef48) | [kernel] | hrtimer: Update active_bases before calling hrtimer_force_reprogram() |  | generic code, tag [kernel] | 3.10.0-984 |
| CANDIDATE | 4.2 | [`34aee88a02ba`](https://git.kernel.org/torvalds/c/34aee88a02ba) | [kernel] | hrtimer: Use cpu_base->active_base for hotpath iterators |  | generic code, tag [kernel] | 3.10.0-984 |
| CANDIDATE | 4.2 | [`18896451eaee`](https://git.kernel.org/torvalds/c/18896451eaee) | [kernel] | kthread: export kthread functions |  | generic code, tag [kernel] | 3.10.0-652 |
| CANDIDATE | 4.2 | [`ab3f02fc2372`](https://git.kernel.org/torvalds/c/ab3f02fc2372) | [kernel] | locking/arch: Add WRITE_ONCE() to set_mb() |  | generic code, tag [kernel] | 3.10.0-973 |
| CANDIDATE | 4.2 | [`bf0c7c34adc2`](https://git.kernel.org/torvalds/c/bf0c7c34adc2) | [kernel] | locking/pvqspinlock, x86: Enable PV qspinlock for KVM |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.2 | [`e95e6f176c61`](https://git.kernel.org/torvalds/c/e95e6f176c61) | [kernel] | locking/pvqspinlock, x86: Enable PV qspinlock for Xen |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.2 | [`f233f7f1581e`](https://git.kernel.org/torvalds/c/f233f7f1581e) | [kernel] | locking/pvqspinlock, x86: Implement the paravirt qspinlock call patching |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.2 | [`cba77f03f2c7`](https://git.kernel.org/torvalds/c/cba77f03f2c7) | [kernel] | locking/pvqspinlock: Fix kernel panic in locking-selftest |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.2 | [`a23db284fe0d`](https://git.kernel.org/torvalds/c/a23db284fe0d) | [kernel] | locking/pvqspinlock: Implement simple paravirt support for the qspinlock |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.2 | [`62c7a1e9ae54`](https://git.kernel.org/torvalds/c/62c7a1e9ae54) | [kernel] | locking/pvqspinlock: Rename QUEUED_SPINLOCK to QUEUED_SPINLOCKS |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.2 | [`52c9d2badd1a`](https://git.kernel.org/torvalds/c/52c9d2badd1a) | [kernel] | locking/pvqspinlock: replace xchg() by the more descriptive set_mb() |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.2 | [`405963b6a57c`](https://git.kernel.org/torvalds/c/405963b6a57c) | [kernel] | locking/qrwlock: Don't contend with readers when setting _QW_WAITING |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.2 | [`c7114b4e6c53`](https://git.kernel.org/torvalds/c/c7114b4e6c53) | [kernel] | locking/qrwlock: Rename QUEUE_RWLOCK to QUEUED_RWLOCKS |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.2 | [`d73a33973f16`](https://git.kernel.org/torvalds/c/d73a33973f16) | [kernel] | locking/qspinlock, x86: Enable x86-64 to use queued spinlocks |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.2 | [`c1fb159db9f2`](https://git.kernel.org/torvalds/c/c1fb159db9f2) | [kernel] | locking/qspinlock: Add pending bit |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.2 | [`6403bd7d0ea1`](https://git.kernel.org/torvalds/c/6403bd7d0ea1) | [kernel] | locking/qspinlock: Extract out code snippets for the next patch |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.2 | [`a33fda35e3a7`](https://git.kernel.org/torvalds/c/a33fda35e3a7) | [kernel] | locking/qspinlock: Introduce a simple generic 4-byte queued spinlock |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.2 | [`69f9cae90907`](https://git.kernel.org/torvalds/c/69f9cae90907) | [kernel] | locking/qspinlock: Optimize for smaller NR_CPUS |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.2 | [`2aa79af64263`](https://git.kernel.org/torvalds/c/2aa79af64263) | [kernel] | locking/qspinlock: Revert to test-and-set on hypervisors |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.2 | [`2c83e8e9492d`](https://git.kernel.org/torvalds/c/2c83e8e9492d) | [kernel] | locking/qspinlock: Use a simple write to grab the lock |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.2 | [`dfabde206aa1`](https://git.kernel.org/torvalds/c/dfabde206aa1) | [kernel] | mailbox: Add ability for clients to request channels by name |  | generic code, tag [kernel] | 3.10.0-712 |
| CANDIDATE | 4.2 | [`05ae797566a6`](https://git.kernel.org/torvalds/c/05ae797566a6) | [kernel] | mailbox: Make mbox_chan_ops const |  | generic code, tag [kernel] | 3.10.0-712 |
| CANDIDATE | 4.2 | [`70ffdb9393a7`](https://git.kernel.org/torvalds/c/70ffdb9393a7) | [kernel] | mm/fault, arch: Use pagefault_disable() to check for disabled pagefaults in the handler |  | generic code, tag [kernel] | 3.10.0-1020 |
| CANDIDATE | 4.2 | [`8c38de992be9`](https://git.kernel.org/torvalds/c/8c38de992be9) | [kernel] | mm: Fix bugs in region_is_ram() |  | generic code, tag [kernel] | 3.10.0-422 |
| CANDIDATE | 4.2 | [`46ac2f53dfe9`](https://git.kernel.org/torvalds/c/46ac2f53dfe9) | [kernel] | net: core: pktgen: Remove bogus hrtimer_active() check |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 4.2 | [`6b442bc81337`](https://git.kernel.org/torvalds/c/6b442bc81337) | [kernel] | nohz: Fix !HIGH_RES_TIMERS hang |  | generic code, tag [kernel] | 3.10.0-396 |
| CANDIDATE | 4.2 | [`96efdcf2d080`](https://git.kernel.org/torvalds/c/96efdcf2d080) | [kernel] | ntp: Do leapsecond adjustment in adjtimex read path |  | generic code, tag [kernel] | 3.10.0-305 |
| CANDIDATE | 4.2 | [`90bf361ceae2`](https://git.kernel.org/torvalds/c/90bf361ceae2) | [kernel] | ntp: Introduce and use SECS_PER_DAY macro instead of 86400 |  | generic code, tag [kernel] | 3.10.0-305 |
| CANDIDATE | 4.2 | [`3497d206c4d9`](https://git.kernel.org/torvalds/c/3497d206c4d9) | [kernel] | perf: core: Use hrtimer_start() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-293 |
| CANDIDATE | 4.2 | [`57ffc5ca679f`](https://git.kernel.org/torvalds/c/57ffc5ca679f) | [kernel] | perf: Fix AUX buffer refcounting |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-360 |
| CANDIDATE | 4.2 | [`ee9397a6fb9b`](https://git.kernel.org/torvalds/c/ee9397a6fb9b) | [kernel] | perf: Fix double-free of the AUX buffer |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-360 |
| CANDIDATE | 4.2 | [`272325c4821f`](https://git.kernel.org/torvalds/c/272325c4821f) | [kernel] | perf: Fix mux_interval hrtimer wreckage |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.2 | [`c7999c6f3fed`](https://git.kernel.org/torvalds/c/c7999c6f3fed) | [kernel] | perf: Fix PERF_EVENT_IOC_PERIOD migration race |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-360 |
| CANDIDATE | 4.2 | [`00a2916f7f82`](https://git.kernel.org/torvalds/c/00a2916f7f82) | [kernel] | perf: Fix running time accounting |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-360 |
| CANDIDATE | 4.2 | [`9183034879a1`](https://git.kernel.org/torvalds/c/9183034879a1) | [kernel] | perf: perf_mux_hrtimer_cancel() can be static |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.2 | [`30fbd5905700`](https://git.kernel.org/torvalds/c/30fbd5905700) | [kernel] | perf: Remove unused function perf_mux_hrtimer_cancel() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.2 | [`020af89a41c4`](https://git.kernel.org/torvalds/c/020af89a41c4) | [kernel] | pm / sleep: Add macro to define common noirq system PM callbacks |  | generic code, tag [kernel] | 3.10.0-899 |
| CANDIDATE | 4.2 | [`4a00e9df293d`](https://git.kernel.org/torvalds/c/4a00e9df293d) | [kernel] | prctl: more prctl(PR_SET_MM_*) checks |  | generic code, tag [kernel] | 3.10.0-372 |
| CANDIDATE | 4.2 | [`f51c0eaee39e`](https://git.kernel.org/torvalds/c/f51c0eaee39e) | [kernel] | procfs: treat parked tasks as sleeping for task state |  | CONFIG_PROC_FS=y in A37 | 3.10.0-720 |
| CANDIDATE | 4.2 | [`9d2a8da006fc`](https://git.kernel.org/torvalds/c/9d2a8da006fc) | [kernel] | radix-tree: replace preallocated node array with linked list |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.2 | [`205a525c3342`](https://git.kernel.org/torvalds/c/205a525c3342) | [kernel] | random: Add callback API for random pool readiness |  | generic code, tag [kernel] | 3.10.0-682 |
| CANDIDATE | 4.2 | [`ade3f510f93a`](https://git.kernel.org/torvalds/c/ade3f510f93a) | [kernel] | rbtree: Implement generic latch_tree |  | generic code, tag [kernel] | 3.10.0-968 |
| CANDIDATE | 4.2 | [`0a04b0166929`](https://git.kernel.org/torvalds/c/0a04b0166929) | [kernel] | rcu: Move lockless_dereference() out of rcupdate.h |  | generic code, tag [kernel] | 3.10.0-968 |
| CANDIDATE | 4.2 | [`ccdd92c17e14`](https://git.kernel.org/torvalds/c/ccdd92c17e14) | [kernel] | rtmutex: Remove bogus hrtimer_active() check |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 4.2 | [`9916e214998a`](https://git.kernel.org/torvalds/c/9916e214998a) | [kernel] | sched, dl: Convert switched_{from, to}_dl() / prio_changed_dl() to balance callbacks |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 4.2 | [`fd7a4bed1835`](https://git.kernel.org/torvalds/c/fd7a4bed1835) | [kernel] | sched, rt: Convert switched_{from, to}_rt() / prio_changed_rt() to balance callbacks |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 4.2 | [`0ea60c2054fc`](https://git.kernel.org/torvalds/c/0ea60c2054fc) | [kernel] | sched,dl: Remove return value from pull_dl_task() |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 4.2 | [`4cfafd3082af`](https://git.kernel.org/torvalds/c/4cfafd3082af) | [kernel] | sched,perf: Fix periodic timers |  | generic code, tag [kernel] | 3.10.0-456 |
| CANDIDATE | 4.2 | [`8046d6806247`](https://git.kernel.org/torvalds/c/8046d6806247) | [kernel] | sched,rt: Remove return value from pull_rt_task() |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 4.2 | [`82a0d2762699`](https://git.kernel.org/torvalds/c/82a0d2762699) | [kernel] | sched/debug: Add sum_sleep_runtime to /proc/<pid>/sched |  | generic code, tag [kernel] | 3.10.0-456 |
| CANDIDATE | 4.2 | [`33d6176eb12d`](https://git.kernel.org/torvalds/c/33d6176eb12d) | [kernel] | sched/debug: Properly format runnable tasks in /proc/sched_debug |  | generic code, tag [kernel] | 3.10.0-456 |
| CANDIDATE | 4.2 | [`c5f3ab1c3b2e`](https://git.kernel.org/torvalds/c/c5f3ab1c3b2e) | [kernel] | sched/debug: Replace vruntime with wait_sum in /proc/sched_debug |  | generic code, tag [kernel] | 3.10.0-456 |
| CANDIDATE | 4.2 | [`54d27365cae8`](https://git.kernel.org/torvalds/c/54d27365cae8) | [kernel] | sched/fair: Prevent throttling in early pick_next_task_fair() |  | generic code, tag [kernel] | 3.10.0-1079 |
| CANDIDATE | 4.2 | [`8bcbde5480f9`](https://git.kernel.org/torvalds/c/8bcbde5480f9) | [kernel] | sched/preempt, mm/fault: Count pagefault_disable() levels in pagefault_disabled |  | generic code, tag [kernel] | 3.10.0-1020 |
| CANDIDATE | 4.2 | [`8222dbe21e79`](https://git.kernel.org/torvalds/c/8222dbe21e79) | [kernel] | sched/preempt, mm/fault: Decouple preemption from the page fault logic |  | generic code, tag [kernel] | 3.10.0-1020 |
| CANDIDATE | 4.2 | [`5968cecedd7a`](https://git.kernel.org/torvalds/c/5968cecedd7a) | [kernel] | sched/stat: Expose /proc/pid/schedstat if CONFIG_SCHED_INFO=y |  | generic code, tag [kernel] | 3.10.0-347 |
| CANDIDATE | 4.2 | [`f6db83479932`](https://git.kernel.org/torvalds/c/f6db83479932) | [kernel] | sched/stat: Simplify the sched_info accounting dependency |  | generic code, tag [kernel] | 3.10.0-347 |
| CANDIDATE | 4.2 | [`b17718d02f54`](https://git.kernel.org/torvalds/c/b17718d02f54) | [kernel] | sched/stop_machine: Fix deadlock between multiple stop_two_cpus() |  | generic code, tag [kernel] | 3.10.0-285 |
| CANDIDATE | 4.2 | [`06931e622468`](https://git.kernel.org/torvalds/c/06931e622468) | [kernel] | sched/topology: Rename topology_thread_cpumask() to topology_sibling_cpumask() |  | generic code, tag [kernel] | 3.10.0-424 |
| CANDIDATE | 4.2 | [`4c9a4bc89a9c`](https://git.kernel.org/torvalds/c/4c9a4bc89a9c) | [kernel] | sched: Allow balance callbacks for check_class_changed() |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 4.2 | [`4961b6e11825`](https://git.kernel.org/torvalds/c/4961b6e11825) | [kernel] | sched: core: Use hrtimer_start[_expires]() |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 4.2 | [`6713c3aa7f63`](https://git.kernel.org/torvalds/c/6713c3aa7f63) | [kernel] | sched: Remove superfluous resetting of the p->dl_throttled flag |  | generic code, tag [kernel] | 3.10.0-443 |
| CANDIDATE | 4.2 | [`e3fca9e7cbfb`](https://git.kernel.org/torvalds/c/e3fca9e7cbfb) | [kernel] | sched: Replace post_schedule with a balance callback list |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 4.2 | [`dbc7f069b93a`](https://git.kernel.org/torvalds/c/dbc7f069b93a) | [kernel] | sched: Use replace normalize_task() with __sched_setscheduler() |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 4.2 | [`c4bfa3f5f906`](https://git.kernel.org/torvalds/c/c4bfa3f5f906) | [kernel] | seqcount: Introduce raw_write_seqcount_barrier() |  | generic code, tag [kernel] | 3.10.0-984 |
| CANDIDATE | 4.2 | [`a7c6f571ff51`](https://git.kernel.org/torvalds/c/a7c6f571ff51) | [kernel] | seqcount: Rename write_seqcount_barrier() |  | generic code, tag [kernel] | 3.10.0-984 |
| CANDIDATE | 4.2 | [`6695b92a60bc`](https://git.kernel.org/torvalds/c/6695b92a60bc) | [kernel] | seqlock: Better document raw_write_seqcount_latch() |  | generic code, tag [kernel] | 3.10.0-984 |
| CANDIDATE | 4.2 | [`7fc26327b756`](https://git.kernel.org/torvalds/c/7fc26327b756) | [kernel] | seqlock: Introduce raw_read_seqcount_latch() |  | generic code, tag [kernel] | 3.10.0-968 |
| CANDIDATE | 4.2 | [`b5242e98c1cb`](https://git.kernel.org/torvalds/c/b5242e98c1cb) | [kernel] | smpboot: allow excluding cpus from the smpboot threads |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.2 | [`2951d5c031a3`](https://git.kernel.org/torvalds/c/2951d5c031a3) | [kernel] | tick: broadcast: Prevent livelock from event handler |  | generic code, tag [kernel] | 3.10.0-332 |
| CANDIDATE | 4.2 | [`38d23a6cc16c`](https://git.kernel.org/torvalds/c/38d23a6cc16c) | [kernel] | tick: hrtimer-broadcast: Prevent endless restarting when broadcast device is unused |  | generic code, tag [kernel] | 3.10.0-537 |
| CANDIDATE | 4.2 | [`c1ad348b452a`](https://git.kernel.org/torvalds/c/c1ad348b452a) | [kernel] | tick: nohz: Rework next timer evaluation |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 4.2 | [`0ff53d096422`](https://git.kernel.org/torvalds/c/0ff53d096422) | [kernel] | tick: sched: Force tick interrupt and get rid of softirq magic |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 4.2 | [`afc08b15cc2a`](https://git.kernel.org/torvalds/c/afc08b15cc2a) | [kernel] | tick: sched: Remove hrtimer_active() checks |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 4.2 | [`157d29e101c7`](https://git.kernel.org/torvalds/c/157d29e101c7) | [kernel] | tick: sched: Restructure code |  | generic code, tag [kernel] | 3.10.0-293 |
| CANDIDATE | 4.2 | [`833f32d76302`](https://git.kernel.org/torvalds/c/833f32d76302) | [kernel] | time: Prevent early expiry of hrtimers[CLOCK_REALTIME] at the leap second edge |  | generic code, tag [kernel] | 3.10.0-305 |
| CANDIDATE | 4.2 | [`906c55579a63`](https://git.kernel.org/torvalds/c/906c55579a63) | [kernel] | timekeeping: Copy the shadow-timekeeper over the real timekeeper last |  | generic code, tag [kernel] | 3.10.0-522 |
| CANDIDATE | 4.2 | [`683be13a2847`](https://git.kernel.org/torvalds/c/683be13a2847) | [kernel] | timer: Minimize nohz off overhead |  | generic code, tag [kernel] | 3.10.0-896 |
| CANDIDATE | 4.2 | [`2ad5d3272d8e`](https://git.kernel.org/torvalds/c/2ad5d3272d8e) | [kernel] | timer: Put usleep_range into the __sched section |  | generic code, tag [kernel] | 3.10.0-896 |
| CANDIDATE | 4.2 | [`bc7a34b8b9eb`](https://git.kernel.org/torvalds/c/bc7a34b8b9eb) | [kernel] | timer: Reduce timer migration overhead if disabled |  | generic code, tag [kernel] | 3.10.0-896 |
| CANDIDATE | 4.2 | [`1bd04bf6f68d`](https://git.kernel.org/torvalds/c/1bd04bf6f68d) | [kernel] | timer: Remove FIFO "guarantee" |  | generic code, tag [kernel] | 3.10.0-896 |
| CANDIDATE | 4.2 | [`6deba083e1de`](https://git.kernel.org/torvalds/c/6deba083e1de) | [kernel] | timer: Remove pointless return value of do_usleep_range() |  | generic code, tag [kernel] | 3.10.0-896 |
| CANDIDATE | 4.2 | [`781978e6e156`](https://git.kernel.org/torvalds/c/781978e6e156) | [kernel] | timer: Use timer->base for flag checks |  | generic code, tag [kernel] | 3.10.0-896 |
| CANDIDATE | 4.2 | [`3bb475a3446f`](https://git.kernel.org/torvalds/c/3bb475a3446f) | [kernel] | timers: Sanitize catchup_timer_jiffies() usage |  | generic code, tag [kernel] | 3.10.0-896 |
| CANDIDATE | 4.2 | [`755a27e7e4c8`](https://git.kernel.org/torvalds/c/755a27e7e4c8) | [kernel] | tracing: remove unused ftrace_output_event() prototype |  | CONFIG_FTRACE=y in A37 | 3.10.0-590 |
| CANDIDATE | 4.2 | [`4e413e8526aa`](https://git.kernel.org/torvalds/c/4e413e8526aa) | [kernel] | tracing: timer: Add deferrable flag to timer_start |  | CONFIG_FTRACE=y in A37 | 3.10.0-896 |
| CANDIDATE | 4.2 | [`9f3520c3115b`](https://git.kernel.org/torvalds/c/9f3520c3115b) | [kernel] | wait: introduce wait_event_exclusive_cmd |  | generic code, tag [kernel] | 3.10.0-429 |
| CANDIDATE | 4.2 | [`fe4ba3c34352`](https://git.kernel.org/torvalds/c/fe4ba3c34352) | [kernel] | watchdog: add watchdog_cpumask sysctl to assist nohz |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.2 | [`042f7df15a4f`](https://git.kernel.org/torvalds/c/042f7df15a4f) | [kernel] | workqueue: Allow modifying low level unbound workqueue cpumask |  | generic code, tag [kernel] | 3.10.0-302 |
| CANDIDATE | 4.2 | [`b05a79280b34`](https://git.kernel.org/torvalds/c/b05a79280b34) | [kernel] | workqueue: Create low-level unbound workqueues cpumask |  | generic code, tag [kernel] | 3.10.0-302 |
| CANDIDATE | 4.2 | [`2d5f0764b526`](https://git.kernel.org/torvalds/c/2d5f0764b526) | [kernel] | workqueue: split apply_workqueue_attrs() into 3 stages |  | generic code, tag [kernel] | 3.10.0-302 |
| CANDIDATE | 4.3 | [`41e94a851304`](https://git.kernel.org/torvalds/c/41e94a851304) | [kernel] | add devm_memremap_pages |  | generic code, tag [kernel] | 3.10.0-469 |
| CANDIDATE | 4.3 | [`92281dee825f`](https://git.kernel.org/torvalds/c/92281dee825f) | [kernel] | arch: introduce memremap() |  | generic code, tag [kernel] | 3.10.0-422 |
| CANDIDATE | 4.3 | [`2a36f0b92eb6`](https://git.kernel.org/torvalds/c/2a36f0b92eb6) | [kernel] | bpf: Make the bpf_prog_array_map more generic |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.3 | [`7b36f92934e4`](https://git.kernel.org/torvalds/c/7b36f92934e4) | [kernel] | bpf: provide helper that indicates eBPF was migrated |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.3 | [`098d2164e344`](https://git.kernel.org/torvalds/c/098d2164e344) | [kernel] | bpf: Use correct #ifdef controller for trace_call_bpf() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.3 | [`7e47682ea555`](https://git.kernel.org/torvalds/c/7e47682ea555) | [kernel] | cgroup: allow a cgroup subsystem to reject a fork |  | CONFIG_CGROUPS=y in A37 | 3.10.0-372 |
| CANDIDATE | 4.3 | [`49b786ea146f`](https://git.kernel.org/torvalds/c/49b786ea146f) | [kernel] | cgroup: implement the PIDs subsystem |  | CONFIG_CGROUPS=y in A37 | 3.10.0-372 |
| CANDIDATE | 4.3 | [`ce52399520e4`](https://git.kernel.org/torvalds/c/ce52399520e4) | [kernel] | cgroup: pids: fix invalid get/put usage |  | CONFIG_CGROUPS=y in A37 | 3.10.0-372 |
| CANDIDATE | 4.3 | [`d976441f44bc`](https://git.kernel.org/torvalds/c/d976441f44bc) | [kernel] | compiler, atomics, kasan: Provide READ_ONCE_NOCHECK() |  | generic code, tag [kernel] | 3.10.0-939 |
| CANDIDATE | 4.3 | [`0642ef6f2992`](https://git.kernel.org/torvalds/c/0642ef6f2992) | [kernel] | debugfs: Export bool read/write functions |  | CONFIG_DEBUG_FS=y in A37 | 3.10.0-606 |
| CANDIDATE | 4.3 | [`7d3dcf26a655`](https://git.kernel.org/torvalds/c/7d3dcf26a655) | [kernel] | devres: add devm_memremap |  | generic code, tag [kernel] | 3.10.0-469 |
| CANDIDATE | 4.3 | [`452e06af1f01`](https://git.kernel.org/torvalds/c/452e06af1f01) | [kernel] | dma-mapping: consolidate dma_set_mask |  | generic code, tag [kernel] | 3.10.0-722 |
| CANDIDATE | 4.3 | [`ee196371d5cb`](https://git.kernel.org/torvalds/c/ee196371d5cb) | [kernel] | dma-mapping: consolidate dma_supported |  | generic code, tag [kernel] | 3.10.0-722 |
| CANDIDATE | 4.3 | [`efa21e432c7b`](https://git.kernel.org/torvalds/c/efa21e432c7b) | [kernel] | dma-mapping: cosolidate dma_mapping_error |  | generic code, tag [kernel] | 3.10.0-722 |
| CANDIDATE | 4.3 | [`c93bf928fea2`](https://git.kernel.org/torvalds/c/c93bf928fea2) | [kernel] | ftrace: Format MCOUNT_ADDR address as type unsigned long |  | CONFIG_FTRACE=y in A37 | 3.10.0-778 |
| CANDIDATE | 4.3 | [`9d67dc5da59d`](https://git.kernel.org/torvalds/c/9d67dc5da59d) | [kernel] | genirq: Export handle_bad_irq |  | generic code, tag [kernel] | 3.10.0-555 |
| CANDIDATE | 4.3 | [`e019c249a60f`](https://git.kernel.org/torvalds/c/e019c249a60f) | [kernel] | genirq: Provide and use __irq_can_set_affinity() |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.3 | [`c5ebb387f4e6`](https://git.kernel.org/torvalds/c/c5ebb387f4e6) | [kernel] | i2c: add a flag to mark clients as slaves |  | CONFIG_I2C=y in A37 | 3.10.0-840 |
| CANDIDATE | 4.3 | [`654672d4ba1a`](https://git.kernel.org/torvalds/c/654672d4ba1a) | [kernel] | locking/atomics: Add _{acquire\|release\|relaxed}() variants of some atomic operations |  | generic code, tag [kernel] | 3.10.0-785 |
| CANDIDATE | 4.3 | [`75d227028068`](https://git.kernel.org/torvalds/c/75d227028068) | [kernel] | locking/pvqspinlock: Only kick CPU at unlock time |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.3 | [`3b3fdf10a8ad`](https://git.kernel.org/torvalds/c/3b3fdf10a8ad) | [kernel] | locking/pvqspinlock: Order pv_unhash() after cmpxchg() on unlock slowpath |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.3 | [`0e06e5be70d3`](https://git.kernel.org/torvalds/c/0e06e5be70d3) | [kernel] | locking/qrwlock: Better optimization for interrupt context readers |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.3 | [`ffffeaf318bd`](https://git.kernel.org/torvalds/c/ffffeaf318bd) | [kernel] | locking/qrwlock: Reduce reader/writer to reader lock transfer latency |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.3 | [`f7d71f205255`](https://git.kernel.org/torvalds/c/f7d71f205255) | [kernel] | locking/qrwlock: Rename functions to queued_*() |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.3 | [`0b792bf519e6`](https://git.kernel.org/torvalds/c/0b792bf519e6) | [kernel] | locking: Clean up pvqspinlock warning |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.3 | [`0cc67945ea59`](https://git.kernel.org/torvalds/c/0cc67945ea59) | [kernel] | mailbox: switch to hrtimer for tx_complete polling |  | generic code, tag [kernel] | 3.10.0-712 |
| CANDIDATE | 4.3 | [`124fe20d9463`](https://git.kernel.org/torvalds/c/124fe20d9463) | [kernel] | mm: enhance region_is_ram() to region_intersects() |  | generic code, tag [kernel] | 3.10.0-422 |
| CANDIDATE | 4.3 | [`9642d18eee2c`](https://git.kernel.org/torvalds/c/9642d18eee2c) | [kernel] | nohz: Affine unpinned timers to housekeepers |  | generic code, tag [kernel] | 3.10.0-540 |
| CANDIDATE | 4.3 | [`69aba7948cbe`](https://git.kernel.org/torvalds/c/69aba7948cbe) | [kernel] | nvmem: Add a simple NVMEM framework for consumers |  | generic code, tag [kernel] | 3.10.0-833 |
| CANDIDATE | 4.3 | [`eace75cfdcf7`](https://git.kernel.org/torvalds/c/eace75cfdcf7) | [kernel] | nvmem: Add a simple NVMEM framework for nvmem providers |  | generic code, tag [kernel] | 3.10.0-833 |
| CANDIDATE | 4.3 | [`c2ad6b51efc5`](https://git.kernel.org/torvalds/c/c2ad6b51efc5) | [kernel] | perf/ring-buffer: Clarify the use of page::private for high-order AUX allocations |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-361 |
| CANDIDATE | 4.3 | [`45ac1403f564`](https://git.kernel.org/torvalds/c/45ac1403f564) | [kernel] | perf: Add PERF_RECORD_SWITCH to indicate context switches |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-352 |
| CANDIDATE | 4.3 | [`ffe8690c85b8`](https://git.kernel.org/torvalds/c/ffe8690c85b8) | [kernel] | perf: add the necessary core perf APIs when accessing events counters in eBPF programs |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-361 |
| CANDIDATE | 4.3 | [`f73e22ab4501`](https://git.kernel.org/torvalds/c/f73e22ab4501) | [kernel] | perf: Fix races in computing the header sizes |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-361 |
| CANDIDATE | 4.3 | [`a723968c0ed3`](https://git.kernel.org/torvalds/c/a723968c0ed3) | [kernel] | perf: Fix u16 overflows |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-361 |
| CANDIDATE | 4.3 | [`f55fc2a57cc9`](https://git.kernel.org/torvalds/c/f55fc2a57cc9) | [kernel] | perf: Restructure perf syscall point of no return |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-361 |
| CANDIDATE | 4.3 | [`e2e05394e4a3`](https://git.kernel.org/torvalds/c/e2e05394e4a3) | [kernel] | pmem, dax: have direct_access use __pmem annotation |  | generic code, tag [kernel] | 3.10.0-469 |
| CANDIDATE | 4.3 | [`9d7fb0427648`](https://git.kernel.org/torvalds/c/9d7fb0427648) | [kernel] | sched/cputime: Guarantee stime + utime == rtime |  | generic code, tag [kernel] | 3.10.0-677 |
| CANDIDATE | 4.3 | [`9babcd7929bc`](https://git.kernel.org/torvalds/c/9babcd7929bc) (loose) | [kernel] | sched: tracing: Stop/start critical timings around the idle=poll idle loop |  | generic code, tag [kernel] | 3.10.0-347 |
| CANDIDATE | 4.3 | [`b377c2a089d4`](https://git.kernel.org/torvalds/c/b377c2a089d4) | [kernel] | stop_machine: Don't do for_each_cpu() twice in queue_stop_cpus_work() |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | 4.3 | [`02cb7aa923ec`](https://git.kernel.org/torvalds/c/02cb7aa923ec) | [kernel] | stop_machine: Move 'cpu_stopper_task' and 'stop_cpus_work' into 'struct cpu_stopper' |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | 4.3 | [`d308b9f1e441`](https://git.kernel.org/torvalds/c/d308b9f1e441) | [kernel] | stop_machine: Remove cpu_stop_work's from list in cpu_stop_park() |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | 4.3 | [`56fd16cabac9`](https://git.kernel.org/torvalds/c/56fd16cabac9) | [kernel] | timekeeping: Increment clock_was_set_seq in timekeeping_init() |  | generic code, tag [kernel] | 3.10.0-553 |
| CANDIDATE | 4.3 | [`04a22fae4cbc`](https://git.kernel.org/torvalds/c/04a22fae4cbc) | [kernel] | tracing, perf: Implement BPF programs attached to uprobes |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.3 | [`9f61668073a8`](https://git.kernel.org/torvalds/c/9f61668073a8) | [kernel] | tracing: Allow triggers to filter for CPU ids and process names |  | CONFIG_FTRACE=y in A37 | 3.10.0-599 |
| CANDIDATE | 4.3 | [`81a4beef91ba`](https://git.kernel.org/torvalds/c/81a4beef91ba) | [kernel] | watchdog: introduce watchdog_park_threads() and watchdog_unpark_threads() |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.3 | [`8c073d27d7ad`](https://git.kernel.org/torvalds/c/8c073d27d7ad) | [kernel] | watchdog: introduce watchdog_suspend() and watchdog_resume() |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.3 | [`ec6a90661a0d`](https://git.kernel.org/torvalds/c/ec6a90661a0d) | [kernel] | watchdog: rename watchdog_suspend() and watchdog_resume() |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.3 | [`d4bdd0b21c76`](https://git.kernel.org/torvalds/c/d4bdd0b21c76) | [kernel] | watchdog: use park/unpark functions in update_watchdog_all_cpus() |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.3 | [`999bbe49ea01`](https://git.kernel.org/torvalds/c/999bbe49ea01) | [kernel] | watchdog: use suspend/resume interface in fixup_ht_bug() |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.4 | [`32a1dbaece7e`](https://git.kernel.org/torvalds/c/32a1dbaece7e) | [kernel] | audit: try harder to send to auditd upon netlink failure |  | CONFIG_AUDIT=y in A37 | 3.10.0-372 |
| CANDIDATE | 4.4 | [`48e203e21b29`](https://git.kernel.org/torvalds/c/48e203e21b29) | [kernel] | bitops.h: add sign_extend64() |  | generic code, tag [kernel] | 3.10.0-422 |
| CANDIDATE | 4.4 | [`3ef28e83ab15`](https://git.kernel.org/torvalds/c/3ef28e83ab15) | [kernel] | block: generic request_queue reference counting |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.4 | [`2e6edc95382c`](https://git.kernel.org/torvalds/c/2e6edc95382c) | [kernel] | block: protect rw_page against device teardown |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.4 | [`a31d82d85afd`](https://git.kernel.org/torvalds/c/a31d82d85afd) | [kernel] | bpf_trace: Make dependent on PERF_EVENTS |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.4 | [`5037835c1f3e`](https://git.kernel.org/torvalds/c/5037835c1f3e) | [kernel] | coredump: add DAX filtering for ELF coredumps |  | CONFIG_COREDUMP=y in A37 | 3.10.0-486 |
| CANDIDATE | 4.4 | [`7c683941f30a`](https://git.kernel.org/torvalds/c/7c683941f30a) | [kernel] | devm: make allocations numa aware by default |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.4 | [`7eff93b7c99f`](https://git.kernel.org/torvalds/c/7eff93b7c99f) | [kernel] | devm_memremap_pages: use numa_mem_id |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.4 | [`d741314fe831`](https://git.kernel.org/torvalds/c/d741314fe831) | [kernel] | devm_memunmap: use devres_release() |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.4 | [`002edb6f6f2a`](https://git.kernel.org/torvalds/c/002edb6f6f2a) | [kernel] | dma-mapping: tidy up dma_parms default handling |  | generic code, tag [kernel] | 3.10.0-722 |
| CANDIDATE | 4.4 | [`049fb9bd4160`](https://git.kernel.org/torvalds/c/049fb9bd4160) | [kernel] | ftrace/module: Call clean up function when module init fails early |  | CONFIG_FTRACE=y in A37 | 3.10.0-778 |
| CANDIDATE | 4.4 | [`ac742d37180b`](https://git.kernel.org/torvalds/c/ac742d37180b) | [kernel] | futex: Force hot variables into a single cache line |  | generic code, tag [kernel] | 3.10.0-549 |
| CANDIDATE | 4.4 | [`93edc8bd7750`](https://git.kernel.org/torvalds/c/93edc8bd7750) | [kernel] | locking/pvqspinlock: Kick the PV CPU unconditionally when _Q_SLOW_VAL |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.4 | [`fbbe07011581`](https://git.kernel.org/torvalds/c/fbbe07011581) | [kernel] | perf/core: Add a 'flags' parameter to the PMU transactional interfaces |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-366 |
| CANDIDATE | 4.4 | [`0492d4c5b8c4`](https://git.kernel.org/torvalds/c/0492d4c5b8c4) | [kernel] | perf/core: Add group reads to perf_event_read() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-366 |
| CANDIDATE | 4.4 | [`7d88962e230c`](https://git.kernel.org/torvalds/c/7d88962e230c) | [kernel] | perf/core: Add return value for perf_event_read() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-366 |
| CANDIDATE | 4.4 | [`4a00c16e552e`](https://git.kernel.org/torvalds/c/4a00c16e552e) | [kernel] | perf/core: Define PERF_PMU_TXN_READ interface |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-366 |
| CANDIDATE | 4.4 | [`ddaaf4e291dd`](https://git.kernel.org/torvalds/c/ddaaf4e291dd) | [kernel] | perf/core: Fix RCU problem with cgroup context switching code |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.4 | [`fa8c269353d5`](https://git.kernel.org/torvalds/c/fa8c269353d5) | [kernel] | perf/core: Invert perf_read_group() loops |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-366 |
| CANDIDATE | 4.4 | [`01add3eaf1b2`](https://git.kernel.org/torvalds/c/01add3eaf1b2) | [kernel] | perf/core: Split perf_event_read() and perf_event_count() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-366 |
| CANDIDATE | 4.4 | [`2fd59077755c`](https://git.kernel.org/torvalds/c/2fd59077755c) | [kernel] | perf: Disable IRQs across RCU RS CS that acquires scheduler lock |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-362 |
| CANDIDATE | 4.4 | [`4e93ad601a43`](https://git.kernel.org/torvalds/c/4e93ad601a43) | [kernel] | perf: Do not send exit event twice |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-362 |
| CANDIDATE | 4.4 | [`642c2d671cef`](https://git.kernel.org/torvalds/c/642c2d671cef) | [kernel] | perf: Fix PERF_EVENT_IOC_PERIOD deadlock |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-362 |
| CANDIDATE | 4.4 | [`c12744994465`](https://git.kernel.org/torvalds/c/c12744994465) | [kernel] | perf: Fix race in perf_event_exec() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-362 |
| CANDIDATE | 4.4 | [`fa128e6a148a`](https://git.kernel.org/torvalds/c/fa128e6a148a) | [kernel] | perf: pad raw data samples automatically |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-362 |
| CANDIDATE | 4.4 | [`538ea4aa4473`](https://git.kernel.org/torvalds/c/538ea4aa4473) | [kernel] | pmem, memremap: convert to numa aware allocations |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.4 | [`c3ac7cf1847a`](https://git.kernel.org/torvalds/c/c3ac7cf1847a) | [kernel] | rcu: Add rcu_pointer_handoff() |  | generic code, tag [kernel] | 3.10.0-652 |
| CANDIDATE | 4.4 | [`8295c69925ad`](https://git.kernel.org/torvalds/c/8295c69925ad) | [kernel] | sched/core: Clear the root_domain cpumasks in init_rootdomain() |  | generic code, tag [kernel] | 3.10.0-443 |
| CANDIDATE | 4.4 | [`1de64443d755`](https://git.kernel.org/torvalds/c/1de64443d755) | [kernel] | sched/core: Fix task and run queue sched_info::run_delay inconsistencies |  | generic code, tag [kernel] | 3.10.0-907 |
| CANDIDATE | 4.4 | [`093e5840ae76`](https://git.kernel.org/torvalds/c/093e5840ae76) | [kernel] | sched/core: Reset task's lockless wake-queues on fork() |  | generic code, tag [kernel] | 3.10.0-549 |
| CANDIDATE | 4.4 | [`c5afb6a87f23`](https://git.kernel.org/torvalds/c/c5afb6a87f23) | [kernel] | sched/fair: Fix nohz.next_balance update |  | generic code, tag [kernel] | 3.10.0-585 |
| CANDIDATE | 4.4 | [`68985633bccb`](https://git.kernel.org/torvalds/c/68985633bccb) | [kernel] | sched/wait: Fix signal handling in bit wait helpers |  | generic code, tag [kernel] | 3.10.0-378 |
| CANDIDATE | 4.4 | [`dfd01f026058`](https://git.kernel.org/torvalds/c/dfd01f026058) | [kernel] | sched/wait: Fix the signal handling fix |  | generic code, tag [kernel] | 3.10.0-378 |
| CANDIDATE | 4.4 | [`84778472e1b6`](https://git.kernel.org/torvalds/c/84778472e1b6) | [kernel] | sched: Export sched_setscheduler_nocheck |  | generic code, tag [kernel] | 3.10.0-652 |
| CANDIDATE | 4.4 | [`62694cd51322`](https://git.kernel.org/torvalds/c/62694cd51322) | [kernel] | sched: Move cpu_active() tests from stop_two_cpus() into migrate_swap_stop() |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | 4.4 | [`d8bc853582bf`](https://git.kernel.org/torvalds/c/d8bc853582bf) | [kernel] | stop_machine: Change cpu_stop_queue_two_works() to rely on stopper->enabled |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | 4.4 | [`233e7f267e58`](https://git.kernel.org/torvalds/c/233e7f267e58) | [kernel] | stop_machine: Ensure that a queued callback will be called before cpu_stop_park() |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | 4.4 | [`5caa1c089aeb`](https://git.kernel.org/torvalds/c/5caa1c089aeb) | [kernel] | stop_machine: Introduce __cpu_stop_queue_work() and cpu_stop_queue_two_works() |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | 4.4 | [`e428abbbf616`](https://git.kernel.org/torvalds/c/e428abbbf616) | [kernel] | tracing: #ifdef out uses of max trace when CONFIG_TRACER_MAX_TRACE is not set |  | CONFIG_FTRACE=y in A37 | 3.10.0-590 |
| CANDIDATE | 4.4 | [`1e935949111e`](https://git.kernel.org/torvalds/c/1e935949111e) | [kernel] | watchdog: Always evaluate new timeout against min_timeout |  | generic code, tag [kernel] | 3.10.0-899 |
| CANDIDATE | 4.4 | [`ee7fed540563`](https://git.kernel.org/torvalds/c/ee7fed540563) | [kernel] | watchdog: do not unpark threads in watchdog_park_threads() on error |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.4 | [`d283c640cee6`](https://git.kernel.org/torvalds/c/d283c640cee6) | [kernel] | watchdog: fix error handling in proc_watchdog_thresh() |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.4 | [`c993590c6ae6`](https://git.kernel.org/torvalds/c/c993590c6ae6) | [kernel] | watchdog: implement error handling in lockup_detector_suspend() |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.4 | [`b43cb43cb85b`](https://git.kernel.org/torvalds/c/b43cb43cb85b) | [kernel] | watchdog: implement error handling in update_watchdog_all_cpus() and callers |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.4 | [`58cf690a0998`](https://git.kernel.org/torvalds/c/58cf690a0998) | [kernel] | watchdog: move watchdog_disable_all_cpus() outside of ifdef |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.5 | [`57f7c0370f38`](https://git.kernel.org/torvalds/c/57f7c0370f38) | [kernel] | asm-generic: guard smp_store_release/load_acquire |  | generic code, tag [kernel] | 3.10.0-876 |
| CANDIDATE | 4.5 | [`979559362516`](https://git.kernel.org/torvalds/c/979559362516) | [kernel] | asm/sections: add helpers to check for section data |  | generic code, tag [kernel] | 3.10.0-1029 |
| CANDIDATE | 4.5 | [`581da2cab557`](https://git.kernel.org/torvalds/c/581da2cab557) | [kernel] | async: export current_is_async() |  | generic code, tag [kernel] | 3.10.0-422 |
| CANDIDATE | 4.5 | [`96368701e1c8`](https://git.kernel.org/torvalds/c/96368701e1c8) | [kernel] | audit: force seccomp event logging to honor the audit_enabled flag |  | CONFIG_AUDIT=y in A37 | 3.10.0-911 |
| CANDIDATE | 4.5 | [`9e0e252a048b`](https://git.kernel.org/torvalds/c/9e0e252a048b) | [kernel] | badblocks: Add core badblock management code |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`d3b407fb3f78`](https://git.kernel.org/torvalds/c/d3b407fb3f78) | [kernel] | badblocks: rename badblocks_free to badblocks_exit |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`16263ff6c72e`](https://git.kernel.org/torvalds/c/16263ff6c72e) | [kernel] | block, badblocks: introduce devm_init_badblocks |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`99e6608c9e74`](https://git.kernel.org/torvalds/c/99e6608c9e74) | [kernel] | block: Add badblock management for gendisks |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`55f5560d8c18`](https://git.kernel.org/torvalds/c/55f5560d8c18) | [kernel] | block: kill disk_{check\|set\|clear\|alloc}_badblocks |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`d1a5f2b4d8a1`](https://git.kernel.org/torvalds/c/d1a5f2b4d8a1) | [kernel] | block: use DAX for partition table reads |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`9a9e3415edd5`](https://git.kernel.org/torvalds/c/9a9e3415edd5) (loose) | [kernel] | configfs: Drop unused parameter from configfs_undepend_item() |  | CONFIG_CONFIGFS_FS=y in A37 | 3.10.0-753 |
| CANDIDATE | 4.5 | [`0b6ec8c0a370`](https://git.kernel.org/torvalds/c/0b6ec8c0a370) | [kernel] | debugobjects: Allow bigger number of early boot objects |  | generic code, tag [kernel] | 3.10.0-560 |
| CANDIDATE | 4.5 | [`eb7d78c9e7f6`](https://git.kernel.org/torvalds/c/eb7d78c9e7f6) | [kernel] | devm_memremap_pages: fix vmem_altmap lifetime + alignment handling |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`9273a8bbf58a`](https://git.kernel.org/torvalds/c/9273a8bbf58a) | [kernel] | devm_memremap_release(): fix memremap'd addr handling |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`e1c7e324539a`](https://git.kernel.org/torvalds/c/e1c7e324539a) | [kernel] | dma-mapping: always provide the dma_map_ops based implementation |  | generic code, tag [kernel] | 3.10.0-722 |
| CANDIDATE | 4.5 | [`d6b7eaeb0342`](https://git.kernel.org/torvalds/c/d6b7eaeb0342) | [kernel] | dma-mapping: avoid oops when parameter cpu_addr is null |  | generic code, tag [kernel] | 3.10.0-722 |
| CANDIDATE | 4.5 | [`8e99469ab0f8`](https://git.kernel.org/torvalds/c/8e99469ab0f8) | [kernel] | dma-mapping: use offset_in_page macro |  | generic code, tag [kernel] | 3.10.0-722 |
| CANDIDATE | 4.5 | [`2dcba4781fa3`](https://git.kernel.org/torvalds/c/2dcba4781fa3) | [trace] | ext4: get rid of EXT4_GET_BLOCKS_NO_LOCK flag |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-486 |
| CANDIDATE | 4.5 | [`c86d8db33a92`](https://git.kernel.org/torvalds/c/c86d8db33a92) | [trace] | ext4: implement allocation of pre-zeroed blocks |  | CONFIG_EXT4_FS=y in A37 | 3.10.0-486 |
| CANDIDATE | 4.5 | [`65f87ee71852`](https://git.kernel.org/torvalds/c/65f87ee71852) | [kernel] | fs, block: force direct-I/O for dax-enabled block devices |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`7dcd182bec27`](https://git.kernel.org/torvalds/c/7dcd182bec27) | [kernel] | ftrace/module: remove ftrace module notifier |  | CONFIG_FTRACE=y in A37 | 3.10.0-778 |
| CANDIDATE | 4.5 | [`b7ffffbb46f2`](https://git.kernel.org/torvalds/c/b7ffffbb46f2) | [kernel] | ftrace: Add infrastructure for delayed enabling of module functions |  | CONFIG_FTRACE=y in A37 | 3.10.0-778 |
| CANDIDATE | 4.5 | [`5156dca34a3e`](https://git.kernel.org/torvalds/c/5156dca34a3e) | [kernel] | ftrace: Fix the race between ftrace and insmod |  | CONFIG_FTRACE=y in A37 | 3.10.0-778 |
| CANDIDATE | 4.5 | [`b08ea35a3296`](https://git.kernel.org/torvalds/c/b08ea35a3296) | [kernel] | gpio: add a data pointer to gpio_chip |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-697 |
| CANDIDATE | 4.5 | [`69b907297f4e`](https://git.kernel.org/torvalds/c/69b907297f4e) | [kernel] | list: Add lockless list traversal primitives |  | generic code, tag [kernel] | 3.10.0-438 |
| CANDIDATE | 4.5 | [`d78045306c41`](https://git.kernel.org/torvalds/c/d78045306c41) | [kernel] | locking/pvqspinlock, x86: Optimize the PV unlock code path |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.5 | [`1c4941fd53af`](https://git.kernel.org/torvalds/c/1c4941fd53af) | [kernel] | locking/pvqspinlock: Allow limited lock stealing |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.5 | [`45e898b73562`](https://git.kernel.org/torvalds/c/45e898b73562) | [kernel] | locking/pvqspinlock: Collect slowpath lock statistics |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.5 | [`cd0272fab785`](https://git.kernel.org/torvalds/c/cd0272fab785) | [kernel] | locking/pvqspinlock: Queue node adaptive spinning |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.5 | [`aa68744f80bf`](https://git.kernel.org/torvalds/c/aa68744f80bf) | [kernel] | locking/qspinlock: Avoid redundant read of next pointer |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.5 | [`81b5598665a2`](https://git.kernel.org/torvalds/c/81b5598665a2) | [kernel] | locking/qspinlock: Prefetch the next node cacheline |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.5 | [`34c0fd540e79`](https://git.kernel.org/torvalds/c/34c0fd540e79) | [kernel] | mm, dax, pmem: introduce pfn_t |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`8f235d1a3eb7`](https://git.kernel.org/torvalds/c/8f235d1a3eb7) | [kernel] | mm: add PHYS_PFN, use it in __phys_to_pfn() |  | generic code, tag [kernel] | 3.10.0-490 |
| CANDIDATE | 4.5 | [`5f29a77cd957`](https://git.kernel.org/torvalds/c/5f29a77cd957) | [kernel] | mm: fix mixed zone detection in devm_memremap_pages |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`db78c22230d0`](https://git.kernel.org/torvalds/c/db78c22230d0) | [kernel] | mm: fix pfn_t vs highmem |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`9476df7d80df`](https://git.kernel.org/torvalds/c/9476df7d80df) | [kernel] | mm: introduce find_dev_pagemap() |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`260ae3f7db61`](https://git.kernel.org/torvalds/c/260ae3f7db61) | [kernel] | mm: skip memory block registration for ZONE_DEVICE |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | 4.5 | [`58c5661f2144`](https://git.kernel.org/torvalds/c/58c5661f2144) | [kernel] | panic, x86: Allow CPUs to save registers even if looping in NMI context |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.5 | [`1717f2096b54`](https://git.kernel.org/torvalds/c/1717f2096b54) | [kernel] | panic, x86: Fix re-entrance problem due to panic on NMI |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.5 | [`e03e7ee34fdd`](https://git.kernel.org/torvalds/c/e03e7ee34fdd) | [kernel] | perf/bpf: Convert perf_event_array to use struct file |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.5 | [`0017960f38a2`](https://git.kernel.org/torvalds/c/0017960f38a2) | [kernel] | perf/core: Collapse common IPI pattern |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-379 |
| CANDIDATE | 4.5 | [`7b648018f628`](https://git.kernel.org/torvalds/c/7b648018f628) | [kernel] | perf/core: Collapse more IPI loops |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-379 |
| CANDIDATE | 4.5 | [`45a0e07abf49`](https://git.kernel.org/torvalds/c/45a0e07abf49) | [kernel] | perf: Add flags argument to perf_remove_from_context() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`c994d6136738`](https://git.kernel.org/torvalds/c/c994d6136738) | [kernel] | perf: Add lockdep assertions |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-379 |
| CANDIDATE | 4.5 | [`c97f473643a9`](https://git.kernel.org/torvalds/c/c97f473643a9) | [kernel] | perf: Add more assertions |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`a4f4bb6d0c69`](https://git.kernel.org/torvalds/c/a4f4bb6d0c69) | [kernel] | perf: Allow perf_release() with !event->ctx |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`8ba289b8d4e4`](https://git.kernel.org/torvalds/c/8ba289b8d4e4) | [kernel] | perf: Clean up sync_child_event() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`84c4e620d35f`](https://git.kernel.org/torvalds/c/84c4e620d35f) | [kernel] | perf: Close install vs. exit race |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`fae3fde65138`](https://git.kernel.org/torvalds/c/fae3fde65138) | [kernel] | perf: Collapse and fix event_function_call() users |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`28a967c3a2f9`](https://git.kernel.org/torvalds/c/28a967c3a2f9) | [kernel] | perf: Cure event->pending_disable race |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`130056275ade`](https://git.kernel.org/torvalds/c/130056275ade) | [kernel] | perf: Do not double free |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`7e41d17753e6`](https://git.kernel.org/torvalds/c/7e41d17753e6) | [kernel] | perf: Fix cgroup event scheduling |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-379 |
| CANDIDATE | 4.5 | [`70a016575294`](https://git.kernel.org/torvalds/c/70a016575294) | [kernel] | perf: Fix cgroup scheduling in perf_enable_on_exec() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-379 |
| CANDIDATE | 4.5 | [`a69b0ca4ac3b`](https://git.kernel.org/torvalds/c/a69b0ca4ac3b) | [kernel] | perf: Fix cloning |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`3cbaa5906967`](https://git.kernel.org/torvalds/c/3cbaa5906967) | [kernel] | perf: Fix ctx time tracking by introducing EVENT_TIME |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`828b6f0e2617`](https://git.kernel.org/torvalds/c/828b6f0e2617) | [kernel] | perf: Fix NULL deref |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`78cd2c748f45`](https://git.kernel.org/torvalds/c/78cd2c748f45) | [kernel] | perf: Fix orphan hole |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`3e349507d12d`](https://git.kernel.org/torvalds/c/3e349507d12d) | [kernel] | perf: Fix perf_enable_on_exec() event scheduling |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`63b6da39bb38`](https://git.kernel.org/torvalds/c/63b6da39bb38) | [kernel] | perf: Fix perf_event_exit_task() race |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`6a3351b612b7`](https://git.kernel.org/torvalds/c/6a3351b612b7) | [kernel] | perf: Fix race in perf_event_exit_task_context() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`bd2afa49d194`](https://git.kernel.org/torvalds/c/bd2afa49d194) | [kernel] | perf: Fix scaling vs. perf_event_enable() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`7fce250915ef`](https://git.kernel.org/torvalds/c/7fce250915ef) | [kernel] | perf: Fix scaling vs. perf_event_enable_on_exec() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`a096309bc467`](https://git.kernel.org/torvalds/c/a096309bc467) | [kernel] | perf: Fix scaling vs. perf_install_in_context() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`6e801e016917`](https://git.kernel.org/torvalds/c/6e801e016917) | [kernel] | perf: Fix STATE_EXIT usage |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`63e30d3e52d4`](https://git.kernel.org/torvalds/c/63e30d3e52d4) | [kernel] | perf: Make ctx->is_active and cpuctx->task_ctx consistent |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`6f932e5be150`](https://git.kernel.org/torvalds/c/6f932e5be150) | [kernel] | perf: Only update context time when active |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`25432ae96a98`](https://git.kernel.org/torvalds/c/25432ae96a98) | [kernel] | perf: Optimize perf_sched_events() usage |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`a0733e695b83`](https://git.kernel.org/torvalds/c/a0733e695b83) | [kernel] | perf: Remove __free_event() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`5947f6576e2e`](https://git.kernel.org/torvalds/c/5947f6576e2e) | [kernel] | perf: Remove stale comment |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-379 |
| CANDIDATE | 4.5 | [`5fa7c8ec57f7`](https://git.kernel.org/torvalds/c/5fa7c8ec57f7) | [kernel] | perf: Remove/simplify lockdep annotation |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`f47c02c0c840`](https://git.kernel.org/torvalds/c/f47c02c0c840) | [kernel] | perf: Robustify event->owner usage and SMP ordering |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`0da4cf3e0a68`](https://git.kernel.org/torvalds/c/0da4cf3e0a68) | [kernel] | perf: Robustify task_function_call() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`aee7dbc45f8a`](https://git.kernel.org/torvalds/c/aee7dbc45f8a) | [kernel] | perf: Simplify/fix perf_event_enable() event scheduling |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`32132a3d0d5d`](https://git.kernel.org/torvalds/c/32132a3d0d5d) | [kernel] | perf: Specialize perf_event_exit_task() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`c6e5b73242d2`](https://git.kernel.org/torvalds/c/c6e5b73242d2) | [kernel] | perf: Synchronously clean up child events |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`45c815f06b80`](https://git.kernel.org/torvalds/c/45c815f06b80) | [kernel] | perf: Synchronously free aux pages in case of allocation failure |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-379 |
| CANDIDATE | 4.5 | [`60beda849343`](https://git.kernel.org/torvalds/c/60beda849343) | [kernel] | perf: Untangle 'owner' confusion |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`07c4a776135e`](https://git.kernel.org/torvalds/c/07c4a776135e) | [kernel] | perf: Update locking order |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`8833d0e286c1`](https://git.kernel.org/torvalds/c/8833d0e286c1) | [kernel] | perf: Use task_ctx_sched_out() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.5 | [`72ba48be3ec8`](https://git.kernel.org/torvalds/c/72ba48be3ec8) | [kernel] | phy: Add phydev_err() and phydev_dbg() macros |  | generic code, tag [kernel] | 3.10.0-976 |
| CANDIDATE | 4.5 | [`ccaa953e9fc7`](https://git.kernel.org/torvalds/c/ccaa953e9fc7) | [kernel] | phy: Consistently use addr for address on an MII bus |  | generic code, tag [kernel] | 3.10.0-976 |
| CANDIDATE | 4.5 | [`ddf1d398e517`](https://git.kernel.org/torvalds/c/ddf1d398e517) | [kernel] | prctl: take mmap sem for writing to protect against others |  | generic code, tag [kernel] | 3.10.0-585 |
| CANDIDATE | 4.5 | [`7c3b00e06d73`](https://git.kernel.org/torvalds/c/7c3b00e06d73) | [kernel] | ptrace: make wait_on_bit(JOBCTL_TRAPPING_BIT) in ptrace_attach() killable |  | generic code, tag [kernel] | 3.10.0-436 |
| CANDIDATE | 4.5 | [`b7ce2277f087`](https://git.kernel.org/torvalds/c/b7ce2277f087) | [kernel] | sched/cputime: Convert vtime_seqlock to seqcount |  | generic code, tag [kernel] | 3.10.0-367 |
| CANDIDATE | 4.5 | [`823dd3224a07`](https://git.kernel.org/torvalds/c/823dd3224a07) | [kernel] | signals: avoid random wakeups in sigsuspend() |  | generic code, tag [kernel] | 3.10.0-1160.9.1 |
| CANDIDATE | 4.5 | [`1b034bd989aa`](https://git.kernel.org/torvalds/c/1b034bd989aa) | [kernel] | stop_machine: Make cpu_stop_queue_work() and stop_one_cpu_nowait() return bool |  | generic code, tag [kernel] | 3.10.0-974 |
| CANDIDATE | 4.5 | [`984cf355aeaa`](https://git.kernel.org/torvalds/c/984cf355aeaa) | [kernel] | sysrq: Fix warning in sysrq generated crash |  | generic code, tag [kernel] | 3.10.0-364 |
| CANDIDATE | 4.5 | [`35a4933a8959`](https://git.kernel.org/torvalds/c/35a4933a8959) | [kernel] | time: Avoid signed overflow in timekeeping_get_ns() |  | generic code, tag [kernel] | 3.10.0-347 |
| CANDIDATE | 4.5 | [`ec02b076ceab`](https://git.kernel.org/torvalds/c/ec02b076ceab) | [kernel] | timekeeping: Cap adjustments so they don't exceed the maxadj value |  | generic code, tag [kernel] | 3.10.0-506 |
| CANDIDATE | 4.5 | [`e57cbaf0eb00`](https://git.kernel.org/torvalds/c/e57cbaf0eb00) | [kernel] | tracing: Do not have 'comm' filter override event 'comm' field |  | CONFIG_FTRACE=y in A37 | 3.10.0-599 |
| CANDIDATE | 4.5 | [`1d5cfdb07628`](https://git.kernel.org/torvalds/c/1d5cfdb07628) | [ipc] | tree wide: use kvfree() than conditional kfree()/vfree() |  | generic code, tag [ipc] | 3.10.0-1067 |
| CANDIDATE | 4.5 | [`03e0d4610bf4`](https://git.kernel.org/torvalds/c/03e0d4610bf4) | [kernel] | watchdog: introduce touch_softlockup_watchdog_sched() |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.5 | [`62cd1c40ce1c`](https://git.kernel.org/torvalds/c/62cd1c40ce1c) | [kernel] | watchdog: kill unref/ref ops |  | generic code, tag [kernel] | 3.10.0-899 |
| CANDIDATE | 4.5 | [`ef557180447f`](https://git.kernel.org/torvalds/c/ef557180447f) | [kernel] | workqueue: schedule WORK_CPU_UNBOUND work on wq_unbound_cpumask CPUs |  | generic code, tag [kernel] | 3.10.0-675 |
| CANDIDATE | 4.6 | [`b2add86edd3b`](https://git.kernel.org/torvalds/c/b2add86edd3b) | [kernel] | acct, time: Change indentation in __acct_update_integrals() |  | generic code, tag [kernel] | 3.10.0-367 |
| CANDIDATE | 4.6 | [`133e1e5acd4a`](https://git.kernel.org/torvalds/c/133e1e5acd4a) | [kernel] | audit: stop an old auditd being starved out by a new auditd |  | CONFIG_AUDIT=y in A37 | 3.10.0-372 |
| CANDIDATE | 4.6 | [`d82bccc69041`](https://git.kernel.org/torvalds/c/d82bccc69041) | [kernel] | bpf/verifier: reject invalid LD_ABS \| BPF_DW instruction |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`15a07b33814d`](https://git.kernel.org/torvalds/c/15a07b33814d) | [kernel] | bpf: add lookup/update support for per-cpu hash and array maps |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`322cea2f41ad`](https://git.kernel.org/torvalds/c/322cea2f41ad) | [kernel] | bpf: add missing map_flags to bpf_map_show_fdinfo |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`8e2fe1d9f1a2`](https://git.kernel.org/torvalds/c/8e2fe1d9f1a2) | [kernel] | bpf: add new arg_type that allows for 0 sized stack buffer |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`cdc4e47da8f4`](https://git.kernel.org/torvalds/c/cdc4e47da8f4) | [kernel] | bpf: avoid copying junk bytes in bpf_get_current_comm() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`b8cdc05173f0`](https://git.kernel.org/torvalds/c/b8cdc05173f0) | [kernel] | bpf: bpf_stackmap_copy depends on CONFIG_PERF_EVENTS |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`823707b68d6e`](https://git.kernel.org/torvalds/c/823707b68d6e) | [kernel] | bpf: check for reserved flag bits in array and stack maps |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`557c0c6e7df8`](https://git.kernel.org/torvalds/c/557c0c6e7df8) | [kernel] | bpf: convert stackmap to pre-allocation |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`6aff67c85c9e`](https://git.kernel.org/torvalds/c/6aff67c85c9e) | [kernel] | bpf: fix check_map_func_compatibility logic |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`8358b02bf67d`](https://git.kernel.org/torvalds/c/8358b02bf67d) | [kernel] | bpf: fix double-fdput in replace_map_fd_with_map_ptr() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`92117d8443bc`](https://git.kernel.org/torvalds/c/92117d8443bc) | [kernel] | bpf: fix refcnt overflow |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`6bbd9a05a1f9`](https://git.kernel.org/torvalds/c/6bbd9a05a1f9) | [kernel] | bpf: grab rcu read lock for bpf_percpu_hash_update |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`a10423b87a7e`](https://git.kernel.org/torvalds/c/a10423b87a7e) | [kernel] | bpf: introduce BPF_MAP_TYPE_PERCPU_ARRAY map |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`824bd0ce6c7c`](https://git.kernel.org/torvalds/c/824bd0ce6c7c) | [kernel] | bpf: introduce BPF_MAP_TYPE_PERCPU_HASH map |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`d5a3b1f69186`](https://git.kernel.org/torvalds/c/d5a3b1f69186) | [kernel] | bpf: introduce BPF_MAP_TYPE_STACK_TRACE |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`e19494edab82`](https://git.kernel.org/torvalds/c/e19494edab82) | [kernel] | bpf: introduce percpu_freelist |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`39853cc0cdcf`](https://git.kernel.org/torvalds/c/39853cc0cdcf) | [kernel] | bpf: Mark __bpf_prog_run() stack frame as non-standard |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`6c9059817432`](https://git.kernel.org/torvalds/c/6c9059817432) | [kernel] | bpf: pre-allocate hash map elements |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`b121d1e74d1f`](https://git.kernel.org/torvalds/c/b121d1e74d1f) | [kernel] | bpf: prevent kprobe+bpf deadlocks |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.6 | [`bbf66d897adf`](https://git.kernel.org/torvalds/c/bbf66d897adf) | [kernel] | clocksource: Allow unregistering the watchdog |  | generic code, tag [kernel] | 3.10.0-376 |
| CANDIDATE | 4.6 | [`5180e3e24fd3`](https://git.kernel.org/torvalds/c/5180e3e24fd3) | [kernel] | compat: add in_compat_syscall to ask whether we're in a compat syscall |  | generic code, tag [kernel] | 3.10.0-422 |
| CANDIDATE | 4.6 | [`1ae1602de028`](https://git.kernel.org/torvalds/c/1ae1602de028) | [kernel] | configfs: switch ->default groups to a linked list |  | CONFIG_CONFIGFS_FS=y in A37 | 3.10.0-624 |
| CANDIDATE | 4.6 | [`34e2c555f3e1`](https://git.kernel.org/torvalds/c/34e2c555f3e1) | [kernel] | cpufreq: Add mechanism for registering utilization update callbacks |  | generic code, tag [kernel] | 3.10.0-712 |
| CANDIDATE | 4.6 | [`adaf9fcd1369`](https://git.kernel.org/torvalds/c/adaf9fcd1369) | [kernel] | cpufreq: Move scheduler-related code to the sched directory |  | generic code, tag [kernel] | 3.10.0-712 |
| CANDIDATE | 4.6 | [`a3499e9bf0fe`](https://git.kernel.org/torvalds/c/a3499e9bf0fe) | [kernel] | devm: add helper devm_add_action_or_reset() |  | generic code, tag [kernel] | 3.10.0-504 |
| CANDIDATE | 4.6 | [`84b6d3e6149c`](https://git.kernel.org/torvalds/c/84b6d3e6149c) | [kernel] | ftrace: Make ftrace_hash_rec_enable return update bool |  | CONFIG_FTRACE=y in A37 | 3.10.0-396 |
| CANDIDATE | 4.6 | [`7f50d06bb6b8`](https://git.kernel.org/torvalds/c/7f50d06bb6b8) | [kernel] | ftrace: Update dynamic ftrace calls only if necessary |  | CONFIG_FTRACE=y in A37 | 3.10.0-396 |
| CANDIDATE | 4.6 | [`fbf198030e0b`](https://git.kernel.org/torvalds/c/fbf198030e0b) | [kernel] | genirq: Add default affinity mask command line option |  | generic code, tag [kernel] | 3.10.0-537 |
| CANDIDATE | 4.6 | [`6cee3821e4e4`](https://git.kernel.org/torvalds/c/6cee3821e4e4) | [kernel] | gpio/pinctrl: sunxi: stop poking around in private vars |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-697 |
| CANDIDATE | 4.6 | [`8c996940b3be`](https://git.kernel.org/torvalds/c/8c996940b3be) | [kernel] | kallsyms: don't overload absolute symbol type for percpu symbols |  | generic code, tag [kernel] | 3.10.0-664 |
| CANDIDATE | 4.6 | [`a81a5a17d44b`](https://git.kernel.org/torvalds/c/a81a5a17d44b) | [kernel] | lib: add "on"/"off" support to kstrtobool |  | generic code, tag [kernel] | 3.10.0-415 |
| CANDIDATE | 4.6 | [`ef951599074b`](https://git.kernel.org/torvalds/c/ef951599074b) | [kernel] | lib: move strtobool() to kstrtobool() |  | generic code, tag [kernel] | 3.10.0-415 |
| CANDIDATE | 4.6 | [`59e6473980f3`](https://git.kernel.org/torvalds/c/59e6473980f3) | [kernel] | libnvdimm, pmem: clear poison on write |  | generic code, tag [kernel] | 3.10.0-490 |
| CANDIDATE | 4.6 | [`1329ce6fbbe4`](https://git.kernel.org/torvalds/c/1329ce6fbbe4) | [kernel] | locking/mutex: Allow next waiter lockless wakeup |  | generic code, tag [kernel] | 3.10.0-549 |
| CANDIDATE | 4.6 | [`6687659568e2`](https://git.kernel.org/torvalds/c/6687659568e2) | [kernel] | locking/pvqspinlock: Fix division by zero in qstat_read() |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.6 | [`eaff0e7003cc`](https://git.kernel.org/torvalds/c/eaff0e7003cc) | [kernel] | locking/pvqspinlock: Move lock stealing count tracking code into pv_queued_spin_steal_lock() |  | generic code, tag [kernel] | 3.10.0-812 |
| CANDIDATE | 4.6 | [`b82e530290a0`](https://git.kernel.org/torvalds/c/b82e530290a0) | [kernel] | locking/qspinlock: Move __ARCH_SPIN_LOCK_UNLOCKED to qspinlock_types.h |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.6 | [`7ae0fa439faf`](https://git.kernel.org/torvalds/c/7ae0fa439faf) | [kernel] | nfit, libnvdimm: async region scrub workqueue |  | generic code, tag [kernel] | 3.10.0-490 |
| CANDIDATE | 4.6 | [`87bf572e19a0`](https://git.kernel.org/torvalds/c/87bf572e19a0) | [kernel] | nfit: disable userspace initiated ars during scrub |  | generic code, tag [kernel] | 3.10.0-490 |
| CANDIDATE | 4.6 | [`b6c217ab9be6`](https://git.kernel.org/torvalds/c/b6c217ab9be6) | [kernel] | nvmem: Add backwards compatibility support for older EEPROM drivers |  | generic code, tag [kernel] | 3.10.0-833 |
| CANDIDATE | 4.6 | [`811b0d6538b9`](https://git.kernel.org/torvalds/c/811b0d6538b9) | [kernel] | nvmem: Add flag to export NVMEM to root only |  | generic code, tag [kernel] | 3.10.0-833 |
| CANDIDATE | 4.6 | [`ebc41f20d77f`](https://git.kernel.org/torvalds/c/ebc41f20d77f) | [kernel] | panic: change nmi_panic from macro to function |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | 4.6 | [`4cc7ecb7f2a6`](https://git.kernel.org/torvalds/c/4cc7ecb7f2a6) | [kernel] | param: convert some "on"/"off" users to strtobool |  | generic code, tag [kernel] | 3.10.0-415 |
| CANDIDATE | 4.6 | [`0161028b7c8a`](https://git.kernel.org/torvalds/c/0161028b7c8a) | [kernel] | perf/core: Change the default paranoia level to 2 |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-835 |
| CANDIDATE | 4.6 | [`9f448cd3cbce`](https://git.kernel.org/torvalds/c/9f448cd3cbce) | [kernel] | perf/core: Disable the event on a truncated AUX record |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-410 |
| CANDIDATE | 4.6 | [`201c2f85bd0b`](https://git.kernel.org/torvalds/c/201c2f85bd0b) | [kernel] | perf/core: Don't leak event in the syscall error path |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-410 |
| CANDIDATE | 4.6 | [`91a612eea9a3`](https://git.kernel.org/torvalds/c/91a612eea9a3) | [kernel] | perf/core: Fix dynamic interrupt throttle |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.6 | [`79c9ce57eb2d`](https://git.kernel.org/torvalds/c/79c9ce57eb2d) | [kernel] | perf/core: Fix perf_event_open() vs. execve() race | CVE-2019-3901 | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-1105 |
| CANDIDATE | 4.6 | [`927a55708558`](https://git.kernel.org/torvalds/c/927a55708558) | [kernel] | perf/core: Fix perf_sched_count derailment |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-410 |
| CANDIDATE | 4.6 | [`1e02cd40f151`](https://git.kernel.org/torvalds/c/1e02cd40f151) | [kernel] | perf/core: Fix the unthrottle logic |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.6 | [`8fdc65391c6a`](https://git.kernel.org/torvalds/c/8fdc65391c6a) | [kernel] | perf/core: Fix time tracking bug with multiplexing |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | 4.6 | [`8184059e93c2`](https://git.kernel.org/torvalds/c/8184059e93c2) | [kernel] | perf/core: Fix Undefined behaviour in rb_alloc() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-410 |
| CANDIDATE | 4.6 | [`568b329a02f7`](https://git.kernel.org/torvalds/c/568b329a02f7) | [kernel] | perf: generalize perf_callchain |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-778 |
| CANDIDATE | 4.6 | [`1366c37ed84b`](https://git.kernel.org/torvalds/c/1366c37ed84b) | [kernel] | radix tree test harness |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.6 | [`2d6f45b802af`](https://git.kernel.org/torvalds/c/2d6f45b802af) | [kernel] | radix-tree tests: add regression3 test |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.6 | [`7475851f340f`](https://git.kernel.org/torvalds/c/7475851f340f) | [kernel] | radix-tree tests: add test for radix_tree_iter_next |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.6 | [`7cf19af4debc`](https://git.kernel.org/torvalds/c/7cf19af4debc) | [kernel] | radix_tree: add radix_tree_dump |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.6 | [`e61452365372`](https://git.kernel.org/torvalds/c/e61452365372) | [kernel] | radix_tree: add support for multi-order entries |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.6 | [`0070e28d97e7`](https://git.kernel.org/torvalds/c/0070e28d97e7) | [kernel] | radix_tree: loop based on shift count, not height |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.6 | [`339e6353046d`](https://git.kernel.org/torvalds/c/339e6353046d) | [kernel] | radix_tree: tag all internal tree nodes as indirect pointers |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.6 | [`ff3cc952d3f0`](https://git.kernel.org/torvalds/c/ff3cc952d3f0) | [kernel] | resource: Add remove_resource interface |  | generic code, tag [kernel] | 3.10.0-489 |
| CANDIDATE | 4.6 | [`9babd5c8caa6`](https://git.kernel.org/torvalds/c/9babd5c8caa6) | [kernel] | resource: Add System RAM resource type |  | generic code, tag [kernel] | 3.10.0-944 |
| CANDIDATE | 4.6 | [`4e0d8f7eff3f`](https://git.kernel.org/torvalds/c/4e0d8f7eff3f) | [kernel] | resource: Change __request_region to inherit from immediate parent |  | generic code, tag [kernel] | 3.10.0-489 |
| CANDIDATE | 4.6 | [`bd7e6cb30ced`](https://git.kernel.org/torvalds/c/bd7e6cb30ced) | [kernel] | resource: Change walk_system_ram() to use System RAM type |  | generic code, tag [kernel] | 3.10.0-944 |
| CANDIDATE | 4.6 | [`8095d0f225fe`](https://git.kernel.org/torvalds/c/8095d0f225fe) | [kernel] | resource: Export insert_resource and remove_resource |  | generic code, tag [kernel] | 3.10.0-489 |
| CANDIDATE | 4.6 | [`a3650d53ba16`](https://git.kernel.org/torvalds/c/a3650d53ba16) | [kernel] | resource: Handle resource flags properly |  | generic code, tag [kernel] | 3.10.0-944 |
| CANDIDATE | 4.6 | [`382c2fe99432`](https://git.kernel.org/torvalds/c/382c2fe99432) | [kernel] | sched, time: Remove non-power-of-two divides from __acct_update_integrals() |  | generic code, tag [kernel] | 3.10.0-367 |
| CANDIDATE | 4.6 | [`ff9a9b4c4334`](https://git.kernel.org/torvalds/c/ff9a9b4c4334) | [kernel] | sched, time: Switch VIRT_CPU_ACCOUNTING_GEN to jiffy granularity |  | generic code, tag [kernel] | 3.10.0-367 |
| CANDIDATE | 4.6 | [`cb2517653fcc`](https://git.kernel.org/torvalds/c/cb2517653fcc) | [kernel] | sched/debug: Make schedstats a runtime tunable that is disabled by default |  | generic code, tag [kernel] | 3.10.0-456 |
| CANDIDATE | 4.6 | [`8e05e96ac949`](https://git.kernel.org/torvalds/c/8e05e96ac949) | [kernel] | sched: Mark __schedule() stack frame as non-standard |  | generic code, tag [kernel] | 3.10.0-471 |
| CANDIDATE | 4.6 | [`8e05e96ac949`](https://git.kernel.org/torvalds/c/8e05e96ac949) | [kernel] | sched: Mark __schedule() stack frame as non-standard |  | generic code, tag [kernel] | 3.10.0-439 |
| CANDIDATE | 4.6 | [`cd0ea35ff551`](https://git.kernel.org/torvalds/c/cd0ea35ff551) | [kernel] | signals, pkeys: Notify userspace about protection key faults |  | generic code, tag [kernel] | 3.10.0-706 |
| CANDIDATE | 4.6 | [`f9310b2f9a19`](https://git.kernel.org/torvalds/c/f9310b2f9a19) | [kernel] | sscanf: implement basic character sets |  | generic code, tag [kernel] | 3.10.0-778 |
| CANDIDATE | 4.6 | [`9344c92c2e72`](https://git.kernel.org/torvalds/c/9344c92c2e72) | [kernel] | time, acct: Drop irq save & restore from __acct_update_integrals() |  | generic code, tag [kernel] | 3.10.0-367 |
| CANDIDATE | 4.6 | [`6436257b491c`](https://git.kernel.org/torvalds/c/6436257b491c) | [kernel] | time/timekeeping: Work around false positive GCC warning |  | generic code, tag [kernel] | 3.10.0-805 |
| CANDIDATE | 4.6 | [`6bd58f09e1d8`](https://git.kernel.org/torvalds/c/6bd58f09e1d8) | [kernel] | time: Add cycles to nanoseconds translation |  | generic code, tag [kernel] | 3.10.0-380 |
| CANDIDATE | 4.6 | [`8006c24595ca`](https://git.kernel.org/torvalds/c/8006c24595ca) | [kernel] | time: Add driver cross timestamp interface for higher precision time synchronization |  | generic code, tag [kernel] | 3.10.0-380 |
| CANDIDATE | 4.6 | [`2c756feb18d9`](https://git.kernel.org/torvalds/c/2c756feb18d9) | [kernel] | time: Add history to cross timestamp interface supporting slower devices |  | generic code, tag [kernel] | 3.10.0-380 |
| CANDIDATE | 4.6 | [`9da0f49c8767`](https://git.kernel.org/torvalds/c/9da0f49c8767) | [kernel] | time: Add timekeeping snapshot code capturing system time and counter |  | generic code, tag [kernel] | 3.10.0-380 |
| CANDIDATE | 4.6 | [`ba26621e63ce`](https://git.kernel.org/torvalds/c/ba26621e63ce) | [kernel] | time: Remove duplicated code in ktime_get_raw_and_real() |  | generic code, tag [kernel] | 3.10.0-380 |
| CANDIDATE | 4.6 | [`fc0c2028135c`](https://git.kernel.org/torvalds/c/fc0c2028135c) | [kernel] | x86, pmem: use memcpy_mcsafe() for memcpy_from_pmem() |  | generic code, tag [kernel] | 3.10.0-640 |
| CANDIDATE | 4.7 | [`db0a6fb5d97a`](https://git.kernel.org/torvalds/c/db0a6fb5d97a) | [kernel] | audit: add tty field to LOGIN event |  | CONFIG_AUDIT=y in A37 | 3.10.0-533 |
| CANDIDATE | 4.7 | [`76a658c20efd`](https://git.kernel.org/torvalds/c/76a658c20efd) | [kernel] | audit: move calcs after alloc and check when logging set loginuid |  | CONFIG_AUDIT=y in A37 | 3.10.0-533 |
| CANDIDATE | 4.7 | [`612bacad78ba`](https://git.kernel.org/torvalds/c/612bacad78ba) | [kernel] | bpf, inode: disallow userns mounts |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.7 | [`ceb56070359b`](https://git.kernel.org/torvalds/c/ceb56070359b) | [kernel] | bpf, perf: delay release of BPF prog after grace period |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.7 | [`1e33759c788c`](https://git.kernel.org/torvalds/c/1e33759c788c) | [kernel] | bpf, trace: add BPF_F_CURRENT_CPU flag for bpf_perf_event_output |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.7 | [`435faee1aae9`](https://git.kernel.org/torvalds/c/435faee1aae9) | [kernel] | bpf, verifier: add ARG_PTR_TO_RAW_STACK type |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.7 | [`33ff9823c569`](https://git.kernel.org/torvalds/c/33ff9823c569) | [kernel] | bpf, verifier: add bpf_call_arg_meta for passing meta data |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.7 | [`07016151a446`](https://git.kernel.org/torvalds/c/07016151a446) | [kernel] | bpf, verifier: further improve search pruning |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.7 | [`c237ee5eb33b`](https://git.kernel.org/torvalds/c/c237ee5eb33b) | [kernel] | bpf: add bpf_patch_insn_single helper |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`bd570ff970a5`](https://git.kernel.org/torvalds/c/bd570ff970a5) | [kernel] | bpf: add event output helper for notifications/sampling/logging |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`1a0dc1ac1d29`](https://git.kernel.org/torvalds/c/1a0dc1ac1d29) | [kernel] | bpf: cleanup verifier code |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`074f528eed40`](https://git.kernel.org/torvalds/c/074f528eed40) | [kernel] | bpf: convert relevant helper args to ARG_PTR_TO_RAW_STACK |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`969bf05eb3ce`](https://git.kernel.org/torvalds/c/969bf05eb3ce) | [kernel] | bpf: direct packet access |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`19de99f70b87`](https://git.kernel.org/torvalds/c/19de99f70b87) | [kernel] | bpf: fix matching of data/data_end in verifier |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`735b433397ea`](https://git.kernel.org/torvalds/c/735b433397ea) | [kernel] | bpf: improve verifier state equivalence |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`4936e3528e3e`](https://git.kernel.org/torvalds/c/4936e3528e3e) | [kernel] | bpf: minor cleanups in ebpf code |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`d1c55ab5e41f`](https://git.kernel.org/torvalds/c/d1c55ab5e41f) | [kernel] | bpf: prepare bpf_int_jit_compile/bpf_prog_select_runtime apis |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`b7552e1bccbe`](https://git.kernel.org/torvalds/c/b7552e1bccbe) | [kernel] | bpf: rather use get_random_int for randomizations |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`9fd82b610ba3`](https://git.kernel.org/torvalds/c/9fd82b610ba3) | [kernel] | bpf: register BPF_PROG_TYPE_TRACEPOINT program type |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`0c93b7d85d40`](https://git.kernel.org/torvalds/c/0c93b7d85d40) | [kernel] | bpf: reject invalid names right in ->lookup() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`32bbe0078afe`](https://git.kernel.org/torvalds/c/32bbe0078afe) | [kernel] | bpf: sanitize bpf tracepoint access |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`4923ec0b10d9`](https://git.kernel.org/torvalds/c/4923ec0b10d9) | [kernel] | bpf: simplify verifier register state assignments |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`9940d67c93b5`](https://git.kernel.org/torvalds/c/9940d67c93b5) | [kernel] | bpf: support bpf_get_stackid() and bpf_perf_event_output() in tracepoint programs |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`d91b28ed42de`](https://git.kernel.org/torvalds/c/d91b28ed42de) | [kernel] | bpf: support decreasing order in direct packet access |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`1b9b69ecb3a5`](https://git.kernel.org/torvalds/c/1b9b69ecb3a5) | [kernel] | bpf: teach verifier to recognize imm += ptr pattern |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`e27f4a942a0e`](https://git.kernel.org/torvalds/c/e27f4a942a0e) | [kernel] | bpf: Use mount_nodev not mount_ns to mount the bpf filesystem |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`db58ba459202`](https://git.kernel.org/torvalds/c/db58ba459202) | [kernel] | bpf: wire in data and data_end for cls_act_bpf |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`b7898fda5bc7`](https://git.kernel.org/torvalds/c/b7898fda5bc7) | [kernel] | cpufreq: Support for fast frequency switching |  | generic code, tag [kernel] | 3.10.0-712 |
| CANDIDATE | 4.7 | [`f4d052660323`](https://git.kernel.org/torvalds/c/f4d052660323) | [kernel] | device property: don't bother the drivers with struct property_set |  | generic code, tag [kernel] | 3.10.0-833 |
| CANDIDATE | 4.7 | [`8d98e96b345e`](https://git.kernel.org/torvalds/c/8d98e96b345e) | [kernel] | elf: add livepatch-specific Elf constants |  | generic code, tag [kernel] | 3.10.0-778 |
| CANDIDATE | 4.7 | [`04cf31a759ef`](https://git.kernel.org/torvalds/c/04cf31a759ef) | [kernel] | ftrace: Make ftrace_location_range() global |  | CONFIG_FTRACE=y in A37 | 3.10.0-911 |
| CANDIDATE | 4.7 | [`a16d6ebca6ef`](https://git.kernel.org/torvalds/c/a16d6ebca6ef) | [kernel] | i2c: introduce helper function to get 8 bit address from a message |  | CONFIG_I2C=y in A37 | 3.10.0-840 |
| CANDIDATE | 4.7 | [`3ed605bc8a0a`](https://git.kernel.org/torvalds/c/3ed605bc8a0a) | [kernel] | kernel.h: add u64_to_user_ptr() |  | generic code, tag [kernel] | 3.10.0-652 |
| CANDIDATE | 4.7 | [`2c6100227116`](https://git.kernel.org/torvalds/c/2c6100227116) | [kernel] | locking/qspinlock: Fix spin_unlock_wait() some more |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.7 | [`795ddd18d38f`](https://git.kernel.org/torvalds/c/795ddd18d38f) | [kernel] | nvmem: core: remove regmap dependency |  | generic code, tag [kernel] | 3.10.0-833 |
| CANDIDATE | 4.7 | [`98b5c2c65c29`](https://git.kernel.org/torvalds/c/98b5c2c65c29) | [trace] | perf, bpf: allow bpf programs attach to tracepoints |  | generic code, tag [trace] | 3.10.0-934 |
| CANDIDATE | 4.7 | [`98b5c2c65c29`](https://git.kernel.org/torvalds/c/98b5c2c65c29) | [kernel] | perf, bpf: allow bpf programs attach to tracepoints |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.7 | [`85b67bcb7e4a`](https://git.kernel.org/torvalds/c/85b67bcb7e4a) | [kernel] | perf, bpf: minimize the size of perf_trace_() tracepoint handler |  | generic code, tag [kernel] | 3.10.0-934 |
| CANDIDATE | 4.7 | [`9ecda41acb97`](https://git.kernel.org/torvalds/c/9ecda41acb97) | [kernel] | perf/core: Add ::write_backward attribute to perf event |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-524 |
| CANDIDATE | 4.7 | [`b73e4fefc18a`](https://git.kernel.org/torvalds/c/b73e4fefc18a) | [kernel] | perf/core: Extend perf_event_aux_ctx() to optionally iterate through more events |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-524 |
| CANDIDATE | 4.7 | [`95ff4ca26c49`](https://git.kernel.org/torvalds/c/95ff4ca26c49) | [kernel] | perf/core: Free AUX pages in unmap path |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-524 |
| CANDIDATE | 4.7 | [`375637bc5249`](https://git.kernel.org/torvalds/c/375637bc5249) | [kernel] | perf/core: Introduce address range filtering |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-524 |
| CANDIDATE | 4.7 | [`6e855cd4f4b5`](https://git.kernel.org/torvalds/c/6e855cd4f4b5) | [kernel] | perf/core: Let userspace know if the PMU supports address filters |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-524 |
| CANDIDATE | 4.7 | [`c796bbbe8dcc`](https://git.kernel.org/torvalds/c/c796bbbe8dcc) | [kernel] | perf/core: Move set_filter() out of CONFIG_EVENT_TRACING |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-524 |
| CANDIDATE | 4.7 | [`62a92c8f553e`](https://git.kernel.org/torvalds/c/62a92c8f553e) | [kernel] | perf/core: Remove a redundant check |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-524 |
| CANDIDATE | 4.7 | [`1879445dfa7b`](https://git.kernel.org/torvalds/c/1879445dfa7b) | [kernel] | perf/core: Set event's default ::overflow_handler() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-524 |
| CANDIDATE | 4.7 | [`26657848502b`](https://git.kernel.org/torvalds/c/26657848502b) | [kernel] | perf/core: Verify we have a single perf_hw_context PMU |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-524 |
| CANDIDATE | 4.7 | [`af5bb4ed1254`](https://git.kernel.org/torvalds/c/af5bb4ed1254) | [kernel] | perf/ring_buffer: Document AUX API usage |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-524 |
| CANDIDATE | 4.7 | [`86e7972f690c`](https://git.kernel.org/torvalds/c/86e7972f690c) | [kernel] | perf/ring_buffer: Introduce new ioctl options to pause and resume the ring-buffer |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-524 |
| CANDIDATE | 4.7 | [`d1b26c70246b`](https://git.kernel.org/torvalds/c/d1b26c70246b) | [kernel] | perf/ring_buffer: Prepare writing into the ring-buffer from the end |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-524 |
| CANDIDATE | 4.7 | [`dcb10a967ce8`](https://git.kernel.org/torvalds/c/dcb10a967ce8) | [kernel] | perf/ring_buffer: Refuse to begin AUX transaction after rb->aux_mmap_count drops |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-524 |
| CANDIDATE | 4.7 | [`ec5e099d6e94`](https://git.kernel.org/torvalds/c/ec5e099d6e94) | [kernel] | perf: optimize perf_fetch_caller_regs |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-524 |
| CANDIDATE | 4.7 | [`e93735be6a18`](https://git.kernel.org/torvalds/c/e93735be6a18) | [trace] | perf: remove unused __addr variable |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`d42cb1a9fffa`](https://git.kernel.org/torvalds/c/d42cb1a9fffa) | [kernel] | radix tree test suite: add tests for radix_tree_locate_item() |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`97d778b2de92`](https://git.kernel.org/torvalds/c/97d778b2de92) | [kernel] | radix tree test suite: allow testing other fan-out values |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`f518b1607e12`](https://git.kernel.org/torvalds/c/f518b1607e12) | [kernel] | radix tree test suite: fix build |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`aa1d62d8530d`](https://git.kernel.org/torvalds/c/aa1d62d8530d) | [kernel] | radix tree test suite: keep regression test runs short |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`643b57d0a9bd`](https://git.kernel.org/torvalds/c/643b57d0a9bd) | [kernel] | radix tree test suite: multi-order iteration test |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`7f308671c798`](https://git.kernel.org/torvalds/c/7f308671c798) | [kernel] | radix tree test suite: rebuild when headers change |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`0694f0c9e20c`](https://git.kernel.org/torvalds/c/0694f0c9e20c) | [kernel] | radix tree test suite: remove dependencies on height |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`4f3755d1ae3c`](https://git.kernel.org/torvalds/c/4f3755d1ae3c) | [kernel] | radix tree test suite: start adding multiorder tests |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`0fc9b8ca2b1d`](https://git.kernel.org/torvalds/c/0fc9b8ca2b1d) | [kernel] | radix-tree test suite: add multi-order tag test |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`6b053b8e5f5e`](https://git.kernel.org/torvalds/c/6b053b8e5f5e) | [kernel] | radix-tree: add copyright statements |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`db050f2924fc`](https://git.kernel.org/torvalds/c/db050f2924fc) | [kernel] | radix-tree: add missing sibling entry functionality |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`21ef533931f7`](https://git.kernel.org/torvalds/c/21ef533931f7) | [kernel] | radix-tree: add support for multi-order iterating |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`eb73f7f3300c`](https://git.kernel.org/torvalds/c/eb73f7f3300c) | [kernel] | radix-tree: add test for radix_tree_locate_item() |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`af49a63e101e`](https://git.kernel.org/torvalds/c/af49a63e101e) | [kernel] | radix-tree: change naming conventions in radix_tree_shrink |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`29e0967c2f66`](https://git.kernel.org/torvalds/c/29e0967c2f66) | [kernel] | radix-tree: fix deleting a multi-order entry through an alias |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`49ea6ebcd308`](https://git.kernel.org/torvalds/c/49ea6ebcd308) | [kernel] | radix-tree: fix extending the tree for multi-order entries at offset 0 |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`7b60e9ad59a3`](https://git.kernel.org/torvalds/c/7b60e9ad59a3) | [kernel] | radix-tree: fix multiorder BUG_ON in radix_tree_insert |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`8a14f4d8328c`](https://git.kernel.org/torvalds/c/8a14f4d8328c) | [kernel] | radix-tree: fix radix_tree_create for sibling entries |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`0796c5832553`](https://git.kernel.org/torvalds/c/0796c5832553) | [kernel] | radix-tree: fix radix_tree_dump() for multi-order entries |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`3cb9185c6730`](https://git.kernel.org/torvalds/c/3cb9185c6730) | [kernel] | radix-tree: fix radix_tree_iter_retry() for tagged iterators |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`070c5ac2740b`](https://git.kernel.org/torvalds/c/070c5ac2740b) | [kernel] | radix-tree: fix radix_tree_range_tag_if_tagged() for multiorder entries |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`afe0e395b6d1`](https://git.kernel.org/torvalds/c/afe0e395b6d1) | [kernel] | radix-tree: fix several shrinking bugs with multiorder entries |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`3b8c00f68405`](https://git.kernel.org/torvalds/c/3b8c00f68405) | [kernel] | radix-tree: fix sibling entry insertion |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`3bcadd6fa6c4`](https://git.kernel.org/torvalds/c/3bcadd6fa6c4) | [kernel] | radix-tree: free up the bottom bit of exceptional entries for reuse |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`e9256efcc8e3`](https://git.kernel.org/torvalds/c/e9256efcc8e3) | [kernel] | radix-tree: introduce radix_tree_empty |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`1456a439fc2d`](https://git.kernel.org/torvalds/c/1456a439fc2d) | [kernel] | radix-tree: introduce radix_tree_load_root() |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`d604c324524b`](https://git.kernel.org/torvalds/c/d604c324524b) | [kernel] | radix-tree: introduce radix_tree_replace_clear_tags() |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`9e85d8111965`](https://git.kernel.org/torvalds/c/9e85d8111965) | [kernel] | radix-tree: make radix_tree_descend() more useful |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`2fcd9005cc03`](https://git.kernel.org/torvalds/c/2fcd9005cc03) | [kernel] | radix-tree: miscellaneous fixes |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`fb209019c92a`](https://git.kernel.org/torvalds/c/fb209019c92a) | [kernel] | radix-tree: remove a use of root->height from delete_node |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`aa5475760235`](https://git.kernel.org/torvalds/c/aa5475760235) | [kernel] | radix-tree: remove restriction on multi-order entries |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`d0891265bbc9`](https://git.kernel.org/torvalds/c/d0891265bbc9) | [kernel] | radix-tree: remove root->height |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`6c4bd68a2962`](https://git.kernel.org/torvalds/c/6c4bd68a2962) | [kernel] | radix-tree: remove unused looping macros |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`30ff46ccb303`](https://git.kernel.org/torvalds/c/30ff46ccb303) | [kernel] | radix-tree: rename INDIRECT_PTR to INTERNAL_NODE |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`4dd6c0987ca4`](https://git.kernel.org/torvalds/c/4dd6c0987ca4) | [kernel] | radix-tree: rename indirect_to_ptr() to entry_to_node() |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`a4db4dcea1b3`](https://git.kernel.org/torvalds/c/a4db4dcea1b3) | [kernel] | radix-tree: rename ptr_to_indirect() to node_to_entry() |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`b194d16c27af`](https://git.kernel.org/torvalds/c/b194d16c27af) | [kernel] | radix-tree: rename radix_tree_is_indirect_ptr() |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`c12e51b07b3a`](https://git.kernel.org/torvalds/c/c12e51b07b3a) | [kernel] | radix-tree: replace node->height with node->shift |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`858299544efc`](https://git.kernel.org/torvalds/c/858299544efc) | [kernel] | radix-tree: rewrite __radix_tree_lookup |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`0a2efc6c809b`](https://git.kernel.org/torvalds/c/0a2efc6c809b) | [kernel] | radix-tree: rewrite radix_tree_locate_item |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`00f47b581105`](https://git.kernel.org/torvalds/c/00f47b581105) | [kernel] | radix-tree: rewrite radix_tree_tag_clear |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`4589ba6d0f43`](https://git.kernel.org/torvalds/c/4589ba6d0f43) | [kernel] | radix-tree: rewrite radix_tree_tag_get |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`fb969909dd18`](https://git.kernel.org/torvalds/c/fb969909dd18) | [kernel] | radix-tree: rewrite radix_tree_tag_set |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`0c7fa0a8418c`](https://git.kernel.org/torvalds/c/0c7fa0a8418c) | [kernel] | radix-tree: split node->path into offset and height |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`89148aa40201`](https://git.kernel.org/torvalds/c/89148aa40201) | [kernel] | radix-tree: tidy up __radix_tree_create() |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`8c1244de00ef`](https://git.kernel.org/torvalds/c/8c1244de00ef) | [kernel] | radix-tree: tidy up next_chunk |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`a8e4da25d3c5`](https://git.kernel.org/torvalds/c/a8e4da25d3c5) | [kernel] | radix-tree: tidy up range_tag_if_tagged |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`f98db6013c55`](https://git.kernel.org/torvalds/c/f98db6013c55) | [kernel] | sched/core: Add switch_mm_irqs_off() and use it in the scheduler |  | generic code, tag [kernel] | 3.10.0-935 |
| CANDIDATE | 4.7 | [`b7e7ade34e61`](https://git.kernel.org/torvalds/c/b7e7ade34e61) | [kernel] | sched/core: Fix remote wakeups |  | generic code, tag [kernel] | 3.10.0-907 |
| CANDIDATE | 4.7 | [`59efa0bac9cf`](https://git.kernel.org/torvalds/c/59efa0bac9cf) | [kernel] | sched/core: Kill sched_class::task_waking to clean up the migration logic |  | generic code, tag [kernel] | 3.10.0-907 |
| CANDIDATE | 4.7 | [`4698f88c06b8`](https://git.kernel.org/torvalds/c/4698f88c06b8) | [kernel] | sched/debug: Fix 'schedstats=enable' cmdline option |  | generic code, tag [kernel] | 3.10.0-456 |
| CANDIDATE | 4.7 | [`9c57259117b9`](https://git.kernel.org/torvalds/c/9c57259117b9) | [kernel] | sched/debug: Fix /proc/sched_debug regression |  | generic code, tag [kernel] | 3.10.0-456 |
| CANDIDATE | 4.7 | [`eda8dca51926`](https://git.kernel.org/torvalds/c/eda8dca51926) | [kernel] | sched/debug: Fix deadlock when enabling sched events |  | generic code, tag [kernel] | 3.10.0-456 |
| CANDIDATE | 4.7 | [`754bd598be9b`](https://git.kernel.org/torvalds/c/754bd598be9b) | [kernel] | sched/fair: Do not announce throttled next buddy in dequeue_task_fair() |  | generic code, tag [kernel] | 3.10.0-505 |
| CANDIDATE | 4.7 | [`094f469172e0`](https://git.kernel.org/torvalds/c/094f469172e0) | [kernel] | sched/fair: Initialize throttle_count for new task-groups lazily |  | generic code, tag [kernel] | 3.10.0-505 |
| CANDIDATE | 4.7 | [`c58d25f371f5`](https://git.kernel.org/torvalds/c/c58d25f371f5) | [kernel] | sched/fair: Move record_wakee() |  | generic code, tag [kernel] | 3.10.0-907 |
| CANDIDATE | 4.7 | [`b5179ac70de8`](https://git.kernel.org/torvalds/c/b5179ac70de8) | [kernel] | sched/fair: Prepare to fix fairness problems on migration |  | generic code, tag [kernel] | 3.10.0-907 |
| CANDIDATE | 4.7 | [`b5179ac70de8`](https://git.kernel.org/torvalds/c/b5179ac70de8) | [kernel] | sched/fair: Prepare to fix fairness problems on migration |  | generic code, tag [kernel] | 3.10.0-907 |
| CANDIDATE | 4.7 | [`444969223c81`](https://git.kernel.org/torvalds/c/444969223c81) | [kernel] | sched/nohz: Fix affine unpinned timers mess |  | generic code, tag [kernel] | 3.10.0-540 |
| CANDIDATE | 4.7 | [`e26fbffd32c2`](https://git.kernel.org/torvalds/c/e26fbffd32c2) | [kernel] | sched: Allow hotplug notifiers to be setup early |  | generic code, tag [kernel] | 3.10.0-518 |
| CANDIDATE | 4.7 | [`80df554275c2`](https://git.kernel.org/torvalds/c/80df554275c2) | [kernel] | taskstats: use the libnl API to align nlattr on 64-bit |  | CONFIG_TASKSTATS=y in A37 | 3.10.0-577 |
| CANDIDATE | 4.7 | [`b301aac5ad67`](https://git.kernel.org/torvalds/c/b301aac5ad67) | [kernel] | testing/radix-tree: fix a macro expansion bug |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.7 | [`6f3ffc19157a`](https://git.kernel.org/torvalds/c/6f3ffc19157a) | [kernel] | timer: add setup_deferrable_timer macro |  | generic code, tag [kernel] | 3.10.0-774 |
| CANDIDATE | 4.7 | [`c08376ac97cb`](https://git.kernel.org/torvalds/c/c08376ac97cb) | [kernel] | timer: Export destroy_hrtimer_on_stack() |  | generic code, tag [kernel] | 3.10.0-1018 |
| CANDIDATE | 4.7 | [`8ede5cce4f0b`](https://git.kernel.org/torvalds/c/8ede5cce4f0b) | [kernel] | tty: vt, make color_table const |  | CONFIG_TTY=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.7 | [`feb26ac31a2a`](https://git.kernel.org/torvalds/c/feb26ac31a2a) | [kernel] | usb: core: hub: hub_port_init lock controller instead of bus |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.7 | [`fca504f6054f`](https://git.kernel.org/torvalds/c/fca504f6054f) | [kernel] | usb: correct intervals for SS+ |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.7 | [`6fb650d43da3`](https://git.kernel.org/torvalds/c/6fb650d43da3) | [kernel] | usb: leave LPM alone if possible when binding/unbinding interface drivers |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.7 | [`dd80b54b18db`](https://git.kernel.org/torvalds/c/dd80b54b18db) | [kernel] | usb: LTM also for USB 3.1 |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.7 | [`fa59507f7200`](https://git.kernel.org/torvalds/c/fa59507f7200) | [kernel] | usb: otg-fsm: Add documentation for struct otg_fsm |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.7 | [`4e332df63487`](https://git.kernel.org/torvalds/c/4e332df63487) | [kernel] | usb: otg-fsm: support multiple instances |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.7 | [`44debe7a123c`](https://git.kernel.org/torvalds/c/44debe7a123c) | [kernel] | vgacon: dummy implementation for vgacon_text_force |  | generic code, tag [kernel] | 3.10.0-903 |
| CANDIDATE | 4.7 | [`bf959931ddb8`](https://git.kernel.org/torvalds/c/bf959931ddb8) | [kernel] | wait/ptrace: assume __WALL if the child is traced |  | generic code, tag [kernel] | 3.10.0-1146 |
| CANDIDATE | 4.8 | [`86b2efbe3a39`](https://git.kernel.org/torvalds/c/86b2efbe3a39) | [kernel] | audit: add fields to exclude filter by reusing user filter |  | CONFIG_AUDIT=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.8 | [`5efc244346f9`](https://git.kernel.org/torvalds/c/5efc244346f9) | [kernel] | audit: fix exe_file access in audit_exe_compare |  | CONFIG_AUDIT=y in A37 | 3.10.0-510 |
| CANDIDATE | 4.8 | [`66b12abc846d`](https://git.kernel.org/torvalds/c/66b12abc846d) | [kernel] | audit: fix some horrible switch statement style crimes |  | CONFIG_AUDIT=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.8 | [`2b4c7afe79a8`](https://git.kernel.org/torvalds/c/2b4c7afe79a8) | [kernel] | audit: fixup: log on errors from filter user rules |  | CONFIG_AUDIT=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.8 | [`163d4baaebe3`](https://git.kernel.org/torvalds/c/163d4baaebe3) | [kernel] | block: add QUEUE_FLAG_DAX for devices to advertise their DAX support |  | generic code, tag [kernel] | 3.10.0-640 |
| CANDIDATE | 4.8 | [`f21508211d2b`](https://git.kernel.org/torvalds/c/f21508211d2b) | [kernel] | block: add REQ_OP definitions and helpers |  | generic code, tag [kernel] | 3.10.0-624 |
| CANDIDATE | 4.8 | [`aa7145c16d6b`](https://git.kernel.org/torvalds/c/aa7145c16d6b) | [kernel] | bpf, events: fix offset in skb copy handler |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.8 | [`61d1b6a42fec`](https://git.kernel.org/torvalds/c/61d1b6a42fec) | [kernel] | bpf, maps: add release callback |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.8 | [`d056a788765e`](https://git.kernel.org/torvalds/c/d056a788765e) | [kernel] | bpf, maps: extend map_fd_get_ptr arguments |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.8 | [`3b1efb196eee`](https://git.kernel.org/torvalds/c/3b1efb196eee) | [kernel] | bpf, maps: flush own entries on perf map release |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.8 | [`8e7a3920ac27`](https://git.kernel.org/torvalds/c/8e7a3920ac27) | [kernel] | bpf, perf: split bpf_perf_event_output |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.8 | [`6816a7ffce32`](https://git.kernel.org/torvalds/c/6816a7ffce32) | [kernel] | bpf, trace: add BPF_F_CURRENT_CPU flag for bpf_perf_event_read |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.8 | [`96ae52279594`](https://git.kernel.org/torvalds/c/96ae52279594) | [kernel] | bpf: Add bpf_probe_write_user BPF helper to be called in tracers |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.8 | [`59d3656d5bf5`](https://git.kernel.org/torvalds/c/59d3656d5bf5) | [kernel] | bpf: add bpf_prog_add api for bulk prog refcnt |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.8 | [`555c8a8623a3`](https://git.kernel.org/torvalds/c/555c8a8623a3) | [kernel] | bpf: avoid stack copy and use skb ctx for event output |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.8 | [`858d68f10238`](https://git.kernel.org/torvalds/c/858d68f10238) | [kernel] | bpf: bpf_event_entry_gen's alloc needs to be in atomic context |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.8 | [`80b48c445797`](https://git.kernel.org/torvalds/c/80b48c445797) | [kernel] | bpf: don't use raw processor id in generic helper |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.8 | [`4acf6c0b84c9`](https://git.kernel.org/torvalds/c/4acf6c0b84c9) | [kernel] | bpf: enable direct packet data write for xdp progs |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.8 | [`cc2e0b3fbcdd`](https://git.kernel.org/torvalds/c/cc2e0b3fbcdd) | [kernel] | bpf: fix implicit declaration of bpf_prog_add |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.8 | [`1f415a74b0ca`](https://git.kernel.org/torvalds/c/1f415a74b0ca) | [kernel] | bpf: fix method of PTR_TO_PACKET reg id generation |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.8 | [`002245cc6407`](https://git.kernel.org/torvalds/c/002245cc6407) | [kernel] | bpf: fix missing header inclusion |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.8 | [`002245cc6407`](https://git.kernel.org/torvalds/c/002245cc6407) | [kernel] | bpf: fix missing header inclusion |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.8 | [`1aacde3d22c4`](https://git.kernel.org/torvalds/c/1aacde3d22c4) | [kernel] | bpf: generally move prog destruction to RCU deferral |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.8 | [`606274c5abd8`](https://git.kernel.org/torvalds/c/606274c5abd8) | [kernel] | bpf: introduce bpf_get_current_task() helper |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.8 | [`a536a6e13ecd`](https://git.kernel.org/torvalds/c/a536a6e13ecd) | [kernel] | bpf: make inode code explicitly non-modular |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.8 | [`1ca1cc98bf74`](https://git.kernel.org/torvalds/c/1ca1cc98bf74) | [kernel] | bpf: minor cleanups on fd maps and helpers |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.8 | [`113214be7f6c`](https://git.kernel.org/torvalds/c/113214be7f6c) | [kernel] | bpf: refactor bpf_prog_get and type check into helper |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.8 | [`a6ed3ea65d98`](https://git.kernel.org/torvalds/c/a6ed3ea65d98) | [kernel] | bpf: restore behavior of bpf_map_update_elem |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.8 | [`4ed8ec521ed5`](https://git.kernel.org/torvalds/c/4ed8ec521ed5) | [kernel] | cgroup: bpf: Add BPF_MAP_TYPE_CGROUP_ARRAY |  | CONFIG_CGROUPS=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.8 | [`2481366afd71`](https://git.kernel.org/torvalds/c/2481366afd71) | [kernel] | dma-mapping.h: preserve unmap info for CONFIG_DMA_API_DEBUG |  | generic code, tag [kernel] | 3.10.0-722 |
| CANDIDATE | 4.8 | [`9049771f7d54`](https://git.kernel.org/torvalds/c/9049771f7d54) (loose) | [kernel] | fix cache mode of dax pmd mappings |  | generic code, tag [kernel] | 3.10.0-795 |
| CANDIDATE | 4.8 | [`3ee0ce2a54df`](https://git.kernel.org/torvalds/c/3ee0ce2a54df) | [kernel] | genirq/affinity: Use get/put_online_cpus around cpumask operations |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.8 | [`0972fa57f535`](https://git.kernel.org/torvalds/c/0972fa57f535) | [kernel] | genirq/msi: Make use of affinity aware allocations |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.8 | [`5e385a6ef31f`](https://git.kernel.org/torvalds/c/5e385a6ef31f) | [kernel] | genirq: Add a helper to spread an affinity mask for MSI/MSI-X vectors |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.8 | [`06ee6d571f0e`](https://git.kernel.org/torvalds/c/06ee6d571f0e) | [kernel] | genirq: Add affinity hint to irq allocation |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.8 | [`edd14cfebc44`](https://git.kernel.org/torvalds/c/edd14cfebc44) | [kernel] | genirq: Add untracked irq handler |  | generic code, tag [kernel] | 3.10.0-610 |
| CANDIDATE | 4.8 | [`9c2555835bb3`](https://git.kernel.org/torvalds/c/9c2555835bb3) | [kernel] | genirq: Introduce IRQD_AFFINITY_MANAGED flag |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.8 | [`45ddcecbfa94`](https://git.kernel.org/torvalds/c/45ddcecbfa94) | [kernel] | genirq: Use affinity hint in irqdesc allocation |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.8 | [`d8dab00de9b7`](https://git.kernel.org/torvalds/c/d8dab00de9b7) | [kernel] | io-mapping: Specify mapping size for io_mapping_map_wc() |  | generic code, tag [kernel] | 3.10.0-652 |
| CANDIDATE | 4.8 | [`1f69bf9c6137`](https://git.kernel.org/torvalds/c/1f69bf9c6137) | [kernel] | jump_label: remove bug.h, atomic.h dependencies for HAVE_JUMP_LABEL |  | generic code, tag [kernel] | 3.10.0-736 |
| CANDIDATE | 4.8 | [`e5ae3b252c67`](https://git.kernel.org/torvalds/c/e5ae3b252c67) | [kernel] | libnvdimm, nfit: move flush hint mapping to region-device driver-data |  | generic code, tag [kernel] | 3.10.0-504 |
| CANDIDATE | 4.8 | [`a8a6d2e04c4f`](https://git.kernel.org/torvalds/c/a8a6d2e04c4f) | [kernel] | libnvdimm, nfit: remove nfit_spa_map() infrastructure |  | generic code, tag [kernel] | 3.10.0-504 |
| CANDIDATE | 4.8 | [`476f848aaee4`](https://git.kernel.org/torvalds/c/476f848aaee4) | [kernel] | libnvdimm, pmem: flush posted-write queues on shutdown |  | generic code, tag [kernel] | 3.10.0-504 |
| CANDIDATE | 4.8 | [`229ce6315747`](https://git.kernel.org/torvalds/c/229ce6315747) | [kernel] | locking/pvqspinlock: Fix double hash race |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.8 | [`fb6a44f33be5`](https://git.kernel.org/torvalds/c/fb6a44f33be5) | [kernel] | locking/rwsem: Protect all writes to owner by WRITE_ONCE() |  | generic code, tag [kernel] | 3.10.0-629 |
| CANDIDATE | 4.8 | [`c11600e4fed6`](https://git.kernel.org/torvalds/c/c11600e4fed6) | [kernel] | mm, mempolicy: task->mempolicy must be NULL before dropping final reference |  | generic code, tag [kernel] | 3.10.0-1070 |
| CANDIDATE | 4.8 | [`7c15d9bb8231`](https://git.kernel.org/torvalds/c/7c15d9bb8231) | [kernel] | mm: Add is_migrate_cma_page |  | generic code, tag [kernel] | 3.10.0-920 |
| CANDIDATE | 4.8 | [`632c0a1affd8`](https://git.kernel.org/torvalds/c/632c0a1affd8) | [kernel] | mm: clean up non-standard page->_mapcount users |  | generic code, tag [kernel] | 3.10.0-1058 |
| CANDIDATE | 4.8 | [`cd81a9170e69`](https://git.kernel.org/torvalds/c/cd81a9170e69) | [kernel] | mm: introduce get_task_exe_file |  | generic code, tag [kernel] | 3.10.0-510 |
| CANDIDATE | 4.8 | [`37b137ff8c83`](https://git.kernel.org/torvalds/c/37b137ff8c83) | [kernel] | nfit, libnvdimm: allow an ARS scrub to be triggered on demand |  | generic code, tag [kernel] | 3.10.0-640 |
| CANDIDATE | 4.8 | [`79f370eac637`](https://git.kernel.org/torvalds/c/79f370eac637) | [kernel] | nvme.h: add AER constants |  | generic code, tag [kernel] | 3.10.0-624 |
| CANDIDATE | 4.8 | [`3972be23bd2d`](https://git.kernel.org/torvalds/c/3972be23bd2d) | [kernel] | nvme.h: add constants for PSDT and FUSE values |  | generic code, tag [kernel] | 3.10.0-624 |
| CANDIDATE | 4.8 | [`725b358836ed`](https://git.kernel.org/torvalds/c/725b358836ed) | [kernel] | nvme.h: Add get_log_page command strucure |  | generic code, tag [kernel] | 3.10.0-624 |
| CANDIDATE | 4.8 | [`7b89eae29eec`](https://git.kernel.org/torvalds/c/7b89eae29eec) | [kernel] | nvme.h: Add keep-alive opcode and identify controller attribute |  | generic code, tag [kernel] | 3.10.0-624 |
| CANDIDATE | 4.8 | [`69cd27e25116`](https://git.kernel.org/torvalds/c/69cd27e25116) | [kernel] | nvme.h: add NVM command set SQE/CQE size defines |  | generic code, tag [kernel] | 3.10.0-624 |
| CANDIDATE | 4.8 | [`eb793e2c9286`](https://git.kernel.org/torvalds/c/eb793e2c9286) | [kernel] | nvme.h: add NVMe over Fabrics definitions |  | generic code, tag [kernel] | 3.10.0-624 |
| CANDIDATE | 4.8 | [`14e974a84e83`](https://git.kernel.org/torvalds/c/14e974a84e83) | [kernel] | nvme.h: add RTD3R, RTD3E and OAES fields |  | generic code, tag [kernel] | 3.10.0-624 |
| CANDIDATE | 4.8 | [`ed8ebd1d5141`](https://git.kernel.org/torvalds/c/ed8ebd1d5141) | [kernel] | percpu, locking: revert ("percpu: Replace smp_read_barrier_depends() with lockless_dereference()") |  | generic code, tag [kernel] | 3.10.0-939 |
| CANDIDATE | 4.8 | [`7e3f977edd0b`](https://git.kernel.org/torvalds/c/7e3f977edd0b) | [kernel] | perf, events: add non-linear data support for raw records |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.8 | [`a1396555abff`](https://git.kernel.org/torvalds/c/a1396555abff) | [kernel] | perf/abi: Change the errno for sampling event not supported in hardware |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-539 |
| CANDIDATE | 4.8 | [`71e7bc2bab77`](https://git.kernel.org/torvalds/c/71e7bc2bab77) | [kernel] | perf/core: Check return value of the perf_event_read() IPI |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-539 |
| CANDIDATE | 4.8 | [`99f5bc9bfa90`](https://git.kernel.org/torvalds/c/99f5bc9bfa90) | [kernel] | perf/core: Enable mapping of the stop filters |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-539 |
| CANDIDATE | 4.8 | [`b79ccadd6bb1`](https://git.kernel.org/torvalds/c/b79ccadd6bb1) | [kernel] | perf/core: Fix aux_mmap_count vs aux_refcount order |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-551 |
| CANDIDATE | 4.8 | [`a4f144ebbdf6`](https://git.kernel.org/torvalds/c/a4f144ebbdf6) | [kernel] | perf/core: Fix crash due to account/unaccount_sb_event() inconsistency |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-539 |
| CANDIDATE | 4.8 | [`cca2094605ef`](https://git.kernel.org/torvalds/c/cca2094605ef) | [kernel] | perf/core: Fix event_function_local() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-539 |
| CANDIDATE | 4.8 | [`4059ffd09d69`](https://git.kernel.org/torvalds/c/4059ffd09d69) | [kernel] | perf/core: Fix file name handling for start/stop filters |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-539 |
| CANDIDATE | 4.8 | [`ab7fdefba68f`](https://git.kernel.org/torvalds/c/ab7fdefba68f) | [kernel] | perf/core: Fix implicitly enable dynamic interrupt throttle |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-539 |
| CANDIDATE | 4.8 | [`0b8f1e2e26bf`](https://git.kernel.org/torvalds/c/0b8f1e2e26bf) | [kernel] | perf/core: Fix sideband list-iteration vs. event ordering NULL pointer deference crash |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-551 |
| CANDIDATE | 4.8 | [`3bf6215a1b30`](https://git.kernel.org/torvalds/c/3bf6215a1b30) | [kernel] | perf/core: Limit matching exclusive events to one PMU |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-539 |
| CANDIDATE | 4.8 | [`f2fb6bef9251`](https://git.kernel.org/torvalds/c/f2fb6bef9251) | [kernel] | perf/core: Optimize side-band event delivery |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-539 |
| CANDIDATE | 4.8 | [`587631487580`](https://git.kernel.org/torvalds/c/587631487580) | [kernel] | perf/core: Remove WARN from perf_event_read() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-539 |
| CANDIDATE | 4.8 | [`aab5b71ef2b5`](https://git.kernel.org/torvalds/c/aab5b71ef2b5) | [kernel] | perf/core: Rename the perf_event_aux*() APIs to perf_event_sb*(), to separate them from AUX ring-buffer records |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-539 |
| CANDIDATE | 4.8 | [`12b40a239371`](https://git.kernel.org/torvalds/c/12b40a239371) | [kernel] | perf/core: Update filters only on executable mmap |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-539 |
| CANDIDATE | 4.8 | [`8b6a3fe8fab9`](https://git.kernel.org/torvalds/c/8b6a3fe8fab9) | [kernel] | perf/core: Use this_cpu_ptr() when stopping AUX events |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-539 |
| CANDIDATE | 4.8 | [`62822e2ec4ad`](https://git.kernel.org/torvalds/c/62822e2ec4ad) | [kernel] | pm / hibernate: Restore processor state before using per-CPU variables |  | generic code, tag [kernel] | 3.10.0-844 |
| CANDIDATE | 4.8 | [`62fd5258ebe3`](https://git.kernel.org/torvalds/c/62fd5258ebe3) | [kernel] | radix tree test suite: Test radix_tree_replace_slot() for multiorder entries |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.8 | [`8d2c0d36d682`](https://git.kernel.org/torvalds/c/8d2c0d36d682) | [kernel] | radix tree: fix sibling entry handling in radix_tree_descend() |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.8 | [`a23216a2f1f8`](https://git.kernel.org/torvalds/c/a23216a2f1f8) | [kernel] | radix-tree: fix comment about "exceptional" bits |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.8 | [`c78c66d1ddfd`](https://git.kernel.org/torvalds/c/c78c66d1ddfd) | [kernel] | radix-tree: implement radix_tree_maybe_preload_order() |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.8 | [`088e9d253d3a`](https://git.kernel.org/torvalds/c/088e9d253d3a) | [kernel] | rcu: sysctl: Panic on RCU Stall |  | generic code, tag [kernel] | 3.10.0-523 |
| CANDIDATE | 4.8 | [`59dbb2a06fc2`](https://git.kernel.org/torvalds/c/59dbb2a06fc2) | [kernel] | relay: add global mode support for buffer-only channels |  | generic code, tag [kernel] | 3.10.0-652 |
| CANDIDATE | 4.8 | [`748c7201e622`](https://git.kernel.org/torvalds/c/748c7201e622) | [kernel] | sched/core: Panic on scheduling while atomic bugs if kernel.panic_on_warn is set |  | generic code, tag [kernel] | 3.10.0-523 |
| CANDIDATE | 4.8 | [`173be9a14f7b`](https://git.kernel.org/torvalds/c/173be9a14f7b) | [kernel] | sched/cputime: Fix NO_HZ_FULL getrusage() monotonicity regression |  | generic code, tag [kernel] | 3.10.0-677 |
| CANDIDATE | 4.8 | [`b8922125e479`](https://git.kernel.org/torvalds/c/b8922125e479) | [kernel] | sched/fair: Fix typo in sync_throttle() |  | generic code, tag [kernel] | 3.10.0-505 |
| CANDIDATE | 4.8 | [`55e16d30bd99`](https://git.kernel.org/torvalds/c/55e16d30bd99) | [kernel] | sched/fair: Rework throttle_count sync |  | generic code, tag [kernel] | 3.10.0-505 |
| CANDIDATE | 4.8 | [`485a252a5559`](https://git.kernel.org/torvalds/c/485a252a5559) | [kernel] | seccomp: Fix tracer exit notifications during fatal signals |  | CONFIG_SECCOMP=y in A37 | 3.10.0-1114 |
| CANDIDATE | 4.8 | [`8112c4f140fa`](https://git.kernel.org/torvalds/c/8112c4f140fa) | [kernel] | seccomp: remove 2-phase API |  | CONFIG_SECCOMP=y in A37 | 3.10.0-911 |
| CANDIDATE | 4.8 | [`2b1ecc3d1a6b`](https://git.kernel.org/torvalds/c/2b1ecc3d1a6b) | [kernel] | signals: Use hrtimer for sigtimedwait() |  | generic code, tag [kernel] | 3.10.0-896 |
| CANDIDATE | 4.8 | [`ce4f06dcbb5d`](https://git.kernel.org/torvalds/c/ce4f06dcbb5d) | [kernel] | stop_machine: touch_nmi_watchdog() after MULTI_STOP_PREPARE |  | generic code, tag [kernel] | 3.10.0-542 |
| CANDIDATE | 4.8 | [`5130213721d0`](https://git.kernel.org/torvalds/c/5130213721d0) | [kernel] | tick/broadcast-hrtimer: Set name of the ce_broadcast_hrtimer |  | generic code, tag [kernel] | 3.10.0-660 |
| CANDIDATE | 4.8 | [`0e1824c98a0f`](https://git.kernel.org/torvalds/c/0e1824c98a0f) | [kernel] | tracing: change owner name to driver name for devlink hwmsg tracepoint |  | CONFIG_FTRACE=y in A37 | 3.10.0-634 |
| CANDIDATE | 4.8 | [`97293de97736`](https://git.kernel.org/torvalds/c/97293de97736) | [kernel] | tty: vt, consw->con_scrolldelta cleanup |  | CONFIG_TTY=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.8 | [`709280da6238`](https://git.kernel.org/torvalds/c/709280da6238) | [kernel] | tty: vt, consw->con_set_palette cleanup |  | CONFIG_TTY=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.8 | [`6ca8dfd78187`](https://git.kernel.org/torvalds/c/6ca8dfd78187) | [kernel] | tty: vt, convert more macros to functions |  | CONFIG_TTY=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.8 | [`52ad1f38b4f6`](https://git.kernel.org/torvalds/c/52ad1f38b4f6) | [kernel] | tty: vt, remove consw->con_bmove |  | CONFIG_TTY=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.8 | [`f9f535c1b761`](https://git.kernel.org/torvalds/c/f9f535c1b761) | [kernel] | watchdog: Improve description of min_hw_heartbeat_ms |  | generic code, tag [kernel] | 3.10.0-899 |
| CANDIDATE | 4.9 | [`efda1b5d87cb`](https://git.kernel.org/torvalds/c/efda1b5d87cb) | [kernel] | acpi, nfit, libnvdimm: fix / harden ars_status output length handling |  | generic code, tag [kernel] | 3.10.0-640 |
| CANDIDATE | 4.9 | [`ba9c8dd3c222`](https://git.kernel.org/torvalds/c/ba9c8dd3c222) | [kernel] | acpi, nfit: add dimm device notification support |  | generic code, tag [kernel] | 3.10.0-640 |
| CANDIDATE | 4.9 | [`3e9b3112ec74`](https://git.kernel.org/torvalds/c/3e9b3112ec74) | [kernel] | add basic register-field manipulation macros |  | generic code, tag [kernel] | 3.10.0-626 |
| CANDIDATE | 4.9 | [`54e23845e965`](https://git.kernel.org/torvalds/c/54e23845e965) | [kernel] | alarmtimer: Remove unused but set variable |  | generic code, tag [kernel] | 3.10.0-1104 |
| CANDIDATE | 4.9 | [`7ff89ac608d9`](https://git.kernel.org/torvalds/c/7ff89ac608d9) | [kernel] | audit: add exclude filter extension to feature bitmap |  | CONFIG_AUDIT=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.9 | [`fa2bea2f5cca`](https://git.kernel.org/torvalds/c/fa2bea2f5cca) | [kernel] | audit: consistently record PIDs with task_tgid_nr() |  | CONFIG_AUDIT=y in A37 | 3.10.0-573 |
| CANDIDATE | 4.9 | [`29dd3288705f`](https://git.kernel.org/torvalds/c/29dd3288705f) | [kernel] | bitmap.h, perf/core: Fix the mask in perf_output_sample_regs() |  | generic code, tag [kernel] | 3.10.0-551 |
| CANDIDATE | 4.9 | [`b399cf64e318`](https://git.kernel.org/torvalds/c/b399cf64e318) | [kernel] | bpf, verifier: enforce larger zero range for pkt on overloading stack buffs |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.9 | [`f3694e001238`](https://git.kernel.org/torvalds/c/f3694e001238) | [kernel] | bpf: add BPF_CALL_x macros for declaring helpers |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`f035a51536af`](https://git.kernel.org/torvalds/c/f035a51536af) | [kernel] | bpf: add BPF_SIZEOF and BPF_FIELD_SIZEOF macros |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`484611357c19`](https://git.kernel.org/torvalds/c/484611357c19) | [kernel] | bpf: allow access into map value arrays |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`8937bd80fce6`](https://git.kernel.org/torvalds/c/8937bd80fce6) | [kernel] | bpf: allow bpf_get_prandom_u32() to be used in tracing |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`6841de8b0d03`](https://git.kernel.org/torvalds/c/6841de8b0d03) | [kernel] | bpf: allow helpers access the packet directly |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`b761fe226be6`](https://git.kernel.org/torvalds/c/b761fe226be6) | [kernel] | bpf: clean up put_cpu_var usage |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`36bbef52c7eb`](https://git.kernel.org/torvalds/c/36bbef52c7eb) | [kernel] | bpf: direct packet write and access for helpers for clsact progs |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`3df126f35f88`](https://git.kernel.org/torvalds/c/3df126f35f88) | [kernel] | bpf: don't (ab)use instructions to store state |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`13a27dfc6697`](https://git.kernel.org/torvalds/c/13a27dfc6697) | [kernel] | bpf: enable non-core use of the verfier |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`58e2af8b3a6b`](https://git.kernel.org/torvalds/c/58e2af8b3a6b) | [kernel] | bpf: expose internal verfier structures |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`483bed2b0ddd`](https://git.kernel.org/torvalds/c/483bed2b0ddd) | [kernel] | bpf: fix htab map destruction when extra reserve is in use |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`20b2b24f91f7`](https://git.kernel.org/torvalds/c/20b2b24f91f7) | [kernel] | bpf: fix map not being uncharged during map creation failure |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`f23cc643f9ba`](https://git.kernel.org/torvalds/c/f23cc643f9ba) | [kernel] | bpf: fix range arithmetic for bpf map access |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`2d2be8cab26e`](https://git.kernel.org/torvalds/c/2d2be8cab26e) | [kernel] | bpf: fix range propagation on direct packet access |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`e2d2afe15ed4`](https://git.kernel.org/torvalds/c/e2d2afe15ed4) | [kernel] | bpf: fix states equal logic for varlen access |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`0515e5999a46`](https://git.kernel.org/torvalds/c/0515e5999a46) | [kernel] | bpf: introduce BPF_PROG_TYPE_PERF_EVENT program type |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`6088b5823b4c`](https://git.kernel.org/torvalds/c/6088b5823b4c) | [kernel] | bpf: minor cleanups in helpers |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`fdc15d388d60`](https://git.kernel.org/torvalds/c/fdc15d388d60) | [kernel] | bpf: perf_event progs should only use preallocated maps |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`6b17387307ba`](https://git.kernel.org/torvalds/c/6b17387307ba) | [kernel] | bpf: recognize 64bit immediate loads as consts |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`1955351da41c`](https://git.kernel.org/torvalds/c/1955351da41c) | [kernel] | bpf: Set register type according to is_valid_access() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`ea2e7ce5d0fc`](https://git.kernel.org/torvalds/c/ea2e7ce5d0fc) | [kernel] | bpf: support 8-byte metafield access |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.9 | [`a8ac51e4ab97`](https://git.kernel.org/torvalds/c/a8ac51e4ab97) | [kernel] | dm rq: add DM_MAPIO_DELAY_REQUEUE to delay requeue of blk-mq requests |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-545 |
| CANDIDATE | 4.9 | [`6f3d87968f9c`](https://git.kernel.org/torvalds/c/6f3d87968f9c) | [kernel] | dma-mapping: add dma_{map,unmap}_resource |  | generic code, tag [kernel] | 3.10.0-722 |
| CANDIDATE | 4.9 | [`223918e32a87`](https://git.kernel.org/torvalds/c/223918e32a87) | [kernel] | ftrace: Add ftrace_graph_ret_addr() stack unwinding helpers |  | CONFIG_FTRACE=y in A37 | 3.10.0-778 |
| CANDIDATE | 4.9 | [`546fece4eae8`](https://git.kernel.org/torvalds/c/546fece4eae8) | [kernel] | ftrace: Add more checks for FTRACE_FL_DISABLED in processing ip records |  | CONFIG_FTRACE=y in A37 | 3.10.0-778 |
| CANDIDATE | 4.9 | [`9a7c348ba6a4`](https://git.kernel.org/torvalds/c/9a7c348ba6a4) | [kernel] | ftrace: Add return address pointer to ftrace_ret_stack |  | CONFIG_FTRACE=y in A37 | 3.10.0-778 |
| CANDIDATE | 4.9 | [`daa460a88c09`](https://git.kernel.org/torvalds/c/daa460a88c09) | [kernel] | ftrace: Only allocate the ret_stack 'fp' field when needed |  | CONFIG_FTRACE=y in A37 | 3.10.0-778 |
| CANDIDATE | 4.9 | [`e4a744ef2fef`](https://git.kernel.org/torvalds/c/e4a744ef2fef) | [kernel] | ftrace: Remove CONFIG_HAVE_FUNCTION_GRAPH_FP_TEST from config |  | CONFIG_FTRACE=y in A37 | 3.10.0-778 |
| CANDIDATE | 4.9 | [`34c3d9819fda`](https://git.kernel.org/torvalds/c/34c3d9819fda) | [kernel] | genirq/affinity: Provide smarter irq spreading infrastructure |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.9 | [`44082fd6702f`](https://git.kernel.org/torvalds/c/44082fd6702f) | [kernel] | genirq/affinity: Remove old irq spread infrastructure |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.9 | [`28f4b04143c5`](https://git.kernel.org/torvalds/c/28f4b04143c5) | [kernel] | genirq/msi: Add cpumask allocation to alloc_msi_entry |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.9 | [`e75eafb9b039`](https://git.kernel.org/torvalds/c/e75eafb9b039) | [kernel] | genirq/msi: Switch to new irq spreading infrastructure |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.9 | [`48a6d64edadb`](https://git.kernel.org/torvalds/c/48a6d64edadb) | [kernel] | hung_task: allow hung_task_panic when hung_task_warnings is 0 |  | generic code, tag [kernel] | 3.10.0-548 |
| CANDIDATE | 4.9 | [`fd10ed8e6f42`](https://git.kernel.org/torvalds/c/fd10ed8e6f42) | [kernel] | ib/mlx4: Fix possible vl/sl field mismatch in LRH header in QP1 packets |  | generic code, tag [kernel] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`bcaaa0c4310e`](https://git.kernel.org/torvalds/c/bcaaa0c4310e) | [kernel] | io-mapping.h: s/PAGE_KERNEL_IO/PAGE_KERNEL/ |  | generic code, tag [kernel] | 3.10.0-652 |
| CANDIDATE | 4.9 | [`cafaf14a5d8f`](https://git.kernel.org/torvalds/c/cafaf14a5d8f) | [kernel] | io-mapping: Always create a struct to hold metadata about the io-mapping |  | generic code, tag [kernel] | 3.10.0-652 |
| CANDIDATE | 4.9 | [`351243897b15`](https://git.kernel.org/torvalds/c/351243897b15) | [kernel] | io-mapping: Fixup for different names of writecombine |  | generic code, tag [kernel] | 3.10.0-652 |
| CANDIDATE | 4.9 | [`aba356616386`](https://git.kernel.org/torvalds/c/aba356616386) | [kernel] | ipcns: Add a limit on the number of ipc namespaces |  | generic code, tag [kernel] | 3.10.0-641 |
| CANDIDATE | 4.9 | [`3740dcdf8a77`](https://git.kernel.org/torvalds/c/3740dcdf8a77) | [kernel] | jiffies: add time comparison functions for 64 bit jiffies |  | generic code, tag [kernel] | 3.10.0-942 |
| CANDIDATE | 4.9 | [`0549a3c02efb`](https://git.kernel.org/torvalds/c/0549a3c02efb) | [kernel] | kdump, vmcoreinfo: report memory sections virtual addresses |  | generic code, tag [kernel] | 3.10.0-641 |
| CANDIDATE | 4.9 | [`0e3b0d123c8f`](https://git.kernel.org/torvalds/c/0e3b0d123c8f) | [kernel] | libnvdimm, namespace: allow multiple pmem-namespaces per region at scan time |  | generic code, tag [kernel] | 3.10.0-640 |
| CANDIDATE | 4.9 | [`6ff3e912d32e`](https://git.kernel.org/torvalds/c/6ff3e912d32e) | [kernel] | libnvdimm, namespace: sort namespaces by dpa at init |  | generic code, tag [kernel] | 3.10.0-640 |
| CANDIDATE | 4.9 | [`44c462eb9e19`](https://git.kernel.org/torvalds/c/44c462eb9e19) | [kernel] | libnvdimm, region: move region-mapping input-paramters to nd_mapping_desc |  | generic code, tag [kernel] | 3.10.0-640 |
| CANDIDATE | 4.9 | [`08be8f63c40c`](https://git.kernel.org/torvalds/c/08be8f63c40c) | [kernel] | locking/pvstat: Separate wait_again and spurious wakeup stats |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | 4.9 | [`64a5e3cb3080`](https://git.kernel.org/torvalds/c/64a5e3cb3080) | [kernel] | locking/qspinlock: Improve readability |  | generic code, tag [kernel] | 3.10.0-812 |
| CANDIDATE | 4.9 | [`ca75d601b594`](https://git.kernel.org/torvalds/c/ca75d601b594) | [kernel] | miscdevice: Add helper macro for misc device boilerplate |  | generic code, tag [kernel] | 3.10.0-638 |
| CANDIDATE | 4.9 | [`537f7ccb3968`](https://git.kernel.org/torvalds/c/537f7ccb3968) | [kernel] | mntns: Add a limit on the number of mount namespaces | CVE-2016-6213 | generic code, tag [kernel] | 3.10.0-641 |
| CANDIDATE | 4.9 | [`703286608a22`](https://git.kernel.org/torvalds/c/703286608a22) | [kernel] | netns: Add a limit on the number of net namespaces |  | generic code, tag [kernel] | 3.10.0-641 |
| CANDIDATE | 4.9 | [`329dd7681c5a`](https://git.kernel.org/torvalds/c/329dd7681c5a) | [kernel] | nvme.h: add an enum for cns values |  | generic code, tag [kernel] | 3.10.0-624 |
| CANDIDATE | 4.9 | [`a446c0840e24`](https://git.kernel.org/torvalds/c/a446c0840e24) | [kernel] | nvme.h: resync with nvme-cli |  | generic code, tag [kernel] | 3.10.0-624 |
| CANDIDATE | 4.9 | [`a67823c1ed10`](https://git.kernel.org/torvalds/c/a67823c1ed10) | [kernel] | percpu-refcount: init ->confirm_switch member properly |  | generic code, tag [kernel] | 3.10.0-939 |
| CANDIDATE | 4.9 | [`33e465ce7cb3`](https://git.kernel.org/torvalds/c/33e465ce7cb3) | [kernel] | percpu_ref: allow operation mode switching operations to be called concurrently |  | generic code, tag [kernel] | 3.10.0-786 |
| CANDIDATE | 4.9 | [`a2f5630cb737`](https://git.kernel.org/torvalds/c/a2f5630cb737) | [kernel] | percpu_ref: remove unnecessary RCU grace period for staggered atomic switching confirmation |  | generic code, tag [kernel] | 3.10.0-786 |
| CANDIDATE | 4.9 | [`b2302c7fdc65`](https://git.kernel.org/torvalds/c/b2302c7fdc65) | [kernel] | percpu_ref: reorganize __percpu_ref_switch_to_atomic() and relocate percpu_ref_switch_to_atomic() |  | generic code, tag [kernel] | 3.10.0-786 |
| CANDIDATE | 4.9 | [`3f49bdd95855`](https://git.kernel.org/torvalds/c/3f49bdd95855) | [kernel] | percpu_ref: restructure operation mode switching |  | generic code, tag [kernel] | 3.10.0-786 |
| CANDIDATE | 4.9 | [`18808354b796`](https://git.kernel.org/torvalds/c/18808354b796) | [kernel] | percpu_ref: unify staggered atomic switching wait behavior |  | generic code, tag [kernel] | 3.10.0-786 |
| CANDIDATE | 4.9 | [`aa6a5f3cb2b2`](https://git.kernel.org/torvalds/c/aa6a5f3cb2b2) | [kernel] | perf, bpf: add perf events core support for BPF_PROG_TYPE_PERF_EVENT programs |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.9 | [`f1e4ba5b6a65`](https://git.kernel.org/torvalds/c/f1e4ba5b6a65) | [kernel] | perf, bpf: fix conditional call to bpf_overflow_handler |  | generic code, tag [kernel] | 3.10.0-934 |
| CANDIDATE | 4.9 | [`c9bbdd4830ab`](https://git.kernel.org/torvalds/c/c9bbdd4830ab) | [kernel] | perf/core: Don't pass PERF_EF_START to the PMU ->start callback |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-551 |
| CANDIDATE | 4.9 | [`e96271f3ed7e`](https://git.kernel.org/torvalds/c/e96271f3ed7e) | [kernel] | perf/core: Fix address filter parser |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-551 |
| CANDIDATE | 4.9 | [`4ff6a8debf48`](https://git.kernel.org/torvalds/c/4ff6a8debf48) | [kernel] | perf/core: Generalize event->group_flags | CVE-2017-6001 | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-641 |
| CANDIDATE | 4.9 | [`d6a2f9035bfc`](https://git.kernel.org/torvalds/c/d6a2f9035bfc) | [kernel] | perf/core: Introduce PMU_EV_CAP_READ_ACTIVE_PKG | CVE-2017-6001 | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-641 |
| CANDIDATE | 4.9 | [`0933840acf7b`](https://git.kernel.org/torvalds/c/0933840acf7b) | [kernel] | perf/core: Protect PMU device removal with a 'pmu_bus_running' check, to fix CONFIG_DEBUG_TEST_DRIVER_REMOVE=y kernel panic |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-551 |
| CANDIDATE | 4.9 | [`3f005e7de3db`](https://git.kernel.org/torvalds/c/3f005e7de3db) | [kernel] | perf/core: Sched out groups atomically |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-551 |
| CANDIDATE | 4.9 | [`f333c700c610`](https://git.kernel.org/torvalds/c/f333c700c610) | [kernel] | pidns: Add a limit on the number of pid namespaces |  | CONFIG_PID_NS=y in A37 | 3.10.0-641 |
| CANDIDATE | 4.9 | [`efee95f42b5d`](https://git.kernel.org/torvalds/c/efee95f42b5d) | [kernel] | ptp_clock: future-proofing drivers against PTP subsystem becoming optional |  | generic code, tag [kernel] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`eec4852543e4`](https://git.kernel.org/torvalds/c/eec4852543e4) | [kernel] | radix-tree tests: add iteration test |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.9 | [`e0176a2f1e13`](https://git.kernel.org/torvalds/c/e0176a2f1e13) | [kernel] | radix-tree tests: properly initialize mutex |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | 4.9 | [`915045fe15a5`](https://git.kernel.org/torvalds/c/915045fe15a5) | [kernel] | radix-tree: 'slot' can be NULL in radix_tree_next_slot() |  | generic code, tag [kernel] | 3.10.0-707 |
| CANDIDATE | 4.9 | [`99fdafdeacfa`](https://git.kernel.org/torvalds/c/99fdafdeacfa) | [kernel] | random: simplify API for random address requests |  | generic code, tag [kernel] | 3.10.0-669 |
| CANDIDATE | 4.9 | [`b4353708f5a1`](https://git.kernel.org/torvalds/c/b4353708f5a1) | [kernel] | revert "net/mlx4_en: Avoid unregister_netdev at shutdown flow" |  | generic code, tag [kernel] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`8e5bfa8c1f84`](https://git.kernel.org/torvalds/c/8e5bfa8c1f84) | [kernel] | sched/autogroup: Do not use autogroup->tg in zombie threads |  | generic code, tag [kernel] | 3.10.0-641 |
| CANDIDATE | 4.9 | [`18f649ef3441`](https://git.kernel.org/torvalds/c/18f649ef3441) | [kernel] | sched/autogroup: Fix autogroup_move_group() to never skip sched_move_task() |  | generic code, tag [kernel] | 3.10.0-641 |
| CANDIDATE | 4.9 | [`8f37961cf223`](https://git.kernel.org/torvalds/c/8f37961cf223) | [kernel] | sched/core, x86/topology: Fix NUMA in package topology bug |  | generic code, tag [kernel] | 3.10.0-518 |
| CANDIDATE | 4.9 | [`9148a3a10e0b`](https://git.kernel.org/torvalds/c/9148a3a10e0b) | [kernel] | sched/debug: Add SCHED_WARN_ON() |  | generic code, tag [kernel] | 3.10.0-907 |
| CANDIDATE | 4.9 | [`13bcc6a28534`](https://git.kernel.org/torvalds/c/13bcc6a28534) | [kernel] | sysctl: Stop implicitly passing current into sysctl_table_root.lookup |  | generic code, tag [kernel] | 3.10.0-641 |
| CANDIDATE | 4.9 | [`c850ed38db5f`](https://git.kernel.org/torvalds/c/c850ed38db5f) | [kernel] | tracing: Add documentation for hwlat_detector tracer |  | CONFIG_FTRACE=y in A37 | 3.10.0-590 |
| CANDIDATE | 4.9 | [`7b2c86250122`](https://git.kernel.org/torvalds/c/7b2c86250122) | [kernel] | tracing: Add NMI tracing in hwlat detector |  | CONFIG_FTRACE=y in A37 | 3.10.0-590 |
| CANDIDATE | 4.9 | [`e7c15cd8a113`](https://git.kernel.org/torvalds/c/e7c15cd8a113) | [kernel] | tracing: Added hardware latency tracer |  | CONFIG_FTRACE=y in A37 | 3.10.0-590 |
| CANDIDATE | 4.9 | [`0330f7aa8ee6`](https://git.kernel.org/torvalds/c/0330f7aa8ee6) | [kernel] | tracing: Have hwlat trace migrate across tracing_cpumask CPUs |  | CONFIG_FTRACE=y in A37 | 3.10.0-590 |
| CANDIDATE | 4.9 | [`f971cc9aabc2`](https://git.kernel.org/torvalds/c/f971cc9aabc2) | [kernel] | tracing: Have max_latency be defined for HWLAT_TRACER as well |  | CONFIG_FTRACE=y in A37 | 3.10.0-590 |
| CANDIDATE | 4.9 | [`d6b76c4ddb12`](https://git.kernel.org/torvalds/c/d6b76c4ddb12) | [kernel] | usb: bcma: support old USB 2.0 controller on Northstar devices |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.9 | [`7b8076ce8a00`](https://git.kernel.org/torvalds/c/7b8076ce8a00) (loose) | [kernel] | usb: cdc_mbim: add quirk for supporting Telit LE922A |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.9 | [`6691402313dd`](https://git.kernel.org/torvalds/c/6691402313dd) | [kernel] | usb: ulpi: add new api functions, {read\|write}_dev() |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.9 | [`1ebe88d38dde`](https://git.kernel.org/torvalds/c/1ebe88d38dde) | [kernel] | usb: ulpi: Automatically set driver::owner with ulpi_driver_register() |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.9 | [`b9454f90c943`](https://git.kernel.org/torvalds/c/b9454f90c943) | [kernel] | usb: ulpi: make ops struct constant |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.9 | [`042b0f31b2a8`](https://git.kernel.org/torvalds/c/042b0f31b2a8) | [kernel] | usb: ulpi: remove "dev" field from struct ulpi_ops |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.9 | [`5c42f3879564`](https://git.kernel.org/torvalds/c/5c42f3879564) | [kernel] | usb: ulpi: remove calls to old api callbacks |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.9 | [`e6f74849784c`](https://git.kernel.org/torvalds/c/e6f74849784c) | [kernel] | usb: ulpi: rename operations {read\|write}_dev to simply {read\|write} |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.9 | [`f7af3d1c0313`](https://git.kernel.org/torvalds/c/f7af3d1c0313) | [kernel] | utsns: Add a limit on the number of uts namespaces |  | CONFIG_UTS_NS=y in A37 | 3.10.0-641 |
| CANDIDATE | 4.9 | [`b47bd6ea4063`](https://git.kernel.org/torvalds/c/b47bd6ea4063) | [kernel] | {net, ib}/mlx5: Make cache line size determination at runtime |  | generic code, tag [kernel] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`278277866334`](https://git.kernel.org/torvalds/c/278277866334) | [kernel] | {net,ib}/mlx5: CQ commands via mlx5 ifc |  | generic code, tag [kernel] | 3.10.0-603 |
| CANDIDATE | 4.10 | [`8fae47705685`](https://git.kernel.org/torvalds/c/8fae47705685) | [kernel] | audit: add support for session ID user filter |  | CONFIG_AUDIT=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.10 | [`c1e8f06d7a0e`](https://git.kernel.org/torvalds/c/c1e8f06d7a0e) | [kernel] | audit: fix formatting of AUDIT_CONFIG_CHANGE events |  | CONFIG_AUDIT=y in A37 | 3.10.0-530 |
| CANDIDATE | 4.10 | [`be29d20f3f5d`](https://git.kernel.org/torvalds/c/be29d20f3f5d) | [kernel] | audit: Fix sleep in atomic |  | CONFIG_AUDIT=y in A37 | 3.10.0-610 |
| CANDIDATE | 4.10 | [`833fc48d18ce`](https://git.kernel.org/torvalds/c/833fc48d18ce) | [kernel] | audit: skip sessionid sentinel value when auto-incrementing |  | CONFIG_AUDIT=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.10 | [`6d67942dd0eb`](https://git.kernel.org/torvalds/c/6d67942dd0eb) | [kernel] | bpf: add __must_check attributes to refcount manipulating helpers |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`29ba732acbee`](https://git.kernel.org/torvalds/c/29ba732acbee) | [kernel] | bpf: Add BPF_MAP_TYPE_LRU_HASH |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`8f8449384ec3`](https://git.kernel.org/torvalds/c/8f8449384ec3) | [kernel] | bpf: Add BPF_MAP_TYPE_LRU_PERCPU_HASH |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`f4324551489e`](https://git.kernel.org/torvalds/c/f4324551489e) | [kernel] | bpf: add BPF_PROG_ATTACH and BPF_PROG_DETACH commands |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`2d0e30c30f84`](https://git.kernel.org/torvalds/c/2d0e30c30f84) | [kernel] | bpf: add helper for retrieving current numa node id |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`21116b7068b9`](https://git.kernel.org/torvalds/c/21116b7068b9) | [kernel] | bpf: add owner_prog_type and accounted mem to array map's fdinfo |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`961578b63474`](https://git.kernel.org/torvalds/c/961578b63474) | [kernel] | bpf: Add percpu LRU list |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`7bd509e311f4`](https://git.kernel.org/torvalds/c/7bd509e311f4) | [kernel] | bpf: add prog_digest and expose it via fdinfo/netlink |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`a3af5f800106`](https://git.kernel.org/torvalds/c/a3af5f800106) | [kernel] | bpf: allow for mount options to specify permissions |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`3a0af8fd61f9`](https://git.kernel.org/torvalds/c/3a0af8fd61f9) | [kernel] | bpf: BPF for lightweight tunnel infrastructure |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`57a09bf0a416`](https://git.kernel.org/torvalds/c/57a09bf0a416) | [kernel] | bpf: Detect identical PTR_TO_MAP_VALUE_OR_NULL registers |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`7984c27c2c5c`](https://git.kernel.org/torvalds/c/7984c27c2c5c) | [kernel] | bpf: do not use KMALLOC_SHIFT_MAX |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`d407bd25a204`](https://git.kernel.org/torvalds/c/d407bd25a204) | [kernel] | bpf: don't trigger OOM killer under pressure with map alloc |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`88575199cc65`](https://git.kernel.org/torvalds/c/88575199cc65) | [kernel] | bpf: drop unnecessary context cast from BPF_PROG_RUN |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`aafe6ae9cee3`](https://git.kernel.org/torvalds/c/aafe6ae9cee3) | [kernel] | bpf: dynamically allocate digest scratch buffer |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`2874aa2e467d`](https://git.kernel.org/torvalds/c/2874aa2e467d) | [kernel] | bpf: Fix compilation warning in __bpf_lru_list_rotate_inactive |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`ef0915cacd04`](https://git.kernel.org/torvalds/c/ef0915cacd04) | [kernel] | bpf: fix loading of BPF_MAXINSNS sized programs |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`6760bf2ddde8`](https://git.kernel.org/torvalds/c/6760bf2ddde8) | [kernel] | bpf: fix mark_reg_unknown_value for spilled regs on map value marking |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`5ccb071e97fb`](https://git.kernel.org/torvalds/c/5ccb071e97fb) | [kernel] | bpf: fix overflow in prog accounting |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`a08dd0da5307`](https://git.kernel.org/torvalds/c/a08dd0da5307) | [kernel] | bpf: fix regression on verifier pruning wrt map lookups |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`d2a4dd37f6b4`](https://git.kernel.org/torvalds/c/d2a4dd37f6b4) | [kernel] | bpf: fix state equivalence |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`7f677633379b`](https://git.kernel.org/torvalds/c/7f677633379b) | [kernel] | bpf: introduce BPF_F_ALLOW_OVERRIDE flag |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`3a08c2fd7634`](https://git.kernel.org/torvalds/c/3a08c2fd7634) | [kernel] | bpf: LRU List |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`3c839744b337`](https://git.kernel.org/torvalds/c/3c839744b337) | [kernel] | bpf: Preserve const register type on const OR alu ops |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`ebb676daa1a3`](https://git.kernel.org/torvalds/c/ebb676daa1a3) | [kernel] | bpf: Print function name in addition to function id |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`fd91de7b3c69`](https://git.kernel.org/torvalds/c/fd91de7b3c69) | [kernel] | bpf: Refactor codes handling percpu map |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`de464375daf0`](https://git.kernel.org/torvalds/c/de464375daf0) | [kernel] | bpf: Remove unused but set variables |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`f1f7714ea51c`](https://git.kernel.org/torvalds/c/f1f7714ea51c) | [kernel] | bpf: rework prog_digest into prog_tag |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`535e7b4b5ef2`](https://git.kernel.org/torvalds/c/535e7b4b5ef2) | [kernel] | bpf: Use u64_to_user_ptr() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.10 | [`19c816e8e455`](https://git.kernel.org/torvalds/c/19c816e8e455) | [kernel] | capability: export has_capability |  | generic code, tag [kernel] | 3.10.0-560 |
| CANDIDATE | 4.10 | [`a5a1d1c2914b`](https://git.kernel.org/torvalds/c/a5a1d1c2914b) | [kernel] | clocksource: Use a plain u64 instead of cycle_t |  | generic code, tag [kernel] | 3.10.0-703 |
| CANDIDATE | 4.10 | [`0495c3d36794`](https://git.kernel.org/torvalds/c/0495c3d36794) | [kernel] | dma: add calls for dma_map_page_attrs and dma_unmap_page_attrs |  | generic code, tag [kernel] | 3.10.0-722 |
| CANDIDATE | 4.10 | [`59024954a1e7`](https://git.kernel.org/torvalds/c/59024954a1e7) | [kernel] | documentation/livepatch: Fix stale link to gmame |  | generic code, tag [kernel] | 3.10.0-778 |
| CANDIDATE | 4.10 | [`d12a969ebbfc`](https://git.kernel.org/torvalds/c/d12a969ebbfc) | [kernel] | edac, amd64: Add Deferred Error type |  | generic code, tag [kernel] | 3.10.0-570 |
| CANDIDATE | 4.10 | [`9d4b82706357`](https://git.kernel.org/torvalds/c/9d4b82706357) | [kernel] | fsl/usb: Workarourd for USB erratum-A005697 |  | generic code, tag [kernel] | 3.10.0-627 |
| CANDIDATE | 4.10 | [`c0af52437254`](https://git.kernel.org/torvalds/c/c0af52437254) | [kernel] | genirq/affinity: Fix node generation from cpumask |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.10 | [`212bd846223c`](https://git.kernel.org/torvalds/c/212bd846223c) | [kernel] | genirq/affinity: Handle pre/post vectors in irq_calc_affinity_vectors() |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.10 | [`67c93c218dc5`](https://git.kernel.org/torvalds/c/67c93c218dc5) | [kernel] | genirq/affinity: Handle pre/post vectors in irq_create_affinity_masks() |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.10 | [`20e407e195b2`](https://git.kernel.org/torvalds/c/20e407e195b2) | [kernel] | genirq/affinity: Introduce struct irq_affinity |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.10 | [`bfe130773862`](https://git.kernel.org/torvalds/c/bfe130773862) | [kernel] | genirq/affinity: Take reserved vectors into account when spreading irqs |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.10 | [`b6e5d5b94752`](https://git.kernel.org/torvalds/c/b6e5d5b94752) | [kernel] | genirq/affinity: Use default affinity mask for reserved vectors |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.10 | [`4ca5ede07c98`](https://git.kernel.org/torvalds/c/4ca5ede07c98) | [kernel] | hung_task: decrement sysctl_hung_task_warnings only if it is positive |  | generic code, tag [kernel] | 3.10.0-548 |
| CANDIDATE | 4.10 | [`b6416e610124`](https://git.kernel.org/torvalds/c/b6416e610124) | [kernel] | jump_labels: API for flushing deferred jump label updates |  | generic code, tag [kernel] | 3.10.0-581 |
| CANDIDATE | 4.10 | [`f8319483f57f`](https://git.kernel.org/torvalds/c/f8319483f57f) | [kernel] | locking/lockdep: Provide a type check for lock_is_held |  | generic code, tag [kernel] | 3.10.0-1034 |
| CANDIDATE | 4.10 | [`24b91e360ef5`](https://git.kernel.org/torvalds/c/24b91e360ef5) | [kernel] | nohz: Fix collision between tick and other hrtimers |  | generic code, tag [kernel] | 3.10.0-568 |
| CANDIDATE | 4.10 | [`966d2b04e070`](https://git.kernel.org/torvalds/c/966d2b04e070) | [kernel] | percpu-refcount: fix reference leak during percpu-atomic transition |  | generic code, tag [kernel] | 3.10.0-585 |
| CANDIDATE | 4.10 | [`451d24d1e5f4`](https://git.kernel.org/torvalds/c/451d24d1e5f4) | [kernel] | perf/core: Fix crash in perf_event_read() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.10 | [`0b3589be9b98`](https://git.kernel.org/torvalds/c/0b3589be9b98) | [kernel] | perf/core: Fix PERF_RECORD_MMAP2 prot/flags for anonymous memory |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-633 |
| CANDIDATE | 4.10 | [`63cae12bce98`](https://git.kernel.org/torvalds/c/63cae12bce98) | [kernel] | perf/core: Fix sys_perf_event_open() vs. hotplug |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-633 |
| CANDIDATE | 4.10 | [`a76a82a3e38c`](https://git.kernel.org/torvalds/c/a76a82a3e38c) | [kernel] | perf/core: Fix use-after-free bug |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-633 |
| CANDIDATE | 4.10 | [`1efbd205b3cc`](https://git.kernel.org/torvalds/c/1efbd205b3cc) | [kernel] | revert "net/mlx5: Add MPCNT register infrastructure" |  | generic code, tag [kernel] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`558e8e27e73f`](https://git.kernel.org/torvalds/c/558e8e27e73f) | [kernel] | revert "nohz: Fix collision between tick and other hrtimers" |  | generic code, tag [kernel] | 3.10.0-687 |
| CANDIDATE | 4.10 | [`afe06efdf07c`](https://git.kernel.org/torvalds/c/afe06efdf07c) | [kernel] | sched: Extend scheduler's asym packing |  | generic code, tag [kernel] | 3.10.0-712 |
| CANDIDATE | 4.10 | [`c7be96af89d4`](https://git.kernel.org/torvalds/c/c7be96af89d4) | [kernel] | signals: avoid unnecessary taking of sighand->siglock |  | generic code, tag [kernel] | 3.10.0-622 |
| CANDIDATE | 4.10 | [`7fd8329ba502`](https://git.kernel.org/torvalds/c/7fd8329ba502) | [kernel] | taint/module: Clean up global and module taint flags handling |  | generic code, tag [kernel] | 3.10.0-560 |
| CANDIDATE | 4.10 | [`5eb7c0d04f04`](https://git.kernel.org/torvalds/c/5eb7c0d04f04) | [kernel] | taint/module: Fix problems when out-of-kernel driver defines true or false |  | generic code, tag [kernel] | 3.10.0-560 |
| CANDIDATE | 4.10 | [`9c1645727b8f`](https://git.kernel.org/torvalds/c/9c1645727b8f) | [kernel] | timekeeping_Force_unsigned_clocksource_to_nanoseconds_conversion |  | generic code, tag [kernel] | 3.10.0-1160.15.1 |
| CANDIDATE | 4.10 | [`478409dd683d`](https://git.kernel.org/torvalds/c/478409dd683d) | [kernel] | tracing: Add hook to function tracing for other subsystems to use |  | CONFIG_FTRACE=y in A37 | 3.10.0-1074 |
| CANDIDATE | 4.10 | [`79c6f448c8b7`](https://git.kernel.org/torvalds/c/79c6f448c8b7) | [kernel] | tracing: Fix hwlat kthread migration |  | CONFIG_FTRACE=y in A37 | 3.10.0-590 |
| CANDIDATE | 4.10 | [`35cc56f9a304`](https://git.kernel.org/torvalds/c/35cc56f9a304) | [kernel] | tty: vgacon+sisusb, move scrolldelta to a common helper |  | CONFIG_TTY=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.10 | [`864e2fe93522`](https://git.kernel.org/torvalds/c/864e2fe93522) | [kernel] | usb: fix a typo in usb_class_driver documentation |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.10 | [`b9c2a2a39898`](https://git.kernel.org/torvalds/c/b9c2a2a39898) | [kernel] | usb: hcd.h: construct hub class request constants from simpler constants |  | CONFIG_USB=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.10 | [`3347fa092821`](https://git.kernel.org/torvalds/c/3347fa092821) | [kernel] | workqueue: make workqueue available early during boot |  | generic code, tag [kernel] | 3.10.0-981 |
| CANDIDATE | 4.10 | [`863b710b664b`](https://git.kernel.org/torvalds/c/863b710b664b) | [kernel] | workqueue: remove keventd_up() |  | generic code, tag [kernel] | 3.10.0-981 |
| CANDIDATE | 4.11 | [`92c82e8a322b`](https://git.kernel.org/torvalds/c/92c82e8a322b) | [kernel] | audit: add feature audit_lost reset |  | CONFIG_AUDIT=y in A37 | 3.10.0-641 |
| CANDIDATE | 4.11 | [`ca86cad7380e`](https://git.kernel.org/torvalds/c/ca86cad7380e) | [kernel] | audit: log module name on init_module |  | CONFIG_AUDIT=y in A37 | 3.10.0-573 |
| CANDIDATE | 4.11 | [`fe8e52b9b910`](https://git.kernel.org/torvalds/c/fe8e52b9b910) | [kernel] | audit: remove unnecessary curly braces from switch/case statements |  | CONFIG_AUDIT=y in A37 | 3.10.0-743 |
| CANDIDATE | 4.11 | [`1697599ee301`](https://git.kernel.org/torvalds/c/1697599ee301) | [kernel] | bitfield.h: add FIELD_FIT() helper |  | generic code, tag [kernel] | 3.10.0-626 |
| CANDIDATE | 4.11 | [`d140199af510`](https://git.kernel.org/torvalds/c/d140199af510) | [kernel] | bpf, lpm: fix kfree of im_node in trie_update_elem |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.11 | [`c502faf94153`](https://git.kernel.org/torvalds/c/c502faf94153) | [kernel] | bpf, lpm: fix overflows in trie_alloc checks |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.11 | [`2d071c643f1c`](https://git.kernel.org/torvalds/c/2d071c643f1c) | [kernel] | bpf, trace: make ctx access checks more robust |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.11 | [`79adffcd6489`](https://git.kernel.org/torvalds/c/79adffcd6489) | [kernel] | bpf, verifier: fix rejection of unaligned access checks for map_value_adj |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.11 | [`b95a5c4db09b`](https://git.kernel.org/torvalds/c/b95a5c4db09b) | [kernel] | bpf: add a longest prefix match trie map implementation |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`a5e8c07059d0`](https://git.kernel.org/torvalds/c/a5e8c07059d0) | [kernel] | bpf: add bpf_probe_read_str helper |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`f38837b08d23`](https://git.kernel.org/torvalds/c/f38837b08d23) | [kernel] | bpf: add get_next_key callback to LPM map |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`a67edbf4fb6d`](https://git.kernel.org/torvalds/c/a67edbf4fb6d) | [kernel] | bpf: add initial bpf tracepoints |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`f0318d01b694`](https://git.kernel.org/torvalds/c/f0318d01b694) | [kernel] | bpf: allow adjusted map element values to spill |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`62c7989b24db`](https://git.kernel.org/torvalds/c/62c7989b24db) | [kernel] | bpf: allow b/h/w/dw access for bpf's cb in ctx |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`5722569bb9c3`](https://git.kernel.org/torvalds/c/5722569bb9c3) | [kernel] | bpf: allow helpers access to map element values |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`06c1c049721a`](https://git.kernel.org/torvalds/c/06c1c049721a) | [kernel] | bpf: allow helpers access to variable memory |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`4fe8435909fd`](https://git.kernel.org/torvalds/c/4fe8435909fd) | [kernel] | bpf: convert htab map to hlist_nulls |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`63dfef75ed75`](https://git.kernel.org/torvalds/c/63dfef75ed75) | [kernel] | bpf: enable verifier to add 0 to packet ptr |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`3fadc8011583`](https://git.kernel.org/torvalds/c/3fadc8011583) | [kernel] | bpf: enable verifier to better track const alu ops |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`6b1bb01bcc5b`](https://git.kernel.org/torvalds/c/6b1bb01bcc5b) | [kernel] | bpf: fix cb access in socket filter programs on tail calls |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.11 | [`8c290e60fa2a`](https://git.kernel.org/torvalds/c/8c290e60fa2a) | [kernel] | bpf: fix hashmap extra_elems logic |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`bc1750f36690`](https://git.kernel.org/torvalds/c/bc1750f36690) | [kernel] | bpf: fix spelling mistake: "proccessed" -> "processed" |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`9f691549f76d`](https://git.kernel.org/torvalds/c/9f691549f76d) | [kernel] | bpf: fix struct htab_elem layout |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`9d876e79df6a`](https://git.kernel.org/torvalds/c/9d876e79df6a) | [kernel] | bpf: fix unlocking of jited image when module ronx not set |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-987 |
| CANDIDATE | 4.11 | [`b1977682a385`](https://git.kernel.org/torvalds/c/b1977682a385) | [kernel] | bpf: improve verifier packet range checks |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`3bf003335ba3`](https://git.kernel.org/torvalds/c/3bf003335ba3) | [kernel] | bpf: Make unnecessarily global functions static |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`6b8cc1d11ef7`](https://git.kernel.org/torvalds/c/6b8cc1d11ef7) | [kernel] | bpf: pass original insn directly to convert_ctx_access |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`7e57fbb2a341`](https://git.kernel.org/torvalds/c/7e57fbb2a341) | [kernel] | bpf: reduce compiler warnings by adding fallthrough comments |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`96a94cc51588`](https://git.kernel.org/torvalds/c/96a94cc51588) | [kernel] | bpf: reference may_access_skb() from __bpf_prog_run() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`9383191da4e4`](https://git.kernel.org/torvalds/c/9383191da4e4) | [kernel] | bpf: remove stubs for cBPF from arch code |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`a5ef01aaac24`](https://git.kernel.org/torvalds/c/a5ef01aaac24) | [kernel] | bpf: Remove unused but set variable in __bpf_lru_list_shrink_inactive() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`39f19ebbf57b`](https://git.kernel.org/torvalds/c/39f19ebbf57b) | [kernel] | bpf: rename ARG_PTR_TO_STACK |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`dbcfe5f76dd5`](https://git.kernel.org/torvalds/c/dbcfe5f76dd5) | [kernel] | bpf: split check_mem_access logic for map values |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`eba38a968258`](https://git.kernel.org/torvalds/c/eba38a968258) | [kernel] | bpf: update the comment about the length of analysis |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.11 | [`858274b6a13b`](https://git.kernel.org/torvalds/c/858274b6a13b) | [kernel] | debugobjects: Reduce contention on the global pool_lock |  | generic code, tag [kernel] | 3.10.0-560 |
| CANDIDATE | 4.11 | [`97dd552eb23c`](https://git.kernel.org/torvalds/c/97dd552eb23c) | [kernel] | debugobjects: Scale thresholds with # of CPUs |  | generic code, tag [kernel] | 3.10.0-560 |
| CANDIDATE | 4.11 | [`c4b73aabd098`](https://git.kernel.org/torvalds/c/c4b73aabd098) | [kernel] | debugobjects: track number of kmem_cache_alloc/kmem_cache_free done |  | generic code, tag [kernel] | 3.10.0-560 |
| CANDIDATE | 4.11 | [`65a50c656276`](https://git.kernel.org/torvalds/c/65a50c656276) | [kernel] | ftrace/graph: Add ftrace_graph_max_depth kernel parameter |  | CONFIG_FTRACE=y in A37 | 3.10.0-707 |
| CANDIDATE | 4.11 | [`b72f8051f34b`](https://git.kernel.org/torvalds/c/b72f8051f34b) | [kernel] | genirq/affinity: Fix calculating vectors to assign |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.11 | [`7bf8222b9bd0`](https://git.kernel.org/torvalds/c/7bf8222b9bd0) | [kernel] | irq/affinity: Fix CPU spread for unbalanced nodes |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.11 | [`3412386b5312`](https://git.kernel.org/torvalds/c/3412386b5312) | [kernel] | irq/affinity: Fix extra vecs calculation |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | 4.11 | [`b862815c3ee7`](https://git.kernel.org/torvalds/c/b862815c3ee7) | [kernel] | list: introduce list_for_each_entry_from_reverse helper |  | generic code, tag [kernel] | 3.10.0-647 |
| CANDIDATE | 4.11 | [`2c935bc57221`](https://git.kernel.org/torvalds/c/2c935bc57221) | [kernel] | locking/atomic, kref: Add kref_read() |  | generic code, tag [kernel] | 3.10.0-769 |
| CANDIDATE | 4.11 | [`318b1dedcd39`](https://git.kernel.org/torvalds/c/318b1dedcd39) | [kernel] | locking/refcounts: Add missing kernel.h header to have UINT_MAX defined |  | generic code, tag [kernel] | 3.10.0-785 |
| CANDIDATE | 4.11 | [`3fce371bfac2`](https://git.kernel.org/torvalds/c/3fce371bfac2) | [kernel] | mm: add new mmget() helper |  | generic code, tag [kernel] | 3.10.0-995 |
| CANDIDATE | 4.11 | [`f1f1007644ff`](https://git.kernel.org/torvalds/c/f1f1007644ff) | [kernel] | mm: add new mmgrab() helper |  | generic code, tag [kernel] | 3.10.0-995 |
| CANDIDATE | 4.11 | [`6ce77bfd6ced`](https://git.kernel.org/torvalds/c/6ce77bfd6ced) | [kernel] | perf/core: Allow kernel filters on CPU events |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-705 |
| CANDIDATE | 4.11 | [`d8a8cfc76919`](https://git.kernel.org/torvalds/c/d8a8cfc76919) | [kernel] | perf/core: Better explain the inherit magic |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-705 |
| CANDIDATE | 4.11 | [`9ccbfbb157a3`](https://git.kernel.org/torvalds/c/9ccbfbb157a3) | [kernel] | perf/core: Do error out on a kernel filter on an exclude_filter event |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-705 |
| CANDIDATE | 4.11 | [`fe45bafbd0e1`](https://git.kernel.org/torvalds/c/fe45bafbd0e1) | [kernel] | perf/core: Don't re-schedule CPU flexible events needlessly |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-633 |
| CANDIDATE | 4.11 | [`7bbba0eb1af3`](https://git.kernel.org/torvalds/c/7bbba0eb1af3) | [kernel] | perf/core: Fix perf_event_enable_on_exec() timekeeping (again) |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-705 |
| CANDIDATE | 4.11 | [`1572e45a924f`](https://git.kernel.org/torvalds/c/1572e45a924f) | [kernel] | perf/core: Fix the perf_cpu_time_max_percent check |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-705 |
| CANDIDATE | 4.11 | [`e552a8389aa4`](https://git.kernel.org/torvalds/c/e552a8389aa4) | [kernel] | perf/core: Fix use-after-free in perf_release() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-705 |
| CANDIDATE | 4.11 | [`487f05e18aa4`](https://git.kernel.org/torvalds/c/487f05e18aa4) | [kernel] | perf/core: Optimize event rescheduling on active contexts |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-633 |
| CANDIDATE | 4.11 | [`279b5165ffad`](https://git.kernel.org/torvalds/c/279b5165ffad) | [kernel] | perf/core: Remove confusing comment and move put_ctx() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-705 |
| CANDIDATE | 4.11 | [`15121c789e00`](https://git.kernel.org/torvalds/c/15121c789e00) | [kernel] | perf/core: Simplify perf_event_free_task() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-705 |
| CANDIDATE | 4.11 | [`40999312c703`](https://git.kernel.org/torvalds/c/40999312c703) | [kernel] | perf/core: Try parent PMU first when initializing a child event |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-633 |
| CANDIDATE | 4.11 | [`2956b5d94a76`](https://git.kernel.org/torvalds/c/2956b5d94a76) | [kernel] | pinctrl / gpio: Introduce .set_config() callback for GPIO chips |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-714 |
| CANDIDATE | 4.11 | [`15381bc7c7f5`](https://git.kernel.org/torvalds/c/15381bc7c7f5) | [kernel] | pinctrl: Allow configuration of pins from gpiolib based drivers |  | CONFIG_GPIOLIB=y in A37 | 3.10.0-714 |
| CANDIDATE | 4.11 | [`630c7ed9ca06`](https://git.kernel.org/torvalds/c/630c7ed9ca06) | [kernel] | rcu: Don't wake rcuc/X kthreads on NOCB CPUs |  | generic code, tag [kernel] | 3.10.0-1017 |
| CANDIDATE | 4.11 | [`e601757102cf`](https://git.kernel.org/torvalds/c/e601757102cf) | [kernel] | sched/headers: Prepare for new header dependencies before moving code to <linux/sched/clock.h> |  | generic code, tag [kernel] | 3.10.0-769 |
| CANDIDATE | 4.11 | [`55687da166bf`](https://git.kernel.org/torvalds/c/55687da166bf) | [kernel] | sched/headers: Prepare for new header dependencies before moving code to <linux/sched/cpufreq.h> |  | generic code, tag [kernel] | 3.10.0-712 |
| CANDIDATE | 4.11 | [`6e84f31522f9`](https://git.kernel.org/torvalds/c/6e84f31522f9) | [kernel] | sched/headers: Prepare for new header dependencies before moving code to <linux/sched/mm.h> |  | generic code, tag [kernel] | 3.10.0-769 |
| CANDIDATE | 4.11 | [`3f07c0144132`](https://git.kernel.org/torvalds/c/3f07c0144132) | [kernel] | sched/headers: Prepare for new header dependencies before moving code to <linux/sched/signal.h> |  | generic code, tag [kernel] | 3.10.0-769 |
| CANDIDATE | 4.11 | [`ae7e81c077d6`](https://git.kernel.org/torvalds/c/ae7e81c077d6) | [kernel] | sched/headers: Prepare for new header dependencies before moving code to <uapi/linux/sched/types.h> |  | generic code, tag [kernel] | 3.10.0-769 |
| CANDIDATE | 4.11 | [`8a1115ff6b6d`](https://git.kernel.org/torvalds/c/8a1115ff6b6d) | [kernel] | scripts/spelling.txt: add "disble(d)" pattern and fix typo instances |  | generic code, tag [kernel] | 3.10.0-705 |
| CANDIDATE | 4.11 | [`b25e67161c29`](https://git.kernel.org/torvalds/c/b25e67161c29) | [kernel] | seccomp: dump core when using SECCOMP_RET_KILL |  | CONFIG_SECCOMP=y in A37 | 3.10.0-911 |
| CANDIDATE | 4.11 | [`d7276e321ff8`](https://git.kernel.org/torvalds/c/d7276e321ff8) | [kernel] | seccomp: Only dump core when single-threaded |  | CONFIG_SECCOMP=y in A37 | 3.10.0-911 |
| CANDIDATE | 4.11 | [`2acae0d5b0f7`](https://git.kernel.org/torvalds/c/2acae0d5b0f7) | [kernel] | trace: add variant without spacing in trace_print_hex_seq |  | CONFIG_FTRACE=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.11 | [`815dd18788fe`](https://git.kernel.org/torvalds/c/815dd18788fe) | [kernel] | treewide: Consolidate get_dma_ops() implementations |  | generic code, tag [kernel] | 3.10.0-722 |
| CANDIDATE | 4.11 | [`ca6e8e103141`](https://git.kernel.org/torvalds/c/ca6e8e103141) | [kernel] | treewide: Consolidate set_dma_ops() implementations |  | generic code, tag [kernel] | 3.10.0-722 |
| CANDIDATE | 4.11 | [`040757f738e1`](https://git.kernel.org/torvalds/c/040757f738e1) | [kernel] | ucount: Remove the atomicity from ucount->count |  | generic code, tag [kernel] | 3.10.0-641 |
| CANDIDATE | 4.12 | [`f4781e76f90d`](https://git.kernel.org/torvalds/c/f4781e76f90d) | [kernel] | alarmtimer: Prevent overflow of relative timers |  | generic code, tag [kernel] | 3.10.0-695 |
| CANDIDATE | 4.12 | [`f6276ac95bde`](https://git.kernel.org/torvalds/c/f6276ac95bde) | [kernel] | audit: log module name on delete_module |  | CONFIG_AUDIT=y in A37 | 3.10.0-641 |
| CANDIDATE | 4.12 | [`b7a84deaf8d1`](https://git.kernel.org/torvalds/c/b7a84deaf8d1) | [kernel] | audit: remove unnecessary semicolon in audit_field_valid() |  | CONFIG_AUDIT=y in A37 | 3.10.0-1029 |
| CANDIDATE | 4.12 | [`2093f2e9dfec`](https://git.kernel.org/torvalds/c/2093f2e9dfec) | [kernel] | block, dax: convert bdev_dax_supported() to dax_direct_access() |  | generic code, tag [kernel] | 3.10.0-817 |
| CANDIDATE | 4.12 | [`ef51042472f5`](https://git.kernel.org/torvalds/c/ef51042472f5) | [kernel] | block, dax: move "select DAX" from BLOCK to FS_DAX |  | generic code, tag [kernel] | 3.10.0-817 |
| CANDIDATE | 4.12 | [`d4b29fd78ea6`](https://git.kernel.org/torvalds/c/d4b29fd78ea6) | [kernel] | block: remove block_device_operations ->direct_access() |  | generic code, tag [kernel] | 3.10.0-817 |
| CANDIDATE | 4.12 | [`56f668dfe00d`](https://git.kernel.org/torvalds/c/56f668dfe00d) | [kernel] | bpf: Add array of maps support |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`bcc6b1b7ebf8`](https://git.kernel.org/torvalds/c/bcc6b1b7ebf8) | [kernel] | bpf: Add hash of maps support |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`81ed18ab3098`](https://git.kernel.org/torvalds/c/81ed18ab3098) | [kernel] | bpf: add helper inlining infra and optimize map_array lookup |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`e07b98d9bffe`](https://git.kernel.org/torvalds/c/e07b98d9bffe) | [kernel] | bpf: Add strict alignment flag for BPF_PROG_LOAD |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`8041902dae52`](https://git.kernel.org/torvalds/c/8041902dae52) | [kernel] | bpf: adjust insn_aux_data when patching insns |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`3c2ce60bdd3d`](https://git.kernel.org/torvalds/c/3c2ce60bdd3d) | [kernel] | bpf: adjust verifier heuristics |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`c5fc9692d101`](https://git.kernel.org/torvalds/c/c5fc9692d101) | [kernel] | bpf: Do per-instruction state dumping in verifier when log_level > 1 |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`0d0e57697f16`](https://git.kernel.org/torvalds/c/0d0e57697f16) | [kernel] | bpf: don't let ldimm64 leak map addresses on unprivileged |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`332270fdc8b6`](https://git.kernel.org/torvalds/c/332270fdc8b6) | [kernel] | bpf: enhance verifier to understand stack pointer arithmetic |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`fad73a1a35ea`](https://git.kernel.org/torvalds/c/fad73a1a35ea) | [kernel] | bpf: Fix and simplifications on inline map lookup |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`1ad2f5838d34`](https://git.kernel.org/torvalds/c/1ad2f5838d34) | [kernel] | bpf: fix incorrect pruning decision when alignment must be tracked |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`a316338cb71a`](https://git.kernel.org/torvalds/c/a316338cb71a) | [kernel] | bpf: fix wrong exposure of map_flags into fdinfo for lpm |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`6832a333ed4a`](https://git.kernel.org/torvalds/c/6832a333ed4a) | [kernel] | bpf: Handle multiple variable additions into packet pointers in verifier |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`9015d2f59535`](https://git.kernel.org/torvalds/c/9015d2f59535) | [kernel] | bpf: inline htab_map_lookup_elem() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`695ba2651a2e`](https://git.kernel.org/torvalds/c/695ba2651a2e) | [kernel] | bpf: lru: Lower the PERCPU_NR_SCANS from 16 to 4 |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`8fe45924387b`](https://git.kernel.org/torvalds/c/8fe45924387b) | [kernel] | bpf: map_get_next_key to return first key on NULL |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`e245c5c6a565`](https://git.kernel.org/torvalds/c/e245c5c6a565) | [kernel] | bpf: move fixup_bpf_calls() function |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`6bdf6abc56b5`](https://git.kernel.org/torvalds/c/6bdf6abc56b5) | [kernel] | bpf: prevent leaking pointer via xadd on unpriviledged |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`a9789ef9afcb`](https://git.kernel.org/torvalds/c/a9789ef9afcb) | [kernel] | bpf: properly reset caller saved regs after helper call and ld_abs/ind |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`79741b3bdec0`](https://git.kernel.org/torvalds/c/79741b3bdec0) | [kernel] | bpf: refactor fixup_bpf_calls() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`40077e0cf622`](https://git.kernel.org/torvalds/c/40077e0cf622) | [kernel] | bpf: remove struct bpf_map_type_list |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`be9370a7d861`](https://git.kernel.org/torvalds/c/be9370a7d861) | [kernel] | bpf: remove struct bpf_prog_type_list |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`d1174416747d`](https://git.kernel.org/torvalds/c/d1174416747d) | [kernel] | bpf: Track alignment of register values in the verifier |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`233ed09d7fda`](https://git.kernel.org/torvalds/c/233ed09d7fda) | [kernel] | chardev: add helper function to register char devs with a struct device |  | generic code, tag [kernel] | 3.10.0-785 |
| CANDIDATE | 4.12 | [`f7e30f01a9e2`](https://git.kernel.org/torvalds/c/f7e30f01a9e2) | [kernel] | cpumask: Add helper cpumask_available() |  | generic code, tag [kernel] | 3.10.0-1013 |
| CANDIDATE | 4.12 | [`f26c5719b2d7`](https://git.kernel.org/torvalds/c/f26c5719b2d7) | [kernel] | dm: add dax_device and dax_operations support |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-817 |
| CANDIDATE | 4.12 | [`817bf4026545`](https://git.kernel.org/torvalds/c/817bf4026545) | [kernel] | dm: teach dm-targets to use a dax_device + dax_operations |  | CONFIG_BLK_DEV_DM=y in A37 | 3.10.0-817 |
| CANDIDATE | 4.12 | [`fa5d932c323e`](https://git.kernel.org/torvalds/c/fa5d932c323e) | [kernel] | ext2, ext4, xfs: retrieve dax_device for iomap operations |  | generic code, tag [kernel] | 3.10.0-817 |
| CANDIDATE | 4.12 | [`cccbce671582`](https://git.kernel.org/torvalds/c/cccbce671582) | [kernel] | filesystem-dax: convert to dax_direct_access() |  | generic code, tag [kernel] | 3.10.0-817 |
| CANDIDATE | 4.12 | [`1b367ece0d7e`](https://git.kernel.org/torvalds/c/1b367ece0d7e) | [kernel] | futex: Use smp_store_release() in mark_wake_futex() |  | generic code, tag [kernel] | 3.10.0-996 |
| CANDIDATE | 4.12 | [`a7e60e55d73c`](https://git.kernel.org/torvalds/c/a7e60e55d73c) | [kernel] | genirq: Fix indentation in remove_irq() |  | generic code, tag [kernel] | 3.10.0-878 |
| CANDIDATE | 4.12 | [`51dbd92520d4`](https://git.kernel.org/torvalds/c/51dbd92520d4) | [kernel] | ia64: reuse append_elf_note() and final_note() functions |  | generic code, tag [kernel] | 3.10.0-677 |
| CANDIDATE | 4.12 | [`b4d8c7aea15e`](https://git.kernel.org/torvalds/c/b4d8c7aea15e) | [kernel] | iommu/iova: Fix compile error with CONFIG_IOMMU_IOVA=m |  | generic code, tag [kernel] | 3.10.0-1015 |
| CANDIDATE | 4.12 | [`21aff52ab2c8`](https://git.kernel.org/torvalds/c/21aff52ab2c8) | [kernel] | iommu: Add dummy implementations for !IOMMU_IOVA |  | generic code, tag [kernel] | 3.10.0-1015 |
| CANDIDATE | 4.12 | [`461a6946b1f9`](https://git.kernel.org/torvalds/c/461a6946b1f9) | [trace] | iommu: Remove pci.h include from trace/events/iommu.h |  | generic code, tag [trace] | 3.10.0-785 |
| CANDIDATE | 4.12 | [`734114f8782f`](https://git.kernel.org/torvalds/c/734114f8782f) | [kernel] | keys: Add a system blacklist keyring |  | CONFIG_KEYS=y in A37 | 3.10.0-52 |
| CANDIDATE | 4.12 | [`734114f8782f`](https://git.kernel.org/torvalds/c/734114f8782f) | [kernel] | keys: Add a system blacklist keyring |  | CONFIG_KEYS=y in A37 | 3.10.0-10 |
| CANDIDATE | 4.12 | [`ed067d4a859f`](https://git.kernel.org/torvalds/c/ed067d4a859f) | [kernel] | linux/kernel.h: Add ALIGN_DOWN macro |  | generic code, tag [kernel] | 3.10.0-769 |
| CANDIDATE | 4.12 | [`e4eda884db79`](https://git.kernel.org/torvalds/c/e4eda884db79) (loose) | [kernel] | Make IP alignment calulations clearer |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.12 | [`a7c3e901a46f`](https://git.kernel.org/torvalds/c/a7c3e901a46f) | [kernel] | mm: introduce kv[mz]alloc helpers |  | generic code, tag [kernel] | 3.10.0-812 |
| CANDIDATE | 4.12 | [`210f7cdcf088`](https://git.kernel.org/torvalds/c/210f7cdcf088) | [kernel] | percpu-refcount: support synchronous switch to atomic mode |  | generic code, tag [kernel] | 3.10.0-786 |
| CANDIDATE | 4.12 | [`8a1898db51a3`](https://git.kernel.org/torvalds/c/8a1898db51a3) | [kernel] | perf/aux: Correct return code of rb_alloc_aux() if !has_aux(ev) |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-719 |
| CANDIDATE | 4.12 | [`88b0193d9418`](https://git.kernel.org/torvalds/c/88b0193d9418) | [kernel] | perf/callchain: Force USER_DS when invoking perf_callchain_user() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-719 |
| CANDIDATE | 4.12 | [`ae0c2d995d64`](https://git.kernel.org/torvalds/c/ae0c2d995d64) | [kernel] | perf/core: Add a flag for partial AUX records |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-719 |
| CANDIDATE | 4.12 | [`f4c0b0aa58d9`](https://git.kernel.org/torvalds/c/f4c0b0aa58d9) | [kernel] | perf/core: Keep AUX flags in the output handle |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-719 |
| CANDIDATE | 4.12 | [`b9a985db9896`](https://git.kernel.org/torvalds/c/b9a985db9896) | [kernel] | pid_ns: Sleep in TASK_INTERRUPTIBLE in zap_pid_ns_processes |  | generic code, tag [kernel] | 3.10.0-1149 |
| CANDIDATE | 4.12 | [`fb9de9704775`](https://git.kernel.org/torvalds/c/fb9de9704775) | [kernel] | ptr_ring: batch ring zeroing |  | generic code, tag [kernel] | 3.10.0-959 |
| CANDIDATE | 4.12 | [`252d2a4117bc`](https://git.kernel.org/torvalds/c/252d2a4117bc) | [kernel] | sched/core: Idle_task_exit() shouldn't use switch_mm_irqs_off() |  | generic code, tag [kernel] | 3.10.0-935 |
| CANDIDATE | 4.12 | [`af085d9084b4`](https://git.kernel.org/torvalds/c/af085d9084b4) | [kernel] | stacktrace/x86: add function for detecting reliable stack traces |  | generic code, tag [kernel] | 3.10.0-778 |
| CANDIDATE | 4.12 | [`b94bf594cf8e`](https://git.kernel.org/torvalds/c/b94bf594cf8e) | [kernel] | timer/sysclt: Restrict timer migration sysctl values to 0 and 1 |  | generic code, tag [kernel] | 3.10.0-966 |
| CANDIDATE | 4.12 | [`35b6f55aa9ba`](https://git.kernel.org/torvalds/c/35b6f55aa9ba) | [kernel] | trace/kprobes: Allow return probes with offsets and absolute addresses |  | CONFIG_FTRACE=y in A37 | 3.10.0-784 |
| CANDIDATE | 4.12 | [`9e52b3256712`](https://git.kernel.org/torvalds/c/9e52b3256712) | [kernel] | tracing/kprobes: Allow to create probe with a module name starting with a digit |  | CONFIG_FTRACE=y in A37 | 3.10.0-784 |
| CANDIDATE | 4.12 | [`8ac1ed791401`](https://git.kernel.org/torvalds/c/8ac1ed791401) | [kernel] | treewide: spelling: correct diffrent[iate] and banlance typos |  | generic code, tag [kernel] | 3.10.0-785 |
| CANDIDATE | 4.12 | [`6abccd1bfee4`](https://git.kernel.org/torvalds/c/6abccd1bfee4) | [kernel] | x86, dax, pmem: remove indirection around memcpy_from_pmem() |  | generic code, tag [kernel] | 3.10.0-817 |
| CANDIDATE | 4.13 | [`41c8bdb3ab10`](https://git.kernel.org/torvalds/c/41c8bdb3ab10) | [kernel] | acpi, nfit: Switch to use new generic UUID API |  | generic code, tag [kernel] | 3.10.0-817 |
| CANDIDATE | 4.13 | [`7786f6b6dfc1`](https://git.kernel.org/torvalds/c/7786f6b6dfc1) | [kernel] | audit: add ambient capabilities to CAPSET and BPRM_FCAPS records |  | CONFIG_AUDIT=y in A37 | 3.10.0-743 |
| CANDIDATE | 4.13 | [`4b3e4ed6b0d9`](https://git.kernel.org/torvalds/c/4b3e4ed6b0d9) | [kernel] | audit: unswing cap_* fields in PATH records |  | CONFIG_AUDIT=y in A37 | 3.10.0-714 |
| CANDIDATE | 4.13 | [`43188702b3d9`](https://git.kernel.org/torvalds/c/43188702b3d9) | [kernel] | bpf, verifier: add additional patterns to evaluate_reg_imm_alu |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.13 | [`9305706c2e80`](https://git.kernel.org/torvalds/c/9305706c2e80) | [kernel] | bpf/verifier: fix min/max handling in BPF_SUB |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`34ad5580f8f9`](https://git.kernel.org/torvalds/c/34ad5580f8f9) | [kernel] | bpf: Add BPF_(PROG\|MAP)_GET_NEXT_ID command |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`bd5f5f4ecb78`](https://git.kernel.org/torvalds/c/bd5f5f4ecb78) | [kernel] | bpf: Add BPF_MAP_GET_FD_BY_ID |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`1e2709769086`](https://git.kernel.org/torvalds/c/1e2709769086) | [kernel] | bpf: Add BPF_OBJ_GET_INFO_BY_FD |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`b16d9aa4c2b9`](https://git.kernel.org/torvalds/c/b16d9aa4c2b9) | [kernel] | bpf: Add BPF_PROG_GET_FD_BY_ID |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`783d28dd11f6`](https://git.kernel.org/torvalds/c/783d28dd11f6) | [kernel] | bpf: Add jited_len to struct bpf_prog |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`14dc6f04f49d`](https://git.kernel.org/torvalds/c/14dc6f04f49d) | [kernel] | bpf: Add syscall lookup support for fd array and htab |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`d25da6caa2a1`](https://git.kernel.org/torvalds/c/d25da6caa2a1) | [kernel] | bpf: don't check spilled reg state for non-STACK_SPILLed type slots |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`89b096898a84`](https://git.kernel.org/torvalds/c/89b096898a84) | [kernel] | bpf: don't indicate success when copy_from_user fails |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`e4448ed87ccd`](https://git.kernel.org/torvalds/c/e4448ed87ccd) | [kernel] | bpf: don't open-code memdup_user() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`9780c0ab1a4e`](https://git.kernel.org/torvalds/c/9780c0ab1a4e) | [kernel] | bpf: export whether tail call has jited owner |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.13 | [`9975a54b3c9e`](https://git.kernel.org/torvalds/c/9975a54b3c9e) | [kernel] | bpf: fix bpf_prog_get_info_by_fd to dump correct xlated_prog_len |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`33ba43ed0afc`](https://git.kernel.org/torvalds/c/33ba43ed0afc) | [kernel] | bpf: fix map value attribute for hash of maps |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`4cabc5b186b5`](https://git.kernel.org/torvalds/c/4cabc5b186b5) | [kernel] | bpf: fix mixed signed/unsigned derived min/max value bounds |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`71189fa9b092`](https://git.kernel.org/torvalds/c/71189fa9b092) | [kernel] | bpf: free up BPF_JMP \| BPF_CALL \| BPF_X opcode |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`4cc7c1864bbd`](https://git.kernel.org/torvalds/c/4cc7c1864bbd) | [kernel] | bpf: Implement show_options |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`f3f1c054c288`](https://git.kernel.org/torvalds/c/f3f1c054c288) | [kernel] | bpf: Introduce bpf_map ID |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`dc4bb0e23561`](https://git.kernel.org/torvalds/c/dc4bb0e23561) | [kernel] | bpf: Introduce bpf_prog ID |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`31fd85816dbe`](https://git.kernel.org/torvalds/c/31fd85816dbe) | [kernel] | bpf: permits narrower load from bpf program context fields |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`239946314e57`](https://git.kernel.org/torvalds/c/239946314e57) | [kernel] | bpf: possibly avoid extra masking for narrower load in verifier |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`80a58d025594`](https://git.kernel.org/torvalds/c/80a58d025594) | [kernel] | bpf: reconcile bpf_tail_call and stack_depth |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.13 | [`80b7d81912d8`](https://git.kernel.org/torvalds/c/80b7d81912d8) | [kernel] | bpf: Remove the capability check for cgroup skb eBPF program |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`4a2ff55aa494`](https://git.kernel.org/torvalds/c/4a2ff55aa494) | [kernel] | bpf: reset id on CONST_IMM transition |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`36e24c003091`](https://git.kernel.org/torvalds/c/36e24c003091) | [kernel] | bpf: reset id on spilled regs in clear_all_pkt_pointers |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`f96da09473b5`](https://git.kernel.org/torvalds/c/f96da09473b5) | [kernel] | bpf: simplify narrower ctx access |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`f696b8f471ec`](https://git.kernel.org/torvalds/c/f696b8f471ec) | [kernel] | bpf: split bpf core interpreter |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`8726679a0fa3`](https://git.kernel.org/torvalds/c/8726679a0fa3) | [kernel] | bpf: teach verifier to track stack depth |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`b870aa901f4b`](https://git.kernel.org/torvalds/c/b870aa901f4b) | [kernel] | bpf: use different interpreter depending on required stack size |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.13 | [`3c1cebff23cd`](https://git.kernel.org/torvalds/c/3c1cebff23cd) | [kernel] | dax, pmem: introduce an optional 'flush' dax_operation |  | generic code, tag [kernel] | 3.10.0-817 |
| CANDIDATE | 4.13 | [`0b277961f448`](https://git.kernel.org/torvalds/c/0b277961f448) | [kernel] | libnvdimm, pmem: disable dax flushing when pmem is fronting a volatile region |  | generic code, tag [kernel] | 3.10.0-914 |
| CANDIDATE | 4.13 | [`5d6dec6fba38`](https://git.kernel.org/torvalds/c/5d6dec6fba38) | [kernel] | locking/refcount: Remove the half-implemented refcount_sub() API |  | generic code, tag [kernel] | 3.10.0-785 |
| CANDIDATE | 4.13 | [`197e7e521384`](https://git.kernel.org/torvalds/c/197e7e521384) (loose) | [kernel] | mm: Sanitize 'move_pages()' permission checks | CVE-2017-14140 | generic code, tag [kernel] | 3.10.0-808 |
| CANDIDATE | 4.13 | [`ce6cf9a15d62`](https://git.kernel.org/torvalds/c/ce6cf9a15d62) | [kernel] | nohz: Add hrtimer sanity check |  | generic code, tag [kernel] | 3.10.0-687 |
| CANDIDATE | 4.13 | [`f99973e18b65`](https://git.kernel.org/torvalds/c/f99973e18b65) | [kernel] | nohz: Fix buggy tick delay on IRQ storms |  | generic code, tag [kernel] | 3.10.0-687 |
| CANDIDATE | 4.13 | [`411fe24e6b7c`](https://git.kernel.org/torvalds/c/411fe24e6b7c) | [kernel] | nohz: Fix collision between tick and other hrtimers, again |  | generic code, tag [kernel] | 3.10.0-687 |
| CANDIDATE | 4.13 | [`d4af6d933ccf`](https://git.kernel.org/torvalds/c/d4af6d933ccf) | [kernel] | nohz: Fix spurious warning when hrtimer and clockevent get out of sync |  | generic code, tag [kernel] | 3.10.0-687 |
| CANDIDATE | 4.13 | [`7c25904508af`](https://git.kernel.org/torvalds/c/7c25904508af) | [kernel] | nohz: Reset next_tick cache even when the timer has no regs |  | generic code, tag [kernel] | 3.10.0-687 |
| CANDIDATE | 4.13 | [`42a6e0996084`](https://git.kernel.org/torvalds/c/42a6e0996084) | [kernel] | nvmem: include linux/err.h from header |  | generic code, tag [kernel] | 3.10.0-833 |
| CANDIDATE | 4.13 | [`f91840a32dee`](https://git.kernel.org/torvalds/c/f91840a32dee) | [kernel] | perf, bpf: Add BPF support to all perf_event types |  | generic code, tag [kernel] | 3.10.0-934 |
| CANDIDATE | 4.13 | [`f91840a32dee`](https://git.kernel.org/torvalds/c/f91840a32dee) | [kernel] | perf, bpf: Add BPF support to all perf_event types |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.13 | [`f91840a32dee`](https://git.kernel.org/torvalds/c/f91840a32dee) | [kernel] | perf, bpf: Add BPF support to all perf_event types |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.13 | [`f91840a32dee`](https://git.kernel.org/torvalds/c/f91840a32dee) | [kernel] | perf, bpf: Add BPF support to all perf_event types |  | generic code, tag [kernel] | 3.10.0-888 |
| CANDIDATE | 4.13 | [`ba5213ae6b88`](https://git.kernel.org/torvalds/c/ba5213ae6b88) | [kernel] | perf/core: Correct event creation with PERF_FORMAT_GROUP |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-872 |
| CANDIDATE | 4.13 | [`36cc2b9222b5`](https://git.kernel.org/torvalds/c/36cc2b9222b5) | [kernel] | perf/core: Fix error handling in perf_event_alloc() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-872 |
| CANDIDATE | 4.13 | [`2aeb18835476`](https://git.kernel.org/torvalds/c/2aeb18835476) | [kernel] | perf/core: Fix locking for children siblings group read |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-872 |
| CANDIDATE | 4.13 | [`f12f42acdbb5`](https://git.kernel.org/torvalds/c/f12f42acdbb5) | [kernel] | perf/core: Fix potential double-fetch bug |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-872 |
| CANDIDATE | 4.13 | [`3bda69c1c399`](https://git.kernel.org/torvalds/c/3bda69c1c399) | [kernel] | perf/core: Fix scheduling regression of pinned groups |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-872 |
| CANDIDATE | 4.13 | [`9b231d9f47c6`](https://git.kernel.org/torvalds/c/9b231d9f47c6) | [kernel] | perf/core: Fix time on IOC_ENABLE |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-872 |
| CANDIDATE | 4.13 | [`85c617abc786`](https://git.kernel.org/torvalds/c/85c617abc786) | [kernel] | perf/core: Remove some dead code |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-872 |
| CANDIDATE | 4.13 | [`d0fabd1cb8b7`](https://git.kernel.org/torvalds/c/d0fabd1cb8b7) | [kernel] | perf/core: Remove unused perf_cgroup_event_cgrp_time() function |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-872 |
| CANDIDATE | 4.13 | [`2eaa38d9fcba`](https://git.kernel.org/torvalds/c/2eaa38d9fcba) (loose) | [kernel] | phy: Remove trailing semicolon in macro definition |  | generic code, tag [kernel] | 3.10.0-976 |
| CANDIDATE | 4.13 | [`197a5212c3dd`](https://git.kernel.org/torvalds/c/197a5212c3dd) | [kernel] | ptr_ring: add ptr_ring_unconsume |  | generic code, tag [kernel] | 3.10.0-959 |
| CANDIDATE | 4.13 | [`728fc8d5532b`](https://git.kernel.org/torvalds/c/728fc8d5532b) | [kernel] | ptr_ring: introduce batch dequeuing |  | generic code, tag [kernel] | 3.10.0-959 |
| CANDIDATE | 4.13 | [`896bbb252258`](https://git.kernel.org/torvalds/c/896bbb252258) | [kernel] | sched/core: Allow __sched_setscheduler() in interrupts when PI is not used |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 4.13 | [`2a42eb9594a1`](https://git.kernel.org/torvalds/c/2a42eb9594a1) | [kernel] | sched/cputime: Accumulate vtime on top of nsec clocksource |  | generic code, tag [kernel] | 3.10.0-966 |
| CANDIDATE | 4.13 | [`9fa57cf5a5c4`](https://git.kernel.org/torvalds/c/9fa57cf5a5c4) | [kernel] | sched/cputime: Always set tsk->vtime_snap_whence after accounting vtime |  | generic code, tag [kernel] | 3.10.0-966 |
| CANDIDATE | 4.13 | [`bac5b6b6b115`](https://git.kernel.org/torvalds/c/bac5b6b6b115) | [kernel] | sched/cputime: Move the vtime task fields to their own struct |  | generic code, tag [kernel] | 3.10.0-966 |
| CANDIDATE | 4.13 | [`60a9ce57e7c5`](https://git.kernel.org/torvalds/c/60a9ce57e7c5) | [kernel] | sched/cputime: Rename vtime fields |  | generic code, tag [kernel] | 3.10.0-966 |
| CANDIDATE | 4.13 | [`6d3aed3d8a05`](https://git.kernel.org/torvalds/c/6d3aed3d8a05) | [kernel] | sched/debug: Fix SCHED_WARN_ON() to return a value on !CONFIG_SCHED_DEBUG as well |  | generic code, tag [kernel] | 3.10.0-907 |
| CANDIDATE | 4.13 | [`c743f0a5c50f`](https://git.kernel.org/torvalds/c/c743f0a5c50f) | [kernel] | sched/fair, cpumask: Export for_each_cpu_wrap() |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 4.13 | [`35a566e6e8a1`](https://git.kernel.org/torvalds/c/35a566e6e8a1) | [kernel] | sched/topology: Add a few comments |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 4.13 | [`0372dd2736e0`](https://git.kernel.org/torvalds/c/0372dd2736e0) | [kernel] | sched/topology: Fix building of overlapping sched-groups |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 4.13 | [`1676330ecfa8`](https://git.kernel.org/torvalds/c/1676330ecfa8) | [kernel] | sched/topology: Fix overlapping sched_group_capacity |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 4.13 | [`73bb059f9b8a`](https://git.kernel.org/torvalds/c/73bb059f9b8a) | [kernel] | sched/topology: Fix overlapping sched_group_mask |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 4.13 | [`c20e1ea4b61c`](https://git.kernel.org/torvalds/c/c20e1ea4b61c) | [kernel] | sched/topology: Move comment about asymmetric node setups |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 4.13 | [`f32d782e31bf`](https://git.kernel.org/torvalds/c/f32d782e31bf) | [kernel] | sched/topology: Optimize build_group_mask() |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 4.13 | [`8c0334697dc3`](https://git.kernel.org/torvalds/c/8c0334697dc3) | [kernel] | sched/topology: Refactor function build_overlap_sched_groups() |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 4.13 | [`af85596c74de`](https://git.kernel.org/torvalds/c/af85596c74de) | [kernel] | sched/topology: Remove FORCE_SD_OVERLAP |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 4.13 | [`0c0e776a9b0f`](https://git.kernel.org/torvalds/c/0c0e776a9b0f) | [kernel] | sched/topology: Rewrite get_group() |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 4.13 | [`91eaed0d6131`](https://git.kernel.org/torvalds/c/91eaed0d6131) | [kernel] | sched/topology: Simplify build_overlap_sched_groups() |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 4.13 | [`af218122b103`](https://git.kernel.org/torvalds/c/af218122b103) | [kernel] | sched/topology: Simplify sched_group_mask() usage |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 4.13 | [`8d5dc5126bb2`](https://git.kernel.org/torvalds/c/8d5dc5126bb2) | [kernel] | sched/topology: Small cleanup |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 4.13 | [`a420b0630362`](https://git.kernel.org/torvalds/c/a420b0630362) | [kernel] | sched/topology: Verify the first group matches the child domain |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 4.13 | [`131b63515932`](https://git.kernel.org/torvalds/c/131b63515932) | [kernel] | seccomp: Clean up core dump logic |  | CONFIG_SECCOMP=y in A37 | 3.10.0-911 |
| CANDIDATE | 4.13 | [`0b5fa2290637`](https://git.kernel.org/torvalds/c/0b5fa2290637) | [kernel] | seccomp: Switch from atomic_t to recount_t |  | CONFIG_SECCOMP=y in A37 | 3.10.0-911 |
| CANDIDATE | 4.13 | [`3528c1a52e7a`](https://git.kernel.org/torvalds/c/3528c1a52e7a) | [kernel] | skb_array: introduce batch dequeuing |  | generic code, tag [kernel] | 3.10.0-959 |
| CANDIDATE | 4.13 | [`3acb696015a2`](https://git.kernel.org/torvalds/c/3acb696015a2) | [kernel] | skb_array: introduce skb_array_unconsume |  | generic code, tag [kernel] | 3.10.0-959 |
| CANDIDATE | 4.13 | [`49f96fd0cb38`](https://git.kernel.org/torvalds/c/49f96fd0cb38) | [kernel] | tap: export skb_array |  | CONFIG_TUN=y in A37 | 3.10.0-959 |
| CANDIDATE | 4.13 | [`4bb0f0e73c8c`](https://git.kernel.org/torvalds/c/4bb0f0e73c8c) | [kernel] | tracing: Call clear_boot_tracer() at lateinit_sync |  | CONFIG_FTRACE=y in A37 | 3.10.0-812 |
| CANDIDATE | 4.13 | [`83339c6b159e`](https://git.kernel.org/torvalds/c/83339c6b159e) | [kernel] | tun: export skb_array |  | CONFIG_TUN=y in A37 | 3.10.0-959 |
| CANDIDATE | 4.13 | [`63709fd42962`](https://git.kernel.org/torvalds/c/63709fd42962) | [kernel] | uuid: Take const on input of uuid_is_null() and guid_is_null() |  | generic code, tag [kernel] | 3.10.0-817 |
| CANDIDATE | 4.14 | [`8e9cd9ce90d4`](https://git.kernel.org/torvalds/c/8e9cd9ce90d4) | [kernel] | bpf/verifier: document liveness analysis |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`8e17c1b16277`](https://git.kernel.org/torvalds/c/8e17c1b16277) | [kernel] | bpf/verifier: increase complexity limit to 128k |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`7d1238f21026`](https://git.kernel.org/torvalds/c/7d1238f21026) | [kernel] | bpf/verifier: more concise register state logs for constant var_off |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`e67b8a685c7c`](https://git.kernel.org/torvalds/c/e67b8a685c7c) | [kernel] | bpf/verifier: reject BPF_ALU64\|BPF_END |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`1b688a19a922`](https://git.kernel.org/torvalds/c/1b688a19a922) | [kernel] | bpf/verifier: remove varlen_map_value_access flag |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`f1174f77b50c`](https://git.kernel.org/torvalds/c/f1174f77b50c) | [kernel] | bpf/verifier: rework value tracking |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`dc503a8ad984`](https://git.kernel.org/torvalds/c/dc503a8ad984) | [kernel] | bpf/verifier: track liveness for pruning |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`b03c9f9fdc37`](https://git.kernel.org/torvalds/c/b03c9f9fdc37) | [kernel] | bpf/verifier: track signed and unsigned min/max values |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`63f45f840634`](https://git.kernel.org/torvalds/c/63f45f840634) | [kernel] | bpf/verifier: when pruning a branch, ignore its write marks |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`546ac1ffb70d`](https://git.kernel.org/torvalds/c/546ac1ffb70d) | [kernel] | bpf: add devmap, a map for storing net device references |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`cf5f5cea2706`](https://git.kernel.org/torvalds/c/cf5f5cea2706) | [kernel] | bpf: add support for sys_enter_* and sys_exit_* tracepoints |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.14 | [`cf5f5cea2706`](https://git.kernel.org/torvalds/c/cf5f5cea2706) | [kernel] | bpf: add support for sys_enter_* and sys_exit_* tracepoints |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`96eabe7a40aa`](https://git.kernel.org/torvalds/c/96eabe7a40aa) | [kernel] | bpf: Allow selecting numa node during map creation |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`241a974ba2c0`](https://git.kernel.org/torvalds/c/241a974ba2c0) | [kernel] | bpf: dev_map_alloc() shouldn't return NULL |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.14 | [`cf9d01405925`](https://git.kernel.org/torvalds/c/cf9d01405925) | [kernel] | bpf: devmap: remove unnecessary value size check |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`28e33f9d78ee`](https://git.kernel.org/torvalds/c/28e33f9d78ee) | [kernel] | bpf: disallow arithmetic operations on context pointer |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`930651a75bf1`](https://git.kernel.org/torvalds/c/930651a75bf1) | [kernel] | bpf: do not disable/enable BH in bpf_map_free_id() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`bc6d5031b43a`](https://git.kernel.org/torvalds/c/bc6d5031b43a) | [kernel] | bpf: do not test for PCPU_MIN_UNIT_SIZE before percpu allocations |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`a6f6df69c48b`](https://git.kernel.org/torvalds/c/a6f6df69c48b) | [kernel] | bpf: export bpf_prog_inc_not_zero |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`752ba56fb130`](https://git.kernel.org/torvalds/c/752ba56fb130) | [kernel] | bpf: Extend check_uarg_tail_zero() checks |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`90caccdd8cc0`](https://git.kernel.org/torvalds/c/90caccdd8cc0) | [kernel] | bpf: fix bpf_tail_call() x64 JIT |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`8fe2d6ccd52b`](https://git.kernel.org/torvalds/c/8fe2d6ccd52b) | [kernel] | bpf: fix liveness marking |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`1ab2de2bfed3`](https://git.kernel.org/torvalds/c/1ab2de2bfed3) | [kernel] | bpf: fix liveness propagation to parent in spilled stack slots |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`96e5ae4e76f1`](https://git.kernel.org/torvalds/c/96e5ae4e76f1) | [kernel] | bpf: fix numa_node validation |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.14 | [`cc555421bc11`](https://git.kernel.org/torvalds/c/cc555421bc11) | [kernel] | bpf: Inline LRU map lookup |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`7b0c2a0508b9`](https://git.kernel.org/torvalds/c/7b0c2a0508b9) | [kernel] | bpf: inline map in map lookup functions for array and htab |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`d6e1e46f69fb`](https://git.kernel.org/torvalds/c/d6e1e46f69fb) | [kernel] | bpf: linux/bpf.h needs linux/numa.h |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.14 | [`89c63074c2bc`](https://git.kernel.org/torvalds/c/89c63074c2bc) | [kernel] | bpf: make htab inlining more robust wrt assumptions |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`58291a7465f6`](https://git.kernel.org/torvalds/c/58291a7465f6) | [kernel] | bpf: Move check_uarg_tail_zero() upward |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`bb9b9f880221`](https://git.kernel.org/torvalds/c/bb9b9f880221) | [kernel] | bpf: Only set node->ref = 1 if it has not been set |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`9ef2a8cd5c0d`](https://git.kernel.org/torvalds/c/9ef2a8cd5c0d) | [kernel] | bpf: require CAP_NET_ADMIN when using devmap |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`e1cba4b85daa`](https://git.kernel.org/torvalds/c/e1cba4b85daa) | [kernel] | cgroup: Add mount flag to enable cpuset to use v2 behavior in v1 cgroup |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 4.14 | [`7375ae3a0b79`](https://git.kernel.org/torvalds/c/7375ae3a0b79) | [kernel] | compiler-gcc.h: Introduce __nostackprotector function attribute |  | generic code, tag [kernel] | 3.10.0-801 |
| CANDIDATE | 4.14 | [`b8d1b8ee93df`](https://git.kernel.org/torvalds/c/b8d1b8ee93df) | [kernel] | cpuset: Allow v2 behavior in v1 cgroup |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | 4.14 | [`caba4cbbd27d`](https://git.kernel.org/torvalds/c/caba4cbbd27d) | [kernel] | debugobjects: Make kmemleak ignore debug objects |  | generic code, tag [kernel] | 3.10.0-768 |
| CANDIDATE | 4.14 | [`b24413180f56`](https://git.kernel.org/torvalds/c/b24413180f56) | [kernel] | license cleanup: add SPDX GPL-2.0 license identifier to files with no license |  | generic code, tag [kernel] | 3.10.0-968 |
| CANDIDATE | 4.14 | [`604df322363e`](https://git.kernel.org/torvalds/c/604df322363e) | [kernel] | linux/kernel.h: move DIV_ROUND_DOWN_ULL() macro |  | generic code, tag [kernel] | 3.10.0-1020 |
| CANDIDATE | 4.14 | [`d89e588ca408`](https://git.kernel.org/torvalds/c/d89e588ca408) | [kernel] | locking: Introduce smp_mb__after_spinlock() |  | generic code, tag [kernel] | 3.10.0-916 |
| CANDIDATE | 4.14 | [`22e4ebb97582`](https://git.kernel.org/torvalds/c/22e4ebb97582) | [kernel] | membarrier: provide expedited private command |  | generic code, tag [kernel] | 3.10.0-879 |
| CANDIDATE | 4.14 | [`a961e40917fb`](https://git.kernel.org/torvalds/c/a961e40917fb) | [kernel] | membarrier: provide register expedited private command |  | generic code, tag [kernel] | 3.10.0-879 |
| CANDIDATE | 4.14 | [`81a0298bdfab`](https://git.kernel.org/torvalds/c/81a0298bdfab) (loose) | [kernel] | mm: swap: don't use VMA based swap readahead if HDD is used as swap |  | generic code, tag [kernel] | 3.10.0-1025 |
| CANDIDATE | 4.14 | [`98589a0998b8`](https://git.kernel.org/torvalds/c/98589a0998b8) | [kernel] | netfilter: xt_bpf: Fix XT_BPF_MODE_FD_PINNED mode of 'xt_bpf_info_v1' |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.14 | [`d9a50b0256f0`](https://git.kernel.org/torvalds/c/d9a50b0256f0) | [kernel] | perf/aux: Ensure aux_wakeup represents most recent wakeup index |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-880 |
| CANDIDATE | 4.14 | [`441430eb54a0`](https://git.kernel.org/torvalds/c/441430eb54a0) | [kernel] | perf/aux: Only update ->aux_wakeup in non-overwrite mode |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-880 |
| CANDIDATE | 4.14 | [`8d4e6c4caa12`](https://git.kernel.org/torvalds/c/8d4e6c4caa12) | [kernel] | perf/core, pt, bts: Get rid of itrace_started |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-880 |
| CANDIDATE | 4.14 | [`fc7ce9c74c3a`](https://git.kernel.org/torvalds/c/fc7ce9c74c3a) | [kernel] | perf/core, x86: Add PERF_SAMPLE_PHYS_ADDR |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-872 |
| CANDIDATE | 4.14 | [`e6a5203399d1`](https://git.kernel.org/torvalds/c/e6a5203399d1) | [kernel] | perf/core: Fix cgroup time when scheduling descendants |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-880 |
| CANDIDATE | 4.14 | [`fdccc3fb7a42`](https://git.kernel.org/torvalds/c/fdccc3fb7a42) | [kernel] | perf/core: Reduce context switch overhead |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-880 |
| CANDIDATE | 4.14 | [`20435d84e5f2`](https://git.kernel.org/torvalds/c/20435d84e5f2) | [kernel] | sched/debug: Intruduce task_state_to_char() helper function |  | generic code, tag [kernel] | 3.10.0-1020 |
| CANDIDATE | 4.14 | [`5ccba44ba118`](https://git.kernel.org/torvalds/c/5ccba44ba118) | [kernel] | sched/sysctl: Check user input value of sysctl_sched_time_avg |  | generic code, tag [kernel] | 3.10.0-907 |
| CANDIDATE | 4.14 | [`213c5a459ae0`](https://git.kernel.org/torvalds/c/213c5a459ae0) | [kernel] | sched/topology: Fix memory leak in __sdt_alloc() |  | generic code, tag [kernel] | 3.10.0-773 |
| CANDIDATE | 4.14 | [`d612b1fd8010`](https://git.kernel.org/torvalds/c/d612b1fd8010) | [kernel] | seccomp: Operation for checking if an action is available |  | CONFIG_SECCOMP=y in A37 | 3.10.0-911 |
| CANDIDATE | 4.14 | [`0ddec0fc8900`](https://git.kernel.org/torvalds/c/0ddec0fc8900) | [kernel] | seccomp: Sysctl to configure actions that are allowed to be logged |  | CONFIG_SECCOMP=y in A37 | 3.10.0-911 |
| CANDIDATE | 4.14 | [`8e5f1ad116df`](https://git.kernel.org/torvalds/c/8e5f1ad116df) | [kernel] | seccomp: Sysctl to display available actions |  | CONFIG_SECCOMP=y in A37 | 3.10.0-911 |
| CANDIDATE | 4.14 | [`686fef928bba`](https://git.kernel.org/torvalds/c/686fef928bba) | [kernel] | timer: Prepare to change timer callback argument type |  | generic code, tag [kernel] | 3.10.0-876 |
| CANDIDATE | 4.14 | [`d0618410eced`](https://git.kernel.org/torvalds/c/d0618410eced) | [kernel] | tracing, perf: Adjust code layout in get_recursion_context() |  | generic code, tag [kernel] | 3.10.0-880 |
| CANDIDATE | 4.14 | [`01f0a02701cb`](https://git.kernel.org/torvalds/c/01f0a02701cb) | [kernel] | watchdog/core: Remove the park_in_progress obfuscation |  | generic code, tag [kernel] | 3.10.0-1160.11.1 |
| CANDIDATE | 4.14 | [`cef572ad9bd7`](https://git.kernel.org/torvalds/c/cef572ad9bd7) | [kernel] | workqueue: Fix NULL pointer dereference |  | generic code, tag [kernel] | 3.10.0-1059 |
| CANDIDATE | 4.15 | [`e4a8ca3baa55`](https://git.kernel.org/torvalds/c/e4a8ca3baa55) | [kernel] | /proc/module: fix building without kallsyms |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.15 | [`516fb7f2e73d`](https://git.kernel.org/torvalds/c/516fb7f2e73d) | [kernel] | /proc/module: use the same logic as /proc/kallsyms for address exposure |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.15 | [`173743dd99a4`](https://git.kernel.org/torvalds/c/173743dd99a4) | [kernel] | audit: ensure that 'audit=1' actually enables audit for PID 1 |  | CONFIG_AUDIT=y in A37 | 3.10.0-738 |
| CANDIDATE | 4.15 | [`42d5e37654e4`](https://git.kernel.org/torvalds/c/42d5e37654e4) | [kernel] | audit: filter PATH records keyed on filesystem magic |  | CONFIG_AUDIT=y in A37 | 3.10.0-1029 |
| CANDIDATE | 4.15 | [`de8cd83e91bc`](https://git.kernel.org/torvalds/c/de8cd83e91bc) | [kernel] | audit: Record fanotify access control decisions |  | CONFIG_AUDIT=y in A37 | 3.10.0-797 |
| CANDIDATE | 4.15 | [`cbe96375025e`](https://git.kernel.org/torvalds/c/cbe96375025e) | [kernel] | bitops: Add clear/set_bit32() to linux/bitops.h |  | generic code, tag [kernel] | 3.10.0-832 |
| CANDIDATE | 4.15 | [`2967acbb257a`](https://git.kernel.org/torvalds/c/2967acbb257a) | [kernel] | blktrace: fix trace mutex deadlock | CVE-2019-19768 | generic code, tag [kernel] | 3.10.0-1129 |
| CANDIDATE | 4.15 | [`1f2cac107c59`](https://git.kernel.org/torvalds/c/1f2cac107c59) | [kernel] | blktrace: fix unlocked access to init/start-stop/teardown | CVE-2019-19768 | generic code, tag [kernel] | 3.10.0-1129 |
| CANDIDATE | 4.15 | [`a6da0024ffc1`](https://git.kernel.org/torvalds/c/a6da0024ffc1) | [kernel] | blktrace: fix unlocked registration of tracepoints | CVE-2019-19768 | generic code, tag [kernel] | 3.10.0-1129 |
| CANDIDATE | 4.15 | [`bbeb6e4323da`](https://git.kernel.org/torvalds/c/bbeb6e4323da) | [kernel] | bpf, array: fix overflow in max_entries and undefined behavior in index_mask |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.15 | [`4374f256ce81`](https://git.kernel.org/torvalds/c/4374f256ce81) | [kernel] | bpf/verifier: fix bounds calculation on BPF_RSH |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`2b7c6ba945fd`](https://git.kernel.org/torvalds/c/2b7c6ba945fd) | [kernel] | bpf/verifier: improve disassembly of BPF_END instructions |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`73c864b38383`](https://git.kernel.org/torvalds/c/73c864b38383) | [kernel] | bpf/verifier: improve disassembly of BPF_NEG instructions |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`dd0bb688eaa2`](https://git.kernel.org/torvalds/c/dd0bb688eaa2) | [kernel] | bpf: add a bpf_override_function helper |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.15 | [`6e71b04a8224`](https://git.kernel.org/torvalds/c/6e71b04a8224) | [kernel] | bpf: Add file mode configuration into bpf maps |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`908432ca84fc`](https://git.kernel.org/torvalds/c/908432ca84fc) | [kernel] | bpf: add helper bpf_perf_event_read_value for perf event array map |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`4bebdc7a85aa`](https://git.kernel.org/torvalds/c/4bebdc7a85aa) | [kernel] | bpf: add helper bpf_perf_prog_read_value |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`ad5b177bd73f`](https://git.kernel.org/torvalds/c/ad5b177bd73f) | [kernel] | bpf: Add map_name to bpf_map_info |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`de8f3a83b0a0`](https://git.kernel.org/torvalds/c/de8f3a83b0a0) | [kernel] | bpf: add meta pointer for direct access |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`cb4d2b3f03d8`](https://git.kernel.org/torvalds/c/cb4d2b3f03d8) | [kernel] | bpf: Add name, load_time, uid and map_ids to bpf_prog_info |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`9147efcbe0b7`](https://git.kernel.org/torvalds/c/9147efcbe0b7) | [kernel] | bpf: add schedule points to map alloc/free |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`5beca081be91`](https://git.kernel.org/torvalds/c/5beca081be91) | [kernel] | bpf: also improve pattern matches for meta access |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`7891a87efc71`](https://git.kernel.org/torvalds/c/7891a87efc71) | [kernel] | bpf: arsh is not supported in 32 bit alu thus reject it |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`be95a845cc44`](https://git.kernel.org/torvalds/c/be95a845cc44) | [kernel] | bpf: avoid false sharing of map refcount with max_entries |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.15 | [`07c41a295c5f`](https://git.kernel.org/torvalds/c/07c41a295c5f) | [kernel] | bpf: avoid rcu_dereference inside bpf_event_mutex lock region |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.15 | [`473d97343f94`](https://git.kernel.org/torvalds/c/473d97343f94) | [kernel] | bpf: Change bpf_obj_name_cpy() to better ensure map's name is init by 0 |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`a60dd35d2e39`](https://git.kernel.org/torvalds/c/a60dd35d2e39) | [kernel] | bpf: change bpf_perf_event_output arg5 type to ARG_CONST_SIZE_OR_ZERO |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`5c4e1201740c`](https://git.kernel.org/torvalds/c/5c4e1201740c) | [kernel] | bpf: change bpf_probe_read_str arg2 type to ARG_CONST_SIZE_OR_ZERO |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`9c019e2bc4b2`](https://git.kernel.org/torvalds/c/9c019e2bc4b2) | [kernel] | bpf: change helper bpf_probe_read arg2 type to ARG_CONST_SIZE_OR_ZERO |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`c895f6f703ad`](https://git.kernel.org/torvalds/c/c895f6f703ad) | [kernel] | bpf: correct broken uapi for BPF_PROG_TYPE_PERF_EVENT program type |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`82abbf8d2fc4`](https://git.kernel.org/torvalds/c/82abbf8d2fc4) | [kernel] | bpf: do not allow root to mangle valid pointers |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`179d1c560299`](https://git.kernel.org/torvalds/c/179d1c560299) | [kernel] | bpf: don't prune branches when a scalar is replaced with a pointer |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`e7bf8249e8f1`](https://git.kernel.org/torvalds/c/e7bf8249e8f1) | [kernel] | bpf: encapsulate verifier log state into a structure |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`390ee7e29fc8`](https://git.kernel.org/torvalds/c/390ee7e29fc8) | [kernel] | bpf: enforce return code for cgroup-bpf programs |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`468f6eafa6c4`](https://git.kernel.org/torvalds/c/468f6eafa6c4) | [kernel] | bpf: fix 32-bit ALU op verification |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`68fda450a7df`](https://git.kernel.org/torvalds/c/68fda450a7df) | [kernel] | bpf: fix 32-bit divide by zero |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`c131187db2d3`](https://git.kernel.org/torvalds/c/c131187db2d3) | [kernel] | bpf: fix branch pruning logic |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`c366287ebd69`](https://git.kernel.org/torvalds/c/c366287ebd69) | [kernel] | bpf: fix divides by zero |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`95a762e2c8c9`](https://git.kernel.org/torvalds/c/95a762e2c8c9) | [kernel] | bpf: fix incorrect sign extension in check_alu_op() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`0c17d1d2c619`](https://git.kernel.org/torvalds/c/0c17d1d2c619) | [kernel] | bpf: fix incorrect tracking of register size truncation |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`bb7f0f989ca7`](https://git.kernel.org/torvalds/c/bb7f0f989ca7) | [kernel] | bpf: fix integer overflows |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`89ad2fa3f043`](https://git.kernel.org/torvalds/c/89ad2fa3f043) | [kernel] | bpf: fix lockdep splat |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.15 | [`ea25f914dc16`](https://git.kernel.org/torvalds/c/ea25f914dc16) | [kernel] | bpf: fix missing error return in check_stack_boundary() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`eba0c929d1d0`](https://git.kernel.org/torvalds/c/eba0c929d1d0) | [kernel] | bpf: fix out-of-bounds access warning in bpf_check |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`409503439328`](https://git.kernel.org/torvalds/c/409503439328) | [kernel] | bpf: fix spelling mistake: "obusing" -> "abusing" |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`1969db47f8d0`](https://git.kernel.org/torvalds/c/1969db47f8d0) | [kernel] | bpf: fix verifier memory leaks |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`8c01c4f896aa`](https://git.kernel.org/torvalds/c/8c01c4f896aa) | [kernel] | bpf: fix verifier NULL pointer dereference |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`a5ec6ae161d7`](https://git.kernel.org/torvalds/c/a5ec6ae161d7) | [kernel] | bpf: force strict alignment checks for stack pointers |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`e454cf595853`](https://git.kernel.org/torvalds/c/e454cf595853) | [kernel] | bpf: Implement map_delete_elem for BPF_MAP_TYPE_LPM_TRIE |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`9fd29c08e520`](https://git.kernel.org/torvalds/c/9fd29c08e520) | [kernel] | bpf: improve verifier ARG_CONST_SIZE_OR_ZERO semantics |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`db1ac4964fa1`](https://git.kernel.org/torvalds/c/db1ac4964fa1) | [kernel] | bpf: introduce ARG_PTR_TO_MEM_OR_NULL |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`468e2f64d220`](https://git.kernel.org/torvalds/c/468e2f64d220) | [kernel] | bpf: introduce BPF_PROG_QUERY command |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.15 | [`b06723da824a`](https://git.kernel.org/torvalds/c/b06723da824a) | [kernel] | bpf: minor cleanups after merge |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`61bd5218eef3`](https://git.kernel.org/torvalds/c/61bd5218eef3) | [kernel] | bpf: move global verifier log into verifier environment |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`f4ac7e0b5cc8`](https://git.kernel.org/torvalds/c/f4ac7e0b5cc8) | [kernel] | bpf: move instruction printing into a separate file |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`4f9218aaf8a4`](https://git.kernel.org/torvalds/c/4f9218aaf8a4) | [kernel] | bpf: move knowledge about post-translation offsets out of verifier |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`324bda9e6c5a`](https://git.kernel.org/torvalds/c/324bda9e6c5a) | [kernel] | bpf: multi program support for cgroup+bpf |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.15 | [`ab3f0063c48c`](https://git.kernel.org/torvalds/c/ab3f0063c48c) | [kernel] | bpf: offload: add infrastructure for loading programs for a specific netdev |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.15 | [`ab3f0063c48c`](https://git.kernel.org/torvalds/c/ab3f0063c48c) | [kernel] | bpf: offload: add infrastructure for loading programs for a specific netdev |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`1f6f4cb7ba21`](https://git.kernel.org/torvalds/c/1f6f4cb7ba21) | [kernel] | bpf: offload: rename the ifindex field |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.15 | [`b5d7388f9db7`](https://git.kernel.org/torvalds/c/b5d7388f9db7) | [kernel] | bpf: Optimize lpm trie delete |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`97562633bcba`](https://git.kernel.org/torvalds/c/97562633bcba) | [kernel] | bpf: perf event change needed for subsequent bpf helpers |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`e87c6bc3852b`](https://git.kernel.org/torvalds/c/e87c6bc3852b) | [kernel] | bpf: permit multiple bpf attachments for a single perf event |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.15 | [`b2157399cc98`](https://git.kernel.org/torvalds/c/b2157399cc98) | [kernel] | bpf: prevent out-of-bounds speculation |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`f37a8cb84cce`](https://git.kernel.org/torvalds/c/f37a8cb84cce) | [kernel] | bpf: reject stores into ctx via st and xadd |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`eb33f2cca49e`](https://git.kernel.org/torvalds/c/eb33f2cca49e) | [kernel] | bpf: remove explicit handling of 0 for arg2 in bpf_probe_read |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`035226b964c8`](https://git.kernel.org/torvalds/c/035226b964c8) | [kernel] | bpf: remove tail_call and get_stackid helper declarations from bpf.h |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.15 | [`00176a34d9e2`](https://git.kernel.org/torvalds/c/00176a34d9e2) | [kernel] | bpf: remove the verifier ops from program structure |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`c8c088ba0edf`](https://git.kernel.org/torvalds/c/c8c088ba0edf) | [kernel] | bpf: set maximum number of attached progs to 64 for a single perf tp |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.15 | [`7de16e3a3557`](https://git.kernel.org/torvalds/c/7de16e3a3557) | [kernel] | bpf: split verifier and program ops |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`0b4c6841fee0`](https://git.kernel.org/torvalds/c/0b4c6841fee0) | [kernel] | bpf: use the same condition in perf event set/free bpf handler |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.15 | [`1bdec44955ed`](https://git.kernel.org/torvalds/c/1bdec44955ed) | [kernel] | bpf: verifier: set reg_type on context accesses in second pass |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`a2a7d5701052`](https://git.kernel.org/torvalds/c/a2a7d5701052) | [kernel] | bpf: write back the verifier log buffer as it gets filled |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`1501899a898d`](https://git.kernel.org/torvalds/c/1501899a898d) (loose) | [kernel] | fix device-dax pud write-faults triggered by get_user_pages() |  | generic code, tag [kernel] | 3.10.0-795 |
| CANDIDATE | 4.15 | [`fbe0e839d1e2`](https://git.kernel.org/torvalds/c/fbe0e839d1e2) | [kernel] | futex: Prevent overflow by strengthen input validation | CVE-2018-6927 | generic code, tag [kernel] | 3.10.0-859 |
| CANDIDATE | 4.15 | [`0ff8e79ca7c8`](https://git.kernel.org/torvalds/c/0ff8e79ca7c8) | [kernel] | ib/mlx5: Add 128B CQE compression and padding HW bits |  | generic code, tag [kernel] | 3.10.0-889 |
| CANDIDATE | 4.15 | [`b0e9df6da258`](https://git.kernel.org/torvalds/c/b0e9df6da258) | [kernel] | ib/mlx5: Exposing modify CQ callback to uverbs layer |  | generic code, tag [kernel] | 3.10.0-889 |
| CANDIDATE | 4.15 | [`71a0ff65a21b`](https://git.kernel.org/torvalds/c/71a0ff65a21b) | [kernel] | ib/mlx5: Fix congestion counters in LAG mode |  | generic code, tag [kernel] | 3.10.0-889 |
| CANDIDATE | 4.15 | [`4d350f1f89ee`](https://git.kernel.org/torvalds/c/4d350f1f89ee) | [kernel] | ib/mlx5: Update tunnel offloads bits |  | generic code, tag [kernel] | 3.10.0-889 |
| CANDIDATE | 4.15 | [`c2bc66082e10`](https://git.kernel.org/torvalds/c/c2bc66082e10) | [kernel] | locking/barriers: Add implicit smp_read_barrier_depends() to READ_ONCE() |  | generic code, tag [kernel] | 3.10.0-939 |
| CANDIDATE | 4.15 | [`11752adb68a3`](https://git.kernel.org/torvalds/c/11752adb68a3) | [kernel] | locking/pvqspinlock: Implement hybrid PV queued/unfair locks |  | generic code, tag [kernel] | 3.10.0-812 |
| CANDIDATE | 4.15 | [`bdcf0a423ea1`](https://git.kernel.org/torvalds/c/bdcf0a423ea1) (loose) | [kernel] | make groups_sort calling a responsibility group_info allocators |  | generic code, tag [kernel] | 3.10.0-848 |
| CANDIDATE | 4.15 | [`541676078b52`](https://git.kernel.org/torvalds/c/541676078b52) | [kernel] | membarrier: disable preemption when calling smp_call_function_many() |  | generic code, tag [kernel] | 3.10.0-879 |
| CANDIDATE | 4.15 | [`5d62c183f9e9`](https://git.kernel.org/torvalds/c/5d62c183f9e9) | [kernel] | nohz: Prevent a timer interrupt storm in tick_nohz_stop_sched_tick() |  | generic code, tag [kernel] | 3.10.0-1025 |
| CANDIDATE | 4.15 | [`ac26963a1175`](https://git.kernel.org/torvalds/c/ac26963a1175) | [kernel] | percpu: Introduce DEFINE_PER_CPU_DECRYPTED |  | generic code, tag [kernel] | 3.10.0-944 |
| CANDIDATE | 4.15 | [`7d9285e82db5`](https://git.kernel.org/torvalds/c/7d9285e82db5) | [kernel] | perf/bpf: extend the perf_event_read_local() interface, a.k.a. "bpf: perf event change needed for subsequent bpf helpers" |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.15 | [`bc1d202023eb`](https://git.kernel.org/torvalds/c/bc1d202023eb) | [kernel] | perf/core: Export AUX buffer helpers to modules |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.15 | [`a9cd8194e1e6`](https://git.kernel.org/torvalds/c/a9cd8194e1e6) | [kernel] | perf/core: Fix __perf_read_group_add() locking |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.15 | [`0c7296cad651`](https://git.kernel.org/torvalds/c/0c7296cad651) | [kernel] | perf/core: Fix ctx::mutex deadlock |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.15 | [`0c1cbc18df9e`](https://git.kernel.org/torvalds/c/0c1cbc18df9e) | [kernel] | perf/core: Fix perf_event_read() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.15 | [`ca0dd44cf37b`](https://git.kernel.org/torvalds/c/ca0dd44cf37b) | [kernel] | perf/core: Fix perf_event_read_value() locking |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.15 | [`3c5c8711dcb3`](https://git.kernel.org/torvalds/c/3c5c8711dcb3) | [kernel] | perf/core: Make sure to update ctx time before using it |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.15 | [`7f0ec32526d2`](https://git.kernel.org/torvalds/c/7f0ec32526d2) | [kernel] | perf/core: Remove wrong barrier |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.15 | [`0d3d73aac2ff`](https://git.kernel.org/torvalds/c/0d3d73aac2ff) | [kernel] | perf/core: Rewrite event timekeeping |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.15 | [`0ee098c97a6e`](https://git.kernel.org/torvalds/c/0ee098c97a6e) | [kernel] | perf/core: Update ctx time before detaching events |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.15 | [`cef31d9af908`](https://git.kernel.org/torvalds/c/cef31d9af908) | [kernel] | posix-timer: Properly check sigevent->sigev_notify | CVE-2017-18344 | generic code, tag [kernel] | 3.10.0-950 |
| CANDIDATE | 4.15 | [`4ac2aed837cb`](https://git.kernel.org/torvalds/c/4ac2aed837cb) | [kernel] | resource: Consolidate resource walking code |  | generic code, tag [kernel] | 3.10.0-944 |
| CANDIDATE | 4.15 | [`1d2e733b13b4`](https://git.kernel.org/torvalds/c/1d2e733b13b4) | [kernel] | resource: Provide resource struct in resource walk callback |  | generic code, tag [kernel] | 3.10.0-944 |
| CANDIDATE | 4.15 | [`051f3ca02e46`](https://git.kernel.org/torvalds/c/051f3ca02e46) | [kernel] | sched/topology: Introduce NUMA identity node sched domain |  | generic code, tag [kernel] | 3.10.0-1050 |
| CANDIDATE | 4.15 | [`051f3ca02e46`](https://git.kernel.org/torvalds/c/051f3ca02e46) | [kernel] | sched/topology: Introduce NUMA identity node sched domain |  | generic code, tag [kernel] | 3.10.0-923 |
| CANDIDATE | 4.15 | [`24f2aaf952ee`](https://git.kernel.org/torvalds/c/24f2aaf952ee) | [kernel] | tracing: Fix crash when it fails to alloc ring buffer | CVE-2017-18595 | CONFIG_FTRACE=y in A37 | 3.10.0-1127.3 |
| CANDIDATE | 4.15 | [`4397f04575c4`](https://git.kernel.org/torvalds/c/4397f04575c4) | [kernel] | tracing: Fix possible double free on failure of allocating trace buffer | CVE-2017-18595 | CONFIG_FTRACE=y in A37 | 3.10.0-1127.3 |
| CANDIDATE | 4.16 | [`00b0c9b82663`](https://git.kernel.org/torvalds/c/00b0c9b82663) | [kernel] | Add primitives for manipulating bitfields both in host- and fixed-endian |  | generic code, tag [kernel] | 3.10.0-1054 |
| CANDIDATE | 4.16 | [`f3804203306e`](https://git.kernel.org/torvalds/c/f3804203306e) | [kernel] | array_index_nospec: Sanitize speculative array de-references | CVE-2018-3693 | generic code, tag [kernel] | 3.10.0-932 |
| CANDIDATE | 4.16 | [`901334159419`](https://git.kernel.org/torvalds/c/901334159419) | [kernel] | bpf, verifier: detect misconfigured mem, size argument pair |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | 4.16 | [`f371b304f12e`](https://git.kernel.org/torvalds/c/f371b304f12e) | [kernel] | bpf/tracing: allow user space to query prog array on the same tp |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.16 | [`f4e2298e63d2`](https://git.kernel.org/torvalds/c/f4e2298e63d2) | [kernel] | bpf/tracing: fix kernel/events/core.c compilation error |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.16 | [`bd475643d74e`](https://git.kernel.org/torvalds/c/bd475643d74e) | [kernel] | bpf: add helper for copying attrs to struct bpf_map |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`1110f3a9bcf3`](https://git.kernel.org/torvalds/c/1110f3a9bcf3) | [kernel] | bpf: add map_alloc_check callback |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`fcfb126defda`](https://git.kernel.org/torvalds/c/fcfb126defda) | [kernel] | bpf: add new jited info fields in bpf_dev_offload and bpf_prog_info |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.16 | [`32fff239de37`](https://git.kernel.org/torvalds/c/32fff239de37) | [kernel] | bpf: add schedule points in percpu arrays management |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.16 | [`1ea47e01ad6e`](https://git.kernel.org/torvalds/c/1ea47e01ad6e) | [kernel] | bpf: add support for bpf_call to interpreter |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`4bd95f4b99e9`](https://git.kernel.org/torvalds/c/4bd95f4b99e9) | [kernel] | bpf: add upper complexity limit to verifier log |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`7105e828c087`](https://git.kernel.org/torvalds/c/7105e828c087) | [kernel] | bpf: allow for correlation of maps and helpers in dump |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`ca36960211eb`](https://git.kernel.org/torvalds/c/ca36960211eb) | [kernel] | bpf: allow xadd only on aligned memory |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`ad46061fca87`](https://git.kernel.org/torvalds/c/ad46061fca87) | [kernel] | bpf: arraymap: move checks out of alloc function |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`32852649ba3f`](https://git.kernel.org/torvalds/c/32852649ba3f) | [kernel] | bpf: arraymap: use bpf_map_init_from_attr() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`914cb781ee1a`](https://git.kernel.org/torvalds/c/914cb781ee1a) | [kernel] | bpf: cleanup register_is_null() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`19ceb4178d31`](https://git.kernel.org/torvalds/c/19ceb4178d31) | [kernel] | bpf: don't mark FP reg as uninit |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`430e68d10baf`](https://git.kernel.org/torvalds/c/430e68d10baf) | [kernel] | bpf: export function to write into verifier log buffer |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`9c481b908b01`](https://git.kernel.org/torvalds/c/9c481b908b01) | [kernel] | bpf: fix bpf_prog_array_copy_to_user warning from perf event prog query |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.16 | [`0911287ce32b`](https://git.kernel.org/torvalds/c/0911287ce32b) | [kernel] | bpf: fix bpf_prog_array_copy_to_user() issues |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.16 | [`2310035fa03f`](https://git.kernel.org/torvalds/c/2310035fa03f) | [kernel] | bpf: fix incorrect kmalloc usage in lpm_trie MAP_GET_NEXT_KEY rcu region |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`4f74d80971bc`](https://git.kernel.org/torvalds/c/4f74d80971bc) | [kernel] | bpf: fix kallsyms handling for subprogs |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.16 | [`6dd1ec6c7a2c`](https://git.kernel.org/torvalds/c/6dd1ec6c7a2c) | [kernel] | bpf: fix kernel page fault in lpm map trie_get_next_key |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`aada9ce644e5`](https://git.kernel.org/torvalds/c/aada9ce644e5) | [kernel] | bpf: fix max call depth check |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`70a87ffea8ac`](https://git.kernel.org/torvalds/c/70a87ffea8ac) | [kernel] | bpf: fix maximum stack depth tracking logic |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`9a3efb6b661f`](https://git.kernel.org/torvalds/c/9a3efb6b661f) | [kernel] | bpf: fix memory leak in lpm_trie map_free callback function |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`9c2d63b843a5`](https://git.kernel.org/torvalds/c/9c2d63b843a5) | [kernel] | bpf: fix mlock precharge on arraymaps |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.16 | [`60b58afc96c9`](https://git.kernel.org/torvalds/c/60b58afc96c9) | [kernel] | bpf: fix net.core.bpf_jit_enable race |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`6c5f61023c5b`](https://git.kernel.org/torvalds/c/6c5f61023c5b) | [kernel] | bpf: fix rcu lockdep warning for lpm_trie map_free callback |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`12a3cc8424fe`](https://git.kernel.org/torvalds/c/12a3cc8424fe) | [kernel] | bpf: fix stack state printing in verifier log |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`fd05e57bb35a`](https://git.kernel.org/torvalds/c/fd05e57bb35a) | [kernel] | bpf: fix stacksafe exploration when comparing states |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`f6b1b3bf0d5f`](https://git.kernel.org/torvalds/c/f6b1b3bf0d5f) | [kernel] | bpf: fix subprog verifier bypass by div/mod by 0 exception |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`5896351ea936`](https://git.kernel.org/torvalds/c/5896351ea936) | [kernel] | bpf: fix verifier GPF in kmalloc failure path |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`daffc5a2e6f4`](https://git.kernel.org/torvalds/c/daffc5a2e6f4) | [kernel] | bpf: hashtab: move attribute validation before allocation |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`9328e0d1bc09`](https://git.kernel.org/torvalds/c/9328e0d1bc09) | [kernel] | bpf: hashtab: move checks out of alloc function |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`b471f2f1de8b`](https://git.kernel.org/torvalds/c/b471f2f1de8b) | [kernel] | bpf: implement MAP_GET_NEXT_KEY command for LPM_TRIE map |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`16f07c551e3a`](https://git.kernel.org/torvalds/c/16f07c551e3a) | [kernel] | bpf: implement syscall command BPF_MAP_GET_NEXT_KEY for stacktrace map |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.16 | [`2a5418a13fcf`](https://git.kernel.org/torvalds/c/2a5418a13fcf) | [kernel] | bpf: improve dead code sanitizing |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`3bf15921c58d`](https://git.kernel.org/torvalds/c/3bf15921c58d) | [kernel] | bpf: improve JEQ/JNE path walking |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`2f18f62ee164`](https://git.kernel.org/torvalds/c/2f18f62ee164) | [kernel] | bpf: improve verifier liveness marks |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`cc8b0b92a169`](https://git.kernel.org/torvalds/c/cc8b0b92a169) | [kernel] | bpf: introduce function calls (function boundaries) |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`f4d7e40a5b71`](https://git.kernel.org/torvalds/c/f4d7e40a5b71) | [kernel] | bpf: introduce function calls (verification) |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`fa2d41adb953`](https://git.kernel.org/torvalds/c/fa2d41adb953) | [kernel] | bpf: make function skip_callee static and return NULL rather than 0 |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`5e581dad4fec`](https://git.kernel.org/torvalds/c/5e581dad4fec) | [kernel] | bpf: make unknown opcode handling more robust |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`4e92024a48ec`](https://git.kernel.org/torvalds/c/4e92024a48ec) | [kernel] | bpf: print liveness info to verifier log |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`cc2b14d51053`](https://git.kernel.org/torvalds/c/cc2b14d51053) | [kernel] | bpf: teach verifier to recognize zero initialized stack |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`9c147b56fc71`](https://git.kernel.org/torvalds/c/9c147b56fc71) | [kernel] | bpf: Use the IS_FD_ARRAY() macro in map_update_elem() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`1c2a088a6626`](https://git.kernel.org/torvalds/c/1c2a088a6626) | [kernel] | bpf: x64: add JIT support for multi-function programs |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.16 | [`a4a0683fd5e6`](https://git.kernel.org/torvalds/c/a4a0683fd5e6) | [kernel] | bpf_obj_do_pin(): switch to vfs_mkobj(), quit abusing ->mknod() |  | generic code, tag [kernel] | 3.10.0-968 |
| CANDIDATE | 4.16 | [`c505cbd45f6e`](https://git.kernel.org/torvalds/c/c505cbd45f6e) | [kernel] | device property: Define type of PROPERTY_ENRTY_*() macros |  | generic code, tag [kernel] | 3.10.0-930 |
| CANDIDATE | 4.16 | [`c2b37f76485f`](https://git.kernel.org/torvalds/c/c2b37f76485f) | [kernel] | ib/mlx5: Fix integer overflows in mlx5_ib_create_srq |  | generic code, tag [kernel] | 3.10.0-889 |
| CANDIDATE | 4.16 | [`7fd8aefb7ce2`](https://git.kernel.org/torvalds/c/7fd8aefb7ce2) | [kernel] | ib/mlx5: Make netdev notifications multiport capable |  | generic code, tag [kernel] | 3.10.0-889 |
| CANDIDATE | 4.16 | [`578ae447e7e5`](https://git.kernel.org/torvalds/c/578ae447e7e5) | [kernel] | jump_label: Disable jump labels in __exit code |  | generic code, tag [kernel] | 3.10.0-886 |
| CANDIDATE | 4.16 | [`333522447063`](https://git.kernel.org/torvalds/c/333522447063) | [kernel] | jump_label: Explicitly disable jump labels in __init code |  | generic code, tag [kernel] | 3.10.0-886 |
| CANDIDATE | 4.16 | [`e61938a921a4`](https://git.kernel.org/torvalds/c/e61938a921a4) | [kernel] | locking: Introduce sync_core_before_usermode() |  | generic code, tag [kernel] | 3.10.0-879 |
| CANDIDATE | 4.16 | [`306e060435d7`](https://git.kernel.org/torvalds/c/306e060435d7) | [kernel] | membarrier: document scheduler barrier requirements |  | generic code, tag [kernel] | 3.10.0-879 |
| CANDIDATE | 4.16 | [`70216e18e519`](https://git.kernel.org/torvalds/c/70216e18e519) | [kernel] | membarrier: provide core serializing command, *_SYNC_CORE |  | generic code, tag [kernel] | 3.10.0-879 |
| CANDIDATE | 4.16 | [`c5f58bd58f43`](https://git.kernel.org/torvalds/c/c5f58bd58f43) | [kernel] | membarrier: provide GLOBAL_EXPEDITED command |  | generic code, tag [kernel] | 3.10.0-879 |
| CANDIDATE | 4.16 | [`77dd66a3c67c`](https://git.kernel.org/torvalds/c/77dd66a3c67c) | [kernel] | mm: Fix devm_memremap_pages() collision handling |  | generic code, tag [kernel] | 3.10.0-928 |
| CANDIDATE | 4.16 | [`0822acb86cf3`](https://git.kernel.org/torvalds/c/0822acb86cf3) | [kernel] | mm: move get_dev_pagemap out of line |  | generic code, tag [kernel] | 3.10.0-928 |
| CANDIDATE | 4.16 | [`832d7aa05110`](https://git.kernel.org/torvalds/c/832d7aa05110) | [kernel] | mm: optimize dev_pagemap reference counting around get_dev_pagemap |  | generic code, tag [kernel] | 3.10.0-928 |
| CANDIDATE | 4.16 | [`8e6c848eceaa`](https://git.kernel.org/torvalds/c/8e6c848eceaa) | [kernel] | new primitive: vfs_mkobj() |  | generic code, tag [kernel] | 3.10.0-968 |
| CANDIDATE | 4.16 | [`b98c6a160a05`](https://git.kernel.org/torvalds/c/b98c6a160a05) | [kernel] | nospec: Allow index argument to have const-qualified type | CVE-2018-3693 | generic code, tag [kernel] | 3.10.0-932 |
| CANDIDATE | 4.16 | [`eb6174f6d1be`](https://git.kernel.org/torvalds/c/eb6174f6d1be) | [kernel] | nospec: Include <asm/barrier.h> dependency | CVE-2018-3693 | generic code, tag [kernel] | 3.10.0-932 |
| CANDIDATE | 4.16 | [`1d91c1d2c80c`](https://git.kernel.org/torvalds/c/1d91c1d2c80c) | [kernel] | nospec: Kill array_index_nospec_mask_check() | CVE-2018-3693 | generic code, tag [kernel] | 3.10.0-932 |
| CANDIDATE | 4.16 | [`8fa80c503b48`](https://git.kernel.org/torvalds/c/8fa80c503b48) | [kernel] | nospec: Move array_index_nospec() parameter checking into separate macro | CVE-2018-3693 | generic code, tag [kernel] | 3.10.0-932 |
| CANDIDATE | 4.16 | [`b393e8b33efd`](https://git.kernel.org/torvalds/c/b393e8b33efd) | [kernel] | percpu: READ_ONCE() now implies smp_read_barrier_depends() |  | generic code, tag [kernel] | 3.10.0-939 |
| CANDIDATE | 4.16 | [`b3a5d1119944`](https://git.kernel.org/torvalds/c/b3a5d1119944) | [kernel] | percpu_ref: Update doc to dissuade users from depending on internal RCU grace periods |  | generic code, tag [kernel] | 3.10.0-939 |
| CANDIDATE | 4.16 | [`bd903afeb504`](https://git.kernel.org/torvalds/c/bd903afeb504) | [kernel] | perf/core: Fix ctx_event_type in ctx_resched() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-988 |
| CANDIDATE | 4.16 | [`f67b15037a7a`](https://git.kernel.org/torvalds/c/f67b15037a7a) | [kernel] | perf/hwbp: Simplify the perf-hwbp code, fix documentation | CVE-2018-1000199 | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-886 |
| CANDIDATE | 4.16 | [`313ccb961594`](https://git.kernel.org/torvalds/c/313ccb961594) | [kernel] | perf: Allocate context task_ctx_data for child event |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-988 |
| CANDIDATE | 4.16 | [`82975c46da82`](https://git.kernel.org/torvalds/c/82975c46da82) | [kernel] | perf: Export perf_event_update_userpage |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-988 |
| CANDIDATE | 4.16 | [`8cf7e0e22414`](https://git.kernel.org/torvalds/c/8cf7e0e22414) | [kernel] | perf: Make perf_callchain function static |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-1064 |
| CANDIDATE | 4.16 | [`99e818cc8888`](https://git.kernel.org/torvalds/c/99e818cc8888) | [kernel] | perf: Return empty callchain instead of NULL |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-1064 |
| CANDIDATE | 4.16 | [`ac8322d806d1`](https://git.kernel.org/torvalds/c/ac8322d806d1) | [kernel] | phy: add helpers for setting/clearing bits in PHY registers |  | generic code, tag [kernel] | 3.10.0-1024 |
| CANDIDATE | 4.16 | [`788f9933db61`](https://git.kernel.org/torvalds/c/788f9933db61) (loose) | [kernel] | phy: add unlocked accessors |  | generic code, tag [kernel] | 3.10.0-1024 |
| CANDIDATE | 4.16 | [`00fde79532d6`](https://git.kernel.org/torvalds/c/00fde79532d6) (loose) | [kernel] | phy: core: use genphy version of callbacks read_status and config_aneg per default |  | generic code, tag [kernel] | 3.10.0-976 |
| CANDIDATE | 4.16 | [`156baec39732`](https://git.kernel.org/torvalds/c/156baec39732) | [kernel] | rcu: Export init_rcu_head() and destroy_rcu_head() to GPL modules |  | generic code, tag [kernel] | 3.10.0-1020 |
| CANDIDATE | 4.16 | [`e9ca26709667`](https://git.kernel.org/torvalds/c/e9ca26709667) | [kernel] | sched/debug: Adjust newlines for better alignment |  | generic code, tag [kernel] | 3.10.0-892 |
| CANDIDATE | 4.16 | [`a8c024cd9b96`](https://git.kernel.org/torvalds/c/a8c024cd9b96) | [kernel] | sched/debug: Fix per-task line continuation for console output |  | generic code, tag [kernel] | 3.10.0-892 |
| CANDIDATE | 4.16 | [`08a77676f9c5`](https://git.kernel.org/torvalds/c/08a77676f9c5) | [kernel] | string: drop __must_check from strscpy() and restore strscpy() usages in cgroup |  | generic code, tag [kernel] | 3.10.0-1020 |
| CANDIDATE | 4.16 | [`f005afede992`](https://git.kernel.org/torvalds/c/f005afede992) | [kernel] | trace/bpf: remove helper bpf_perf_prog_read_value from tracepoint type programs |  | CONFIG_FTRACE=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.16 | [`2695578b896a`](https://git.kernel.org/torvalds/c/2695578b896a) (loose) | [kernel] | usbnet: fix potential deadlock on 32bit hosts |  | CONFIG_USB_USBNET=y in A37 | 3.10.0-1026 |
| CANDIDATE | 4.16 | [`56c30ba7b348`](https://git.kernel.org/torvalds/c/56c30ba7b348) | [kernel] | vfs, fdtable: Prevent bounds-check bypass via speculative execution | CVE-2018-3693 | generic code, tag [kernel] | 3.10.0-932 |
| CANDIDATE | 4.17 | [`3a38bb98d9ab`](https://git.kernel.org/torvalds/c/3a38bb98d9ab) | [kernel] | bpf/tracing: fix a deadlock in perf_event_detach_bpf_prog |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.17 | [`77d2e05abd45`](https://git.kernel.org/torvalds/c/77d2e05abd45) | [kernel] | bpf: Add bpf_verifier_vlog() and bpf_verifier_log_needed() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.17 | [`5e43f899b03a`](https://git.kernel.org/torvalds/c/5e43f899b03a) | [kernel] | bpf: Check attach type at prog load time |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.17 | [`6d8cb045cde6`](https://git.kernel.org/torvalds/c/6d8cb045cde6) | [kernel] | bpf: comment why dots in filenames under BPF virtual FS are not allowed |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.17 | [`615755a77b24`](https://git.kernel.org/torvalds/c/615755a77b24) | [kernel] | bpf: extend stackmap to save binary_build_id+offset instead of address |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.17 | [`9ef09e35e521`](https://git.kernel.org/torvalds/c/9ef09e35e521) | [kernel] | bpf: fix possible spectre-v1 in find_and_alloc_map() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.17 | [`050fad7c4534`](https://git.kernel.org/torvalds/c/050fad7c4534) | [kernel] | bpf: fix truncated jump targets on heavy expansions |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.17 | [`b76354cdfefb`](https://git.kernel.org/torvalds/c/b76354cdfefb) | [kernel] | bpf: follow idr code convention |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.17 | [`af86ca4e3088`](https://git.kernel.org/torvalds/c/af86ca4e3088) | [kernel] | bpf: Prevent memory disambiguation attack |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.17 | [`c93552c443eb`](https://git.kernel.org/torvalds/c/c93552c443eb) | [kernel] | bpf: properly enforce index mask to prevent out-of-bounds speculation |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.17 | [`abe0884011f1`](https://git.kernel.org/torvalds/c/abe0884011f1) | [kernel] | bpf: Remove struct bpf_verifier_env argument from print_bpf_insn |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.17 | [`544bdebc6fcb`](https://git.kernel.org/torvalds/c/544bdebc6fcb) | [kernel] | bpf: Remove unused callee_saved array |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.17 | [`b9193c1b61dd`](https://git.kernel.org/torvalds/c/b9193c1b61dd) | [kernel] | bpf: Rename bpf_verifer_log |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.17 | [`d0f1a451e33d`](https://git.kernel.org/torvalds/c/d0f1a451e33d) | [kernel] | bpf: use array_index_nospec in find_prog_type |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.17 | [`72f7cc09b143`](https://git.kernel.org/torvalds/c/72f7cc09b143) | [kernel] | ib/mlx5: Expose more priorities for bypass namespace |  | generic code, tag [kernel] | 3.10.0-1013 |
| CANDIDATE | 4.17 | [`c8d75a980fab`](https://git.kernel.org/torvalds/c/c8d75a980fab) | [kernel] | ib/mlx5: Respect new UMR capabilities |  | generic code, tag [kernel] | 3.10.0-889 |
| CANDIDATE | 4.17 | [`3a92dd331f90`](https://git.kernel.org/torvalds/c/3a92dd331f90) | [kernel] | input: libps2 - use BIT() for bitmask constants |  | CONFIG_INPUT=y in A37 | 3.10.0-884 |
| CANDIDATE | 4.17 | [`87fe2d543f81`](https://git.kernel.org/torvalds/c/87fe2d543f81) | [kernel] | io: change inX() to have their own IO barrier overrides |  | generic code, tag [kernel] | 3.10.0-1008 |
| CANDIDATE | 4.17 | [`a7851aa54c0c`](https://git.kernel.org/torvalds/c/a7851aa54c0c) | [kernel] | io: change outX() to have their own IO barrier overrides |  | generic code, tag [kernel] | 3.10.0-1008 |
| CANDIDATE | 4.17 | [`8875c5543761`](https://git.kernel.org/torvalds/c/8875c5543761) | [kernel] | io: change readX_relaxed() to remove barriers |  | generic code, tag [kernel] | 3.10.0-1008 |
| CANDIDATE | 4.17 | [`a71e7c44ffb7`](https://git.kernel.org/torvalds/c/a71e7c44ffb7) | [kernel] | io: change writeX_relaxed() to remove barriers |  | generic code, tag [kernel] | 3.10.0-1008 |
| CANDIDATE | 4.17 | [`64e2c6738b4d`](https://git.kernel.org/torvalds/c/64e2c6738b4d) | [kernel] | io: define several IO & PIO barrier types for the asm-generic version |  | generic code, tag [kernel] | 3.10.0-1008 |
| CANDIDATE | 4.17 | [`032d59e1cde9`](https://git.kernel.org/torvalds/c/032d59e1cde9) | [kernel] | io: define stronger ordering for the default readX() implementation |  | generic code, tag [kernel] | 3.10.0-1008 |
| CANDIDATE | 4.17 | [`755bd04aaf4b`](https://git.kernel.org/torvalds/c/755bd04aaf4b) | [kernel] | io: define stronger ordering for the default writeX() implementation |  | generic code, tag [kernel] | 3.10.0-1008 |
| CANDIDATE | 4.17 | [`723fbf563a6a`](https://git.kernel.org/torvalds/c/723fbf563a6a) | [kernel] | lib/scatterlist: Add SG_CHAIN and SG_END macros for LSB encodings |  | generic code, tag [kernel] | 3.10.0-1020 |
| CANDIDATE | 4.17 | [`7bbf1373e228`](https://git.kernel.org/torvalds/c/7bbf1373e228) | [kernel] | nospec: Allow getting/setting on non-current task | CVE-2018-3639 | generic code, tag [kernel] | 3.10.0-905 |
| CANDIDATE | 4.17 | [`8e1a2031e4b5`](https://git.kernel.org/torvalds/c/8e1a2031e4b5) | [kernel] | perf/cor: Use RB trees for pinned/flexible groups |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.17 | [`161c85fab787`](https://git.kernel.org/torvalds/c/161c85fab787) | [kernel] | perf/core: Cleanup the rb-tree code |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.17 | [`1cac7b1ae357`](https://git.kernel.org/torvalds/c/1cac7b1ae357) | [kernel] | perf/core: Fix event schedule order |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.17 | [`5da13ab8b0dc`](https://git.kernel.org/torvalds/c/5da13ab8b0dc) | [kernel] | perf/core: Fix perf_kprobe_init() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.17 | [`9e5b127d6f33`](https://git.kernel.org/torvalds/c/9e5b127d6f33) | [kernel] | perf/core: Fix perf_output_read_group() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.17 | [`0eadcc7a7bc0`](https://git.kernel.org/torvalds/c/0eadcc7a7bc0) | [kernel] | perf/core: Fix perf_uprobe_init() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.17 | [`8703a7cfe148`](https://git.kernel.org/torvalds/c/8703a7cfe148) | [kernel] | perf/core: Fix tree based event rotation |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.17 | [`e12f03d7031a`](https://git.kernel.org/torvalds/c/e12f03d7031a) | [kernel] | perf/core: Implement the 'perf_kprobe' PMU |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.17 | [`33ea4b24277b`](https://git.kernel.org/torvalds/c/33ea4b24277b) | [kernel] | perf/core: Implement the 'perf_uprobe' PMU |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.17 | [`32e6e967fb36`](https://git.kernel.org/torvalds/c/32e6e967fb36) | [kernel] | perf/core: Need CAP_SYS_ADMIN to create k/uprobe with perf_event_open() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-1005 |
| CANDIDATE | 4.17 | [`6668128a9e25`](https://git.kernel.org/torvalds/c/6668128a9e25) | [kernel] | perf/core: Optimize ctx_sched_out() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.17 | [`8d5bce0c37fa`](https://git.kernel.org/torvalds/c/8d5bce0c37fa) | [kernel] | perf/core: Optimize perf_rotate_context() event scheduling |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.17 | [`65074d43fc77`](https://git.kernel.org/torvalds/c/65074d43fc77) | [kernel] | perf/core: prepare perf_event.h for new types: 'perf_kprobe' and 'perf_uprobe' |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.17 | [`6e6804d2fa0e`](https://git.kernel.org/torvalds/c/6e6804d2fa0e) | [kernel] | perf/core: Simpify perf_event_groups_for_each() |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | 4.17 | [`78b562fbfa2c`](https://git.kernel.org/torvalds/c/78b562fbfa2c) | [kernel] | perf: Return proper values for user stack errors |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-1005 |
| CANDIDATE | 4.17 | [`b617cfc85816`](https://git.kernel.org/torvalds/c/b617cfc85816) | [kernel] | prctl: Add speculation control prctls | CVE-2018-3639 | generic code, tag [kernel] | 3.10.0-905 |
| CANDIDATE | 4.17 | [`097114aa6eb2`](https://git.kernel.org/torvalds/c/097114aa6eb2) | [kernel] | print kdump kernel loaded status in stack dump |  | generic code, tag [kernel] | 3.10.0-846 |
| CANDIDATE | 4.17 | [`2075b16e32c2`](https://git.kernel.org/torvalds/c/2075b16e32c2) | [kernel] | rbtree: include rcu.h |  | generic code, tag [kernel] | 3.10.0-968 |
| CANDIDATE | 4.17 | [`05f0fe6b74db`](https://git.kernel.org/torvalds/c/05f0fe6b74db) | [kernel] | rcu, workqueue: Implement rcu_work |  | generic code, tag [kernel] | 3.10.0-1002 |
| CANDIDATE | 4.17 | [`b3fc5c9bb373`](https://git.kernel.org/torvalds/c/b3fc5c9bb373) | [kernel] | sched/wait: Improve __var_waitqueue() code generation |  | generic code, tag [kernel] | 3.10.0-928 |
| CANDIDATE | 4.17 | [`6b2bb7265f0b`](https://git.kernel.org/torvalds/c/6b2bb7265f0b) | [kernel] | sched/wait: Introduce wait_var_event() |  | generic code, tag [kernel] | 3.10.0-928 |
| CANDIDATE | 4.17 | [`5c3070890d06`](https://git.kernel.org/torvalds/c/5c3070890d06) | [kernel] | seccomp: Enable speculation flaw mitigations | CVE-2018-3639 | CONFIG_SECCOMP=y in A37 | 3.10.0-905 |
| CANDIDATE | 4.17 | [`0b26351b910f`](https://git.kernel.org/torvalds/c/0b26351b910f) | [kernel] | stop_machine, sched: Fix migrate_swap() vs. active_balance() deadlock |  | generic code, tag [kernel] | 3.10.0-974 |
| CANDIDATE | 4.17 | [`1f71addd34f4`](https://git.kernel.org/torvalds/c/1f71addd34f4) | [kernel] | tick/sched: Do not mess with an enqueued hrtimer |  | generic code, tag [kernel] | 3.10.0-931 |
| CANDIDATE | 4.17 | [`363c5a570d4a`](https://git.kernel.org/torvalds/c/363c5a570d4a) | [kernel] | {net,ib}/mlx5: Add ipsec helper |  | generic code, tag [kernel] | 3.10.0-1013 |
| CANDIDATE | 4.18 | [`b305f7ed0f4f`](https://git.kernel.org/torvalds/c/b305f7ed0f4f) | [kernel] | audit: fix potential null dereference 'context->module.name' |  | CONFIG_AUDIT=y in A37 | 3.10.0-1152 |
| CANDIDATE | 4.18 | [`9cbe1f5a32dc`](https://git.kernel.org/torvalds/c/9cbe1f5a32dc) | [kernel] | bpf/verifier: improve register value range tracking with ARSH |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`849fa50662fb`](https://git.kernel.org/torvalds/c/849fa50662fb) | [kernel] | bpf/verifier: refine retval R0 state for bpf_get_stack helper |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`be2d04d11fd3`](https://git.kernel.org/torvalds/c/be2d04d11fd3) | [kernel] | bpf: add __printf verification to bpf_verifier_vlog |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`c195651e565a`](https://git.kernel.org/torvalds/c/c195651e565a) | [kernel] | bpf: add bpf_get_stack helper |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`4cb3d99c84cc`](https://git.kernel.org/torvalds/c/4cb3d99c84cc) | [kernel] | bpf: add faked "ending" subprog |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`b85fab0e67b1`](https://git.kernel.org/torvalds/c/b85fab0e67b1) | [kernel] | bpf: Add gpl_compatible flag to struct bpf_prog_info |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.18 | [`d71962f3e627`](https://git.kernel.org/torvalds/c/d71962f3e627) | [kernel] | bpf: allow map helpers access to map values directly |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-939 |
| CANDIDATE | 4.18 | [`dc3b8ae9d271`](https://git.kernel.org/torvalds/c/dc3b8ae9d271) | [kernel] | bpf: avoid -Wmaybe-uninitialized warning |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`09772d92cd5a`](https://git.kernel.org/torvalds/c/09772d92cd5a) | [kernel] | bpf: avoid retpoline for lookup/update/delete calls on maps |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`170a7e3ea070`](https://git.kernel.org/torvalds/c/170a7e3ea070) | [kernel] | bpf: bpf_prog_array_copy() should return -ENOENT if exclude_prog not found |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`9c8105bd4402`](https://git.kernel.org/torvalds/c/9c8105bd4402) | [kernel] | bpf: centre subprog information fields |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`5f4126327494`](https://git.kernel.org/torvalds/c/5f4126327494) | [kernel] | bpf: change prototype for stack_map_get_build_id_offset |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`c7a897843224`](https://git.kernel.org/torvalds/c/c7a897843224) | [kernel] | bpf: don't leave partial mangled prog in jit_subprogs error path |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`bae77c5eb5b2`](https://git.kernel.org/torvalds/c/bae77c5eb5b2) | [kernel] | bpf: enable stackmap with build_id in nmi context |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`6cb5fb3891db`](https://git.kernel.org/torvalds/c/6cb5fb3891db) | [kernel] | bpf: export bpf_event_output() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`bc23105ca0ab`](https://git.kernel.org/torvalds/c/bc23105ca0ab) | [kernel] | bpf: fix context access in tracing progs on 32 bit archs |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`4d56a76ead2f`](https://git.kernel.org/torvalds/c/4d56a76ead2f) | [kernel] | bpf: fix multi-function JITed dump obtained via syscall |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`7d1982b4e335`](https://git.kernel.org/torvalds/c/7d1982b4e335) | [kernel] | bpf: fix panic in prog load calls cleanup |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`ab7f5bf0928b`](https://git.kernel.org/torvalds/c/ab7f5bf0928b) | [kernel] | bpf: fix references to free_bpf_prog_info() in comments |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`3fe2867cdf08`](https://git.kernel.org/torvalds/c/3fe2867cdf08) | [kernel] | bpf: fixup error message from gpl helpers on license mismatch |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`815581c11cc2`](https://git.kernel.org/torvalds/c/815581c11cc2) | [kernel] | bpf: get JITed image lengths of functions via syscall |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`dbecd7388476`](https://git.kernel.org/torvalds/c/dbecd7388476) | [kernel] | bpf: get kernel symbol addresses via syscall |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`ed2b82c03dc1`](https://git.kernel.org/torvalds/c/ed2b82c03dc1) | [kernel] | bpf: hash map: decrement counter on error |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`afbe1a5b79cd`](https://git.kernel.org/torvalds/c/afbe1a5b79cd) | [kernel] | bpf: remove never-hit branches in verifier adjust_scalar_min_max_vals |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`4d220ed0f814`](https://git.kernel.org/torvalds/c/4d220ed0f814) | [kernel] | bpf: remove tracepoints from bpf core |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.18 | [`4316b40914ec`](https://git.kernel.org/torvalds/c/4316b40914ec) | [kernel] | bpf: show prog and map id in fdinfo |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`2162fed49fa8`](https://git.kernel.org/torvalds/c/2162fed49fa8) | [kernel] | bpf: support 64-bit offsets for bpf function calls |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`f910cefa32b6`](https://git.kernel.org/torvalds/c/f910cefa32b6) | [kernel] | bpf: unify main prog and subprog |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`03eeafdd9ab0`](https://git.kernel.org/torvalds/c/03eeafdd9ab0) | [kernel] | locking/rwsem: Fix up_read_non_owner() warning with DEBUG_RWSEMS |  | generic code, tag [kernel] | 3.10.0-969 |
| CANDIDATE | 4.18 | [`15d36fecd0bd`](https://git.kernel.org/torvalds/c/15d36fecd0bd) | [kernel] | mm: disallow mappings that conflict for devm_memremap_pages() |  | generic code, tag [kernel] | 3.10.0-942 |
| CANDIDATE | 4.18 | [`1c542f38ab8d`](https://git.kernel.org/torvalds/c/1c542f38ab8d) | [kernel] | mm: Introduce kvcalloc() |  | generic code, tag [kernel] | 3.10.0-1009 |
| CANDIDATE | 4.18 | [`6e292b9be7f4`](https://git.kernel.org/torvalds/c/6e292b9be7f4) | [kernel] | mm: split page_type out from _mapcount |  | generic code, tag [kernel] | 3.10.0-1058 |
| CANDIDATE | 4.18 | [`80d20d35af1e`](https://git.kernel.org/torvalds/c/80d20d35af1e) | [kernel] | nohz: Fix local_timer_softirq_pending() |  | generic code, tag [kernel] | 3.10.0-1025 |
| CANDIDATE | 4.18 | [`0a0e0829f990`](https://git.kernel.org/torvalds/c/0a0e0829f990) | [kernel] | nohz: Fix missing tick reprogram when interrupting an inline softirq |  | generic code, tag [kernel] | 3.10.0-981 |
| CANDIDATE | 4.18 | [`aafd3afe9d2e`](https://git.kernel.org/torvalds/c/aafd3afe9d2e) | [kernel] | nvme.h: add AEN configuration symbols |  | generic code, tag [kernel] | 3.10.0-1007 |
| CANDIDATE | 4.18 | [`b3984e064ec1`](https://git.kernel.org/torvalds/c/b3984e064ec1) | [kernel] | nvme.h: add the changed namespace list log |  | generic code, tag [kernel] | 3.10.0-1007 |
| CANDIDATE | 4.18 | [`f8d959a5b188`](https://git.kernel.org/torvalds/c/f8d959a5b188) | [kernel] | perf/core: add perf_get_event() to return perf_event given a struct file |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.18 | [`a1150c202207`](https://git.kernel.org/torvalds/c/a1150c202207) | [kernel] | perf/core: Fix group scheduling with mixed hw and sw events |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-1010 |
| CANDIDATE | 4.18 | [`933151013564`](https://git.kernel.org/torvalds/c/933151013564) | [kernel] | perf/core: Move inline keyword at the beginning of declaration |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-1010 |
| CANDIDATE | 4.18 | [`57d6a7938a8f`](https://git.kernel.org/torvalds/c/57d6a7938a8f) | [kernel] | perf/core: Move the inline keyword at the beginning of the function declaration |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-1010 |
| CANDIDATE | 4.18 | [`512ac999d275`](https://git.kernel.org/torvalds/c/512ac999d275) | [kernel] | sched/fair: Fix bandwidth timer clock drift condition |  | generic code, tag [kernel] | 3.10.0-972 |
| CANDIDATE | 4.18 | [`2610e8894663`](https://git.kernel.org/torvalds/c/2610e8894663) | [kernel] | stop_machine: Disable preemption after queueing stopper threads |  | generic code, tag [kernel] | 3.10.0-974 |
| CANDIDATE | 4.18 | [`9fb8d5dc4b64`](https://git.kernel.org/torvalds/c/9fb8d5dc4b64) | [kernel] | stop_machine: Disable preemption when waking two stopper threads |  | generic code, tag [kernel] | 3.10.0-974 |
| CANDIDATE | 4.18 | [`0fc8c3581dd4`](https://git.kernel.org/torvalds/c/0fc8c3581dd4) | [kernel] | tracing/kprobe: Release kprobe print_fmt properly |  | CONFIG_FTRACE=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.18 | [`57ea2a34adf4`](https://git.kernel.org/torvalds/c/57ea2a34adf4) | [kernel] | tracing/kprobes: Fix trace_probe flags on enable_trace_kprobe() failure |  | CONFIG_FTRACE=y in A37 | 3.10.0-1007 |
| CANDIDATE | 4.18 | [`2519c1bbe38d`](https://git.kernel.org/torvalds/c/2519c1bbe38d) | [kernel] | tracing: Quiet gcc warning about maybe unused link variable |  | CONFIG_FTRACE=y in A37 | 3.10.0-1007 |
| CANDIDATE | 4.18 | [`a47060cf40c6`](https://git.kernel.org/torvalds/c/a47060cf40c6) | [kernel] | usb: audio-v2: Correct the comment for struct uac_clock_selector_descriptor |  | CONFIG_USB=y in A37 | 3.10.0-1026 |
| CANDIDATE | 4.19 | [`5f936e19cc0e`](https://git.kernel.org/torvalds/c/5f936e19cc0e) | [kernel] | alarmtimer: Prevent overflow for relative nanosleep | CVE-2018-13053 | generic code, tag [kernel] | 3.10.0-1058 |
| CANDIDATE | 4.19 | [`e7d4a95da86e`](https://git.kernel.org/torvalds/c/e7d4a95da86e) | [kernel] | bitfield: fix *_encode_bits() |  | generic code, tag [kernel] | 3.10.0-1054 |
| CANDIDATE | 4.19 | [`dd066823db2a`](https://git.kernel.org/torvalds/c/dd066823db2a) | [kernel] | bpf/verifier: disallow pointer subtraction |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.19 | [`3e6a4b3e0289`](https://git.kernel.org/torvalds/c/3e6a4b3e0289) | [kernel] | bpf/verifier: introduce BPF_PTR_TO_MAP_VALUE |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.19 | [`b799207e1e18`](https://git.kernel.org/torvalds/c/b799207e1e18) | [kernel] | bpf: 32-bit RSH verification must truncate input before the ALU op | CVE-2018-18445 | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-987 |
| CANDIDATE | 4.19 | [`0a4c58f57028`](https://git.kernel.org/torvalds/c/0a4c58f57028) | [kernel] | bpf: add ability to charge bpf maps memory dynamically |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.19 | [`d29ab6e1fa21`](https://git.kernel.org/torvalds/c/d29ab6e1fa21) | [kernel] | bpf: bpf_prog_array_alloc() should return a generic non-rcu pointer |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.19 | [`c0203475765f`](https://git.kernel.org/torvalds/c/c0203475765f) | [kernel] | bpf: use per htab salt for bucket hash |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.19 | [`0cc3cd21657b`](https://git.kernel.org/torvalds/c/0cc3cd21657b) | [kernel] | cpu/hotplug: boot ht siblings at least once | CVE-2018-3620 | generic code, tag [kernel] | 3.10.0-933 |
| CANDIDATE | 4.19 | [`73d5e2b47264`](https://git.kernel.org/torvalds/c/73d5e2b47264) | [kernel] | cpu/hotplug: detect SMT disabled by BIOS | CVE-2018-3620 | generic code, tag [kernel] | 3.10.0-933 |
| CANDIDATE | 4.19 | [`8e1b706b6e81`](https://git.kernel.org/torvalds/c/8e1b706b6e81) | [kernel] | cpu/hotplug: expose smt control init function | CVE-2018-3620 | generic code, tag [kernel] | 3.10.0-933 |
| CANDIDATE | 4.19 | [`bc2d8d262cba`](https://git.kernel.org/torvalds/c/bc2d8d262cba) | [kernel] | cpu/hotplug: Fix SMT supported evaluation |  | generic code, tag [kernel] | 3.10.0-1048 |
| CANDIDATE | 4.19 | [`215af5499d9e`](https://git.kernel.org/torvalds/c/215af5499d9e) | [kernel] | cpu/hotplug: online siblings when smt control is turned on | CVE-2018-3620 | generic code, tag [kernel] | 3.10.0-933 |
| CANDIDATE | 4.19 | [`05736e4ac13c`](https://git.kernel.org/torvalds/c/05736e4ac13c) | [kernel] | cpu/hotplug: provide knobs to control smt | CVE-2018-3620 | generic code, tag [kernel] | 3.10.0-933 |
| CANDIDATE | 4.19 | [`fee0aede6f47`](https://git.kernel.org/torvalds/c/fee0aede6f47) | [kernel] | cpu/hotplug: set cpu_smt_not_supported early | CVE-2018-3620 | generic code, tag [kernel] | 3.10.0-933 |
| CANDIDATE | 4.19 | [`cc1fe215e1ef`](https://git.kernel.org/torvalds/c/cc1fe215e1ef) | [kernel] | cpu/hotplug: split do_cpu_down() | CVE-2018-3620 | generic code, tag [kernel] | 3.10.0-933 |
| CANDIDATE | 4.19 | [`82fbc8c48adf`](https://git.kernel.org/torvalds/c/82fbc8c48adf) | [kernel] | ftrace: Add missing check for existing hwlat thread |  | CONFIG_FTRACE=y in A37 | 3.10.0-1033 |
| CANDIDATE | 4.19 | [`489cae632fc0`](https://git.kernel.org/torvalds/c/489cae632fc0) (loose) | [kernel] | Move ascii85 functions from i915 to linux/ascii85.h |  | generic code, tag [kernel] | 3.10.0-1020 |
| CANDIDATE | 4.19 | [`9b89bc3857a6`](https://git.kernel.org/torvalds/c/9b89bc3857a6) | [kernel] | nvme.h: add support for the log specific field |  | generic code, tag [kernel] | 3.10.0-1007 |
| CANDIDATE | 4.19 | [`0c66847793d1`](https://git.kernel.org/torvalds/c/0c66847793d1) | [kernel] | overflow.h: Add arithmetic shift helper |  | generic code, tag [kernel] | 3.10.0-1013 |
| CANDIDATE | 4.19 | [`788faab70d5a`](https://git.kernel.org/torvalds/c/788faab70d5a) | [kernel] | perf, tools: Use correct articles in comments |  | generic code, tag [kernel] | 3.10.0-1012 |
| CANDIDATE | 4.19 | [`befb1b3c2703`](https://git.kernel.org/torvalds/c/befb1b3c2703) | [kernel] | perf/core: Add sanity check to deal with pinned event failure |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-1012 |
| CANDIDATE | 4.19 | [`a9f9772114c8`](https://git.kernel.org/torvalds/c/a9f9772114c8) | [kernel] | perf/core: Fix perf_pmu_unregister() locking |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-1012 |
| CANDIDATE | 4.19 | [`cd6fb677ce7e`](https://git.kernel.org/torvalds/c/cd6fb677ce7e) | [kernel] | perf/ring_buffer: Prevent concurent ring buffer access |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-1012 |
| CANDIDATE | 4.19 | [`baa9be4ffb55`](https://git.kernel.org/torvalds/c/baa9be4ffb55) | [kernel] | sched/fair: Fix throttle_list starvation with low CFS quota |  | generic code, tag [kernel] | 3.10.0-958 |
| CANDIDATE | 4.19 | [`cfd355145c32`](https://git.kernel.org/torvalds/c/cfd355145c32) | [kernel] | stop_machine: Atomically queue and wake stopper threads |  | generic code, tag [kernel] | 3.10.0-974 |
| CANDIDATE | 4.19 | [`978defee11a5`](https://git.kernel.org/torvalds/c/978defee11a5) | [kernel] | tracing: Do a WARN_ON() if start_thread() in hwlat is called when thread exists |  | CONFIG_FTRACE=y in A37 | 3.10.0-1033 |
| CANDIDATE | 4.19 | [`f143641bfef9`](https://git.kernel.org/torvalds/c/f143641bfef9) | [kernel] | tracing: Do not call start/stop() functions when tracing_on does not change |  | CONFIG_FTRACE=y in A37 | 3.10.0-1033 |
| CANDIDATE | 4.19 | [`82f5d7749fa4`](https://git.kernel.org/torvalds/c/82f5d7749fa4) | [kernel] | usb: pd: include kernel.h |  | CONFIG_USB=y in A37 | 3.10.0-1026 |
| CANDIDATE | 4.20 | [`aad2eeaf4697`](https://git.kernel.org/torvalds/c/aad2eeaf4697) | [kernel] | bpf: Simplify ptr_min_max_vals adjustment | CVE-2019-7308 | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-1035 |
| CANDIDATE | 4.20 | [`da6c7707caf3`](https://git.kernel.org/torvalds/c/da6c7707caf3) | [kernel] | fbdev: Add FBINFO_HIDE_SMEM_START flag |  | generic code, tag [kernel] | 3.10.0-1020 |
| CANDIDATE | 4.20 | [`df2fc43d09d3`](https://git.kernel.org/torvalds/c/df2fc43d09d3) | [kernel] | list: introduce list_bulk_move_tail helper |  | generic code, tag [kernel] | 3.10.0-1020 |
| CANDIDATE | 4.20 | [`ce52a18db458`](https://git.kernel.org/torvalds/c/ce52a18db458) | [kernel] | locking/lockdep: Add a faster path in __lock_release() |  | generic code, tag [kernel] | 3.10.0-973 |
| CANDIDATE | 4.20 | [`9506a7425b09`](https://git.kernel.org/torvalds/c/9506a7425b09) | [kernel] | locking/lockdep: Fix debug_locks off performance problem |  | generic code, tag [kernel] | 3.10.0-973 |
| CANDIDATE | 4.20 | [`8ca2b56cd7da`](https://git.kernel.org/torvalds/c/8ca2b56cd7da) | [kernel] | locking/lockdep: Make class->ops a percpu counter and move it under CONFIG_DEBUG_LOCKDEP=y |  | generic code, tag [kernel] | 3.10.0-973 |
| CANDIDATE | 4.20 | [`1627314fb54a`](https://git.kernel.org/torvalds/c/1627314fb54a) | [kernel] | perf: Suppress AUX/OVERWRITE records |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-1030 |
| CANDIDATE | 4.20 | [`321a874a7ef8`](https://git.kernel.org/torvalds/c/321a874a7ef8) | [kernel] | sched/smt: Expose sched_smt_present static key |  | generic code, tag [kernel] | 3.10.0-1048 |
| CANDIDATE | 4.20 | [`c5511d03ec09`](https://git.kernel.org/torvalds/c/c5511d03ec09) | [kernel] | sched/smt: Make sched_smt_present track topology |  | generic code, tag [kernel] | 3.10.0-1048 |
| CANDIDATE | 4.20 | [`993f0b0510da`](https://git.kernel.org/torvalds/c/993f0b0510da) | [kernel] | sched/topology: Fix off by one bug |  | generic code, tag [kernel] | 3.10.0-1123.1 |
| CANDIDATE | 4.20 | [`f366d322aea7`](https://git.kernel.org/torvalds/c/f366d322aea7) | [kernel] | uapi: ndctl: Remove use of PAGE_SIZE |  | generic code, tag [kernel] | 3.10.0-1034 |
| CANDIDATE | 5.0 | [`9d5564ddcf2a`](https://git.kernel.org/torvalds/c/9d5564ddcf2a) | [kernel] | bpf: fix inner map masking to prevent oob under speculation | CVE-2019-7308 | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-1035 |
| CANDIDATE | 5.0 | [`979d63d50c0c`](https://git.kernel.org/torvalds/c/979d63d50c0c) | [kernel] | bpf: prevent out of bounds speculation on pointer arithmetic | CVE-2019-7308 | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-1035 |
| CANDIDATE | 5.0 | [`9d7eceede769`](https://git.kernel.org/torvalds/c/9d7eceede769) | [kernel] | bpf: restrict unknown scalars of mixed signed bounds for unprivileged | CVE-2019-7308 | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-1035 |
| CANDIDATE | 5.0 | [`b284909abad4`](https://git.kernel.org/torvalds/c/b284909abad4) | [kernel] | cpu/hotplug: Fix "SMT disabled by BIOS" detection for KVM |  | generic code, tag [kernel] | 3.10.0-1048 |
| CANDIDATE | 5.0 | [`b061c38bef43`](https://git.kernel.org/torvalds/c/b061c38bef43) | [kernel] | futex: Fix (possible) missed wakeup |  | generic code, tag [kernel] | 3.10.0-996 |
| CANDIDATE | 5.0 | [`4106a758f791`](https://git.kernel.org/torvalds/c/4106a758f791) | [kernel] | ib/mlx5: Report CapabilityMask2 in ib_query_port |  | generic code, tag [kernel] | 3.10.0-1022 |
| CANDIDATE | 5.0 | [`76ef5e172527`](https://git.kernel.org/torvalds/c/76ef5e172527) | [kernel] | keys: Export lookup_user_key to external users |  | CONFIG_KEYS=y in A37 | 3.10.0-1034 |
| CANDIDATE | 5.0 | [`e158488be27b`](https://git.kernel.org/torvalds/c/e158488be27b) | [kernel] | locking/rwsem: Fix (possible) missed wakeup |  | generic code, tag [kernel] | 3.10.0-996 |
| CANDIDATE | 5.0 | [`e6018c0f5c99`](https://git.kernel.org/torvalds/c/e6018c0f5c99) | [kernel] | sched/wake_q: Document wake_q_add() |  | generic code, tag [kernel] | 3.10.0-996 |
| CANDIDATE | 5.0 | [`4c4e3731564c`](https://git.kernel.org/torvalds/c/4c4e3731564c) | [kernel] | sched/wake_q: Fix wakeup ordering for wake_q |  | generic code, tag [kernel] | 3.10.0-996 |
| CANDIDATE | 5.1 | [`57d4657716ac`](https://git.kernel.org/torvalds/c/57d4657716ac) | [kernel] | audit: ignore fcaps on umount |  | CONFIG_AUDIT=y in A37 | 3.10.0-1029 |
| CANDIDATE | 5.1 | [`a252f56a3c92`](https://git.kernel.org/torvalds/c/a252f56a3c92) | [kernel] | audit: more filter PATH records keyed on filesystem magic |  | CONFIG_AUDIT=y in A37 | 3.10.0-1029 |
| CANDIDATE | 5.1 | [`1136b0728969`](https://git.kernel.org/torvalds/c/1136b0728969) | [kernel] | genirq: Avoid summation loops for /proc/stat |  | generic code, tag [kernel] | 3.10.0-1009 |
| CANDIDATE | 5.1 | [`ca215086b14b`](https://git.kernel.org/torvalds/c/ca215086b14b) | [kernel] | mm: convert PG_balloon to PG_offline |  | generic code, tag [kernel] | 3.10.0-1058 |
| CANDIDATE | 5.1 | [`1878f0dcbff0`](https://git.kernel.org/torvalds/c/1878f0dcbff0) (loose) | [kernel] | phy: provide full set of accessor functions to MMD registers |  | generic code, tag [kernel] | 3.10.0-1024 |
| CANDIDATE | 5.1 | [`0e9f02450da0`](https://git.kernel.org/torvalds/c/0e9f02450da0) | [kernel] | sched/fair: Do not re-read ->h_load_next during hierarchical load calculation |  | generic code, tag [kernel] | 3.10.0-1050 |
| CANDIDATE | 5.1 | [`2e8e19226398`](https://git.kernel.org/torvalds/c/2e8e19226398) | [kernel] | sched/fair: Limit sched_cfs_period_timer() loop to avoid hard lockup |  | generic code, tag [kernel] | 3.10.0-1046 |
| CANDIDATE | 5.1 | [`32a5ad9c2285`](https://git.kernel.org/torvalds/c/32a5ad9c2285) | [kernel] | sysctl: handle overflow for file-max |  | generic code, tag [kernel] | 3.10.0-1064 |
| CANDIDATE | 5.1 | [`7f2923c4f73f`](https://git.kernel.org/torvalds/c/7f2923c4f73f) | [kernel] | sysctl: handle overflow in proc_get_long |  | generic code, tag [kernel] | 3.10.0-1064 |
| CANDIDATE | 5.2 | [`95e0b46fcebd`](https://git.kernel.org/torvalds/c/95e0b46fcebd) | [kernel] | audit: fix a memleak caused by auditing load module |  | CONFIG_AUDIT=y in A37 | 3.10.0-1152 |
| CANDIDATE | 5.2 | [`de7b77e5bb94`](https://git.kernel.org/torvalds/c/de7b77e5bb94) | [kernel] | cpu/hotplug: Create SMT sysfs interface for all arches |  | generic code, tag [kernel] | 3.10.0-1048 |
| CANDIDATE | 5.2 | [`98af8452945c`](https://git.kernel.org/torvalds/c/98af8452945c) | [kernel] | cpu/speculation: Add 'mitigations=' cmdline option | CVE-2018-12126 CVE-2018-12127 CVE-2018-12130 CVE-2019-11091 | generic code, tag [kernel] | 3.10.0-1049 |
| CANDIDATE | 5.2 | [`d477f8c202d1`](https://git.kernel.org/torvalds/c/d477f8c202d1) | [kernel] | cpuset: restore sanity to cpuset_cpus_allowed_fallback() |  | CONFIG_CGROUPS=y in A37 | 3.10.0-1064 |
| CANDIDATE | 5.2 | [`3116ad38f51c`](https://git.kernel.org/torvalds/c/3116ad38f51c) | [kernel] | kernel/sysctl.c: fix proc_do_large_bitmap for large input buffers |  | generic code, tag [kernel] | 3.10.0-1071 |
| CANDIDATE | 5.4 | [`f18ddc13af98`](https://git.kernel.org/torvalds/c/f18ddc13af98) | [kernel] | alarmtimer: Use EOPNOTSUPP instead of ENOTSUPP |  | generic code, tag [kernel] | 3.10.0-1104 |
| CANDIDATE | 5.4 | [`731dc9df975a`](https://git.kernel.org/torvalds/c/731dc9df975a) | [kernel] | cpu/speculation: Uninline and export CPU mitigations helpers | CVE-2018-12207 | generic code, tag [kernel] | 3.10.0-1117 |
| CANDIDATE | 5.4 | [`de53fd7aedb1`](https://git.kernel.org/torvalds/c/de53fd7aedb1) | [kernel] | sched/fair: Fix low cpu usage with high throttling by removing expiration of cpu-local slices |  | generic code, tag [kernel] | 3.10.0-1101 |
| CANDIDATE | 5.4 | [`4929a4e6faa0`](https://git.kernel.org/torvalds/c/4929a4e6faa0) | [kernel] | sched/fair: Scale bandwidth quota and period without losing quota/period ratio precision |  | generic code, tag [kernel] | 3.10.0-1141 |
| CANDIDATE | 5.4 | [`b9023b91dd02`](https://git.kernel.org/torvalds/c/b9023b91dd02) | [kernel] | tick: broadcast-hrtimer: Fix a race in bc_set_next |  | generic code, tag [kernel] | 3.10.0-1123.1 |
| CANDIDATE | 5.5 | [`7162431dcf72`](https://git.kernel.org/torvalds/c/7162431dcf72) | [kernel] | ftrace: Introduce PERMANENT ftrace_ops flag |  | CONFIG_FTRACE=y in A37 | 3.10.0-1128 |
| CANDIDATE | 5.5 | [`5d603311615f`](https://git.kernel.org/torvalds/c/5d603311615f) | [kernel] | kernel/module.c: wakeup processes in module_wq on module unload |  | generic code, tag [kernel] | 3.10.0-1138 |
| CANDIDATE | 5.6 | [`153031a301bb`](https://git.kernel.org/torvalds/c/153031a301bb) | [kernel] | blktrace: fix dereference after null check | CVE-2019-19768 | generic code, tag [kernel] | 3.10.0-1129 |
| CANDIDATE | 5.6 | [`c780e86dd48e`](https://git.kernel.org/torvalds/c/c780e86dd48e) | [kernel] | blktrace: Protect q->blk_trace with RCU | CVE-2019-19768 | generic code, tag [kernel] | 3.10.0-1129 |
| CANDIDATE | 5.7 | [`70b3eeed49e8`](https://git.kernel.org/torvalds/c/70b3eeed49e8) | [kernel] | audit: CONFIG_CHANGE don't log internal bookkeeping as an event |  | CONFIG_AUDIT=y in A37 | 3.10.0-1127.2 |
| CANDIDATE | 5.7 | [`b4fb015eeff7`](https://git.kernel.org/torvalds/c/b4fb015eeff7) | [kernel] | sched/rt: Optimize checking group RT scheduler constraints |  | generic code, tag [kernel] | 3.10.0-1126.2 |
| CANDIDATE | 5.8 | [`e77132e75845`](https://git.kernel.org/torvalds/c/e77132e75845) | [kernel] | kernel/sysctl.c: ignore out-of-range taint bits introduced via kernel.tainted |  | generic code, tag [kernel] | 3.10.0-1151 |
| CANDIDATE | 5.10 | [`f91072ed1b72`](https://git.kernel.org/torvalds/c/f91072ed1b72) | [kernel] | perf/core: Fix race in the perf_mmap_close() function | CVE-2020-14351 | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-1160.18.1 |
| CANDIDATE | — | — | [kernel] | [netdrv] mlx5e: Update neighbour 'used' state using HW flow rules counters |  | generic code, tag [kernel] | 3.10.0-785 |
| CANDIDATE | — | — | [kernel] | [netdrv] qed: Add support for static dcbx |  | generic code, tag [kernel] | 3.10.0-785 |
| CANDIDATE | — | — | [kernel] | [x86] [kernel] x86, l1tf: sync with latest l1tf patches | CVE-2018-3620 | generic code, tag [kernel] | 3.10.0-933 |
| CANDIDATE | — | — | [kernel] | acct.c: fix the acct->needcheck check in check_free_space() |  | generic code, tag [kernel] | 3.10.0-851 |
| CANDIDATE | — | — | [init] | actually enable CONFIG_CHECKPOINT_RESTORE |  | generic code, tag [init] | 3.10.0-285 |
| CANDIDATE | — | — | [perf] | Add ->count() function to read per-package counters |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [trace] | Add __field_struct macro for TRACE_EVENT() |  | generic code, tag [trace] | 3.10.0-169 |
| CANDIDATE | — | — | [perf] | Add a bit of paranoia |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | Add a kernel parameter that will force on Secure Boot mode |  | generic code, tag [kernel] | 3.10.0-10 |
| CANDIDATE | — | — | [perf] | Add ability to sample machine state on interrupt |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | Add BSD-style securelevel support |  | generic code, tag [kernel] | 3.10.0-52 |
| CANDIDATE | — | — | [tracing] | Add DEFINE_EVENT_FN() macro |  | generic code, tag [tracing] | 3.10.0-12 |
| CANDIDATE | — | — | [tracing] | Add function probe to trigger a ftrace dump of current CPU trace |  | generic code, tag [tracing] | 3.10.0-34 |
| CANDIDATE | — | — | [tracing] | Add function probe to trigger a ftrace dump to console |  | generic code, tag [tracing] | 3.10.0-34 |
| CANDIDATE | — | — | [kernel] | Add method for displaying affection for Red Hat |  | generic code, tag [kernel] | 3.10.0-53 |
| CANDIDATE | — | — | [perf] | Add pmu specific data for perf task context |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | add PMU_EVENT_ATTR_STRING() helper |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | Add RHEL_{MAJOR,MINOR,RELEASE} to top level Makefile |  | generic code, tag [kernel] | 3.10.0-1 |
| CANDIDATE | — | — | [kernel] | add support for init_array constructors fix |  | generic code, tag [kernel] | 3.10.0-31 |
| CANDIDATE | — | — | [sched] | Add tracepoints related to NUMA task migration |  | generic code, tag [sched] | 3.10.0-64 |
| CANDIDATE | — | — | [trace] | aer: Move trace into unified interface |  | generic code, tag [trace] | 3.10.0-169 |
| CANDIDATE | — | — | [ipc] | allow boot time extension of IPCMNI from 32k to 16M |  | generic code, tag [ipc] | 3.10.0-1067 |
| CANDIDATE | — | — | [perf] | Allow storage of PMU private data in event |  | generic code, tag [perf] | 3.10.0-406 |
| CANDIDATE | — | — | [ipc] | always handle a new value of auto_msgmni |  | generic code, tag [ipc] | 3.10.0-1067 |
| CANDIDATE | — | — | [perf] | Always switch pmu specific data during context switch |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | annotate: Allow annotation for decompressed kernel modules |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | annotate: Fix fallback to unparsed disassembler line |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | annotate: Fix memory leaks in LOCK handling |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | annotate: Handle ins parsing failures |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | annotate: Support source line numbers in annotate |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | arch: conditionally define smp_(mb,rmb,wmb) |  | generic code, tag [kernel] | 3.10.0-876 |
| CANDIDATE | — | — | [kernel] | asm-generic/io.h: Implement generic {read, write}s*() |  | generic code, tag [kernel] | 3.10.0-1008 |
| CANDIDATE | — | — | [kernel] | audit: __audit_syscall_entry - ignore arch arg and call syscall_get_arch() directly |  | CONFIG_AUDIT=y in A37 | 3.10.0-185 |
| CANDIDATE | — | — | [kernel] | audit: audit_syscall_entry() should not require the arch |  | CONFIG_AUDIT=y in A37 | 3.10.0-185 |
| CANDIDATE | — | — | [kernel] | audit: drop arch from __audit_syscall_entry() interface |  | CONFIG_AUDIT=y in A37 | 3.10.0-185 |
| CANDIDATE | — | — | [kernel] | audit: fix AUDIT_FEATURE_CHANGE record number |  | CONFIG_AUDIT=y in A37 | 3.10.0-142 |
| CANDIDATE | — | — | [kernel] | audit: implement syscall_get_arch for all arches |  | CONFIG_AUDIT=y in A37 | 3.10.0-185 |
| CANDIDATE | — | — | [kernel] | autogroup: Fix possible Spectre-v1 indexing for sched_prio_to_weight | CVE-2018-3693 | generic code, tag [kernel] | 3.10.0-932 |
| CANDIDATE | — | — | [perf] | Avoid horrible stack usage |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | Backport RH specific TAINT flags |  | generic code, tag [kernel] | 3.10.0-1 |
| CANDIDATE | — | — | [perf] | bench futex: Fix hung wakeup tasks after requeueing |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | bench numa: Fix immediate meeting of convergence condition |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | bench numa: Fixes of --quiet argument |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | bench-numa: Fix to show proper convergence stats |  | generic code, tag [perf] | 3.10.0-305 |
| CANDIDATE | — | — | [perf] | bench-numa: Show more stats of particular threads in verbose mode |  | generic code, tag [perf] | 3.10.0-295 |
| CANDIDATE | — | — | [perf] | bench: Add -r all so that you can run all mem* routines |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | bench: Carve out mem routine benchmarking |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | bench: Fix memcpy/memset output |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | bench: Fix order of arguments to memcpy_alloc_mem |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | bench: Merge memset into memcpy |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | bench: Prepare memcpy for merge |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | bpf, verifier: fix alu ops against map_value(, _adj) register types |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf/syscall: fix warning defined but not used |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | — | — | [kernel] | bpf: add BPF_J(LT, LE, SLT, SLE) instructions |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Add CONFIG_BPF_EVENTS into Kconfig |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Add convert_ctx_access callback |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Add merge fixes |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Add missing members to enum bpf_arg_type |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Add sched cls/act type |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Add socket filter type |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Add tech preview taint for syscall |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Add trace_bpf* jit functions |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Add v4.5 arraymap.c |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Add v4.5 bpf_trace.c |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Add v4.5 core.c |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Add v4.5 hashtab.c |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Add v4.5 helpers.c |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Add v4.5 inode.c |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Add v4.5 Makefile |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Add v4.5 syscall.c |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Add v4.5 verifier.c |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Add verifier prototypes for helper functions |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Adding filter block macros |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Additional changes for bpf_trace.c |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Additional changes for core.c |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Additional changes for syscall.c |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Allow additional program types for testing |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Disable non root access to BPF |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: enable BPF_J(LT, LE, SLT, SLE) opcodes in verifier |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Enable code compilation |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: fix off by one for range markings with L(T, E) patterns |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Fix out-of-bound access on interpreters() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Limit the prog types in syscall |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: mark dst unknown on inconsistent (s, u)bounds adjustments |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: move {prev_, }insn_idx into verifier env | CVE-2019-7308 | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-1035 |
| CANDIDATE | — | — | [kernel] | bpf: Set default value for bpf_jit_harden |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-916 |
| CANDIDATE | — | — | [kernel] | bpf: Split functions under CONFIG_BPF_SYSCALL in bpf.h |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: split state from prandom_u32() and consolidate c/eBPF prngs |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Sync needed bpf.h structs with v4.5 code |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | bpf: Sync struct bpf_prog with v4.5 code and add related declarations |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [perf] | build-id: Move build-id related functions to util/build-id.c |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | build-id: Move disable_buildid_cache() to util/build-id.c |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | build-id: Rename dsos__write_buildid_table() |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | build: Add arch arm objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add arch arm64 objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add arch powerpc objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add arch s390 objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add arch sh objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add arch sparc objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add arch x86 objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add bench objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add build documentation |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add builtin objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add config/feature-checks/*.output to the .gitignore file |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add dwarf objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add dwarf unwind objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add gtk objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add libperf objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add perf regs objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add perf.o object building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add probe objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add scripts objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add single target build framework support |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add slang objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add tests objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add ui objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Add zlib objects building |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Disable default check for libbabeltrace |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Disable libbabeltrace check by default |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Disable make's built-in rules |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Display make commands on V=1 |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Fix feature_check name clash |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Fix libbabeltrace detection |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Fix pthread-attr-setaffinity-np include in test-all |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Get rid of LIB_INCLUDE variable |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Get rid of VF_FEATURE_TESTS |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Make features checks directory configurable |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Move feature checks code under tools/build |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Move features build output under features directory |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Remove directory dependency rules |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Remove PERF-CFLAGS file |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Remove uneeded variables |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Rename CORE_FEATURE_TESTS to FEATURE_TESTS |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Rename display_lib into feature_display |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Rename display_vf to feature_verbose |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Rename feature_print_var_code to print_var_code |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Rename PERF-FEATURES into FEATURE-DUMP |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Separate feature make support into config/Makefile.feature |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | build: Use FEATURE-DUMP instead of PERF-FEATURES in the .gitignore file |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | buildid cache: Fix -a segfault related to kcore handling |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | buildid-cache: Add --purge FILE to remove all caches of FILE |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | buildid-cache: Add new buildid cache if update target is not cached |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | buildid-cache: Consolidate .build-id cache path generators |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | buildid-cache: Remove extra debugdir variables |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | buildid-cache: Remove unneeded debugdir parameters |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | buildid-cache: Show usage with incorrect params |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | buildid-cache: Use pr_debug instead of verbose && pr_info |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | buildid-list: Fix segfault when show DSOs with hits |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | Bump max number of cpus to 1024 |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | byteorder: Move (cpu_to_be32, be32_to_cpu)_array() from Thunderbolt to core |  | generic code, tag [kernel] | 3.10.0-875 |
| CANDIDATE | — | — | [kernel] | Call mark_tech_preview() for user namespace |  | generic code, tag [kernel] | 3.10.0-305 |
| CANDIDATE | — | — | [perf] | callchain: Append callchains only when requested |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | callchain: Cache eh/debug frame offset for dwarf unwind |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | callchain: Enable printing the srcline in the history |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | callchain: Factor out adding new call chain entries |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | callchain: Fix kernel symbol resolution by remembering the cpumode |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | callchain: Fixup parameter handling error message |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | callchain: Free callchains when hist entries are deleted |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | callchain: Make get_srcline fall back to sym+offset |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | callchain: Move cpumode resolve code to add_callchain_ip |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | callchain: Separate eh/debug frame offset cache |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | callchain: Support handling complete branch stacks as histograms |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | callchain: Use a common function to resolve symbol or name |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | callchain: Use al.addr to set up call chain |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | callchains: Use thread->mg->machine |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | cgroup: implement task_get_css() |  | CONFIG_CGROUPS=y in A37 | 3.10.0-372 |
| CANDIDATE | — | — | [kernel] | cgroup: pids: adapt cgroup_pids.c to RHEL7 |  | CONFIG_CGROUPS=y in A37 | 3.10.0-372 |
| CANDIDATE | — | — | [kernel] | cgroup: pids: fix kABI breakage |  | CONFIG_CGROUPS=y in A37 | 3.10.0-372 |
| CANDIDATE | — | — | [kernel] | cgroup: pids: rhel-specific hack to fix zombie accounting |  | CONFIG_CGROUPS=y in A37 | 3.10.0-372 |
| CANDIDATE | — | — | [ipc] | change kern_ipc_perm.deleted type to bool | CVE-2013-7026 | generic code, tag [ipc] | 3.10.0-117 |
| CANDIDATE | — | — | [kernel] | change TRACE_EVENT(writeback_dirty_page) to check bdi->dev != NULL | CVE-2016-3070 | generic code, tag [kernel] | 3.10.0-398 |
| CANDIDATE | — | — | [ipc] | conserve sequence numbers in ipcmni_extend mode |  | generic code, tag [ipc] | 3.10.0-1067 |
| CANDIDATE | — | — | [kernel] | const: Add _BITUL() and _BITULL() |  | generic code, tag [kernel] | 3.10.0-143 |
| CANDIDATE | — | — | [kernel] | context_tracking: Fix guest accounting with native vtime |  | generic code, tag [kernel] | 3.10.0-40 |
| CANDIDATE | — | — | [kernel] | core: Fix possible Spectre-v1 indexing for ->aux_pages | CVE-2018-3693 | generic code, tag [kernel] | 3.10.0-932 |
| CANDIDATE | — | — | [sched] | core: Fix TASK_DEAD race in finish_task_switch() |  | generic code, tag [sched] | 3.10.0-1034 |
| CANDIDATE | — | — | [perf] | core: Fix use-after-free in uprobe_perf_close() |  | generic code, tag [perf] | 3.10.0-916 |
| CANDIDATE | — | — | [kernel] | cpu/hotplug: Add lockdep annotations to get/put_online_cpus() |  | generic code, tag [kernel] | 3.10.0-137 |
| CANDIDATE | — | — | [kernel] | cpu/hotplug: boot ht siblings at least once, part 2 | CVE-2018-3620 | generic code, tag [kernel] | 3.10.0-933 |
| CANDIDATE | — | — | [kernel] | cpu/hotplug: Disable prove_locking for cpu_hotplug.mutex |  | generic code, tag [kernel] | 3.10.0-755 |
| CANDIDATE | — | — | [kernel] | cpu/hotplug: Enable 'nosmt' as late as possible | CVE-2018-3620 | generic code, tag [kernel] | 3.10.0-933 |
| CANDIDATE | — | — | [kernel] | cpu/hotplug: Fix 'online' sysfs entry with 'nosmt' | CVE-2018-3620 | generic code, tag [kernel] | 3.10.0-933 |
| CANDIDATE | — | — | [kernel] | cpu/hotplug: provide knobs to control smt, part 2 | CVE-2018-3620 | generic code, tag [kernel] | 3.10.0-933 |
| CANDIDATE | — | — | [kernel] | cpu/hotplug: Provide lockless versions of callback registration functions |  | generic code, tag [kernel] | 3.10.0-137 |
| CANDIDATE | — | — | [kernel] | cpu_hotplug, perf: Fix CPU hotplug callback registration |  | generic code, tag [kernel] | 3.10.0-137 |
| CANDIDATE | — | — | [kernel] | cpuset: Add a dummy cgroup_on_dfl() function |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | — | — | [kernel] | cpuset: Fix a backport error in update_nodemasks_hier() |  | CONFIG_CGROUPS=y in A37 | 3.10.0-974 |
| CANDIDATE | — | — | [kernel] | cpuset: fix sleeping function called from invalid context |  | CONFIG_CGROUPS=y in A37 | 3.10.0-370 |
| CANDIDATE | — | — | [kernel] | cpuset: update cpuset->effective_{cpus, mems} at hotplug |  | CONFIG_CGROUPS=y in A37 | 3.10.0-781 |
| CANDIDATE | — | — | [kernel] | crash_core: Fix warning about CRASH_CORE_NOTE_BYTES redefinition |  | generic code, tag [kernel] | 3.10.0-805 |
| CANDIDATE | — | — | [perf] | data: Add a 'perf' prefix to the generic fields |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | data: Add perf data to CTF conversion support |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | data: Add tracepoint events fields CTF conversion support |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | data: Fix sentinel setting for data_cmds array |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | data: Support using -f to override perf.data file ownership for 'convert' |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | db-export: No need to have ->thread twice in struct export_sample |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | db-export: No need to pass thread twice to db_export__sample |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | debug: Add support for external NMI handler to call KGDB/KDB |  | generic code, tag [kernel] | 3.10.0-185 |
| CANDIDATE | — | — | [kernel] | debug: Fix no KDB config problem |  | generic code, tag [kernel] | 3.10.0-185 |
| CANDIDATE | — | — | [perf] | Decouple unthrottling and rotating |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | define u8, s8, u32, etc. limits |  | generic code, tag [kernel] | 3.10.0-164 |
| CANDIDATE | — | — | [ipc] | delete seq_max field in struct ipc_ids |  | generic code, tag [ipc] | 3.10.0-1067 |
| CANDIDATE | — | — | [core] | device: Create 'device_driver_rh' KABI shadowing structure |  | generic code, tag [core] | 3.10.0-120 |
| CANDIDATE | — | — | [core] | device: Create 'device_rh' KABI shadowing structure |  | generic code, tag [core] | 3.10.0-120 |
| CANDIDATE | — | — | [perf] | diff: Add kallsyms option |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | diff: Add missing handler for PERF_RECORD_MMAP2 events |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | diff: Fix -o/--order option behavior |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | diff: Fix output ordering to honor next column |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | diff: Fix to sort by baseline field by default |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | diff: Get rid of hists__compute_resort() |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | diff: Introduce fmt_to_data_file() helper |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | diff: Print diff result more precisely |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | diff: Support for different binaries |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | dim: Fix fixpoint divide exception in net_dim_stats_compare |  | generic code, tag [kernel] | 3.10.0-906 |
| CANDIDATE | — | — | [kernel] | dim: Fix int overflow |  | generic code, tag [kernel] | 3.10.0-889 |
| CANDIDATE | — | — | [kernel] | dim: Rename *_get_profile() functions to *_get_rx_moderation() |  | generic code, tag [kernel] | 3.10.0-906 |
| CANDIDATE | — | — | [kernel] | dim: Support adaptive TX moderation |  | generic code, tag [kernel] | 3.10.0-906 |
| CANDIDATE | — | — | [kernel] | dim: use struct net_dim_sample as arg to net_dim |  | generic code, tag [kernel] | 3.10.0-889 |
| CANDIDATE | — | — | [kernel] | Disable tasklist_waiters when qrwlock is enabled |  | generic code, tag [kernel] | 3.10.0-1160.15.1 |
| CANDIDATE | — | — | [kernel] | dma-mapping: add {map, unmap}_resource to dma_map_ops |  | generic code, tag [kernel] | 3.10.0-722 |
| CANDIDATE | — | — | [kernel] | dma-mapping: Clarify output of dma_map_sg |  | generic code, tag [kernel] | 3.10.0-722 |
| CANDIDATE | — | — | [kernel] | dma-mapping: consolidate dma_{alloc, free}_noncoherent |  | generic code, tag [kernel] | 3.10.0-722 |
| CANDIDATE | — | — | [kernel] | dma-mapping: consolidate dma_{alloc, free}_{attrs, coherent} |  | generic code, tag [kernel] | 3.10.0-722 |
| CANDIDATE | — | — | [ipc] | do cyclic id allocation for the ipc object |  | generic code, tag [ipc] | 3.10.0-1067 |
| CANDIDATE | — | — | [kernel] | do not hint for NUMA balancing on VM_MIXEDMAP mappings |  | generic code, tag [kernel] | 3.10.0-795 |
| CANDIDATE | — | — | [perf] | Drop module reference on event init failure |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | Enable -Werror also for s390 builds in the main Makefile |  | generic code, tag [kernel] | 3.10.0-805 |
| CANDIDATE | — | — | [kernel] | errno: remove "NFS" from descriptions in comments |  | generic code, tag [kernel] | 3.10.0-85 |
| CANDIDATE | — | — | [perf] | evlist: Adopt events_stats from perf_session |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | evlist: Clarify sterror_mmap variable names |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | evlist: Do not poll events that use the system_wide flag |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | evlist: Do not use hard coded value for a mmap_pages default |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | evlist: Fix inverted logic in perf_mmap__empty |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | evlist: Fix type for references to data_head/tail |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | evlist: Fix typo in comment |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | evlist: Fixup brown paper bag on "hint" for --mmap-pages cmdline arg |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | evlist: Improve the strerror_mmap method |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | evlist: Introduce set_filter_pid method |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | evlist: Introduce set_filter_pids method |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | evlist: Introduce strerror_mmap method |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | evlist: Remove extraneous 'was' on error message |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | evlist: Return the first evsel with an invalid filter in apply_filters() |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | evlist: Support using -f to override perf.data file ownership |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | evlist: Use roundup_pow_of_two |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | evsel: Do not call pevent_free_format when deleting tracepoint |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | evsel: Don't rely on malloc working for sz 0 |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | evsel: Fix ftrace:function event recording |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | evsel: Introduce perf_counts_values__scale function |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | evsel: Introduce perf_evsel__compute_deltas function |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | evsel: Introduce perf_evsel__read_cb function |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | evsel: Set attr.task bit for a tracking event |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | exit: always reap resource stats in __exit_signal |  | generic code, tag [kernel] | 3.10.0-182 |
| CANDIDATE | — | — | [kernel] | exit: Optimize forget_original_parent() for large thread group exiting |  | generic code, tag [kernel] | 3.10.0-1160.15.1 |
| CANDIDATE | — | — | [init] | export name_to_dev_t and mark name argument as const |  | generic code, tag [init] | 3.10.0-265 |
| CANDIDATE | — | — | [kernel] | firmware: define a facade for request_firmware_direct() |  | generic code, tag [kernel] | 3.10.0-831 |
| CANDIDATE | — | — | [ipc] | Fix 2 bugs in msgrcv() MSG_COPY implementation |  | generic code, tag [ipc] | 3.10.0-423 |
| CANDIDATE | — | — | [perf] | Fix building warning on ARM 32 |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [ipc] | fix compat msgrcv with negative msgtyp |  | generic code, tag [ipc] | 3.10.0-171 |
| CANDIDATE | — | — | [perf] | Fix context leak in put_event() |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | Fix event->ctx locking |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | Fix irq_work 'tail' recursion |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | fix module signature vs tracepoints add new TAINT_UNSIGNED_MODULE |  | generic code, tag [kernel] | 3.10.0-239 |
| CANDIDATE | — | — | [perf] | Fix move_group() order |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | Fix put_event() ctx lock |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | Fix racy group access |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [init] | fix regression by supporting devices with major:minor:offset format |  | generic code, tag [init] | 3.10.0-265 |
| CANDIDATE | — | — | [kernel] | fix TAINT_SOFTLOCKUP printable character |  | generic code, tag [kernel] | 3.10.0-306 |
| CANDIDATE | — | — | [sched] | fix the theoretical signal_wake_up() vs schedule() race |  | generic code, tag [sched] | 3.10.0-64 |
| CANDIDATE | — | — | [kernel] | fork: allocate idle task for a CPU always on its local node |  | generic code, tag [kernel] | 3.10.0-506 |
| CANDIDATE | — | — | [kernel] | fork: copy_process(), consolidate the lockless CLONE_THREAD checks |  | generic code, tag [kernel] | 3.10.0-108 |
| CANDIDATE | — | — | [kernel] | fork: copy_process(), don't add the uninitialized child to thread/task/pid lists |  | generic code, tag [kernel] | 3.10.0-108 |
| CANDIDATE | — | — | [kernel] | fork: copy_process(), unify CLONE_THREAD-or-thread_group_leader code |  | generic code, tag [kernel] | 3.10.0-108 |
| CANDIDATE | — | — | [kernel] | fork: introduce for_each_thread() to replace the buggy while_each_thread() |  | generic code, tag [kernel] | 3.10.0-108 |
| CANDIDATE | — | — | [kernel] | fs: handle kABI breakage regarding IMA enablement on s390x and ppc64 arches |  | generic code, tag [kernel] | 3.10.0-1003 |
| CANDIDATE | — | — | [kernel] | fs: prevent speculative execution | CVE-2017-5715 CVE-2017-5753 CVE-2017-5754 | generic code, tag [kernel] | 3.10.0-827 |
| CANDIDATE | — | — | [kernel] | ftrace: Add call to ftrace_graph_is_dead() in function graph code |  | CONFIG_FTRACE=y in A37 | 3.10.0-154 |
| CANDIDATE | — | — | [kernel] | ftrace: BUG when ftrace recovery fails |  | CONFIG_FTRACE=y in A37 | 3.10.0-154 |
| CANDIDATE | — | — | [kernel] | ftrace: fix traceoff_on_warning handling on boot command line |  | CONFIG_FTRACE=y in A37 | 3.10.0-497 |
| CANDIDATE | — | — | [kernel] | ftrace: Hardcode ftrace_module_init() call into load_module() |  | CONFIG_FTRACE=y in A37 | 3.10.0-133 |
| CANDIDATE | — | — | [kernel] | ftrace: Have ftrace_write() return -EPERM and clean up callers |  | CONFIG_FTRACE=y in A37 | 3.10.0-154 |
| CANDIDATE | — | — | [kernel] | ftrace: Load ftrace_ops in parameter not the variable holding it |  | CONFIG_FTRACE=y in A37 | 3.10.0-154 |
| CANDIDATE | — | — | [kernel] | ftrace: Move the mcount/fentry code out of entry_64.S |  | CONFIG_FTRACE=y in A37 | 3.10.0-154 |
| CANDIDATE | — | — | [kernel] | ftrace: One more missing sync after fixup of function modification failure |  | CONFIG_FTRACE=y in A37 | 3.10.0-154 |
| CANDIDATE | — | — | [kernel] | ftrace: Run a sync after fixup on failure |  | CONFIG_FTRACE=y in A37 | 3.10.0-154 |
| CANDIDATE | — | — | [kernel] | ftrace: skip over the breakpoint for ftrace caller |  | CONFIG_FTRACE=y in A37 | 3.10.0-154 |
| CANDIDATE | — | — | [kernel] | ftrace: Use breakpoints for converting function graph caller |  | CONFIG_FTRACE=y in A37 | 3.10.0-154 |
| CANDIDATE | — | — | [kernel] | futex: Fix pthread_cond_broadcast() to wake up all threads |  | generic code, tag [kernel] | 3.10.0-125 |
| CANDIDATE | — | — | [kernel] | futex: prevent requeue pi on same futex | CVE-2014-3153 | generic code, tag [kernel] | 3.10.0-127 |
| CANDIDATE | — | — | [kernel] | gcov: add support for gcc 47 gcov format checkpatch fixes |  | generic code, tag [kernel] | 3.10.0-31 |
| CANDIDATE | — | — | [kernel] | gcov: add support for gcc 47 gcov format fix |  | generic code, tag [kernel] | 3.10.0-31 |
| CANDIDATE | — | — | [kernel] | gcov: add support for gcc 47 gcov format fix 3 |  | generic code, tag [kernel] | 3.10.0-31 |
| CANDIDATE | — | — | [kernel] | gcov: add support for gcc 47 gcov format fix fix |  | generic code, tag [kernel] | 3.10.0-31 |
| CANDIDATE | — | — | [kernel] | genirq/affinity: avoid deadlock in pci_alloc_irq_vectors_affinity |  | generic code, tag [kernel] | 3.10.0-851 |
| CANDIDATE | — | — | [kernel] | genirq: introduce _affinity version of irq_alloc_hwirq |  | generic code, tag [kernel] | 3.10.0-716 |
| CANDIDATE | — | — | [perf] | header: Set header version correctly |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | hists browser: Allow annotating entries in callchains |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | hists browser: Change print format from lu to PRIu64 |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | hists browser: Fix segfault when showing callchain |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | hists browser: Fix UI bug after fold/unfold |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | hists browser: Fix UI bug after zoom into thread/dso/symbol |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | hists browser: Fix up some branch alignment |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | hists browser: Indicate which callchain entries are annotated |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | hists browser: Print overhead percent value for first-level callchain |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | hists browser: Simplify symbol annotation menu setup |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | hists: Fix children sort key behavior |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | hists: Fix up srcline histogram key formatting |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | hists: Introduce function for deleting/removing hist_entry |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | hists: Remove hist_entry->used, not used anymore |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | hists: Rename hist_entry__free to __delete |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [sched] | idle: Fix the idle polling state logic |  | generic code, tag [sched] | 3.10.0-66 |
| CANDIDATE | — | — | [kernel] | if_ether: add IEEE 802.21 Ethertype |  | generic code, tag [kernel] | 3.10.0-194 |
| CANDIDATE | — | — | [kernel] | iio: add IIO_ATTR_(RO, WO, RW) and IIO_DEVICE_ATTR_(RO, WO, RW) macros |  | generic code, tag [kernel] | 3.10.0-929 |
| CANDIDATE | — | — | [kernel] | iio: Add missing kernel doc field |  | generic code, tag [kernel] | 3.10.0-929 |
| CANDIDATE | — | — | [kernel] | iio: Fix function parameter name in kernel doc |  | generic code, tag [kernel] | 3.10.0-929 |
| CANDIDATE | — | — | [kernel] | implement DIV_ROUND_CLOSEST_ULL |  | generic code, tag [kernel] | 3.10.0-262 |
| CANDIDATE | — | — | [perf] | Improve the perf_sample_data struct layout |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | include/*: stop using RH_KABI_REPLACE_P |  | generic code, tag [kernel] | 3.10.0-300 |
| CANDIDATE | — | — | [kernel] | include/linux/rwsem.h: add '<linux/err.h>' include |  | generic code, tag [kernel] | 3.10.0-651 |
| CANDIDATE | — | — | [kernel] | init: remove __cpuinit sections from the kernel |  | generic code, tag [kernel] | 3.10.0-136 |
| CANDIDATE | — | — | [perf] | inject: Support using -f to override perf.data file ownership |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [ipc] | introduce ipc_valid_object() helper to sort out IPC_RMID races | CVE-2013-7026 | generic code, tag [ipc] | 3.10.0-117 |
| CANDIDATE | — | — | [perf] | Introduce pmu context switch callback |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | introduce tasklist_read_lock() and tasklist_write_lock_irq() |  | generic code, tag [kernel] | 3.10.0-468 |
| CANDIDATE | — | — | [ipc] | IPCMNI limit check for msgmni and shmmni |  | generic code, tag [ipc] | 3.10.0-1067 |
| CANDIDATE | — | — | [ipc] | IPCMNI limit check for semmni |  | generic code, tag [ipc] | 3.10.0-1067 |
| CANDIDATE | — | — | [kernel] | irq: Implement irqaffinity=driver |  | generic code, tag [kernel] | 3.10.0-1031 |
| CANDIDATE | — | — | [kernel] | kabi: add RH_KABI_CONST |  | generic code, tag [kernel] | 3.10.0-798 |
| CANDIDATE | — | — | [kernel] | kabi: alignment and sizeof checks in RH_KABI_REPLACE/CHANGE_TYPE macros |  | generic code, tag [kernel] | 3.10.0-300 |
| CANDIDATE | — | — | [kernel] | kabi: introduce RH_KABI_RENAME |  | generic code, tag [kernel] | 3.10.0-300 |
| CANDIDATE | — | — | [kernel] | kabi: introduce RH_KABI_REPLACE_UNSAFE |  | generic code, tag [kernel] | 3.10.0-300 |
| CANDIDATE | — | — | [kernel] | kabi: introduce RH_KABI_USE2_P |  | generic code, tag [kernel] | 3.10.0-300 |
| CANDIDATE | — | — | [kernel] | kabi: modify _RH_KABI_REPLACE to integrate RH_KABI_REPLACE_P with RH_KABI_REPLACE |  | generic code, tag [kernel] | 3.10.0-300 |
| CANDIDATE | — | — | [kernel] | kabi: remove RH_KABI_CHANGE_TYPE |  | generic code, tag [kernel] | 3.10.0-300 |
| CANDIDATE | — | — | [kernel] | kabi: remove RH_KABI_REPLACE_P |  | generic code, tag [kernel] | 3.10.0-300 |
| CANDIDATE | — | — | [kernel] | kallsyms.c: use __seq_open_private() |  | generic code, tag [kernel] | 3.10.0-835 |
| CANDIDATE | — | — | [kernel] | kbuild: AFTER_LINK |  | generic code, tag [kernel] | 3.10.0-1 |
| CANDIDATE | — | — | [kernel] | kernel tracing: Add struct ftrace_event_data |  | generic code, tag [kernel] | 3.10.0-913 |
| CANDIDATE | — | — | [kernel] | kernel/panic.c: Fix TAINT_UNSAFE_SMP comment |  | generic code, tag [kernel] | 3.10.0-1101 |
| CANDIDATE | — | — | [kernel] | keys: align system_certificate_list |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | — | — | [perf] | kmaps: Check kmaps to make code more robust |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | kmem: Allow -v option |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | kmem: Analyze page allocator events also |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | kmem: Consistently use PRIu64 for printing u64 values |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | kmem: Fix alignment of slab result table |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | kmem: Fix compiles on RHEL6/OL6 |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | kmem: Fix segfault when invalid sort key is given |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | kmem: Print big numbers using thousands' group |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | kmem: Respect -i option |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | kmem: Support using -f to override perf.data file ownership |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | kthread: partial revert of 81c98869faa5 ("kthread: ensure locality of task_struct allocations") |  | generic code, tag [kernel] | 3.10.0-218 |
| CANDIDATE | — | — | [kernel] | ktime: Introduce ktime_ms_delta |  | generic code, tag [kernel] | 3.10.0-271 |
| CANDIDATE | — | — | [kernel] | linux/bitops.h: introduce BITS_PER_TYPE |  | generic code, tag [kernel] | 3.10.0-1020 |
| CANDIDATE | — | — | [kernel] | linux/genalloc.h: spinlock_t needs spinlock_types.h |  | generic code, tag [kernel] | 3.10.0-1034 |
| CANDIDATE | — | — | [kernel] | linux/radix-tree.h: fix error in docs about locks |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | — | — | [perf] | list: Allow listing events with 'tracepoint' prefix |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | list: Avoid confusion of perf output and the next command prompt |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | list: Clean up the printing functions of hardware/software events |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | list: Extend raw-dump to certain kind of events |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | list: Fix --raw-dump option |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | list: introduce list_last_entry(), use list_{first, last}_entry() |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | list: Place the header text in its right position |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | list: Sort the output of 'perf list' to view more clearly |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | llist: lock-less list, Add llist_for_each_entry_safe() |  | generic code, tag [kernel] | 3.10.0-136 |
| CANDIDATE | — | — | [perf] | lock: Support using -f to override perf.data file ownership |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | locking, qspinlock: Fix spin_is_locked() and spin_unlock_wait() |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | — | — | [kernel] | locking/barriers: introduce new memory barrier gmb() | CVE-2017-5715 CVE-2017-5753 CVE-2017-5754 | generic code, tag [kernel] | 3.10.0-827 |
| CANDIDATE | — | — | [kernel] | locking/barriers: prevent speculative execution based on Coverity scan results | CVE-2017-5753 | generic code, tag [kernel] | 3.10.0-829 |
| CANDIDATE | — | — | [kernel] | locking/lockdep: Increase lockdep dependency entries to 40k |  | generic code, tag [kernel] | 3.10.0-1031 |
| CANDIDATE | — | — | [kernel] | locking/pvqspinlock: Block kernel module loading on old kernel |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | — | — | [kernel] | locking/qspinlock: Fix performance regression under unaccelerated VMs |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | — | — | [kernel] | locking/qspinlock: Handle ticket unlock code in old kernel modules |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | — | — | [kernel] | locking/qspinlock: Maintain same kABI signature as ticket locks |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | — | — | [kernel] | locking: osq: No need for load/acquire when acquire-polling |  | generic code, tag [kernel] | 3.10.0-450 |
| CANDIDATE | — | — | [kernel] | locking: Remove atomicy checks from {READ, WRITE}_ONCE | CVE-2015-3339 | generic code, tag [kernel] | 3.10.0-260 |
| CANDIDATE | — | — | [perf] | machine: Fix __machine__findnew_thread() error path |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [init] | main: add initcall_blacklist kernel parameter |  | generic code, tag [init] | 3.10.0-137 |
| CANDIDATE | — | — | [perf] | Make perf_cgroup_from_task() global |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | Make some warnings non-fatal for powerpc builds |  | generic code, tag [kernel] | 3.10.0-297 |
| CANDIDATE | — | — | [kernel] | makefile: bump drm backport version |  | generic code, tag [kernel] | 3.10.0-930 |
| CANDIDATE | — | — | [kernel] | makefile: use the gnu89 standard explicitly |  | generic code, tag [kernel] | 3.10.0-343 |
| CANDIDATE | — | — | [kernel] | Mark power5, power6, !Intel, and !AMD systems as unsupported |  | generic code, tag [kernel] | 3.10.0-1 |
| CANDIDATE | — | — | [kernel] | membarrier: disable sys_membarrier when nohz_full is enabled |  | generic code, tag [kernel] | 3.10.0-879 |
| CANDIDATE | — | — | [kernel] | membarrier: system-wide memory barrier |  | generic code, tag [kernel] | 3.10.0-879 |
| CANDIDATE | — | — | [kernel] | mlx4_core: Fix raw qp flow steering rules under SRIOV |  | generic code, tag [kernel] | 3.10.0-635 |
| CANDIDATE | — | — | [kernel] | mlx4_core: Preparation for VF vlan protocol 802.1ad |  | generic code, tag [kernel] | 3.10.0-603 |
| CANDIDATE | — | — | [kernel] | module.c: Only return -EEXIST for modules that have finished loading part II |  | generic code, tag [kernel] | 3.10.0-1058 |
| CANDIDATE | — | — | [perf] | Move cgroup init before PMU ->event_init() |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | move get_online_cpus/put_online_cpus locking out |  | generic code, tag [kernel] | 3.10.0-53 |
| CANDIDATE | — | — | [perf] | Move task_pt_regs sampling into arch code |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | mutex: Make __mutex_fastpath_lock_retval return whether fastpath succeeded or not |  | generic code, tag [kernel] | 3.10.0-50 |
| CANDIDATE | — | — | [kernel] | net, ib/mlx5: Change set_roce_gid to take a port number |  | generic code, tag [kernel] | 3.10.0-889 |
| CANDIDATE | — | — | [kernel] | nospec: Introduce barrier_nospec for other arches | CVE-2018-3693 | generic code, tag [kernel] | 3.10.0-932 |
| CANDIDATE | — | — | [kernel] | optimize resource lookups for ioremap |  | generic code, tag [kernel] | 3.10.0-260 |
| CANDIDATE | — | — | [perf] | ordered_events: Adopt queue() method |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | ordered_events: Allow tools to specify a deliver method |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | ordered_events: Shorten function signatures |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | ordered_events: Stop using tool->ordered_events |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | ordered_events: Untangle from perf_session |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | ordered_samples: Remove references to perf_{evlist, tool} and machines |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | panic/kexec: fix "crash_kexec_post_notifiers" option issue in oops path |  | generic code, tag [kernel] | 3.10.0-530 |
| CANDIDATE | — | — | [kernel] | panic: add "crash_kexec_post_notifiers" option for kdump after panic_notifers |  | generic code, tag [kernel] | 3.10.0-530 |
| CANDIDATE | — | — | [kernel] | panic: call the 2nd crash_kexec() only if crash_kexec_post_notifiers is enabled |  | generic code, tag [kernel] | 3.10.0-530 |
| CANDIDATE | — | — | [kernel] | params: Add module param type 'ullong' |  | generic code, tag [kernel] | 3.10.0-745 |
| CANDIDATE | — | — | [kernel] | params: fix handling of signed integer types |  | generic code, tag [kernel] | 3.10.0-745 |
| CANDIDATE | — | — | [kernel] | pci_ids: add AMD F16h M30h device IDs |  | generic code, tag [kernel] | 3.10.0-248 |
| CANDIDATE | — | — | [kernel] | perf/aux: Make aux_(head, wakeup) ring_buffer members long |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-880 |
| CANDIDATE | — | — | [kernel] | perf/core: Fix another perf, trace, cpuhp lock inversion |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | — | — | [kernel] | perf/core: Fix group (cpu, task) validation |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-872 |
| CANDIDATE | — | — | [kernel] | perf/core: Fix lock inversion between perf, trace, cpuhp |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-888 |
| CANDIDATE | — | — | [kernel] | perf/core: Rename perf_event_read_{one, group}, perf_read_hw |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-366 |
| CANDIDATE | — | — | [kernel] | perf/evlist: Use PERF_EVENT_IOC_ID perf ioctl to read event id |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-31 |
| CANDIDATE | — | — | [kernel] | perf: Add Haswell ULT model number used in Macbook Air and other systems |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-83 |
| CANDIDATE | — | — | [kernel] | perf: Add simple Haswell PMU support |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-4 |
| CANDIDATE | — | — | [kernel] | perf: Allow mmap2 interface |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-109 |
| CANDIDATE | — | — | [kernel] | perf: Check branch sampling priv level in generic code |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-4 |
| CANDIDATE | — | — | [kernel] | perf: Make sysctl_perf_cpu_time_max_percent conform to documentation |  | CONFIG_PERF_EVENTS=y in A37 | 3.10.0-456 |
| CANDIDATE | — | — | [kernel] | perf_event_intel: Add Haswell PEBS record support |  | generic code, tag [kernel] | 3.10.0-83 |
| CANDIDATE | — | — | [kernel] | perf_event_intel: Add Haswell PEBS support |  | generic code, tag [kernel] | 3.10.0-83 |
| CANDIDATE | — | — | [kernel] | perf_event_intel: Add mem-loads/stores support for Haswell |  | generic code, tag [kernel] | 3.10.0-83 |
| CANDIDATE | — | — | [kernel] | perf_event_intel: Move NMI clearing to end of PMI handler |  | generic code, tag [kernel] | 3.10.0-83 |
| CANDIDATE | — | — | [kernel] | perf_event_intel: Support full width counting |  | generic code, tag [kernel] | 3.10.0-83 |
| CANDIDATE | — | — | [kernel] | perf_event_intel: Support Haswell/v4 LBR format |  | generic code, tag [kernel] | 3.10.0-83 |
| CANDIDATE | — | — | [trace] | phy: add trace events for mdio accesses |  | generic code, tag [trace] | 3.10.0-1024 |
| CANDIDATE | — | — | [kernel] | pidns: alloc_pid() leaks pid_namespace if child_reaper is exiting |  | CONFIG_PID_NS=y in A37 | 3.10.0-335 |
| CANDIDATE | — | — | [kernel] | pm/sleep: Fix request_firmware() error at resume |  | generic code, tag [kernel] | 3.10.0-515 |
| CANDIDATE | — | — | [perf] | pmu: Add proper error handling to print_pmu_events() |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | pmu: Let pmu's with no events show up on perf list |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | power/hibernate/memory_hotplug: Rework mutual exclusion |  | generic code, tag [kernel] | 3.10.0-135 |
| CANDIDATE | — | — | [kernel] | power/hibernate: Create memory bitmaps after freezing user space |  | generic code, tag [kernel] | 3.10.0-135 |
| CANDIDATE | — | — | [kernel] | power/qos: Add pm_qos_request tracepoints |  | generic code, tag [kernel] | 3.10.0-12 |
| CANDIDATE | — | — | [kernel] | power/qos: Add pm_qos_update_target/flags tracepoints |  | generic code, tag [kernel] | 3.10.0-12 |
| CANDIDATE | — | — | [kernel] | power/qos: correct the valid range of pm_qos_class |  | generic code, tag [kernel] | 3.10.0-12 |
| CANDIDATE | — | — | [kernel] | power: Print last wakeup source on failed wakeup_count write |  | generic code, tag [kernel] | 3.10.0-12 |
| CANDIDATE | — | — | [kernel] | power: print physical addresses consistently with other parts of kernel |  | generic code, tag [kernel] | 3.10.0-12 |
| CANDIDATE | — | — | [kernel] | power: Remove ftrace_stop/start() from suspend and hibernate |  | generic code, tag [kernel] | 3.10.0-154 |
| CANDIDATE | — | — | [kernel] | power: Rework the "runtime idle" helper routine |  | generic code, tag [kernel] | 3.10.0-12 |
| CANDIDATE | — | — | [kernel] | power: shorten freezer sleep time using exponential backoff |  | generic code, tag [kernel] | 3.10.0-12 |
| CANDIDATE | — | — | [kernel] | power: Warn about system time after resume with pm_trace |  | generic code, tag [kernel] | 3.10.0-12 |
| CANDIDATE | — | — | [kernel] | printk/register_console: prevent adding the same console twice |  | generic code, tag [kernel] | 3.10.0-214 |
| CANDIDATE | — | — | [kernel] | printk: avoid livelock if another CPU printks continuously |  | generic code, tag [kernel] | 3.10.0-523 |
| CANDIDATE | — | — | [kernel] | printk: bump LOG_BUF_SHIFT |  | generic code, tag [kernel] | 3.10.0-197 |
| CANDIDATE | — | — | [kernel] | printk: git rid of sched_delayed message for printk_deferred |  | generic code, tag [kernel] | 3.10.0-465 |
| CANDIDATE | — | — | [perf] | probe: Add --quiet option to suppress output result message |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | probe: Allow weak symbols to be probed |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Check kprobes blacklist when adding new events |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Check the orphaned -x option |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Do not rely on map__load() filter to find symbols |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | probe: Find compilation directory path for lazy matching |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Fix --line to handle aliased symbols in glibc |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Fix a precedence bug |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Fix ARM 32 building error |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Fix bug with global variables handling |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Fix compiles due to declarations using perf_probe_point |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Fix crash in dwarf_getcfi_elf |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | probe: Fix failure to add multiple probes without debuginfo |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Fix get_real_path to free allocated memory in error path |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Fix possible double free on error |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Fix probing kretprobes |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | probe: Fix segfault if passed with '' |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Fix segfault when probe with lazy_line to file |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Fix to fall back to find probe point in symbols |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | probe: Fix to get ummapped symbol address on kernel |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Fix to handle aliased symbols in glibc |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Fix to handle optimized not-inlined functions |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Fix to track down unnamed union/structure members |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Handle strdup() failure |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Ignore tail calls to probed functions |  | generic code, tag [perf] | 3.10.0-280 |
| CANDIDATE | — | — | [perf] | probe: Improve detection of file/function name in the probe: pattern |  | generic code, tag [perf] | 3.10.0-280 |
| CANDIDATE | — | — | [perf] | probe: ppc64le: Fix ppc64 ABIv2 symbol decoding |  | generic code, tag [perf] | 3.10.0-280 |
| CANDIDATE | — | — | [perf] | probe: ppc64le: Fixup function entry if using kallsyms lookup |  | generic code, tag [perf] | 3.10.0-280 |
| CANDIDATE | — | — | [perf] | probe: ppc64le: Prefer symbol table lookup over DWARF |  | generic code, tag [perf] | 3.10.0-280 |
| CANDIDATE | — | — | [perf] | probe: ppc: Enable matching against dot symbols automatically |  | generic code, tag [perf] | 3.10.0-280 |
| CANDIDATE | — | — | [perf] | probe: ppc: Fix symbol fixup issues due to ELF type |  | generic code, tag [perf] | 3.10.0-280 |
| CANDIDATE | — | — | [perf] | probe: ppc: Use the right prefix when ignoring SyS symbols on ppc |  | generic code, tag [perf] | 3.10.0-280 |
| CANDIDATE | — | — | [perf] | probe: Propagate error code when write(2) failed |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | probe: Remove bias offset to find probe point by address |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Set retprobe flag when probe in address-based alternative mode |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Support multiple probes on different binaries |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Update man page |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | probe: Use PARSE_OPT_EXCLUSIVE flag |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | probe: Warn if given uprobe event accesses memory on older kernel |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | provide sysfs_show for struct perf_pmu_events_attr |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | ptrace: fix wait_on_bit(JOBCTL_TRAPPING_BIT) on big endian machines |  | generic code, tag [kernel] | 3.10.0-768 |
| CANDIDATE | — | — | [kernel] | ptrace: get_dumpable() incorrect tests | CVE-2013-2929 | generic code, tag [kernel] | 3.10.0-171 |
| CANDIDATE | — | — | [kernel] | qrwlock: Build wrapper headers and functions on top of qrwlock |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | — | — | [kernel] | radix-tree, shmem: introduce radix_tree_iter_next() |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | — | — | [kernel] | radix-tree: add an explicit of bitops.h |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | — | — | [kernel] | radix-tree: introduce CONFIG_RADIX_TREE_MULTIORDER |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | — | — | [kernel] | radix-tree: RHEL-only kABI patch |  | generic code, tag [kernel] | 3.10.0-752 |
| CANDIDATE | — | — | [kernel] | rcu: create rcu threads only for online cpus at boot time |  | generic code, tag [kernel] | 3.10.0-339 |
| CANDIDATE | — | — | [kernel] | rcutree: Fix panic_on_rcu_stall() |  | generic code, tag [kernel] | 3.10.0-720 |
| CANDIDATE | — | — | [kernel] | reboot: add orderly_reboot for graceful reboot |  | generic code, tag [kernel] | 3.10.0-284 |
| CANDIDATE | — | — | [perf] | record: Add new -I option to sample interrupted machine state |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | record: Do not save pathname in ./debug/.build-id directory for vmlinux |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | record: Document --group option |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | record: Get rid of -l option from Documentation |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | record: Show precise number of samples |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | record: Support recording running/enabled time |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | redhat: bump RHEL_MINOR to 1 |  | generic code, tag [kernel] | 3.10.0-160 |
| CANDIDATE | — | — | [kernel] | redhat: fix kABI for dynamic ftrace on powerpc |  | generic code, tag [kernel] | 3.10.0-911 |
| CANDIDATE | — | — | [perf] | Remove type specific target pointers |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [ipc] | reorganize initialization of kern_ipc_perm.seq |  | generic code, tag [ipc] | 3.10.0-1067 |
| CANDIDATE | — | — | [kernel] | replace some read_lock(&tasklist_lock)'s with tasklist_read_lock() |  | generic code, tag [kernel] | 3.10.0-468 |
| CANDIDATE | — | — | [kernel] | replace write_lock_irq(&tasklist_lock) with tasklist_write_lock_irq() |  | generic code, tag [kernel] | 3.10.0-468 |
| CANDIDATE | — | — | [perf] | report: Add --branch-history option |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | report: Don't allow empty argument for '-t' |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | report: Don't call map__kmap if map is NULL |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | report: Fix -T/--threads option to work again |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | report: Fix branch stack mode cannot be set |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | report: Get rid of report__inc_stat() |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | report: In branch stack mode use address history sorting |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | report: Show progress bar for output resorting |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | reservation: cross-device reservation support |  | generic code, tag [kernel] | 3.10.0-50 |
| CANDIDATE | — | — | [kernel] | resource: Add @flags to region_intersects() |  | generic code, tag [kernel] | 3.10.0-489 |
| CANDIDATE | — | — | [kernel] | resource: Add region_intersects_pmem() |  | generic code, tag [kernel] | 3.10.0-489 |
| CANDIDATE | — | — | [kernel] | Restructure the MCS lock defines and locking & Move mcs_spinlock.h into kernel/locking/ |  | generic code, tag [kernel] | 3.10.0-126 |
| CANDIDATE | — | — | [kernel] | revert "platform/uv: Add adjustable set memory block size function" |  | generic code, tag [kernel] | 3.10.0-952 |
| CANDIDATE | — | — | [kernel] | revert "printk: enable interrupts before calling console_trylock_for_printk()" |  | generic code, tag [kernel] | 3.10.0-465 |
| CANDIDATE | — | — | [kernel] | revert "sched/topology: Introduce NUMA identity node sched domain" |  | generic code, tag [kernel] | 3.10.0-954 |
| CANDIDATE | — | — | [kernel] | revert "sched: Change cfs_rq load avg to unsigned long" |  | generic code, tag [kernel] | 3.10.0-474 |
| CANDIDATE | — | — | [kernel] | revert "sched: Compute runnable load avg in cpu_load and cpu_avg_load_per_task" |  | generic code, tag [kernel] | 3.10.0-474 |
| CANDIDATE | — | — | [kernel] | revert "sched: Consider runnable load average in move_tasks()" |  | generic code, tag [kernel] | 3.10.0-474 |
| CANDIDATE | — | — | [kernel] | revert "sched: Fix cfs_rq->task_h_load calculation" |  | generic code, tag [kernel] | 3.10.0-474 |
| CANDIDATE | — | — | [kernel] | revert "sched: Mark __schedule() stack frame as non-standard" |  | generic code, tag [kernel] | 3.10.0-441 |
| CANDIDATE | — | — | [kernel] | revert "sched: Move h_load calculation to task_h_load()" |  | generic code, tag [kernel] | 3.10.0-474 |
| CANDIDATE | — | — | [kernel] | revert "x86/panic: Replace CONFIG_KEXEC_CORE with CONFIG_KEXEC" |  | generic code, tag [kernel] | 3.10.0-590 |
| CANDIDATE | — | — | [kernel] | revert "x86/platform/uv: Add adjustable set memory block size function" |  | generic code, tag [kernel] | 3.10.0-952 |
| CANDIDATE | — | — | [kernel] | revert cpuset: fix a warning when clearing configured masks in old hierarchy |  | generic code, tag [kernel] | 3.10.0-951 |
| CANDIDATE | — | — | [kernel] | rh_kabi: add RH_KABI_DEPRECATE_FN |  | generic code, tag [kernel] | 3.10.0-347 |
| CANDIDATE | — | — | [kernel] | rh_kabi: Provide better error messages for size and align checks |  | generic code, tag [kernel] | 3.10.0-609 |
| CANDIDATE | — | — | [kernel] | rh_taint: Add management approval to documentation |  | generic code, tag [kernel] | 3.10.0-758 |
| CANDIDATE | — | — | [kernel] | rh_taint: Document functions |  | generic code, tag [kernel] | 3.10.0-728 |
| CANDIDATE | — | — | [kernel] | rh_taint: introduce mark_hardware_deprecated() |  | generic code, tag [kernel] | 3.10.0-449 |
| CANDIDATE | — | — | [kernel] | rh_taint: Remove taint and update unsupported hardware message |  | generic code, tag [kernel] | 3.10.0-116 |
| CANDIDATE | — | — | [kernel] | rhel: switch get_fo_extend over to using the registered ops |  | generic code, tag [kernel] | 3.10.0-923 |
| CANDIDATE | — | — | [locking] | rwsem: Exit read lock slowpath if queue empty & no writer |  | generic code, tag [locking] | 3.10.0-1033 |
| CANDIDATE | — | — | [perf] | sched replay: Alloc the memory of pid_to_task dynamically to adapt to the unexpected change of pid_max |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | sched replay: Fix the EMFILE error caused by the limitation of the maximum open files |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | sched replay: Fix the segmentation fault problem caused by pr_err in threads |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | sched replay: Handle the dead halt of sem_wait when create_tasks() fails for any task |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | sched replay: Increase the MAX_PID value to fix assertion failure problem |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | sched replay: Realloc the memory of pid_to_task stepwise to adapt to the different pid_max configurations |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | sched replay: Support using -f to override perf.data file ownership |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | sched replay: Use replay_repeat to calculate the runavg of cpu usage instead of the default value 10 |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | sched replay: Use struct task_desc instead of struct task_task for correct meaning |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | sched,numa: limit amount of virtual memory scanned in task_numa_work |  | generic code, tag [kernel] | 3.10.0-320 |
| CANDIDATE | — | — | [kernel] | sched/clock: add another clock for use with the soft lockup watchdog |  | generic code, tag [kernel] | 3.10.0-302 |
| CANDIDATE | — | — | [kernel] | sched/core: Rearrange schedstats code to more closely match upstream |  | generic code, tag [kernel] | 3.10.0-456 |
| CANDIDATE | — | — | [kernel] | sched/core: Use TASK_ON_RQ_MIGRATING in __migrate_swap_task |  | generic code, tag [kernel] | 3.10.0-1092 |
| CANDIDATE | — | — | [kernel] | sched/cputime: atomically increment stime & utime |  | generic code, tag [kernel] | 3.10.0-182 |
| CANDIDATE | — | — | [kernel] | sched/deadline, rtmutex: Fix open coded check in rt_mutex_waiter_less() |  | generic code, tag [kernel] | 3.10.0-443 |
| CANDIDATE | — | — | [kernel] | sched/debug: fix schedstats-induced sched domain corruption |  | generic code, tag [kernel] | 3.10.0-927 |
| CANDIDATE | — | — | [kernel] | sched/fair: Disable tg load_avg/runnable_avg update for root_task_group |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched/fair: Move hot load_avg/runnable_avg into separate cacheline |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched/fair: Stop searching for tasks in idle_balance if there are runnable tasks |  | generic code, tag [kernel] | 3.10.0-175 |
| CANDIDATE | — | — | [kernel] | sched/preempt, locking: Rework local_bh_{dis, en}able() |  | generic code, tag [kernel] | 3.10.0-549 |
| CANDIDATE | — | — | [kernel] | sched/time: fix lock inversion in thread_group_cputime |  | generic code, tag [kernel] | 3.10.0-182 |
| CANDIDATE | — | — | [kernel] | sched: Add 'flags' argument to sched_{set, get}attr() syscalls |  | generic code, tag [kernel] | 3.10.0-474 |
| CANDIDATE | — | — | [kernel] | sched: Allow calculate_imbalance() to move idle cpus |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched: Change "has_capacity" to "has_free_capacity" |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched: Clean up update_sg_lb_stats() a bit |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched: CONFIG_SCHEDSTATS kabi fix |  | generic code, tag [kernel] | 3.10.0-481 |
| CANDIDATE | — | — | [kernel] | sched: cope with kabi constraints |  | generic code, tag [kernel] | 3.10.0-290 |
| CANDIDATE | — | — | [kernel] | sched: disable autogroups by default |  | generic code, tag [kernel] | 3.10.0-9 |
| CANDIDATE | — | — | [kernel] | sched: Disambiguate existing/remaining "capacity" usage |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched: Enable SCHED_DEADLINE |  | generic code, tag [kernel] | 3.10.0-886 |
| CANDIDATE | — | — | [kernel] | sched: Fix 'local->avg_load > busiest->avg_load' case in fix_small_imbalance() |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched: Fix 'local->avg_load > sds->avg_load' case in calculate_imbalance() |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched: Fix cfs_rq->task_h_load calculation |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched: Fix group power_orig computation |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched: fix NUMA balancing when !SCHED_DEBUG |  | generic code, tag [kernel] | 3.10.0-35 |
| CANDIDATE | — | — | [kernel] | sched: Fix potential kabi breakage on wait_bit_queue |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | — | — | [kernel] | sched: fix race in migrate_swap_stop |  | generic code, tag [kernel] | 3.10.0-35 |
| CANDIDATE | — | — | [kernel] | sched: Fix redo label position |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched: Fix the group_capacity computation |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched: fix typo on topology error message |  | generic code, tag [kernel] | 3.10.0-707 |
| CANDIDATE | — | — | [kernel] | sched: Introduce task_rcu_dereference() and try_get_task_struct() |  | generic code, tag [kernel] | 3.10.0-879 |
| CANDIDATE | — | — | [kernel] | sched: Keep upstream 'local' namespace |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched: Make calculate_imbalance() independent |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched: make lockless sys_times kABI-friendly |  | generic code, tag [kernel] | 3.10.0-182 |
| CANDIDATE | — | — | [kernel] | sched: Make update_sd_pick_busiest() return 'true' on a busier sd |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched: monolithic code dump of what is being pushed |  | generic code, tag [kernel] | 3.10.0-35 |
| CANDIDATE | — | — | [perf] | sched: No need to keep the session around |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | sched: Output warning when the 'isolcpus=' kernel parameter is invalid |  | generic code, tag [kernel] | 3.10.0-351 |
| CANDIDATE | — | — | [kernel] | sched: Prepare for smp_mb__{before, after}_atomic() |  | generic code, tag [kernel] | 3.10.0-153 |
| CANDIDATE | — | — | [kernel] | sched: Reduce local_group logic |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched: Remove "power" from 'struct numa_stats' |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched: Rework and comment the group_capacity code |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched: rt: Reduce rq lock contention by eliminating locking of non-feasible target |  | generic code, tag [kernel] | 3.10.0-247 |
| CANDIDATE | — | — | [kernel] | sched: Shrink sg_lb_stats and play memset games |  | generic code, tag [kernel] | 3.10.0-342 |
| CANDIDATE | — | — | [kernel] | sched: Use new KABI macros |  | generic code, tag [kernel] | 3.10.0-214 |
| CANDIDATE | — | — | [perf] | script perl: Removing event cache as it's no longer needed |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | script python: Removing event cache as it's no longer needed |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | script: Add Python script to export to postgresql |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | script: No need to lookup thread twice |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | script: Support using -f to override perf.data file ownership |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | scripting perl: Force to use stdbool |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | scripting python: Extend interface to export data in a database-friendly way |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | scripting: No need to pass thread twice to the scripting callbacks |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | seccomp: Remove nr parameter from secure_computing |  | CONFIG_SECCOMP=y in A37 | 3.10.0-911 |
| CANDIDATE | — | — | [ipc] | sem.c: fully initialize sem_array before making it visible |  | generic code, tag [ipc] | 3.10.0-1160.18.1 |
| CANDIDATE | — | — | [kernel] | seqcount: backport __seqcount_init() |  | generic code, tag [kernel] | 3.10.0-262 |
| CANDIDATE | — | — | [kernel] | seqlock: add irqsave variant of read_seqbegin_or_lock |  | generic code, tag [kernel] | 3.10.0-182 |
| CANDIDATE | — | — | [perf] | session: Add perf_session__deliver_synth_event() |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | session: Always initialize ordered_events |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | session: Do not fail on processing out of order event |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | session: Remove perf_session from dump_event |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | session: Remove perf_session from some deliver event routines |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | session: Remove perf_session from warn_errors signature |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | session: Remove wrappers to machines__find |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [ipc] | shm.c: add split function to shm_vm_ops |  | generic code, tag [ipc] | 3.10.0-907 |
| CANDIDATE | — | — | [perf] | Simplify the branch stack check |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | smp, cpumask: Use non-atomic cpumask_{set, clear}_cpu() |  | generic code, tag [kernel] | 3.10.0-1131 |
| CANDIDATE | — | — | [kernel] | smp/generic-ipi/locking: Fix misleading smp_call_function_any() description |  | generic code, tag [kernel] | 3.10.0-136 |
| CANDIDATE | — | — | [kernel] | smp/generic-ipi: Kill unnecessary variable - csd_flags |  | generic code, tag [kernel] | 3.10.0-136 |
| CANDIDATE | — | — | [kernel] | smp: fix generic_exec_single indentation |  | generic code, tag [kernel] | 3.10.0-136 |
| CANDIDATE | — | — | [kernel] | smp: flush any pending IPI callbacks before CPU offline |  | generic code, tag [kernel] | 3.10.0-197 |
| CANDIDATE | — | — | [kernel] | smp: free related resources when failure occurs in hotplug_cfd() |  | generic code, tag [kernel] | 3.10.0-136 |
| CANDIDATE | — | — | [kernel] | smp: quit unconditionally enabling irqs in on_each_cpu_mask() |  | generic code, tag [kernel] | 3.10.0-136 |
| CANDIDATE | — | — | [kernel] | smp: remove cpumask_ipi |  | generic code, tag [kernel] | 3.10.0-136 |
| CANDIDATE | — | — | [kernel] | smp: use lockless list for smp_call_function_single |  | generic code, tag [kernel] | 3.10.0-136 |
| CANDIDATE | — | — | [kernel] | spec_ctrl: sync with upstream cpu_set_bug_bits() | CVE-2018-3620 | generic code, tag [kernel] | 3.10.0-933 |
| CANDIDATE | — | — | [ipc] | standardize code comments |  | generic code, tag [ipc] | 3.10.0-1067 |
| CANDIDATE | — | — | [perf] | stat: Add support for per-pkg counters |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | stat: Add support for snapshot counters |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | stat: Always correctly indent ratio column |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | stat: Fix IPC and other formulas with -A |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | stat: Make read_counter work over the thread dimension |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | stat: Output running time and run/enabled ratio in CSV mode |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | stat: Report unsupported events properly |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | stat: Use perf_evsel__read_cb in read_counter |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | stat: Use read_counter in read_counter_aggr |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | stop using 'pK' for /proc/kallsyms pointer values |  | generic code, tag [kernel] | 3.10.0-835 |
| CANDIDATE | — | — | [kernel] | stop_machine: fix race between stop_two_cpus and stop_cpus |  | generic code, tag [kernel] | 3.10.0-50 |
| CANDIDATE | — | — | [init] | stricter checking of major:minor root= values |  | generic code, tag [init] | 3.10.0-265 |
| CANDIDATE | — | — | [kernel] | subject timers: Reduce future __run_timers() latency for newly emptied list |  | generic code, tag [kernel] | 3.10.0-244 |
| CANDIDATE | — | — | [perf] | symbols: Accept symbols starting at address 0 |  | generic code, tag [perf] | 3.10.0-677 |
| CANDIDATE | — | — | [perf] | symbols: Allow symbol alias when loading map for symbol name |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | symbols: Convert lseek + read to pread |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | symbols: debuglink should take symfs option into account |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | symbols: Define EM_AARCH64 for older OSes |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | symbols: Define STT_GNU_IFUNC for glibc 2.9 and older |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | symbols: Fallback to kallsyms when using the minimal 'ELF' loader |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | symbols: Fix use after free in filename__read_build_id |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | symbols: Ignore mapping symbols on aarch64 |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | symbols: Introduce 'for' method to iterate over the symbols with a given name |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | symbols: Introduce method to iterate symbols ordered by name |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | symbols: Move bfd_demangle stubbing to its only user |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | symbols: Preparation for compressed kernel module support |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | symbols: Return the first entry with a given name in find_by_name method |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | symbols: Save DSO loading errno to better report errors |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | symbols: Support to read compressed module from build-id cache |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | sys.c: fix potential Spectre v1 issue | CVE-2018-3693 | generic code, tag [kernel] | 3.10.0-932 |
| CANDIDATE | — | — | [kernel] | sys: do_sysinfo() use get_monotonic_boottime() |  | generic code, tag [kernel] | 3.10.0-506 |
| CANDIDATE | — | — | [kernel] | sysctl.c: fix out-of-bounds access when setting file-max |  | generic code, tag [kernel] | 3.10.0-1064 |
| CANDIDATE | — | — | [kernel] | sysctl: Add missing range check in do_proc_dointvec_minmax_conv |  | generic code, tag [kernel] | 3.10.0-1063 |
| CANDIDATE | — | — | [kernel] | sysctl: detect overflows when converting to int |  | generic code, tag [kernel] | 3.10.0-347 |
| CANDIDATE | — | — | [kernel] | sysctl: Use do_proc_do[u]intvec_conv for bounds-checking |  | generic code, tag [kernel] | 3.10.0-1063 |
| CANDIDATE | — | — | [kernel] | sysrq, rcu: suppress RCU stall warnings while sysrq runs |  | generic code, tag [kernel] | 3.10.0-364 |
| CANDIDATE | — | — | [kernel] | system_certificate: use real contents instead of macro GLOBAL() |  | generic code, tag [kernel] | 3.10.0-75 |
| CANDIDATE | — | — | [perf] | target: Simplify handling of strerror_r return |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | tasklist_lock: Change from rwlock_t to qrwlock_t |  | generic code, tag [kernel] | 3.10.0-587 |
| CANDIDATE | — | — | [kernel] | taskstats: add nla_nest_cancel() for failure processing between nla_nest_start() and nla_nest_end() |  | CONFIG_TASKSTATS=y in A37 | 3.10.0-577 |
| CANDIDATE | — | — | [perf] | test: Fix dso cache testcase |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | test: Fix dwarf unwind using libunwind |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | test: fix typo in python test |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | tests: Add interrupted state sample parsing test |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | tests: Do not rely on dso__data_read_offset() to open dso |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | tests: Fix attr tests size values to cope with machine state on interrupt ABI changes |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | tests: Fix typo in sample-parsing.c |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | tests: Remove misplaced __maybe_unused |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | tests: Use thread->mg->machine |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | thermal: Delete power-limit-notification console messages |  | generic code, tag [kernel] | 3.10.0-77 |
| CANDIDATE | — | — | [kernel] | thermal: Disable power limit notification interrupt by default |  | generic code, tag [kernel] | 3.10.0-77 |
| CANDIDATE | — | — | [perf] | thread: Adopt resolve_callchain method from machine |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | tick-sched: add housekeeping_mask cpumask |  | generic code, tag [kernel] | 3.10.0-540 |
| CANDIDATE | — | — | [kernel] | tick-sched: Update nohz load even if tick already stopped |  | generic code, tag [kernel] | 3.10.0-1126.1 |
| CANDIDATE | — | — | [kernel] | tick/nohz: Prevent bogus softirq pending warning |  | generic code, tag [kernel] | 3.10.0-996 |
| CANDIDATE | — | — | [perf] | Tighten (and fix) the grouping condition |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | time/alarmtimer: Fix bug where relative alarm timers were treated as absolute |  | generic code, tag [kernel] | 3.10.0-144 |
| CANDIDATE | — | — | [kernel] | time/clocksource: Make delta calculation a function |  | generic code, tag [kernel] | 3.10.0-186 |
| CANDIDATE | — | — | [kernel] | time/clocksource: Move cycle_last validation to core code |  | generic code, tag [kernel] | 3.10.0-186 |
| CANDIDATE | — | — | [kernel] | time/tick: Make oneshot broadcast robust vs. CPU offlining |  | generic code, tag [kernel] | 3.10.0-8 |
| CANDIDATE | — | — | [kernel] | time: export nsec_to_jiffies64 |  | generic code, tag [kernel] | 3.10.0-262 |
| CANDIDATE | — | — | [kernel] | time: menu governor broken when nohz=off |  | generic code, tag [kernel] | 3.10.0-69 |
| CANDIDATE | — | — | [kernel] | time: Protect posix clock array access against speculation | CVE-2018-3693 | generic code, tag [kernel] | 3.10.0-932 |
| CANDIDATE | — | — | [perf] | timechart: Fix SIBGUS error on sparc64 |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | timechart: Support using -f to override perf.data file ownership |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | timekeeping: Add timekeeping_get_delta() |  | generic code, tag [kernel] | 3.10.0-380 |
| CANDIDATE | — | — | [kernel] | timekeeping: Call update_wall_time outside the jiffies lock |  | generic code, tag [kernel] | 3.10.0-238 |
| CANDIDATE | — | — | [kernel] | timer: don't let base->timer_jiffies go backwards |  | generic code, tag [kernel] | 3.10.0-1102 |
| CANDIDATE | — | — | [kernel] | timer: Fix lockup in __run_timers() caused by large jiffies/timer_jiffies delta |  | generic code, tag [kernel] | 3.10.0-1160.8.1 |
| CANDIDATE | — | — | [kernel] | timer: Fix potential bug in requeue_timers() |  | generic code, tag [kernel] | 3.10.0-1160.20.1 |
| CANDIDATE | — | — | [perf] | top: Fix a segfault when kernel map is restricted |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | top: Fix SIGBUS on sparc64 |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | trace/bpf_trace.c: work around gcc-4.4.4 anon union initialization bug |  | CONFIG_FTRACE=y in A37 | 3.10.0-913 |
| CANDIDATE | — | — | [perf] | trace: Add man page entry for --event |  | CONFIG_FTRACE=y in A37 | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | trace: Allow mixing with other events |  | CONFIG_FTRACE=y in A37 | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | trace: Check if tracing is enabled in trace_puts() |  | CONFIG_FTRACE=y in A37 | 3.10.0-236 |
| CANDIDATE | — | — | [kenrel] | trace: Check permission only for parent tracepoint event |  | CONFIG_FTRACE=y in A37 | 3.10.0-315 |
| CANDIDATE | — | — | [perf] | trace: Disable events and drain events when forked workload ends |  | CONFIG_FTRACE=y in A37 | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | trace: Dump stack on segfaults |  | CONFIG_FTRACE=y in A37 | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | trace: Enable events when doing system wide tracing and starting a workload |  | CONFIG_FTRACE=y in A37 | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | trace: Filter out the trace pid when no threads are specified |  | CONFIG_FTRACE=y in A37 | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | trace: Fix error reporting for evsel pgfault constructor |  | CONFIG_FTRACE=y in A37 | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | trace: Fix SIGBUS failures due to misaligned accesses |  | CONFIG_FTRACE=y in A37 | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | trace: Fix summary_only option |  | CONFIG_FTRACE=y in A37 | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | trace: Fix syscall enter formatting bug |  | CONFIG_FTRACE=y in A37 | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | trace: Handle legacy syscalls tracepoints |  | CONFIG_FTRACE=y in A37 | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | trace: Handle multiple threads better wrt syscalls being intermixed |  | CONFIG_FTRACE=y in A37 | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | trace: insufficient syscall number validation in perf and ftrace subsystems | CVE-2014-7825 CVE-2014-7826 | CONFIG_FTRACE=y in A37 | 3.10.0-217 |
| CANDIDATE | — | — | [perf] | trace: Introduce --filter-pids |  | CONFIG_FTRACE=y in A37 | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | trace: Let the perf_evlist__mmap autosize the number of pages to use |  | CONFIG_FTRACE=y in A37 | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | trace: Make register/unregister_ftrace_command __init |  | CONFIG_FTRACE=y in A37 | 3.10.0-133 |
| CANDIDATE | — | — | [perf] | trace: No need to enable evsels for workload started from perf |  | CONFIG_FTRACE=y in A37 | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | trace: Only insert blank duration bracket when tracing syscalls |  | CONFIG_FTRACE=y in A37 | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | trace: Print thread info when following children |  | CONFIG_FTRACE=y in A37 | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | trace: Provide a better explanation when mmap fails |  | CONFIG_FTRACE=y in A37 | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | trace: Remove ftrace_stop/start() from reading the trace file |  | CONFIG_FTRACE=y in A37 | 3.10.0-154 |
| CANDIDATE | — | — | [kernel] | trace: Remove function_trace_stop and HAVE_FUNCTION_TRACE_MCOUNT_TEST |  | CONFIG_FTRACE=y in A37 | 3.10.0-154 |
| CANDIDATE | — | — | [kernel] | trace: Remove unused function ftrace_off_permanent() |  | CONFIG_FTRACE=y in A37 | 3.10.0-154 |
| CANDIDATE | — | — | [perf] | trace: Separate routine that handles an event from the one that reads it |  | CONFIG_FTRACE=y in A37 | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | trace: Support --events foo:bar --no-syscalls |  | CONFIG_FTRACE=y in A37 | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | trace: Support using -f to override perf.data file ownership |  | CONFIG_FTRACE=y in A37 | 3.10.0-256 |
| CANDIDATE | — | — | [kernel] | tracing/probes: Add fetch{, _size} member into deref fetch method |  | CONFIG_FTRACE=y in A37 | 3.10.0-540 |
| CANDIDATE | — | — | [kernel] | tracing/uprobes: Rename uprobe_(trace, perf)_print() functions |  | CONFIG_FTRACE=y in A37 | 3.10.0-917 |
| CANDIDATE | — | — | [kernel] | tracing: Make alloc_rh_data/destroy_rh_data public |  | CONFIG_FTRACE=y in A37 | 3.10.0-934 |
| CANDIDATE | — | — | [kernel] | uaccess.h: Include linux/sched.h |  | generic code, tag [kernel] | 3.10.0-641 |
| CANDIDATE | — | — | [kernel] | uapi: Fix exposed undefined u32 and u64 types to userland through /usr/include/linux/md_p.h |  | generic code, tag [kernel] | 3.10.0-655 |
| CANDIDATE | — | — | [kernel] | uapi: Include socket.h in rdma_user_cm.h |  | generic code, tag [kernel] | 3.10.0-192 |
| CANDIDATE | — | — | [kernel] | uapi: mark wmi.h to be included in kernel-headers |  | generic code, tag [kernel] | 3.10.0-927 |
| CANDIDATE | — | — | [perf] | ui/tui: Print backtrace symbols when segfault occurs |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | ui/tui: Show fatal error message only if exists |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [perf] | Update shadow timestamp before add event |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [perf] | Update userspace page info for software event |  | generic code, tag [perf] | 3.10.0-256 |
| CANDIDATE | — | — | [ipc] | use device_initcall |  | generic code, tag [ipc] | 3.10.0-1067 |
| CANDIDATE | — | — | [kernel] | Use new KABI macros |  | generic code, tag [kernel] | 3.10.0-214 |
| CANDIDATE | — | — | [perf] | Use POLLIN instead of POLL_IN for perf poll data in flag |  | generic code, tag [perf] | 3.10.0-251 |
| CANDIDATE | — | — | [kernel] | uswsusp: Disable when securelevel is set |  | generic code, tag [kernel] | 3.10.0-52 |
| CANDIDATE | — | — | [ipc] | util.c: further variable name cleanups |  | generic code, tag [ipc] | 3.10.0-1067 |
| CANDIDATE | — | — | [ipc] | util.c: remove unnecessary work pending test |  | generic code, tag [ipc] | 3.10.0-1067 |
| CANDIDATE | — | — | [kernel] | wait: Fix __wait_on_atomic_t() to call the action func if the counter != 0 |  | generic code, tag [kernel] | 3.10.0-264 |
| CANDIDATE | — | — | [kernel] | wait: fix bit_waitqueue() to allow the use of vmalloc'd memory |  | generic code, tag [kernel] | 3.10.0-812 |
| CANDIDATE | — | — | [kernel] | wait: fix new kernel-doc warning in wait.c |  | generic code, tag [kernel] | 3.10.0-264 |
| CANDIDATE | — | — | [kernel] | wait: Make the __wait_event*() interface more friendly |  | generic code, tag [kernel] | 3.10.0-181 |
| CANDIDATE | — | — | [kernel] | watchdog, sysctl: fix pointer to watch_cpumask in kernel_table |  | generic code, tag [kernel] | 3.10.0-485 |
| CANDIDATE | — | — | [kernel] | watchdog: add sysctl knob hardlockup_panic |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | — | — | [kernel] | watchdog: add units for timeout values in kerneldoc |  | generic code, tag [kernel] | 3.10.0-899 |
| CANDIDATE | — | — | [kernel] | watchdog: avoid race between lockup detector suspend/resume and CPU hotplug |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | — | — | [kernel] | watchdog: avoid races between /proc handlers and CPU hotplug |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | — | — | [kernel] | watchdog: convert printk/pr_warning to pr_foo() |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | — | — | [kernel] | watchdog: fix race between proc_watchdog_thresh() and watchdog_timer_fn() |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | — | — | [kernel] | watchdog: fix some typos |  | generic code, tag [kernel] | 3.10.0-899 |
| CANDIDATE | — | — | [kernel] | watchdog: is_hardlockup can be boolean |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | — | — | [kernel] | watchdog: keep rhel7 old-behaviour compatibility |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | — | — | [kernel] | watchdog: move NMI function header declarations from watchdog.h to nmi.h |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | — | — | [kernel] | watchdog: perform all-CPU backtrace in case of hard lockup |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | — | — | [kernel] | watchdog: prevent false hardlockup on overloaded system |  | generic code, tag [kernel] | 3.10.0-616 |
| CANDIDATE | — | — | [kernel] | watchdog: Prevent false positives with turbo modes |  | generic code, tag [kernel] | 3.10.0-848 |
| CANDIDATE | — | — | [kernel] | watchdog: print traces for all cpus on lockup detection |  | generic code, tag [kernel] | 3.10.0-239 |
| CANDIDATE | — | — | [kernel] | watchdog: remove preemption restrictions when restarting lockup detector |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | — | — | [kernel] | watchdog: remove {get\|put}_online_cpus() from watchdog_{park\|unpark}_threads() |  | generic code, tag [kernel] | 3.10.0-403 |
| CANDIDATE | — | — | [kernel] | watchdog: touch_nmi_watchdog should only touch local cpu not every one |  | generic code, tag [kernel] | 3.10.0-347 |
| CANDIDATE | — | — | [kernel] | watchdog: use nmi registers snapshot in hardlockup handler |  | generic code, tag [kernel] | 3.10.0-1160.19.1 |
| CANDIDATE | — | — | [ipc] | whitespace cleanup |  | generic code, tag [ipc] | 3.10.0-1067 |
| CANDIDATE | — | — | [kernel] | workqueue: handle NUMA_NO_NODE for unbound pool_workqueue |  | generic code, tag [kernel] | 3.10.0-675 |
| CANDIDATE | — | — | [kernel] | x86, l1tf: add sysfs reporting for l1tf | CVE-2018-3620 | generic code, tag [kernel] | 3.10.0-933 |
| CANDIDATE | — | — | [kernel] | xfs, ext4, splice: avoid the page cache for DAX |  | generic code, tag [kernel] | 3.10.0-486 |
| CANDIDATE | — | — | [kernel] | {net, ib}/mlx5: Add flow steering helpers |  | generic code, tag [kernel] | 3.10.0-1013 |
| CANDIDATE | — | — | [kernel] | {net, ib}/mlx5: MKey/PSV commands via mlx5 ifc |  | generic code, tag [kernel] | 3.10.0-603 |
| CANDIDATE | — | — | [kernel] | {net, ib}/mlx5: Modify QP commands via mlx5 ifc |  | generic code, tag [kernel] | 3.10.0-603 |
| CANDIDATE | — | — | [kernel] | {net, ib}/mlx5: QP/XRCD commands via mlx5 ifc |  | generic code, tag [kernel] | 3.10.0-603 |
| FEATURE-MISSING | 3.14 | [`332ac17ef5bf`](https://git.kernel.org/torvalds/c/332ac17ef5bf) | [kernel] | sched/deadline: Add bandwidth management for SCHED_DEADLINE tasks |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`af6ace764d03`](https://git.kernel.org/torvalds/c/af6ace764d03) | [kernel] | sched/deadline: Add latency tracing for SCHED_DEADLINE tasks |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`755378a47192`](https://git.kernel.org/torvalds/c/755378a47192) | [kernel] | sched/deadline: Add period support for SCHED_DEADLINE tasks |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`239be4a98215`](https://git.kernel.org/torvalds/c/239be4a98215) | [kernel] | sched/deadline: Add SCHED_DEADLINE avg_update accounting |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`2d3d891d3344`](https://git.kernel.org/torvalds/c/2d3d891d3344) | [kernel] | sched/deadline: Add SCHED_DEADLINE inheritance logic |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`1baca4ce16b8`](https://git.kernel.org/torvalds/c/1baca4ce16b8) | [kernel] | sched/deadline: Add SCHED_DEADLINE SMP-related data structures & logic |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`aab03e05e8f7`](https://git.kernel.org/torvalds/c/aab03e05e8f7) | [kernel] | sched/deadline: Add SCHED_DEADLINE structures & implementation |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`3908ac13b550`](https://git.kernel.org/torvalds/c/3908ac13b550) | [kernel] | sched/deadline: Cleanup RT leftovers from {inc/dec}_dl_migration |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`d44753b843e0`](https://git.kernel.org/torvalds/c/d44753b843e0) | [kernel] | sched/deadline: Deny unprivileged users to set/change SCHED_DEADLINE policy |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`3d5f35bdfdef`](https://git.kernel.org/torvalds/c/3d5f35bdfdef) | [kernel] | sched/deadline: Fix bad accounting of nr_running |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`de212f18e92c`](https://git.kernel.org/torvalds/c/de212f18e92c) | [kernel] | sched/deadline: Fix hotplug admission control |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`4df1638cfaf9`](https://git.kernel.org/torvalds/c/4df1638cfaf9) | [kernel] | sched/deadline: Fix overflow to handle period==0 and deadline!=0 |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`88f1ebbc256e`](https://git.kernel.org/torvalds/c/88f1ebbc256e) | [kernel] | sched/deadline: Fix sparse static warnings |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`e4099a5e9294`](https://git.kernel.org/torvalds/c/e4099a5e9294) | [kernel] | sched/deadline: Fix up the smp-affinity mask tests |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`71362650b555`](https://git.kernel.org/torvalds/c/71362650b555) | [kernel] | sched/deadline: No need to check p if dl_se is valid |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`faa5993736d9`](https://git.kernel.org/torvalds/c/faa5993736d9) | [kernel] | sched/deadline: Prevent rt_time growth to infinity |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`1724813d9f2c`](https://git.kernel.org/torvalds/c/1724813d9f2c) | [kernel] | sched/deadline: Remove the sysctl_sched_dl knobs |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`d8bf52311ece`](https://git.kernel.org/torvalds/c/d8bf52311ece) | [kernel] | sched/deadline: Remove unused variables |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`995b9ea44086`](https://git.kernel.org/torvalds/c/995b9ea44086) | [kernel] | sched/deadline: Remove useless dl_nr_total |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`6bfd6d72f51c`](https://git.kernel.org/torvalds/c/6bfd6d72f51c) | [kernel] | sched/deadline: speed up SCHED_DEADLINE pushes with a push-heap |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`eec751ed41a0`](https://git.kernel.org/torvalds/c/eec751ed41a0) | [kernel] | sched/deadline: Switch CPU's presence test order |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.14 | [`82b95800b256`](https://git.kernel.org/torvalds/c/82b95800b256) | [kernel] | sched/deadline: Test for CPU's presence explicitly |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.15 | [`6a7cd273dc4b`](https://git.kernel.org/torvalds/c/6a7cd273dc4b) | [kernel] | sched/deadline: Fix memory leak |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.15 | [`5bfd126e80dc`](https://git.kernel.org/torvalds/c/5bfd126e80dc) | [kernel] | sched/deadline: Fix sched_yield() behavior |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.15 | [`944770ab54ba`](https://git.kernel.org/torvalds/c/944770ab54ba) | [kernel] | sched/deadline: Replace NR_CPUS arrays |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.15 | [`b0827819b0da`](https://git.kernel.org/torvalds/c/b0827819b0da) | [kernel] | sched/deadline: Restrict user params max value to 2^63 ns |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.15 | [`390f3258cb2d`](https://git.kernel.org/torvalds/c/390f3258cb2d) | [kernel] | sched/deadline: Skip in switched_to_dl() if task is current |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.16 | [`f602d0632755`](https://git.kernel.org/torvalds/c/f602d0632755) | [kernel] | sched/deadline: Delete extraneous extern for to_ratio() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.18 | [`a5e7be3b28a2`](https://git.kernel.org/torvalds/c/a5e7be3b28a2) | [kernel] | sched/deadline: Clear dl_entity params when setscheduling to different class |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.18 | [`64be6f1f5f71`](https://git.kernel.org/torvalds/c/64be6f1f5f71) | [kernel] | sched/deadline: Don't replenish from a !SCHED_DEADLINE entity |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.18 | [`177ef2a6315e`](https://git.kernel.org/torvalds/c/177ef2a6315e) | [kernel] | sched/deadline: Fix a precision problem in the microseconds range |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.18 | [`91ec6778ec4f`](https://git.kernel.org/torvalds/c/91ec6778ec4f) | [kernel] | sched/deadline: Fix inter- exclusive cpusets migrations |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.18 | [`aee38ea95419`](https://git.kernel.org/torvalds/c/aee38ea95419) | [kernel] | sched/deadline: Fix races between rt_mutex_setprio() and dl_task_timer() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.19 | [`269ad8015a6b`](https://git.kernel.org/torvalds/c/269ad8015a6b) | [kernel] | sched/deadline: Avoid double-accounting in case of missed deadlines |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.19 | [`d9aade7ae1d2`](https://git.kernel.org/torvalds/c/d9aade7ae1d2) | [kernel] | sched/deadline: Do not try to push tasks if pinned task switches to dl |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.19 | [`f4e9d94a5bf6`](https://git.kernel.org/torvalds/c/f4e9d94a5bf6) | [kernel] | sched/deadline: Don't balance during wakeup if wakee is pinned |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.19 | [`cad3bb32e181`](https://git.kernel.org/torvalds/c/cad3bb32e181) | [kernel] | sched/deadline: Don't check CONFIG_SMP in switched_from_dl() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.19 | [`1d7e974cbf2f`](https://git.kernel.org/torvalds/c/1d7e974cbf2f) | [kernel] | sched/deadline: Don't check SD_BALANCE_FORK |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.19 | [`f82f80426f7a`](https://git.kernel.org/torvalds/c/f82f80426f7a) | [kernel] | sched/deadline: Ensure that updates to exclusive cpusets don't break AC |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.19 | [`804968809c32`](https://git.kernel.org/torvalds/c/804968809c32) | [kernel] | sched/deadline: Fix artificial overrun introduced by yield_task_dl() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.19 | [`7f51412a415d`](https://git.kernel.org/torvalds/c/7f51412a415d) | [kernel] | sched/deadline: Fix bandwidth check/update when migrating tasks between exclusive cpusets |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.19 | [`40767b0dc768`](https://git.kernel.org/torvalds/c/40767b0dc768) | [kernel] | sched/deadline: Fix deadline parameter modification handling |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.19 | [`6a503c3be937`](https://git.kernel.org/torvalds/c/6a503c3be937) | [kernel] | sched/deadline: Fix migration of SCHED_DEADLINE tasks |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.19 | [`6a503c3be937`](https://git.kernel.org/torvalds/c/6a503c3be937) | [kernel] | sched/deadline: Fix migration of SCHED_DEADLINE tasks |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.19 | [`c51b8ab5ad97`](https://git.kernel.org/torvalds/c/c51b8ab5ad97) | [kernel] | sched/deadline: Fix rq->dl.pushable_tasks bug in push_dl_task() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.19 | [`67dfa1b756f2`](https://git.kernel.org/torvalds/c/67dfa1b756f2) | [kernel] | sched/deadline: Implement cancel_dl_timer() to use in switched_from_dl() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.19 | [`36ce98818a4d`](https://git.kernel.org/torvalds/c/36ce98818a4d) | [kernel] | sched/deadline: Introduce start_hrtick_dl() for !CONFIG_SCHED_HRTICK |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.19 | [`6b0a563f3a53`](https://git.kernel.org/torvalds/c/6b0a563f3a53) | [kernel] | sched/deadline: Push task away if the deadline is equal to curr during wakeup |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 3.19 | [`cd66091162d3`](https://git.kernel.org/torvalds/c/cd66091162d3) | [kernel] | sched/deadline: Reschedule from switched_from_dl() after a successful pull |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.0 | [`f638f4dc0880`](https://git.kernel.org/torvalds/c/f638f4dc0880) | [kernel] | livepatch: add missing newline to error message |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.0 | [`32b7eb877165`](https://git.kernel.org/torvalds/c/32b7eb877165) | [kernel] | livepatch: change ARCH_HAVE_LIVE_PATCHING to HAVE_LIVE_PATCHING |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.0 | [`83a90bb13457`](https://git.kernel.org/torvalds/c/83a90bb13457) | [kernel] | livepatch: enforce patch stacking semantics |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.0 | [`99590ba565a2`](https://git.kernel.org/torvalds/c/99590ba565a2) | [kernel] | livepatch: fix deferred module patching order |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.0 | [`e0b561ee78d8`](https://git.kernel.org/torvalds/c/e0b561ee78d8) | [kernel] | livepatch: fix format string in kobject_init_and_add() |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.0 | [`c064a0de1bfb`](https://git.kernel.org/torvalds/c/c064a0de1bfb) | [kernel] | livepatch: fix RCU usage in klp_find_external_symbol() |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.0 | [`8cb2c2dc4727`](https://git.kernel.org/torvalds/c/8cb2c2dc4727) | [kernel] | livepatch: Fix subtle race with coming and going modules |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.0 | [`dbed7ddab967`](https://git.kernel.org/torvalds/c/dbed7ddab967) | [kernel] | livepatch: fix uninitialized return value |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.0 | [`b9dfe0bed999`](https://git.kernel.org/torvalds/c/b9dfe0bed999) | [kernel] | livepatch: handle ancient compilers with more grace |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.0 | [`83ac237a950e`](https://git.kernel.org/torvalds/c/83ac237a950e) | [kernel] | livepatch: kconfig: use bool instead of boolean |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.0 | [`b700e7f03df5`](https://git.kernel.org/torvalds/c/b700e7f03df5) | [kernel] | livepatch: kernel: add support for live patching |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.0 | [`c5f4546593e9`](https://git.kernel.org/torvalds/c/c5f4546593e9) | [kernel] | livepatch: kernel: add TAINT_LIVEPATCH |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-306 |
| FEATURE-MISSING | 4.0 | [`b5bfc51707f1`](https://git.kernel.org/torvalds/c/b5bfc51707f1) | [kernel] | livepatch: move x86 specific ftrace handler code to arch/x86 |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.0 | [`c4ce0da8ec62`](https://git.kernel.org/torvalds/c/c4ce0da8ec62) | [kernel] | livepatch: RCU protect struct klp_func all the time when used in klp_ftrace_handler() |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.0 | [`12cf89b550d1`](https://git.kernel.org/torvalds/c/12cf89b550d1) | [kernel] | livepatch: rename config to CONFIG_LIVEPATCH |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.0 | [`13d1cf7e7025`](https://git.kernel.org/torvalds/c/13d1cf7e7025) | [kernel] | livepatch: samples: add sample live patching module |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.0 | [`700a3048aaa3`](https://git.kernel.org/torvalds/c/700a3048aaa3) | [kernel] | livepatch: samples: fix usage example comments |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.0 | [`3c33f5b99d68`](https://git.kernel.org/torvalds/c/3c33f5b99d68) | [kernel] | livepatch: support for repatching a function |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.0 | [`33e8612f64d4`](https://git.kernel.org/torvalds/c/33e8612f64d4) | [kernel] | livepatch: use FTRACE_OPS_FL_IPMODIFY |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.0 | [`a7bebf488791`](https://git.kernel.org/torvalds/c/a7bebf488791) | [kernel] | sched/deadline: Fix hrtick for a non-leftmost task |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.0 | [`1019a359d3dc`](https://git.kernel.org/torvalds/c/1019a359d3dc) | [kernel] | sched/deadline: Fix stale yield state |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.0 | [`16b269436b72`](https://git.kernel.org/torvalds/c/16b269436b72) | [kernel] | sched/deadline: Modify cpudl::free_cpus to reflect rd->online |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.0 | [`9659e1eeee28`](https://git.kernel.org/torvalds/c/9659e1eeee28) | [kernel] | sched/deadline: Remove cpu_active_mask from cpudl_find() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.1 | [`569fd0ce9608`](https://git.kernel.org/torvalds/c/569fd0ce9608) | [kernel] | blk-mq: fix iteration of busy bitmap |  | block/blk-mq.c not in A37 tree | 3.10.0-716 |
| FEATURE-MISSING | 4.1 | [`21042d43b341`](https://git.kernel.org/torvalds/c/21042d43b341) | [kernel] | livepatch: add support on s390 |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.1 | [`4421f8f0fa02`](https://git.kernel.org/torvalds/c/4421f8f0fa02) | [kernel] | livepatch: remove extern specifier from header files |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.1 | [`2e3ac940f275`](https://git.kernel.org/torvalds/c/2e3ac940f275) | [kernel] | livepatch: remove unnecessary call to klp_find_object_module() |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.1 | [`0937e3b025f7`](https://git.kernel.org/torvalds/c/0937e3b025f7) | [kernel] | livepatch: simplify disable error path |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.1 | [`44fb085bfa17`](https://git.kernel.org/torvalds/c/44fb085bfa17) | [kernel] | sched/deadline: Add rq->clock update skip for dl task yield |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.1 | [`4cd57f971358`](https://git.kernel.org/torvalds/c/4cd57f971358) | [kernel] | sched/deadline: Always enqueue on previous rq when dl_task_timer() fires |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.1 | [`bd4bde14b93c`](https://git.kernel.org/torvalds/c/bd4bde14b93c) | [kernel] | sched/deadline: Avoid a superfluous check |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.1 | [`a1963b81deec`](https://git.kernel.org/torvalds/c/a1963b81deec) | [kernel] | sched/deadline: Fix rt runtime corruption when dl fails its global constraints |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.1 | [`fa9c9d10e97e`](https://git.kernel.org/torvalds/c/fa9c9d10e97e) | [kernel] | sched/deadline: Support DL task migration during CPU hotplug |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.2 | [`9a1bd63cdae4`](https://git.kernel.org/torvalds/c/9a1bd63cdae4) | [kernel] | livepatch: add module locking around kallsyms calls |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.2 | [`26029d88ad1b`](https://git.kernel.org/torvalds/c/26029d88ad1b) | [kernel] | livepatch: annotate klp_init() with __init |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.2 | [`8cdd043ab32c`](https://git.kernel.org/torvalds/c/8cdd043ab32c) | [kernel] | livepatch: introduce patch/func-walking helpers |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.2 | [`cad706df7e4a`](https://git.kernel.org/torvalds/c/cad706df7e4a) | [kernel] | livepatch: make kobject in klp_object statically allocated |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.2 | [`e76ff06a9593`](https://git.kernel.org/torvalds/c/e76ff06a9593) | [kernel] | livepatch: match return value to function signature |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.2 | [`36e505c16e61`](https://git.kernel.org/torvalds/c/36e505c16e61) | [kernel] | livepatch: Prevent patch inconsistencies if the coming module notifier fails |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.2 | [`5d4351ba654c`](https://git.kernel.org/torvalds/c/5d4351ba654c) | [kernel] | livepatch: x86: make kASLR logic more accurate |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.2 | [`a6c0e746fb8f`](https://git.kernel.org/torvalds/c/a6c0e746fb8f) | [kernel] | sched/deadline: Make init_sched_dl_class() __init |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.2 | [`8b5e770ed7c0`](https://git.kernel.org/torvalds/c/8b5e770ed7c0) | [kernel] | sched/deadline: Optimize pull_dl_task() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.2 | [`9d5142624256`](https://git.kernel.org/torvalds/c/9d5142624256) | [kernel] | sched/deadline: Reduce rq lock contention by eliminating locking of non-feasible target |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.2 | [`6fab54101923`](https://git.kernel.org/torvalds/c/6fab54101923) | [kernel] | sched/deadline: Remove needless parameter in dl_runtime_exceeded() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.2 | [`cc9684d3c118`](https://git.kernel.org/torvalds/c/cc9684d3c118) | [kernel] | sched: deadline: Use hrtimer_start() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.3 | [`225f58fbcc02`](https://git.kernel.org/torvalds/c/225f58fbcc02) | [kernel] | livepatch: Improve error handling in klp_disable_func() |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.3 | [`3fe33bcdd358`](https://git.kernel.org/torvalds/c/3fe33bcdd358) | [kernel] | sched/deadline: Remove a redundant condition from task_woken_dl() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.4 | [`e2391a2dcaca`](https://git.kernel.org/torvalds/c/e2391a2dcaca) | [kernel] | livepatch: Fix crash with !CONFIG_DEBUG_SET_MODULE_RONX |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.4 | [`e41b104c7dba`](https://git.kernel.org/torvalds/c/e41b104c7dba) | [kernel] | livepatch: x86: fix relocation computation with kASLR |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.4 | [`2726d6ce3897`](https://git.kernel.org/torvalds/c/2726d6ce3897) | [kernel] | sched/deadline: Unify dl_time_before() usage |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.5 | [`6f3b0e8bcf3c`](https://git.kernel.org/torvalds/c/6f3b0e8bcf3c) | [kernel] | blk-mq: add a flags parameter to blk_mq_alloc_request |  | block/blk-mq.c not in A37 tree | 3.10.0-624 |
| FEATURE-MISSING | 4.5 | [`b2b018ef4867`](https://git.kernel.org/torvalds/c/b2b018ef4867) | [kernel] | livepatch: add old_sympos as disambiguator field to klp_func |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.5 | [`064c89df6247`](https://git.kernel.org/torvalds/c/064c89df6247) | [kernel] | livepatch: add sympos as disambiguator field to klp_reloc |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.5 | [`383bf44d1a8b`](https://git.kernel.org/torvalds/c/383bf44d1a8b) | [kernel] | livepatch: change the error message in asm/livepatch.h header files |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.5 | [`b56b36ee6751`](https://git.kernel.org/torvalds/c/b56b36ee6751) | [kernel] | livepatch: Cleanup module page permission changes |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.5 | [`7d92de3a8285`](https://git.kernel.org/torvalds/c/7d92de3a8285) | [kernel] | sched/deadline: Fix the earliest_dl.next logic |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.5 | [`c219b7ddb6a3`](https://git.kernel.org/torvalds/c/c219b7ddb6a3) | [kernel] | sched/deadline: Fix trivial typo in printk() message |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.6 | [`335e073faacc`](https://git.kernel.org/torvalds/c/335e073faacc) | [kernel] | klp: remove CONFIG_LIVEPATCH dependency from klp headers |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.6 | [`b24b78a11316`](https://git.kernel.org/torvalds/c/b24b78a11316) | [kernel] | klp: remove superfluous errors in asm/livepatch.h |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.6 | [`7e545d6eca20`](https://git.kernel.org/torvalds/c/7e545d6eca20) | [kernel] | livepatch/module: remove livepatch module notifier |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.6 | [`f995b5f720a7`](https://git.kernel.org/torvalds/c/f995b5f720a7) | [kernel] | livepatch: Fix the error message about unresolvable ambiguity |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.6 | [`48be3a67da74`](https://git.kernel.org/torvalds/c/48be3a67da74) | [kernel] | sched/deadline: Always calculate end of period on sched_yield() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.6 | [`72f9f3fdc928`](https://git.kernel.org/torvalds/c/72f9f3fdc928) | [kernel] | sched/deadline: Remove dl_new from struct sched_dl_entity |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | 4.7 | [`5e4e38446a62`](https://git.kernel.org/torvalds/c/5e4e38446a62) | [kernel] | livepatch: Add some basic livepatch documentation |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.7 | [`28e7cbd3e0f5`](https://git.kernel.org/torvalds/c/28e7cbd3e0f5) | [kernel] | livepatch: Allow architectures to specify an alternate ftrace location |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.7 | [`f09d90864eb7`](https://git.kernel.org/torvalds/c/f09d90864eb7) | [kernel] | livepatch: make object/func-walking helpers more robust |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.7 | [`425595a7fc20`](https://git.kernel.org/torvalds/c/425595a7fc20) | [kernel] | livepatch: reuse module loader code to write relocations |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.7 | [`61bf12d3304d`](https://git.kernel.org/torvalds/c/61bf12d3304d) | [kernel] | livepatch: robustify klp_register_patch() API error checking |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.8 | [`1f5bd336b915`](https://git.kernel.org/torvalds/c/1f5bd336b915) | [kernel] | blk-mq: add blk_mq_alloc_request_hctx |  | block/blk-mq.c not in A37 tree | 3.10.0-624 |
| FEATURE-MISSING | 4.8 | [`486cf9899e31`](https://git.kernel.org/torvalds/c/486cf9899e31) | [kernel] | blk-mq: Introduce blk_mq_reinit_tagset |  | block/blk-mq.c not in A37 tree | 3.10.0-624 |
| FEATURE-MISSING | 4.9 | [`1b792f2f9278`](https://git.kernel.org/torvalds/c/1b792f2f9278) | [kernel] | blk-mq: add flag for drivers wanting blocking ->queue_rq() |  | block/blk-mq.c not in A37 tree | 3.10.0-545 |
| FEATURE-MISSING | 4.9 | [`da695ba236b9`](https://git.kernel.org/torvalds/c/da695ba236b9) | [kernel] | blk-mq: allow the driver to pass in a queue mapping |  | block/blk-mq.c not in A37 tree | 3.10.0-624 |
| FEATURE-MISSING | 4.9 | [`1b157939f92a`](https://git.kernel.org/torvalds/c/1b157939f92a) | [kernel] | blk-mq: get rid of the cpumask in struct blk_mq_tags |  | block/blk-mq.c not in A37 tree | 3.10.0-716 |
| FEATURE-MISSING | 4.9 | [`2849450ad39d`](https://git.kernel.org/torvalds/c/2849450ad39d) | [kernel] | blk-mq: introduce blk_mq_delay_kick_requeue_list() |  | block/blk-mq.c not in A37 tree | 3.10.0-545 |
| FEATURE-MISSING | 4.9 | [`bdd17e75cd97`](https://git.kernel.org/torvalds/c/bdd17e75cd97) | [kernel] | blk-mq: only allocate a single mq_map per tag_set |  | block/blk-mq.c not in A37 tree | 3.10.0-624 |
| FEATURE-MISSING | 4.9 | [`973c4e372c8f`](https://git.kernel.org/torvalds/c/973c4e372c8f) | [kernel] | blk-mq: provide a default queue mapping for PCI device |  | block/blk-mq.c not in A37 tree | 3.10.0-716 |
| FEATURE-MISSING | 4.9 | [`7d7e0f90b70f`](https://git.kernel.org/torvalds/c/7d7e0f90b70f) | [kernel] | blk-mq: remove ->map_queue |  | block/blk-mq.c not in A37 tree | 3.10.0-716 |
| FEATURE-MISSING | 4.9 | [`2992ef29ae01`](https://git.kernel.org/torvalds/c/2992ef29ae01) | [kernel] | livepatch/module: make TAINT_LIVEPATCH module-specific |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-560 |
| FEATURE-MISSING | 4.9 | [`255e732c61db`](https://git.kernel.org/torvalds/c/255e732c61db) | [kernel] | livepatch: use arch_klp_init_object_loaded() to finish arch-specific tasks |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.9 | [`61c7aca695b6`](https://git.kernel.org/torvalds/c/61c7aca695b6) | [kernel] | sched/deadline: Fix the intention to re-evalute tick dependency for offline CPU |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-1092 |
| FEATURE-MISSING | 4.9 | [`98b0a8578050`](https://git.kernel.org/torvalds/c/98b0a8578050) | [kernel] | sched/deadline: Remove useless parameter from setup_new_dl_entity() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-907 |
| FEATURE-MISSING | 4.10 | [`2b053aca76b4`](https://git.kernel.org/torvalds/c/2b053aca76b4) | [kernel] | blk-mq: Add a kick_requeue_list argument to blk_mq_requeue_request() |  | block/blk-mq.c not in A37 tree | 3.10.0-545 |
| FEATURE-MISSING | 4.10 | [`fd00144301d6`](https://git.kernel.org/torvalds/c/fd00144301d6) | [kernel] | blk-mq: Introduce blk_mq_queue_stopped() |  | block/blk-mq.c not in A37 tree | 3.10.0-545 |
| FEATURE-MISSING | 4.10 | [`6a83e74d214a`](https://git.kernel.org/torvalds/c/6a83e74d214a) | [kernel] | blk-mq: Introduce blk_mq_quiesce_queue() |  | block/blk-mq.c not in A37 tree | 3.10.0-545 |
| FEATURE-MISSING | 4.10 | [`9b7dd572cc43`](https://git.kernel.org/torvalds/c/9b7dd572cc43) | [kernel] | blk-mq: Remove blk_mq_cancel_requeue_work() |  | block/blk-mq.c not in A37 tree | 3.10.0-545 |
| FEATURE-MISSING | 4.11 | [`7598d167df99`](https://git.kernel.org/torvalds/c/7598d167df99) | [kernel] | livepatch/module: print notice of TAINT_LIVEPATCH |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-560 |
| FEATURE-MISSING | 4.11 | [`372e2db7210d`](https://git.kernel.org/torvalds/c/372e2db7210d) | [kernel] | livepatch: doc: remove the limitation for schedule() patching |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.11 | [`dcc3b5ffe1b3`](https://git.kernel.org/torvalds/c/dcc3b5ffe1b3) | [kernel] | sched/deadline: Add missing update_rq_clock() in dl_task_timer() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-683 |
| FEATURE-MISSING | 4.11 | [`5ac69d37784b`](https://git.kernel.org/torvalds/c/5ac69d37784b) | [kernel] | sched/deadline: Make sure the replenishment timer fires in the next period |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-683 |
| FEATURE-MISSING | 4.11 | [`df8eac8cafce`](https://git.kernel.org/torvalds/c/df8eac8cafce) | [kernel] | sched/deadline: Throttle a constrained deadline task activated after the deadline |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-683 |
| FEATURE-MISSING | 4.11 | [`2317d5f1c349`](https://git.kernel.org/torvalds/c/2317d5f1c349) | [kernel] | sched/deadline: Use deadline instead of period when calculating overflow |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-683 |
| FEATURE-MISSING | 4.11 | [`ca49ca711455`](https://git.kernel.org/torvalds/c/ca49ca711455) | [kernel] | userfaultfd: non-cooperative: add event for exit() notification |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`893e26e61d04`](https://git.kernel.org/torvalds/c/893e26e61d04) | [kernel] | userfaultfd: non-cooperative: Add fork() event |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.11 | [`dd0db88d8094`](https://git.kernel.org/torvalds/c/dd0db88d8094) | [kernel] | userfaultfd: non-cooperative: rollback userfaultfd_exit |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-631 |
| FEATURE-MISSING | 4.12 | [`d6296d39e90c`](https://git.kernel.org/torvalds/c/d6296d39e90c) | [kernel] | blk-mq: update ->init_request and ->exit_request prototypes |  | block/blk-mq.c not in A37 tree | 3.10.0-904 |
| FEATURE-MISSING | 4.12 | [`afb94c9e0b41`](https://git.kernel.org/torvalds/c/afb94c9e0b41) | [kernel] | livepatch/x86: add TIF_PATCH_PENDING thread flag |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.12 | [`7c23b3300116`](https://git.kernel.org/torvalds/c/7c23b3300116) | [kernel] | livepatch: add /proc/<pid>/patch_state |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.12 | [`77f8f39a2e46`](https://git.kernel.org/torvalds/c/77f8f39a2e46) | [kernel] | livepatch: add missing printk newlines |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.12 | [`3ec24776bfd0`](https://git.kernel.org/torvalds/c/3ec24776bfd0) | [kernel] | livepatch: allow removal of a disabled patch |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.12 | [`e679af627fe8`](https://git.kernel.org/torvalds/c/e679af627fe8) | [kernel] | livepatch: Cancel transition a safe way for immediate patches |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.12 | [`d83a7cb375ee`](https://git.kernel.org/torvalds/c/d83a7cb375ee) | [kernel] | livepatch: change to a per-task consistency model |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.12 | [`46c5a0113f84`](https://git.kernel.org/torvalds/c/46c5a0113f84) | [kernel] | livepatch: create temporary klp_update_patch_state() stub |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.12 | [`842c08846420`](https://git.kernel.org/torvalds/c/842c08846420) | [kernel] | livepatch: Fix stacking of patches with respect to RCU |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.12 | [`10517429b5ac`](https://git.kernel.org/torvalds/c/10517429b5ac) | [kernel] | livepatch: make klp_mutex proper part of API |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.12 | [`5720acf4bfc1`](https://git.kernel.org/torvalds/c/5720acf4bfc1) | [kernel] | livepatch: Make livepatch dependent on !TRIM_UNUSED_KSYMS |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.12 | [`c349cdcaba58`](https://git.kernel.org/torvalds/c/c349cdcaba58) | [kernel] | livepatch: move patching functions into patch.c |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.12 | [`72f04b50d61c`](https://git.kernel.org/torvalds/c/72f04b50d61c) | [kernel] | livepatch: Reduce the time of finding module symbols |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.12 | [`aa82dc3e00da`](https://git.kernel.org/torvalds/c/aa82dc3e00da) | [kernel] | livepatch: remove unnecessary object loaded check |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.12 | [`0dade9f374f1`](https://git.kernel.org/torvalds/c/0dade9f374f1) | [kernel] | livepatch: separate enabled and patched states |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.12 | [`f5e547f4ac78`](https://git.kernel.org/torvalds/c/f5e547f4ac78) | [kernel] | livepatch: store function sizes |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.12 | [`68ae4b2b687c`](https://git.kernel.org/torvalds/c/68ae4b2b687c) | [kernel] | livepatch: use kstrtobool() in enabled_store() |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.12 | [`48e75b430670`](https://git.kernel.org/torvalds/c/48e75b430670) | [kernel] | rhashtable: compact struct rhashtable_params |  | lib/rhashtable.c not in A37 tree | 3.10.0-1030 |
| FEATURE-MISSING | 4.12 | [`5f8ddeab10ce`](https://git.kernel.org/torvalds/c/5f8ddeab10ce) | [kernel] | rhashtable: remove insecure_elasticity |  | lib/rhashtable.c not in A37 tree | 3.10.0-1030 |
| FEATURE-MISSING | 4.13 | [`ccc9d651a7d2`](https://git.kernel.org/torvalds/c/ccc9d651a7d2) | [kernel] | sched/deadline: Add documentation about GRUB reclaiming |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-907 |
| FEATURE-MISSING | 4.13 | [`9f0d1a507739`](https://git.kernel.org/torvalds/c/9f0d1a507739) | [kernel] | sched/deadline: Base GRUB reclaiming on the inactive utilization |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-907 |
| FEATURE-MISSING | 4.13 | [`4da3abcefe17`](https://git.kernel.org/torvalds/c/4da3abcefe17) | [kernel] | sched/deadline: Do not reclaim the whole CPU bandwidth |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-907 |
| FEATURE-MISSING | 4.13 | [`54d6d3039e2d`](https://git.kernel.org/torvalds/c/54d6d3039e2d) | [kernel] | sched/deadline: Fix dl_bw comment |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-683 |
| FEATURE-MISSING | 4.13 | [`387e31300b57`](https://git.kernel.org/torvalds/c/387e31300b57) | [kernel] | sched/deadline: Fix the update of the total -deadline utilization |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-907 |
| FEATURE-MISSING | 4.13 | [`c52f14d38462`](https://git.kernel.org/torvalds/c/c52f14d38462) | [kernel] | sched/deadline: Implement GRUB accounting |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-907 |
| FEATURE-MISSING | 4.13 | [`209a0cbda7a0`](https://git.kernel.org/torvalds/c/209a0cbda7a0) | [kernel] | sched/deadline: Improve the tracking of active utilization |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-907 |
| FEATURE-MISSING | 4.13 | [`2d4283e9d583`](https://git.kernel.org/torvalds/c/2d4283e9d583) | [kernel] | sched/deadline: Make GRUB a task's flag |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-907 |
| FEATURE-MISSING | 4.13 | [`daec57983670`](https://git.kernel.org/torvalds/c/daec57983670) | [kernel] | sched/deadline: Reclaim bandwidth not used by dl tasks |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-907 |
| FEATURE-MISSING | 4.13 | [`8fd27231c330`](https://git.kernel.org/torvalds/c/8fd27231c330) | [kernel] | sched/deadline: Track the "total rq utilization" too |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-907 |
| FEATURE-MISSING | 4.13 | [`e36d8677bfa5`](https://git.kernel.org/torvalds/c/e36d8677bfa5) | [kernel] | sched/deadline: Track the active utilization |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-907 |
| FEATURE-MISSING | 4.13 | [`3effcb4247e7`](https://git.kernel.org/torvalds/c/3effcb4247e7) | [kernel] | sched/deadline: Use the revised wakeup rule for suspending constrained dl tasks |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-683 |
| FEATURE-MISSING | 4.13 | [`ae83b56a56f8`](https://git.kernel.org/torvalds/c/ae83b56a56f8) | [kernel] | sched/deadline: Zero out positive runtime after throttling constrained tasks |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-683 |
| FEATURE-MISSING | 4.14 | [`ef8daf8eeb5b`](https://git.kernel.org/torvalds/c/ef8daf8eeb5b) | [kernel] | livepatch: unpatch all klp_objects if klp_module_coming fails |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.15 | [`89a9a1c1c89c`](https://git.kernel.org/torvalds/c/89a9a1c1c89c) | [kernel] | livepatch: __klp_disable_patch() should never be called for disabled patches |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.15 | [`5d9da759f758`](https://git.kernel.org/torvalds/c/5d9da759f758) | [kernel] | livepatch: __klp_shadow_get_or_alloc() is local to shadow.c |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.15 | [`93862e385ded`](https://git.kernel.org/torvalds/c/93862e385ded) | [kernel] | livepatch: add (un)patch callbacks |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.15 | [`af026796054f`](https://git.kernel.org/torvalds/c/af026796054f) | [kernel] | livepatch: add transition notices |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.15 | [`5aaf1ab55389`](https://git.kernel.org/torvalds/c/5aaf1ab55389) | [kernel] | livepatch: Correctly call klp_post_unpatch_callback() in error paths |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.15 | [`439e7271dc2b`](https://git.kernel.org/torvalds/c/439e7271dc2b) | [kernel] | livepatch: introduce shadow variable API |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.15 | [`6116c3033a76`](https://git.kernel.org/torvalds/c/6116c3033a76) | [kernel] | livepatch: move transition "complete" notice into klp_complete_transition() |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.15 | [`19205da6a0da`](https://git.kernel.org/torvalds/c/19205da6a0da) | [kernel] | livepatch: Small shadow variable documentation fixes |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | 4.15 | [`295d6d5e3736`](https://git.kernel.org/torvalds/c/295d6d5e3736) | [kernel] | sched/deadline: Fix switching to -deadline |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-1092 |
| FEATURE-MISSING | 4.16 | [`8869016d3a58`](https://git.kernel.org/torvalds/c/8869016d3a58) | [kernel] | livepatch: add locking to force and signal functions |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-837 |
| FEATURE-MISSING | 4.16 | [`c99a2be790b0`](https://git.kernel.org/torvalds/c/c99a2be790b0) | [kernel] | livepatch: force transition to finish |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-837 |
| FEATURE-MISSING | 4.16 | [`43347d56c8d9`](https://git.kernel.org/torvalds/c/43347d56c8d9) | [kernel] | livepatch: send a fake signal to all blocking tasks |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-837 |
| FEATURE-MISSING | 4.16 | [`6fe0ce1eb04f`](https://git.kernel.org/torvalds/c/6fe0ce1eb04f) | [kernel] | sched/deadline: Make update_curr_dl() more accurate |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-1092 |
| FEATURE-MISSING | 4.17 | [`ecda2b66e263`](https://git.kernel.org/torvalds/c/ecda2b66e263) | [kernel] | sched/deadline: Fix missing clock update |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-1092 |
| FEATURE-MISSING | 4.18 | [`e117cb52bdb4`](https://git.kernel.org/torvalds/c/e117cb52bdb4) | [kernel] | sched/deadline: Fix switched_from_dl() warning |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-1092 |
| FEATURE-MISSING | 4.19 | [`1d98a69e5cef`](https://git.kernel.org/torvalds/c/1d98a69e5cef) | [kernel] | livepatch: Remove reliable stacktrace check in klp_try_switch_task() |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-1067 |
| FEATURE-MISSING | 4.19 | [`6e9df95b76ca`](https://git.kernel.org/torvalds/c/6e9df95b76ca) | [kernel] | livepatch: Validate module/old func name length |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-1067 |
| FEATURE-MISSING | 5.0 | [`6932689e4145`](https://git.kernel.org/torvalds/c/6932689e4145) | [kernel] | livepatch: Replace synchronize_sched() with synchronize_rcu() |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-1067 |
| FEATURE-MISSING | 5.1 | [`e1452b607c48`](https://git.kernel.org/torvalds/c/e1452b607c48) | [kernel] | livepatch: Add atomic replace |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-1067 |
| FEATURE-MISSING | 5.1 | [`19514910d021`](https://git.kernel.org/torvalds/c/19514910d021) | [kernel] | livepatch: Change unsigned long old_addr -> void *old_func in struct klp_func |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-1067 |
| FEATURE-MISSING | 5.1 | [`0430f78bf38f`](https://git.kernel.org/torvalds/c/0430f78bf38f) | [kernel] | livepatch: Consolidate klp_free functions |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-1067 |
| FEATURE-MISSING | 5.1 | [`375bfca3459d`](https://git.kernel.org/torvalds/c/375bfca3459d) | [kernel] | livepatch: core: Return EOPNOTSUPP instead of ENOSYS |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-1067 |
| FEATURE-MISSING | 5.1 | [`68007289bf3c`](https://git.kernel.org/torvalds/c/68007289bf3c) | [kernel] | livepatch: Don't block the removal of patches loaded after a forced transition |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-1067 |
| FEATURE-MISSING | 5.1 | [`ecba29f434a8`](https://git.kernel.org/torvalds/c/ecba29f434a8) | [kernel] | livepatch: Introduce klp_for_each_patch macro |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-1067 |
| FEATURE-MISSING | 5.1 | [`a087cdd4073b`](https://git.kernel.org/torvalds/c/a087cdd4073b) | [kernel] | livepatch: Module coming and going callbacks can proceed with all listed patches |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-1067 |
| FEATURE-MISSING | 5.1 | [`d697bad588eb`](https://git.kernel.org/torvalds/c/d697bad588eb) | [kernel] | livepatch: Remove Nop structures when unused |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-1067 |
| FEATURE-MISSING | 5.1 | [`0b3d52790e1c`](https://git.kernel.org/torvalds/c/0b3d52790e1c) | [kernel] | livepatch: Remove signal sysfs attribute |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-1067 |
| FEATURE-MISSING | 5.1 | [`cba82dea3061`](https://git.kernel.org/torvalds/c/cba82dea3061) | [kernel] | livepatch: Send a fake signal periodically |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-1067 |
| FEATURE-MISSING | 5.1 | [`26c3e98e2f8e`](https://git.kernel.org/torvalds/c/26c3e98e2f8e) | [kernel] | livepatch: Shuffle klp_enable_patch()/klp_disable_patch() code |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-1067 |
| FEATURE-MISSING | 5.1 | [`20e55025958e`](https://git.kernel.org/torvalds/c/20e55025958e) | [kernel] | livepatch: Use lists to manage patches, objects and functions |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-1067 |
| FEATURE-MISSING | 5.1 | [`1b02cd6a2d7f`](https://git.kernel.org/torvalds/c/1b02cd6a2d7f) | [kernel] | sched/deadline: Correctly handle active 0-lag timers |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-1071 |
| FEATURE-MISSING | 5.2 | [`c3f3ce049f7d`](https://git.kernel.org/torvalds/c/c3f3ce049f7d) | [kernel] | userfaultfd: use RCU to free the task struct when fork fails |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-1064 |
| FEATURE-MISSING | — | — | [kernel] | livepatch: function, sympos scheme in livepatch sysfs directory |  | CONFIG_LIVEPATCH does not exist in A37 tree | 3.10.0-778 |
| FEATURE-MISSING | — | — | [kernel] | sched/deadline: Disable SCHED_DEADLINE programmatically |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | — | — | [kernel] | sched/deadline: Do update_rq_clock() in yield_task_dl() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | — | — | [kernel] | sched/deadline: Fix preemption checks |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | — | — | [kernel] | sched/deadline: Fix race in dl_task_timer() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | — | — | [kernel] | sched/deadline: Fix sched class hopping CBS hole |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | — | — | [kernel] | sched/deadline: Optimize sequential update_curr_dl() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | — | — | [kernel] | sched/deadline: Prevent enqueue of a sleeping task in dl_task_timer() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | — | — | [kernel] | sched/deadline: Provide update_curr callback for dl_sched_class |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | — | — | [kernel] | sched/deadline: Remove superfluous call to |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | — | — | [kernel] | sched/deadline: Simplify pick_dl_task() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | — | — | [kernel] | sched/deadline: Use dl_bw_of() under rcu_read_lock_sched() |  | kernel/sched/deadline.c not in A37 tree | 3.10.0-443 |
| FEATURE-MISSING | — | — | [kernel] | userfaultfd: register uapi generic syscall |  | CONFIG_USERFAULTFD does not exist in A37 tree | 3.10.0-896 |
| REVIEW | 3.12 | [`0c06a5d4b13c`](https://git.kernel.org/torvalds/c/0c06a5d4b13c) | [kernel] | arm: Fix build error with context tracking calls |  | arm/arm64 or unclear | 3.10.0-239 |
| REVIEW | 3.13 | [`00c8f1623658`](https://git.kernel.org/torvalds/c/00c8f1623658) | [kernel] | arm: 7795/1: mm: dma-mapping: Add dma_max_pfn(dev) helper function |  | arm/arm64 or unclear | 3.10.0-722 |
| REVIEW | 4.4 | [`7c7a0e945349`](https://git.kernel.org/torvalds/c/7c7a0e945349) | [kernel] | arm/pci: Move align_resource function pointer to pci_host_bridge structure |  | arm/arm64 or unclear | 3.10.0-536 |
