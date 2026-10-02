# Networking: backport candidates from CentOS 7

5360 entries: 4876 CANDIDATE, 438 FEATURE-MISSING, 46 REVIEW. Sorted by status, then by the first mainline release that has the commit. "loose" means the RHEL subject only matched after normalising its prefix; check it before cherry-picking. See ../README.md for the method and its limits.

| Status | First in | Upstream | Tag | Subject | CVE | Why relevant | RHEL |
|---|---|---|---|---|---|---|---|
| CANDIDATE | 3.11 | [`3046e2f5b79a`](https://git.kernel.org/torvalds/c/3046e2f5b79a) (loose) | [net] | add cpu_relax to busy poll loop |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.11 | [`af12fa6e46aa`](https://git.kernel.org/torvalds/c/af12fa6e46aa) (loose) | [net] | add napi_id and hash |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | 3.11 | [`42e52bf9e3ae`](https://git.kernel.org/torvalds/c/42e52bf9e3ae) (loose) | [net] | add netnotifier event for upper device change |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.11 | [`60877a32bce0`](https://git.kernel.org/torvalds/c/60877a32bce0) (loose) | [net] | allow large number of tx queues |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 3.11 | [`75538c2b85cf`](https://git.kernel.org/torvalds/c/75538c2b85cf) (loose) | [net] | always pass struct netdev_notifier_info to netdevice notifiers |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 3.11 | [`6c8b4e3ff81b`](https://git.kernel.org/torvalds/c/6c8b4e3ff81b) | [net] | arp: flush arp cache on IFF_NOARP change |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 3.11 | [`867a59436fc3`](https://git.kernel.org/torvalds/c/867a59436fc3) | [net] | bridge: Add a flag to control unicast packet flood |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.11 | [`9ba18891f755`](https://git.kernel.org/torvalds/c/9ba18891f755) | [net] | bridge: Add flag to control mac learning |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.11 | [`15401946f9b7`](https://git.kernel.org/torvalds/c/15401946f9b7) | [net] | bridge: correct the comment for file br_sysfs_br.c |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.11 | [`b00589af3b04`](https://git.kernel.org/torvalds/c/b00589af3b04) | [net] | bridge: disable snooping if there is no querier |  | CONFIG_BRIDGE=y in A37 | 3.10.0-47 |
| CANDIDATE | 3.11 | [`1faabf2aab1f`](https://git.kernel.org/torvalds/c/1faabf2aab1f) | [net] | bridge: do not call setup_timer() multiple times |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.11 | [`7c77602f57da`](https://git.kernel.org/torvalds/c/7c77602f57da) | [net] | bridge: fix a typo in comments |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.11 | [`c7e8e8a8f7a7`](https://git.kernel.org/torvalds/c/c7e8e8a8f7a7) | [net] | bridge: fix some kernel warning in multicast timer |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.11 | [`8bc14d25ffb9`](https://git.kernel.org/torvalds/c/8bc14d25ffb9) | [net] | bridge: netfilter: using strlcpy() instead of strncpy() |  | CONFIG_BRIDGE=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.11 | [`9f00b2e7cf24`](https://git.kernel.org/torvalds/c/9f00b2e7cf24) | [net] | bridge: only expire the mdb entry when query is received |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.11 | [`6b7df111ece1`](https://git.kernel.org/torvalds/c/6b7df111ece1) | [net] | bridge: send query as soon as leave is received |  | CONFIG_BRIDGE=y in A37 | 3.10.0-93 |
| CANDIDATE | 3.11 | [`cc0fdd802859`](https://git.kernel.org/torvalds/c/cc0fdd802859) | [net] | bridge: separate querier and query timer into IGMP/IPv4 and MLD/IPv6 ones |  | CONFIG_BRIDGE=y in A37 | 3.10.0-93 |
| CANDIDATE | 3.11 | [`161f65ba3583`](https://git.kernel.org/torvalds/c/161f65ba3583) | [net] | bridge: Set vlan_features to allow offloads on vlans |  | CONFIG_BRIDGE=y in A37 | 3.10.0-132 |
| CANDIDATE | 3.11 | [`1c8ad5bfa2be`](https://git.kernel.org/torvalds/c/1c8ad5bfa2be) | [net] | bridge: use the bridge IP addr as source addr for querier |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.11 | [`35d0461061f2`](https://git.kernel.org/torvalds/c/35d0461061f2) (loose) | [net] | clean up skb headers code |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | 3.11 | [`fe2c6338fd2c`](https://git.kernel.org/torvalds/c/fe2c6338fd2c) (loose) | [net] | Convert uses of typedef ctl_table to struct ctl_table |  | generic code, tag [net] | 3.10.0-33 |
| CANDIDATE | 3.11 | [`fe2c6338fd2c`](https://git.kernel.org/torvalds/c/fe2c6338fd2c) (loose) | [net] | Convert uses of typedef ctl_table to struct ctl_table |  | generic code, tag [net] | 3.10.0-32 |
| CANDIDATE | 3.11 | [`4bc41b84e9b4`](https://git.kernel.org/torvalds/c/4bc41b84e9b4) (loose) | [net] | Copy inner_protocol in copy_skb_header() |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | 3.11 | [`ced14f6804a9`](https://git.kernel.org/torvalds/c/ced14f6804a9) (loose) | [net] | Correct comparisons and calculations using skb->tail and skb-transport_header |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | 3.11 | [`013dbb325be7`](https://git.kernel.org/torvalds/c/013dbb325be7) (loose) | [net] | delete __cpuinit usage from all net files |  | generic code, tag [net] | 3.10.0-136 |
| CANDIDATE | 3.11 | [`621e84d6f373`](https://git.kernel.org/torvalds/c/621e84d6f373) | [net] | dev: introduce skb_scrub_packet() |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | 3.11 | [`57b354e66b67`](https://git.kernel.org/torvalds/c/57b354e66b67) | [net] | dev: remove duplicate 'skb->dev = dev' in dev_forward_skb() |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | 3.11 | [`7ec872114251`](https://git.kernel.org/torvalds/c/7ec872114251) (loose) | [net] | ethtool: disambiguate XCVR_* meaning |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.11 | [`8a73125c3680`](https://git.kernel.org/torvalds/c/8a73125c3680) | [net] | ethtool: fixed trailing statements in ethtool |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.11 | [`c590b5e2f05b`](https://git.kernel.org/torvalds/c/c590b5e2f05b) | [net] | ethtool: make .get_dump_data() harder to misuse by drivers |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.11 | [`f585a991e1d1`](https://git.kernel.org/torvalds/c/f585a991e1d1) | [net] | fib_trie: potential out of bounds access in trie_show_stats() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.11 | [`dfcefb0be123`](https://git.kernel.org/torvalds/c/dfcefb0be123) (loose) | [net] | fix a compile error when CONFIG_NET_LL_RX_POLL is not set |  | generic code, tag [net] | 3.10.0-63 |
| CANDIDATE | 3.11 | [`06ecf24bdf2b`](https://git.kernel.org/torvalds/c/06ecf24bdf2b) (loose) | [net] | Fix build warnings after mac_header and transport_header became __u16 |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | 3.11 | [`e11aada32b39`](https://git.kernel.org/torvalds/c/e11aada32b39) (loose) | [net] | flow_dissector: add 802.1ad support |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 3.11 | [`5b9b6263775d`](https://git.kernel.org/torvalds/c/5b9b6263775d) | [net] | gro: remove a sparse error |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.11 | [`db8caf3dbc77`](https://git.kernel.org/torvalds/c/db8caf3dbc77) | [net] | gro: should aggregate frames without DF |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.11 | [`cdbaa0bb26d8`](https://git.kernel.org/torvalds/c/cdbaa0bb26d8) | [net] | gso: Update tunnel segmentation to support Tx checksum offload |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | 3.11 | [`c9364636dcb0`](https://git.kernel.org/torvalds/c/c9364636dcb0) | [net] | htb: refactor struct htb_sched fields for performance |  | generic code, tag [net] | 3.10.0-33 |
| CANDIDATE | 3.11 | [`c9364636dcb0`](https://git.kernel.org/torvalds/c/c9364636dcb0) | [net] | htb: refactor struct htb_sched fields for performance |  | generic code, tag [net] | 3.10.0-32 |
| CANDIDATE | 3.11 | [`ca4ec90b31d1`](https://git.kernel.org/torvalds/c/ca4ec90b31d1) | [net] | htb: reorder struct htb_class fields for performance |  | generic code, tag [net] | 3.10.0-33 |
| CANDIDATE | 3.11 | [`ca4ec90b31d1`](https://git.kernel.org/torvalds/c/ca4ec90b31d1) | [net] | htb: reorder struct htb_class fields for performance |  | generic code, tag [net] | 3.10.0-32 |
| CANDIDATE | 3.11 | [`77e2af0312b1`](https://git.kernel.org/torvalds/c/77e2af0312b1) (loose) | [net] | if_arp: add ARPHRD_NETLINK type |  | generic code, tag [net] | 3.10.0-10 |
| CANDIDATE | 3.11 | [`9a628224a61b`](https://git.kernel.org/torvalds/c/9a628224a61b) | [net] | ip_tunnel: Add dont fragment flag |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | 3.11 | [`5243b6ac9ed1`](https://git.kernel.org/torvalds/c/5243b6ac9ed1) | [net] | ip_tunnel: Protect tunnel functions with CONFIG_INET guard |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | 3.11 | [`3d7b46cd20e3`](https://git.kernel.org/torvalds/c/3d7b46cd20e3) | [net] | ip_tunnel: push generic protocol handling to ip_tunnel module |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | 3.11 | [`bf3d6a8f791b`](https://git.kernel.org/torvalds/c/bf3d6a8f791b) | [net] | iptunnel: specify protocol outside IP header |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | 3.11 | [`f7c0c2ae843b`](https://git.kernel.org/torvalds/c/f7c0c2ae843b) | [net] | ipv4: Correct comparisons and calculations using skb->tail and skb-transport_header |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | 3.11 | [`387aa65a8943`](https://git.kernel.org/torvalds/c/387aa65a8943) | [net] | ipv4: properly refresh rtable entries on pmtu/redirect events |  | generic code, tag [net] | 3.10.0-193 |
| CANDIDATE | 3.11 | [`f016229e303c`](https://git.kernel.org/torvalds/c/f016229e303c) | [net] | ipv4: rate limit updating of next hop exceptions with same pmtu |  | generic code, tag [net] | 3.10.0-980 |
| CANDIDATE | 3.11 | [`b48410b4dc9c`](https://git.kernel.org/torvalds/c/b48410b4dc9c) | [net] | ipv4: remove fib_update_nh_saddrs() declaration |  | generic code, tag [net] | 3.10.0-312 |
| CANDIDATE | 3.11 | [`2ffae99d1fac`](https://git.kernel.org/torvalds/c/2ffae99d1fac) | [net] | ipv4: use next hop exceptions also for input routes |  | generic code, tag [net] | 3.10.0-359 |
| CANDIDATE | 3.11 | [`5aad1de5ea2c`](https://git.kernel.org/torvalds/c/5aad1de5ea2c) | [net] | ipv4: use separate genid for next hop exceptions |  | generic code, tag [net] | 3.10.0-193 |
| CANDIDATE | 3.11 | [`6da334ee0c10`](https://git.kernel.org/torvalds/c/6da334ee0c10) | [net] | ipv6: add include file to suppress sparse warnings |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | 3.11 | [`caeaba79009c`](https://git.kernel.org/torvalds/c/caeaba79009c) | [net] | ipv6: add support of peer address |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | 3.11 | [`29a3cad5c6ae`](https://git.kernel.org/torvalds/c/29a3cad5c6ae) | [net] | ipv6: Correct comparisons and calculations using skb->tail and skb-transport_header |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | 3.11 | [`52bd4c0c1551`](https://git.kernel.org/torvalds/c/52bd4c0c1551) | [net] | ipv6: fix ecmp lookup when oif is specified |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 3.11 | [`c92a59eca86f`](https://git.kernel.org/torvalds/c/c92a59eca86f) | [net] | ipv6: handle Redirect ICMP Message with no Redirected Header option |  | generic code, tag [net] | 3.10.0-61 |
| CANDIDATE | 3.11 | [`1ec047eb4751`](https://git.kernel.org/torvalds/c/1ec047eb4751) | [net] | ipv6: introduce per-interface counter for dad-completed ipv6 addresses |  | generic code, tag [net] | 3.10.0-10 |
| CANDIDATE | 3.11 | [`3f8f52982ad0`](https://git.kernel.org/torvalds/c/3f8f52982ad0) | [net] | ipv6: move peer_addr init into ipv6_add_addr() |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | 3.11 | [`8a226b2cfa77`](https://git.kernel.org/torvalds/c/8a226b2cfa77) | [net] | ipv6: prevent race between address creation and removal |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | 3.11 | [`b33698e267ff`](https://git.kernel.org/torvalds/c/b33698e267ff) | [net] | ipv6: remove a useless pr_info() in addrconf_gre_config() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.11 | [`2b9651d72d3f`](https://git.kernel.org/torvalds/c/2b9651d72d3f) | [net] | ipv6: remove old token ipv6 address as soon as possible |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.11 | [`b173ee488dcc`](https://git.kernel.org/torvalds/c/b173ee488dcc) | [net] | ipv6: resend MLD report if a link-local address completes DAD |  | generic code, tag [net] | 3.10.0-10 |
| CANDIDATE | 3.11 | [`17ef66afc0bd`](https://git.kernel.org/torvalds/c/17ef66afc0bd) (loose) | [net] | ipv6: Unify {raw,udp}6_sock_seq_show |  | generic code, tag [net] | 3.10.0-41 |
| CANDIDATE | 3.11 | [`7996c799ae32`](https://git.kernel.org/torvalds/c/7996c799ae32) | [net] | ipv6: use ipv6_addr_any() helper |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 3.11 | [`8892475386e8`](https://git.kernel.org/torvalds/c/8892475386e8) | [net] | ipv6: use ipv6_addr_scope() helper |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | 3.11 | [`3d483058c8c8`](https://git.kernel.org/torvalds/c/3d483058c8c8) | [net] | ipv6: wire up skb->encapsulation |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | 3.11 | [`b6dc01a43aac`](https://git.kernel.org/torvalds/c/b6dc01a43aac) | [net] | l2tp: do data sequence number handling in a separate func |  | CONFIG_L2TP=y in A37 | 3.10.0-867 |
| CANDIDATE | 3.11 | [`a0dbd822273c`](https://git.kernel.org/torvalds/c/a0dbd822273c) | [net] | l2tp: make datapath resilient to packet loss when sequence numbers enabled |  | CONFIG_L2TP=y in A37 | 3.10.0-867 |
| CANDIDATE | 3.11 | [`8a1631d588a3`](https://git.kernel.org/torvalds/c/8a1631d588a3) | [net] | l2tp: make datapath sequence number support RFC-compliant |  | CONFIG_L2TP=y in A37 | 3.10.0-867 |
| CANDIDATE | 3.11 | [`194f4a6df2a9`](https://git.kernel.org/torvalds/c/194f4a6df2a9) (loose) | [net] | make all team port device link events urgent |  | generic code, tag [net] | 3.10.0-424 |
| CANDIDATE | 3.11 | [`f2f79cca13e3`](https://git.kernel.org/torvalds/c/f2f79cca13e3) | [net] | ndisc: bool initializations should use true and false |  | generic code, tag [net] | 3.10.0-63 |
| CANDIDATE | 3.11 | [`cf89d6b2803a`](https://git.kernel.org/torvalds/c/cf89d6b2803a) | [net] | neigh: no need to call lookup_neigh_parms in neigh_parms_alloc |  | generic code, tag [net] | 3.10.0-638 |
| CANDIDATE | 3.11 | [`170d6f995416`](https://git.kernel.org/torvalds/c/170d6f995416) | [net] | neigh: only allow init_net to change the default neigh_parms |  | generic code, tag [net] | 3.10.0-638 |
| CANDIDATE | 3.11 | [`555445cd1180`](https://git.kernel.org/torvalds/c/555445cd1180) | [net] | neigh: prevent overflowing params in /proc/sys/net/ipv4/neigh/ |  | generic code, tag [net] | 3.10.0-8 |
| CANDIDATE | 3.11 | [`eea86af6b1e1`](https://git.kernel.org/torvalds/c/eea86af6b1e1) | [net] | net: sock: adapt SOCK_MIN_RCVBUF and SOCK_MIN_SNDBUF |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.11 | [`9eb5bf838d06`](https://git.kernel.org/torvalds/c/9eb5bf838d06) | [net] | net: sock: fix TCP_SKB_MIN_TRUESIZE |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.11 | [`45203a3b380c`](https://git.kernel.org/torvalds/c/45203a3b380c) | [net] | net_sched: add 64bit rate estimators |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.11 | [`45203a3b380c`](https://git.kernel.org/torvalds/c/45203a3b380c) | [net] | net_sched: add 64bit rate estimators |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.11 | [`130d3d68b520`](https://git.kernel.org/torvalds/c/130d3d68b520) | [net] | net_sched: psched_ratecfg_precompute() improvements |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-14 |
| CANDIDATE | 3.11 | [`36b7bfe09b6d`](https://git.kernel.org/torvalds/c/36b7bfe09b6d) | [net] | netem: fix possible NULL deref in netem_dequeue() |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.11 | [`aec0a40a6f78`](https://git.kernel.org/torvalds/c/aec0a40a6f78) | [net] | netem: use rb tree to implement the time queue |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.11 | [`130ffbc2638d`](https://git.kernel.org/torvalds/c/130ffbc2638d) | [net] | netfilter: check return code from nla_parse_tested |  | CONFIG_NETFILTER=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.11 | [`130ffbc2638d`](https://git.kernel.org/torvalds/c/130ffbc2638d) | [net] | netfilter: check return code from nla_parse_tested |  | CONFIG_NETFILTER=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.11 | [`938177e9f3e0`](https://git.kernel.org/torvalds/c/938177e9f3e0) | [net] | netfilter: Correct calculation using skb->tail and skb-network_header |  | CONFIG_NETFILTER=y in A37 | 3.10.0-18 |
| CANDIDATE | 3.11 | [`f09eca8db018`](https://git.kernel.org/torvalds/c/f09eca8db018) | [net] | netfilter: ctnetlink: fix incorrect NAT expectation dumping |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.11 | [`f09eca8db018`](https://git.kernel.org/torvalds/c/f09eca8db018) | [net] | netfilter: ctnetlink: fix incorrect NAT expectation dumping |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.11 | [`6d11cfdba52a`](https://git.kernel.org/torvalds/c/6d11cfdba52a) | [net] | netfilter: don't panic on error while walking through the init path |  | CONFIG_NETFILTER=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.11 | [`6d11cfdba52a`](https://git.kernel.org/torvalds/c/6d11cfdba52a) | [net] | netfilter: don't panic on error while walking through the init path |  | CONFIG_NETFILTER=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.11 | [`4e7dba99c9e6`](https://git.kernel.org/torvalds/c/4e7dba99c9e6) | [net] | netfilter: Implement RFC 1123 for FTP conntrack |  | CONFIG_NETFILTER=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.11 | [`4e7dba99c9e6`](https://git.kernel.org/torvalds/c/4e7dba99c9e6) | [net] | netfilter: Implement RFC 1123 for FTP conntrack |  | CONFIG_NETFILTER=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.11 | [`356d7d88e088`](https://git.kernel.org/torvalds/c/356d7d88e088) | [net] | netfilter: nf_conntrack: fix tcp_in_window for Fast Open |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.11 | [`356d7d88e088`](https://git.kernel.org/torvalds/c/356d7d88e088) | [net] | netfilter: nf_conntrack: fix tcp_in_window for Fast Open |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.11 | [`9d5242b19269`](https://git.kernel.org/torvalds/c/9d5242b19269) | [net] | netfilter: nfnetlink_queue: avoid peer_portid test |  | CONFIG_NETFILTER_NETLINK_QUEUE=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.11 | [`9d5242b19269`](https://git.kernel.org/torvalds/c/9d5242b19269) | [net] | netfilter: nfnetlink_queue: avoid peer_portid test |  | CONFIG_NETFILTER_NETLINK_QUEUE=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.11 | [`27e7190efd5b`](https://git.kernel.org/torvalds/c/27e7190efd5b) | [net] | netfilter: xt_CT: optimize XT_CT_NOTRACK |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.11 | [`27e7190efd5b`](https://git.kernel.org/torvalds/c/27e7190efd5b) | [net] | netfilter: xt_CT: optimize XT_CT_NOTRACK |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.11 | [`71ffe9c77dd7`](https://git.kernel.org/torvalds/c/71ffe9c77dd7) | [net] | netfilter: xt_TCPMSS: fix handling of malformed TCP header and options |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.11 | [`71ffe9c77dd7`](https://git.kernel.org/torvalds/c/71ffe9c77dd7) | [net] | netfilter: xt_TCPMSS: fix handling of malformed TCP header and options |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.11 | [`a206bcb3b020`](https://git.kernel.org/torvalds/c/a206bcb3b020) | [net] | netfilter: xt_TCPOPTSTRIP: fix possible off by one access |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.11 | [`a206bcb3b020`](https://git.kernel.org/torvalds/c/a206bcb3b020) | [net] | netfilter: xt_TCPOPTSTRIP: fix possible off by one access |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.11 | [`da12c90e0997`](https://git.kernel.org/torvalds/c/da12c90e0997) | [net] | netlink: Add compare function for netlink_table |  | generic code, tag [net] | 3.10.0-211 |
| CANDIDATE | 3.11 | [`c05cdb1b864f`](https://git.kernel.org/torvalds/c/c05cdb1b864f) | [net] | netlink: allow large data transfers from user-space |  | generic code, tag [net] | 3.10.0-51 |
| CANDIDATE | 3.11 | [`3a36515f7294`](https://git.kernel.org/torvalds/c/3a36515f7294) | [net] | netlink: fix splat in skb_clone with large messages |  | generic code, tag [net] | 3.10.0-51 |
| CANDIDATE | 3.11 | [`ca15febfe98f`](https://git.kernel.org/torvalds/c/ca15febfe98f) | [net] | netlink: make compare exist all the time |  | generic code, tag [net] | 3.10.0-211 |
| CANDIDATE | 3.11 | [`bcbde0d449ed`](https://git.kernel.org/torvalds/c/bcbde0d449ed) (loose) | [net] | netlink: virtual tap device management |  | generic code, tag [net] | 3.10.0-10 |
| CANDIDATE | 3.11 | [`00f97da17a0c`](https://git.kernel.org/torvalds/c/00f97da17a0c) | [net] | netpoll: fix position of network header |  | generic code, tag [net] | 3.10.0-107 |
| CANDIDATE | 3.11 | [`da6e378ba918`](https://git.kernel.org/torvalds/c/da6e378ba918) | [net] | netpoll: remove return value from netpoll_rx_disable() |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 3.11 | [`3b233fe04355`](https://git.kernel.org/torvalds/c/3b233fe04355) | [net] | nlmon: fix comparison in nlmon_is_valid_mtu |  | generic code, tag [net] | 3.10.0-10 |
| CANDIDATE | 3.11 | [`7e6d4da83738`](https://git.kernel.org/torvalds/c/7e6d4da83738) | [net] | nlmon: use standard rtnetlink link api for add/del devices |  | generic code, tag [net] | 3.10.0-10 |
| CANDIDATE | 3.11 | [`e4fc408e0e99`](https://git.kernel.org/torvalds/c/e4fc408e0e99) | [net] | packet: nlmon: virtual netlink monitoring device for packet sockets |  | CONFIG_PACKET=y in A37 | 3.10.0-10 |
| CANDIDATE | 3.11 | [`be9efd365328`](https://git.kernel.org/torvalds/c/be9efd365328) (loose) | [net] | pass changed flags along with NETDEV_CHANGE event |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 3.11 | [`b41abb42bf62`](https://git.kernel.org/torvalds/c/b41abb42bf62) (loose) | [net] | pass correct parameter to skb_headers_offset_update() |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | 3.11 | [`351638e7deee`](https://git.kernel.org/torvalds/c/351638e7deee) (loose) | [net] | pass info struct via netdevice notifier |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 3.11 | [`87f1369d6e2e`](https://git.kernel.org/torvalds/c/87f1369d6e2e) | [net] | pkt_sched: sch_qfq: improve efficiency of make_eligible |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.11 | [`88d4f419a43b`](https://git.kernel.org/torvalds/c/88d4f419a43b) | [net] | pkt_sched: sch_qfq: remove forward declaration of qfq_update_agg_ts |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.11 | [`30f3a40f9a2a`](https://git.kernel.org/torvalds/c/30f3a40f9a2a) (loose) | [net] | remove last caller of skb_tail_offset() and itself |  | generic code, tag [net] | 3.10.0-107 |
| CANDIDATE | 3.11 | [`288a9376371d`](https://git.kernel.org/torvalds/c/288a9376371d) (loose) | [net] | rename busy poll MIB counter |  | generic code, tag [net] | 3.10.0-63 |
| CANDIDATE | 3.11 | [`e0d1095ae340`](https://git.kernel.org/torvalds/c/e0d1095ae340) (loose) | [net] | rename CONFIG_NET_LL_RX_POLL to CONFIG_NET_RX_BUSY_POLL |  | generic code, tag [net] | 3.10.0-63 |
| CANDIDATE | 3.11 | [`32b8a8e59c9c`](https://git.kernel.org/torvalds/c/32b8a8e59c9c) | [net] | sit: add IPv4 over IPv4 support |  | CONFIG_IPV6_SIT=y in A37 | 3.10.0-14 |
| CANDIDATE | 3.11 | [`5e6700b3bf98`](https://git.kernel.org/torvalds/c/5e6700b3bf98) | [net] | sit: add support of x-netns |  | CONFIG_IPV6_SIT=y in A37 | 3.10.0-14 |
| CANDIDATE | 3.11 | [`963b89e80d9f`](https://git.kernel.org/torvalds/c/963b89e80d9f) | [net] | sit: fix 4in4 + IPsec scenario |  | CONFIG_IPV6_SIT=y in A37 | 3.10.0-14 |
| CANDIDATE | 3.11 | [`c2ff682a6f5c`](https://git.kernel.org/torvalds/c/c2ff682a6f5c) | [net] | sit: fix an oops when IFLA_IPTUN_PROTO is not set |  | CONFIG_IPV6_SIT=y in A37 | 3.10.0-14 |
| CANDIDATE | 3.11 | [`86bd68bfd759`](https://git.kernel.org/torvalds/c/86bd68bfd759) | [net] | sit: fix tunnel update via netlink |  | CONFIG_IPV6_SIT=y in A37 | 3.10.0-14 |
| CANDIDATE | 3.11 | [`24ab6bec8086`](https://git.kernel.org/torvalds/c/24ab6bec8086) | [net] | tcp: account all retransmit failures |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.11 | [`d30e383bb856`](https://git.kernel.org/torvalds/c/d30e383bb856) | [net] | tcp: add low latency socket poll support |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | 3.11 | [`6804973ffb42`](https://git.kernel.org/torvalds/c/6804973ffb42) | [net] | tcp: consolidate PRR packet accounting |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.11 | [`7026b912f97d`](https://git.kernel.org/torvalds/c/7026b912f97d) | [net] | tcp: fix undo on partial ack in recovery |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.11 | [`bcefe17cffd0`](https://git.kernel.org/torvalds/c/bcefe17cffd0) | [net] | tcp: introduce a per-route knob for quick ack |  | generic code, tag [net] | 3.10.0-10 |
| CANDIDATE | 3.11 | [`71cea17ed39f`](https://git.kernel.org/torvalds/c/71cea17ed39f) | [net] | tcp: md5: remove spinlock usage in fast path |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.11 | [`28850dc7c71d`](https://git.kernel.org/torvalds/c/28850dc7c71d) (loose) | [net] | tcp: move GRO/GSO functions to tcp_offload |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | 3.11 | [`85f16525a2eb`](https://git.kernel.org/torvalds/c/85f16525a2eb) | [net] | tcp: properly send new data in fast recovery in first RTT |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.11 | [`6a63df46a736`](https://git.kernel.org/torvalds/c/6a63df46a736) | [net] | tcp: refactor undo functions |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.11 | [`c48b22daa606`](https://git.kernel.org/torvalds/c/c48b22daa606) | [net] | tcp: Remove 2 indentation levels in tcp_rcv_state_process |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.11 | [`61eb900352ff`](https://git.kernel.org/torvalds/c/61eb900352ff) | [net] | tcp: Remove another indentation level in tcp_rcv_state_process |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.11 | [`3e59cb0ddfd2`](https://git.kernel.org/torvalds/c/3e59cb0ddfd2) | [net] | tcp: remove bad timeout logic in fast recovery |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.11 | [`7ae8639c9d6d`](https://git.kernel.org/torvalds/c/7ae8639c9d6d) | [net] | tcp: remove invalid __rcu annotation |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.11 | [`d2cf43674e17`](https://git.kernel.org/torvalds/c/d2cf43674e17) | [net] | tcp: speedup tcp_fixup_rcvbuf() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.11 | [`9ef71e0c8209`](https://git.kernel.org/torvalds/c/9ef71e0c8209) (loose) | [net] | tcp: typo unset should be unsent |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.11 | [`c7d9d6a185a7`](https://git.kernel.org/torvalds/c/c7d9d6a185a7) | [net] | tcp: undo on DSACK during recovery |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.11 | [`944a1376b6ca`](https://git.kernel.org/torvalds/c/944a1376b6ca) | [net] | tun: Turn tun_flow_init() into void fn |  | CONFIG_TUN=y in A37 | 3.10.0-818 |
| CANDIDATE | 3.11 | [`a5b50476f77a`](https://git.kernel.org/torvalds/c/a5b50476f77a) | [net] | udp: add low latency socket poll support |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | 3.11 | [`7c0cadc69ca2`](https://git.kernel.org/torvalds/c/7c0cadc69ca2) | [net] | udp: fix two sparse errors |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.11 | [`1a37e412a022`](https://git.kernel.org/torvalds/c/1a37e412a022) (loose) | [net] | Use 16bits for *_headers fields of struct skbuff |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | 3.11 | [`302a50bc9410`](https://git.kernel.org/torvalds/c/302a50bc9410) | [net] | xfrm: Fix potential null pointer dereference in xdst_queue_output |  | CONFIG_XFRM=y in A37 | 3.10.0-61 |
| CANDIDATE | 3.11 | [`0ea9d5e3e0e0`](https://git.kernel.org/torvalds/c/0ea9d5e3e0e0) | [net] | xfrm: introduce helper for safe determination of mtu |  | CONFIG_XFRM=y in A37 | 3.10.0-217 |
| CANDIDATE | 3.11 | [`628e341f319f`](https://git.kernel.org/torvalds/c/628e341f319f) | [net] | xfrm: make local error reporting more robust |  | CONFIG_XFRM=y in A37 | 3.10.0-1048 |
| CANDIDATE | 3.11 | [`5a25cf1e3108`](https://git.kernel.org/torvalds/c/5a25cf1e3108) | [net] | xfrm: revert ipv4 mtu determination to dst_mtu |  | CONFIG_XFRM=y in A37 | 3.10.0-217 |
| CANDIDATE | 3.12 | [`0042d0c840c6`](https://git.kernel.org/torvalds/c/0042d0c840c6) (loose) | [net] | add documentation for BQL helpers |  | generic code, tag [net] | 3.10.0-983 |
| CANDIDATE | 3.12 | [`5d261913ca3d`](https://git.kernel.org/torvalds/c/5d261913ca3d) (loose) | [net] | add lower_dev_list to net_device and make a full mesh |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.12 | [`66b52b0dc82c`](https://git.kernel.org/torvalds/c/66b52b0dc82c) (loose) | [net] | add ndo to get id of physical port of the device |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | 3.12 | [`8b5be8561b80`](https://git.kernel.org/torvalds/c/8b5be8561b80) (loose) | [net] | add netdev_for_each_upper_dev_rcu() |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.12 | [`48311f46853c`](https://git.kernel.org/torvalds/c/48311f46853c) (loose) | [net] | add netdev_upper_get_next_dev_rcu(dev, iter) |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.12 | [`64dc61306ce7`](https://git.kernel.org/torvalds/c/64dc61306ce7) (loose) | [net] | add sk_stream_is_writeable() helper |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`f3dfd20860db`](https://git.kernel.org/torvalds/c/f3dfd20860db) | [net] | af_unix: fix bug on large send() |  | CONFIG_UNIX=y in A37 | 3.10.0-271 |
| CANDIDATE | 3.12 | [`e370a7236321`](https://git.kernel.org/torvalds/c/e370a7236321) | [net] | af_unix: improve STREAM behavior with fragmented memory |  | CONFIG_UNIX=y in A37 | 3.10.0-271 |
| CANDIDATE | 3.12 | [`90972b22116b`](https://git.kernel.org/torvalds/c/90972b22116b) | [net] | arp/neighbour.h: Remove extern from function prototypes |  | generic code, tag [net] | 3.10.0-63 |
| CANDIDATE | 3.12 | [`28d6427109d1`](https://git.kernel.org/torvalds/c/28d6427109d1) (loose) | [net] | attempt high order allocations in sock_alloc_send_pskb() |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 3.12 | [`3c3769e63301`](https://git.kernel.org/torvalds/c/3c3769e63301) | [net] | bridge: apply multicast snooping to IPv6 link-local, too |  | CONFIG_BRIDGE=y in A37 | 3.10.0-74 |
| CANDIDATE | 3.12 | [`b90356ce17c2`](https://git.kernel.org/torvalds/c/b90356ce17c2) | [net] | bridge: Apply the PVID to priority-tagged frames |  | CONFIG_BRIDGE=y in A37 | 3.10.0-47 |
| CANDIDATE | 3.12 | [`93d8bf9fb8f3`](https://git.kernel.org/torvalds/c/93d8bf9fb8f3) | [net] | bridge: cleanup netpoll code |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.12 | [`8adff41c3d25`](https://git.kernel.org/torvalds/c/8adff41c3d25) | [net] | bridge: Don't use VID 0 and 4095 in vlan filtering |  | CONFIG_BRIDGE=y in A37 | 3.10.0-47 |
| CANDIDATE | 3.12 | [`762a3d89ebf5`](https://git.kernel.org/torvalds/c/762a3d89ebf5) | [net] | bridge: fix rcu check warning in multicast port group |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.12 | [`d1c6c708c4da`](https://git.kernel.org/torvalds/c/d1c6c708c4da) | [net] | bridge: Fix the way the PVID is referenced |  | CONFIG_BRIDGE=y in A37 | 3.10.0-47 |
| CANDIDATE | 3.12 | [`dfb5fa32c664`](https://git.kernel.org/torvalds/c/dfb5fa32c664) | [net] | bridge: Fix updating FDB entries when the PVID is applied |  | CONFIG_BRIDGE=y in A37 | 3.10.0-47 |
| CANDIDATE | 3.12 | [`8fad9c39f31f`](https://git.kernel.org/torvalds/c/8fad9c39f31f) | [net] | bridge: prevent flooding IPv6 packets that do not have a listener |  | CONFIG_BRIDGE=y in A37 | 3.10.0-74 |
| CANDIDATE | 3.12 | [`f144febd93d5`](https://git.kernel.org/torvalds/c/f144febd93d5) | [net] | bridge: update mdb expiration timer upon reports. |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.12 | [`4aa5dee4d999`](https://git.kernel.org/torvalds/c/4aa5dee4d999) (loose) | [net] | convert resend IGMP to notifier event |  | generic code, tag [net] | 3.10.0-107 |
| CANDIDATE | 3.12 | [`6be8aeef348a`](https://git.kernel.org/torvalds/c/6be8aeef348a) (loose) | [net] | core: convert class code to use dev_groups |  | generic code, tag [net] | 3.10.0-68 |
| CANDIDATE | 3.12 | [`83a093b486ec`](https://git.kernel.org/torvalds/c/83a093b486ec) (loose) | [net] | etherdevice: add address inherit helper |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 3.12 | [`ff80e519ab1b`](https://git.kernel.org/torvalds/c/ff80e519ab1b) (loose) | [net] | export physical port id via sysfs |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | 3.12 | [`7764a45a8f1f`](https://git.kernel.org/torvalds/c/7764a45a8f1f) | [net] | fib_rules: add .suppress operation |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 3.12 | [`73f5698e7721`](https://git.kernel.org/torvalds/c/73f5698e7721) | [net] | fib_rules: fix suppressor names and default values |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 3.12 | [`bc6fc9fa0e16`](https://git.kernel.org/torvalds/c/bc6fc9fa0e16) (loose) | [net] | fix comment typo for __skb_alloc_pages() |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 3.12 | [`b438f940d354`](https://git.kernel.org/torvalds/c/b438f940d354) | [net] | flow_dissector: add support for IPPROTO_IPV6 |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 3.12 | [`fca418955148`](https://git.kernel.org/torvalds/c/fca418955148) | [net] | flow_dissector: clean up IPIP case |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 3.12 | [`2690048c01f3`](https://git.kernel.org/torvalds/c/2690048c01f3) (loose) | [net] | igmp: Allow user-space configuration of igmp unsolicited report interval |  | generic code, tag [net] | 3.10.0-1015 |
| CANDIDATE | 3.12 | [`5c6fe01c1fe3`](https://git.kernel.org/torvalds/c/5c6fe01c1fe3) (loose) | [net] | igmp: Don't flush routing cache when force_igmp_version is modified |  | generic code, tag [net] | 3.10.0-1015 |
| CANDIDATE | 3.12 | [`cab70040dfd9`](https://git.kernel.org/torvalds/c/cab70040dfd9) (loose) | [net] | igmp: Reduce Unsolicited report interval to 1s when using IGMPv3 |  | generic code, tag [net] | 3.10.0-980 |
| CANDIDATE | 3.12 | [`c547dbf55d5f`](https://git.kernel.org/torvalds/c/c547dbf55d5f) | [net] | ip6_output: do skb ufo init for peeked non ufo skb as well |  | generic code, tag [net] | 3.10.0-38 |
| CANDIDATE | 3.12 | [`e837735ec406`](https://git.kernel.org/torvalds/c/e837735ec406) | [net] | ip6_tunnel: ensure to always have a link local address |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.12 | [`0bd8762824e7`](https://git.kernel.org/torvalds/c/0bd8762824e7) | [net] | ip6tnl: add x-netns support |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.12 | [`e93b7d748be8`](https://git.kernel.org/torvalds/c/e93b7d748be8) | [net] | ip_output: do skb ufo init for peeked non ufo skb as well |  | generic code, tag [net] | 3.10.0-38 |
| CANDIDATE | 3.12 | [`670132826271`](https://git.kernel.org/torvalds/c/670132826271) | [net] | ip_tunnel: Add fallback tunnels to the hash lists |  | generic code, tag [net] | 3.10.0-107 |
| CANDIDATE | 3.12 | [`d4a71b155c12`](https://git.kernel.org/torvalds/c/d4a71b155c12) | [net] | ip_tunnel: Do not use stale inner_iph pointer |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 3.12 | [`6261d983f226`](https://git.kernel.org/torvalds/c/6261d983f226) | [net] | ip_tunnel: embed hash list head |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | 3.12 | [`cfe4a536927c`](https://git.kernel.org/torvalds/c/cfe4a536927c) | [net] | ip_tunnel: Remove double unregister of the fallback device |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.12 | [`c4854ec8c483`](https://git.kernel.org/torvalds/c/c4854ec8c483) | [net] | ipmr: change the prototype of ip_mr_forward() |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 3.12 | [`b3b2b9e192d5`](https://git.kernel.org/torvalds/c/b3b2b9e192d5) | [net] | ipsec: Don't update the pmtu on ICMPV6_DEST_UNREACH |  | CONFIG_XFRM=y in A37 | 3.10.0-220 |
| CANDIDATE | 3.12 | [`8b7ed2d91d6a`](https://git.kernel.org/torvalds/c/8b7ed2d91d6a) | [net] | iptunnels: remove net arg from iptunnel_xmit() |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.12 | [`9d4a03146429`](https://git.kernel.org/torvalds/c/9d4a03146429) | [net] | ipv4, ipv6: send igmpv3/mld packets with TC_PRIO_CONTROL |  | generic code, tag [net] | 3.10.0-47 |
| CANDIDATE | 3.12 | [`734d2725db87`](https://git.kernel.org/torvalds/c/734d2725db87) | [net] | ipv4: raise IP_MAX_MTU to theoretical limit |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 3.12 | [`d949d826c09f`](https://git.kernel.org/torvalds/c/d949d826c09f) | [net] | ipv6: Add generic UDP Tunnel segmentation |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | 3.12 | [`582442d6d5bc`](https://git.kernel.org/torvalds/c/582442d6d5bc) | [net] | ipv6: Allow the MTU of ipip6 tunnel to be set below 1280 |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.12 | [`439677d766ba`](https://git.kernel.org/torvalds/c/439677d766ba) | [net] | ipv6: bump genid when delete/add address |  | generic code, tag [net] | 3.10.0-193 |
| CANDIDATE | 3.12 | [`ba3542e15cf8`](https://git.kernel.org/torvalds/c/ba3542e15cf8) | [net] | ipv6: convert the uses of ADBG and remove the superfluous parentheses |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.12 | [`caf92bc40070`](https://git.kernel.org/torvalds/c/caf92bc40070) | [net] | ipv6: do not call ndisc_send_rs() with write lock |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | 3.12 | [`5f81bd2e5d80`](https://git.kernel.org/torvalds/c/5f81bd2e5d80) | [net] | ipv6: export a stub for IPv6 symbols used by vxlan |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | 3.12 | [`034dfc5df99e`](https://git.kernel.org/torvalds/c/034dfc5df99e) | [net] | ipv6: export in6addr_loopback to modules |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | 3.12 | [`46b3a421903a`](https://git.kernel.org/torvalds/c/46b3a421903a) | [net] | ipv6: fib6_rules should return exact return value |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 3.12 | [`0e719e3a53cc`](https://git.kernel.org/torvalds/c/0e719e3a53cc) | [net] | ipv6: Fix the upper MTU limit in GRE tunnel |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 3.12 | [`846989635b36`](https://git.kernel.org/torvalds/c/846989635b36) (loose) | [net] | ipv6: igmp6_event_query: use msecs_to_jiffies |  | generic code, tag [net] | 3.10.0-47 |
| CANDIDATE | 3.12 | [`bf58175954f2`](https://git.kernel.org/torvalds/c/bf58175954f2) | [net] | ipv6: Initialize ip6_tnl.hlen in gre tunnel even if no route is found |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 3.12 | [`b55b76b22144`](https://git.kernel.org/torvalds/c/b55b76b22144) (loose) | [net] | ipv6: introduce function to find route for redirect |  | generic code, tag [net] | 3.10.0-61 |
| CANDIDATE | 3.12 | [`6c567b78c8a7`](https://git.kernel.org/torvalds/c/6c567b78c8a7) (loose) | [net] | ipv6: mld: clean up MLD_V1_SEEN macro |  | generic code, tag [net] | 3.10.0-47 |
| CANDIDATE | 3.12 | [`89225d1ce6af`](https://git.kernel.org/torvalds/c/89225d1ce6af) (loose) | [net] | ipv6: mld: fix v1/v2 switchback timeout to rfc3810, 9.12. |  | generic code, tag [net] | 3.10.0-47 |
| CANDIDATE | 3.12 | [`e3f5b17047de`](https://git.kernel.org/torvalds/c/e3f5b17047de) (loose) | [net] | ipv6: mld: get rid of MLDV2_MRC and simplify calculation |  | generic code, tag [net] | 3.10.0-47 |
| CANDIDATE | 3.12 | [`58c0ecfd8d98`](https://git.kernel.org/torvalds/c/58c0ecfd8d98) (loose) | [net] | ipv6: mld: implement RFC3810 MLDv2 mode only |  | generic code, tag [net] | 3.10.0-47 |
| CANDIDATE | 3.12 | [`b4af8def5c08`](https://git.kernel.org/torvalds/c/b4af8def5c08) (loose) | [net] | ipv6: mld: introduce mld_{gq, ifc, dad}_stop_timer functions |  | generic code, tag [net] | 3.10.0-47 |
| CANDIDATE | 3.12 | [`2b7c121f82b4`](https://git.kernel.org/torvalds/c/2b7c121f82b4) (loose) | [net] | ipv6: mld: refactor query processing into v1/v2 functions |  | generic code, tag [net] | 3.10.0-47 |
| CANDIDATE | 3.12 | [`cc7f7ab758f6`](https://git.kernel.org/torvalds/c/cc7f7ab758f6) (loose) | [net] | ipv6: mld: similarly to MLDv2 have min max_delay of 1 |  | generic code, tag [net] | 3.10.0-47 |
| CANDIDATE | 3.12 | [`f39dc1023d6b`](https://git.kernel.org/torvalds/c/f39dc1023d6b) | [net] | ipv6: move in6_dev_finish_destroy() into core kernel |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | 3.12 | [`3ce9b35ff6de`](https://git.kernel.org/torvalds/c/3ce9b35ff6de) | [net] | ipv6: move ip6_dst_hoplimit() into core kernel |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | 3.12 | [`788787b55913`](https://git.kernel.org/torvalds/c/788787b55913) | [net] | ipv6: move ip6_local_out into core kernel |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | 3.12 | [`3e25c65ed085`](https://git.kernel.org/torvalds/c/3e25c65ed085) | [net] | net: neighbour: Remove CONFIG_ARPD |  | generic code, tag [net] | 3.10.0-63 |
| CANDIDATE | 3.12 | [`ff704050f2fc`](https://git.kernel.org/torvalds/c/ff704050f2fc) | [net] | netem: free skb's in tree on reset |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.12 | [`f2f872f9272a`](https://git.kernel.org/torvalds/c/f2f872f9272a) | [net] | netem: Introduce skb_orphan_partial() helper |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.12 | [`638a52b801e4`](https://git.kernel.org/torvalds/c/638a52b801e4) | [net] | netem: update backlog after drop |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.12 | [`4ad362282cb4`](https://git.kernel.org/torvalds/c/4ad362282cb4) | [net] | netfilter: add IPv6 SYNPROXY target |  | CONFIG_NETFILTER=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`4ad362282cb4`](https://git.kernel.org/torvalds/c/4ad362282cb4) | [net] | netfilter: add IPv6 SYNPROXY target |  | CONFIG_NETFILTER=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`48b1de4c110a`](https://git.kernel.org/torvalds/c/48b1de4c110a) | [net] | netfilter: add SYNPROXY core/target |  | CONFIG_NETFILTER=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`48b1de4c110a`](https://git.kernel.org/torvalds/c/48b1de4c110a) | [net] | netfilter: add SYNPROXY core/target |  | CONFIG_NETFILTER=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`b7e092c05b30`](https://git.kernel.org/torvalds/c/b7e092c05b30) | [net] | netfilter: ctnetlink: fix uninitialized variable |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`b7e092c05b30`](https://git.kernel.org/torvalds/c/b7e092c05b30) | [net] | netfilter: ctnetlink: fix uninitialized variable |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`0ef71ee1a5b9`](https://git.kernel.org/torvalds/c/0ef71ee1a5b9) | [net] | netfilter: ctnetlink: refactor ctnetlink_create_expect |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`0ef71ee1a5b9`](https://git.kernel.org/torvalds/c/0ef71ee1a5b9) | [net] | netfilter: ctnetlink: refactor ctnetlink_create_expect |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`38c67328ac79`](https://git.kernel.org/torvalds/c/38c67328ac79) | [net] | netfilter: export xt_HMARK.h to userland |  | CONFIG_NETFILTER=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`38c67328ac79`](https://git.kernel.org/torvalds/c/38c67328ac79) | [net] | netfilter: export xt_HMARK.h to userland |  | CONFIG_NETFILTER=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`f0c03956ac40`](https://git.kernel.org/torvalds/c/f0c03956ac40) | [net] | netfilter: export xt_rpfilter.h to userland |  | CONFIG_NETFILTER=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`f0c03956ac40`](https://git.kernel.org/torvalds/c/f0c03956ac40) | [net] | netfilter: export xt_rpfilter.h to userland |  | CONFIG_NETFILTER=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`1a5bbfc3d6b7`](https://git.kernel.org/torvalds/c/1a5bbfc3d6b7) | [net] | netfilter: Fix build errors with xt_socket.c |  | CONFIG_NETFILTER=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`1a5bbfc3d6b7`](https://git.kernel.org/torvalds/c/1a5bbfc3d6b7) | [net] | netfilter: Fix build errors with xt_socket.c |  | CONFIG_NETFILTER=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`affe759dbaa9`](https://git.kernel.org/torvalds/c/affe759dbaa9) (loose) | [net] | netfilter: ip[6]t_REJECT, tcp-reset using wrong MAC source if bridged |  | CONFIG_NETFILTER=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`affe759dbaa9`](https://git.kernel.org/torvalds/c/affe759dbaa9) (loose) | [net] | netfilter: ip[6]t_REJECT, tcp-reset using wrong MAC source if bridged |  | CONFIG_NETFILTER=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`775ada6d9f4c`](https://git.kernel.org/torvalds/c/775ada6d9f4c) | [net] | netfilter: more strict TCP flag matching in SYNPROXY |  | CONFIG_NETFILTER=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`775ada6d9f4c`](https://git.kernel.org/torvalds/c/775ada6d9f4c) | [net] | netfilter: more strict TCP flag matching in SYNPROXY |  | CONFIG_NETFILTER=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`312a0c16c1fa`](https://git.kernel.org/torvalds/c/312a0c16c1fa) | [net] | netfilter: nf_conntrack: constify sk_buff argument to nf_ct_attach() |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`312a0c16c1fa`](https://git.kernel.org/torvalds/c/312a0c16c1fa) | [net] | netfilter: nf_conntrack: constify sk_buff argument to nf_ct_attach() |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`c655bc6896b9`](https://git.kernel.org/torvalds/c/c655bc6896b9) | [net] | netfilter: nf_conntrack: don't send destroy events from iterator |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`c655bc6896b9`](https://git.kernel.org/torvalds/c/c655bc6896b9) | [net] | netfilter: nf_conntrack: don't send destroy events from iterator |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`41d73ec053d2`](https://git.kernel.org/torvalds/c/41d73ec053d2) | [net] | netfilter: nf_conntrack: make sequence number adjustments usuable without NAT |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`41d73ec053d2`](https://git.kernel.org/torvalds/c/41d73ec053d2) | [net] | netfilter: nf_conntrack: make sequence number adjustments usuable without NAT |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`02982c27ba1e`](https://git.kernel.org/torvalds/c/02982c27ba1e) | [net] | netfilter: nf_conntrack: remove duplicate code in ctnetlink |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`02982c27ba1e`](https://git.kernel.org/torvalds/c/02982c27ba1e) | [net] | netfilter: nf_conntrack: remove duplicate code in ctnetlink |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`6704af53fc3c`](https://git.kernel.org/torvalds/c/6704af53fc3c) | [net] | netfilter: nf_conntrack: remove net_ratelimit() for LOG_INVALID() |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`6704af53fc3c`](https://git.kernel.org/torvalds/c/6704af53fc3c) | [net] | netfilter: nf_conntrack: remove net_ratelimit() for LOG_INVALID() |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`706f5151e349`](https://git.kernel.org/torvalds/c/706f5151e349) | [net] | netfilter: nf_defrag_ipv6.o included twice |  | CONFIG_NETFILTER=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`706f5151e349`](https://git.kernel.org/torvalds/c/706f5151e349) | [net] | netfilter: nf_defrag_ipv6.o included twice |  | CONFIG_NETFILTER=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`2d89c68ac78a`](https://git.kernel.org/torvalds/c/2d89c68ac78a) | [net] | netfilter: nf_nat: change sequence number adjustments to 32 bits |  | CONFIG_NF_NAT=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`2d89c68ac78a`](https://git.kernel.org/torvalds/c/2d89c68ac78a) | [net] | netfilter: nf_nat: change sequence number adjustments to 32 bits |  | CONFIG_NF_NAT=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`0658cdc8f3ba`](https://git.kernel.org/torvalds/c/0658cdc8f3ba) | [net] | netfilter: nf_nat: fix locking in nf_nat_seq_adjust() |  | CONFIG_NF_NAT=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`0658cdc8f3ba`](https://git.kernel.org/torvalds/c/0658cdc8f3ba) | [net] | netfilter: nf_nat: fix locking in nf_nat_seq_adjust() |  | CONFIG_NF_NAT=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`12e7ada385ea`](https://git.kernel.org/torvalds/c/12e7ada385ea) | [net] | netfilter: nf_nat: use per-conntrack locking for sequence number adjustments |  | CONFIG_NF_NAT=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`12e7ada385ea`](https://git.kernel.org/torvalds/c/12e7ada385ea) | [net] | netfilter: nf_nat: use per-conntrack locking for sequence number adjustments |  | CONFIG_NF_NAT=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`bd0779370588`](https://git.kernel.org/torvalds/c/bd0779370588) | [net] | netfilter: nfnetlink_queue: allow to attach expectations to conntracks |  | CONFIG_NETFILTER_NETLINK_QUEUE=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`bd0779370588`](https://git.kernel.org/torvalds/c/bd0779370588) | [net] | netfilter: nfnetlink_queue: allow to attach expectations to conntracks |  | CONFIG_NETFILTER_NETLINK_QUEUE=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`f4a87e7bd2ea`](https://git.kernel.org/torvalds/c/f4a87e7bd2ea) | [net] | netfilter: synproxy: fix BUG_ON triggered by corrupt TCP packets |  | CONFIG_NETFILTER=y in A37 | 3.10.0-41 |
| CANDIDATE | 3.12 | [`7cc9eb6ef78d`](https://git.kernel.org/torvalds/c/7cc9eb6ef78d) | [net] | netfilter: SYNPROXY: let unrelated packets continue |  | CONFIG_NETFILTER=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`7cc9eb6ef78d`](https://git.kernel.org/torvalds/c/7cc9eb6ef78d) | [net] | netfilter: SYNPROXY: let unrelated packets continue |  | CONFIG_NETFILTER=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`f4de4c89d89d`](https://git.kernel.org/torvalds/c/f4de4c89d89d) | [net] | netfilter: synproxy_core: fix warning in __nf_ct_ext_add_length() |  | CONFIG_NETFILTER=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`f4de4c89d89d`](https://git.kernel.org/torvalds/c/f4de4c89d89d) | [net] | netfilter: synproxy_core: fix warning in __nf_ct_ext_add_length() |  | CONFIG_NETFILTER=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`d8b3bfc253d8`](https://git.kernel.org/torvalds/c/d8b3bfc253d8) | [net] | netfilter: tproxy: fix build with IP6_NF_IPTABLES=n |  | CONFIG_NETFILTER=y in A37 | 3.10.0-63 |
| CANDIDATE | 3.12 | [`fd158d79d33d`](https://git.kernel.org/torvalds/c/fd158d79d33d) | [net] | netfilter: tproxy: remove nf_tproxy_core, keep tw sk assigned to skb |  | CONFIG_NETFILTER=y in A37 | 3.10.0-63 |
| CANDIDATE | 3.12 | [`93742cf8af9d`](https://git.kernel.org/torvalds/c/93742cf8af9d) | [net] | netfilter: tproxy: remove nf_tproxy_core.h |  | CONFIG_NETFILTER=y in A37 | 3.10.0-63 |
| CANDIDATE | 3.12 | [`1205e1fa6158`](https://git.kernel.org/torvalds/c/1205e1fa6158) | [net] | netfilter: xt_TCPMSS: correct return value in tcpmss_mangle_packet |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-33 |
| CANDIDATE | 3.12 | [`1205e1fa6158`](https://git.kernel.org/torvalds/c/1205e1fa6158) | [net] | netfilter: xt_TCPMSS: correct return value in tcpmss_mangle_packet |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-32 |
| CANDIDATE | 3.12 | [`3573540cafa4`](https://git.kernel.org/torvalds/c/3573540cafa4) | [net] | netif_set_xps_queue: make cpu mask const |  | generic code, tag [net] | 3.10.0-299 |
| CANDIDATE | 3.12 | [`5ffd5cddd4d3`](https://git.kernel.org/torvalds/c/5ffd5cddd4d3) (loose) | [net] | netlink: filter particular protocols from analyzers |  | generic code, tag [net] | 3.10.0-26 |
| CANDIDATE | 3.12 | [`5df0ddfbc920`](https://git.kernel.org/torvalds/c/5df0ddfbc920) (loose) | [net] | packet: add randomized fanout scheduler |  | CONFIG_PACKET=y in A37 | 3.10.0-128 |
| CANDIDATE | 3.12 | [`f55d112e5293`](https://git.kernel.org/torvalds/c/f55d112e5293) (loose) | [net] | packet: use reciprocal_divide in fanout_demux_hash |  | CONFIG_PACKET=y in A37 | 3.10.0-128 |
| CANDIDATE | 3.12 | [`afe4fd062416`](https://git.kernel.org/torvalds/c/afe4fd062416) | [net] | pkt_sched: fq: Fair Queue packet scheduler |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.12 | [`7eec4174ff29`](https://git.kernel.org/torvalds/c/7eec4174ff29) | [net] | pkt_sched: fq: fix non TCP flows pacing |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.12 | [`ede869cd0f45`](https://git.kernel.org/torvalds/c/ede869cd0f45) | [net] | pkt_sched: fq: fix typo for initial_quantum |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.12 | [`08f89b981b0e`](https://git.kernel.org/torvalds/c/08f89b981b0e) | [net] | pkt_sched: fq: prefetch() fix |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.12 | [`8d34ce10c59b`](https://git.kernel.org/torvalds/c/8d34ce10c59b) | [net] | pkt_sched: fq: qdisc dismantle fixes |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.12 | [`0eab5eb7a3a9`](https://git.kernel.org/torvalds/c/0eab5eb7a3a9) | [net] | pkt_sched: fq: rate limiting improvements |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.12 | [`ebd8b934e23f`](https://git.kernel.org/torvalds/c/ebd8b934e23f) | [net] | pptp: fix byte order warnings |  | CONFIG_PPP=y in A37 | 3.10.0-637 |
| CANDIDATE | 3.12 | [`3499116b915e`](https://git.kernel.org/torvalds/c/3499116b915e) | [net] | ptp: convert class code to use dev_groups |  | generic code, tag [net] | 3.10.0-68 |
| CANDIDATE | 3.12 | [`6da7c8fcbcbd`](https://git.kernel.org/torvalds/c/6da7c8fcbcbd) | [net] | qdisc: allow setting default queuing discipline |  | generic code, tag [net] | 3.10.0-33 |
| CANDIDATE | 3.12 | [`6da7c8fcbcbd`](https://git.kernel.org/torvalds/c/6da7c8fcbcbd) | [net] | qdisc: allow setting default queuing discipline |  | generic code, tag [net] | 3.10.0-32 |
| CANDIDATE | 3.12 | [`34aedd3f3b28`](https://git.kernel.org/torvalds/c/34aedd3f3b28) | [net] | qdisc: fix build with !CONFIG_NET_SCHED |  | generic code, tag [net] | 3.10.0-33 |
| CANDIDATE | 3.12 | [`34aedd3f3b28`](https://git.kernel.org/torvalds/c/34aedd3f3b28) | [net] | qdisc: fix build with !CONFIG_NET_SCHED |  | generic code, tag [net] | 3.10.0-32 |
| CANDIDATE | 3.12 | [`d2a7f269f912`](https://git.kernel.org/torvalds/c/d2a7f269f912) | [net] | qdisc: make args to qdisc_create_default const |  | generic code, tag [net] | 3.10.0-33 |
| CANDIDATE | 3.12 | [`d2a7f269f912`](https://git.kernel.org/torvalds/c/d2a7f269f912) | [net] | qdisc: make args to qdisc_create_default const |  | generic code, tag [net] | 3.10.0-32 |
| CANDIDATE | 3.12 | [`5c15257f9323`](https://git.kernel.org/torvalds/c/5c15257f9323) (loose) | [net] | Remove extern from include/net/ scheduling prototypes |  | generic code, tag [net] | 3.10.0-33 |
| CANDIDATE | 3.12 | [`5c15257f9323`](https://git.kernel.org/torvalds/c/5c15257f9323) (loose) | [net] | Remove extern from include/net/ scheduling prototypes |  | generic code, tag [net] | 3.10.0-32 |
| CANDIDATE | 3.12 | [`620f3186caa8`](https://git.kernel.org/torvalds/c/620f3186caa8) (loose) | [net] | remove search_list from netdev_adjacent |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.12 | [`aa9d85605f5a`](https://git.kernel.org/torvalds/c/aa9d85605f5a) (loose) | [net] | rename netdev_upper to netdev_adjacent |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.12 | [`454594f3b93a`](https://git.kernel.org/torvalds/c/454594f3b93a) | [net] | revert "bridge: only expire the mdb entry when query is received" |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | 3.12 | [`fce9b9be89ce`](https://git.kernel.org/torvalds/c/fce9b9be89ce) | [net] | rtnetlink: remove an unneeded test |  | generic code, tag [net] | 3.10.0-491 |
| CANDIDATE | 3.12 | [`66cae9ed6bc4`](https://git.kernel.org/torvalds/c/66cae9ed6bc4) | [net] | rtnl: export physical port id via RT netlink |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | 3.12 | [`8b27f27797ca`](https://git.kernel.org/torvalds/c/8b27f27797ca) | [net] | skb: allow skb_scrub_packet() to be used by tunnels |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.12 | [`ca4c3fc24e29`](https://git.kernel.org/torvalds/c/ca4c3fc24e29) (loose) | [net] | split rt_genid for ipv4 and ipv6 |  | generic code, tag [net] | 3.10.0-193 |
| CANDIDATE | 3.12 | [`cfd280c91253`](https://git.kernel.org/torvalds/c/cfd280c91253) (loose) | [net] | sync some IP headers with glibc |  | generic code, tag [net] | 3.10.0-345 |
| CANDIDATE | 3.12 | [`0198230b7705`](https://git.kernel.org/torvalds/c/0198230b7705) (loose) | [net] | syncookies: export cookie_v4_init_sequence/cookie_v4_check |  | generic code, tag [net] | 3.10.0-33 |
| CANDIDATE | 3.12 | [`0198230b7705`](https://git.kernel.org/torvalds/c/0198230b7705) (loose) | [net] | syncookies: export cookie_v4_init_sequence/cookie_v4_check |  | generic code, tag [net] | 3.10.0-32 |
| CANDIDATE | 3.12 | [`81eb6a148771`](https://git.kernel.org/torvalds/c/81eb6a148771) (loose) | [net] | syncookies: export cookie_v6_init_sequence/cookie_v6_check |  | generic code, tag [net] | 3.10.0-33 |
| CANDIDATE | 3.12 | [`81eb6a148771`](https://git.kernel.org/torvalds/c/81eb6a148771) (loose) | [net] | syncookies: export cookie_v6_init_sequence/cookie_v6_check |  | generic code, tag [net] | 3.10.0-32 |
| CANDIDATE | 3.12 | [`5bc3db5c9ca8`](https://git.kernel.org/torvalds/c/5bc3db5c9ca8) | [net] | tc: export tc_defact.h to userspace |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.12 | [`149479d019e0`](https://git.kernel.org/torvalds/c/149479d019e0) | [net] | tcp: add server ip to encrypt cookie in fast open |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`5ad37d5deee1`](https://git.kernel.org/torvalds/c/5ad37d5deee1) | [net] | tcp: add tcp_syncookies mode to allow unconditionally generation of syncookies |  | generic code, tag [net] | 3.10.0-150 |
| CANDIDATE | 3.12 | [`5843ef421311`](https://git.kernel.org/torvalds/c/5843ef421311) | [net] | tcp: Always set options to 0 before calling tcp_established_options |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`52f20e655d9f`](https://git.kernel.org/torvalds/c/52f20e655d9f) | [net] | tcp: better comments for RTO initiallization |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`c995ae2259ee`](https://git.kernel.org/torvalds/c/c995ae2259ee) | [net] | tcp: Change return value of tcp_rcv_established() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`375fe02c9179`](https://git.kernel.org/torvalds/c/375fe02c9179) | [net] | tcp: consolidate SYNACK RTT sampling |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`1b7fdd2ab585`](https://git.kernel.org/torvalds/c/1b7fdd2ab585) | [net] | tcp: do not use cached RTT for RTT estimation |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`16edfe7ee02d`](https://git.kernel.org/torvalds/c/16edfe7ee02d) | [net] | tcp: fix no cwnd growth after timeout |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`269aa759b474`](https://git.kernel.org/torvalds/c/269aa759b474) | [net] | tcp: fix RTO calculated from cached RTT |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`0f7cc9a3c2bd`](https://git.kernel.org/torvalds/c/0f7cc9a3c2bd) | [net] | tcp: increase throughput when reordering is high |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`02cf4ebd82ff`](https://git.kernel.org/torvalds/c/02cf4ebd82ff) | [net] | tcp: initialize passive-side sk_pacing_rate after 3WHS |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`59c9af4234b0`](https://git.kernel.org/torvalds/c/59c9af4234b0) | [net] | tcp: measure RTT from new SACK |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`5b08e47caf1f`](https://git.kernel.org/torvalds/c/5b08e47caf1f) | [net] | tcp: prefer packet timing to TS-ECR for RTT |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`4e4f1fc22681`](https://git.kernel.org/torvalds/c/4e4f1fc22681) | [net] | tcp: properly increase rcv_ssthresh for ofo packets |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`c0155b2da4cd`](https://git.kernel.org/torvalds/c/c0155b2da4cd) | [net] | tcp: Remove unused tcpct declarations and comments |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`74c181d528bd`](https://git.kernel.org/torvalds/c/74c181d528bd) | [net] | tcp: reset reordering est. selectively on timeout |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`c9bee3b7fdec`](https://git.kernel.org/torvalds/c/c9bee3b7fdec) | [net] | tcp: TCP_NOTSENT_LOWAT socket option |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`397b41746333`](https://git.kernel.org/torvalds/c/397b41746333) | [net] | tcp: trivial: Remove nocache argument from tcp_v4_send_synack |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`ed08495c31bb`](https://git.kernel.org/torvalds/c/ed08495c31bb) | [net] | tcp: use RTT from SACK for RTO |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.12 | [`cc8c6c1b21c9`](https://git.kernel.org/torvalds/c/cc8c6c1b21c9) (loose) | [net] | tcp_probe: adapt tbuf size for recent changes |  | generic code, tag [net] | 3.10.0-21 |
| CANDIDATE | 3.12 | [`f925d0a62db3`](https://git.kernel.org/torvalds/c/f925d0a62db3) (loose) | [net] | tcp_probe: add IPv6 support |  | generic code, tag [net] | 3.10.0-21 |
| CANDIDATE | 3.12 | [`b1dcdc68b1f4`](https://git.kernel.org/torvalds/c/b1dcdc68b1f4) (loose) | [net] | tcp_probe: allow more advanced ingress filtering by mark |  | generic code, tag [net] | 3.10.0-21 |
| CANDIDATE | 3.12 | [`b4c1c1d03842`](https://git.kernel.org/torvalds/c/b4c1c1d03842) (loose) | [net] | tcp_probe: also include rcv_wnd next to snd_wnd |  | generic code, tag [net] | 3.10.0-21 |
| CANDIDATE | 3.12 | [`d8cdeda6ddbc`](https://git.kernel.org/torvalds/c/d8cdeda6ddbc) (loose) | [net] | tcp_probe: kprobes: adapt jtcp_rcv_established signature |  | generic code, tag [net] | 3.10.0-21 |
| CANDIDATE | 3.12 | [`ea23192e8e57`](https://git.kernel.org/torvalds/c/ea23192e8e57) | [net] | tunnels: harmonize cleanup done on skb on rx path |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.12 | [`963a88b31ddb`](https://git.kernel.org/torvalds/c/963a88b31ddb) | [net] | tunnels: harmonize cleanup done on skb on xmit path |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.12 | [`e36d3ff91130`](https://git.kernel.org/torvalds/c/e36d3ff91130) | [net] | udp6: respect IPV6_DONTFRAG sockopt in case there are pending frames |  | generic code, tag [net] | 3.10.0-38 |
| CANDIDATE | 3.12 | [`1a462d189280`](https://git.kernel.org/torvalds/c/1a462d189280) (loose) | [net] | udp: do not report ICMP redirects to user space |  | generic code, tag [net] | 3.10.0-217 |
| CANDIDATE | 3.12 | [`a88c32ae15f2`](https://git.kernel.org/torvalds/c/a88c32ae15f2) | [net] | usbnet: centralize computing of max rx/tx qlen |  | CONFIG_USB_USBNET=y in A37 | 3.10.0-49 |
| CANDIDATE | 3.12 | [`60e453a940ac`](https://git.kernel.org/torvalds/c/60e453a940ac) | [net] | usbnet: fix handling padding packet |  | CONFIG_USB_USBNET=y in A37 | 3.10.0-49 |
| CANDIDATE | 3.12 | [`638c5115a794`](https://git.kernel.org/torvalds/c/638c5115a794) | [net] | usbnet: support DMA SG |  | CONFIG_USB_USBNET=y in A37 | 3.10.0-49 |
| CANDIDATE | 3.12 | [`e7d8f6cb2f87`](https://git.kernel.org/torvalds/c/e7d8f6cb2f87) | [net] | xfrm: Add refcount handling to queued policies |  | CONFIG_XFRM=y in A37 | 3.10.0-312 |
| CANDIDATE | 3.12 | [`2bb53e255796`](https://git.kernel.org/torvalds/c/2bb53e255796) | [net] | xfrm: check for a vaild skb in xfrm_policy_queue_process |  | CONFIG_XFRM=y in A37 | 3.10.0-312 |
| CANDIDATE | 3.12 | [`e473fcb47257`](https://git.kernel.org/torvalds/c/e473fcb47257) | [net] | xfrm: constify mark argument of xfrm_find_acq() |  | CONFIG_XFRM=y in A37 | 3.10.0-312 |
| CANDIDATE | 3.12 | [`bafd4bd4dcfa`](https://git.kernel.org/torvalds/c/bafd4bd4dcfa) | [net] | xfrm: Decode sessions with output interface |  | CONFIG_XFRM=y in A37 | 3.10.0-312 |
| CANDIDATE | 3.12 | [`0659eea912cf`](https://git.kernel.org/torvalds/c/0659eea912cf) | [net] | xfrm: Delete hold_timer when destroy policy |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 3.12 | [`cd808fc9a6c7`](https://git.kernel.org/torvalds/c/cd808fc9a6c7) | [net] | xfrm: Fix aevent generation for each received packet |  | CONFIG_XFRM=y in A37 | 3.10.0-352 |
| CANDIDATE | 3.12 | [`4479ff76c436`](https://git.kernel.org/torvalds/c/4479ff76c436) | [net] | xfrm: Fix replay size checking on async events |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 3.12 | [`33fce60d6a6e`](https://git.kernel.org/torvalds/c/33fce60d6a6e) | [net] | xfrm: Guard IPsec anti replay window against replay bitmap |  | CONFIG_XFRM=y in A37 | 3.10.0-352 |
| CANDIDATE | 3.12 | [`99565a6c471c`](https://git.kernel.org/torvalds/c/99565a6c471c) | [net] | xfrm: Make xfrm_state timer monotonic |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 3.12 | [`e3fec5a1c5a1`](https://git.kernel.org/torvalds/c/e3fec5a1c5a1) | [net] | xfrm: remove irrelevant comment in xfrm_input(). |  | CONFIG_XFRM=y in A37 | 3.10.0-312 |
| CANDIDATE | 3.13 | [`b6ccba4c681f`](https://git.kernel.org/torvalds/c/b6ccba4c681f) (loose) | [net] | add a possibility to get private from netdev_adjacent->list |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.13 | [`2f268f129c2d`](https://git.kernel.org/torvalds/c/2f268f129c2d) (loose) | [net] | add adj_list to save only neighbours |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.13 | [`31088a113c2a`](https://git.kernel.org/torvalds/c/31088a113c2a) (loose) | [net] | add for_each iterators through neighbour lower link's private |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.13 | [`974daef7f8bb`](https://git.kernel.org/torvalds/c/974daef7f8bb) (loose) | [net] | add missing dev_put() in __netdev_adjacent_dev_insert |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 3.13 | [`402dae961455`](https://git.kernel.org/torvalds/c/402dae961455) (loose) | [net] | add netdev_adjacent->private and allow to use it |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.13 | [`5249dec7380c`](https://git.kernel.org/torvalds/c/5249dec7380c) (loose) | [net] | add RCU variant to search for netdev_adjacent link |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.13 | [`85328240c625`](https://git.kernel.org/torvalds/c/85328240c625) (loose) | [net] | allow netdev_all_upper_get_next_dev_rcu with rtnl lock held |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.13 | [`dbbaf949bcd0`](https://git.kernel.org/torvalds/c/dbbaf949bcd0) | [net] | bridge: Call vlan_vid_del for all vids at nbp_vlan_flush |  | CONFIG_BRIDGE=y in A37 | 3.10.0-74 |
| CANDIDATE | 3.13 | [`b4e09b29c73e`](https://git.kernel.org/torvalds/c/b4e09b29c73e) | [net] | bridge: Fix memory leak when deleting bridge with vlan filtering enabled |  | CONFIG_BRIDGE=y in A37 | 3.10.0-74 |
| CANDIDATE | 3.13 | [`6b8dbcf2c44f`](https://git.kernel.org/torvalds/c/6b8dbcf2c44f) | [net] | bridge: netfilter: orphan skb before invoking ip netfilter hooks |  | CONFIG_BRIDGE=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.13 | [`06499098a02b`](https://git.kernel.org/torvalds/c/06499098a02b) | [net] | bridge: pass correct vlan id to multicast code |  | CONFIG_BRIDGE=y in A37 | 3.10.0-47 |
| CANDIDATE | 3.13 | [`192368372d3d`](https://git.kernel.org/torvalds/c/192368372d3d) | [net] | bridge: Use vlan_vid_[add/del] instead of direct ndo_vlan_rx_[add/kill]_vid calls |  | CONFIG_BRIDGE=y in A37 | 3.10.0-74 |
| CANDIDATE | 3.13 | [`cea80ea8d2a4`](https://git.kernel.org/torvalds/c/cea80ea8d2a4) (loose) | [net] | checksum: fix warning in skb_checksum |  | generic code, tag [net] | 3.10.0-128 |
| CANDIDATE | 3.13 | [`239c78db9c41`](https://git.kernel.org/torvalds/c/239c78db9c41) (loose) | [net] | clear local_df when passing skb between namespaces |  | generic code, tag [net] | 3.10.0-150 |
| CANDIDATE | 3.13 | [`1ba3aab3033b`](https://git.kernel.org/torvalds/c/1ba3aab3033b) (loose) | [net] | codel: Avoid undefined behavior from signed overflow |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | 3.13 | [`f663dd9aaf9e`](https://git.kernel.org/torvalds/c/f663dd9aaf9e) (loose) | [net] | core: explicitly select a txq before doing l2 forwarding |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.13 | [`5831d66e8097`](https://git.kernel.org/torvalds/c/5831d66e8097) (loose) | [net] | create sysfs symlinks for neighbour devices |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.13 | [`126c623b3980`](https://git.kernel.org/torvalds/c/126c623b3980) | [net] | dcbevent.h: Remove extern from function prototypes |  | generic code, tag [net] | 3.10.0-277 |
| CANDIDATE | 3.13 | [`7cc7c5e54b71`](https://git.kernel.org/torvalds/c/7cc7c5e54b71) (loose) | [net] | Delete trailing semi-colon from definition of netdev_WARN() |  | generic code, tag [net] | 3.10.0-598 |
| CANDIDATE | 3.13 | [`56d7b53f47e7`](https://git.kernel.org/torvalds/c/56d7b53f47e7) | [net] | ethernet: use likely() for common Ethernet encap |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 3.13 | [`827da44c6141`](https://git.kernel.org/torvalds/c/827da44c6141) (loose) | [net] | Explicitly initialize u64_stats_sync structures for lockdep |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.13 | [`842d67a7b34e`](https://git.kernel.org/torvalds/c/842d67a7b34e) (loose) | [net] | expose the master link to sysfs, and remove it from bond |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.13 | [`74d332c13b21`](https://git.kernel.org/torvalds/c/74d332c13b21) (loose) | [net] | extend net_device allocation to vmalloc() |  | generic code, tag [net] | 3.10.0-300 |
| CANDIDATE | 3.13 | [`bbe34cf8a1a2`](https://git.kernel.org/torvalds/c/bbe34cf8a1a2) | [net] | fib_trie: avoid a redundant bit judgement in inflate |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 3.13 | [`4c60f1d67fae`](https://git.kernel.org/torvalds/c/4c60f1d67fae) | [net] | fib_trie: only calc for the un-first node |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 3.13 | [`c2bb06db59ea`](https://git.kernel.org/torvalds/c/c2bb06db59ea) (loose) | [net] | fix build errors if ipv6 is disabled |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.13 | [`c68c7f5a8832`](https://git.kernel.org/torvalds/c/c68c7f5a8832) (loose) | [net] | fix build warnings because of net_get_random_once merge |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 3.13 | [`7f29405403d7`](https://git.kernel.org/torvalds/c/7f29405403d7) (loose) | [net] | fix rtnl notification in atomic context |  | generic code, tag [net] | 3.10.0-158 |
| CANDIDATE | 3.13 | [`357afe9c46c9`](https://git.kernel.org/torvalds/c/357afe9c46c9) | [net] | flow_dissector: factor out the ports extraction in skb_flow_get_ports |  | generic code, tag [net] | 3.10.0-236 |
| CANDIDATE | 3.13 | [`3797d3e8462e`](https://git.kernel.org/torvalds/c/3797d3e8462e) (loose) | [net] | flow_dissector: small optimizations in IPv4 dissect |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 3.13 | [`030737bcc3c4`](https://git.kernel.org/torvalds/c/030737bcc3c4) (loose) | [net] | generalize skb_segment() |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | 3.13 | [`62b68e99faa8`](https://git.kernel.org/torvalds/c/62b68e99faa8) | [net] | genetlink: add and use genl_set_err() |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.13 | [`f84f771d9421`](https://git.kernel.org/torvalds/c/f84f771d9421) | [net] | genetlink: allow making ops const |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.13 | [`220815a9665f`](https://git.kernel.org/torvalds/c/220815a9665f) | [net] | genetlink: fix genlmsg_multicast() bug |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.13 | [`0f0e2159c0c1`](https://git.kernel.org/torvalds/c/0f0e2159c0c1) | [net] | genetlink: Fix uninitialized variable in genl_validate_assign_mc_groups() |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.13 | [`4534de8305b3`](https://git.kernel.org/torvalds/c/4534de8305b3) | [net] | genetlink: make all genl_ops users const |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.13 | [`3f5ccd06aecd`](https://git.kernel.org/torvalds/c/3f5ccd06aecd) | [net] | genetlink: make genl_ops flags a u8 and move to end |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.13 | [`2a94fe48f32c`](https://git.kernel.org/torvalds/c/2a94fe48f32c) | [net] | genetlink: make multicast groups const, prevent abuse |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.13 | [`c53ed7423619`](https://git.kernel.org/torvalds/c/c53ed7423619) | [net] | genetlink: only pass array to genl_register_family_with_ops() |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.13 | [`68eb55031da7`](https://git.kernel.org/torvalds/c/68eb55031da7) | [net] | genetlink: pass family to functions using groups |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.13 | [`d91824c08fbc`](https://git.kernel.org/torvalds/c/d91824c08fbc) | [net] | genetlink: register family ops as array |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.13 | [`c2ebb908469d`](https://git.kernel.org/torvalds/c/c2ebb908469d) | [net] | genetlink: remove family pointer from genl_multicast_group |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.13 | [`3686ec5e8497`](https://git.kernel.org/torvalds/c/3686ec5e8497) | [net] | genetlink: remove genl_register_ops/genl_unregister_ops |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.13 | [`06fb555a273d`](https://git.kernel.org/torvalds/c/06fb555a273d) | [net] | genetlink: remove genl_unregister_mc_group() |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.13 | [`029b234fb34d`](https://git.kernel.org/torvalds/c/029b234fb34d) | [net] | genetlink: rename shadowed variable |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.13 | [`568508aa0724`](https://git.kernel.org/torvalds/c/568508aa0724) | [net] | genetlink: unify registration functions |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.13 | [`8a29111c7ca6`](https://git.kernel.org/torvalds/c/8a29111c7ca6) (loose) | [net] | gro: allow to build full sized skb |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.13 | [`b8ee93ba80b5`](https://git.kernel.org/torvalds/c/b8ee93ba80b5) | [net] | gro: Clean up tcpX_gro_receive checksum verification |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.13 | [`cc5c00bbb44c`](https://git.kernel.org/torvalds/c/cc5c00bbb44c) | [net] | gro: Only verify TCP checksums for candidates |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.13 | [`9d8506cc2d7e`](https://git.kernel.org/torvalds/c/9d8506cc2d7e) | [net] | gso: handle new frag_list of frags GRO packets |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.13 | [`1fd511553872`](https://git.kernel.org/torvalds/c/1fd511553872) | [net] | inet*.h: Remove extern from function prototypes |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.13 | [`5080546682ba`](https://git.kernel.org/torvalds/c/5080546682ba) | [net] | inet: consolidate INET_TW_MATCH |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.13 | [`1bbdceef1e53`](https://git.kernel.org/torvalds/c/1bbdceef1e53) | [net] | inet: convert inet_ehash_secret and ipv6_hash_secret to net_get_random_once |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 3.13 | [`dcd607718385`](https://git.kernel.org/torvalds/c/dcd607718385) | [net] | inet: fix a UFO regression |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | 3.13 | [`634fb979e8f3`](https://git.kernel.org/torvalds/c/634fb979e8f3) | [net] | inet: includes a sock_common in request_sock |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.13 | [`7088ad74e6e7`](https://git.kernel.org/torvalds/c/7088ad74e6e7) | [net] | inet: remove old fragmentation hash initializing |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 3.13 | [`b44084c2c822`](https://git.kernel.org/torvalds/c/b44084c2c822) | [net] | inet: rename ir_loc_port to ir_num |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.13 | [`8c3a897bfab1`](https://git.kernel.org/torvalds/c/8c3a897bfab1) | [net] | inet: restore gso for vxlan |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | 3.13 | [`b23a002fc6f0`](https://git.kernel.org/torvalds/c/b23a002fc6f0) | [net] | inet: split syncookie keys for ipv4 and ipv6 and initialize with net_get_random_once |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 3.13 | [`c1d607cc4a8e`](https://git.kernel.org/torvalds/c/c1d607cc4a8e) | [net] | inet_diag: use sock_gen_put() |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.13 | [`a48e42920ff3`](https://git.kernel.org/torvalds/c/a48e42920ff3) (loose) | [net] | introduce new macro net_get_random_once |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 3.13 | [`62748f32d501`](https://git.kernel.org/torvalds/c/62748f32d501) (loose) | [net] | introduce SO_MAX_PACING_RATE |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.13 | [`fbf8866d65d5`](https://git.kernel.org/torvalds/c/fbf8866d65d5) (loose) | [net] | ipv4 only populate IP_PKTINFO when needed |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 3.13 | [`fd2d5356d902`](https://git.kernel.org/torvalds/c/fd2d5356d902) | [net] | ipv4: Allow unprivileged users to use per net sysctls |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 3.13 | [`daba287b299e`](https://git.kernel.org/torvalds/c/daba287b299e) | [net] | ipv4: fix DO and PROBE pmtu mode regarding local fragmentation with UFO/CORK |  | generic code, tag [net] | 3.10.0-150 |
| CANDIDATE | 3.13 | [`7a7ffbabf994`](https://git.kernel.org/torvalds/c/7a7ffbabf994) | [net] | ipv4: fix tunneled VM traffic over hw VXLAN/GRE GSO NIC |  | generic code, tag [net] | 3.10.0-82 |
| CANDIDATE | 3.13 | [`2d26f0a3c0e2`](https://git.kernel.org/torvalds/c/2d26f0a3c0e2) | [net] | ipv4: generalize gre_handle_offloads |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | 3.13 | [`3347c9602955`](https://git.kernel.org/torvalds/c/3347c9602955) | [net] | ipv4: gso: make inet_gso_segment() stackable |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | 3.13 | [`47d27aad4416`](https://git.kernel.org/torvalds/c/47d27aad4416) | [net] | ipv4: gso: send_check() & segment() cleanups |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | 3.13 | [`188b04d580ab`](https://git.kernel.org/torvalds/c/188b04d580ab) | [net] | ipv4: improve documentation of ip_no_pmtu_disc |  | generic code, tag [net] | 3.10.0-217 |
| CANDIDATE | 3.13 | [`e7b519ba55ae`](https://git.kernel.org/torvalds/c/e7b519ba55ae) | [net] | ipv4: initialize ip4_frags hash secret as late as possible |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 3.13 | [`482fc6094afa`](https://git.kernel.org/torvalds/c/482fc6094afa) | [net] | ipv4: introduce new IP_MTU_DISCOVER mode IP_PMTUDISC_INTERFACE |  | generic code, tag [net] | 3.10.0-217 |
| CANDIDATE | 3.13 | [`f02db315b8d8`](https://git.kernel.org/torvalds/c/f02db315b8d8) | [net] | ipv4: IP_TOS and IP_TTL can be specified as ancillary data |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | 3.13 | [`aa6615814533`](https://git.kernel.org/torvalds/c/aa6615814533) | [net] | ipv4: processing ancillary IP_TOS or IP_TTL |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | 3.13 | [`0baf2b35fc70`](https://git.kernel.org/torvalds/c/0baf2b35fc70) | [net] | ipv4: shrink rt_cache_stat |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.13 | [`65cd8033ff37`](https://git.kernel.org/torvalds/c/65cd8033ff37) | [net] | ipv4: split inet_ehashfn to hash functions per compilation unit |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 3.13 | [`0a6fa23dcb10`](https://git.kernel.org/torvalds/c/0a6fa23dcb10) | [net] | ipv4: Use math to point per net sysctls into the appropriate struct net |  | generic code, tag [net] | 3.10.0-519 |
| CANDIDATE | 3.13 | [`212e56011259`](https://git.kernel.org/torvalds/c/212e56011259) | [net] | ipv6: Add a receive path hook for vti6 in xfrm6_mode_tunnel |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.13 | [`07edd741c838`](https://git.kernel.org/torvalds/c/07edd741c838) | [net] | ipv6: add link-local, sit and loopback address with INFINITY_LIFE_TIME |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | 3.13 | [`ed1efb2aefbb`](https://git.kernel.org/torvalds/c/ed1efb2aefbb) | [net] | ipv6: Add support for IPsec virtual tunnel interfaces |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.13 | [`8d2ca1d7b5c3`](https://git.kernel.org/torvalds/c/8d2ca1d7b5c3) | [net] | ipv6: avoid high order memory allocations for /proc/net/ipv6_route |  | generic code, tag [net] | 3.10.0-215 |
| CANDIDATE | 3.13 | [`ce7a3bdf18a8`](https://git.kernel.org/torvalds/c/ce7a3bdf18a8) | [net] | ipv6: do not erase dst address with flow label destination |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 3.13 | [`88ad31491e21`](https://git.kernel.org/torvalds/c/88ad31491e21) | [net] | ipv6: don't install anycast address for /128 addresses on routers |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | 3.13 | [`249a3630c48e`](https://git.kernel.org/torvalds/c/249a3630c48e) | [net] | ipv6: drop the judgement in rt6_alloc_cow() |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 3.13 | [`469bdcefdc47`](https://git.kernel.org/torvalds/c/469bdcefdc47) | [net] | ipv6: fix the use of pcpu_tstats in ip6_vti.c |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.13 | [`d3e5e0062de5`](https://git.kernel.org/torvalds/c/d3e5e0062de5) | [net] | ipv6: gso: make ipv6_gso_segment() stackable |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | 3.13 | [`b917eb155c56`](https://git.kernel.org/torvalds/c/b917eb155c56) | [net] | ipv6: gso: remove redundant locking |  | generic code, tag [net] | 3.10.0-215 |
| CANDIDATE | 3.13 | [`efe4208f47f9`](https://git.kernel.org/torvalds/c/efe4208f47f9) | [net] | ipv6: make lookups simpler and faster |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.13 | [`4df98e76cde7`](https://git.kernel.org/torvalds/c/4df98e76cde7) | [net] | ipv6: pmtudisc setting not respected with UFO/CORK |  | generic code, tag [net] | 3.10.0-150 |
| CANDIDATE | 3.13 | [`6a9eadccff29`](https://git.kernel.org/torvalds/c/6a9eadccff29) | [net] | ipv6: release dst properly in ipip6_tunnel_xmit |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | 3.13 | [`b579035ff766`](https://git.kernel.org/torvalds/c/b579035ff766) | [net] | ipv6: remove old conditions on flow label sharing |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 3.13 | [`5d9efa7ee99e`](https://git.kernel.org/torvalds/c/5d9efa7ee99e) | [net] | ipv6: Remove privacy config option |  | generic code, tag [net] | 3.10.0-63 |
| CANDIDATE | 3.13 | [`ba4865027c11`](https://git.kernel.org/torvalds/c/ba4865027c11) | [net] | ipv6: remove the unnecessary statement in find_match() |  | generic code, tag [net] | 3.10.0-63 |
| CANDIDATE | 3.13 | [`11ffff752c6a`](https://git.kernel.org/torvalds/c/11ffff752c6a) | [net] | ipv6: simplify detection of first operational link-local address on interface |  | generic code, tag [net] | 3.10.0-82 |
| CANDIDATE | 3.13 | [`61c1db7fae21`](https://git.kernel.org/torvalds/c/61c1db7fae21) | [net] | ipv6: sit: add GSO/TSO support |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | 3.13 | [`58a4782449c5`](https://git.kernel.org/torvalds/c/58a4782449c5) | [net] | ipv6: sit: update mtu check to take care of gso packets |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | 3.13 | [`b50026b5ac8f`](https://git.kernel.org/torvalds/c/b50026b5ac8f) | [net] | ipv6: split inet6_ehashfn to hash functions per compilation unit |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 3.13 | [`b1190570b451`](https://git.kernel.org/torvalds/c/b1190570b451) | [net] | ipv6: split inet6_hash_frag for netfilter and initialize secrets with net_get_random_once |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 3.13 | [`a0a9663dd214`](https://git.kernel.org/torvalds/c/a0a9663dd214) (loose) | [net] | make neigh_priv_len in struct net_device 16bit instead of 8bit |  | generic code, tag [net] | 3.10.0-107 |
| CANDIDATE | 3.13 | [`f84be2bd96a1`](https://git.kernel.org/torvalds/c/f84be2bd96a1) (loose) | [net] | make net_get_random_once irq safe |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 3.13 | [`0c7ddf36c29c`](https://git.kernel.org/torvalds/c/0c7ddf36c29c) (loose) | [net] | move pskb_put() to core code |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | 3.13 | [`53385d2d1de8`](https://git.kernel.org/torvalds/c/53385d2d1de8) | [net] | neigh: Netlink notification for administrative NUD state change |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.13 | [`3e1e3aae1f5d`](https://git.kernel.org/torvalds/c/3e1e3aae1f5d) | [net] | net_sched: add u64 rate to psched_ratecfg_precompute() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-577 |
| CANDIDATE | 3.13 | [`df62cdf348c9`](https://git.kernel.org/torvalds/c/df62cdf348c9) | [net] | net_sched: htb: support of 64bit rates |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-577 |
| CANDIDATE | 3.13 | [`2c8c8e6f9d53`](https://git.kernel.org/torvalds/c/2c8c8e6f9d53) | [net] | net_sched: increment drop counters in qdisc_tree_decrease_qlen() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-297 |
| CANDIDATE | 3.13 | [`a33c4a2663c1`](https://git.kernel.org/torvalds/c/a33c4a2663c1) | [net] | net_sched: tbf: support of 64bit rates |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-577 |
| CANDIDATE | 3.13 | [`eff7979f00b2`](https://git.kernel.org/torvalds/c/eff7979f00b2) | [net] | netem: fix gemodel loss generator |  | generic code, tag [net] | 3.10.0-625 |
| CANDIDATE | 3.13 | [`ab6c27be8178`](https://git.kernel.org/torvalds/c/ab6c27be8178) | [net] | netem: fix loss 4 state model |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.13 | [`4a3ad7b3eade`](https://git.kernel.org/torvalds/c/4a3ad7b3eade) | [net] | netem: markov loss model transition fix |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.13 | [`7c2781fa92f5`](https://git.kernel.org/torvalds/c/7c2781fa92f5) | [net] | netem: missing break in ge loss generator |  | generic code, tag [net] | 3.10.0-625 |
| CANDIDATE | 3.13 | [`4f69053b72c5`](https://git.kernel.org/torvalds/c/4f69053b72c5) | [net] | netevent/netlink.h: Remove extern from function prototypes |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 3.13 | [`96518518cc41`](https://git.kernel.org/torvalds/c/96518518cc41) | [net] | netfilter: add nftables |  | CONFIG_NETFILTER=y in A37 | 3.10.0-51 |
| CANDIDATE | 3.13 | [`6e078bc2f240`](https://git.kernel.org/torvalds/c/6e078bc2f240) | [net] | netfilter: bridge: fix nf_tables bridge dependencies with main core |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-51 |
| CANDIDATE | 3.13 | [`46413825a7e6`](https://git.kernel.org/torvalds/c/46413825a7e6) | [net] | netfilter: bridge: nf_tables: add filter chain type |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-51 |
| CANDIDATE | 3.13 | [`91cb498e6a34`](https://git.kernel.org/torvalds/c/91cb498e6a34) | [net] | netfilter: cttimeout: allow to set/get default protocol timeouts |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-468 |
| CANDIDATE | 3.13 | [`acab78b99633`](https://git.kernel.org/torvalds/c/acab78b99633) | [net] | netfilter: ebt_ip6: fix source and destination matching |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.13 | [`23dfe136e2bf`](https://git.kernel.org/torvalds/c/23dfe136e2bf) | [net] | netfilter: fix wrong byte order in nf_ct_seqadj_set internal information |  | CONFIG_NETFILTER=y in A37 | 3.10.0-66 |
| CANDIDATE | 3.13 | [`f2020b27be94`](https://git.kernel.org/torvalds/c/f2020b27be94) | [net] | netfilter: ip6t_reject: skip checksum verification for outgoing ipv6 packets |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-93 |
| CANDIDATE | 3.13 | [`b5ef0f85bf76`](https://git.kernel.org/torvalds/c/b5ef0f85bf76) | [net] | netfilter: ipt_CLUSTERIP: add parameter net in clusterip_config_find_get |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-558 |
| CANDIDATE | 3.13 | [`f58d7866018d`](https://git.kernel.org/torvalds/c/f58d7866018d) | [net] | netfilter: ipt_CLUSTERIP: create proc entry under proper ipt_CLUSTERIP directory |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-558 |
| CANDIDATE | 3.13 | [`26a89e435462`](https://git.kernel.org/torvalds/c/26a89e435462) | [net] | netfilter: ipt_CLUSTERIP: make clusterip_list per net namespace |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-558 |
| CANDIDATE | 3.13 | [`f1e8077f490c`](https://git.kernel.org/torvalds/c/f1e8077f490c) | [net] | netfilter: ipt_CLUSTERIP: make clusterip_lock per net namespace |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-558 |
| CANDIDATE | 3.13 | [`ce4ff76c15a8`](https://git.kernel.org/torvalds/c/ce4ff76c15a8) | [net] | netfilter: ipt_CLUSTERIP: make proc directory per net namespace |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-558 |
| CANDIDATE | 3.13 | [`d86946d2c5b4`](https://git.kernel.org/torvalds/c/d86946d2c5b4) | [net] | netfilter: ipt_CLUSTERIP: use proper net namespace to operate CLUSTERIP |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-558 |
| CANDIDATE | 3.13 | [`443d20fd1882`](https://git.kernel.org/torvalds/c/443d20fd1882) | [net] | netfilter: nf_ct_timestamp: Fix BUG_ON after netns deletion |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-140 |
| CANDIDATE | 3.13 | [`f59cb0453cd8`](https://git.kernel.org/torvalds/c/f59cb0453cd8) | [net] | netfilter: nf_nat: move alloc_null_binding to nf_nat_core.c |  | CONFIG_NF_NAT=y in A37 | 3.10.0-51 |
| CANDIDATE | 3.13 | [`0628b123c96d`](https://git.kernel.org/torvalds/c/0628b123c96d) | [net] | netfilter: nfnetlink: add batch support and use it from nf_tables |  | CONFIG_NETFILTER=y in A37 | 3.10.0-51 |
| CANDIDATE | 3.13 | [`f2661adc0c13`](https://git.kernel.org/torvalds/c/f2661adc0c13) | [net] | netfilter: only warn once on wrong seqadj usage |  | CONFIG_NETFILTER=y in A37 | 3.10.0-68 |
| CANDIDATE | 3.13 | [`795aa6ef6a1a`](https://git.kernel.org/torvalds/c/795aa6ef6a1a) | [net] | netfilter: pass hook ops to hookfn |  | CONFIG_NETFILTER=y in A37 | 3.10.0-51 |
| CANDIDATE | 3.13 | [`a0f4ecf3494c`](https://git.kernel.org/torvalds/c/a0f4ecf3494c) | [net] | netfilter: Remove extern from function prototypes |  | CONFIG_NETFILTER=y in A37 | 3.10.0-284 |
| CANDIDATE | 3.13 | [`a0f4ecf3494c`](https://git.kernel.org/torvalds/c/a0f4ecf3494c) | [net] | netfilter: Remove extern from function prototypes |  | CONFIG_NETFILTER=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.13 | [`a0f4ecf3494c`](https://git.kernel.org/torvalds/c/a0f4ecf3494c) | [net] | netfilter: Remove extern from function prototypes |  | CONFIG_NETFILTER=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.13 | [`f01b3926ee64`](https://git.kernel.org/torvalds/c/f01b3926ee64) | [net] | netfilter: synproxy target: restrict to INPUT/FORWARD |  | CONFIG_NETFILTER=y in A37 | 3.10.0-158 |
| CANDIDATE | 3.13 | [`c1898c4c295b`](https://git.kernel.org/torvalds/c/c1898c4c295b) | [net] | netfilter: synproxy: correct wscale option passing |  | CONFIG_NETFILTER=y in A37 | 3.10.0-74 |
| CANDIDATE | 3.13 | [`a6441b7a39f1`](https://git.kernel.org/torvalds/c/a6441b7a39f1) | [net] | netfilter: synproxy: send mss option to backend |  | CONFIG_NETFILTER=y in A37 | 3.10.0-74 |
| CANDIDATE | 3.13 | [`db12cf274353`](https://git.kernel.org/torvalds/c/db12cf274353) | [net] | netfilter: WARN about wrong usage of sequence number adjustments |  | CONFIG_NETFILTER=y in A37 | 3.10.0-68 |
| CANDIDATE | 3.13 | [`d954777324ff`](https://git.kernel.org/torvalds/c/d954777324ff) | [net] | netfilter: xt_nfqueue: fix --queue-bypass regression |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-93 |
| CANDIDATE | 3.13 | [`1a8bf6eeef9f`](https://git.kernel.org/torvalds/c/1a8bf6eeef9f) | [net] | netfilter: xt_socket: use sock_gen_put() |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-93 |
| CANDIDATE | 3.13 | [`de1389b11686`](https://git.kernel.org/torvalds/c/de1389b11686) | [net] | netfilter: xt_tcpmss: Get mtu only if clamp-mss-to-pmtu is specified |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-217 |
| CANDIDATE | 3.13 | [`7722e0d1c076`](https://git.kernel.org/torvalds/c/7722e0d1c076) | [net] | netfilter: xt_tcpmss: lookup route from proper net namespace |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-217 |
| CANDIDATE | 3.13 | [`8fb479a47c86`](https://git.kernel.org/torvalds/c/8fb479a47c86) | [net] | netpoll: fix rx_hook() interface by passing the skb |  | generic code, tag [net] | 3.10.0-233 |
| CANDIDATE | 3.13 | [`5eccdfaabcf4`](https://git.kernel.org/torvalds/c/5eccdfaabcf4) | [net] | nf_tables*.h: Remove extern from function prototypes |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.13 | [`cdbe7c2d6d48`](https://git.kernel.org/torvalds/c/cdbe7c2d6d48) | [net] | nfnetlink: do not ack malformed messages |  | CONFIG_NETFILTER=y in A37 | 3.10.0-51 |
| CANDIDATE | 3.13 | [`2abc2f070eb3`](https://git.kernel.org/torvalds/c/2abc2f070eb3) | [net] | pkt_sched: fq: change classification of control packets |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.13 | [`fc59d5bdf1e3`](https://git.kernel.org/torvalds/c/fc59d5bdf1e3) | [net] | pkt_sched: fq: clear time_next_packet for reused flows |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.13 | [`f52ed89971ad`](https://git.kernel.org/torvalds/c/f52ed89971ad) | [net] | pkt_sched: fq: fix pacing for small frames |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.13 | [`65c5189a2b57`](https://git.kernel.org/torvalds/c/65c5189a2b57) | [net] | pkt_sched: fq: warn users using defrate |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.13 | [`6459082a3cfb`](https://git.kernel.org/torvalds/c/6459082a3cfb) | [net] | qdisc: basic classifier - remove unnecessary initialization |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.13 | [`0c4e4020f014`](https://git.kernel.org/torvalds/c/0c4e4020f014) | [net] | qdisc: meta return ENOMEM on alloc failure |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.13 | [`400dfd3ae899`](https://git.kernel.org/torvalds/c/400dfd3ae899) (loose) | [net] | refactor sk_page_frag_refill() |  | generic code, tag [net] | 3.10.0-359 |
| CANDIDATE | 3.13 | [`1598f7cb4745`](https://git.kernel.org/torvalds/c/1598f7cb4745) (loose) | [net] | sched: htb: fix the calculation of quantum |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.13 | [`cc106e441a63`](https://git.kernel.org/torvalds/c/cc106e441a63) (loose) | [net] | sched: tbf: fix the calculation of max_size |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-577 |
| CANDIDATE | 3.13 | [`1ca7d67cf5d5`](https://git.kernel.org/torvalds/c/1ca7d67cf5d5) | [net] | seqcount: Add lockdep functionality to seqcount/seqlock structures |  | generic code, tag [net] | 3.10.0-984 |
| CANDIDATE | 3.13 | [`9434266f2c64`](https://git.kernel.org/torvalds/c/9434266f2c64) | [net] | sit: fix use after free of fb_tunnel_dev |  | CONFIG_IPV6_SIT=y in A37 | 3.10.0-93 |
| CANDIDATE | 3.13 | [`66028310aedc`](https://git.kernel.org/torvalds/c/66028310aedc) | [net] | sit: use kfree_skb to replace dev_kfree_skb |  | CONFIG_IPV6_SIT=y in A37 | 3.10.0-577 |
| CANDIDATE | 3.13 | [`2817a336d4d5`](https://git.kernel.org/torvalds/c/2817a336d4d5) (loose) | [net] | skb_checksum: allow custom update/combine for walking skb |  | generic code, tag [net] | 3.10.0-128 |
| CANDIDATE | 3.13 | [`e34c9a69970d`](https://git.kernel.org/torvalds/c/e34c9a69970d) (loose) | [net] | switch net_secret key generation to net_get_random_once |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 3.13 | [`05dbc7b59481`](https://git.kernel.org/torvalds/c/05dbc7b59481) | [net] | tcp/dccp: remove twchain |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.13 | [`2f715c1dde6e`](https://git.kernel.org/torvalds/c/2f715c1dde6e) | [net] | tcp: do not rearm RTO when future data are sacked |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.13 | [`b0983d3c9b13`](https://git.kernel.org/torvalds/c/b0983d3c9b13) | [net] | tcp: fix dynamic right sizing |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.13 | [`bc15afa39ecc`](https://git.kernel.org/torvalds/c/bc15afa39ecc) | [net] | tcp: fix SYNACK RTT estimation in Fast Open |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.13 | [`2909d874f34e`](https://git.kernel.org/torvalds/c/2909d874f34e) | [net] | tcp: only take RTT from timestamps if new data is acked |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.13 | [`9f9843a751d0`](https://git.kernel.org/torvalds/c/9f9843a751d0) | [net] | tcp: properly handle stretch acks in slow start |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.13 | [`675297c904b4`](https://git.kernel.org/torvalds/c/675297c904b4) | [net] | tcp: remove redundant code in __tcp_retransmit_skb() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.13 | [`28be6e07e8bc`](https://git.kernel.org/torvalds/c/28be6e07e8bc) | [net] | tcp: rename tcp_tso_segment() |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.13 | [`96f817fedec4`](https://git.kernel.org/torvalds/c/96f817fedec4) | [net] | tcp: shrink tcp6_timewait_sock by one cache line |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.13 | [`6ae705323b71`](https://git.kernel.org/torvalds/c/6ae705323b71) | [net] | tcp: sndbuf autotuning improvements |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.13 | [`222e83d2e0ae`](https://git.kernel.org/torvalds/c/222e83d2e0ae) | [net] | tcp: switch tcp_fastopen key generation to net_get_random_once |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 3.13 | [`8c27bd75f04f`](https://git.kernel.org/torvalds/c/8c27bd75f04f) | [net] | tcp: syncookies: reduce cookie lifetime to 128 seconds |  | generic code, tag [net] | 3.10.0-150 |
| CANDIDATE | 3.13 | [`086293542b99`](https://git.kernel.org/torvalds/c/086293542b99) | [net] | tcp: syncookies: reduce mss table to four values |  | generic code, tag [net] | 3.10.0-150 |
| CANDIDATE | 3.13 | [`ccdbb6e96bec`](https://git.kernel.org/torvalds/c/ccdbb6e96bec) | [net] | tcp: tcp_transmit_skb() optimizations |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.13 | [`c968601d1747`](https://git.kernel.org/torvalds/c/c968601d1747) | [net] | tcp: temporarily disable Fast Open on SYN timeout |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.13 | [`ba537427d77c`](https://git.kernel.org/torvalds/c/ba537427d77c) | [net] | tcp: use ACCESS_ONCE() in tcp_update_pacing_rate() |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.13 | [`cd91cce62090`](https://git.kernel.org/torvalds/c/cd91cce62090) | [net] | tcp_memcontrol: Remove tcp_max_memory |  | generic code, tag [net] | 3.10.0-363 |
| CANDIDATE | 3.13 | [`f69b923a758f`](https://git.kernel.org/torvalds/c/f69b923a758f) | [net] | udp: fix a typo in __udp4_lib_mcast_demux_lookup |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 3.13 | [`421b3885bf6d`](https://git.kernel.org/torvalds/c/421b3885bf6d) | [net] | udp: ipv4: Add udp early demux |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 3.13 | [`e47eb5dfb296`](https://git.kernel.org/torvalds/c/e47eb5dfb296) | [net] | udp: ipv4: do not use sk_dst_lock from softirq context |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 3.13 | [`8afdd99a1315`](https://git.kernel.org/torvalds/c/8afdd99a1315) | [net] | udp: ipv4: fix an use after free in __udp4_lib_rcv() |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 3.13 | [`610438b74496`](https://git.kernel.org/torvalds/c/610438b74496) | [net] | udp: ipv4: fix potential use after free in udp_v4_early_demux() |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 3.13 | [`975022310233`](https://git.kernel.org/torvalds/c/975022310233) | [net] | udp: ipv4: must add synchronization in udp_sk_rx_dst_set() |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 3.13 | [`005ec9743394`](https://git.kernel.org/torvalds/c/005ec9743394) | [net] | udp: Only allow busy read/poll on connected sockets |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.13 | [`7863c054d1b4`](https://git.kernel.org/torvalds/c/7863c054d1b4) (loose) | [net] | use lists as arguments instead of bool upper |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.13 | [`5c70ef85a2f2`](https://git.kernel.org/torvalds/c/5c70ef85a2f2) | [net] | veth: allow to setup multicast address for veth device |  | CONFIG_VETH=y in A37 | 3.10.0-1039 |
| CANDIDATE | 3.13 | [`0806ae4cc872`](https://git.kernel.org/torvalds/c/0806ae4cc872) | [net] | xfrm: announce deleation of temporary SA |  | CONFIG_XFRM=y in A37 | 3.10.0-281 |
| CANDIDATE | 3.13 | [`84502b5ef984`](https://git.kernel.org/torvalds/c/84502b5ef984) | [net] | xfrm: Fix null pointer dereference when decoding sessions |  | CONFIG_XFRM=y in A37 | 3.10.0-312 |
| CANDIDATE | 3.13 | [`6f1156383a41`](https://git.kernel.org/torvalds/c/6f1156383a41) | [net] | xfrm: Force SA to be lookup again if SA in acquire state |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 3.13 | [`12e3594698f6`](https://git.kernel.org/torvalds/c/12e3594698f6) | [net] | xfrm: prevent ipcomp scratch buffer race condition |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 3.14 | [`53d6471cef17`](https://git.kernel.org/torvalds/c/53d6471cef17) (loose) | [net] | Account for all vlan headers in skb_mac_gso_segment |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.14 | [`09323cc47931`](https://git.kernel.org/torvalds/c/09323cc47931) (loose) | [net] | Add function to set the rxhash |  | generic code, tag [net] | 3.10.0-71 |
| CANDIDATE | 3.14 | [`b582ef0990d4`](https://git.kernel.org/torvalds/c/b582ef0990d4) (loose) | [net] | Add GRO support for UDP encapsulating protocols |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.14 | [`1d486bfb6697`](https://git.kernel.org/torvalds/c/1d486bfb6697) (loose) | [net] | add NETDEV_PRECHANGEMTU to notify before mtu change happens |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 3.14 | [`ed1f50c3a7c1`](https://git.kernel.org/torvalds/c/ed1f50c3a7c1) (loose) | [net] | add skb_checksum_setup |  | generic code, tag [net] | 3.10.0-782 |
| CANDIDATE | 3.14 | [`57bdf7f42be0`](https://git.kernel.org/torvalds/c/57bdf7f42be0) (loose) | [net] | Add skb_get_hash_raw |  | generic code, tag [net] | 3.10.0-153 |
| CANDIDATE | 3.14 | [`3ee327075609`](https://git.kernel.org/torvalds/c/3ee327075609) (loose) | [net] | add sysfs helpers for netdev_adjacent logic |  | generic code, tag [net] | 3.10.0-407 |
| CANDIDATE | 3.14 | [`ae78dbfa40c6`](https://git.kernel.org/torvalds/c/ae78dbfa40c6) (loose) | [net] | Add trace events for all receive entry points, exposing more skb fields |  | generic code, tag [net] | 3.10.0-468 |
| CANDIDATE | 3.14 | [`3df7a74e797a`](https://git.kernel.org/torvalds/c/3df7a74e797a) (loose) | [net] | Add utility function to copy skb hash |  | generic code, tag [net] | 3.10.0-211 |
| CANDIDATE | 3.14 | [`7539fadcb814`](https://git.kernel.org/torvalds/c/7539fadcb814) (loose) | [net] | Add utility functions to clear rxhash |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.14 | [`097b4f19e508`](https://git.kernel.org/torvalds/c/097b4f19e508) (loose) | [net] | allow > 0 order atomic page alloc in skb_page_frag_refill |  | generic code, tag [net] | 3.10.0-359 |
| CANDIDATE | 3.14 | [`56b148eb94e7`](https://git.kernel.org/torvalds/c/56b148eb94e7) | [net] | bridge: change "foo* bar" to "foo *bar" |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.14 | [`a4b816d8ba1c`](https://git.kernel.org/torvalds/c/a4b816d8ba1c) | [net] | bridge: Change local fdb entries whenever mac address of bridge device changes |  | CONFIG_BRIDGE=y in A37 | 3.10.0-373 |
| CANDIDATE | 3.14 | [`97ad8b53e649`](https://git.kernel.org/torvalds/c/97ad8b53e649) | [net] | bridge: change the position of '{' to the pre line |  | CONFIG_BRIDGE=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.14 | [`fc92f745f8d0`](https://git.kernel.org/torvalds/c/fc92f745f8d0) | [net] | bridge: Fix crash with vlan filtering and tcpdump |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.14 | [`99b192da9c99`](https://git.kernel.org/torvalds/c/99b192da9c99) | [net] | bridge: Fix handling stacked vlan tags |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.14 | [`12464bb8de02`](https://git.kernel.org/torvalds/c/12464bb8de02) | [net] | bridge: Fix inabillity to retrieve vlan tags when tx offload is disabled |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.14 | [`dbe173079ab5`](https://git.kernel.org/torvalds/c/dbe173079ab5) | [net] | bridge: fix netconsole setup over bridge |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.14 | [`2b292fb4a57d`](https://git.kernel.org/torvalds/c/2b292fb4a57d) | [net] | bridge: Fix the way to check if a local fdb entry can be deleted |  | CONFIG_BRIDGE=y in A37 | 3.10.0-223 |
| CANDIDATE | 3.14 | [`a3ebb7efe703`](https://git.kernel.org/torvalds/c/a3ebb7efe703) | [net] | bridge: Fix the way to find old local fdb entries in br_fdb_change_mac_address |  | CONFIG_BRIDGE=y in A37 | 3.10.0-373 |
| CANDIDATE | 3.14 | [`a5642ab4744b`](https://git.kernel.org/torvalds/c/a5642ab4744b) | [net] | bridge: Fix the way to find old local fdb entries in br_fdb_changeaddr |  | CONFIG_BRIDGE=y in A37 | 3.10.0-204 |
| CANDIDATE | 3.14 | [`2836882fe077`](https://git.kernel.org/torvalds/c/2836882fe077) | [net] | bridge: Fix the way to insert new local fdb entries in br_fdb_changeaddr |  | CONFIG_BRIDGE=y in A37 | 3.10.0-223 |
| CANDIDATE | 3.14 | [`b86f81cca944`](https://git.kernel.org/torvalds/c/b86f81cca944) | [net] | bridge: move br_net_exit() to br.c |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.14 | [`9ed973cc40c5`](https://git.kernel.org/torvalds/c/9ed973cc40c5) | [net] | bridge: multicast: add sanity check for general query destination |  | CONFIG_BRIDGE=y in A37 | 3.10.0-112 |
| CANDIDATE | 3.14 | [`20a599bec95a`](https://git.kernel.org/torvalds/c/20a599bec95a) | [net] | bridge: multicast: enable snooping on general queries only |  | CONFIG_BRIDGE=y in A37 | 3.10.0-112 |
| CANDIDATE | 3.14 | [`ac4c8868837a`](https://git.kernel.org/torvalds/c/ac4c8868837a) | [net] | bridge: Prevent possible race condition in br_fdb_change_mac_address |  | CONFIG_BRIDGE=y in A37 | 3.10.0-373 |
| CANDIDATE | 3.14 | [`960b589f86c7`](https://git.kernel.org/torvalds/c/960b589f86c7) | [net] | bridge: Properly check if local fdb entry can be deleted in br_fdb_change_mac_address |  | CONFIG_BRIDGE=y in A37 | 3.10.0-373 |
| CANDIDATE | 3.14 | [`a778e6d1a51f`](https://git.kernel.org/torvalds/c/a778e6d1a51f) | [net] | bridge: Properly check if local fdb entry can be deleted in br_fdb_delete_by_port |  | CONFIG_BRIDGE=y in A37 | 3.10.0-373 |
| CANDIDATE | 3.14 | [`424bb9c97cc1`](https://git.kernel.org/torvalds/c/424bb9c97cc1) | [net] | bridge: Properly check if local fdb entry can be deleted when deleting vlan |  | CONFIG_BRIDGE=y in A37 | 3.10.0-373 |
| CANDIDATE | 3.14 | [`87e823b3d5c9`](https://git.kernel.org/torvalds/c/87e823b3d5c9) | [net] | bridge: remove unnecessary condition judgment |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.14 | [`a97bfc1d1f2b`](https://git.kernel.org/torvalds/c/a97bfc1d1f2b) | [net] | bridge: remove unnecessary parentheses |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.14 | [`bdf4351bbc62`](https://git.kernel.org/torvalds/c/bdf4351bbc62) | [net] | bridge: Remove unnecessary vlan_put_tag in br_handle_vlan |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.14 | [`1a81a2e0db5b`](https://git.kernel.org/torvalds/c/1a81a2e0db5b) | [net] | bridge: spelling fixes |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.14 | [`fbf2671bb8e9`](https://git.kernel.org/torvalds/c/fbf2671bb8e9) | [net] | bridge: use DEVICE_ATTR_xx macros |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.14 | [`ff0992e9036e`](https://git.kernel.org/torvalds/c/ff0992e9036e) (loose) | [net] | cdc_ncm: fix control message ordering |  | CONFIG_USB_USBNET=y in A37 | 3.10.0-197 |
| CANDIDATE | 3.14 | [`3958afa1b272`](https://git.kernel.org/torvalds/c/3958afa1b272) (loose) | [net] | Change skb_get_rxhash to skb_get_hash |  | generic code, tag [net] | 3.10.0-211 |
| CANDIDATE | 3.14 | [`d15e2a92c4c2`](https://git.kernel.org/torvalds/c/d15e2a92c4c2) | [net] | cnic: Add a signature to indicate valid doorbell offset |  | generic code, tag [net] | 3.10.0-70 |
| CANDIDATE | 3.14 | [`6ef7b8a23a20`](https://git.kernel.org/torvalds/c/6ef7b8a23a20) (loose) | [net] | Correctly sync addresses from multiple sources to single device |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.14 | [`3102b0a5b4cd`](https://git.kernel.org/torvalds/c/3102b0a5b4cd) | [net] | crush: add note about r in recursive choose |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`f046bf92080c`](https://git.kernel.org/torvalds/c/f046bf92080c) | [net] | crush: add set_choose_local_[fallback_]tries steps |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`cc10df4a3a5c`](https://git.kernel.org/torvalds/c/cc10df4a3a5c) | [net] | crush: add SET_CHOOSE_TRIES rule step |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`f18650ace38e`](https://git.kernel.org/torvalds/c/f18650ace38e) | [net] | crush: apply chooseleaf_tries to firstn mode too |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`2d8be0bc8bc2`](https://git.kernel.org/torvalds/c/2d8be0bc8bc2) | [net] | crush: attempts -> tries |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`917edad5d1d6`](https://git.kernel.org/torvalds/c/917edad5d1d6) | [net] | crush: CHOOSE_LEAF -> CHOOSELEAF throughout |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`ab4ce2b5bdb5`](https://git.kernel.org/torvalds/c/ab4ce2b5bdb5) | [net] | crush: clarify numrep vs endpos |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`e8ef19c4ad16`](https://git.kernel.org/torvalds/c/e8ef19c4ad16) | [net] | crush: eliminate CRUSH_MAX_SET result size limitation |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`bfb16d7d69f0`](https://git.kernel.org/torvalds/c/bfb16d7d69f0) | [net] | crush: factor out (trivial) crush_destroy_rule() |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`0e32d7126cdf`](https://git.kernel.org/torvalds/c/0e32d7126cdf) | [net] | crush: fix crush_choose_firstn comment |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`2a4ba74ef67a`](https://git.kernel.org/torvalds/c/2a4ba74ef67a) | [net] | crush: fix some comments |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`d390bb2a8308`](https://git.kernel.org/torvalds/c/d390bb2a8308) | [net] | crush: generalize descend_once |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`be3226acc554`](https://git.kernel.org/torvalds/c/be3226acc554) | [net] | crush: new SET_CHOOSE_LEAF_TRIES command |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`4158608139de`](https://git.kernel.org/torvalds/c/4158608139de) | [net] | crush: pass parent r value for indep call |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`b3b33b0e4332`](https://git.kernel.org/torvalds/c/b3b33b0e4332) | [net] | crush: pass weight vector size to map function |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`8f99c85b7ad5`](https://git.kernel.org/torvalds/c/8f99c85b7ad5) | [net] | crush: reduce scope of some local variables |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`c6d98a603a02`](https://git.kernel.org/torvalds/c/c6d98a603a02) | [net] | crush: return CRUSH_ITEM_UNDEF for failed placements with indep |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`9fe07182827d`](https://git.kernel.org/torvalds/c/9fe07182827d) | [net] | crush: strip firstn conditionals out of crush_choose, rename |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`cdff49918c82`](https://git.kernel.org/torvalds/c/cdff49918c82) | [net] | crush: support new indep mode and SET_* steps (crush v2) by default |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`9a3b490a20e0`](https://git.kernel.org/torvalds/c/9a3b490a20e0) | [net] | crush: use breadth-first search for indep mode |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.14 | [`cdb3f4a31b64`](https://git.kernel.org/torvalds/c/cdb3f4a31b64) (loose) | [net] | do not enable tx-nocache-copy by default |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`73eaef87e98a`](https://git.kernel.org/torvalds/c/73eaef87e98a) | [net] | etherdevice: Add ether_addr_equal_unaligned |  | generic code, tag [net] | 3.10.0-194 |
| CANDIDATE | 3.14 | [`286ab723d4b8`](https://git.kernel.org/torvalds/c/286ab723d4b8) | [net] | etherdevice: Use ether_addr_copy to copy an Ethernet address |  | generic code, tag [net] | 3.10.0-153 |
| CANDIDATE | 3.14 | [`e27a2f839598`](https://git.kernel.org/torvalds/c/e27a2f839598) (loose) | [net] | Export gro_find_by_type helpers |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.14 | [`af2806f8f90a`](https://git.kernel.org/torvalds/c/af2806f8f90a) (loose) | [net] | Export skb_zerocopy() to zerocopy from one skb to another |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.14 | [`7924cd5e0b3a`](https://git.kernel.org/torvalds/c/7924cd5e0b3a) | [net] | filter: doc: improve BPF documentation |  | generic code, tag [net] | 3.10.0-128 |
| CANDIDATE | 3.14 | [`37692299319d`](https://git.kernel.org/torvalds/c/37692299319d) (loose) | [net] | filter: let bpf_tell_extensions return SKF_AD_MAX |  | generic code, tag [net] | 3.10.0-131 |
| CANDIDATE | 3.14 | [`9cb00073d754`](https://git.kernel.org/torvalds/c/9cb00073d754) (loose) | [net] | Fix FSF address in file headers |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.14 | [`bb9b18fb55b0`](https://git.kernel.org/torvalds/c/bb9b18fb55b0) | [net] | genl: Add genlmsg_new_unicast() for unicast message allocation |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.14 | [`d10dbad2aafa`](https://git.kernel.org/torvalds/c/d10dbad2aafa) | [net] | gre_offload: fix sparse non static symbol warning |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.14 | [`438e38fadca2`](https://git.kernel.org/torvalds/c/438e38fadca2) | [net] | gre_offload: statically build GRE offloading support |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.14 | [`600adc18eba8`](https://git.kernel.org/torvalds/c/600adc18eba8) (loose) | [net] | gro: change GRO overflow strategy |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.14 | [`84b9cd633bc3`](https://git.kernel.org/torvalds/c/84b9cd633bc3) | [net] | gro: small napi_get_frags() optim |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.14 | [`6c76a07a7111`](https://git.kernel.org/torvalds/c/6c76a07a7111) | [net] | hhf qdisc: fix jiffies-time conversion. |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.14 | [`c49fa257ba26`](https://git.kernel.org/torvalds/c/c49fa257ba26) | [net] | hhf: make qdisc ops static |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.14 | [`adca4767821e`](https://git.kernel.org/torvalds/c/adca4767821e) (loose) | [net] | Improve SO_TIMESTAMPING documentation and fix a minor code bug |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 3.14 | [`a6227e26d946`](https://git.kernel.org/torvalds/c/a6227e26d946) | [net] | include/net/: Fix FSF address in file headers |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.14 | [`ee262ad827f8`](https://git.kernel.org/torvalds/c/ee262ad827f8) | [net] | inet: defines IPPROTO_* needed for module alias generation |  | generic code, tag [net] | 3.10.0-345 |
| CANDIDATE | 3.14 | [`974eda11c542`](https://git.kernel.org/torvalds/c/974eda11c542) | [net] | inet: make no_pmtu_disc per namespace and kill ipv4_config |  | generic code, tag [net] | 3.10.0-217 |
| CANDIDATE | 3.14 | [`e6247027e517`](https://git.kernel.org/torvalds/c/e6247027e517) (loose) | [net] | introduce dev_consume_skb_any() |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 3.14 | [`89770b0a69ee`](https://git.kernel.org/torvalds/c/89770b0a69ee) (loose) | [net] | introduce reciprocal_scale helper and convert users |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.14 | [`b045d37bd68c`](https://git.kernel.org/torvalds/c/b045d37bd68c) | [net] | ip_tunnel: fix panic in ip_tunnel_xmit() |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.14 | [`d0eb1f7e66dd`](https://git.kernel.org/torvalds/c/d0eb1f7e66dd) | [net] | ip_tunnel: fix sparse non static symbol warning |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.14 | [`ebe44f350e15`](https://git.kernel.org/torvalds/c/ebe44f350e15) | [net] | ip_tunnel: Move ip_tunnel_get_stats64 into ip_tunnel_core.c |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.14 | [`ad6c81359fc3`](https://git.kernel.org/torvalds/c/ad6c81359fc3) | [net] | ipv4: add support for IFA_FLAGS nl attribute |  | generic code, tag [net] | 3.10.0-63 |
| CANDIDATE | 3.14 | [`56022a8fdd87`](https://git.kernel.org/torvalds/c/56022a8fdd87) | [net] | ipv4: arp: update neighbour address when a gratuitous arp is received and arp_accept is set |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 3.14 | [`3acfa1e73c2a`](https://git.kernel.org/torvalds/c/3acfa1e73c2a) | [net] | ipv4: be friend with drop monitor |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 3.14 | [`c71151f05bf6`](https://git.kernel.org/torvalds/c/c71151f05bf6) | [net] | ipv4: fix all space errors in file igmp.c |  | generic code, tag [net] | 3.10.0-532 |
| CANDIDATE | 3.14 | [`f87c10a8aa1e`](https://git.kernel.org/torvalds/c/f87c10a8aa1e) | [net] | ipv4: introduce ip_dst_mtu_maybe_forward and protect forwarding path against pmtu spoofing |  | generic code, tag [net] | 3.10.0-217 |
| CANDIDATE | 3.14 | [`dfd1582d1e4d`](https://git.kernel.org/torvalds/c/dfd1582d1e4d) | [net] | ipv4: loopback device: ignore value changes after device is upped |  | generic code, tag [net] | 3.10.0-68 |
| CANDIDATE | 3.14 | [`cd174e67a6b3`](https://git.kernel.org/torvalds/c/cd174e67a6b3) | [net] | ipv4: new ip_no_pmtu_disc mode to always discard incoming frag needed msgs |  | generic code, tag [net] | 3.10.0-217 |
| CANDIDATE | 3.14 | [`e74bccb8a598`](https://git.kernel.org/torvalds/c/e74bccb8a598) | [net] | ipv6: Add checks for 6LOWPAN ARP type |  | generic code, tag [net] | 3.10.0-638 |
| CANDIDATE | 3.14 | [`1397ed35f22d`](https://git.kernel.org/torvalds/c/1397ed35f22d) | [net] | ipv6: add flowinfo for tcp6 pkt_options for all cases |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 3.14 | [`3308de2b841e`](https://git.kernel.org/torvalds/c/3308de2b841e) | [net] | ipv6: add ip6_flowlabel helper |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.14 | [`509aba3b0d36`](https://git.kernel.org/torvalds/c/509aba3b0d36) | [net] | ipv6: add the option to use anycast addresses as source addresses in echo reply |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 3.14 | [`db9c7c3943f2`](https://git.kernel.org/torvalds/c/db9c7c3943f2) | [net] | ipv6: addrconf spelling fixes |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | 3.14 | [`4c99aa409a56`](https://git.kernel.org/torvalds/c/4c99aa409a56) | [net] | ipv6: cleanup for tcp_ipv6.c |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`f52d81dc27c3`](https://git.kernel.org/torvalds/c/f52d81dc27c3) | [net] | ipv6: fix compiler warning in ipv6_exthdrs_len |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.14 | [`685360536004`](https://git.kernel.org/torvalds/c/685360536004) | [net] | ipv6: fix incorrect type in declaration |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 3.14 | [`4b261c75a99f`](https://git.kernel.org/torvalds/c/4b261c75a99f) | [net] | ipv6: make IPV6_RECVPKTINFO work for ipv4 datagrams |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 3.14 | [`790e38bc26c4`](https://git.kernel.org/torvalds/c/790e38bc26c4) | [net] | ipv6: move ip6_sk_accept_pmtu from generic pmtu update path to ipv6 one |  | generic code, tag [net] | 3.10.0-217 |
| CANDIDATE | 3.14 | [`37cfee909c5a`](https://git.kernel.org/torvalds/c/37cfee909c5a) | [net] | ipv6: move IPV6_TCLASS_MASK definition in ipv6.h |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.14 | [`d76ed22b225c`](https://git.kernel.org/torvalds/c/d76ed22b225c) | [net] | ipv6: move IPV6_TCLASS_SHIFT into ipv6.h and define a helper |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 3.14 | [`e82435341ff0`](https://git.kernel.org/torvalds/c/e82435341ff0) | [net] | ipv6: namespace cleanups |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 3.14 | [`0c3584d58913`](https://git.kernel.org/torvalds/c/0c3584d58913) | [net] | ipv6: remove prune parameter for fib6_clean_all |  | generic code, tag [net] | 3.10.0-193 |
| CANDIDATE | 3.14 | [`82e9f105a280`](https://git.kernel.org/torvalds/c/82e9f105a280) | [net] | ipv6: remove rcv_tclass of ipv6_pinfo |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 3.14 | [`7e9805696428`](https://git.kernel.org/torvalds/c/7e9805696428) | [net] | ipv6: router reachability probing |  | generic code, tag [net] | 3.10.0-63 |
| CANDIDATE | 3.14 | [`6a7cc41872dd`](https://git.kernel.org/torvalds/c/6a7cc41872dd) | [net] | ipv6: send Change Status Report after DAD is completed |  | generic code, tag [net] | 3.10.0-80 |
| CANDIDATE | 3.14 | [`93b36cf3425b`](https://git.kernel.org/torvalds/c/93b36cf3425b) | [net] | ipv6: support IPV6_PMTU_INTERFACE on sockets |  | generic code, tag [net] | 3.10.0-217 |
| CANDIDATE | 3.14 | [`1d13a96c74fc`](https://git.kernel.org/torvalds/c/1d13a96c74fc) | [net] | ipv6: tcp: fix flowlabel value in ACK messages send from TIME_WAIT |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`46306b49349b`](https://git.kernel.org/torvalds/c/46306b49349b) | [net] | ipv6: unneccessary to get address prefix in addrconf_get_prefix_route |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | 3.14 | [`2315dc91a505`](https://git.kernel.org/torvalds/c/2315dc91a505) (loose) | [net] | make dev_set_mtu() honor notification return code |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 3.14 | [`8e3bff96afa6`](https://git.kernel.org/torvalds/c/8e3bff96afa6) (loose) | [net] | more spelling fixes |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | 3.14 | [`1f9248e5606a`](https://git.kernel.org/torvalds/c/1f9248e5606a) | [net] | neigh: convert parms to an array |  | generic code, tag [net] | 3.10.0-63 |
| CANDIDATE | 3.14 | [`b194c1f1dbd5`](https://git.kernel.org/torvalds/c/b194c1f1dbd5) | [net] | neigh: fix setting of default gc_* values |  | generic code, tag [net] | 3.10.0-107 |
| CANDIDATE | 3.14 | [`bba24896f022`](https://git.kernel.org/torvalds/c/bba24896f022) | [net] | neigh: ipv6: respect default values set before an address is assigned to device |  | generic code, tag [net] | 3.10.0-63 |
| CANDIDATE | 3.14 | [`1d4c8c29841b`](https://git.kernel.org/torvalds/c/1d4c8c29841b) | [net] | neigh: restore old behaviour of default parms values |  | generic code, tag [net] | 3.10.0-63 |
| CANDIDATE | 3.14 | [`73af614aedd2`](https://git.kernel.org/torvalds/c/73af614aedd2) | [net] | neigh: use tbl->family to distinguish ipv4 from ipv6 |  | generic code, tag [net] | 3.10.0-63 |
| CANDIDATE | 3.14 | [`cb5b09c17fe6`](https://git.kernel.org/torvalds/c/cb5b09c17fe6) | [net] | neigh: wrap proc dointvec functions |  | generic code, tag [net] | 3.10.0-63 |
| CANDIDATE | 3.14 | [`6c80563c2fdd`](https://git.kernel.org/torvalds/c/6c80563c2fdd) | [net] | net_sched: act: pick a different type for act_xt |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.14 | [`833fa7438659`](https://git.kernel.org/torvalds/c/833fa7438659) | [net] | net_sched: add space around '>' and before '(' |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.14 | [`4f8f61eb4341`](https://git.kernel.org/torvalds/c/4f8f61eb4341) | [net] | net_sched: expand control flow of macro SKIP_NONLOCAL |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.14 | [`c17988a90f92`](https://git.kernel.org/torvalds/c/c17988a90f92) | [net] | net_sched: replace pr_warning with pr_warn |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.14 | [`fa08943b975c`](https://git.kernel.org/torvalds/c/fa08943b975c) | [net] | net_sched: sfq: put sfq_unlink in a do - while loop |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.14 | [`fd468c74bd4d`](https://git.kernel.org/torvalds/c/fd468c74bd4d) | [net] | net_tstamp: Add SIOCGHWTSTAMP ioctl to match SIOCSHWTSTAMP |  | generic code, tag [net] | 3.10.0-72 |
| CANDIDATE | 3.14 | [`e1bd1dc207da`](https://git.kernel.org/torvalds/c/e1bd1dc207da) | [net] | net_tstamp: Improve kernel-doc for struct hwtstamp_config |  | generic code, tag [net] | 3.10.0-72 |
| CANDIDATE | 3.14 | [`99932d4fc03a`](https://git.kernel.org/torvalds/c/99932d4fc03a) | [net] | netdevice: add queue selection fallback handler for ndo_select_queue |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.14 | [`b9507bdaf40e`](https://git.kernel.org/torvalds/c/b9507bdaf40e) | [net] | netdevice: move netdev_cap_txqueue for shared usage to header |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.14 | [`419331d8ff0f`](https://git.kernel.org/torvalds/c/419331d8ff0f) | [net] | netfilter: Add dependency on IPV6 for NF_TABLES_INET |  | CONFIG_NETFILTER=y in A37 | 3.10.0-93 |
| CANDIDATE | 3.14 | [`d497c6352736`](https://git.kernel.org/torvalds/c/d497c6352736) | [net] | netfilter: add help information to new nf_tables Kconfig options |  | CONFIG_NETFILTER=y in A37 | 3.10.0-93 |
| CANDIDATE | 3.14 | [`d497c6352736`](https://git.kernel.org/torvalds/c/d497c6352736) | [net] | netfilter: add help information to new nf_tables Kconfig options |  | CONFIG_NETFILTER=y in A37 | 3.10.0-93 |
| CANDIDATE | 3.14 | [`0eba801b64cc`](https://git.kernel.org/torvalds/c/0eba801b64cc) | [net] | netfilter: ctnetlink: force null nat binding on insert |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-132 |
| CANDIDATE | 3.14 | [`e53376bef2cd`](https://git.kernel.org/torvalds/c/e53376bef2cd) | [net] | netfilter: nf_conntrack: don't release a conntrack with non-zero refcnt |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-132 |
| CANDIDATE | 3.14 | [`dcd93ed4cd16`](https://git.kernel.org/torvalds/c/dcd93ed4cd16) | [net] | netfilter: nf_conntrack: remove dead code |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-340 |
| CANDIDATE | 3.14 | [`34ce324019e7`](https://git.kernel.org/torvalds/c/34ce324019e7) | [net] | netfilter: nf_nat: add full port randomization support |  | CONFIG_NF_NAT=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.14 | [`0aff078d58e1`](https://git.kernel.org/torvalds/c/0aff078d58e1) | [net] | netfilter: nft: add queue module |  | CONFIG_NETFILTER=y in A37 | 3.10.0-93 |
| CANDIDATE | 3.14 | [`cc70d069e2b9`](https://git.kernel.org/torvalds/c/cc70d069e2b9) | [net] | netfilter: reject: separate reusable code |  | CONFIG_NETFILTER=y in A37 | 3.10.0-93 |
| CANDIDATE | 3.14 | [`5f291c2869a0`](https://git.kernel.org/torvalds/c/5f291c2869a0) | [net] | netfilter: select NFNETLINK when enabling NF_TABLES |  | CONFIG_NETFILTER=y in A37 | 3.10.0-93 |
| CANDIDATE | 3.14 | [`82a37132f300`](https://git.kernel.org/torvalds/c/82a37132f300) | [net] | netfilter: x_tables: lightweight process control group matching |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-128 |
| CANDIDATE | 3.14 | [`97a2d41c47a2`](https://git.kernel.org/torvalds/c/97a2d41c47a2) | [net] | netfilter: xt_nfqueue: separate reusable code |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-93 |
| CANDIDATE | 3.14 | [`aae9f0e22c07`](https://git.kernel.org/torvalds/c/aae9f0e22c07) | [net] | netlink: Avoid netlink mmap alloc if msg size exceeds frame size |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.14 | [`3678a9d86324`](https://git.kernel.org/torvalds/c/3678a9d86324) | [net] | netlink: cleanup rntl_af_register |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | 3.14 | [`c62326abac8f`](https://git.kernel.org/torvalds/c/c62326abac8f) | [net] | netpoll: Use ether_addr_copy |  | generic code, tag [net] | 3.10.0-233 |
| CANDIDATE | 3.14 | [`a0cdfcf39362`](https://git.kernel.org/torvalds/c/a0cdfcf39362) | [net] | packet: deliver VLAN TPID to userspace |  | CONFIG_PACKET=y in A37 | 3.10.0-702 |
| CANDIDATE | 3.14 | [`87a2fd286adf`](https://git.kernel.org/torvalds/c/87a2fd286adf) | [net] | packet: don't unconditionally schedule() in case of MSG_DONTWAIT |  | CONFIG_PACKET=y in A37 | 3.10.0-128 |
| CANDIDATE | 3.14 | [`e4d26f4b080f`](https://git.kernel.org/torvalds/c/e4d26f4b080f) | [net] | packet: fill the gap of TPACKET_ALIGNMENT with zeros |  | CONFIG_PACKET=y in A37 | 3.10.0-702 |
| CANDIDATE | 3.14 | [`902fefb82ef7`](https://git.kernel.org/torvalds/c/902fefb82ef7) | [net] | packet: improve socket create/bind latency in some cases |  | CONFIG_PACKET=y in A37 | 3.10.0-128 |
| CANDIDATE | 3.14 | [`b013840810c2`](https://git.kernel.org/torvalds/c/b013840810c2) | [net] | packet: use percpu mmap tx frame pending refcount |  | CONFIG_PACKET=y in A37 | 3.10.0-128 |
| CANDIDATE | 3.14 | [`2818fa0fa068`](https://git.kernel.org/torvalds/c/2818fa0fa068) | [net] | pkt_sched: fq: do not hold qdisc lock while allocating memory |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.14 | [`c3bd85495aef`](https://git.kernel.org/torvalds/c/c3bd85495aef) | [net] | pkt_sched: fq: more robust memory allocation |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.14 | [`d4b36210c2e6`](https://git.kernel.org/torvalds/c/d4b36210c2e6) (loose) | [net] | pkt_sched: PIE AQM scheme |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.14 | [`5537a0557c26`](https://git.kernel.org/torvalds/c/5537a0557c26) | [net] | pktgen_dst_metrics[] can be static |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 3.14 | [`f337db64af05`](https://git.kernel.org/torvalds/c/f337db64af05) | [net] | random32: add prandom_u32_max and convert open coded users |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.14 | [`477bb93320ce`](https://git.kernel.org/torvalds/c/477bb93320ce) (loose) | [net] | remove dead code for add/del multiple |  | generic code, tag [net] | 3.10.0-282 |
| CANDIDATE | 3.14 | [`0e0d44ab4275`](https://git.kernel.org/torvalds/c/0e0d44ab4275) (loose) | [net] | Remove FLOWI_FLAG_CAN_SLEEP |  | generic code, tag [net] | 3.10.0-312 |
| CANDIDATE | 3.14 | [`5bb025fae538`](https://git.kernel.org/torvalds/c/5bb025fae538) (loose) | [net] | rename sysfs symlinks on device name change |  | generic code, tag [net] | 3.10.0-407 |
| CANDIDATE | 3.14 | [`8cf4d6a224a0`](https://git.kernel.org/torvalds/c/8cf4d6a224a0) (loose) | [net] | reorder struct netns_ct for better cache-line usage |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | 3.14 | [`63862b5bef73`](https://git.kernel.org/torvalds/c/63862b5bef73) (loose) | [net] | replace macros net_random and net_srandom with direct calls to prandom |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.14 | [`237266f76d41`](https://git.kernel.org/torvalds/c/237266f76d41) | [net] | rtnetlink: add missing IFLA_BOND_AD_INFO_UNSPEC |  | generic code, tag [net] | 3.10.0-300 |
| CANDIDATE | 3.14 | [`6049f2530cf2`](https://git.kernel.org/torvalds/c/6049f2530cf2) | [net] | rtnetlink: fix oops in rtnl_link_get_slave_info_data_size |  | generic code, tag [net] | 3.10.0-300 |
| CANDIDATE | 3.14 | [`ba7d49b1f0f8`](https://git.kernel.org/torvalds/c/ba7d49b1f0f8) | [net] | rtnetlink: provide api for getting and setting slave info |  | generic code, tag [net] | 3.10.0-300 |
| CANDIDATE | 3.14 | [`df7dbcbbafc0`](https://git.kernel.org/torvalds/c/df7dbcbbafc0) | [net] | rtnetlink: put "BOND" into nl attribute names which are related to bonding |  | generic code, tag [net] | 3.10.0-300 |
| CANDIDATE | 3.14 | [`813f020c5d16`](https://git.kernel.org/torvalds/c/813f020c5d16) | [net] | rtnetlink: remove check for fill_slave_info in rtnl_have_link_slave_info |  | generic code, tag [net] | 3.10.0-300 |
| CANDIDATE | 3.14 | [`f55aa836fb7a`](https://git.kernel.org/torvalds/c/f55aa836fb7a) | [net] | rtnetlink: remove IFLA_BOND_SLAVE definition |  | generic code, tag [net] | 3.10.0-300 |
| CANDIDATE | 3.14 | [`a9517d0f4383`](https://git.kernel.org/torvalds/c/a9517d0f4383) | [net] | rtnetlink: remove ndo_get_slave |  | generic code, tag [net] | 3.10.0-300 |
| CANDIDATE | 3.14 | [`6b1dd8560179`](https://git.kernel.org/torvalds/c/6b1dd8560179) | [net] | sch_htb: remove unnecessary NULL pointer judgment |  | CONFIG_NET_SCH_HTB=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.14 | [`a071d272415b`](https://git.kernel.org/torvalds/c/a071d272415b) | [net] | sch_htb: use /* comments |  | CONFIG_NET_SCH_HTB=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.14 | [`37089834528b`](https://git.kernel.org/torvalds/c/37089834528b) | [net] | sched, net: Fixup busy_loop_us_clock() |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.14 | [`219e288e8900`](https://git.kernel.org/torvalds/c/219e288e8900) (loose) | [net] | sched: Cleanup PIE comments |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.14 | [`cf71d2bc0b8a`](https://git.kernel.org/torvalds/c/cf71d2bc0b8a) | [net] | sit: fix panic with route cache in ip tunnels |  | CONFIG_IPV6_SIT=y in A37 | 3.10.0-260 |
| CANDIDATE | 3.14 | [`78ea85f17b15`](https://git.kernel.org/torvalds/c/78ea85f17b15) (loose) | [net] | skbuff: improve comment on checksumming |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.14 | [`8cb19905e928`](https://git.kernel.org/torvalds/c/8cb19905e928) | [net] | skbuff: skb_segment: s/frag/nskb_frag/ | CVE-2014-0131 | generic code, tag [net] | 3.10.0-114 |
| CANDIDATE | 3.14 | [`1a4cedaf6549`](https://git.kernel.org/torvalds/c/1a4cedaf6549) | [net] | skbuff: skb_segment: s/fskb/list_skb/ | CVE-2014-0131 | generic code, tag [net] | 3.10.0-114 |
| CANDIDATE | 3.14 | [`df5771ffefb1`](https://git.kernel.org/torvalds/c/df5771ffefb1) | [net] | skbuff: skb_segment: s/skb/head_skb/ | CVE-2014-0131 | generic code, tag [net] | 3.10.0-114 |
| CANDIDATE | 3.14 | [`4e1beba12d09`](https://git.kernel.org/torvalds/c/4e1beba12d09) | [net] | skbuff: skb_segment: s/skb_frag/frag/ | CVE-2014-0131 | generic code, tag [net] | 3.10.0-114 |
| CANDIDATE | 3.14 | [`f54b311142a9`](https://git.kernel.org/torvalds/c/f54b311142a9) | [net] | tcp: auto corking |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`a181ceb501b3`](https://git.kernel.org/torvalds/c/a181ceb501b3) | [net] | tcp: autocork should not hold first packet in write queue |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`4d83e1773031`](https://git.kernel.org/torvalds/c/4d83e1773031) | [net] | tcp: delete redundant calls of tcp_mtup_init() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`b53c73360077`](https://git.kernel.org/torvalds/c/b53c73360077) | [net] | tcp: do not export tcp_gso_segment() and tcp_gro_receive() |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.14 | [`c84a57113f59`](https://git.kernel.org/torvalds/c/c84a57113f59) | [net] | tcp: fix bogus RTT on special retransmission |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`e2a1d3e47bb9`](https://git.kernel.org/torvalds/c/e2a1d3e47bb9) | [net] | tcp: fix get_timewait4_sock() delay computation on 64bit |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`f7e56a76acf6`](https://git.kernel.org/torvalds/c/f7e56a76acf6) | [net] | tcp: make local functions static |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`a544302820db`](https://git.kernel.org/torvalds/c/a544302820db) | [net] | tcp: metrics: Add source-address to tcp-metrics |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`3e7013ddf55a`](https://git.kernel.org/torvalds/c/3e7013ddf55a) | [net] | tcp: metrics: Allow selective get/del of tcp-metrics based on src IP |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`bbf852b96ebd`](https://git.kernel.org/torvalds/c/bbf852b96ebd) | [net] | tcp: metrics: Delete all entries matching a certain destination |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`00ca9c5b2b11`](https://git.kernel.org/torvalds/c/00ca9c5b2b11) | [net] | tcp: metrics: Fix rcu-race when deleting multiple entries |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`3ad88cf70af7`](https://git.kernel.org/torvalds/c/3ad88cf70af7) | [net] | tcp: metrics: Handle v6/v4-mapped sockets in tcp-metrics |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`8a59359cb80f`](https://git.kernel.org/torvalds/c/8a59359cb80f) | [net] | tcp: metrics: New netlink attribute for src IP and dumped in netlink reply |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`324fd55a1982`](https://git.kernel.org/torvalds/c/324fd55a1982) | [net] | tcp: metrics: rename tcpm_addr to tcpm_daddr |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`7b7fc97aa390`](https://git.kernel.org/torvalds/c/7b7fc97aa390) | [net] | tcp: optimize some skb_shinfo(skb) uses |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`996b175e39ed`](https://git.kernel.org/torvalds/c/996b175e39ed) | [net] | tcp: out_of_order_queue do not use its lock |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`d10473d4e3f9`](https://git.kernel.org/torvalds/c/d10473d4e3f9) | [net] | tcp: reduce the bloat caused by tcp_is_cwnd_limited() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`d4589926d7a9`](https://git.kernel.org/torvalds/c/d4589926d7a9) | [net] | tcp: refine TSO splits |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`4a5ab4e22428`](https://git.kernel.org/torvalds/c/4a5ab4e22428) | [net] | tcp: remove 1ms offset in srtt computation |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.14 | [`632623153196`](https://git.kernel.org/torvalds/c/632623153196) | [net] | tcp: syncookies: do not use getnstimeofday() |  | generic code, tag [net] | 3.10.0-150 |
| CANDIDATE | 3.14 | [`fa35864e0bb7`](https://git.kernel.org/torvalds/c/fa35864e0bb7) | [net] | tuntap: Fix for a race in accessing numqueues |  | CONFIG_TUN=y in A37 | 3.10.0-86 |
| CANDIDATE | 3.14 | [`8f84985fec10`](https://git.kernel.org/torvalds/c/8f84985fec10) (loose) | [net] | unify the pcpu_tstats and br_cpu_netstats as one |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.14 | [`289dccbe141e`](https://git.kernel.org/torvalds/c/289dccbe141e) (loose) | [net] | use kfree_skb_list() helper | CVE-2014-0131 | generic code, tag [net] | 3.10.0-114 |
| CANDIDATE | 3.14 | [`3e94c2dcfd7c`](https://git.kernel.org/torvalds/c/3e94c2dcfd7c) | [net] | xfrm: checkpatch errors with foo * bar |  | CONFIG_XFRM=y in A37 | 3.10.0-842 |
| CANDIDATE | 3.14 | [`9b7a787d0da7`](https://git.kernel.org/torvalds/c/9b7a787d0da7) | [net] | xfrm: checkpatch errors with space |  | CONFIG_XFRM=y in A37 | 3.10.0-1048 |
| CANDIDATE | 3.14 | [`ee5c23176fcc`](https://git.kernel.org/torvalds/c/ee5c23176fcc) | [net] | xfrm: Clone states properly on migration |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 3.14 | [`776e9dd90ca2`](https://git.kernel.org/torvalds/c/776e9dd90ca2) | [net] | xfrm: export verify_userspi_info for pkfey and netlink interface |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 3.14 | [`35ea790d7883`](https://git.kernel.org/torvalds/c/35ea790d7883) | [net] | xfrm: Fix NULL pointer dereference on sub policy usage |  | CONFIG_XFRM=y in A37 | 3.10.0-312 |
| CANDIDATE | 3.14 | [`3a9016f97fdc`](https://git.kernel.org/torvalds/c/3a9016f97fdc) | [net] | xfrm: Fix unlink race when policies are deleted |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 3.14 | [`283bc9f35bbb`](https://git.kernel.org/torvalds/c/283bc9f35bbb) | [net] | xfrm: Namespacify xfrm state/policy locks |  | CONFIG_XFRM=y in A37 | 3.10.0-312 |
| CANDIDATE | 3.14 | [`5b8ef3415a21`](https://git.kernel.org/torvalds/c/5b8ef3415a21) | [net] | xfrm: Remove ancient sleeping when the SA is in acquire state |  | CONFIG_XFRM=y in A37 | 3.10.0-312 |
| CANDIDATE | 3.14 | [`8c0cba22e196`](https://git.kernel.org/torvalds/c/8c0cba22e196) | [net] | xfrm: Take xfrm_state_lock in xfrm_migrate_state_find |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 3.14 | [`8d549c4f5d92`](https://git.kernel.org/torvalds/c/8d549c4f5d92) | [net] | xfrm: Using the right namespace to migrate key info |  | CONFIG_XFRM=y in A37 | 3.10.0-312 |
| CANDIDATE | 3.14 | [`be7928d20bab`](https://git.kernel.org/torvalds/c/be7928d20bab) (loose) | [net] | xfrm: xfrm_policy: fix inline not at beginning of declaration |  | CONFIG_XFRM=y in A37 | 3.10.0-867 |
| CANDIDATE | 3.14 | [`da7c224b1baa`](https://git.kernel.org/torvalds/c/da7c224b1baa) (loose) | [net] | xfrm: xfrm_policy: silence compiler warning |  | CONFIG_XFRM=y in A37 | 3.10.0-867 |
| CANDIDATE | 3.14 | [`6de9ace4aeef`](https://git.kernel.org/torvalds/c/6de9ace4aeef) | [net] | {pktgen, xfrm} Add statistics counting when transforming |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 3.14 | [`cf93d47ed448`](https://git.kernel.org/torvalds/c/cf93d47ed448) | [net] | {pktgen, xfrm} Construct skb dst for tunnel mode transformation |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 3.14 | [`0af0a4136b45`](https://git.kernel.org/torvalds/c/0af0a4136b45) | [net] | {pktgen, xfrm} Correct xfrm state lock usage when transforming |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 3.14 | [`e5f79d111fd4`](https://git.kernel.org/torvalds/c/e5f79d111fd4) | [net] | {pktgen, xfrm} Document IPsec usage in pktgen.txt |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 3.14 | [`c454997e68eb`](https://git.kernel.org/torvalds/c/c454997e68eb) | [net] | {pktgen, xfrm} Introduce xfrm_state_lookup_byspi for pktgen |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 3.14 | [`8101328b7984`](https://git.kernel.org/torvalds/c/8101328b7984) | [net] | {pktgen, xfrm} Show spi value properly when ipsec turned on |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 3.14 | [`de4aee7d69f2`](https://git.kernel.org/torvalds/c/de4aee7d69f2) | [net] | {pktgen, xfrm} Using "pgset spi xxx" to spedifiy SA for a given flow |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 3.15 | [`5812521be0f7`](https://git.kernel.org/torvalds/c/5812521be0f7) (loose) | [net] | add a pre-check of net_ns in sk_change_net() |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.15 | [`d0290214de71`](https://git.kernel.org/torvalds/c/d0290214de71) (loose) | [net] | add busy_poll device feature |  | generic code, tag [net] | 3.10.0-132 |
| CANDIDATE | 3.15 | [`363ec392352e`](https://git.kernel.org/torvalds/c/363ec392352e) (loose) | [net] | add skb_mstamp infrastructure |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.15 | [`e5b56454e09a`](https://git.kernel.org/torvalds/c/e5b56454e09a) | [net] | ah4: Use the IPsec protocol multiplexer API |  | CONFIG_XFRM=y in A37 | 3.10.0-180 |
| CANDIDATE | 3.15 | [`e924d2d68738`](https://git.kernel.org/torvalds/c/e924d2d68738) | [net] | ah6: Use the IPsec protocol multiplexer API |  | CONFIG_XFRM=y in A37 | 3.10.0-281 |
| CANDIDATE | 3.15 | [`1ee481fb4cf8`](https://git.kernel.org/torvalds/c/1ee481fb4cf8) (loose) | [net] | Allow modules to use is_skb_forwardable |  | generic code, tag [net] | 3.10.0-359 |
| CANDIDATE | 3.15 | [`25f929fbff0d`](https://git.kernel.org/torvalds/c/25f929fbff0d) (loose) | [net] | allow setting mac address of loopback device |  | generic code, tag [net] | 3.10.0-395 |
| CANDIDATE | 3.15 | [`3d4405226d27`](https://git.kernel.org/torvalds/c/3d4405226d27) (loose) | [net] | avoid dependency of net_get_random_once on nop patching |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 3.15 | [`04091142826e`](https://git.kernel.org/torvalds/c/04091142826e) | [net] | bridge: netfilter: Use ether_addr_copy |  | CONFIG_BRIDGE=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.15 | [`c65c7a306610`](https://git.kernel.org/torvalds/c/c65c7a306610) | [net] | bridge: notify user space after fdb update |  | CONFIG_BRIDGE=y in A37 | 3.10.0-204 |
| CANDIDATE | 3.15 | [`e0d7968ab6c8`](https://git.kernel.org/torvalds/c/e0d7968ab6c8) | [net] | bridge: Prevent insertion of FDB entry with disallowed vlan |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.15 | [`aff09ce303f8`](https://git.kernel.org/torvalds/c/aff09ce303f8) | [net] | bridge: superfluous skb->nfct check in br_nf_dev_queue_xmit |  | CONFIG_BRIDGE=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.15 | [`e5a727f66326`](https://git.kernel.org/torvalds/c/e5a727f66326) | [net] | bridge: Use ether_addr_copy and ETH_ALEN |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.15 | [`f6367b4660dd`](https://git.kernel.org/torvalds/c/f6367b4660dd) | [net] | bridge: use is_skb_forwardable in forward path |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.15 | [`f9708b430273`](https://git.kernel.org/torvalds/c/f9708b430273) | [net] | consolidate duplicate code is skb_checksum_setup() helpers |  | generic code, tag [net] | 3.10.0-782 |
| CANDIDATE | 3.15 | [`2b8837aeaaa0`](https://git.kernel.org/torvalds/c/2b8837aeaaa0) (loose) | [net] | Convert uses of __constant_<foo> to <foo> |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 3.15 | [`3f85944fe207`](https://git.kernel.org/torvalds/c/3f85944fe207) (loose) | [net] | core: Add sysfs file for port number |  | generic code, tag [net] | 3.10.0-183 |
| CANDIDATE | 3.15 | [`e2b149cc4ba0`](https://git.kernel.org/torvalds/c/e2b149cc4ba0) | [net] | crush: add chooseleaf_vary_r tunable |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.15 | [`d83ed858f144`](https://git.kernel.org/torvalds/c/d83ed858f144) | [net] | crush: add SET_CHOOSELEAF_VARY_R step |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.15 | [`6ed1002f368c`](https://git.kernel.org/torvalds/c/6ed1002f368c) | [net] | crush: allow crush rules to set (re)tries counts to 0 |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.15 | [`f140662f35a7`](https://git.kernel.org/torvalds/c/f140662f35a7) | [net] | crush: decode and initialize chooseleaf_vary_r |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.15 | [`48a163dbb517`](https://git.kernel.org/torvalds/c/48a163dbb517) | [net] | crush: fix off-by-one errors in total_tries refactor |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.15 | [`07bd7de47a65`](https://git.kernel.org/torvalds/c/07bd7de47a65) | [net] | crush: support chooseleaf_vary_r tunable (tunables3) by default |  | generic code, tag [net] | 3.10.0-167 |
| CANDIDATE | 3.15 | [`827789cbd7f0`](https://git.kernel.org/torvalds/c/827789cbd7f0) | [net] | esp4: Use the IPsec protocol multiplexer API |  | CONFIG_XFRM=y in A37 | 3.10.0-180 |
| CANDIDATE | 3.15 | [`d5860c5ccfcc`](https://git.kernel.org/torvalds/c/d5860c5ccfcc) | [net] | esp6: Use the IPsec protocol multiplexer API |  | CONFIG_XFRM=y in A37 | 3.10.0-281 |
| CANDIDATE | 3.15 | [`61ccbb684421`](https://git.kernel.org/torvalds/c/61ccbb684421) | [net] | ether: add loopback type ETH_P_LOOPBACK |  | generic code, tag [net] | 3.10.0-236 |
| CANDIDATE | 3.15 | [`6e201c857b68`](https://git.kernel.org/torvalds/c/6e201c857b68) | [net] | ethtool: Document the general convention for VLAs in kernel space |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.15 | [`fe5df1b91ec3`](https://git.kernel.org/torvalds/c/fe5df1b91ec3) | [net] | ethtool: Expand documentation of string set types |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.15 | [`bf8fc60a62db`](https://git.kernel.org/torvalds/c/bf8fc60a62db) | [net] | ethtool: Expand documentation of struct ethtool_cmd |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.15 | [`daba1b6bc1cb`](https://git.kernel.org/torvalds/c/daba1b6bc1cb) | [net] | ethtool: Expand documentation of struct ethtool_drvinfo |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.15 | [`c8364a63f648`](https://git.kernel.org/torvalds/c/c8364a63f648) | [net] | ethtool: Expand documentation of struct ethtool_eeprom |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.15 | [`f432c095f78c`](https://git.kernel.org/torvalds/c/f432c095f78c) | [net] | ethtool: Expand documentation of struct ethtool_perm_addr |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.15 | [`09fb8bb068c8`](https://git.kernel.org/torvalds/c/09fb8bb068c8) | [net] | ethtool: Expand documentation of struct ethtool_regs |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.15 | [`af440a8aed3d`](https://git.kernel.org/torvalds/c/af440a8aed3d) | [net] | ethtool: Expand documentation of struct ethtool_ringparam |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.15 | [`590912298c2d`](https://git.kernel.org/torvalds/c/590912298c2d) | [net] | ethtool: Expand documentation of struct ethtool_stats |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.15 | [`4e5a62db2bed`](https://git.kernel.org/torvalds/c/4e5a62db2bed) | [net] | ethtool: Expand documentation of struct ethtool_test |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.15 | [`02d59f3fdb6a`](https://git.kernel.org/torvalds/c/02d59f3fdb6a) | [net] | ethtool: Expand documentation of struct ethtool_wol |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.15 | [`073e3cf21916`](https://git.kernel.org/torvalds/c/073e3cf21916) | [net] | ethtool: Fix unwanted section breaks in kernel-doc |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.15 | [`ba569dc3e8b9`](https://git.kernel.org/torvalds/c/ba569dc3e8b9) | [net] | ethtool: Move kernel-doc comment next to struct ethtool_dump definition |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.15 | [`6a7a1081ceba`](https://git.kernel.org/torvalds/c/6a7a1081ceba) | [net] | ethtool: Update documentation of struct ethtool_pauseparam |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.15 | [`4085ebe8c31f`](https://git.kernel.org/torvalds/c/4085ebe8c31f) (loose) | [net] | Find the nesting level of a given device by type. |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.15 | [`4b9b1cdf83c4`](https://git.kernel.org/torvalds/c/4b9b1cdf83c4) (loose) | [net] | fix wrong mac_len calculation for vlans |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.15 | [`4a93f5095a62`](https://git.kernel.org/torvalds/c/4a93f5095a62) | [net] | flowcache: Fix resource leaks on namespace exit |  | generic code, tag [net] | 3.10.0-312 |
| CANDIDATE | 3.15 | [`ca925cf1534e`](https://git.kernel.org/torvalds/c/ca925cf1534e) | [net] | flowcache: Make flow cache name space aware |  | generic code, tag [net] | 3.10.0-312 |
| CANDIDATE | 3.15 | [`d32d9bb85c65`](https://git.kernel.org/torvalds/c/d32d9bb85c65) | [net] | flowcache: restore a single flow_cache kmem_cache |  | generic code, tag [net] | 3.10.0-312 |
| CANDIDATE | 3.15 | [`29e98242783e`](https://git.kernel.org/torvalds/c/29e98242783e) (loose) | [net] | gro: make sure skb->cb[] initial content has not to be zero |  | generic code, tag [net] | 3.10.0-204 |
| CANDIDATE | 3.15 | [`e90c14835ba2`](https://git.kernel.org/torvalds/c/e90c14835ba2) | [net] | inet: remove now unused flag DST_NOPEER |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 3.15 | [`1c213bd24ad0`](https://git.kernel.org/torvalds/c/1c213bd24ad0) (loose) | [net] | introduce netdev_alloc_pcpu_stats() for drivers |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.15 | [`1c213bd24ad0`](https://git.kernel.org/torvalds/c/1c213bd24ad0) (loose) | [net] | introduce netdev_alloc_pcpu_stats() for drivers |  | generic code, tag [net] | 3.10.0-211 |
| CANDIDATE | 3.15 | [`74462f0d4a73`](https://git.kernel.org/torvalds/c/74462f0d4a73) | [net] | ip6_tunnel: use the right netns in ioctl handler |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.15 | [`c7ba65d7b649`](https://git.kernel.org/torvalds/c/c7ba65d7b649) (loose) | [net] | ip: push gso skb forwarding handling down the stack |  | generic code, tag [net] | 3.10.0-150 |
| CANDIDATE | 3.15 | [`78ff4be45a4c`](https://git.kernel.org/torvalds/c/78ff4be45a4c) | [net] | ip_tunnel: Initialize the fallback device properly |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.15 | [`6d608f06e390`](https://git.kernel.org/torvalds/c/6d608f06e390) | [net] | ip_tunnel: Make vti work with i_key set |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.15 | [`6dd3c9ec2387`](https://git.kernel.org/torvalds/c/6dd3c9ec2387) | [net] | ip_tunnel: return more precise errno value when adding tunnel fails |  | generic code, tag [net] | 3.10.0-107 |
| CANDIDATE | 3.15 | [`e96f2e7c4300`](https://git.kernel.org/torvalds/c/e96f2e7c4300) | [net] | ip_tunnel: Set network header properly for IP_ECN_decapsulate() |  | generic code, tag [net] | 3.10.0-140 |
| CANDIDATE | 3.15 | [`8c923ce219b7`](https://git.kernel.org/torvalds/c/8c923ce219b7) | [net] | ip_tunnel: use the right netns in ioctl handler |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.15 | [`d099160e0293`](https://git.kernel.org/torvalds/c/d099160e0293) | [net] | ipcomp4: Use the IPsec protocol multiplexer API |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.15 | [`59b84351c0ee`](https://git.kernel.org/torvalds/c/59b84351c0ee) | [net] | ipcomp6: Use the IPsec protocol multiplexer API |  | CONFIG_XFRM=y in A37 | 3.10.0-281 |
| CANDIDATE | 3.15 | [`aad88724c9d5`](https://git.kernel.org/torvalds/c/aad88724c9d5) | [net] | ipv4: add a sock pointer to dst->output() path |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.15 | [`d4f2fa6ad61e`](https://git.kernel.org/torvalds/c/d4f2fa6ad61e) | [net] | ipv4: ip_forward: perform skb->pkt_type check at the beginning |  | generic code, tag [net] | 3.10.0-578 |
| CANDIDATE | 3.15 | [`69647ce46a23`](https://git.kernel.org/torvalds/c/69647ce46a23) | [net] | ipv4: use ip_skb_dst_mtu to determine mtu in ip_fragment |  | generic code, tag [net] | 3.10.0-217 |
| CANDIDATE | 3.15 | [`1b346576359c`](https://git.kernel.org/torvalds/c/1b346576359c) | [net] | ipv4: yet another new IP_MTU_DISCOVER option IP_PMTUDISC_OMIT |  | generic code, tag [net] | 3.10.0-217 |
| CANDIDATE | 3.15 | [`e5fd387ad5b3`](https://git.kernel.org/torvalds/c/e5fd387ad5b3) | [net] | ipv6: do not overwrite inetpeer metrics prematurely |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 3.15 | [`3a1cebe7e050`](https://git.kernel.org/torvalds/c/3a1cebe7e050) | [net] | ipv6: fix calculation of option len in ip6_append_data |  | generic code, tag [net] | 3.10.0-150 |
| CANDIDATE | 3.15 | [`cb6e926e3f73`](https://git.kernel.org/torvalds/c/cb6e926e3f73) (loose) | [net] | ipv6: fix checkpatch errors with assignment in if condition |  | generic code, tag [net] | 3.10.0-475 |
| CANDIDATE | 3.15 | [`4de462ab63e2`](https://git.kernel.org/torvalds/c/4de462ab63e2) | [net] | ipv6: gro: fix CHECKSUM_COMPLETE support |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.15 | [`c8e6ad0829a7`](https://git.kernel.org/torvalds/c/c8e6ad0829a7) | [net] | ipv6: honor IPV6_PKTINFO with v4 mapped addresses on sendmsg |  | generic code, tag [net] | 3.10.0-915 |
| CANDIDATE | 3.15 | [`090f1166c679`](https://git.kernel.org/torvalds/c/090f1166c679) | [net] | ipv6: ip6_forward: perform skb->pkt_type check at the beginning |  | generic code, tag [net] | 3.10.0-330 |
| CANDIDATE | 3.15 | [`84a3e72c3a5c`](https://git.kernel.org/torvalds/c/84a3e72c3a5c) | [net] | ipv6: log src and dst along with "udp checksum is 0" |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.15 | [`60ea37f7a5c7`](https://git.kernel.org/torvalds/c/60ea37f7a5c7) | [net] | ipv6: reuse rt6_need_strict |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.15 | [`4aa956d80147`](https://git.kernel.org/torvalds/c/4aa956d80147) | [net] | ipv6: tcp_ipv6 do some cleanup |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.15 | [`9c76a114bbef`](https://git.kernel.org/torvalds/c/9c76a114bbef) | [net] | ipv6: tcp_ipv6 policy route issue |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.15 | [`be7a010d6fa3`](https://git.kernel.org/torvalds/c/be7a010d6fa3) | [net] | ipv6: update Destination Cache entries when gateway turn into host |  | generic code, tag [net] | 3.10.0-220 |
| CANDIDATE | 3.15 | [`0b95227a7ba7`](https://git.kernel.org/torvalds/c/0b95227a7ba7) | [net] | ipv6: yet another new IPV6_MTU_DISCOVER option IPV6_PMTUDISC_OMIT |  | generic code, tag [net] | 3.10.0-217 |
| CANDIDATE | 3.15 | [`589f5816f3f6`](https://git.kernel.org/torvalds/c/589f5816f3f6) (loose) | [net] | kdoc struct net_device flags and priv_flags |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.15 | [`b17c706987fa`](https://git.kernel.org/torvalds/c/b17c706987fa) | [net] | loopback: sctp: add NETIF_F_SCTP_CSUM to device features |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 3.15 | [`7aa98047df95`](https://git.kernel.org/torvalds/c/7aa98047df95) (loose) | [net] | move net_device priv_flags out from UAPI |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.15 | [`2176d5d41891`](https://git.kernel.org/torvalds/c/2176d5d41891) | [net] | neigh: set nud_state to NUD_INCOMPLETE when probing router reachability |  | generic code, tag [net] | 3.10.0-132 |
| CANDIDATE | 3.15 | [`a36dbdb28ea2`](https://git.kernel.org/torvalds/c/a36dbdb28ea2) | [net] | net: ipv6: Fix oif in TCP SYN+ACK route lookup. |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.15 | [`d59b7d8059dd`](https://git.kernel.org/torvalds/c/d59b7d8059dd) | [net] | net_sched: return nla_nest_end() instead of skb->len |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.15 | [`d59b7d8059dd`](https://git.kernel.org/torvalds/c/d59b7d8059dd) | [net] | net_sched: return nla_nest_end() instead of skb->len |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-297 |
| CANDIDATE | 3.15 | [`6859e7df6d90`](https://git.kernel.org/torvalds/c/6859e7df6d90) | [net] | netdev: remove potentially harmful checks |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 3.15 | [`3ab428a4c5ad`](https://git.kernel.org/torvalds/c/3ab428a4c5ad) | [net] | netfilter: Add missing vmalloc.h include to nft_hash.c |  | CONFIG_NETFILTER=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.15 | [`e1b207dac13d`](https://git.kernel.org/torvalds/c/e1b207dac13d) | [net] | netfilter: avoid race with exp->master ct |  | CONFIG_NETFILTER=y in A37 | 3.10.0-158 |
| CANDIDATE | 3.15 | [`15cfd5289575`](https://git.kernel.org/torvalds/c/15cfd5289575) | [net] | netfilter: connlimit: factor hlist search into new function |  | CONFIG_NETFILTER=y in A37 | 3.10.0-150 |
| CANDIDATE | 3.15 | [`d9ec4f1ee280`](https://git.kernel.org/torvalds/c/d9ec4f1ee280) | [net] | netfilter: connlimit: improve packet-to-closed-connection logic |  | CONFIG_NETFILTER=y in A37 | 3.10.0-150 |
| CANDIDATE | 3.15 | [`50e0e9b12914`](https://git.kernel.org/torvalds/c/50e0e9b12914) | [net] | netfilter: connlimit: make same_source_net signed |  | CONFIG_NETFILTER=y in A37 | 3.10.0-150 |
| CANDIDATE | 3.15 | [`3bcc5fdf1b1a`](https://git.kernel.org/torvalds/c/3bcc5fdf1b1a) | [net] | netfilter: connlimit: move insertion of new element out of count function |  | CONFIG_NETFILTER=y in A37 | 3.10.0-150 |
| CANDIDATE | 3.15 | [`e00b437b3d6d`](https://git.kernel.org/torvalds/c/e00b437b3d6d) | [net] | netfilter: connlimit: move lock array out of struct connlimit_data |  | CONFIG_NETFILTER=y in A37 | 3.10.0-150 |
| CANDIDATE | 3.15 | [`1442e7507dd5`](https://git.kernel.org/torvalds/c/1442e7507dd5) | [net] | netfilter: connlimit: use keyed locks |  | CONFIG_NETFILTER=y in A37 | 3.10.0-150 |
| CANDIDATE | 3.15 | [`14e1a977767e`](https://git.kernel.org/torvalds/c/14e1a977767e) | [net] | netfilter: connlimit: use kmem_cache for conn objects |  | CONFIG_NETFILTER=y in A37 | 3.10.0-150 |
| CANDIDATE | 3.15 | [`7d08487777c8`](https://git.kernel.org/torvalds/c/7d08487777c8) | [net] | netfilter: connlimit: use rbtree for per-host conntrack obj storage |  | CONFIG_NETFILTER=y in A37 | 3.10.0-150 |
| CANDIDATE | 3.15 | [`d5d20912d33f`](https://git.kernel.org/torvalds/c/d5d20912d33f) | [net] | netfilter: conntrack: Fix UP builds |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-158 |
| CANDIDATE | 3.15 | [`93bb0ceb75be`](https://git.kernel.org/torvalds/c/93bb0ceb75be) | [net] | netfilter: conntrack: remove central spinlock nf_conntrack_lock |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-158 |
| CANDIDATE | 3.15 | [`ca7433df3a67`](https://git.kernel.org/torvalds/c/ca7433df3a67) | [net] | netfilter: conntrack: seperate expect locking from nf_conntrack_lock |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-158 |
| CANDIDATE | 3.15 | [`b7779d06f995`](https://git.kernel.org/torvalds/c/b7779d06f995) | [net] | netfilter: conntrack: spinlock per cpu to protect special lists |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-158 |
| CANDIDATE | 3.15 | [`b80edf0b52e1`](https://git.kernel.org/torvalds/c/b80edf0b52e1) | [net] | netfilter: Convert uses of __constant_<foo> to <foo> |  | CONFIG_NETFILTER=y in A37 | 3.10.0-656 |
| CANDIDATE | 3.15 | [`fe337ac28395`](https://git.kernel.org/torvalds/c/fe337ac28395) | [net] | netfilter: ctnetlink: don't add null bindings if no nat requested |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-132 |
| CANDIDATE | 3.15 | [`ee214d54bf3d`](https://git.kernel.org/torvalds/c/ee214d54bf3d) | [net] | netfilter: nf_conntrack: initialize net.ct.generation |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-158 |
| CANDIDATE | 3.15 | [`0eb5db7ad302`](https://git.kernel.org/torvalds/c/0eb5db7ad302) | [net] | netfilter: nfnetlink: add rcu_dereference_protected() helpers |  | CONFIG_NETFILTER=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.15 | [`ecd15dd7e45f`](https://git.kernel.org/torvalds/c/ecd15dd7e45f) | [net] | netfilter: nfnetlink: Fix use after free when it fails to process batch |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 3.15 | [`39111fd261f5`](https://git.kernel.org/torvalds/c/39111fd261f5) | [net] | netfilter: nfnetlink_log: remove unused code |  | CONFIG_NETFILTER_NETLINK_LOG=y in A37 | 3.10.0-293 |
| CANDIDATE | 3.15 | [`b476b72a0f85`](https://git.kernel.org/torvalds/c/b476b72a0f85) | [net] | netfilter: trivial code cleanup and doc changes |  | CONFIG_NETFILTER=y in A37 | 3.10.0-158 |
| CANDIDATE | 3.15 | [`9063e21fb026`](https://git.kernel.org/torvalds/c/9063e21fb026) | [net] | netlink: autosize skb lengthes |  | generic code, tag [net] | 3.10.0-211 |
| CANDIDATE | 3.15 | [`ff6076314339`](https://git.kernel.org/torvalds/c/ff6076314339) | [net] | netpoll: Add netpoll_rx_processing |  | generic code, tag [net] | 3.10.0-233 |
| CANDIDATE | 3.15 | [`18b37535f861`](https://git.kernel.org/torvalds/c/18b37535f861) | [net] | netpoll: Consolidate neigh_tx processing in service_neigh_queue |  | generic code, tag [net] | 3.10.0-233 |
| CANDIDATE | 3.15 | [`b6bacd550c33`](https://git.kernel.org/torvalds/c/b6bacd550c33) | [net] | netpoll: Don't drop all received packets |  | generic code, tag [net] | 3.10.0-233 |
| CANDIDATE | 3.15 | [`e1bd4d3d7dd2`](https://git.kernel.org/torvalds/c/e1bd4d3d7dd2) | [net] | netpoll: Move all receive processing under CONFIG_NETPOLL_TRAP |  | generic code, tag [net] | 3.10.0-233 |
| CANDIDATE | 3.15 | [`ad8d475244b4`](https://git.kernel.org/torvalds/c/ad8d475244b4) | [net] | netpoll: Move netpoll_trap under CONFIG_NETPOLL_TRAP |  | generic code, tag [net] | 3.10.0-233 |
| CANDIDATE | 3.15 | [`3f4df2066b4e`](https://git.kernel.org/torvalds/c/3f4df2066b4e) | [net] | netpoll: Move rx enable/disable into __dev_close_many |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 3.15 | [`b249b51b983d`](https://git.kernel.org/torvalds/c/b249b51b983d) | [net] | netpoll: move setting of NETPOLL_RX_DROP into netpoll_poll_dev |  | generic code, tag [net] | 3.10.0-233 |
| CANDIDATE | 3.15 | [`944e29485703`](https://git.kernel.org/torvalds/c/944e29485703) | [net] | netpoll: Only call ndo_start_xmit from a single place |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.15 | [`9852fbec2c95`](https://git.kernel.org/torvalds/c/9852fbec2c95) | [net] | netpoll: Pass budget into poll_napi |  | generic code, tag [net] | 3.10.0-233 |
| CANDIDATE | 3.15 | [`9c62a68d1311`](https://git.kernel.org/torvalds/c/9c62a68d1311) | [net] | netpoll: Remove dead packet receive code (CONFIG_NETPOLL_TRAP) |  | generic code, tag [net] | 3.10.0-233 |
| CANDIDATE | 3.15 | [`a8779ec1c5e6`](https://git.kernel.org/torvalds/c/a8779ec1c5e6) | [net] | netpoll: Remove gfp parameter from __netpoll_setup |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | 3.15 | [`66b5552fc2df`](https://git.kernel.org/torvalds/c/66b5552fc2df) | [net] | netpoll: Rename netpoll_rx_enable/disable to netpoll_poll_disable/enable |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 3.15 | [`eb8143b469e5`](https://git.kernel.org/torvalds/c/eb8143b469e5) | [net] | netpoll: Visit all napi handlers in poll_napi |  | generic code, tag [net] | 3.10.0-233 |
| CANDIDATE | 3.15 | [`e97dc3fcf98a`](https://git.kernel.org/torvalds/c/e97dc3fcf98a) | [net] | netpoll: Warn if more packets are processed than are budgeted |  | generic code, tag [net] | 3.10.0-233 |
| CANDIDATE | 3.15 | [`8e2f1a63f221`](https://git.kernel.org/torvalds/c/8e2f1a63f221) | [net] | packet: fix packet_direct_xmit for BQL enabled drivers |  | CONFIG_PACKET=y in A37 | 3.10.0-240 |
| CANDIDATE | 3.15 | [`61b905da33ae`](https://git.kernel.org/torvalds/c/61b905da33ae) (loose) | [net] | Rename skb->rxhash to skb->hash |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.15 | [`57a7744e0986`](https://git.kernel.org/torvalds/c/57a7744e0986) (loose) | [net] | Replace u64_stats_fetch_begin_bh to u64_stats_fetch_begin_irq |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.15 | [`136c373bf0e8`](https://git.kernel.org/torvalds/c/136c373bf0e8) | [bluetooth] | revert "bluetooth: Always wait for a connection on RFCOMM open()" |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | 3.15 | [`f87c24e74e88`](https://git.kernel.org/torvalds/c/f87c24e74e88) | [bluetooth] | revert "bluetooth: Move rfcomm_get_device() before rfcomm_dev_activate()" |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | 3.15 | [`7f717b91dd68`](https://git.kernel.org/torvalds/c/7f717b91dd68) | [bluetooth] | revert "bluetooth: Remove rfcomm_carrier_raised()" |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | 3.15 | [`200b916f3575`](https://git.kernel.org/torvalds/c/200b916f3575) | [net] | rtnetlink: wait for unregistering devices in rtnl_link_unregister() |  | generic code, tag [net] | 3.10.0-158 |
| CANDIDATE | 3.15 | [`f7b12606b5de`](https://git.kernel.org/torvalds/c/f7b12606b5de) | [net] | rtnl: make ifla_policy static |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | 3.15 | [`f6a082fed1e6`](https://git.kernel.org/torvalds/c/f6a082fed1e6) (loose) | [net] | sched: lock imbalance in hhf qdisc |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.15 | [`d37d8ac17d38`](https://git.kernel.org/torvalds/c/d37d8ac17d38) (loose) | [net] | sched: use no more than one page in struct fw_head |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | 3.15 | [`25a91d8d9191`](https://git.kernel.org/torvalds/c/25a91d8d9191) | [net] | skbuff: Introduce skb_to_sgvec_nomark to map skb without mark new end |  | generic code, tag [net] | 3.10.0-352 |
| CANDIDATE | 3.15 | [`1e785f48d29a`](https://git.kernel.org/torvalds/c/1e785f48d29a) (loose) | [net] | Start with correct mac_len in skb_network_protocol |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.15 | [`8e165e20348b`](https://git.kernel.org/torvalds/c/8e165e20348b) (loose) | [net] | tcp: add mib counters to track zero window transitions |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.15 | [`977cb0ecf82e`](https://git.kernel.org/torvalds/c/977cb0ecf82e) | [net] | tcp: add pacing_rate information into tcp_info |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.15 | [`cc93fc51f3a1`](https://git.kernel.org/torvalds/c/cc93fc51f3a1) | [net] | tcp: delete unused parameter in tcp_nagle_check() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.15 | [`219626924222`](https://git.kernel.org/torvalds/c/219626924222) | [net] | tcp: do not leak non zero tstamp in output packets |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.15 | [`fc9f35010641`](https://git.kernel.org/torvalds/c/fc9f35010641) | [net] | tcp: increment retransmit counters in tlp and fast open |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.15 | [`45f743596836`](https://git.kernel.org/torvalds/c/45f743596836) | [net] | tcp: remove unused min_cwnd member of tcp_congestion_ops |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.15 | [`f19c29e3e391`](https://git.kernel.org/torvalds/c/f19c29e3e391) | [net] | tcp: snmp stats for Fast Open, SYN rtx, and data pkts |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.15 | [`740b0f1841f6`](https://git.kernel.org/torvalds/c/740b0f1841f6) | [net] | tcp: switch rtt estimations to usec resolution |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.15 | [`a0b8486caf47`](https://git.kernel.org/torvalds/c/a0b8486caf47) | [net] | tcp: tcp_make_synack() minor changes |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.15 | [`431a91242d8d`](https://git.kernel.org/torvalds/c/431a91242d8d) | [net] | tcp: timestamp SYN+DATA messages |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.15 | [`f7324acd98ce`](https://git.kernel.org/torvalds/c/f7324acd98ce) | [net] | tcp: Use NET_ADD_STATS instead of NET_ADD_STATS_BH in tcp_event_new_data_sent() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.15 | [`86c1a045640d`](https://git.kernel.org/torvalds/c/86c1a045640d) | [net] | tcp: use zero-window when free_space is low |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.15 | [`6e2de802af32`](https://git.kernel.org/torvalds/c/6e2de802af32) | [net] | vti4: Check the tunnel endpoints of the xfrm state and the vti interface |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.15 | [`895de9a3488a`](https://git.kernel.org/torvalds/c/895de9a3488a) | [net] | vti4: Enable namespace changing |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.15 | [`78a010cca000`](https://git.kernel.org/torvalds/c/78a010cca000) | [net] | vti4: Support inter address family tunneling |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.15 | [`a34cd4f31919`](https://git.kernel.org/torvalds/c/a34cd4f31919) | [net] | vti4: Use the on xfrm_lookup returned dst_entry directly |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.15 | [`26be8e2db435`](https://git.kernel.org/torvalds/c/26be8e2db435) | [net] | vti6: Check the tunnel endpoints of the xfrm state and the vti interface |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.15 | [`fd71143645a9`](https://git.kernel.org/torvalds/c/fd71143645a9) | [net] | vti6: Don't unregister pernet ops twice on init errors |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.15 | [`61220ab34948`](https://git.kernel.org/torvalds/c/61220ab34948) | [net] | vti6: Enable namespace changing |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.15 | [`7cf9fdb5c771`](https://git.kernel.org/torvalds/c/7cf9fdb5c771) | [net] | vti6: Remove caching of flow informations |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.15 | [`7c85258152d6`](https://git.kernel.org/torvalds/c/7c85258152d6) | [net] | vti6: Remove dst_entry caching |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.15 | [`22e1b23dafa8`](https://git.kernel.org/torvalds/c/22e1b23dafa8) | [net] | vti6: Support inter address family tunneling |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.15 | [`fa9ad96d4905`](https://git.kernel.org/torvalds/c/fa9ad96d4905) | [net] | vti6: Update the ipv6 side to use its own receive hook |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.15 | [`6d004d6cc739`](https://git.kernel.org/torvalds/c/6d004d6cc739) | [net] | vti: Use the tunnel mark for lookup in the error handlers |  | CONFIG_XFRM=y in A37 | 3.10.0-180 |
| CANDIDATE | 3.15 | [`3328715e6c1f`](https://git.kernel.org/torvalds/c/3328715e6c1f) | [net] | xfrm4: Add IPsec protocol multiplexer |  | CONFIG_XFRM=y in A37 | 3.10.0-180 |
| CANDIDATE | 3.15 | [`61622cc6f290`](https://git.kernel.org/torvalds/c/61622cc6f290) | [net] | xfrm4: Properly handle unsupported protocols |  | CONFIG_XFRM=y in A37 | 3.10.0-180 |
| CANDIDATE | 3.15 | [`9994bb8e1e05`](https://git.kernel.org/torvalds/c/9994bb8e1e05) | [net] | xfrm4: Remove xfrm_tunnel_notifier |  | CONFIG_XFRM=y in A37 | 3.10.0-898 |
| CANDIDATE | 3.15 | [`7e14ea1521d9`](https://git.kernel.org/torvalds/c/7e14ea1521d9) | [net] | xfrm6: Add IPsec protocol multiplexer |  | CONFIG_XFRM=y in A37 | 3.10.0-281 |
| CANDIDATE | 3.15 | [`edb666f07e53`](https://git.kernel.org/torvalds/c/edb666f07e53) | [net] | xfrm6: Properly handle unsupported protocols |  | CONFIG_XFRM=y in A37 | 3.10.0-281 |
| CANDIDATE | 3.15 | [`573ce1c11b0d`](https://git.kernel.org/torvalds/c/573ce1c11b0d) | [net] | xfrm6: Remove xfrm_tunnel_notifier |  | CONFIG_XFRM=y in A37 | 3.10.0-1085 |
| CANDIDATE | 3.15 | [`70be6c91c865`](https://git.kernel.org/torvalds/c/70be6c91c865) | [net] | xfrm: Add xfrm_tunnel_skb_cb to the skb common buffer |  | CONFIG_XFRM=y in A37 | 3.10.0-180 |
| CANDIDATE | 3.15 | [`0f24558e9156`](https://git.kernel.org/torvalds/c/0f24558e9156) | [net] | xfrm: avoid creating temporary SA when there are no listeners |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 3.15 | [`cc9ab60e5796`](https://git.kernel.org/torvalds/c/cc9ab60e5796) | [net] | xfrm: Cleanup error handling of xfrm_state_clone |  | CONFIG_XFRM=y in A37 | 3.10.0-842 |
| CANDIDATE | 3.15 | [`01714109ea7e`](https://git.kernel.org/torvalds/c/01714109ea7e) | [net] | xfrm: Don't prohibit AH from using ESN feature |  | CONFIG_XFRM=y in A37 | 3.10.0-352 |
| CANDIDATE | 3.15 | [`5596732fa8c1`](https://git.kernel.org/torvalds/c/5596732fa8c1) | [net] | xfrm: Fix crash with ipv6 IPsec tunnel and NAT |  | CONFIG_XFRM=y in A37 | 3.10.0-236 |
| CANDIDATE | 3.15 | [`2f32b51b609f`](https://git.kernel.org/torvalds/c/2f32b51b609f) | [net] | xfrm: Introduce xfrm_input_afinfo to access the the callbacks properly |  | CONFIG_XFRM=y in A37 | 3.10.0-281 |
| CANDIDATE | 3.15 | [`1a1ccc96abb2`](https://git.kernel.org/torvalds/c/1a1ccc96abb2) | [net] | xfrm: Remove caching of xfrm_policy_sk_bundles |  | CONFIG_XFRM=y in A37 | 3.10.0-312 |
| CANDIDATE | 3.16 | [`e876f208af18`](https://git.kernel.org/torvalds/c/e876f208af18) (loose) | [net] | Add a software TSO helper API |  | generic code, tag [net] | 3.10.0-444 |
| CANDIDATE | 3.16 | [`0f4f4ffa7b7c`](https://git.kernel.org/torvalds/c/0f4f4ffa7b7c) (loose) | [net] | Add GSO support for UDP tunnels with checksum |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`6bae1d4cc395`](https://git.kernel.org/torvalds/c/6bae1d4cc395) (loose) | [net] | Add skb_gro_postpull_rcsum to udp and vxlan |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`e5eb4e30a512`](https://git.kernel.org/torvalds/c/e5eb4e30a512) (loose) | [net] | add skb_pop_rcv_encapsulation |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`670e5b8eaf85`](https://git.kernel.org/torvalds/c/670e5b8eaf85) (loose) | [net] | Add support for device specific address syncing |  | generic code, tag [net] | 3.10.0-282 |
| CANDIDATE | 3.16 | [`07064c6e022b`](https://git.kernel.org/torvalds/c/07064c6e022b) (loose) | [net] | Allow csum_add to be provided in arch |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`4e8bbb819d15`](https://git.kernel.org/torvalds/c/4e8bbb819d15) (loose) | [net] | Allow tc changes in user namespaces |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.16 | [`1c5abb6c77a2`](https://git.kernel.org/torvalds/c/1c5abb6c77a2) | [net] | bridge: Add 802.1ad tx vlan acceleration |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.16 | [`145beee8d6bb`](https://git.kernel.org/torvalds/c/145beee8d6bb) | [net] | bridge: Add addresses from static fdbs to non-promisc ports |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.16 | [`41c389d72cf0`](https://git.kernel.org/torvalds/c/41c389d72cf0) | [net] | bridge: Add bridge ifindex to bridge fdb notify msgs |  | CONFIG_BRIDGE=y in A37 | 3.10.0-260 |
| CANDIDATE | 3.16 | [`07f8ac4a1e26`](https://git.kernel.org/torvalds/c/07f8ac4a1e26) | [net] | bridge: add export of multicast database adjacent to net_dev |  | CONFIG_BRIDGE=y in A37 | 3.10.0-302 |
| CANDIDATE | 3.16 | [`8db24af71b31`](https://git.kernel.org/torvalds/c/8db24af71b31) | [net] | bridge: Add functionality to sync static fdb entries to hw |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.16 | [`dc4eb53a996a`](https://git.kernel.org/torvalds/c/dc4eb53a996a) | [net] | bridge: adhere to querier election mechanism specified by RFCs |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.16 | [`2796d0c648c9`](https://git.kernel.org/torvalds/c/2796d0c648c9) | [net] | bridge: Automatically manage port promiscuous mode |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.16 | [`d4f0e0958dba`](https://git.kernel.org/torvalds/c/d4f0e0958dba) (loose) | [net] | bridge: fix build |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.16 | [`3993c4e159eb`](https://git.kernel.org/torvalds/c/3993c4e159eb) | [net] | bridge: fix compile error when compiling without IPv6 support |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.16 | [`e0a47d1f7816`](https://git.kernel.org/torvalds/c/e0a47d1f7816) | [net] | bridge: Fix incorrect judgment of promisc |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.16 | [`6c03ee8bdaa1`](https://git.kernel.org/torvalds/c/6c03ee8bdaa1) | [net] | bridge: fix smatch warning / potential null pointer dereference |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.16 | [`025559eec82c`](https://git.kernel.org/torvalds/c/025559eec82c) | [net] | bridge: fix spelling of promiscuous |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.16 | [`019ee792d786`](https://git.kernel.org/torvalds/c/019ee792d786) | [net] | bridge: fix the unbalanced promiscuous count when add_if failed |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.16 | [`f3a6ddf15209`](https://git.kernel.org/torvalds/c/f3a6ddf15209) | [net] | bridge: Introduce BR_PROMISC flag |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.16 | [`e028e4b8dc93`](https://git.kernel.org/torvalds/c/e028e4b8dc93) | [net] | bridge: Keep track of ports capable of automatic discovery |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.16 | [`b1282726d534`](https://git.kernel.org/torvalds/c/b1282726d534) | [net] | bridge: make br_device_notifier static |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.16 | [`2cd4143192e8`](https://git.kernel.org/torvalds/c/2cd4143192e8) | [net] | bridge: memorize and export selected IGMP/MLD querier port |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.16 | [`8580e2117c06`](https://git.kernel.org/torvalds/c/8580e2117c06) | [net] | bridge: Prepare for 802.1ad vlan filtering support |  | CONFIG_BRIDGE=y in A37 | 3.10.0-223 |
| CANDIDATE | 3.16 | [`f2808d226f4e`](https://git.kernel.org/torvalds/c/f2808d226f4e) | [net] | bridge: Prepare for forwarding another bridge group addresses |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.16 | [`90010b36ebbe`](https://git.kernel.org/torvalds/c/90010b36ebbe) | [net] | bridge: rename struct bridge_mcast_query/querier |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.16 | [`204177f3f30c`](https://git.kernel.org/torvalds/c/204177f3f30c) | [net] | bridge: Support 802.1ad vlan filtering |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.16 | [`63c3a622dd02`](https://git.kernel.org/torvalds/c/63c3a622dd02) | [net] | bridge: Turn flag change macro into a function |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.16 | [`4405b4d635aa`](https://git.kernel.org/torvalds/c/4405b4d635aa) (loose) | [net] | Change x86_64 add32_with_carry to allow memory operand |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`a0265d28b3a5`](https://git.kernel.org/torvalds/c/a0265d28b3a5) (loose) | [net] | core: Add __dev_forward_skb |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.16 | [`b26ba202e050`](https://git.kernel.org/torvalds/c/b26ba202e050) (loose) | [net] | Eliminate no_check from protosw |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`f062a3844845`](https://git.kernel.org/torvalds/c/f062a3844845) | [net] | ethtool: Check that reserved fields of struct ethtool_rxfh are 0 |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`61d88c6811f2`](https://git.kernel.org/torvalds/c/61d88c6811f2) | [net] | ethtool: Disallow ETHTOOL_SRSSH with both indir table and hash key unchanged |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`266a16468432`](https://git.kernel.org/torvalds/c/266a16468432) | [net] | ethtool: exit the loop when invalid index occurs |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`38c891a49dec`](https://git.kernel.org/torvalds/c/38c891a49dec) | [net] | ethtool: Improve explanation of the two arrays following struct ethtool_rxfh |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`7455fa242289`](https://git.kernel.org/torvalds/c/7455fa242289) | [net] | ethtool: Name the 'no change' value for setting RSS hash key but not indir table |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`fb95cd8d1473`](https://git.kernel.org/torvalds/c/fb95cd8d1473) | [net] | ethtool: Return immediately on error in ethtool_copy_validate_indir() |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`3de0b592394d`](https://git.kernel.org/torvalds/c/3de0b592394d) | [net] | ethtool: Support for configurable RSS hash key |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`4b28252cada3`](https://git.kernel.org/torvalds/c/4b28252cada3) (loose) | [net] | Fix GSO constants to match NETIF flags |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`54951194656e`](https://git.kernel.org/torvalds/c/54951194656e) (loose) | [net] | Fix NETDEV_CHANGE notifier usage causing spurious arp flush |  | generic code, tag [net] | 3.10.0-915 |
| CANDIDATE | 3.16 | [`46fb51eb96ca`](https://git.kernel.org/torvalds/c/46fb51eb96ca) (loose) | [net] | Fix save software checksum complete |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`de843723f9b9`](https://git.kernel.org/torvalds/c/de843723f9b9) (loose) | [net] | fix setting csum_start in skb_segment() |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`5882a07c7209`](https://git.kernel.org/torvalds/c/5882a07c7209) (loose) | [net] | fix UDP tunnel GSO of frag_list GRO packets |  | generic code, tag [net] | 3.10.0-189 |
| CANDIDATE | 3.16 | [`76ba0aae6730`](https://git.kernel.org/torvalds/c/76ba0aae6730) (loose) | [net] | Generalize checksum_init functions |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`2f91abd4516d`](https://git.kernel.org/torvalds/c/2f91abd4516d) | [net] | genetlink: remove superfluous assignment |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`81249bea1fb0`](https://git.kernel.org/torvalds/c/81249bea1fb0) | [net] | gre6: Call skb_checksum_simple_validate |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`39471ac8dde6`](https://git.kernel.org/torvalds/c/39471ac8dde6) | [net] | icmp6: Call skb_checksum_validate |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`29a96e1f36db`](https://git.kernel.org/torvalds/c/29a96e1f36db) | [net] | icmp: Call skb_checksum_simple_validate |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`de08dc1a8e70`](https://git.kernel.org/torvalds/c/de08dc1a8e70) | [net] | igmp: Call skb_checksum_simple_validate |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`586d5fc867be`](https://git.kernel.org/torvalds/c/586d5fc867be) | [net] | ip_tunnel: fix possible rtable leak |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 3.16 | [`7c8e6b9c2811`](https://git.kernel.org/torvalds/c/7c8e6b9c2811) | [net] | ip_vti: Fix 'ip tunnel add' with 'key' parameters |  | CONFIG_XFRM=y in A37 | 3.10.0-260 |
| CANDIDATE | 3.16 | [`70cb4a4526d4`](https://git.kernel.org/torvalds/c/70cb4a4526d4) | [net] | ipmr: Replace comma with semicolon |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 3.16 | [`e940f5d6ba6a`](https://git.kernel.org/torvalds/c/e940f5d6ba6a) | [net] | ipv6: Fix MLD Query message check |  | generic code, tag [net] | 3.10.0-144 |
| CANDIDATE | 3.16 | [`79e0f1c9f2c7`](https://git.kernel.org/torvalds/c/79e0f1c9f2c7) | [net] | ipv6: Need to sock_put on csum error |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`163cd4e817a4`](https://git.kernel.org/torvalds/c/163cd4e817a4) | [net] | ipv6: remove parameter rt from fib6_prune_clones() |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 3.16 | [`07c8e35a3804`](https://git.kernel.org/torvalds/c/07c8e35a3804) | [net] | ipv6: remove unused function ipv6_inherit_linklocal() |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 3.16 | [`6046d5b4e464`](https://git.kernel.org/torvalds/c/6046d5b4e464) | [net] | ipv6: support IFA_F_MANAGETEMPADDR for address deletion too |  | generic code, tag [net] | 3.10.0-424 |
| CANDIDATE | 3.16 | [`6b649feafe10`](https://git.kernel.org/torvalds/c/6b649feafe10) | [net] | l2tp: Add support for zero IPv6 checksums |  | CONFIG_L2TP=y in A37 | 3.10.0-180 |
| CANDIDATE | 3.16 | [`77157e1973cb`](https://git.kernel.org/torvalds/c/77157e1973cb) | [net] | l2tp: call udp{6}_set_csum |  | CONFIG_L2TP=y in A37 | 3.10.0-180 |
| CANDIDATE | 3.16 | [`58d6085c14f5`](https://git.kernel.org/torvalds/c/58d6085c14f5) | [net] | l2tp: Remove UDP checksum verification |  | CONFIG_L2TP=y in A37 | 3.10.0-180 |
| CANDIDATE | 3.16 | [`545469f7a5d7`](https://git.kernel.org/torvalds/c/545469f7a5d7) (loose) | [net] | neighbour: fix ndm_type type error issue |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.16 | [`944df8ae84d8`](https://git.kernel.org/torvalds/c/944df8ae84d8) | [net] | net/openvswitch: Use with RCU_INIT_POINTER(x, NULL) in vport-gre.c |  | generic code, tag [net] | 3.10.0-211 |
| CANDIDATE | 3.16 | [`1818ce4dc59a`](https://git.kernel.org/torvalds/c/1818ce4dc59a) | [net] | net_namespace: trivial cleanup |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.16 | [`6e765a009ad3`](https://git.kernel.org/torvalds/c/6e765a009ad3) | [net] | net_sched: drr: warn when qdisc is not work conserving |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.16 | [`f768e5bdefe1`](https://git.kernel.org/torvalds/c/f768e5bdefe1) | [net] | netfilter: add helper for adding nat extension |  | CONFIG_NETFILTER=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.16 | [`1708803ef224`](https://git.kernel.org/torvalds/c/1708803ef224) | [net] | netfilter: bridge: fix Kconfig unmet dependencies |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.16 | [`4a001068d790`](https://git.kernel.org/torvalds/c/4a001068d790) | [net] | netfilter: ctnetlink: add zone size to length |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-340 |
| CANDIDATE | 3.16 | [`266155b2de8f`](https://git.kernel.org/torvalds/c/266155b2de8f) | [net] | netfilter: ctnetlink: fix dumping of dying/unconfirmed conntracks |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-158 |
| CANDIDATE | 3.16 | [`cd5f336f1780`](https://git.kernel.org/torvalds/c/cd5f336f1780) | [net] | netfilter: ctnetlink: fix refcnt leak in dying/unconfirmed list dumper |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-158 |
| CANDIDATE | 3.16 | [`4f520900522f`](https://git.kernel.org/torvalds/c/4f520900522f) | [net] | netlink: have netlink per-protocol bind function return an error code |  | generic code, tag [net] | 3.10.0-368 |
| CANDIDATE | 3.16 | [`7774d5e03f4a`](https://git.kernel.org/torvalds/c/7774d5e03f4a) | [net] | netlink: implement unbind to netlink_setsockopt NETLINK_DROP_MEMBERSHIP |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 3.16 | [`bfe4bc71c64a`](https://git.kernel.org/torvalds/c/bfe4bc71c64a) | [net] | netlink: simplify nfnetlink_bind |  | generic code, tag [net] | 3.10.0-368 |
| CANDIDATE | 3.16 | [`5d0c2b95bc57`](https://git.kernel.org/torvalds/c/5d0c2b95bc57) (loose) | [net] | Preserve CHECKSUM_COMPLETE at validation |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`d39a743511cd`](https://git.kernel.org/torvalds/c/d39a743511cd) | [net] | ptp: validate the requested frequency adjustment |  | generic code, tag [net] | 3.10.0-132 |
| CANDIDATE | 3.16 | [`92ff71b8fe9c`](https://git.kernel.org/torvalds/c/92ff71b8fe9c) (loose) | [net] | remove some unless free on failure in alloc_netdev_mqs() |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 3.16 | [`60ff746739bf`](https://git.kernel.org/torvalds/c/60ff746739bf) (loose) | [net] | rename local_df to ignore_df |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.16 | [`41d09df1e08b`](https://git.kernel.org/torvalds/c/41d09df1e08b) (loose) | [net] | rfkill: gpio: add ACPI IDs for a Broadcom bluetooth chip |  | generic code, tag [net] | 3.10.0-445 |
| CANDIDATE | 3.16 | [`e51fb152318e`](https://git.kernel.org/torvalds/c/e51fb152318e) | [net] | rtnetlink: fix a memory leak when ->newlink fails |  | generic code, tag [net] | 3.10.0-491 |
| CANDIDATE | 3.16 | [`7e3cead51729`](https://git.kernel.org/torvalds/c/7e3cead51729) (loose) | [net] | Save software checksum complete |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`a49eb42a341f`](https://git.kernel.org/torvalds/c/a49eb42a341f) (loose) | [net] | sched: act: allow to clear all actions as well |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | 3.16 | [`2f7ef2f8790f`](https://git.kernel.org/torvalds/c/2f7ef2f8790f) (loose) | [net] | sched: cls: check if we could overwrite actions when changing a filter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | 3.16 | [`7e2b10c1e52c`](https://git.kernel.org/torvalds/c/7e2b10c1e52c) (loose) | [net] | Support for multiple checksums with gso |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`1a02ef76acfa`](https://git.kernel.org/torvalds/c/1a02ef76acfa) (loose) | [net] | sysfs: add documentation entries for /sys/class/<iface>/queues |  | CONFIG_SYSFS=y in A37 | 3.10.0-388 |
| CANDIDATE | 3.16 | [`1f3279ae0c13`](https://git.kernel.org/torvalds/c/1f3279ae0c13) | [net] | tcp: avoid retransmits of TCP packets hanging in host queues |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.16 | [`e9c3a24b3ace`](https://git.kernel.org/torvalds/c/e9c3a24b3ace) | [net] | tcp: Call gso_make_checksum |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`e114a710aa50`](https://git.kernel.org/torvalds/c/e114a710aa50) | [net] | tcp: fix cwnd limited checking to improve congestion control |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.16 | [`0a672f74131d`](https://git.kernel.org/torvalds/c/0a672f74131d) | [net] | tcp: improve fastopen icmp handling |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.16 | [`3a19ce0eec32`](https://git.kernel.org/torvalds/c/3a19ce0eec32) | [net] | tcp: IPv6 support for fastopen server |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.16 | [`ca8a22634381`](https://git.kernel.org/torvalds/c/ca8a22634381) | [net] | tcp: make cwnd-limited checks measurement-based, and gentler |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.16 | [`86fd14ad1e8c`](https://git.kernel.org/torvalds/c/86fd14ad1e8c) | [net] | tcp: make tcp_cwnd_application_limited() static |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.16 | [`5b7ed0892f2a`](https://git.kernel.org/torvalds/c/5b7ed0892f2a) | [net] | tcp: move fastopen functions to tcp_fastopen.c |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.16 | [`249015515fe3`](https://git.kernel.org/torvalds/c/249015515fe3) | [net] | tcp: remove in_flight parameter from cong_avoid() methods |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.16 | [`89278c9dc922`](https://git.kernel.org/torvalds/c/89278c9dc922) | [net] | tcp: simplify fast open cookie processing |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.16 | [`843f4a55e336`](https://git.kernel.org/torvalds/c/843f4a55e336) | [net] | tcp: use tcp_v4_send_synack on first SYN-ACK |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.16 | [`484611e53047`](https://git.kernel.org/torvalds/c/484611e53047) (loose) | [net] | tso: Export symbols for modular build |  | generic code, tag [net] | 3.10.0-444 |
| CANDIDATE | 3.16 | [`bbdff225ede6`](https://git.kernel.org/torvalds/c/bbdff225ede6) | [net] | udp: call __skb_checksum_complete when doing full checksum |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`af5fcba7f38f`](https://git.kernel.org/torvalds/c/af5fcba7f38f) | [net] | udp: Generic functions to set checksum |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.16 | [`63c6f81cdde5`](https://git.kernel.org/torvalds/c/63c6f81cdde5) | [net] | udp: ipv4: do not waste time in __udp4_lib_mcast_demux_lookup |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 3.16 | [`31ff6aa5c86f`](https://git.kernel.org/torvalds/c/31ff6aa5c86f) (loose) | [net] | unix: Align send data_len up to PAGE_SIZE |  | CONFIG_UNIX=y in A37 | 3.10.0-271 |
| CANDIDATE | 3.16 | [`56bfa7ee7c88`](https://git.kernel.org/torvalds/c/56bfa7ee7c88) (loose) | [net] | unregister_netdevice: move RTM_DELLINK to until after ndo_uninit |  | generic code, tag [net] | 3.10.0-349 |
| CANDIDATE | 3.16 | [`4cb28970a23f`](https://git.kernel.org/torvalds/c/4cb28970a23f) (loose) | [net] | use the new API kvfree() |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.16 | [`112a3513b519`](https://git.kernel.org/torvalds/c/112a3513b519) | [net] | vti6: delete unneeded call to netdev_priv |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.16 | [`21ee543edc0d`](https://git.kernel.org/torvalds/c/21ee543edc0d) | [net] | xfrm: fix race between netns cleanup and state expire notification |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 3.16 | [`b7eea4545ea7`](https://git.kernel.org/torvalds/c/b7eea4545ea7) | [net] | xfrm: Fix refcount imbalance in xfrm_lookup |  | CONFIG_XFRM=y in A37 | 3.10.0-312 |
| CANDIDATE | 3.17 | [`1042cab8627a`](https://git.kernel.org/torvalds/c/1042cab8627a) | [net] | af_iucv: avoid path quiesce of severed path in shutdown() |  | generic code, tag [net] | 3.10.0-334 |
| CANDIDATE | 3.17 | [`0d5501c1c828`](https://git.kernel.org/torvalds/c/0d5501c1c828) (loose) | [net] | Always untag vlan-tagged traffic on input |  | generic code, tag [net] | 3.10.0-343 |
| CANDIDATE | 3.17 | [`d9b2938aabf7`](https://git.kernel.org/torvalds/c/d9b2938aabf7) (loose) | [net] | attempt a single high order allocation |  | generic code, tag [net] | 3.10.0-359 |
| CANDIDATE | 3.17 | [`f941a6d9a9e0`](https://git.kernel.org/torvalds/c/f941a6d9a9e0) | [net] | bridge: adding stubs for multicast exports |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.17 | [`635126b7ca13`](https://git.kernel.org/torvalds/c/635126b7ca13) | [net] | bridge: Allow clearing of pvid and untagged bitmap |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.17 | [`20adfa1a81af`](https://git.kernel.org/torvalds/c/20adfa1a81af) | [net] | bridge: Check if vlan filtering is enabled only once |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.17 | [`47fab41ab51a`](https://git.kernel.org/torvalds/c/47fab41ab51a) | [net] | bridge: Don't include NDA_VLAN for FDB entries with vid 0 |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.17 | [`c34963e21685`](https://git.kernel.org/torvalds/c/c34963e21685) | [net] | bridge: export knowledge about the presence of IGMP/MLD queriers |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.17 | [`5d5eacb34c9e`](https://git.kernel.org/torvalds/c/5d5eacb34c9e) | [net] | bridge: fdb dumping takes a filter device |  | CONFIG_BRIDGE=y in A37 | 3.10.0-475 |
| CANDIDATE | 3.17 | [`5d5eacb34c9e`](https://git.kernel.org/torvalds/c/5d5eacb34c9e) | [net] | bridge: fdb dumping takes a filter device |  | CONFIG_BRIDGE=y in A37 | 3.10.0-153 |
| CANDIDATE | 3.17 | [`c095f248e63a`](https://git.kernel.org/torvalds/c/c095f248e63a) | [net] | bridge: Fix br_should_learn to check vlan_enabled |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.17 | [`5e6d24358799`](https://git.kernel.org/torvalds/c/5e6d24358799) | [net] | bridge: netlink dump interface at par with brctl |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.17 | [`fdb0a6626e8e`](https://git.kernel.org/torvalds/c/fdb0a6626e8e) | [net] | bridge: Update outdated comment on promiscuous mode |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.17 | [`a3f5ee71cdec`](https://git.kernel.org/torvalds/c/a3f5ee71cdec) | [net] | bridge: use list_for_each_entry_continue_reverse |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | 3.17 | [`73d0f37ac4ee`](https://git.kernel.org/torvalds/c/73d0f37ac4ee) | [net] | cbq: incorrectly low bandwidth setting blocks limited traffic |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.17 | [`7201c1ddf774`](https://git.kernel.org/torvalds/c/7201c1ddf774) | [net] | cbq: now_rt removal |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.17 | [`c99d667e8527`](https://git.kernel.org/torvalds/c/c99d667e8527) (loose) | [net] | cnic: Cleanup CONFIG_IPV6 & VLAN check |  | generic code, tag [net] | 3.10.0-259 |
| CANDIDATE | 3.17 | [`17c9c8232663`](https://git.kernel.org/torvalds/c/17c9c8232663) | [net] | ematch: Fix matching of inverted containers. |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.17 | [`db115037bb57`](https://git.kernel.org/torvalds/c/db115037bb57) (loose) | [net] | fix checksum features handling in netif_skb_features() |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 3.17 | [`7ce64c79c4de`](https://git.kernel.org/torvalds/c/7ce64c79c4de) (loose) | [net] | fix creation adjacent device symlinks |  | generic code, tag [net] | 3.10.0-578 |
| CANDIDATE | 3.17 | [`82d5e2b8b466`](https://git.kernel.org/torvalds/c/82d5e2b8b466) (loose) | [net] | fix skb_page_frag_refill() kerneldoc |  | generic code, tag [net] | 3.10.0-359 |
| CANDIDATE | 3.17 | [`7304fe468163`](https://git.kernel.org/torvalds/c/7304fe468163) (loose) | [net] | fix the counter ICMP_MIB_INERRORS/ICMP6_MIB_INERRORS |  | generic code, tag [net] | 3.10.0-461 |
| CANDIDATE | 3.17 | [`5ed20a68cd6c`](https://git.kernel.org/torvalds/c/5ed20a68cd6c) | [net] | flow_dissector: Abstract out hash computation |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.17 | [`19469a873baf`](https://git.kernel.org/torvalds/c/19469a873baf) | [net] | flow_dissector: Use IPv6 flow label in flow_dissector |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 3.17 | [`e0f31d849867`](https://git.kernel.org/torvalds/c/e0f31d849867) | [net] | flow_keys: Record IP layer protocol in skb_flow_dissect() |  | generic code, tag [net] | 3.10.0-153 |
| CANDIDATE | 3.17 | [`0d566379c5e1`](https://git.kernel.org/torvalds/c/0d566379c5e1) | [net] | genetlink: add function genl_has_listeners() |  | generic code, tag [net] | 3.10.0-211 |
| CANDIDATE | 3.17 | [`73d3fe6d1c6d`](https://git.kernel.org/torvalds/c/73d3fe6d1c6d) | [net] | gro: fix aggregation for skb using frag_list |  | generic code, tag [net] | 3.10.0-204 |
| CANDIDATE | 3.17 | [`2b0bb01b6edb`](https://git.kernel.org/torvalds/c/2b0bb01b6edb) | [net] | ip6_tunnel: Return an error when adding an existing tunnel |  | generic code, tag [net] | 3.10.0-204 |
| CANDIDATE | 3.17 | [`5a4ee9a9a066`](https://git.kernel.org/torvalds/c/5a4ee9a9a066) | [net] | ip6gre: add a rtnl link alias for ip6gretap |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 3.17 | [`d61746b2e71b`](https://git.kernel.org/torvalds/c/d61746b2e71b) | [net] | ip_tunnel: Don't allow to add the same tunnel multiple times |  | generic code, tag [net] | 3.10.0-204 |
| CANDIDATE | 3.17 | [`a35165ca1016`](https://git.kernel.org/torvalds/c/a35165ca1016) | [net] | ipv4: do not use this_cpu_ptr() in preemptible context |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 3.17 | [`20e61da7ffcf`](https://git.kernel.org/torvalds/c/20e61da7ffcf) | [net] | ipv4: fail early when creating netdev named all or default |  | generic code, tag [net] | 3.10.0-385 |
| CANDIDATE | 3.17 | [`bc91b0f07ada`](https://git.kernel.org/torvalds/c/bc91b0f07ada) | [net] | ipv6: addrconf: implement address generation modes |  | generic code, tag [net] | 3.10.0-140 |
| CANDIDATE | 3.17 | [`166bd890a3d8`](https://git.kernel.org/torvalds/c/166bd890a3d8) | [net] | ipv6: data of fwmark_reflect sysctl needs to be updated on netns construction |  | generic code, tag [net] | 3.10.0-717 |
| CANDIDATE | 3.17 | [`a317a2f19da7`](https://git.kernel.org/torvalds/c/a317a2f19da7) | [net] | ipv6: fail early when creating netdev named all or default |  | generic code, tag [net] | 3.10.0-385 |
| CANDIDATE | 3.17 | [`f24062b07dda`](https://git.kernel.org/torvalds/c/f24062b07dda) | [net] | ipv6: fix a refcnt leak with peer addr |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 3.17 | [`705f1c869d57`](https://git.kernel.org/torvalds/c/705f1c869d57) | [net] | ipv6: remove rt6i_genid |  | generic code, tag [net] | 3.10.0-193 |
| CANDIDATE | 3.17 | [`de185ab46cb0`](https://git.kernel.org/torvalds/c/de185ab46cb0) | [net] | ipv6: restore the behavior of ipv6_sock_ac_drop() |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.17 | [`e7478dfc4656`](https://git.kernel.org/torvalds/c/e7478dfc4656) | [net] | ipv6: use addrconf_get_prefix_route() to remove peer addr |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 3.17 | [`9cc63db5e1f2`](https://git.kernel.org/torvalds/c/9cc63db5e1f2) | [net] | net_sched: cancel nest attribute on failure in tcf_exts_dump() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.17 | [`e40f5c72347d`](https://git.kernel.org/torvalds/c/e40f5c72347d) | [net] | net_sched: remove exceptional & on function name |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.17 | [`84a59ca55f69`](https://git.kernel.org/torvalds/c/84a59ca55f69) | [net] | netfilter: add explicit Kconfig for NETFILTER_XT_NAT |  | CONFIG_NETFILTER=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.17 | [`960649d1923c`](https://git.kernel.org/torvalds/c/960649d1923c) | [net] | netfilter: bridge: add generic packet logger |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.17 | [`85f5b3086a04`](https://git.kernel.org/torvalds/c/85f5b3086a04) | [net] | netfilter: bridge: add reject support |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.17 | [`7926dbfa4bc1`](https://git.kernel.org/torvalds/c/7926dbfa4bc1) | [net] | netfilter: don't use mutex_lock_interruptible() |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1118 |
| CANDIDATE | 3.17 | [`c1878869c0c8`](https://git.kernel.org/torvalds/c/c1878869c0c8) | [net] | netfilter: fix several Kconfig problems in NF_LOG_* |  | CONFIG_NETFILTER=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.17 | [`fab4085f4e24`](https://git.kernel.org/torvalds/c/fab4085f4e24) | [net] | netfilter: log: nf_log_packet() as real unified interface |  | CONFIG_NETFILTER=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.17 | [`8993cf8edf42`](https://git.kernel.org/torvalds/c/8993cf8edf42) | [net] | netfilter: move NAT Kconfig switches out of the iptables scope |  | CONFIG_NETFILTER=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.17 | [`d79a61d646db`](https://git.kernel.org/torvalds/c/d79a61d646db) | [net] | netfilter: NETFILTER_XT_TARGET_LOG selects NF_LOG_* |  | CONFIG_NETFILTER=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.17 | [`27fd8d90c996`](https://git.kernel.org/torvalds/c/27fd8d90c996) | [net] | netfilter: nf_log: move log buffering to core logging |  | CONFIG_NETFILTER_NETLINK_LOG=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.17 | [`5962815a6a56`](https://git.kernel.org/torvalds/c/5962815a6a56) | [net] | netfilter: nf_log: use an array of loggers instead of list |  | CONFIG_NETFILTER_NETLINK_LOG=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.17 | [`cbb8125eb40b`](https://git.kernel.org/torvalds/c/cbb8125eb40b) | [net] | netfilter: nfnetlink: deliver netlink errors on batch completion |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 3.17 | [`f6b50824f7d8`](https://git.kernel.org/torvalds/c/f6b50824f7d8) | [net] | netfilter: x_tables: xt_free_table_info() cleanup |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-281 |
| CANDIDATE | 3.17 | [`ca1aa54f272d`](https://git.kernel.org/torvalds/c/ca1aa54f272d) | [net] | netfilter: xt_log: add missing string format in nf_log_packet() |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.17 | [`9ce12eb16ffb`](https://git.kernel.org/torvalds/c/9ce12eb16ffb) | [net] | netlink: Annotate RCU locking for seq_file walker |  | generic code, tag [net] | 3.10.0-211 |
| CANDIDATE | 3.17 | [`e341694e3eb5`](https://git.kernel.org/torvalds/c/e341694e3eb5) | [net] | netlink: Convert netlink_lookup() to use RCU protected hash table |  | generic code, tag [net] | 3.10.0-211 |
| CANDIDATE | 3.17 | [`46c9521fc245`](https://git.kernel.org/torvalds/c/46c9521fc245) | [net] | netlink: Fix do_one_broadcast() prototype. |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.17 | [`67a24ac18b02`](https://git.kernel.org/torvalds/c/67a24ac18b02) | [net] | netlink: fix lockdep splats |  | generic code, tag [net] | 3.10.0-211 |
| CANDIDATE | 3.17 | [`d87de1f3e963`](https://git.kernel.org/torvalds/c/d87de1f3e963) | [net] | netlink: Fix shadow warning on jiffies |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 3.17 | [`6c8f7e708374`](https://git.kernel.org/torvalds/c/6c8f7e708374) | [net] | netlink: hold nl_sock_hash_lock during diag dump |  | generic code, tag [net] | 3.10.0-211 |
| CANDIDATE | 3.17 | [`4e48ed883c72`](https://git.kernel.org/torvalds/c/4e48ed883c72) | [net] | netlink: reset network header before passing to taps |  | generic code, tag [net] | 3.10.0-925 |
| CANDIDATE | 3.17 | [`a3b18ddb9cc1`](https://git.kernel.org/torvalds/c/a3b18ddb9cc1) (loose) | [net] | Only do flow_dissector hash computation once per packet |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | 3.17 | [`4c75431ac352`](https://git.kernel.org/torvalds/c/4c75431ac352) (loose) | [net] | prevent of emerging cross-namespace symlinks |  | generic code, tag [net] | 3.10.0-578 |
| CANDIDATE | 3.17 | [`ccc7f4968a18`](https://git.kernel.org/torvalds/c/ccc7f4968a18) (loose) | [net] | print net_device reg_state in netdev_* unless it's registered |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 3.17 | [`476eab825164`](https://git.kernel.org/torvalds/c/476eab825164) (loose) | [net] | remove inet6_reqsk_alloc |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`a40e0a664bce`](https://git.kernel.org/torvalds/c/a40e0a664bce) (loose) | [net] | remove open-coded skb_cow_head |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 3.17 | [`b0ab2fabb5b9`](https://git.kernel.org/torvalds/c/b0ab2fabb5b9) | [net] | rtnetlink: allow to register ops without ops->setup set |  | generic code, tag [net] | 3.10.0-229 |
| CANDIDATE | 3.17 | [`945a36761fd7`](https://git.kernel.org/torvalds/c/945a36761fd7) | [net] | rtnetlink: fix VF info size |  | generic code, tag [net] | 3.10.0-150 |
| CANDIDATE | 3.17 | [`257117862634`](https://git.kernel.org/torvalds/c/257117862634) (loose) | [net] | sched: shrink struct qdisc_skb_cb to 28 bytes |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-192 |
| CANDIDATE | 3.17 | [`0bec8c88dc2b`](https://git.kernel.org/torvalds/c/0bec8c88dc2b) (loose) | [net] | skbuff: Use ALIGN macro instead of open coding it |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.17 | [`fb7b37a7f3d6`](https://git.kernel.org/torvalds/c/fb7b37a7f3d6) | [net] | tcp: add init_cookie_seq method to tcp_request_sock_ops |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`16bea70aa730`](https://git.kernel.org/torvalds/c/16bea70aa730) | [net] | tcp: add init_req method to tcp_request_sock_ops |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`936b8bdb53f9`](https://git.kernel.org/torvalds/c/936b8bdb53f9) | [net] | tcp: add init_seq method to tcp_request_sock_ops |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`2aec4a297b21`](https://git.kernel.org/torvalds/c/2aec4a297b21) | [net] | tcp: add mss_clamp to tcp_request_sock_ops |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`695da14eb0af`](https://git.kernel.org/torvalds/c/695da14eb0af) | [net] | tcp: add queue_add_hash to tcp_request_sock_ops |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`d94e0417ad8d`](https://git.kernel.org/torvalds/c/d94e0417ad8d) | [net] | tcp: add route_req method to tcp_request_sock_ops |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`d6274bd8d6ea`](https://git.kernel.org/torvalds/c/d6274bd8d6ea) | [net] | tcp: add send_synack method to tcp_request_sock_ops |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`1fb6f159fd21`](https://git.kernel.org/torvalds/c/1fb6f159fd21) | [net] | tcp: add tcp_conn_request |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`57b47553f65e`](https://git.kernel.org/torvalds/c/57b47553f65e) | [net] | tcp: cookie_v4_init_sequence: skb should be const |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`a26552afe894`](https://git.kernel.org/torvalds/c/a26552afe894) | [net] | tcp: don't allow syn packets without timestamps to pass tcp_tw_recycle logic |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`9d186cac7ffb`](https://git.kernel.org/torvalds/c/9d186cac7ffb) | [net] | tcp: don't use timestamp from repaired skb-s to calculate RTT (v2) |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`0c9ab09223fe`](https://git.kernel.org/torvalds/c/0c9ab09223fe) | [net] | tcp: fix ssthresh and undo for consecutive short FRTO episodes |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`9ea88a153001`](https://git.kernel.org/torvalds/c/9ea88a153001) | [net] | tcp: md5: check md5 signature without socket lock |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`64a124edcc94`](https://git.kernel.org/torvalds/c/64a124edcc94) | [net] | tcp: md5: remove unneeded check in tcp_v4_parse_md5_keys |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`940371597707`](https://git.kernel.org/torvalds/c/940371597707) | [net] | tcp: move around a few calls in tcp_v6_conn_request |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`5ae344c949e7`](https://git.kernel.org/torvalds/c/5ae344c949e7) | [net] | tcp: reduce spurious retransmits due to transient SACK reneging |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`5ee2c941b596`](https://git.kernel.org/torvalds/c/5ee2c941b596) | [net] | tcp: Remove unnecessary arg from tcp_enter_cwr and tcp_init_cwnd_reduction |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`86c6a2c75ab9`](https://git.kernel.org/torvalds/c/86c6a2c75ab9) | [net] | tcp: switch snt_synack back to measuring transmit time of first SYNACK |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`4135ab820804`](https://git.kernel.org/torvalds/c/4135ab820804) | [net] | tcp: tcp_conn_request: fix build error when IPv6 is disabled |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`aa27fc501850`](https://git.kernel.org/torvalds/c/aa27fc501850) | [net] | tcp: tcp_v[46]_conn_request: fix snt_synack initialization |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`5db92c994982`](https://git.kernel.org/torvalds/c/5db92c994982) | [net] | tcp: unify tcp_v4_rtx_synack and tcp_v6_rtx_synack |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.17 | [`b8f1a55639e6`](https://git.kernel.org/torvalds/c/b8f1a55639e6) | [net] | udp: Add function to make source port for UDP tunnels |  | generic code, tag [net] | 3.10.0-211 |
| CANDIDATE | 3.17 | [`8024e02879dd`](https://git.kernel.org/torvalds/c/8024e02879dd) | [net] | udp: Add udp_sock_create for UDP tunnels to open listener socket |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.17 | [`155e010edbc1`](https://git.kernel.org/torvalds/c/155e010edbc1) | [net] | udp: Move udp_tunnel_segment into udp_offload.c |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.17 | [`5cf3d46192fc`](https://git.kernel.org/torvalds/c/5cf3d46192fc) | [net] | udp: Simplify __udp*_lib_mcast_deliver |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 3.17 | [`2dc41cff7545`](https://git.kernel.org/torvalds/c/2dc41cff7545) | [net] | udp: Use hash2 for long hash1 chains in __udp*_lib_mcast_deliver |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 3.17 | [`e59d82fd33f7`](https://git.kernel.org/torvalds/c/e59d82fd33f7) | [net] | vti6: Simplify error handling in module init and exit |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.17 | [`1990e4f883a6`](https://git.kernel.org/torvalds/c/1990e4f883a6) | [net] | vti: Simplify error handling in module init and exit |  | CONFIG_XFRM=y in A37 | 3.10.0-281 |
| CANDIDATE | 3.17 | [`1759389e8af4`](https://git.kernel.org/torvalds/c/1759389e8af4) | [net] | xfrm4: Remove duplicate semicolon |  | CONFIG_XFRM=y in A37 | 3.10.0-180 |
| CANDIDATE | 3.17 | [`f92ee61982d6`](https://git.kernel.org/torvalds/c/f92ee61982d6) | [net] | xfrm: Generate blackhole routes only from route lookup functions |  | CONFIG_XFRM=y in A37 | 3.10.0-312 |
| CANDIDATE | 3.17 | [`b8c203b2d2fc`](https://git.kernel.org/torvalds/c/b8c203b2d2fc) | [net] | xfrm: Generate queueing routes only from route lookup functions |  | CONFIG_XFRM=y in A37 | 3.10.0-312 |
| CANDIDATE | 3.18 | [`2e4e44107176`](https://git.kernel.org/torvalds/c/2e4e44107176) (loose) | [net] | add alloc_skb_with_frags() helper |  | generic code, tag [net] | 3.10.0-532 |
| CANDIDATE | 3.18 | [`1933a7852ce6`](https://git.kernel.org/torvalds/c/1933a7852ce6) (loose) | [net] | add gro_compute_pseudo functions |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.18 | [`04ffcb255f22`](https://git.kernel.org/torvalds/c/04ffcb255f22) (loose) | [net] | Add ndo_gso_check |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 3.18 | [`535114539bb2`](https://git.kernel.org/torvalds/c/535114539bb2) (loose) | [net] | add netdev_txq_bql_{enqueue, complete}_prefetchw() helpers |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 3.18 | [`4798248e4e02`](https://git.kernel.org/torvalds/c/4798248e4e02) (loose) | [net] | Add ops->ndo_xmit_flush() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`10c51b56232d`](https://git.kernel.org/torvalds/c/10c51b56232d) (loose) | [net] | add skb_get_tx_queue() helper |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`505e907db388`](https://git.kernel.org/torvalds/c/505e907db388) | [net] | af_unix: remove 0 assignment on static |  | CONFIG_UNIX=y in A37 | 3.10.0-271 |
| CANDIDATE | 3.18 | [`de20fe8e2cc3`](https://git.kernel.org/torvalds/c/de20fe8e2cc3) (loose) | [net] | Allocate a new 16 bits for flags in skbuff |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.18 | [`662880f44203`](https://git.kernel.org/torvalds/c/662880f44203) (loose) | [net] | Allow GRO to use and set levels of checksum unnecessary |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.18 | [`0287587884b1`](https://git.kernel.org/torvalds/c/0287587884b1) (loose) | [net] | better IFF_XMIT_DST_RELEASE support |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.18 | [`d41c15cf95bd`](https://git.kernel.org/torvalds/c/d41c15cf95bd) | [net] | bluetooth: Fix reason code used for rejecting SCO connections |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 3.18 | [`f89b7755f517`](https://git.kernel.org/torvalds/c/f89b7755f517) | [net] | bpf: split eBPF out of NET |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 3.18 | [`0932997e34ba`](https://git.kernel.org/torvalds/c/0932997e34ba) | [net] | br_multicast: Replace rcu_assign_pointer() with RCU_INIT_POINTER() |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | 3.18 | [`775dd692bd34`](https://git.kernel.org/torvalds/c/775dd692bd34) (loose) | [net] | bridge: add a br_set_state helper function |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.18 | [`96a20d9d7fff`](https://git.kernel.org/torvalds/c/96a20d9d7fff) | [net] | bridge: Add a default_pvid sysfs attribute |  | CONFIG_BRIDGE=y in A37 | 3.10.0-223 |
| CANDIDATE | 3.18 | [`5be5a2df40f0`](https://git.kernel.org/torvalds/c/5be5a2df40f0) | [net] | bridge: Add filtering support for default_pvid |  | CONFIG_BRIDGE=y in A37 | 3.10.0-223 |
| CANDIDATE | 3.18 | [`6f705d8cfc0a`](https://git.kernel.org/torvalds/c/6f705d8cfc0a) | [net] | bridge: Add missing policy entry for IFLA_BRPORT_FAST_LEAVE |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.18 | [`7677e86843e2`](https://git.kernel.org/torvalds/c/7677e86843e2) | [net] | bridge: Do not compile options in br_parse_ip_options |  | CONFIG_BRIDGE=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.18 | [`f0b4eeced518`](https://git.kernel.org/torvalds/c/f0b4eeced518) | [net] | bridge: fix netfilter/NF_BR_LOCAL_OUT for own, locally generated queries |  | CONFIG_BRIDGE=y in A37 | 3.10.0-284 |
| CANDIDATE | 3.18 | [`133235161721`](https://git.kernel.org/torvalds/c/133235161721) | [net] | bridge: implement rtnl_link_ops->changelink |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.18 | [`e5c3ea5c6680`](https://git.kernel.org/torvalds/c/e5c3ea5c6680) | [net] | bridge: implement rtnl_link_ops->get_size and rtnl_link_ops->fill_info |  | CONFIG_BRIDGE=y in A37 | 3.10.0-345 |
| CANDIDATE | 3.18 | [`ced8283f90b8`](https://git.kernel.org/torvalds/c/ced8283f90b8) | [net] | bridge: implement rtnl_link_ops->get_slave_size and rtnl_link_ops->fill_slave_info |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.18 | [`3ac636b8591c`](https://git.kernel.org/torvalds/c/3ac636b8591c) | [net] | bridge: implement rtnl_link_ops->slave_changelink |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.18 | [`66f1c44887ba`](https://git.kernel.org/torvalds/c/66f1c44887ba) | [net] | bridge: include in6.h in if_bridge.h for struct in6_addr |  | CONFIG_BRIDGE=y in A37 | 3.10.0-345 |
| CANDIDATE | 3.18 | [`93fdd47e52f3`](https://git.kernel.org/torvalds/c/93fdd47e52f3) | [net] | bridge: Save frag_max_size between PRE_ROUTING and POST_ROUTING |  | CONFIG_BRIDGE=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.18 | [`3df6bf45ec00`](https://git.kernel.org/torvalds/c/3df6bf45ec00) | [net] | bridge: Simplify pvid checks |  | CONFIG_BRIDGE=y in A37 | 3.10.0-223 |
| CANDIDATE | 3.18 | [`0f49579a3953`](https://git.kernel.org/torvalds/c/0f49579a3953) | [net] | bridge: switch order of rx_handler reg and upper dev link |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.18 | [`77cffe23c1f8`](https://git.kernel.org/torvalds/c/77cffe23c1f8) (loose) | [net] | Clarification of CHECKSUM_UNNECESSARY |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.18 | [`d0bf4a9e92b9`](https://git.kernel.org/torvalds/c/d0bf4a9e92b9) (loose) | [net] | cleanup and document skb fclone layout |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`8f4eb70059ee`](https://git.kernel.org/torvalds/c/8f4eb70059ee) | [net] | cnic: Update the rcu_access_pointer() usages |  | generic code, tag [net] | 3.10.0-259 |
| CANDIDATE | 3.18 | [`2ea255137555`](https://git.kernel.org/torvalds/c/2ea255137555) (loose) | [net] | Create xmit_one() helper for dev_hard_start_xmit() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`709c48b39ecf`](https://git.kernel.org/torvalds/c/709c48b39ecf) (loose) | [net] | description of dma_cookie cause make xmldocs warning |  | generic code, tag [net] | 3.10.0-223 |
| CANDIDATE | 3.18 | [`01291202ed4a`](https://git.kernel.org/torvalds/c/01291202ed4a) (loose) | [net] | do not export skb_gro_receive() |  | generic code, tag [net] | 3.10.0-461 |
| CANDIDATE | 3.18 | [`10b3ad8c21bb`](https://git.kernel.org/torvalds/c/10b3ad8c21bb) (loose) | [net] | Do txq_trans_update() in netdev_start_xmit() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`ce93718fb7cd`](https://git.kernel.org/torvalds/c/ce93718fb7cd) (loose) | [net] | Don't keep around original SKB when we software segment GSO frames |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`34a419d4e20d`](https://git.kernel.org/torvalds/c/34a419d4e20d) | [net] | ematch: Fix early ending of inverted containers. |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.18 | [`f0db9b073415`](https://git.kernel.org/torvalds/c/f0db9b073415) | [net] | ethtool: Add generic options for tunables |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.18 | [`1255a5055449`](https://git.kernel.org/torvalds/c/1255a5055449) | [net] | ethtool: Ethtool parameter to dynamically change tx_copybreak |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.18 | [`e0fb6fb6d526`](https://git.kernel.org/torvalds/c/e0fb6fb6d526) (loose) | [net] | ethtool: Return -EOPNOTSUPP if user space tries to read EEPROM with lengh 0 |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.18 | [`ce3e02867ed8`](https://git.kernel.org/torvalds/c/ce3e02867ed8) (loose) | [net] | Export inet_offloads and inet6_offloads |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`6451b3f59ab3`](https://git.kernel.org/torvalds/c/6451b3f59ab3) (loose) | [net] | fix comments for __skb_flow_get_ports() |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 3.18 | [`afe93325bc02`](https://git.kernel.org/torvalds/c/afe93325bc02) | [net] | fou: Add GRO support |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`23461551c006`](https://git.kernel.org/torvalds/c/23461551c006) | [net] | fou: Support for foo-over-udp RX path |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`1e16aa3ddf86`](https://git.kernel.org/torvalds/c/1e16aa3ddf86) (loose) | [net] | gso: use feature flag argument in all protocol gso handlers |  | generic code, tag [net] | 3.10.0-204 |
| CANDIDATE | 3.18 | [`37dd0247797b`](https://git.kernel.org/torvalds/c/37dd0247797b) | [net] | gue: Receive side for Generic UDP Encapsulation |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`f993bc25e519`](https://git.kernel.org/torvalds/c/f993bc25e519) (loose) | [net] | handle encapsulation offloads when computing segment lengths |  | generic code, tag [net] | 3.10.0-204 |
| CANDIDATE | 3.18 | [`95f6b3dda2a4`](https://git.kernel.org/torvalds/c/95f6b3dda2a4) (loose) | [net] | Have xmit_list() signal more==true when appropriate |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`4cdf507d5452`](https://git.kernel.org/torvalds/c/4cdf507d5452) | [net] | icmp: add a global rate limitation |  | generic code, tag [net] | 3.10.0-647 |
| CANDIDATE | 3.18 | [`d96535a17dbb`](https://git.kernel.org/torvalds/c/d96535a17dbb) (loose) | [net] | Infrastructure for checksum unnecessary conversions |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.18 | [`f4a775d14489`](https://git.kernel.org/torvalds/c/f4a775d14489) (loose) | [net] | introduce __skb_header_release() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`f3750817a903`](https://git.kernel.org/torvalds/c/f3750817a903) | [net] | ip6_udp_tunnel: Fix checksum calculation |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`7371e0221c77`](https://git.kernel.org/torvalds/c/7371e0221c77) | [net] | ip_tunnel: Account for secondary encapsulation header in max_headroom |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`bc1fc390e172`](https://git.kernel.org/torvalds/c/bc1fc390e172) | [net] | ip_tunnel: Add GUE support |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`20ea60ca9952`](https://git.kernel.org/torvalds/c/20ea60ca9952) | [net] | ip_tunnel: the lack of vti_link_ops' dellink() cause kernel panic |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.18 | [`fa19c2b050ab`](https://git.kernel.org/torvalds/c/fa19c2b050ab) | [net] | ipv4: Do not cache routing failures due to disabled forwarding |  | generic code, tag [net] | 3.10.0-867 |
| CANDIDATE | 3.18 | [`b4e3cef703fb`](https://git.kernel.org/torvalds/c/b4e3cef703fb) | [net] | ipv4: fix a potential use after free in gre_offload.c |  | generic code, tag [net] | 3.10.0-204 |
| CANDIDATE | 3.18 | [`1245dfc8cadb`](https://git.kernel.org/torvalds/c/1245dfc8cadb) | [net] | ipv4: fix a potential use after free in ip_tunnel_core.c |  | generic code, tag [net] | 3.10.0-204 |
| CANDIDATE | 3.18 | [`caa415270c73`](https://git.kernel.org/torvalds/c/caa415270c73) | [net] | ipv4: fix a race in update_or_create_fnhe() |  | generic code, tag [net] | 3.10.0-193 |
| CANDIDATE | 3.18 | [`d546c621542d`](https://git.kernel.org/torvalds/c/d546c621542d) | [net] | ipv4: harden fnhe_hashfun() |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 3.18 | [`a9fe8e29945d`](https://git.kernel.org/torvalds/c/a9fe8e29945d) | [net] | ipv4: implement igmp_qrv sysctl to tune igmp robustness variable |  | generic code, tag [net] | 3.10.0-158 |
| CANDIDATE | 3.18 | [`24a2d43d8886`](https://git.kernel.org/torvalds/c/24a2d43d8886) | [net] | ipv4: rename ip_options_echo to __ip_options_echo() |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.18 | [`72bb17b37b90`](https://git.kernel.org/torvalds/c/72bb17b37b90) | [net] | ipv4: udp4_gro_complete() is static |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`2f711939d2ea`](https://git.kernel.org/torvalds/c/2f711939d2ea) | [net] | ipv6: add sysctl_mld_qrv to configure query robustness variable |  | generic code, tag [net] | 3.10.0-158 |
| CANDIDATE | 3.18 | [`03d56daafe9d`](https://git.kernel.org/torvalds/c/03d56daafe9d) | [net] | ipv6: Clear flush_id to make GRO work |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 3.18 | [`b6fef4c6b8c1`](https://git.kernel.org/torvalds/c/b6fef4c6b8c1) | [net] | ipv6: Do not treat a GSO_TCPV4 request from UDP tunnel over IPv6 as invalid |  | generic code, tag [net] | 3.10.0-215 |
| CANDIDATE | 3.18 | [`b5350916bfd4`](https://git.kernel.org/torvalds/c/b5350916bfd4) | [net] | ipv6: drop ipv6_sk_mc_lock in mcast |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`414b6c943fe2`](https://git.kernel.org/torvalds/c/414b6c943fe2) | [net] | ipv6: drop some rcu_read_lock in mcast |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`6c555490e0ce`](https://git.kernel.org/torvalds/c/6c555490e0ce) | [net] | ipv6: drop useless rcu_read_lock() in anycast |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`fc6fb41cd64f`](https://git.kernel.org/torvalds/c/fc6fb41cd64f) | [net] | ipv6: fix a potential use after free in ip6_offload.c |  | generic code, tag [net] | 3.10.0-889 |
| CANDIDATE | 3.18 | [`5337b5b75cd9`](https://git.kernel.org/torvalds/c/5337b5b75cd9) | [net] | ipv6: fix IPV6_PKTINFO with v4 mapped |  | generic code, tag [net] | 3.10.0-915 |
| CANDIDATE | 3.18 | [`94b2cfe02bfe`](https://git.kernel.org/torvalds/c/94b2cfe02bfe) | [net] | ipv6: minor fib6 cleanups like type safety, bool conversion, inline removal |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 3.18 | [`35f7aa5309c0`](https://git.kernel.org/torvalds/c/35f7aa5309c0) | [net] | ipv6: mld: answer mldv2 queries with mldv1 reports in mldv1 fallback |  | generic code, tag [net] | 3.10.0-189 |
| CANDIDATE | 3.18 | [`feb91a02ccb0`](https://git.kernel.org/torvalds/c/feb91a02ccb0) | [net] | ipv6: mld: fix add_grhead skb_over_panic for devs with large MTUs |  | generic code, tag [net] | 3.10.0-236 |
| CANDIDATE | 3.18 | [`1691c63ea42d`](https://git.kernel.org/torvalds/c/1691c63ea42d) | [net] | ipv6: refactor ipv6_dev_mc_inc() |  | generic code, tag [net] | 3.10.0-930 |
| CANDIDATE | 3.18 | [`b03a9c04a3a6`](https://git.kernel.org/torvalds/c/b03a9c04a3a6) | [net] | ipv6: remove ipv6_sk_ac_lock |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`cecda693a969`](https://git.kernel.org/torvalds/c/cecda693a969) (loose) | [net] | keep original skb which only needs header checking during software GSO |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 3.18 | [`72297c59f718`](https://git.kernel.org/torvalds/c/72297c59f718) | [net] | l2tp: Enable checksum unnecessary conversions for l2tp/UDP sockets |  | CONFIG_L2TP=y in A37 | 3.10.0-180 |
| CANDIDATE | 3.18 | [`82eabd9eb2ec`](https://git.kernel.org/torvalds/c/82eabd9eb2ec) (loose) | [net] | merge cases where sock_efree and sock_edemux are the same function |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 3.18 | [`7f2e870f2a48`](https://git.kernel.org/torvalds/c/7f2e870f2a48) (loose) | [net] | Move main gso loop out of dev_hard_start_xmit() into helper |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`d27f9bc10437`](https://git.kernel.org/torvalds/c/d27f9bc10437) | [net] | net_dma: revert 'copied_early' |  | generic code, tag [net] | 3.10.0-223 |
| CANDIDATE | 3.18 | [`b8358d70ce10`](https://git.kernel.org/torvalds/c/b8358d70ce10) | [net] | net_sched: restore qdisc quota fairness limits after bulk dequeue |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.18 | [`17448e5f63c8`](https://git.kernel.org/torvalds/c/17448e5f63c8) | [net] | net_sched: sfq: remove unused macro |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.18 | [`57f5877c11b2`](https://git.kernel.org/torvalds/c/57f5877c11b2) | [net] | netfilter: bridge: build br_nf_core only if required |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.18 | [`34666d467cbf`](https://git.kernel.org/torvalds/c/34666d467cbf) | [net] | netfilter: bridge: move br_netfilter out of the core |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.18 | [`7276ca3fa238`](https://git.kernel.org/torvalds/c/7276ca3fa238) | [net] | netfilter: bridge: nf_bridge_copy_header as static inline in header |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.18 | [`b167a37c7bbc`](https://git.kernel.org/torvalds/c/b167a37c7bbc) | [net] | netfilter: Convert pr_warning to pr_warn |  | CONFIG_NETFILTER=y in A37 | 3.10.0-894 |
| CANDIDATE | 3.18 | [`c55fbbb4a730`](https://git.kernel.org/torvalds/c/c55fbbb4a730) | [net] | netfilter: ebtables: create audit records for replaces |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.18 | [`4b7fd5d97ee6`](https://git.kernel.org/torvalds/c/4b7fd5d97ee6) | [net] | netfilter: explicit module dependency between br_netfilter and physdev |  | CONFIG_NETFILTER=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.18 | [`f0d1f04f0a2f`](https://git.kernel.org/torvalds/c/f0d1f04f0a2f) | [net] | netfilter: fix wrong arithmetics regarding NFT_REJECT_ICMPX_MAX |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 3.18 | [`91c1a09b33c9`](https://git.kernel.org/torvalds/c/91c1a09b33c9) | [net] | netfilter: kill nf_send_reset6() from include/net/netfilter/ipv6/nf_reject.h |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 3.18 | [`0bbe80e571c7`](https://git.kernel.org/torvalds/c/0bbe80e571c7) | [net] | netfilter: masquerading needs to be independent of x_tables in Kconfig |  | CONFIG_NETFILTER=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.18 | [`ab2d7251d666`](https://git.kernel.org/torvalds/c/ab2d7251d666) | [net] | netfilter: missing module license in the nf_reject_ipvX modules |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 3.18 | [`c8d7b98bec43`](https://git.kernel.org/torvalds/c/c8d7b98bec43) | [net] | netfilter: move nf_send_resetX() code to nf_reject_ipvX modules |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 3.18 | [`30766f4c2d60`](https://git.kernel.org/torvalds/c/30766f4c2d60) | [net] | netfilter: nat: move specific NAT IPv4 to core |  | CONFIG_NF_NAT=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.18 | [`2a5538e9aa49`](https://git.kernel.org/torvalds/c/2a5538e9aa49) | [net] | netfilter: nat: move specific NAT IPv6 to core |  | CONFIG_NF_NAT=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.18 | [`8dd33cc93ec9`](https://git.kernel.org/torvalds/c/8dd33cc93ec9) | [net] | netfilter: nf_nat: generalize IPv4 masquerading support for nf_tables |  | CONFIG_NF_NAT=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.18 | [`be6b635cd674`](https://git.kernel.org/torvalds/c/be6b635cd674) | [net] | netfilter: nf_nat: generalize IPv6 masquerading support for nf_tables |  | CONFIG_NF_NAT=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.18 | [`052b9498eea5`](https://git.kernel.org/torvalds/c/052b9498eea5) | [net] | netfilter: nf_reject_ipv4: split nf_send_reset() in smaller functions |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 3.18 | [`8bfcdf6671b1`](https://git.kernel.org/torvalds/c/8bfcdf6671b1) | [net] | netfilter: nf_reject_ipv6: split nf_send_reset6() in smaller functions |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 3.18 | [`97840cb67ff5`](https://git.kernel.org/torvalds/c/97840cb67ff5) | [net] | netfilter: nfnetlink: fix insufficient validation in nfnetlink_bind |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1040 |
| CANDIDATE | 3.18 | [`fc04733a1a71`](https://git.kernel.org/torvalds/c/fc04733a1a71) | [net] | netfilter: nfnetlink: use original skbuff when committing/aborting |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 3.18 | [`3e8dc212a0e6`](https://git.kernel.org/torvalds/c/3e8dc212a0e6) | [net] | netfilter: NFT_CHAIN_NAT_IPV* is independent of NFT_NAT |  | CONFIG_NETFILTER=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.18 | [`1109a90c0117`](https://git.kernel.org/torvalds/c/1109a90c0117) | [net] | netfilter: use IS_ENABLED(CONFIG_BRIDGE_NETFILTER) |  | CONFIG_NETFILTER=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.18 | [`c435201bede7`](https://git.kernel.org/torvalds/c/c435201bede7) | [net] | netfilter: xt_string: Remove unnecessary initialization of struct ts_state |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.18 | [`6251edd932ce`](https://git.kernel.org/torvalds/c/6251edd932ce) | [net] | netlink: Properly unbind in error conditions |  | generic code, tag [net] | 3.10.0-368 |
| CANDIDATE | 3.18 | [`78fd1d0ab072`](https://git.kernel.org/torvalds/c/78fd1d0ab072) | [net] | netlink: Re-add locking to netlink_lookup() and seq walker |  | generic code, tag [net] | 3.10.0-211 |
| CANDIDATE | 3.18 | [`416c51e17b8b`](https://git.kernel.org/torvalds/c/416c51e17b8b) | [net] | netns: remove one sparse warning |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`fa2dbdc253c2`](https://git.kernel.org/torvalds/c/fa2dbdc253c2) (loose) | [net] | Pass a "more" indication down into netdev_start_xmit() code paths |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`10770bc2d170`](https://git.kernel.org/torvalds/c/10770bc2d170) | [net] | qdisc: adjustments for API allowing skb list xmits |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`5772e9a3463b`](https://git.kernel.org/torvalds/c/5772e9a3463b) | [net] | qdisc: bulk dequeue support for qdiscs with TCQ_F_ONETXQUEUE |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`808e7ac0bdef`](https://git.kernel.org/torvalds/c/808e7ac0bdef) | [net] | qdisc: dequeue bulking also pickup GSO/TSO packets |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`3f3c7eec60ad`](https://git.kernel.org/torvalds/c/3f3c7eec60ad) | [net] | qdisc: exit case fixes for skb list handling in qdisc layer |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`1f59533f9ca5`](https://git.kernel.org/torvalds/c/1f59533f9ca5) | [net] | qdisc: validate frames going through the direct_xmit path |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`55a93b3ea780`](https://git.kernel.org/torvalds/c/55a93b3ea780) | [net] | qdisc: validate skb without holding lock |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 3.18 | [`53e50398968d`](https://git.kernel.org/torvalds/c/53e50398968d) (loose) | [net] | Remove gso_send_check as an offload callback |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`0b725a2ca61b`](https://git.kernel.org/torvalds/c/0b725a2ca61b) (loose) | [net] | Remove ndo_xmit_flush netdev operation, use signalling instead |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`903ceff7ca7b`](https://git.kernel.org/torvalds/c/903ceff7ca7b) (loose) | [net] | Replace get_cpu_var through this_cpu_ptr |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 3.18 | [`70da9f0bf999`](https://git.kernel.org/torvalds/c/70da9f0bf999) (loose) | [net] | sched: cls_flow use RCU |  | CONFIG_NET_CLS_FLOW=y in A37 | 3.10.0-607 |
| CANDIDATE | 3.18 | [`e1f93eb06c3a`](https://git.kernel.org/torvalds/c/e1f93eb06c3a) (loose) | [net] | sched: cls_fw: add missing tcf_exts_init call in fw_change() |  | CONFIG_NET_CLS_FW=y in A37 | 3.10.0-607 |
| CANDIDATE | 3.18 | [`de5df63228fc`](https://git.kernel.org/torvalds/c/de5df63228fc) (loose) | [net] | sched: cls_u32 changes to knode must appear atomic to readers |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-628 |
| CANDIDATE | 3.18 | [`4e2840eee6b2`](https://git.kernel.org/torvalds/c/4e2840eee6b2) (loose) | [net] | sched: cls_u32: rcu can not be last node |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.18 | [`18cdb37ebf4c`](https://git.kernel.org/torvalds/c/18cdb37ebf4c) (loose) | [net] | sched: do not use tcf_proto 'tp' argument from call_rcu |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 3.18 | [`b0ab6f92752b`](https://git.kernel.org/torvalds/c/b0ab6f92752b) (loose) | [net] | sched: enable per cpu qstats |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 3.18 | [`a2aeb02a8e6a`](https://git.kernel.org/torvalds/c/a2aeb02a8e6a) (loose) | [net] | sched: fix compile warning in cls_u32 |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.18 | [`e35a8ee5993b`](https://git.kernel.org/torvalds/c/e35a8ee5993b) (loose) | [net] | sched: fw use RCU |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | 3.18 | [`25331d6ce42b`](https://git.kernel.org/torvalds/c/25331d6ce42b) (loose) | [net] | sched: implement qstat helper routines |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.18 | [`7c1c97d54f9b`](https://git.kernel.org/torvalds/c/7c1c97d54f9b) (loose) | [net] | sched: initialize bstats syncp |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 3.18 | [`22e0f8b9322c`](https://git.kernel.org/torvalds/c/22e0f8b9322c) (loose) | [net] | sched: make bstats per cpu and estimator RCU safe |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 3.18 | [`1ce87720d456`](https://git.kernel.org/torvalds/c/1ce87720d456) (loose) | [net] | sched: make cls_u32 lockless |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | 3.18 | [`459d5f626da7`](https://git.kernel.org/torvalds/c/459d5f626da7) (loose) | [net] | sched: make cls_u32 per cpu |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | 3.18 | [`1109c00547fc`](https://git.kernel.org/torvalds/c/1109c00547fc) (loose) | [net] | sched: RCU cls_route |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | 3.18 | [`331b72922c5f`](https://git.kernel.org/torvalds/c/331b72922c5f) (loose) | [net] | sched: RCU cls_tcindex |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | 3.18 | [`1f947bf151e9`](https://git.kernel.org/torvalds/c/1f947bf151e9) (loose) | [net] | sched: rcu'ify cls_bpf |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | 3.18 | [`b929d86d2535`](https://git.kernel.org/torvalds/c/b929d86d2535) (loose) | [net] | sched: rcu'ify cls_rsvp |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | 3.18 | [`82a470f1119e`](https://git.kernel.org/torvalds/c/82a470f1119e) (loose) | [net] | sched: remove tcf_proto from ematch calls |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 3.18 | [`640158536632`](https://git.kernel.org/torvalds/c/640158536632) (loose) | [net] | sched: restrict use of qstats qlen |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 3.18 | [`1e203c1a2c10`](https://git.kernel.org/torvalds/c/1e203c1a2c10) (loose) | [net] | sched: suspicious RCU usage in qdisc_watchdog |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | 3.18 | [`ab34f6480806`](https://git.kernel.org/torvalds/c/ab34f6480806) (loose) | [net] | sched: use __skb_queue_head_init() where applicable |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.18 | [`4a8e320c9299`](https://git.kernel.org/torvalds/c/4a8e320c9299) (loose) | [net] | sched: use pinned timers |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-271 |
| CANDIDATE | 3.18 | [`eae3f88ee442`](https://git.kernel.org/torvalds/c/eae3f88ee442) (loose) | [net] | Separate out SKB validation logic from transmit path |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`469471cdfc19`](https://git.kernel.org/torvalds/c/469471cdfc19) | [net] | sit: Set inner IP protocol in sit |  | CONFIG_IPV6_SIT=y in A37 | 3.10.0-260 |
| CANDIDATE | 3.18 | [`14909664e4e1`](https://git.kernel.org/torvalds/c/14909664e4e1) | [net] | sit: Setup and TX path for sit/UDP foo-over-udp encapsulation |  | CONFIG_IPV6_SIT=y in A37 | 3.10.0-433 |
| CANDIDATE | 3.18 | [`ebe084aafb7e`](https://git.kernel.org/torvalds/c/ebe084aafb7e) | [net] | sit: Use ipip6_tunnel_init as the ndo_init function. |  | CONFIG_IPV6_SIT=y in A37 | 3.10.0-440 |
| CANDIDATE | 3.18 | [`39bb5e62867d`](https://git.kernel.org/torvalds/c/39bb5e62867d) (loose) | [net] | skb_fclone_busy() needs to detect orphaned skb |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`573e8fca255a`](https://git.kernel.org/torvalds/c/573e8fca255a) (loose) | [net] | skb_gro_checksum_* functions |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.18 | [`bec3cfdca36b`](https://git.kernel.org/torvalds/c/bec3cfdca36b) (loose) | [net] | skb_segment() provides list head and tail |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 3.18 | [`5a21232983aa`](https://git.kernel.org/torvalds/c/5a21232983aa) (loose) | [net] | Support for csum_bad in skbuff |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.18 | [`b248230c3497`](https://git.kernel.org/torvalds/c/b248230c3497) | [net] | tcp: abort orphan sockets stalling on zero window probes |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`bd1e75abf4b3`](https://git.kernel.org/torvalds/c/bd1e75abf4b3) | [net] | tcp: add coalescing attempt in tcp_ofo_queue() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`e3118e8359bb`](https://git.kernel.org/torvalds/c/e3118e8359bb) (loose) | [net] | tcp: add DCTCP congestion control algorithm |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`30e502a34b8b`](https://git.kernel.org/torvalds/c/30e502a34b8b) (loose) | [net] | tcp: add flag for ca to indicate that ECN is required |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`e93a0435f809`](https://git.kernel.org/torvalds/c/e93a0435f809) | [net] | tcp: allow segment with FIN in tcp_try_coalesce() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`55d8694fa82c`](https://git.kernel.org/torvalds/c/55d8694fa82c) (loose) | [net] | tcp: assign tcp cong_ops when tcp sk is created |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`fcdd1cf4dd63`](https://git.kernel.org/torvalds/c/fcdd1cf4dd63) | [net] | tcp: avoid possible arithmetic overflows |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`149d0774a729`](https://git.kernel.org/torvalds/c/149d0774a729) | [net] | tcp: Call skb_gro_checksum_validate |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.18 | [`b3d6cb92fd19`](https://git.kernel.org/torvalds/c/b3d6cb92fd19) | [net] | tcp: do not copy headers in tcp_collapse() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`cb93471acc42`](https://git.kernel.org/torvalds/c/cb93471acc42) | [net] | tcp: do not fake tcp headers in tcp_send_rcvq() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`c3658e8d0f10`](https://git.kernel.org/torvalds/c/c3658e8d0f10) | [net] | tcp: fix possible NULL dereference in tcp_vX_send_reset() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`989e04c5bc3f`](https://git.kernel.org/torvalds/c/989e04c5bc3f) | [net] | tcp: improve undo on timeout |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`04317dafd11d`](https://git.kernel.org/torvalds/c/04317dafd11d) | [net] | tcp: introduce TCP_SKB_CB(skb)->tcp_tw_isn |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`349ce993ac70`](https://git.kernel.org/torvalds/c/349ce993ac70) | [net] | tcp: md5: do not use alloc_percpu() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`9890092e46b2`](https://git.kernel.org/torvalds/c/9890092e46b2) (loose) | [net] | tcp: more detailed ACK events and events for CE marked packets |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`d020f8f73318`](https://git.kernel.org/torvalds/c/d020f8f73318) | [net] | tcp: move logic out of tcp_v[64]_gso_send_check |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`d82bd1229885`](https://git.kernel.org/torvalds/c/d82bd1229885) | [net] | tcp: move TCP_ECN_create_request out of header |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 3.18 | [`ca777eff51f7`](https://git.kernel.org/torvalds/c/ca777eff51f7) | [net] | tcp: remove dst refcount false sharing for prequeue mode |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`87d943085b76`](https://git.kernel.org/torvalds/c/87d943085b76) | [net] | tcp: remove obsolete comment about TCP_SKB_CB(skb)->when in tcp_fragment() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`7faee5c0d514`](https://git.kernel.org/torvalds/c/7faee5c0d514) | [net] | tcp: remove TCP_SKB_CB(skb)->when |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`0c228e833c88`](https://git.kernel.org/torvalds/c/0c228e833c88) | [net] | tcp: Restore RFC5961-compliant behavior for SYN packets |  | generic code, tag [net] | 3.10.0-265 |
| CANDIDATE | 3.18 | [`7354c8c389d1`](https://git.kernel.org/torvalds/c/7354c8c389d1) (loose) | [net] | tcp: split ack slow/fast events from cwnd_event |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`155c6e1ad4a7`](https://git.kernel.org/torvalds/c/155c6e1ad4a7) | [net] | tcp: use tcp_flags in tcp_data_queue() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`e11ecddf5128`](https://git.kernel.org/torvalds/c/e11ecddf5128) | [net] | tcp: use TCP_SKB_CB(skb)->tcp_flags in input path |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`688d1945bc89`](https://git.kernel.org/torvalds/c/688d1945bc89) | [net] | tcp: whitespace fixes |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`1f37bf87aa75`](https://git.kernel.org/torvalds/c/1f37bf87aa75) | [net] | tcp: zero retrans_stamp if all retrans were acked |  | generic code, tag [net] | 3.10.0-211 |
| CANDIDATE | 3.18 | [`e53da5fbfc02`](https://git.kernel.org/torvalds/c/e53da5fbfc02) (loose) | [net] | Trap attempts to call sock_kfree_s() with a NULL pointer |  | generic code, tag [net] | 3.10.0-875 |
| CANDIDATE | 3.18 | [`a63ba13eec09`](https://git.kernel.org/torvalds/c/a63ba13eec09) (loose) | [net] | tso: fix unaligned access to crafted TCP header in helper API |  | generic code, tag [net] | 3.10.0-444 |
| CANDIDATE | 3.18 | [`2abb7cdc0dc8`](https://git.kernel.org/torvalds/c/2abb7cdc0dc8) | [net] | udp: Add support for doing checksum unnecessary conversion |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.18 | [`57c67ff4bd92`](https://git.kernel.org/torvalds/c/57c67ff4bd92) | [net] | udp: additional GRO support |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.18 | [`2d8f7e2c8a63`](https://git.kernel.org/torvalds/c/2d8f7e2c8a63) | [net] | udp: Fix inverted NAPI_GRO_CB(skb)->flush test |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | 3.18 | [`8bce6d7d0d1e`](https://git.kernel.org/torvalds/c/8bce6d7d0d1e) | [net] | udp: Generalize skb_udp_segment |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`f71470b37e79`](https://git.kernel.org/torvalds/c/f71470b37e79) | [net] | udp: move logic out of udp[46]_ufo_send_check |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`3fcb95a84fdb`](https://git.kernel.org/torvalds/c/3fcb95a84fdb) | [net] | udp: Need to make ip6_udp_tunnel.c have GPL license |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`6d967f878924`](https://git.kernel.org/torvalds/c/6d967f878924) | [net] | udp_tunnel: Only build ip6_udp_tunnel.c when IPV6 is selected |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | 3.18 | [`fd384412e199`](https://git.kernel.org/torvalds/c/fd384412e199) | [net] | udp_tunnel: Seperate ipv6 functions into its own file. |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.18 | [`d2de875c6d4c`](https://git.kernel.org/torvalds/c/d2de875c6d4c) (loose) | [net] | use ktime_get_ns() and ktime_get_real_ns() helpers |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | 3.18 | [`8fc54f689192`](https://git.kernel.org/torvalds/c/8fc54f689192) (loose) | [net] | use reciprocal_scale() helper |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.18 | [`50cbe9ab5f8d`](https://git.kernel.org/torvalds/c/50cbe9ab5f8d) (loose) | [net] | Validate xmit SKBs right when we pull them out of the qdisc |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.18 | [`16a0231bf7dc`](https://git.kernel.org/torvalds/c/16a0231bf7dc) | [net] | vti6: Use vti6_dev_init as the ndo_init function |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.18 | [`880a6fab8f6b`](https://git.kernel.org/torvalds/c/880a6fab8f6b) | [net] | xfrm: configure policy hash table thresholds by netlink |  | CONFIG_XFRM=y in A37 | 3.10.0-345 |
| CANDIDATE | 3.18 | [`b58555f1767c`](https://git.kernel.org/torvalds/c/b58555f1767c) | [net] | xfrm: hash prefixed policies based on preflen thresholds |  | CONFIG_XFRM=y in A37 | 3.10.0-345 |
| CANDIDATE | 3.18 | [`8dcda22a5d0a`](https://git.kernel.org/torvalds/c/8dcda22a5d0a) (loose) | [net] | xmit_list() becomes dev_hard_start_xmit() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.19 | [`51f3d02b980a`](https://git.kernel.org/torvalds/c/51f3d02b980a) (loose) | [net] | Add and use skb_copy_datagram_msg() helper |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | 3.19 | [`71dfda58aaaf`](https://git.kernel.org/torvalds/c/71dfda58aaaf) (loose) | [net] | Add device Rx page allocation function |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 3.19 | [`9c0c112422a2`](https://git.kernel.org/torvalds/c/9c0c112422a2) (loose) | [net] | Add functions for handling padding frame and adding to length |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 3.19 | [`56b174256b69`](https://git.kernel.org/torvalds/c/56b174256b69) (loose) | [net] | add rbnode to struct sk_buff |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.19 | [`7c967b224a9a`](https://git.kernel.org/torvalds/c/7c967b224a9a) (loose) | [net] | Add remcsum_adjust as common function for remote checksum offload |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.19 | [`6bd373ebbac4`](https://git.kernel.org/torvalds/c/6bd373ebbac4) (loose) | [net] | Always poll at least one device in net_rx_action |  | generic code, tag [net] | 3.10.0-407 |
| CANDIDATE | 3.19 | [`cf6b8e1eedff`](https://git.kernel.org/torvalds/c/cf6b8e1eedff) | [net] | bridge: add API to notify bridge driver of learned FBD on offloaded device |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.19 | [`2c3c031c8f89`](https://git.kernel.org/torvalds/c/2c3c031c8f89) | [net] | bridge: add brport flags to dflt bridge_getlink |  | CONFIG_BRIDGE=y in A37 | 3.10.0-302 |
| CANDIDATE | 3.19 | [`efacacdaf7cb`](https://git.kernel.org/torvalds/c/efacacdaf7cb) | [net] | bridge: add new brport flag LEARNING_SYNC |  | CONFIG_BRIDGE=y in A37 | 3.10.0-302 |
| CANDIDATE | 3.19 | [`345cd494a324`](https://git.kernel.org/torvalds/c/345cd494a324) | [net] | bridge: add new hwmode swdev |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.19 | [`958501163ddd`](https://git.kernel.org/torvalds/c/958501163ddd) | [net] | bridge: Add support for IEEE 802.11 Proxy ARP |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.19 | [`38dcf357aed2`](https://git.kernel.org/torvalds/c/38dcf357aed2) | [net] | bridge: call netdev_sw_port_stp_update when bridge port STP status changes |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.19 | [`93859b13fa7e`](https://git.kernel.org/torvalds/c/93859b13fa7e) | [net] | bridge: convert flags in fbd entry into bitfields |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.19 | [`065c212a9e25`](https://git.kernel.org/torvalds/c/065c212a9e25) | [net] | bridge: move private brport flags to if_bridge.h so port drivers can use flags |  | CONFIG_BRIDGE=y in A37 | 3.10.0-302 |
| CANDIDATE | 3.19 | [`fc0bdbbc67c9`](https://git.kernel.org/torvalds/c/fc0bdbbc67c9) | [net] | bridge: new mode flag to indicate mode 'undefined' |  | CONFIG_BRIDGE=y in A37 | 3.10.0-302 |
| CANDIDATE | 3.19 | [`d92cfdbbeaef`](https://git.kernel.org/torvalds/c/d92cfdbbeaef) | [net] | bridge: only provide proxy ARP when CONFIG_INET is enabled |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 3.19 | [`4a5fdfe8b366`](https://git.kernel.org/torvalds/c/4a5fdfe8b366) | [net] | bridge: remove mode BRIDGE_MODE_SWDEV |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.19 | [`020ec6ba2a0c`](https://git.kernel.org/torvalds/c/020ec6ba2a0c) | [net] | bridge: rename fdb_*_hw to fdb_*_hw_addr to avoid confusion |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 3.19 | [`70dcec5a488a`](https://git.kernel.org/torvalds/c/70dcec5a488a) | [wireless] | cfg80211: don't WARN about two consecutive Country IE hint |  | CONFIG_CFG80211=y in A37 | 3.10.0-217 |
| CANDIDATE | 3.19 | [`d4bcef3fbe88`](https://git.kernel.org/torvalds/c/d4bcef3fbe88) (loose) | [net] | core: Fix vlan_get_protocol for stacked vlan |  | generic code, tag [net] | 3.10.0-305 |
| CANDIDATE | 3.19 | [`79e886599e64`](https://git.kernel.org/torvalds/c/79e886599e64) | [net] | crypto: algif - add and use sock_kzfree_s() instead of memzero_explicit() |  | CONFIG_CRYPTO=y in A37 | 3.10.0-875 |
| CANDIDATE | 3.19 | [`98210b7f73f1`](https://git.kernel.org/torvalds/c/98210b7f73f1) | [wireless] | debugfs: add helper function to create device related seq_file |  | CONFIG_DEBUG_FS=y in A37 | 3.10.0-304 |
| CANDIDATE | 3.19 | [`001ce546bb53`](https://git.kernel.org/torvalds/c/001ce546bb53) (loose) | [net] | Detect drivers that reschedule NAPI and exhaust budget |  | generic code, tag [net] | 3.10.0-407 |
| CANDIDATE | 3.19 | [`65891feac27e`](https://git.kernel.org/torvalds/c/65891feac27e) (loose) | [net] | Disallow providing non zero VLAN ID for NIC drivers FDB add flow |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.19 | [`e6b02be81b2e`](https://git.kernel.org/torvalds/c/e6b02be81b2e) | [net] | documentation: Update netlink_mmap.txt |  | generic code, tag [net] | 3.10.0-345 |
| CANDIDATE | 3.19 | [`af6dabc9c70a`](https://git.kernel.org/torvalds/c/af6dabc9c70a) (loose) | [net] | drop the packet when fails to do software segmentation or header check |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 3.19 | [`dbfc4fb7d578`](https://git.kernel.org/torvalds/c/dbfc4fb7d578) | [net] | dst: no need to take reference on DST_NOCACHE dsts |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.19 | [`892311f66f24`](https://git.kernel.org/torvalds/c/892311f66f24) | [net] | ethtool: Support for configurable RSS hash function |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 3.19 | [`a5a519b2710b`](https://git.kernel.org/torvalds/c/a5a519b2710b) | [net] | fib_trie: Fix /proc/net/fib_trie when CONFIG_IP_MULTIPLE_TABLES is not defined |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 3.19 | [`e962f3029749`](https://git.kernel.org/torvalds/c/e962f3029749) | [net] | fib_trie: Fix trie balancing issue if new node pushes down existing node |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 3.19 | [`882288c05ede`](https://git.kernel.org/torvalds/c/882288c05ede) | [net] | fou: Fix no return statement warning for !CONFIG_NET_FOU_IP_TUNNELS |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.19 | [`e1b2cb655060`](https://git.kernel.org/torvalds/c/e1b2cb655060) | [net] | fou: Fix typo in returning flags in netlink |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 3.19 | [`5f35227ea34b`](https://git.kernel.org/torvalds/c/5f35227ea34b) (loose) | [net] | Generalize ndo_gso_check to ndo_features_check |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 3.19 | [`fbe168ba91f7`](https://git.kernel.org/torvalds/c/fbe168ba91f7) (loose) | [net] | generic dev_disable_lro() stacked device handling |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.19 | [`f555f3d76aaa`](https://git.kernel.org/torvalds/c/f555f3d76aaa) | [net] | genetlink: document parallel_ops |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 3.19 | [`f8403a2e47af`](https://git.kernel.org/torvalds/c/f8403a2e47af) | [net] | genetlink: pass only network namespace to genl_has_listeners() |  | generic code, tag [net] | 3.10.0-284 |
| CANDIDATE | 3.19 | [`ee1c244219fd`](https://git.kernel.org/torvalds/c/ee1c244219fd) | [net] | genetlink: synchronize socket closing and family removal |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 3.19 | [`3b47d30396ba`](https://git.kernel.org/torvalds/c/3b47d30396ba) (loose) | [net] | gro: add a per device gro flush timer |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.19 | [`5024c33ac354`](https://git.kernel.org/torvalds/c/5024c33ac354) | [net] | gue: Add infrastructure for flags and options |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.19 | [`4fd671ded14f`](https://git.kernel.org/torvalds/c/4fd671ded14f) | [net] | gue: Call remcsum_adjust |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.19 | [`c1aa8347e73e`](https://git.kernel.org/torvalds/c/c1aa8347e73e) | [net] | gue: Protocol constants for remote checksum offload |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.19 | [`a8d31c128bf5`](https://git.kernel.org/torvalds/c/a8d31c128bf5) | [net] | gue: Receive side of remote checksum offload |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.19 | [`b17f709a2401`](https://git.kernel.org/torvalds/c/b17f709a2401) | [net] | gue: TX support for using remote checksum offload option |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.19 | [`bc9ad166e38a`](https://git.kernel.org/torvalds/c/bc9ad166e38a) (loose) | [net] | introduce napi_schedule_irqoff() |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 3.19 | [`ea3dc9601bda`](https://git.kernel.org/torvalds/c/ea3dc9601bda) | [net] | ip6_tunnel: Add support for wildcard tunnel endpoints. |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.19 | [`acf722f73499`](https://git.kernel.org/torvalds/c/acf722f73499) | [net] | ip6_tunnel: allow to change mode for the ip6tnl0 |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.19 | [`f1fb521f7d94`](https://git.kernel.org/torvalds/c/f1fb521f7d94) | [net] | ip_tunnel: Add missing validation of encap type to ip_tunnel_encap_setup() |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.19 | [`bb1553c80022`](https://git.kernel.org/torvalds/c/bb1553c80022) | [net] | ip_tunnel: Add sanity checks to ip_tunnel_encap_add_ops() |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.19 | [`a8c5f90fb59a`](https://git.kernel.org/torvalds/c/a8c5f90fb59a) | [net] | ip_tunnel: Ops registration for secondary encap (fou, gue) |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.19 | [`3cdaa5be9e81`](https://git.kernel.org/torvalds/c/3cdaa5be9e81) | [net] | ipv4: Don't increase PMTU with Datagram Too Big message |  | generic code, tag [net] | 3.10.0-818 |
| CANDIDATE | 3.19 | [`f4e715c3254e`](https://git.kernel.org/torvalds/c/f4e715c3254e) | [net] | ipv4: minor spelling fixes |  | generic code, tag [net] | 3.10.0-284 |
| CANDIDATE | 3.19 | [`94c77bb41d87`](https://git.kernel.org/torvalds/c/94c77bb41d87) | [net] | ipv6: Avoid redoing fib6_lookup() for RTF_CACHE hit case |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 3.19 | [`367efcb932c1`](https://git.kernel.org/torvalds/c/367efcb932c1) | [net] | ipv6: Avoid redoing fib6_lookup() with reachable = 0 by saving fn |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 3.19 | [`b0a1ba59921e`](https://git.kernel.org/torvalds/c/b0a1ba59921e) | [net] | ipv6: Fix __ip6_route_redirect |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 3.19 | [`a3c00e46efdb`](https://git.kernel.org/torvalds/c/a3c00e46efdb) | [net] | ipv6: Remove BACKTRACK macro |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 3.19 | [`86fe8f892013`](https://git.kernel.org/torvalds/c/86fe8f892013) | [net] | ipv6: remove useless spin_lock/spin_unlock |  | generic code, tag [net] | 3.10.0-491 |
| CANDIDATE | 3.19 | [`0508c07f5e0c`](https://git.kernel.org/torvalds/c/0508c07f5e0c) | [net] | ipv6: Select fragment id during UFO segmentation if not set |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 3.19 | [`d75b1ade567f`](https://git.kernel.org/torvalds/c/d75b1ade567f) (loose) | [net] | less interrupt masking in NAPI |  | generic code, tag [net] | 3.10.0-407 |
| CANDIDATE | 3.19 | [`bd9b51e79cb0`](https://git.kernel.org/torvalds/c/bd9b51e79cb0) | [net] | make default ->i_fop have ->open() fail with ENXIO |  | generic code, tag [net] | 3.10.0-285 |
| CANDIDATE | 3.19 | [`f6f6424ba773`](https://git.kernel.org/torvalds/c/f6f6424ba773) (loose) | [net] | make vid as a parameter for ndo_fdb_add/ndo_fdb_del |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 3.19 | [`e21951212f03`](https://git.kernel.org/torvalds/c/e21951212f03) (loose) | [net] | move make_writable helper into common code |  | generic code, tag [net] | 3.10.0-284 |
| CANDIDATE | 3.19 | [`726ce70e9e40`](https://git.kernel.org/torvalds/c/726ce70e9e40) (loose) | [net] | Move napi polling code out of net_rx_action |  | generic code, tag [net] | 3.10.0-407 |
| CANDIDATE | 3.19 | [`b7485f6b035a`](https://git.kernel.org/torvalds/c/b7485f6b035a) | [net] | neigh: sort Neighbor Cache Entry Flags |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 3.19 | [`4bf6980dd032`](https://git.kernel.org/torvalds/c/4bf6980dd032) | [net] | neighbour: fix base_reachable_time(_ms) not effective immediatly when changed |  | generic code, tag [net] | 3.10.0-1051 |
| CANDIDATE | 3.19 | [`ff960a731788`](https://git.kernel.org/torvalds/c/ff960a731788) | [net] | netdev, sched/wait: Fix sleeping inside wait event |  | generic code, tag [net] | 3.10.0-520 |
| CANDIDATE | 3.19 | [`b59eaf9e2871`](https://git.kernel.org/torvalds/c/b59eaf9e2871) | [net] | netfilter: combine IPv4 and IPv6 nf_nat_redirect code in one module |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 3.19 | [`8ca3f5e974f2`](https://git.kernel.org/torvalds/c/8ca3f5e974f2) | [net] | netfilter: conntrack: fix race between confirmation and flush |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1015 |
| CANDIDATE | 3.19 | [`982f405136a4`](https://git.kernel.org/torvalds/c/982f405136a4) | [net] | netfilter: Deletion of unnecessary checks before two function calls |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 3.19 | [`01cfa0a4ed82`](https://git.kernel.org/torvalds/c/01cfa0a4ed82) | [net] | netfilter: fix spelling errors |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 3.19 | [`f6c6339d5e94`](https://git.kernel.org/torvalds/c/f6c6339d5e94) | [net] | netfilter: fix unmet dependencies in NETFILTER_XT_TARGET_REDIRECT |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 3.19 | [`56768644317c`](https://git.kernel.org/torvalds/c/56768644317c) | [net] | netfilter: fix various sparse warnings |  | CONFIG_NETFILTER=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.19 | [`8ac2bde2a4a0`](https://git.kernel.org/torvalds/c/8ac2bde2a4a0) | [net] | netfilter: log: protect nf_log_register against double registering |  | CONFIG_NETFILTER=y in A37 | 3.10.0-211 |
| CANDIDATE | 3.19 | [`2c7b5d5dac0d`](https://git.kernel.org/torvalds/c/2c7b5d5dac0d) | [net] | netfilter: nf_conntrack_h323: lookup route from proper net namespace |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-217 |
| CANDIDATE | 3.19 | [`0c26ed1c07f1`](https://git.kernel.org/torvalds/c/0c26ed1c07f1) | [net] | netfilter: nf_log: Introduce nft_log_dereference() macro |  | CONFIG_NETFILTER_NETLINK_LOG=y in A37 | 3.10.0-345 |
| CANDIDATE | 3.19 | [`68b0faa87d16`](https://git.kernel.org/torvalds/c/68b0faa87d16) | [net] | netfilter: nf_tables_bridge: export nft_reject_ip*hdr_validate functions |  | CONFIG_NETFILTER=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.19 | [`1b63d4b9b54c`](https://git.kernel.org/torvalds/c/1b63d4b9b54c) | [net] | netfilter: nf_tables_bridge: set the pktinfo for IPv4/IPv6 traffic |  | CONFIG_NETFILTER=y in A37 | 3.10.0-359 |
| CANDIDATE | 3.19 | [`62924af247e9`](https://git.kernel.org/torvalds/c/62924af247e9) | [net] | netfilter: nfnetlink: relax strict multicast group check from netlink_bind |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1040 |
| CANDIDATE | 3.19 | [`8b13eddfdf04`](https://git.kernel.org/torvalds/c/8b13eddfdf04) | [net] | netfilter: refactor NAT redirect IPv4 to use it from nf_tables |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 3.19 | [`9de920eddb74`](https://git.kernel.org/torvalds/c/9de920eddb74) | [net] | netfilter: refactor NAT redirect IPv6 code to use it from nf_tables |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 3.19 | [`e59ea3df3fc2`](https://git.kernel.org/torvalds/c/e59ea3df3fc2) | [net] | netfilter: xt_connlimit: honor conntrack zone if available |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-340 |
| CANDIDATE | 3.19 | [`7d68536bed72`](https://git.kernel.org/torvalds/c/7d68536bed72) | [net] | netlink: call unbind when releasing socket |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 3.19 | [`02c81ab95d87`](https://git.kernel.org/torvalds/c/02c81ab95d87) | [net] | netlink: rename netlink_unbind() to netlink_undo_bind() |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 3.19 | [`b10dcb3b9401`](https://git.kernel.org/torvalds/c/b10dcb3b9401) | [net] | netlink: update listeners directly when removing socket |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 3.19 | [`7f19fc5e0b61`](https://git.kernel.org/torvalds/c/7f19fc5e0b61) | [net] | netlink: use jhash as hashfn for rhashtable |  | generic code, tag [net] | 3.10.0-368 |
| CANDIDATE | 3.19 | [`46d2cfb192b3`](https://git.kernel.org/torvalds/c/46d2cfb192b3) | [net] | packet: bail out of packet_snd() if L2 header creation fails |  | CONFIG_PACKET=y in A37 | 3.10.0-703 |
| CANDIDATE | 3.19 | [`da413eec729d`](https://git.kernel.org/torvalds/c/da413eec729d) | [net] | packet: Fixed TPACKET V3 to signal poll when block is closed rather than every packet |  | CONFIG_PACKET=y in A37 | 3.10.0-491 |
| CANDIDATE | 3.19 | [`9c7077622dd9`](https://git.kernel.org/torvalds/c/9c7077622dd9) | [net] | packet: make packet_snd fail on len smaller than l2 header |  | CONFIG_PACKET=y in A37 | 3.10.0-703 |
| CANDIDATE | 3.19 | [`3725a269815b`](https://git.kernel.org/torvalds/c/3725a269815b) | [net] | pkt_sched: fq: avoid hang when quantum 0 |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.19 | [`ced7a04e394f`](https://git.kernel.org/torvalds/c/ced7a04e394f) | [net] | pkt_sched: fq: increase max delay from 125 ms to one second |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.19 | [`960fb622f851`](https://git.kernel.org/torvalds/c/960fb622f851) (loose) | [net] | provide a per host RSS key generic infrastructure |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 3.19 | [`fd11a83dd363`](https://git.kernel.org/torvalds/c/fd11a83dd363) (loose) | [net] | Pull out core bits of __netdev_alloc_skb and add __napi_alloc_skb |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.19 | [`ceb8d5bf17d3`](https://git.kernel.org/torvalds/c/ceb8d5bf17d3) (loose) | [net] | Rearrange loop in net_rx_action |  | generic code, tag [net] | 3.10.0-407 |
| CANDIDATE | 3.19 | [`59b93b41e7fa`](https://git.kernel.org/torvalds/c/59b93b41e7fa) (loose) | [net] | Remove MPLS GSO feature |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 3.19 | [`02637fce3e01`](https://git.kernel.org/torvalds/c/02637fce3e01) (loose) | [net] | rename netdev_phys_port_id to more generic name |  | generic code, tag [net] | 3.10.0-444 |
| CANDIDATE | 3.19 | [`395eea6ccf2b`](https://git.kernel.org/torvalds/c/395eea6ccf2b) | [net] | rtnetlink: delay RTM_DELLINK notification until after ndo_uninit() |  | generic code, tag [net] | 3.10.0-349 |
| CANDIDATE | 3.19 | [`82f2841291cf`](https://git.kernel.org/torvalds/c/82f2841291cf) | [net] | rtnl: expose physical switch id for particular device |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 3.19 | [`57d743a3dec1`](https://git.kernel.org/torvalds/c/57d743a3dec1) (loose) | [net] | sched: cls: remove unused op put from tcf_proto_ops |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 3.19 | [`6ea3b446b936`](https://git.kernel.org/torvalds/c/6ea3b446b936) (loose) | [net] | sched: cls: use nla_nest_cancel instead of nlmsg_trim |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 3.19 | [`0c6965dd3171`](https://git.kernel.org/torvalds/c/0c6965dd3171) | [net] | sched: fix act file names in header comment |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 3.19 | [`0d32ef8cef9a`](https://git.kernel.org/torvalds/c/0d32ef8cef9a) (loose) | [net] | sched: fix panic in rate estimators |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 3.19 | [`c7e2b9689ef8`](https://git.kernel.org/torvalds/c/c7e2b9689ef8) | [net] | sched: introduce vlan action |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 3.19 | [`a409caecb2e1`](https://git.kernel.org/torvalds/c/a409caecb2e1) | [net] | sit: fix some __be16/u16 mismatches |  | CONFIG_IPV6_SIT=y in A37 | 3.10.0-613 |
| CANDIDATE | 3.19 | [`432c856fcf45`](https://git.kernel.org/torvalds/c/432c856fcf45) (loose) | [net] | skb_segment() should preserve backpressure |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 3.19 | [`ffde7328a36d`](https://git.kernel.org/torvalds/c/ffde7328a36d) (loose) | [net] | Split netdev_alloc_frag into __alloc_page_frag and add __napi_alloc_frag |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.19 | [`274e2da0ecb4`](https://git.kernel.org/torvalds/c/274e2da0ecb4) | [net] | syncookies: avoid magic values and document which-bit-is-what-option |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 3.19 | [`f1673381b148`](https://git.kernel.org/torvalds/c/f1673381b148) | [net] | syncookies: split cookie_check_timestamp() into two functions |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 3.19 | [`5f4d8d97f5d9`](https://git.kernel.org/torvalds/c/5f4d8d97f5d9) | [net] | tc_act: export uapi header file |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.19 | [`0f85feae6b71`](https://git.kernel.org/torvalds/c/0f85feae6b71) | [net] | tcp: fix more NULL deref after prequeue changes |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 3.19 | [`9cd981dcf174`](https://git.kernel.org/torvalds/c/9cd981dcf174) | [net] | tcp: fix stretch ACK bugs in CUBIC |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 3.19 | [`c22bdca94782`](https://git.kernel.org/torvalds/c/c22bdca94782) | [net] | tcp: fix stretch ACK bugs in Reno |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 3.19 | [`814d488c6126`](https://git.kernel.org/torvalds/c/814d488c6126) | [net] | tcp: fix the timid additive increase on stretch ACKs |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 3.19 | [`d649a7a81f3b`](https://git.kernel.org/torvalds/c/d649a7a81f3b) | [net] | tcp: limit GSO packets to half cwnd |  | generic code, tag [net] | 3.10.0-818 |
| CANDIDATE | 3.19 | [`605ad7f184b6`](https://git.kernel.org/torvalds/c/605ad7f184b6) | [net] | tcp: refine TSO autosizing |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 3.19 | [`e73ebb0881ea`](https://git.kernel.org/torvalds/c/e73ebb0881ea) | [net] | tcp: stretch ACK fixes prep |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 3.19 | [`6e3a8a937c2f`](https://git.kernel.org/torvalds/c/6e3a8a937c2f) | [net] | tcp_cubic: add SNMP counters to track how effective is Hystart |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 3.19 | [`42eef7a0bb09`](https://git.kernel.org/torvalds/c/42eef7a0bb09) | [net] | tcp_cubic: refine Hystart delay threshold |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 3.19 | [`f51a5e82ea9a`](https://git.kernel.org/torvalds/c/f51a5e82ea9a) | [net] | tun/macvtap: use consume_skb() instead of kfree_skb() when needed |  | CONFIG_TUN=y in A37 | 3.10.0-226 |
| CANDIDATE | 3.19 | [`e585f2363637`](https://git.kernel.org/torvalds/c/e585f2363637) | [net] | udp: Changes to udp_offload to support remote checksum offload |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.19 | [`60c04aecd8a7`](https://git.kernel.org/torvalds/c/60c04aecd8a7) | [net] | udp: Neaten and reduce size of compute_score functions |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 3.19 | [`4243cdc2c1e5`](https://git.kernel.org/torvalds/c/4243cdc2c1e5) | [net] | udp: Neaten function pointer calls and add braces |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 3.19 | [`4bcb877d257c`](https://git.kernel.org/torvalds/c/4bcb877d257c) | [net] | udp: Offload outer UDP tunnel csum if available |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 3.19 | [`6cf1093e58f5`](https://git.kernel.org/torvalds/c/6cf1093e58f5) | [net] | udp: remove blank line between set and test |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 3.19 | [`c18450a52a10`](https://git.kernel.org/torvalds/c/c18450a52a10) | [net] | udp: remove else after return |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 3.19 | [`5d330cddb907`](https://git.kernel.org/torvalds/c/5d330cddb907) | [net] | Update old iproute2 and Xen Remus links |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 3.19 | [`0f7db23a07af`](https://git.kernel.org/torvalds/c/0f7db23a07af) | [net] | vmci_transport: switch ->enqeue_dgram, ->enqueue_stream and ->dequeue_stream to msghdr |  | generic code, tag [net] | 3.10.0-571 |
| CANDIDATE | 3.19 | [`fbe68ee87522`](https://git.kernel.org/torvalds/c/fbe68ee87522) | [net] | vti6: Add a lookup method for tunnels with wildcard endpoints |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 3.19 | [`de3b7a06dfe1`](https://git.kernel.org/torvalds/c/de3b7a06dfe1) | [net] | xfrm6: Fix transport header offset in _decode_session6. |  | CONFIG_XFRM=y in A37 | 3.10.0-1048 |
| CANDIDATE | 3.19 | [`f293a5e33e08`](https://git.kernel.org/torvalds/c/f293a5e33e08) | [net] | xfrm: add XFRMA_REPLAY_VAL attribute to SA messages |  | CONFIG_XFRM=y in A37 | 3.10.0-352 |
| CANDIDATE | 4.0 | [`dcdc8994697f`](https://git.kernel.org/torvalds/c/dcdc8994697f) (loose) | [net] | add skb functions to process remote checksum offload |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`9b174d88c257`](https://git.kernel.org/torvalds/c/9b174d88c257) (loose) | [net] | Add Transparent Ethernet Bridging GRO support |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`41a50d621a32`](https://git.kernel.org/torvalds/c/41a50d621a32) | [net] | af_packet: don't pass empty blocks for PACKET_V3 |  | CONFIG_PACKET=y in A37 | 3.10.0-491 |
| CANDIDATE | 4.0 | [`1059590254fa`](https://git.kernel.org/torvalds/c/1059590254fa) (loose) | [net] | allow large number of rx queues |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 4.0 | [`f902e8812ef6`](https://git.kernel.org/torvalds/c/f902e8812ef6) | [net] | bridge: Add ability to enable TSO |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.0 | [`71e168b151ba`](https://git.kernel.org/torvalds/c/71e168b151ba) (loose) | [net] | bridge: add compile-time assert for cb struct size |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.0 | [`add511b38266`](https://git.kernel.org/torvalds/c/add511b38266) | [net] | bridge: add flags argument to ndo_bridge_setlink and ndo_bridge_dellink |  | CONFIG_BRIDGE=y in A37 | 3.10.0-444 |
| CANDIDATE | 4.0 | [`1fd0bddb618a`](https://git.kernel.org/torvalds/c/1fd0bddb618a) | [net] | bridge: add missing bridge port check for offloads |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.0 | [`25d3b493a52d`](https://git.kernel.org/torvalds/c/25d3b493a52d) | [net] | bridge: Fix inability to add non-vlan fdb entry |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.0 | [`02dba4388d16`](https://git.kernel.org/torvalds/c/02dba4388d16) | [net] | bridge: fix setlink/dellink notifications |  | CONFIG_BRIDGE=y in A37 | 3.10.0-302 |
| CANDIDATE | 4.0 | [`0fe6de490320`](https://git.kernel.org/torvalds/c/0fe6de490320) | [net] | bridge: fix uninitialized variable warning |  | CONFIG_BRIDGE=y in A37 | 3.10.0-302 |
| CANDIDATE | 4.0 | [`9672723973f1`](https://git.kernel.org/torvalds/c/9672723973f1) | [net] | bridge: netfilter: Move sysctl-specific error code inside #ifdef |  | CONFIG_BRIDGE=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.0 | [`36cd0ffbab8a`](https://git.kernel.org/torvalds/c/36cd0ffbab8a) | [net] | bridge: new function to pack vlans into ranges during gets |  | CONFIG_BRIDGE=y in A37 | 3.10.0-302 |
| CANDIDATE | 4.0 | [`68e331c785b8`](https://git.kernel.org/torvalds/c/68e331c785b8) | [net] | bridge: offload bridge port attributes to switch asic if feature flag set |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.0 | [`8db0a2ee2c63`](https://git.kernel.org/torvalds/c/8db0a2ee2c63) (loose) | [net] | bridge: reject DSA-enabled master netdevices as bridge members |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.0 | [`4de8b413700e`](https://git.kernel.org/torvalds/c/4de8b413700e) | [net] | bridge: remove oflags from setlink/dellink |  | CONFIG_BRIDGE=y in A37 | 3.10.0-302 |
| CANDIDATE | 4.0 | [`4c906c279886`](https://git.kernel.org/torvalds/c/4c906c279886) | [net] | bridge: reset bridge mtu after deleting an interface |  | CONFIG_BRIDGE=y in A37 | 3.10.0-572 |
| CANDIDATE | 4.0 | [`1b846f9282c0`](https://git.kernel.org/torvalds/c/1b846f9282c0) | [net] | bridge: simplify br_getlink() a bit |  | CONFIG_BRIDGE=y in A37 | 3.10.0-302 |
| CANDIDATE | 4.0 | [`bdced7ef7838`](https://git.kernel.org/torvalds/c/bdced7ef7838) | [net] | bridge: support for multiple vlans and vlan ranges in setlink and dellink requests |  | CONFIG_BRIDGE=y in A37 | 3.10.0-302 |
| CANDIDATE | 4.0 | [`12d872511cdf`](https://git.kernel.org/torvalds/c/12d872511cdf) | [net] | bridge: use MDBA_SET_ENTRY_MAX for maxtype in nlmsg_parse() |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.0 | [`6edec0e61b1e`](https://git.kernel.org/torvalds/c/6edec0e61b1e) (loose) | [net] | Clarify meaning of CHECKSUM_PARTIAL for receive path |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`843c2fdf7a12`](https://git.kernel.org/torvalds/c/843c2fdf7a12) (loose) | [net] | dctcp: loosen requirement to assert ECT(0) during 3WHS |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`7866a621043f`](https://git.kernel.org/torvalds/c/7866a621043f) | [net] | dev: add per net_device packet type chains |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 4.0 | [`cac5e65e8a7e`](https://git.kernel.org/torvalds/c/cac5e65e8a7e) (loose) | [net] | do not use rcu in rtnl_dump_ifinfo() |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`e715b6d3a5ef`](https://git.kernel.org/torvalds/c/e715b6d3a5ef) (loose) | [net] | fib6: convert cfg metric to u32 outside of table write lock |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`0409c9a5a754`](https://git.kernel.org/torvalds/c/0409c9a5a754) (loose) | [net] | fib6: fib6_commit_metrics: fix potential NULL pointer dereference |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`95f60ea3e99a`](https://git.kernel.org/torvalds/c/95f60ea3e99a) | [net] | fib_trie: Add collapse() and should_collapse() to resize |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`f05a48198bf7`](https://git.kernel.org/torvalds/c/f05a48198bf7) | [net] | fib_trie: Add functions should_inflate and should_halve |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`5405afd1a306`](https://git.kernel.org/torvalds/c/5405afd1a306) | [net] | fib_trie: Add tracking value for suffix length |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`a80e89d4c650`](https://git.kernel.org/torvalds/c/a80e89d4c650) | [net] | fib_trie: Fall back to slen update on inflate/halve failure |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`69fa57b1e42c`](https://git.kernel.org/torvalds/c/69fa57b1e42c) | [net] | fib_trie: Fix RCU bug and merge similar bits of inflate/halve |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`12c081a5c82e`](https://git.kernel.org/torvalds/c/12c081a5c82e) | [net] | fib_trie: inflate/halve nodes in a more RCU friendly way |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`64c9b6fb26eb`](https://git.kernel.org/torvalds/c/64c9b6fb26eb) | [net] | fib_trie: Make leaf and tnode more uniform |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`adaf981685b7`](https://git.kernel.org/torvalds/c/adaf981685b7) | [net] | fib_trie: Merge leaf into tnode |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`37fd30f2da57`](https://git.kernel.org/torvalds/c/37fd30f2da57) | [net] | fib_trie: Merge tnode_free and leaf_free into node_free |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`02525368f48c`](https://git.kernel.org/torvalds/c/02525368f48c) | [net] | fib_trie: Move fib_find_alias to file where it is used |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`cf3637bb8f07`](https://git.kernel.org/torvalds/c/cf3637bb8f07) | [net] | fib_trie: Move resize to after inflate/halve |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`939afb0657dd`](https://git.kernel.org/torvalds/c/939afb0657dd) | [net] | fib_trie: Optimize fib_find_node |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`836a0123c98c`](https://git.kernel.org/torvalds/c/836a0123c98c) | [net] | fib_trie: Optimize fib_table_insert |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`9f9e636d4f89`](https://git.kernel.org/torvalds/c/9f9e636d4f89) | [net] | fib_trie: Optimize fib_table_lookup to avoid wasting time on loops/variables |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`ff181ed8768f`](https://git.kernel.org/torvalds/c/ff181ed8768f) | [net] | fib_trie: Push assignment of child to parent down into inflate/halve |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`345e9b54268a`](https://git.kernel.org/torvalds/c/345e9b54268a) | [net] | fib_trie: Push rcu_read_lock/unlock to callers |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`fc86a93b46d7`](https://git.kernel.org/torvalds/c/fc86a93b46d7) | [net] | fib_trie: Push tnode flushing down to inflate/halve |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`21d1f11db0e2`](https://git.kernel.org/torvalds/c/21d1f11db0e2) | [net] | fib_trie: Remove checks for index >= tnode_child_length from tnode_get_child |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`e9b44019d41a`](https://git.kernel.org/torvalds/c/e9b44019d41a) | [net] | fib_trie: Update meaning of pos to represent unchecked bits |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`8274a97aa4c6`](https://git.kernel.org/torvalds/c/8274a97aa4c6) | [net] | fib_trie: Update usage stats to be percpu instead of global variables |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`30cfe7c9c88d`](https://git.kernel.org/torvalds/c/30cfe7c9c88d) | [net] | fib_trie: Use empty_children instead of counting empty nodes in stats collection |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`b3832117b4b6`](https://git.kernel.org/torvalds/c/b3832117b4b6) | [net] | fib_trie: Use index & (~0ul << n->bits) instead of index >> n->bits |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`98293e8d2f51`](https://git.kernel.org/torvalds/c/98293e8d2f51) | [net] | fib_trie: Use unsigned long for anything dealing with a shift by bits |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`64c6272351a0`](https://git.kernel.org/torvalds/c/64c6272351a0) | [net] | fib_trie: Various clean-ups for handling slen |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`08bfc9cb76e2`](https://git.kernel.org/torvalds/c/08bfc9cb76e2) | [net] | flow_dissector: add tipc support |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.0 | [`233c96fc077d`](https://git.kernel.org/torvalds/c/233c96fc077d) | [net] | flowcache: Fix kernel panic in flow_cache_flush_task |  | generic code, tag [net] | 3.10.0-312 |
| CANDIDATE | 4.0 | [`7b1883cefc28`](https://git.kernel.org/torvalds/c/7b1883cefc28) | [net] | genetlink: Add genlmsg_parse() helper function |  | generic code, tag [net] | 3.10.0-284 |
| CANDIDATE | 4.0 | [`fe881ef11cf0`](https://git.kernel.org/torvalds/c/fe881ef11cf0) | [net] | gue: Use checksum partial with remote checksum offload |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`436389007967`](https://git.kernel.org/torvalds/c/436389007967) (loose) | [net] | Handle unregister properly when netdev namespace change fails. |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`15e2396d4e3c`](https://git.kernel.org/torvalds/c/15e2396d4e3c) (loose) | [net] | Infrastructure for CHECKSUM_PARTIAL with remote checsum offload |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`37355565ba57`](https://git.kernel.org/torvalds/c/37355565ba57) | [net] | ip6_tunnel: fix error code when tunnel exists |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`3390e397611c`](https://git.kernel.org/torvalds/c/3390e397611c) | [net] | ip6gretap: advertise link netns via netlink |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`224d019c4fbb`](https://git.kernel.org/torvalds/c/224d019c4fbb) | [net] | ip: Move checksum convert defines to inet |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`88340160f3ad`](https://git.kernel.org/torvalds/c/88340160f3ad) | [net] | ip_tunnel: Create percpu gro_cell |  | generic code, tag [net] | 3.10.0-599 |
| CANDIDATE | 4.0 | [`ed785309c944`](https://git.kernel.org/torvalds/c/ed785309c944) | [net] | ipv4: take rtnl_lock and mark mrt table as freed on namespace cleanup |  | generic code, tag [net] | 3.10.0-300 |
| CANDIDATE | 4.0 | [`11b1f8288d43`](https://git.kernel.org/torvalds/c/11b1f8288d43) | [net] | ipv6: addrconf: add missing validate_link_af handler |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.0 | [`c58da4c65980`](https://git.kernel.org/torvalds/c/c58da4c65980) (loose) | [net] | ipv6: allow explicitly choosing optimistic addresses |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 4.0 | [`32dce968dd98`](https://git.kernel.org/torvalds/c/32dce968dd98) | [net] | ipv6: Allow for partial checksums on non-ufo packets |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 4.0 | [`0bbe84a67b0b`](https://git.kernel.org/torvalds/c/0bbe84a67b0b) | [net] | ipv6: Append sending data to arbitrary queue |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 4.0 | [`8e199dfd82ee`](https://git.kernel.org/torvalds/c/8e199dfd82ee) | [net] | ipv6: call ipv6_proxy_select_ident instead of ipv6_select_ident in udp6_ufo_fragment |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.0 | [`51f30770e50e`](https://git.kernel.org/torvalds/c/51f30770e50e) | [net] | ipv6: Fix fragment id assignment on LE arches |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.0 | [`4762fb980465`](https://git.kernel.org/torvalds/c/4762fb980465) | [net] | ipv6: fix possible deadlock in ip6_fl_purge / ip6_fl_gc |  | generic code, tag [net] | 3.10.0-236 |
| CANDIDATE | 4.0 | [`6422398c2ab0`](https://git.kernel.org/torvalds/c/6422398c2ab0) | [net] | ipv6: introduce ipv6_make_skb |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 4.0 | [`d39d938c8228`](https://git.kernel.org/torvalds/c/d39d938c8228) | [net] | ipv6: Introduce udpv6_send_skb() |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 4.0 | [`8381eacf5c3b`](https://git.kernel.org/torvalds/c/8381eacf5c3b) | [net] | ipv6: Make __ipv6_select_ident static |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.0 | [`bf250a1fa769`](https://git.kernel.org/torvalds/c/bf250a1fa769) | [net] | ipv6: Partial checksum only UDP packets |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 4.0 | [`f60e5990d9c1`](https://git.kernel.org/torvalds/c/f60e5990d9c1) | [net] | ipv6: protect skb->sk accesses from recursive dereference inside the stack |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`366e41d9774d`](https://git.kernel.org/torvalds/c/366e41d9774d) | [net] | ipv6: pull cork initialization into its own function |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 4.0 | [`6341e62b212a`](https://git.kernel.org/torvalds/c/6341e62b212a) | [net] | kconfig: use bool instead of boolean for type definition attributes |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.0 | [`207895fd388c`](https://git.kernel.org/torvalds/c/207895fd388c) (loose) | [net] | mark some potential candidates __read_mostly |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | 4.0 | [`aafb3e98b279`](https://git.kernel.org/torvalds/c/aafb3e98b279) | [net] | netdev: introduce new NETIF_F_HW_SWITCH_OFFLOAD feature flag for switch device offloads |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.0 | [`ad41faa88e39`](https://git.kernel.org/torvalds/c/ad41faa88e39) | [net] | netdevice.h: fix ndo_bridge_* comments |  | generic code, tag [net] | 3.10.0-444 |
| CANDIDATE | 4.0 | [`88eab472ec21`](https://git.kernel.org/torvalds/c/88eab472ec21) | [net] | netfilter: conntrack: adjust nf_conntrack_buckets default value |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-236 |
| CANDIDATE | 4.0 | [`d8bdff59cea1`](https://git.kernel.org/torvalds/c/d8bdff59cea1) | [net] | netfilter: Fix potential crash in nft_hash walker |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.0 | [`4017a7ee693d`](https://git.kernel.org/torvalds/c/4017a7ee693d) | [net] | netfilter: restore rule tracing via nfnetlink_log |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.0 | [`9a7766288274`](https://git.kernel.org/torvalds/c/9a7766288274) | [net] | netfilter: Use rhashtable walk iterator |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.0 | [`78296c97ca1f`](https://git.kernel.org/torvalds/c/78296c97ca1f) | [net] | netfilter: xt_socket: fix a stack corruption bug |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.0 | [`c5adde9468b0`](https://git.kernel.org/torvalds/c/c5adde9468b0) | [net] | netlink: eliminate nl_sk_hash_lock |  | generic code, tag [net] | 3.10.0-368 |
| CANDIDATE | 4.0 | [`7b46a644a407`](https://git.kernel.org/torvalds/c/7b46a644a407) | [net] | netlink: Fix bugs in nlmsg_end() conversions |  | generic code, tag [net] | 3.10.0-475 |
| CANDIDATE | 4.0 | [`919d9db95218`](https://git.kernel.org/torvalds/c/919d9db95218) | [net] | netlink: Fix netlink_insert EADDRINUSE error |  | generic code, tag [net] | 3.10.0-368 |
| CANDIDATE | 4.0 | [`8ea65f4a2dfa`](https://git.kernel.org/torvalds/c/8ea65f4a2dfa) | [net] | netlink: Kill redundant net argument in netlink_insert |  | generic code, tag [net] | 3.10.0-368 |
| CANDIDATE | 4.0 | [`21e4902aea80`](https://git.kernel.org/torvalds/c/21e4902aea80) | [net] | netlink: Lockless lookup with RCU grace period in socket release |  | generic code, tag [net] | 3.10.0-368 |
| CANDIDATE | 4.0 | [`053c095a82cf`](https://git.kernel.org/torvalds/c/053c095a82cf) | [net] | netlink: make nlmsg_end() and genlmsg_end() void |  | generic code, tag [net] | 3.10.0-475 |
| CANDIDATE | 4.0 | [`56d28b1e921b`](https://git.kernel.org/torvalds/c/56d28b1e921b) | [net] | netlink: Use rhashtable walk iterator |  | generic code, tag [net] | 3.10.0-368 |
| CANDIDATE | 4.0 | [`0c7aecd4bde4`](https://git.kernel.org/torvalds/c/0c7aecd4bde4) | [net] | netns: add rtnl cmd to add and get peer netns ids |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`576b7cd2f6ff`](https://git.kernel.org/torvalds/c/576b7cd2f6ff) | [net] | netns: don't allocate an id for dead netns |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`06eb395fa985`](https://git.kernel.org/torvalds/c/06eb395fa985) | [net] | pkt_sched: fq: better control of DDOS traffic |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 4.0 | [`86b3bfe914f4`](https://git.kernel.org/torvalds/c/86b3bfe914f4) | [net] | pkt_sched: fq: remove useless TIME_WAIT check |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 4.0 | [`35a27cee321e`](https://git.kernel.org/torvalds/c/35a27cee321e) | [net] | rtnetlink: new filter RTEXT_FILTER_BRVLAN_COMPRESSED |  | generic code, tag [net] | 3.10.0-302 |
| CANDIDATE | 4.0 | [`7b4ce694b203`](https://git.kernel.org/torvalds/c/7b4ce694b203) | [net] | rtnetlink: pass link_net to the newlink handler |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`d37512a277df`](https://git.kernel.org/torvalds/c/d37512a277df) | [net] | rtnl: add link netns id to interface messages |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`317f4810e45e`](https://git.kernel.org/torvalds/c/317f4810e45e) | [net] | rtnl: allow to create device with IFLA_LINK_NETNSID set |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`bdef279b993b`](https://git.kernel.org/torvalds/c/bdef279b993b) | [net] | rtnl: fix error path when adding an iface with a link net |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`30ff54765976`](https://git.kernel.org/torvalds/c/30ff54765976) (loose) | [net] | sched: export tc_connmark.h so it is uapi accessible |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.0 | [`d8b9605d2697`](https://git.kernel.org/torvalds/c/d8b9605d2697) (loose) | [net] | sched: fix skb->protocol use in case of accelerated vlan path |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-637 |
| CANDIDATE | 4.0 | [`22a5dc0e5e3e`](https://git.kernel.org/torvalds/c/22a5dc0e5e3e) (loose) | [net] | sched: Introduce connmark action |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.0 | [`e8768f971558`](https://git.kernel.org/torvalds/c/e8768f971558) (loose) | [net] | skbuff: don't zero tc members when freeing skb |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.0 | [`c5c6a8ab45ec`](https://git.kernel.org/torvalds/c/c5c6a8ab45ec) (loose) | [net] | tcp: add key management to congestion control |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`81164413ad09`](https://git.kernel.org/torvalds/c/81164413ad09) (loose) | [net] | tcp: add per route congestion control |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`ea697639992d`](https://git.kernel.org/torvalds/c/ea697639992d) (loose) | [net] | tcp: add RTAX_CC_ALGO fib handling |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`6c09fa09d468`](https://git.kernel.org/torvalds/c/6c09fa09d468) | [net] | tcp: align tcp_xmit_size_goal() on tcp_tso_autosize() |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.0 | [`987819657828`](https://git.kernel.org/torvalds/c/987819657828) | [net] | tcp: do not pace pure ack packets |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 4.0 | [`531c94a9681b`](https://git.kernel.org/torvalds/c/531c94a9681b) | [net] | tcp: don't include Fast Open option in SYN-ACK on pure SYN-data |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 4.0 | [`9949afa42be0`](https://git.kernel.org/torvalds/c/9949afa42be0) | [net] | tcp: fix tcp_cong_avoid_ai() credit accumulation bug with decreases in w |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`032ee4236954`](https://git.kernel.org/torvalds/c/032ee4236954) | [net] | tcp: helpers to mitigate ACK loops by rate-limiting out-of-window dupacks |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`ba34e6d9d346`](https://git.kernel.org/torvalds/c/ba34e6d9d346) | [net] | tcp: make sure skb is not shared before using skb_get() |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.0 | [`a9b2c06dbef4`](https://git.kernel.org/torvalds/c/a9b2c06dbef4) | [net] | tcp: mitigate ACK loops for connections as tcp_request_sock |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`f2b2c582e824`](https://git.kernel.org/torvalds/c/f2b2c582e824) | [net] | tcp: mitigate ACK loops for connections as tcp_sock |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`4fb17a609167`](https://git.kernel.org/torvalds/c/4fb17a609167) | [net] | tcp: mitigate ACK loops for connections as tcp_timewait_sock |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`29ba4fffd396`](https://git.kernel.org/torvalds/c/29ba4fffd396) (loose) | [net] | tcp: refactor reinitialization of congestion control |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`d578e18ce93f`](https://git.kernel.org/torvalds/c/d578e18ce93f) | [net] | tcp: restore 1.5x per RTT limit to CUBIC cwnd growth in congestion avoidance |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.0 | [`1728d4fabd1b`](https://git.kernel.org/torvalds/c/1728d4fabd1b) | [net] | tunnels: advertise link netns via netlink |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`d998f8efa472`](https://git.kernel.org/torvalds/c/d998f8efa472) | [net] | udp: Do not require sock in udp_tunnel_xmit_skb |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`a2b12f3c7ac1`](https://git.kernel.org/torvalds/c/a2b12f3c7ac1) | [net] | udp: pass udp_offload struct to UDP gro callbacks |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`6db93ea13b79`](https://git.kernel.org/torvalds/c/6db93ea13b79) | [net] | udp: Set SKB_GSO_UDP_TUNNEL* in UDP GRO path |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.0 | [`03485f2adcde`](https://git.kernel.org/torvalds/c/03485f2adcde) | [net] | udpv6: Add lockless sendmsg() support |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | 4.0 | [`d079535d5e1b`](https://git.kernel.org/torvalds/c/d079535d5e1b) (loose) | [net] | use for_each_netdev_safe() in rtnl_group_changelink() |  | generic code, tag [net] | 3.10.0-842 |
| CANDIDATE | 4.0 | [`baa32ff42871`](https://git.kernel.org/torvalds/c/baa32ff42871) (loose) | [net] | Use more bit fields in napi_gro_cb |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`505ce4154ac8`](https://git.kernel.org/torvalds/c/505ce4154ac8) (loose) | [net] | Verify permission to dest_net in newlink |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`06615bed60c1`](https://git.kernel.org/torvalds/c/06615bed60c1) (loose) | [net] | Verify permission to link_net in newlink |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.0 | [`e5f4e7b9ff33`](https://git.kernel.org/torvalds/c/e5f4e7b9ff33) | [net] | veth: advertise link netns via netlink |  | CONFIG_VETH=y in A37 | 3.10.0-260 |
| CANDIDATE | 4.0 | [`cd3bafc73d11`](https://git.kernel.org/torvalds/c/cd3bafc73d11) | [net] | xfrm6: Fix a offset value for network header in _decode_session6 |  | CONFIG_XFRM=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.0 | [`ac37e2515c1a`](https://git.kernel.org/torvalds/c/ac37e2515c1a) | [net] | xfrm: release dst_orig in case of error in xfrm_lookup() |  | CONFIG_XFRM=y in A37 | 3.10.0-312 |
| CANDIDATE | 4.0 | [`2bd82484bb4c`](https://git.kernel.org/torvalds/c/2bd82484bb4c) | [net] | xps: fix xps for stacked devices |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.1 | [`3bc3b96f3b45`](https://git.kernel.org/torvalds/c/3bc3b96f3b45) (loose) | [net] | add common accessor for setting dropcount on packets |  | generic code, tag [net] | 3.10.0-599 |
| CANDIDATE | 4.1 | [`822b3b2ebfff`](https://git.kernel.org/torvalds/c/822b3b2ebfff) (loose) | [net] | Add max rate tx queue attribute |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.1 | [`4e18b9adf2f9`](https://git.kernel.org/torvalds/c/4e18b9adf2f9) (loose) | [net] | add skb_checksum_complete_unset |  | generic code, tag [net] | 3.10.0-1085 |
| CANDIDATE | 4.1 | [`db24a9044ee1`](https://git.kernel.org/torvalds/c/db24a9044ee1) (loose) | [net] | add support for phys_port_name |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.1 | [`821996795973`](https://git.kernel.org/torvalds/c/821996795973) | [net] | bridge/mdb: remove wrong use of NLM_F_MULTI |  | CONFIG_BRIDGE=y in A37 | 3.10.0-1144 |
| CANDIDATE | 4.1 | [`821996795973`](https://git.kernel.org/torvalds/c/821996795973) | [net] | bridge/mdb: remove wrong use of NLM_F_MULTI |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.1 | [`46c264daaaa5`](https://git.kernel.org/torvalds/c/46c264daaaa5) | [net] | bridge/nl: remove wrong use of NLM_F_MULTI |  | CONFIG_BRIDGE=y in A37 | 3.10.0-444 |
| CANDIDATE | 4.1 | [`af615762e972`](https://git.kernel.org/torvalds/c/af615762e972) | [net] | bridge: add ageing_time, stp_state, priority over netlink |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.1 | [`b7853d73e39b`](https://git.kernel.org/torvalds/c/b7853d73e39b) | [net] | bridge: add vlan info to bridge setlink and dellink notification messages |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.1 | [`c4c832f89dc4`](https://git.kernel.org/torvalds/c/c4c832f89dc4) | [net] | bridge: disable softirqs around br_fdb_update to avoid lockup |  | CONFIG_BRIDGE=y in A37 | 3.10.0-468 |
| CANDIDATE | 4.1 | [`842a9ae08a25`](https://git.kernel.org/torvalds/c/842a9ae08a25) | [net] | bridge: Extend Proxy ARP design to allow optional rules for Wi-Fi |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.1 | [`71d9f6149cac`](https://git.kernel.org/torvalds/c/71d9f6149cac) | [net] | bridge: fix br_multicast_query_expired() bug |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.1 | [`2f56f6be47db`](https://git.kernel.org/torvalds/c/2f56f6be47db) | [net] | bridge: fix bridge netlink RCU usage |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.1 | [`fed0a159c8c5`](https://git.kernel.org/torvalds/c/fed0a159c8c5) | [net] | bridge: fix link notification skb size calculation to include vlan ranges |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.1 | [`93a33a584e2a`](https://git.kernel.org/torvalds/c/93a33a584e2a) | [net] | bridge: fix lockdep splat |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.1 | [`8bd63cf1a426`](https://git.kernel.org/torvalds/c/8bd63cf1a426) | [net] | bridge: move mac header copying into br_netfilter |  | CONFIG_BRIDGE=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.1 | [`a5d280904050`](https://git.kernel.org/torvalds/c/a5d280904050) | [net] | codel: fix maxpacket/mtu confusion |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | 4.1 | [`b3cad287d13b`](https://git.kernel.org/torvalds/c/b3cad287d13b) | [net] | conntrack: RFC5961 challenge ACK confuse conntrack LAST-ACK transition |  | generic code, tag [net] | 3.10.0-265 |
| CANDIDATE | 4.1 | [`491da2a47707`](https://git.kernel.org/torvalds/c/491da2a47707) (loose) | [net] | constify sock_diag_check_cookie() |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.1 | [`e1622baf54df`](https://git.kernel.org/torvalds/c/e1622baf54df) | [net] | dev: set iflink to 0 for virtual interfaces |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.1 | [`79930f5892e1`](https://git.kernel.org/torvalds/c/79930f5892e1) (loose) | [net] | do not deplete pfmemalloc reserve |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 4.1 | [`fb05e7a89f50`](https://git.kernel.org/torvalds/c/fb05e7a89f50) (loose) | [net] | don't wait for order-3 page allocation |  | generic code, tag [net] | 3.10.0-359 |
| CANDIDATE | 4.1 | [`64aa42338e9a`](https://git.kernel.org/torvalds/c/64aa42338e9a) | [net] | esp4: Use high-order sequence number bits for IV generation |  | CONFIG_XFRM=y in A37 | 3.10.0-293 |
| CANDIDATE | 4.1 | [`6d7258ca9370`](https://git.kernel.org/torvalds/c/6d7258ca9370) | [net] | esp6: Use high-order sequence number bits for IV generation |  | CONFIG_XFRM=y in A37 | 3.10.0-293 |
| CANDIDATE | 4.1 | [`d340c862e760`](https://git.kernel.org/torvalds/c/d340c862e760) | [net] | ethtool: use "ops" name consistenty in ethtool_set_rxfh() |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.1 | [`8e05fd7166c6`](https://git.kernel.org/torvalds/c/8e05fd7166c6) | [net] | fib: hook IPv4 fib for hardware offload |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.1 | [`88bae7149a5e`](https://git.kernel.org/torvalds/c/88bae7149a5e) | [net] | fib_trie: Add key vector to root, return parent key_vector in resize |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`9b6ebad5c3a1`](https://git.kernel.org/torvalds/c/9b6ebad5c3a1) | [net] | fib_trie: Add slen to fib alias |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`dc35dbeda3e0`](https://git.kernel.org/torvalds/c/dc35dbeda3e0) | [net] | fib_trie: Add tnode struct as a container for fields not needed in key_vector |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`ddb4b9a1328e`](https://git.kernel.org/torvalds/c/ddb4b9a1328e) | [net] | fib_trie: Address possible NULL pointer dereference in resize |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`3c9e9f7320f0`](https://git.kernel.org/torvalds/c/3c9e9f7320f0) | [net] | fib_trie: Avoid NULL pointer if local table is not allocated |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 4.1 | [`6dede75b7e8e`](https://git.kernel.org/torvalds/c/6dede75b7e8e) | [net] | fib_trie: call fib_table_flush_external under RTNL |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.1 | [`6e47d6caff9e`](https://git.kernel.org/torvalds/c/6e47d6caff9e) | [net] | fib_trie: Cleanup ip_fib_net_exit code path |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 4.1 | [`56315f9e6e3a`](https://git.kernel.org/torvalds/c/56315f9e6e3a) | [net] | fib_trie: Convert fib_alias to hlist from list |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`3ec320dd5c94`](https://git.kernel.org/torvalds/c/3ec320dd5c94) | [net] | fib_trie: Correctly handle case of key == 0 in leaf_walk_rcu |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`d4a975e83f4d`](https://git.kernel.org/torvalds/c/d4a975e83f4d) | [net] | fib_trie: Fib find node should return parent |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`8be33e955cb9`](https://git.kernel.org/torvalds/c/8be33e955cb9) | [net] | fib_trie: Fib walk rcu should take a tnode and key instead of a trie and a leaf |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`b6f15f828d4b`](https://git.kernel.org/torvalds/c/b6f15f828d4b) | [net] | fib_trie: Fix regression in handling of inflate/halve failure |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`61f0d861fc69`](https://git.kernel.org/torvalds/c/61f0d861fc69) | [net] | fib_trie: Fix uninitialized variable warning |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 4.1 | [`ad88d0513638`](https://git.kernel.org/torvalds/c/ad88d0513638) | [net] | fib_trie: Fix warning on fib4_rules_exit |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 4.1 | [`a7e53531234d`](https://git.kernel.org/torvalds/c/a7e53531234d) | [net] | fib_trie: Make fib_table rcu safe |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 4.1 | [`a7e53531234d`](https://git.kernel.org/torvalds/c/a7e53531234d) | [net] | fib_trie: Make fib_table rcu safe |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`41b489fd6ce0`](https://git.kernel.org/torvalds/c/41b489fd6ce0) | [net] | fib_trie: move leaf and tnode to occupy the same spot in the key vector |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`f23e59fbd770`](https://git.kernel.org/torvalds/c/f23e59fbd770) | [net] | fib_trie: Move parent from key_vector to tnode |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`56ca2adf6ac1`](https://git.kernel.org/torvalds/c/56ca2adf6ac1) | [net] | fib_trie: Move rcu from key_vector to tnode, add accessors. |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`654eff45166c`](https://git.kernel.org/torvalds/c/654eff45166c) | [net] | fib_trie: Only display main table in /proc/net/route |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 4.1 | [`7289e6ddb633`](https://git.kernel.org/torvalds/c/7289e6ddb633) | [net] | fib_trie: Only resize tnodes once instead of on each leaf removal in fib_table_flush |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`1de3d87bcd2c`](https://git.kernel.org/torvalds/c/1de3d87bcd2c) | [net] | fib_trie: Prevent allocating tnode if bits is too big for size_t |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`0b65bd97ba5f`](https://git.kernel.org/torvalds/c/0b65bd97ba5f) | [net] | fib_trie: Provide a deterministic order for fib_alias w/ tables merged |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 4.1 | [`6e22d174ba29`](https://git.kernel.org/torvalds/c/6e22d174ba29) | [net] | fib_trie: Pull empty_children and full_children into tnode |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`79e5ad2ceb00`](https://git.kernel.org/torvalds/c/79e5ad2ceb00) | [net] | fib_trie: Remove leaf_info |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`35c6edac197f`](https://git.kernel.org/torvalds/c/35c6edac197f) | [net] | fib_trie: Rename tnode to key_vector |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`2e1ac88a4837`](https://git.kernel.org/torvalds/c/2e1ac88a4837) | [net] | fib_trie: Rename tnode_child_length to child_length |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`5786ec605499`](https://git.kernel.org/torvalds/c/5786ec605499) | [net] | fib_trie: Replace plen with slen in leaf_info |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`754baf8decce`](https://git.kernel.org/torvalds/c/754baf8decce) | [net] | fib_trie: replace tnode_get_child functions with get_child macros |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`8d8e810ca8ec`](https://git.kernel.org/torvalds/c/8d8e810ca8ec) | [net] | fib_trie: Return pointer to tnode pointer in resize/inflate/halve |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`d5d6487cb8f0`](https://git.kernel.org/torvalds/c/d5d6487cb8f0) | [net] | fib_trie: Update insert and delete to make use of tp from find_node |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`71e8b67d0fdd`](https://git.kernel.org/torvalds/c/71e8b67d0fdd) | [net] | fib_trie: Update last spot w/ idx >> n->bits code and explanation |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`2ea2f62c8bda`](https://git.kernel.org/torvalds/c/2ea2f62c8bda) (loose) | [net] | fix crash in build_skb() |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 4.1 | [`58025e46ea2d`](https://git.kernel.org/torvalds/c/58025e46ea2d) (loose) | [net] | gro: remove obsolete code from skb_gro_receive() |  | generic code, tag [net] | 3.10.0-461 |
| CANDIDATE | 4.1 | [`01a3d796813d`](https://git.kernel.org/torvalds/c/01a3d796813d) | [net] | if_link: Add an additional parameter to ifla_vf_info for RSS querying |  | generic code, tag [net] | 3.10.0-309 |
| CANDIDATE | 4.1 | [`959d10f6bbf6`](https://git.kernel.org/torvalds/c/959d10f6bbf6) | [net] | igmp: add __ip_mc_{join\|leave}_group() |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.1 | [`3f66b083a5b7`](https://git.kernel.org/torvalds/c/3f66b083a5b7) | [net] | inet: introduce ireq_family |  | generic code, tag [net] | 3.10.0-491 |
| CANDIDATE | 4.1 | [`34160ea3f9c9`](https://git.kernel.org/torvalds/c/34160ea3f9c9) | [net] | inet_diag: add const to inet_diag_req_v2 |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.1 | [`e31c5e0e4862`](https://git.kernel.org/torvalds/c/e31c5e0e4862) | [net] | inet_diag: cleanups |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.1 | [`a4458343ac59`](https://git.kernel.org/torvalds/c/a4458343ac59) | [net] | inet_diag: factorize code in new inet_diag_msg_common_fill() helper |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.1 | [`521f1cf1dbb9`](https://git.kernel.org/torvalds/c/521f1cf1dbb9) | [net] | inet_diag: fix access to tcp cc information |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | 4.1 | [`496127290f29`](https://git.kernel.org/torvalds/c/496127290f29) | [net] | inet_diag: remove duplicate code from inet_twsk_diag_dump() |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.1 | [`e38f30256b36`](https://git.kernel.org/torvalds/c/e38f30256b36) (loose) | [net] | Introduce passthru_features_check |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 4.1 | [`0c5c9fb55106`](https://git.kernel.org/torvalds/c/0c5c9fb55106) (loose) | [net] | Introduce possible_net_t |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 4.1 | [`ee9b9596a8dd`](https://git.kernel.org/torvalds/c/ee9b9596a8dd) | [net] | ipmr,ip6mr: implement ndo_get_iflink |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.1 | [`54ff9ef36bdf`](https://git.kernel.org/torvalds/c/54ff9ef36bdf) | [net] | ipv4, ipv6: kill ip_mc_{join, leave}_group and ipv6_sock_mc_{join, drop} |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.1 | [`448b128a1450`](https://git.kernel.org/torvalds/c/448b128a1450) | [net] | ipv4: add net bool fib_offload_disabled |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.1 | [`0ddcf43d5d4a`](https://git.kernel.org/torvalds/c/0ddcf43d5d4a) | [net] | ipv4: FIB Local/MAIN table collapse |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 4.1 | [`d4e64c290923`](https://git.kernel.org/torvalds/c/d4e64c290923) | [net] | ipv4: fill in table id when replacing a route |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 4.1 | [`b6a7719aedd7`](https://git.kernel.org/torvalds/c/b6a7719aedd7) | [net] | ipv4: hash net ptr into fragmentation bucket selection |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.1 | [`926a882f6916`](https://git.kernel.org/torvalds/c/926a882f6916) | [net] | ipv4: ip_tunnel: use net namespace from rtable not socket |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.1 | [`1b112871186e`](https://git.kernel.org/torvalds/c/1b112871186e) | [net] | ipv6: call iptunnel_xmit with NULL sock pointer if no tunnel sock is available |  | generic code, tag [net] | 3.10.0-284 |
| CANDIDATE | 4.1 | [`8e8e676d0b3c`](https://git.kernel.org/torvalds/c/8e8e676d0b3c) | [net] | ipv6: collapse state_lock and lock |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 4.1 | [`35f1b4e96b92`](https://git.kernel.org/torvalds/c/35f1b4e96b92) | [net] | ipv6: do not delete previously existing ECMP routes if add fails |  | generic code, tag [net] | 3.10.0-638 |
| CANDIDATE | 4.1 | [`5f40ef77adb2`](https://git.kernel.org/torvalds/c/5f40ef77adb2) | [net] | ipv6: do retries on stable privacy addresses |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 4.1 | [`c78ba6d64c78`](https://git.kernel.org/torvalds/c/c78ba6d64c78) | [net] | ipv6: expose RFC4191 route preference via rtnetlink |  | generic code, tag [net] | 3.10.0-755 |
| CANDIDATE | 4.1 | [`27596472473a`](https://git.kernel.org/torvalds/c/27596472473a) | [net] | ipv6: fix ECMP route replacement |  | generic code, tag [net] | 3.10.0-638 |
| CANDIDATE | 4.1 | [`ff40217e73fd`](https://git.kernel.org/torvalds/c/ff40217e73fd) | [net] | ipv6: fix sparse warnings in privacy stable addresses generation |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 4.1 | [`e87a468eb97d`](https://git.kernel.org/torvalds/c/e87a468eb97d) | [net] | ipv6: Fix udp checksums with raw sockets |  | generic code, tag [net] | 3.10.0-284 |
| CANDIDATE | 4.1 | [`622c81d57b39`](https://git.kernel.org/torvalds/c/622c81d57b39) | [net] | ipv6: generation of stable privacy addresses for link-local and autoconf |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 4.1 | [`5a352dd0a3aa`](https://git.kernel.org/torvalds/c/5a352dd0a3aa) | [net] | ipv6: hash net ptr into fragmentation bucket selection |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.1 | [`1855b7c3e853`](https://git.kernel.org/torvalds/c/1855b7c3e853) | [net] | ipv6: introduce idgen_delay and idgen_retries knobs |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 4.1 | [`64236f3f3d74`](https://git.kernel.org/torvalds/c/64236f3f3d74) | [net] | ipv6: introduce IFA_F_STABLE_PRIVACY flag |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 4.1 | [`3d1bec99320d`](https://git.kernel.org/torvalds/c/3d1bec99320d) | [net] | ipv6: introduce secret_stable to ipv6_devconf |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 4.1 | [`c4a6853d8fb2`](https://git.kernel.org/torvalds/c/c4a6853d8fb2) | [net] | ipv6: invert join/leave anycast rtnl/socket locking order |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.1 | [`efd7ef1c1929`](https://git.kernel.org/torvalds/c/efd7ef1c1929) (loose) | [net] | Kill hold_net release_net |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.1 | [`93a714d6b53d`](https://git.kernel.org/torvalds/c/93a714d6b53d) | [net] | multicast: Extend ip address command to enable multicast group join/leave on |  | generic code, tag [net] | 3.10.0-424 |
| CANDIDATE | 4.1 | [`145a42b3a964`](https://git.kernel.org/torvalds/c/145a42b3a964) | [net] | net_sched: gred: use correct backlog value in WRED mode |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.1 | [`33f8b9ecdb15`](https://git.kernel.org/torvalds/c/33f8b9ecdb15) | [net] | net_sched: move tp->root allocation into fw_init() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.1 | [`a05c2d112c0c`](https://git.kernel.org/torvalds/c/a05c2d112c0c) | [net] | net_sched: move tp->root allocation into route4_init() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.1 | [`4586f1bb911c`](https://git.kernel.org/torvalds/c/4586f1bb911c) | [net] | netdevice: add IPv4 fib add/del ops |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.1 | [`0ad2a8365975`](https://git.kernel.org/torvalds/c/0ad2a8365975) | [net] | netem: Fixes byte backlog accounting for the first of two chained netem instances |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 4.1 | [`107a9f4dc921`](https://git.kernel.org/torvalds/c/107a9f4dc921) | [net] | netfilter: Add nf_hook_state initializer function |  | CONFIG_NETFILTER=y in A37 | 3.10.0-284 |
| CANDIDATE | 4.1 | [`1c984f8a5df0`](https://git.kernel.org/torvalds/c/1c984f8a5df0) | [net] | netfilter: Add socket pointer to nf_hook_state |  | CONFIG_NETFILTER=y in A37 | 3.10.0-284 |
| CANDIDATE | 4.1 | [`383307838d41`](https://git.kernel.org/torvalds/c/383307838d41) | [net] | netfilter: bridge: add and use nf_bridge_info_get helper |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.1 | [`c737b7c45100`](https://git.kernel.org/torvalds/c/c737b7c45100) | [net] | netfilter: bridge: add helpers for fetching physin/outdev |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.1 | [`e70deecbf8e1`](https://git.kernel.org/torvalds/c/e70deecbf8e1) | [net] | netfilter: bridge: don't use nf_bridge_info data to store mac header |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.1 | [`547c4b547e07`](https://git.kernel.org/torvalds/c/547c4b547e07) | [net] | netfilter: bridge: fix NULL deref in physin/out ifindex helpers |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.1 | [`8d0451638ad3`](https://git.kernel.org/torvalds/c/8d0451638ad3) | [net] | netfilter: bridge: kill nf_bridge_pad |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.1 | [`a1e67951e6c0`](https://git.kernel.org/torvalds/c/a1e67951e6c0) | [net] | netfilter: bridge: make BRNF_PKT_TYPE flag a bool |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.1 | [`e5de75bf8885`](https://git.kernel.org/torvalds/c/e5de75bf8885) | [net] | netfilter: bridge: move DNAT helper to br_netfilter |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.1 | [`4a9d2f200862`](https://git.kernel.org/torvalds/c/4a9d2f200862) | [net] | netfilter: bridge: move nf_bridge_update_protocol to where its used |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.1 | [`c055d5b03bb4`](https://git.kernel.org/torvalds/c/c055d5b03bb4) | [net] | netfilter: bridge: query conntrack about skb dnat |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.1 | [`0b67c43ce36a`](https://git.kernel.org/torvalds/c/0b67c43ce36a) | [net] | netfilter: bridge: really save frag_max_size between PRE and POST_ROUTING |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.1 | [`7a8d831df581`](https://git.kernel.org/torvalds/c/7a8d831df581) | [net] | netfilter: bridge: refactor conditional in br_nf_dev_queue_xmit |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.1 | [`e4bb9bcbfb7d`](https://git.kernel.org/torvalds/c/e4bb9bcbfb7d) | [net] | netfilter: bridge: remove BRNF_STATE_BRIDGED flag |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.1 | [`72500bc11e4d`](https://git.kernel.org/torvalds/c/72500bc11e4d) | [net] | netfilter: bridge: rework reject handling |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.1 | [`3eaf402502e4`](https://git.kernel.org/torvalds/c/3eaf402502e4) | [net] | netfilter: bridge: start splitting mask into public/private chunks |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.1 | [`1a4ba64d16a4`](https://git.kernel.org/torvalds/c/1a4ba64d16a4) | [net] | netfilter: bridge: use rcu hook to resolve br_netfilter dependency |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.1 | [`fa3773211eb6`](https://git.kernel.org/torvalds/c/fa3773211eb6) | [net] | netfilter: Convert nft_hash to inlined rhashtable |  | CONFIG_NETFILTER=y in A37 | 3.10.0-368 |
| CANDIDATE | 4.1 | [`cfdfab314647`](https://git.kernel.org/torvalds/c/cfdfab314647) | [net] | netfilter: Create and use nf_hook_state |  | CONFIG_NETFILTER=y in A37 | 3.10.0-284 |
| CANDIDATE | 4.1 | [`a03a8dbe20ef`](https://git.kernel.org/torvalds/c/a03a8dbe20ef) | [net] | netfilter: fix sparse warnings in reject handling |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.1 | [`c1f866767777`](https://git.kernel.org/torvalds/c/c1f866767777) | [net] | netfilter: Fix switch statement warnings with recent gcc. |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.1 | [`238e54c9cb93`](https://git.kernel.org/torvalds/c/238e54c9cb93) | [net] | netfilter: Make nf_hookfn use nf_hook_state |  | CONFIG_NETFILTER=y in A37 | 3.10.0-284 |
| CANDIDATE | 4.1 | [`b85c3dc9bd53`](https://git.kernel.org/torvalds/c/b85c3dc9bd53) | [net] | netfilter: Pass nf_hook_state through arpt_do_table() |  | CONFIG_NETFILTER=y in A37 | 3.10.0-284 |
| CANDIDATE | 4.1 | [`8f8a37152df4`](https://git.kernel.org/torvalds/c/8f8a37152df4) | [net] | netfilter: Pass nf_hook_state through ip6t_do_table() |  | CONFIG_NETFILTER=y in A37 | 3.10.0-284 |
| CANDIDATE | 4.1 | [`1c491ba2592f`](https://git.kernel.org/torvalds/c/1c491ba2592f) | [net] | netfilter: Pass nf_hook_state through ipt_do_table() |  | CONFIG_NETFILTER=y in A37 | 3.10.0-284 |
| CANDIDATE | 4.1 | [`073bfd568604`](https://git.kernel.org/torvalds/c/073bfd568604) | [net] | netfilter: Pass nf_hook_state through nft_set_pktinfo*() |  | CONFIG_NETFILTER=y in A37 | 3.10.0-284 |
| CANDIDATE | 4.1 | [`7026b1ddb6b8`](https://git.kernel.org/torvalds/c/7026b1ddb6b8) | [net] | netfilter: Pass socket pointer down through okfn() |  | CONFIG_NETFILTER=y in A37 | 3.10.0-284 |
| CANDIDATE | 4.1 | [`ee586bbc28fb`](https://git.kernel.org/torvalds/c/ee586bbc28fb) | [net] | netfilter: reject: don't send icmp error if csum is invalid |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.1 | [`1d1de89b9a47`](https://git.kernel.org/torvalds/c/1d1de89b9a47) | [net] | netfilter: Use nf_hook_state in nf_queue_entry |  | CONFIG_NETFILTER=y in A37 | 3.10.0-284 |
| CANDIDATE | 4.1 | [`a8399231f0b6`](https://git.kernel.org/torvalds/c/a8399231f0b6) | [net] | netfilter: use sk_fullsock() helper |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.1 | [`afb7718016fc`](https://git.kernel.org/torvalds/c/afb7718016fc) | [net] | netfilter: x_tables: fix cgroup matching on non-full sks |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.1 | [`129d23a56623`](https://git.kernel.org/torvalds/c/129d23a56623) | [net] | netfilter; Add some missing default cases to switch statements in nft_reject. |  | generic code, tag [net] | 3.10.0-458 |
| CANDIDATE | 4.1 | [`67b61f6c130a`](https://git.kernel.org/torvalds/c/67b61f6c130a) | [net] | netlink: implement nla_get_in_addr and nla_get_in6_addr |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 4.1 | [`930345ea6304`](https://git.kernel.org/torvalds/c/930345ea6304) | [net] | netlink: implement nla_put_in_addr and nla_put_in6_addr |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 4.1 | [`c428ecd1a21f`](https://git.kernel.org/torvalds/c/c428ecd1a21f) | [net] | netlink: Move namespace into hash key |  | generic code, tag [net] | 3.10.0-368 |
| CANDIDATE | 4.1 | [`c0bb07df7d98`](https://git.kernel.org/torvalds/c/c0bb07df7d98) | [net] | netlink: Reset portid after netlink_insert failure |  | generic code, tag [net] | 3.10.0-368 |
| CANDIDATE | 4.1 | [`b06eee59b1e5`](https://git.kernel.org/torvalds/c/b06eee59b1e5) | [net] | netlink: Use rhashtable max_size instead of max_shift |  | generic code, tag [net] | 3.10.0-368 |
| CANDIDATE | 4.1 | [`a143c40c32bb`](https://git.kernel.org/torvalds/c/a143c40c32bb) | [net] | netns: allow to dump netns ids |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.1 | [`b111e4e11123`](https://git.kernel.org/torvalds/c/b111e4e11123) | [net] | netns: minor cleanup in rtnl_net_getid() |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.1 | [`9a9634545c70`](https://git.kernel.org/torvalds/c/9a9634545c70) | [net] | netns: notify netns id events |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.1 | [`5a950ad58d41`](https://git.kernel.org/torvalds/c/5a950ad58d41) | [net] | netns: remove duplicated include from net_namespace.c |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.1 | [`e3d8ecb70e16`](https://git.kernel.org/torvalds/c/e3d8ecb70e16) | [net] | netns: return RTM_NEWNSID instead of RTM_GETNSID on a get |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.1 | [`05e8bb860b55`](https://git.kernel.org/torvalds/c/05e8bb860b55) | [net] | pkt_sched: fq: correct spelling of locally |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 4.1 | [`287f3a943fef`](https://git.kernel.org/torvalds/c/287f3a943fef) | [net] | pppoe: Use workqueue to die properly when a PADT is received |  | CONFIG_PPP=y in A37 | 3.10.0-246 |
| CANDIDATE | 4.1 | [`92f1719407b9`](https://git.kernel.org/torvalds/c/92f1719407b9) | [net] | ptp: introduce get/set time methods with explicit 64 bit seconds |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.1 | [`d7d38f5bd7be`](https://git.kernel.org/torvalds/c/d7d38f5bd7be) | [net] | ptp: use the 64 bit get/set time methods for the posix clock |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.1 | [`e13cfcb03eec`](https://git.kernel.org/torvalds/c/e13cfcb03eec) | [net] | ptp: use the 64 bit gettime method for the SYS_OFFSET ioctl |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.1 | [`059a2440fd3c`](https://git.kernel.org/torvalds/c/059a2440fd3c) (loose) | [net] | Remove state argument from skb_find_text() |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.1 | [`8b86a61da37c`](https://git.kernel.org/torvalds/c/8b86a61da37c) (loose) | [net] | remove unused 'dev' argument from netif_needs_gso() |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 4.1 | [`eea39946a1f3`](https://git.kernel.org/torvalds/c/eea39946a1f3) | [net] | rename RTNH_F_EXTERNAL to RTNH_F_OFFLOAD |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.1 | [`faecbb45ebef`](https://git.kernel.org/torvalds/c/faecbb45ebef) | [net] | revert "netfilter: bridge: query conntrack about skb dnat" |  | generic code, tag [net] | 3.10.0-359 |
| CANDIDATE | 4.1 | [`cb6ccf09d6b9`](https://git.kernel.org/torvalds/c/cb6ccf09d6b9) | [net] | route: Use ipv4_mtu instead of raw rt_pmtu |  | generic code, tag [net] | 3.10.0-818 |
| CANDIDATE | 4.1 | [`37ed9493699c`](https://git.kernel.org/torvalds/c/37ed9493699c) | [net] | rtnetlink: add RTNH_F_EXTERNAL flag for fib offload |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.1 | [`78ebb0d00b49`](https://git.kernel.org/torvalds/c/78ebb0d00b49) | [net] | rtnetlink: Mark name argument of rtnl_create_link() const |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.1 | [`ed2a80ab7b76`](https://git.kernel.org/torvalds/c/ed2a80ab7b76) | [net] | rtnl/bond: don't send rtnl msg for unregistered iface |  | generic code, tag [net] | 3.10.0-389 |
| CANDIDATE | 4.1 | [`7c95a9d962f9`](https://git.kernel.org/torvalds/c/7c95a9d962f9) | [net] | samples/pktgen: Add sample scripts for pktgen facility |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.1 | [`2ad1cdf2ea59`](https://git.kernel.org/torvalds/c/2ad1cdf2ea59) | [net] | samples/pktgen: Correct comments about the thread config |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.1 | [`865367db658f`](https://git.kernel.org/torvalds/c/865367db658f) | [net] | samples/pktgen: Delete unused function pg() |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.1 | [`06481f22c6fa`](https://git.kernel.org/torvalds/c/06481f22c6fa) | [net] | samples/pktgen: Remove setting of obsolete max_before_softirq parameter |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.1 | [`4062bd25f0be`](https://git.kernel.org/torvalds/c/4062bd25f0be) | [net] | samples/pktgen: Show the results rather than just commenting where they are |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.1 | [`16b5d0c4a24c`](https://git.kernel.org/torvalds/c/16b5d0c4a24c) | [net] | samples/pktgen: Trap SIGINT |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.1 | [`db72aba30a4f`](https://git.kernel.org/torvalds/c/db72aba30a4f) | [net] | samples/pktgen: Use bash as interpreter |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.1 | [`c78e1746d3ad`](https://git.kernel.org/torvalds/c/c78e1746d3ad) (loose) | [net] | sched: fix call_rcu() race on classifier module unloads |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | 4.1 | [`213dd74aee76`](https://git.kernel.org/torvalds/c/213dd74aee76) | [net] | skbuff: Do not scrub skb mark within the same name space |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.1 | [`0df48c26d841`](https://git.kernel.org/torvalds/c/0df48c26d841) | [net] | tcp: add tcpi_bytes_acked to tcp_info |  | generic code, tag [net] | 3.10.0-352 |
| CANDIDATE | 4.1 | [`bdd1f9edacb5`](https://git.kernel.org/torvalds/c/bdd1f9edacb5) | [net] | tcp: add tcpi_bytes_received to tcp_info |  | generic code, tag [net] | 3.10.0-352 |
| CANDIDATE | 4.1 | [`d654976cbf85`](https://git.kernel.org/torvalds/c/d654976cbf85) | [net] | tcp: fix a potential deadlock in tcp_get_info() |  | generic code, tag [net] | 3.10.0-352 |
| CANDIDATE | 4.1 | [`9f950415e4e2`](https://git.kernel.org/torvalds/c/9f950415e4e2) | [net] | tcp: fix child sockets to use system default congestion control if not set |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 4.1 | [`0144a81cccf7`](https://git.kernel.org/torvalds/c/0144a81cccf7) | [net] | tcp: fix ipv4 mapped request socks |  | generic code, tag [net] | 3.10.0-491 |
| CANDIDATE | 4.1 | [`2646c831c00c`](https://git.kernel.org/torvalds/c/2646c831c00c) | [net] | tcp: RFC7413 option support for Fast Open client |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 4.1 | [`7f9b838b71eb`](https://git.kernel.org/torvalds/c/7f9b838b71eb) | [net] | tcp: RFC7413 option support for Fast Open server |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 4.1 | [`8f55db48608b`](https://git.kernel.org/torvalds/c/8f55db48608b) | [net] | tcp: simplify inetpeer_addr_base use |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 4.1 | [`fad9dfefea64`](https://git.kernel.org/torvalds/c/fad9dfefea64) | [net] | tcp: tcp_get_info() should fetch socket fields once |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | 4.1 | [`7970ddc8f9ff`](https://git.kernel.org/torvalds/c/7970ddc8f9ff) | [net] | tcp: uninline tcp_oow_rate_limited() | CVE-2016-5696 | generic code, tag [net] | 3.10.0-475 |
| CANDIDATE | 4.1 | [`79b16aadea32`](https://git.kernel.org/torvalds/c/79b16aadea32) | [net] | udp_tunnel: Pass UDP socket down through udp_tunnel{, 6}_xmit_skb() |  | generic code, tag [net] | 3.10.0-284 |
| CANDIDATE | 4.1 | [`b736a623bd09`](https://git.kernel.org/torvalds/c/b736a623bd09) | [net] | udptunnels: Call handle_offloads after inserting vlan tag |  | generic code, tag [net] | 3.10.0-284 |
| CANDIDATE | 4.1 | [`d1ab39f17f86`](https://git.kernel.org/torvalds/c/d1ab39f17f86) (loose) | [net] | unix: garbage: fixed several comment and whitespace style issues | CVE-2013-4312 | CONFIG_UNIX=y in A37 | 3.10.0-352 |
| CANDIDATE | 4.1 | [`4577139b2dab`](https://git.kernel.org/torvalds/c/4577139b2dab) (loose) | [net] | use jump label patching for ingress qdisc in __netif_receive_skb_core |  | generic code, tag [net] | 3.10.0-625 |
| CANDIDATE | 4.1 | [`a45253bf32bf`](https://git.kernel.org/torvalds/c/a45253bf32bf) | [net] | veth: set iflink to the peer veth |  | CONFIG_VETH=y in A37 | 3.10.0-260 |
| CANDIDATE | 4.1 | [`ccd740cbc6e0`](https://git.kernel.org/torvalds/c/ccd740cbc6e0) | [net] | vti6: Add pmtu handling to vti6_xmit |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 4.1 | [`092a29a40bab`](https://git.kernel.org/torvalds/c/092a29a40bab) | [net] | vti6: fix uninit when using x-netns |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 4.1 | [`407d34ef2947`](https://git.kernel.org/torvalds/c/407d34ef2947) | [net] | xfrm: Always zero high-order sequence number bits |  | CONFIG_XFRM=y in A37 | 3.10.0-293 |
| CANDIDATE | 4.1 | [`bdddbf6996c0`](https://git.kernel.org/torvalds/c/bdddbf6996c0) | [net] | xfrm: fix a race in xfrm_state_lookup_byspi |  | CONFIG_XFRM=y in A37 | 3.10.0-1018 |
| CANDIDATE | 4.1 | [`68c11e98ef67`](https://git.kernel.org/torvalds/c/68c11e98ef67) | [net] | xfrm: fix xfrm_input/xfrm_tunnel_check oops |  | CONFIG_XFRM=y in A37 | 3.10.0-345 |
| CANDIDATE | 4.1 | [`049f8e2e28d9`](https://git.kernel.org/torvalds/c/049f8e2e28d9) | [net] | xfrm: Override skb->mark with tunnel->parm.i_key in xfrm_input |  | CONFIG_XFRM=y in A37 | 3.10.0-281 |
| CANDIDATE | 4.1 | [`15e318bdc6df`](https://git.kernel.org/torvalds/c/15e318bdc6df) | [net] | xfrm: simplify xfrm_address_t use |  | CONFIG_XFRM=y in A37 | 3.10.0-281 |
| CANDIDATE | 4.2 | [`1cf51900f854`](https://git.kernel.org/torvalds/c/1cf51900f854) (loose) | [net] | add CONFIG_NET_INGRESS to enable ingress filtering |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.2 | [`bdef7de4b8d9`](https://git.kernel.org/torvalds/c/bdef7de4b8d9) (loose) | [net] | Add priority to packet_offload objects |  | generic code, tag [net] | 3.10.0-318 |
| CANDIDATE | 4.2 | [`181edb2bfa22`](https://git.kernel.org/torvalds/c/181edb2bfa22) (loose) | [net] | Add skb_free_frag to replace use of put_page in freeing skb->head |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 4.2 | [`50fb79928950`](https://git.kernel.org/torvalds/c/50fb79928950) (loose) | [net] | Add skb_get_hash_perturb |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | 4.2 | [`2b514574f7e8`](https://git.kernel.org/torvalds/c/2b514574f7e8) (loose) | [net] | af_unix: implement splice for stream af_unix sockets |  | CONFIG_UNIX=y in A37 | 3.10.0-271 |
| CANDIDATE | 4.2 | [`869e7c62486e`](https://git.kernel.org/torvalds/c/869e7c62486e) (loose) | [net] | af_unix: implement stream sendpage support |  | CONFIG_UNIX=y in A37 | 3.10.0-271 |
| CANDIDATE | 4.2 | [`279c6c7fa64f`](https://git.kernel.org/torvalds/c/279c6c7fa64f) | [net] | api: fix compatibility of linux/in.h with netinet/in.h |  | generic code, tag [net] | 3.10.0-1015 |
| CANDIDATE | 4.2 | [`4ffd3c730e7b`](https://git.kernel.org/torvalds/c/4ffd3c730e7b) (loose) | [net] | batch of last_rx update avoidance in ethernet drivers |  | generic code, tag [net] | 3.10.0-709 |
| CANDIDATE | 4.2 | [`6ae4ae8e512b`](https://git.kernel.org/torvalds/c/6ae4ae8e512b) | [net] | bridge: allow setting hash_max + multicast_router if interface is down |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.2 | [`784b58a327ad`](https://git.kernel.org/torvalds/c/784b58a327ad) | [net] | bridge: change BR_GROUPFWD_RESTRICTED to allow forwarding of LLDP frames |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.2 | [`b4ad7baa0197`](https://git.kernel.org/torvalds/c/b4ad7baa0197) | [net] | bridge: del external_learned fdbs from device on flush or ageout |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.2 | [`df356d5e81b0`](https://git.kernel.org/torvalds/c/df356d5e81b0) | [net] | bridge: Fix network header pointer for vlan tagged packets |  | CONFIG_BRIDGE=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.2 | [`8c86f967dd24`](https://git.kernel.org/torvalds/c/8c86f967dd24) | [net] | bridge: make br_fdb_delete also check if the port matches |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.2 | [`544586f742b4`](https://git.kernel.org/torvalds/c/544586f742b4) | [net] | bridge: mcast: give fast leave precedence over multicast router and querier |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.2 | [`51ed7f3e7d33`](https://git.kernel.org/torvalds/c/51ed7f3e7d33) | [net] | bridge: mdb: allow the user to delete mdb entry if there's a querier |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.2 | [`7ae90a4f9648`](https://git.kernel.org/torvalds/c/7ae90a4f9648) | [net] | bridge: mdb: fix delmdb state in the notification |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.2 | [`f7e2965db17d`](https://git.kernel.org/torvalds/c/f7e2965db17d) | [net] | bridge: mdb: start delete timer for temp static entries |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.2 | [`9aa66382163e`](https://git.kernel.org/torvalds/c/9aa66382163e) | [net] | bridge: multicast: add a comment to br_port_state_selection about blocking state |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.2 | [`3c9e4f870012`](https://git.kernel.org/torvalds/c/3c9e4f870012) | [net] | bridge: multicast: call skb_checksum_{simple_, }validate |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.2 | [`754bc547f0a7`](https://git.kernel.org/torvalds/c/754bc547f0a7) | [net] | bridge: multicast: restore router configuration on port link down/up |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.2 | [`7ce42de1895d`](https://git.kernel.org/torvalds/c/7ce42de1895d) | [net] | bridge: multicast: start querier timer when running user-space stp |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.2 | [`bc8c20acaea1`](https://git.kernel.org/torvalds/c/bc8c20acaea1) | [net] | bridge: multicast: treat igmpv3 report with INCLUDE and no sources as a leave |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.2 | [`355b9f9df1f0`](https://git.kernel.org/torvalds/c/355b9f9df1f0) | [net] | bridge: netlink: account for the IFLA_BRPORT_PROXYARP attribute size and policy |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.2 | [`786c2077ec8e`](https://git.kernel.org/torvalds/c/786c2077ec8e) | [net] | bridge: netlink: account for the IFLA_BRPORT_PROXYARP_WIFI attribute size and policy |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.2 | [`963ad9485300`](https://git.kernel.org/torvalds/c/963ad9485300) | [net] | bridge: netlink: fix slave_changelink/br_setport race conditions |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.2 | [`41c498b9359e`](https://git.kernel.org/torvalds/c/41c498b9359e) | [net] | bridge: restore br_setlink back to original |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.2 | [`8508025c598b`](https://git.kernel.org/torvalds/c/8508025c598b) | [net] | bridge: revert br_dellink change back to original |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.2 | [`eb8d7baae215`](https://git.kernel.org/torvalds/c/eb8d7baae215) | [net] | bridge: skip fdb add if the port shouldn't learn |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.2 | [`76b91c32dd86`](https://git.kernel.org/torvalds/c/76b91c32dd86) | [net] | bridge: stp: when using userspace stp stop kernel hello and hold timers |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.2 | [`7f1095394918`](https://git.kernel.org/torvalds/c/7f1095394918) | [net] | bridge: use either ndo VLAN ops or switchdev VLAN ops to install MASTER vlans |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.2 | [`462e1ead9296`](https://git.kernel.org/torvalds/c/462e1ead9296) | [net] | bridge: vlan: fix usage of vlan 0 and 4095 again |  | CONFIG_BRIDGE=y in A37 | 3.10.0-302 |
| CANDIDATE | 4.2 | [`1ea2d020ba47`](https://git.kernel.org/torvalds/c/1ea2d020ba47) | [net] | bridge: vlan: flush the dynamically learned entries on port vlan delete |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.2 | [`6cbfb1bb66e4`](https://git.kernel.org/torvalds/c/6cbfb1bb66e4) | [wireless] | cfg80211: ignore netif running state when changing iftype |  | CONFIG_CFG80211=y in A37 | 3.10.0-318 |
| CANDIDATE | 4.2 | [`1bd758eb1cab`](https://git.kernel.org/torvalds/c/1bd758eb1cab) (loose) | [net] | change name of flow_dissector header to match the .c file name |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.2 | [`80ba92fa1a92`](https://git.kernel.org/torvalds/c/80ba92fa1a92) | [net] | codel: add ce_threshold attribute |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | 4.2 | [`e7582bab5d28`](https://git.kernel.org/torvalds/c/e7582bab5d28) (loose) | [net] | dev: reduce both ingress hook ifdefs |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.2 | [`e9e4dd3267d0`](https://git.kernel.org/torvalds/c/e9e4dd3267d0) (loose) | [net] | do not process device backlog during unregistration |  | generic code, tag [net] | 3.10.0-300 |
| CANDIDATE | 4.2 | [`8cf6f497de40`](https://git.kernel.org/torvalds/c/8cf6f497de40) | [net] | ethtool: Add helper routines to pass vf to rx_flow_spec |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 4.2 | [`9afd85c9e455`](https://git.kernel.org/torvalds/c/9afd85c9e455) (loose) | [net] | Export IGMP/MLD message validation code |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | 4.2 | [`1513069edcf8`](https://git.kernel.org/torvalds/c/1513069edcf8) | [net] | fib_trie: Drop unnecessary calls to leaf_pull_suffix |  | generic code, tag [net] | 3.10.0-302 |
| CANDIDATE | 4.2 | [`ba51b6be38c1`](https://git.kernel.org/torvalds/c/ba51b6be38c1) (loose) | [net] | Fix RCU splat in af_key |  | generic code, tag [net] | 3.10.0-1064 |
| CANDIDATE | 4.2 | [`c91d46065209`](https://git.kernel.org/torvalds/c/c91d46065209) (loose) | [net] | fix two sparse errors |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.2 | [`fcba67c94abe`](https://git.kernel.org/torvalds/c/fcba67c94abe) (loose) | [net] | fix two sparse warnings introduced by IGMP/MLD parsing exports |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | 4.2 | [`a516993f0ac1`](https://git.kernel.org/torvalds/c/a516993f0ac1) (loose) | [net] | fix wrong skb_get() usage / crash in IGMP/MLD parsing code |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | 4.2 | [`c3f8eaeb6ea5`](https://git.kernel.org/torvalds/c/c3f8eaeb6ea5) | [net] | flow_dissector: add missing header includes |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.2 | [`6a74fcf426f5`](https://git.kernel.org/torvalds/c/6a74fcf426f5) | [net] | flow_dissector: add support for dst, hop-by-hop and routing ext hdrs |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.2 | [`59346afe7a55`](https://git.kernel.org/torvalds/c/59346afe7a55) | [net] | flow_dissector: change port array into src, dst tuple |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.2 | [`12c227ec89a7`](https://git.kernel.org/torvalds/c/12c227ec89a7) | [net] | flow_dissector: do not break if ports are not needed in flowlabel |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.2 | [`d4fd32757176`](https://git.kernel.org/torvalds/c/d4fd32757176) | [net] | flow_dissector: fix doc for __skb_get_hash and remove couple of empty lines |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.2 | [`0db89b8b3243`](https://git.kernel.org/torvalds/c/0db89b8b3243) | [net] | flow_dissector: fix doc for skb_get_poff |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.2 | [`1e98a0f08abd`](https://git.kernel.org/torvalds/c/1e98a0f08abd) | [net] | flow_dissector: fix ipv6 dst, hop-by-hop and routing ext hdrs |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.2 | [`611d23c559a3`](https://git.kernel.org/torvalds/c/611d23c559a3) | [net] | flow_dissector: Fix MPLS entropy label handling in flow dissector |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.2 | [`fbff949e3bc7`](https://git.kernel.org/torvalds/c/fbff949e3bc7) | [net] | flow_dissector: introduce programable flow_dissector |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.2 | [`67a900cc0436`](https://git.kernel.org/torvalds/c/67a900cc0436) | [net] | flow_dissector: introduce support for Ethernet addresses |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.2 | [`b924933cbbfb`](https://git.kernel.org/torvalds/c/b924933cbbfb) | [net] | flow_dissector: introduce support for ipv6 addressses |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.2 | [`8e690ffdbcc7`](https://git.kernel.org/torvalds/c/8e690ffdbcc7) | [net] | flow_dissector: Pre-initialize ip_proto in __skb_flow_dissect() |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.2 | [`74b80e841b4d`](https://git.kernel.org/torvalds/c/74b80e841b4d) | [net] | flow_dissector: remove bogus return in tipc section |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.2 | [`b0a31431b4d8`](https://git.kernel.org/torvalds/c/b0a31431b4d8) | [net] | flow_dissector: remove unused function flow_get_hlen declaration |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.2 | [`d339727c2b1a`](https://git.kernel.org/torvalds/c/d339727c2b1a) (loose) | [net] | graceful exit from netif_alloc_netdev_queues() |  | generic code, tag [net] | 3.10.0-300 |
| CANDIDATE | 4.2 | [`04c52dec1473`](https://git.kernel.org/torvalds/c/04c52dec1473) (loose) | [net] | include missing headers in net/net_namespace.h |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.2 | [`90c337da1524`](https://git.kernel.org/torvalds/c/90c337da1524) | [net] | inet: add IP_BIND_ADDRESS_NO_PORT to overcome bind(0) limitations |  | generic code, tag [net] | 3.10.0-558 |
| CANDIDATE | 4.2 | [`8220ea232431`](https://git.kernel.org/torvalds/c/8220ea232431) (loose) | [net] | inet_diag: always export IPV6_V6ONLY sockopt for listening sockets |  | generic code, tag [net] | 3.10.0-302 |
| CANDIDATE | 4.2 | [`204621551b2a`](https://git.kernel.org/torvalds/c/204621551b2a) (loose) | [net] | inet_diag: export IPV6_V6ONLY sockopt |  | generic code, tag [net] | 3.10.0-302 |
| CANDIDATE | 4.2 | [`33b1f3139286`](https://git.kernel.org/torvalds/c/33b1f3139286) (loose) | [net] | ip_fragment: remove BRIDGE_NETFILTER mtu special handling |  | generic code, tag [net] | 3.10.0-359 |
| CANDIDATE | 4.2 | [`fc24f2b20943`](https://git.kernel.org/torvalds/c/fc24f2b20943) | [net] | ip_tunnel: fix ipv4 pmtu check to honor inner ip header df |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 4.2 | [`c24a59649f3c`](https://git.kernel.org/torvalds/c/c24a59649f3c) | [net] | ip_tunnel: Report Rx dropped in ip_tunnel_get_stats64 |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | 4.2 | [`7d771aaac7b2`](https://git.kernel.org/torvalds/c/7d771aaac7b2) | [net] | ipv4: __ip_local_out_sk() is static |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 4.2 | [`c5501eb3406d`](https://git.kernel.org/torvalds/c/c5501eb3406d) (loose) | [net] | ipv4: avoid repeated calls to ip_skb_dst_mtu helper |  | generic code, tag [net] | 3.10.0-340 |
| CANDIDATE | 4.2 | [`2392debc2be7`](https://git.kernel.org/torvalds/c/2392debc2be7) | [net] | ipv4: consider TOS in fib_select_default |  | generic code, tag [net] | 3.10.0-882 |
| CANDIDATE | 4.2 | [`18a912e9a832`](https://git.kernel.org/torvalds/c/18a912e9a832) | [net] | ipv4: fib_select_default should match the prefix |  | generic code, tag [net] | 3.10.0-882 |
| CANDIDATE | 4.2 | [`a2bb6d7d6f42`](https://git.kernel.org/torvalds/c/a2bb6d7d6f42) | [net] | ipv4: include NLM_F_APPEND flag in append route notifications |  | generic code, tag [net] | 3.10.0-647 |
| CANDIDATE | 4.2 | [`25b97c016b26`](https://git.kernel.org/torvalds/c/25b97c016b26) | [net] | ipv4: off-by-one in continuation handling in /proc/net/route |  | generic code, tag [net] | 3.10.0-308 |
| CANDIDATE | 4.2 | [`b197df4f0f37`](https://git.kernel.org/torvalds/c/b197df4f0f37) | [net] | ipv6: Add rt6_get_cookie() function |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.2 | [`a73e4195636c`](https://git.kernel.org/torvalds/c/a73e4195636c) | [net] | ipv6: Add rt6_make_pcpu_route() |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.2 | [`83a09abd1a8b`](https://git.kernel.org/torvalds/c/83a09abd1a8b) | [net] | ipv6: Break up ip6_rt_copy() |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.2 | [`7035870d1219`](https://git.kernel.org/torvalds/c/7035870d1219) | [net] | ipv6: Check RTF_LOCAL on rt->rt6i_flags instead of rt->dst.flags |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.2 | [`286c2349f666`](https://git.kernel.org/torvalds/c/286c2349f666) | [net] | ipv6: Clean up ipv6_select_ident() and ip6_fragment() |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.2 | [`8b9df2657704`](https://git.kernel.org/torvalds/c/8b9df2657704) | [net] | ipv6: Combine rt6_alloc_cow and rt6_alloc_clone |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.2 | [`1f56a01f4ed1`](https://git.kernel.org/torvalds/c/1f56a01f4ed1) | [net] | ipv6: Consider RTF_CACHE when searching the fib6 tree |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.2 | [`d52d3997f843`](https://git.kernel.org/torvalds/c/d52d3997f843) | [net] | ipv6: Create percpu rt6_info |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.2 | [`3da59bd94583`](https://git.kernel.org/torvalds/c/3da59bd94583) | [net] | ipv6: Create RTF_CACHE clone when FLOWI_FLAG_KNOWN_NH is set |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.2 | [`485fca664d76`](https://git.kernel.org/torvalds/c/485fca664d76) | [net] | ipv6: don't increase size when refragmenting forwarded ipv6 skbs |  | generic code, tag [net] | 3.10.0-622 |
| CANDIDATE | 4.2 | [`330567b71d87`](https://git.kernel.org/torvalds/c/330567b71d87) | [net] | ipv6: don't reject link-local nexthop on other interface |  | generic code, tag [net] | 3.10.0-306 |
| CANDIDATE | 4.2 | [`9fbdcfaf97bf`](https://git.kernel.org/torvalds/c/9fbdcfaf97bf) | [net] | ipv6: Extend the route lookups to low priority metrics |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.2 | [`9c7370a166b4`](https://git.kernel.org/torvalds/c/9c7370a166b4) | [net] | ipv6: Fix a potential deadlock when creating pcpu rt |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.2 | [`c8507fb235be`](https://git.kernel.org/torvalds/c/c8507fb235be) | [net] | ipv6: flush nd cache on IFF_NOARP change |  | generic code, tag [net] | 3.10.0-930 |
| CANDIDATE | 4.2 | [`7f1598678d4c`](https://git.kernel.org/torvalds/c/7f1598678d4c) | [net] | ipv6: ipv6_select_ident() returns a __be32 |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.2 | [`8d0b94afdca8`](https://git.kernel.org/torvalds/c/8d0b94afdca8) | [net] | ipv6: Keep track of DST_NOCACHE routes in case of iface down/unregister |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.2 | [`45e4fd26683c`](https://git.kernel.org/torvalds/c/45e4fd26683c) | [net] | ipv6: Only create RTF_CACHE routes after encountering pmtu exception |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.2 | [`48ed7b26faa7`](https://git.kernel.org/torvalds/c/48ed7b26faa7) | [net] | ipv6: reject locally assigned nexthop addresses |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 4.2 | [`afc4eef80c92`](https://git.kernel.org/torvalds/c/afc4eef80c92) | [net] | ipv6: Remove DST_METRICS_FORCE_OVERWRITE and _rt6i_peer |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.2 | [`fd0273d7939f`](https://git.kernel.org/torvalds/c/fd0273d7939f) | [net] | ipv6: Remove external dependency on rt6i_dst and rt6i_src |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.2 | [`2647a9b07032`](https://git.kernel.org/torvalds/c/2647a9b07032) | [net] | ipv6: Remove external dependency on rt6i_gateway and RTF_ANYCAST |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.2 | [`ad7068628901`](https://git.kernel.org/torvalds/c/ad7068628901) | [net] | ipv6: Remove un-used argument from ip6_dst_alloc() |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.2 | [`48e8aa6e3137`](https://git.kernel.org/torvalds/c/48e8aa6e3137) | [net] | ipv6: Set FLOWI_FLAG_KNOWN_NH at flowi6_flags |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.2 | [`653437d02f1f`](https://git.kernel.org/torvalds/c/653437d02f1f) | [net] | ipv6: Stop /128 route from disappearing after pmtu update |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.2 | [`4b32b5ad31a6`](https://git.kernel.org/torvalds/c/4b32b5ad31a6) | [net] | ipv6: Stop rt6_info from using inet_peer's metrics |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.2 | [`f0b5e8a42f37`](https://git.kernel.org/torvalds/c/f0b5e8a42f37) (loose) | [net] | kill useless net_*_ingress_queue() definitions when NET_CLS_ACT is unset |  | generic code, tag [net] | 3.10.0-625 |
| CANDIDATE | 4.2 | [`a60e3cc7c929`](https://git.kernel.org/torvalds/c/a60e3cc7c929) (loose) | [net] | make skb_splice_bits more configureable |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 4.2 | [`10b89ee43e84`](https://git.kernel.org/torvalds/c/10b89ee43e84) (loose) | [net] | move *skb_get_poff declarations into correct header |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.2 | [`9c684b5083bc`](https://git.kernel.org/torvalds/c/9c684b5083bc) (loose) | [net] | move __skb_get_hash function declaration to flow_dissector.h |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.2 | [`5605c76240aa`](https://git.kernel.org/torvalds/c/5605c76240aa) (loose) | [net] | move __skb_tx_hash to dev.c |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.2 | [`638b2a699fd3`](https://git.kernel.org/torvalds/c/638b2a699fd3) (loose) | [net] | move netdev_pick_tx and dependencies to net/core/dev.c |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.2 | [`2c51a97f76d2`](https://git.kernel.org/torvalds/c/2c51a97f76d2) | [net] | neigh: do not modify unlinked entries |  | generic code, tag [net] | 3.10.0-656 |
| CANDIDATE | 4.2 | [`f6e1c9166699`](https://git.kernel.org/torvalds/c/f6e1c9166699) | [net] | net-rds: Delete an unnecessary check before the function call "module_put" |  | generic code, tag [net] | 3.10.0-447 |
| CANDIDATE | 4.2 | [`e8d092aafd9e`](https://git.kernel.org/torvalds/c/e8d092aafd9e) | [net] | net_sched: fix a use-after-free in sfq |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.2 | [`32f675bbc9be`](https://git.kernel.org/torvalds/c/32f675bbc9be) | [net] | net_sched: gen_estimator: extend pps limit |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.2 | [`a3eb95f891d6`](https://git.kernel.org/torvalds/c/a3eb95f891d6) | [net] | net_sched: gred: add TCA_GRED_LIMIT attribute |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-395 |
| CANDIDATE | 4.2 | [`3bd229976f64`](https://git.kernel.org/torvalds/c/3bd229976f64) | [net] | netfilter: arptables: use percpu jumpstack |  | CONFIG_IP_NF_ARPTABLES=y in A37 | 3.10.0-300 |
| CANDIDATE | 4.2 | [`72b31f7271df`](https://git.kernel.org/torvalds/c/72b31f7271df) | [net] | netfilter: bridge: detect NAT66 correctly and change MAC address |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.2 | [`dd302b59bde0`](https://git.kernel.org/torvalds/c/dd302b59bde0) | [net] | netfilter: bridge: don't leak skb in error paths |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.2 | [`a1bc1b356a9d`](https://git.kernel.org/torvalds/c/a1bc1b356a9d) | [net] | netfilter: bridge: fix CONFIG_NF_DEFRAG_IPV4/6 related warnings/errors |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.2 | [`efb6de9b4ba0`](https://git.kernel.org/torvalds/c/efb6de9b4ba0) | [net] | netfilter: bridge: forward IPv6 fragmented packets |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.2 | [`a9fcc6a41de9`](https://git.kernel.org/torvalds/c/a9fcc6a41de9) | [net] | netfilter: bridge: free nf_bridge info on xmit |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.2 | [`7fb48c5bc310`](https://git.kernel.org/torvalds/c/7fb48c5bc310) | [net] | netfilter: bridge: neigh_head and physoutdev can't be used at same time |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.2 | [`8cae308d2bc8`](https://git.kernel.org/torvalds/c/8cae308d2bc8) | [net] | netfilter: bridge: re-order br_nf_pre_routing_finish_ipv6() |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.2 | [`a4611d3b74b5`](https://git.kernel.org/torvalds/c/a4611d3b74b5) | [net] | netfilter: bridge: re-order check_hbh_len() |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.2 | [`d39a33ed9b9a`](https://git.kernel.org/torvalds/c/d39a33ed9b9a) | [net] | netfilter: bridge: refactor clearing BRNF_NF_BRIDGE_PREROUTING |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.2 | [`411ffb4fde80`](https://git.kernel.org/torvalds/c/411ffb4fde80) | [net] | netfilter: bridge: refactor frag_max_size |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.2 | [`c4e70a87d975`](https://git.kernel.org/torvalds/c/c4e70a87d975) | [net] | netfilter: bridge: rename br_netfilter.c to br_netfilter_hooks.c |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.2 | [`77d574e7283c`](https://git.kernel.org/torvalds/c/77d574e7283c) | [net] | netfilter: bridge: rename br_parse_ip_options |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.2 | [`d7b597421519`](https://git.kernel.org/torvalds/c/d7b597421519) | [net] | netfilter: bridge: restore vlan tag when refragmenting |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.2 | [`230ac490f7fb`](https://git.kernel.org/torvalds/c/230ac490f7fb) | [net] | netfilter: bridge: split ipv6 code into separated file |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.2 | [`86e897180038`](https://git.kernel.org/torvalds/c/86e897180038) | [net] | netfilter: bridge: Use __in6_dev_get rather than in6_dev_get in br_validate_ipv6 |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.2 | [`f58e5aa7b873`](https://git.kernel.org/torvalds/c/f58e5aa7b873) | [net] | netfilter: conntrack: Use flags in nf_ct_tmpl_alloc() |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-340 |
| CANDIDATE | 4.2 | [`779668450a99`](https://git.kernel.org/torvalds/c/779668450a99) | [net] | netfilter: conntrack: warn the user if there is a better helper to use |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-271 |
| CANDIDATE | 4.2 | [`95dd8653de65`](https://git.kernel.org/torvalds/c/95dd8653de65) | [net] | netfilter: ctnetlink: put back references to master ct and expect objects |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.2 | [`a263653ed798`](https://git.kernel.org/torvalds/c/a263653ed798) | [net] | netfilter: don't pull include/linux/netfilter.h from netns headers |  | CONFIG_NETFILTER=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.2 | [`069d4a7b5832`](https://git.kernel.org/torvalds/c/069d4a7b5832) | [net] | netfilter: ebtables: fix comment grammar |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.2 | [`0838aa7fcfcd`](https://git.kernel.org/torvalds/c/0838aa7fcfcd) | [net] | netfilter: fix netns dependencies with conntrack templates |  | CONFIG_NETFILTER=y in A37 | 3.10.0-340 |
| CANDIDATE | 4.2 | [`484836ec2de2`](https://git.kernel.org/torvalds/c/484836ec2de2) | [net] | netfilter: IDLETIMER: fix lockdep warning |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.2 | [`96fffb4f23f1`](https://git.kernel.org/torvalds/c/96fffb4f23f1) | [net] | netfilter: ip6t_synproxy: fix NULL pointer dereference |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-306 |
| CANDIDATE | 4.2 | [`1a727c63612f`](https://git.kernel.org/torvalds/c/1a727c63612f) | [net] | netfilter: nf_conntrack: checking for IS_ERR() instead of NULL |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-340 |
| CANDIDATE | 4.2 | [`6742b9e310bc`](https://git.kernel.org/torvalds/c/6742b9e310bc) | [net] | netfilter: nfnetlink: keep going batch handling on missing modules |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.2 | [`2f06550b3b0e`](https://git.kernel.org/torvalds/c/2f06550b3b0e) | [net] | netfilter: remove unused comefrom hookmask argument | CVE-2016-3134 | CONFIG_NETFILTER=y in A37 | 3.10.0-385 |
| CANDIDATE | 4.2 | [`3c16241c4453`](https://git.kernel.org/torvalds/c/3c16241c4453) | [net] | netfilter: synproxy: fix sending window update to client |  | CONFIG_NETFILTER=y in A37 | 3.10.0-306 |
| CANDIDATE | 4.2 | [`55917a21d0cc`](https://git.kernel.org/torvalds/c/55917a21d0cc) | [net] | netfilter: x_tables: add context to know if extension runs from nft_compat |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.2 | [`a1a56aaa0735`](https://git.kernel.org/torvalds/c/a1a56aaa0735) | [net] | netfilter: x_tables: align per cpu xt_counter |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-293 |
| CANDIDATE | 4.2 | [`711bdde6a884`](https://git.kernel.org/torvalds/c/711bdde6a884) | [net] | netfilter: x_tables: remove XT_TABLE_INFO_SZ and a dereference |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-293 |
| CANDIDATE | 4.2 | [`59324cf35aba`](https://git.kernel.org/torvalds/c/59324cf35aba) | [net] | netlink: allow to listen "all" netns |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.2 | [`4e7c1330689e`](https://git.kernel.org/torvalds/c/4e7c1330689e) | [net] | netlink: make sure -EBUSY won't escape from netlink_insert |  | generic code, tag [net] | 3.10.0-937 |
| CANDIDATE | 4.2 | [`cc3a572fe6cf`](https://git.kernel.org/torvalds/c/cc3a572fe6cf) | [net] | netlink: rename private flags and states |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.2 | [`cab3c8ec8d57`](https://git.kernel.org/torvalds/c/cab3c8ec8d57) | [net] | netns: always provide the id to rtnl_net_fill() |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.2 | [`0c58a2db9174`](https://git.kernel.org/torvalds/c/0c58a2db9174) | [net] | netns: fix unbalanced spin_lock on error |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.2 | [`de133464c9e7`](https://git.kernel.org/torvalds/c/de133464c9e7) | [net] | netns: make nsid_lock per net |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.2 | [`3138dbf88127`](https://git.kernel.org/torvalds/c/3138dbf88127) | [net] | netns: notify new nsid outside __peernet2id() |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.2 | [`7a0877d4b438`](https://git.kernel.org/torvalds/c/7a0877d4b438) | [net] | netns: rename peernet2id() to peernet2id_alloc() |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.2 | [`109582af18b9`](https://git.kernel.org/torvalds/c/109582af18b9) | [net] | netns: returns always an id in __peernet2id() |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.2 | [`95f38411df05`](https://git.kernel.org/torvalds/c/95f38411df05) | [net] | netns: use a spin_lock to protect nsid management |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | 4.2 | [`158cd4af8ded`](https://git.kernel.org/torvalds/c/158cd4af8ded) | [net] | packet: missing dev_put() in packet_do_bind() |  | CONFIG_PACKET=y in A37 | 3.10.0-352 |
| CANDIDATE | 4.2 | [`a55e1c5c2640`](https://git.kernel.org/torvalds/c/a55e1c5c2640) | [net] | pkt_sched: sch_qfq: remove redundant -if- control statement |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.2 | [`a080e7bd0a8e`](https://git.kernel.org/torvalds/c/a080e7bd0a8e) (loose) | [net] | Reserve skb headroom and set skb->dev even if using __alloc_skb |  | generic code, tag [net] | 3.10.0-532 |
| CANDIDATE | 4.2 | [`4f7d2cdfdde7`](https://git.kernel.org/torvalds/c/4f7d2cdfdde7) | [net] | rtnetlink: verify IFLA_VF_INFO attributes before passing them to driver |  | generic code, tag [net] | 3.10.0-395 |
| CANDIDATE | 4.2 | [`342db221829f`](https://git.kernel.org/torvalds/c/342db221829f) | [net] | sched: Call skb_get_hash_perturb in sch_fq_codel |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-637 |
| CANDIDATE | 4.2 | [`f969777ac355`](https://git.kernel.org/torvalds/c/f969777ac355) | [net] | sched: Call skb_get_hash_perturb in sch_hhf |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.2 | [`63c0ad4d4135`](https://git.kernel.org/torvalds/c/63c0ad4d4135) | [net] | sched: Call skb_get_hash_perturb in sch_sfb |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-637 |
| CANDIDATE | 4.2 | [`ada1dba04c27`](https://git.kernel.org/torvalds/c/ada1dba04c27) | [net] | sched: Call skb_get_hash_perturb in sch_sfq |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-637 |
| CANDIDATE | 4.2 | [`32b2f4b196b3`](https://git.kernel.org/torvalds/c/32b2f4b196b3) | [net] | sched: cls_flow: fix panic on filter replace |  | CONFIG_NET_CLS_FLOW=y in A37 | 3.10.0-607 |
| CANDIDATE | 4.2 | [`c9e99fd078ef`](https://git.kernel.org/torvalds/c/c9e99fd078ef) (loose) | [net] | sched: consolidate handle_ing and ing_filter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 4.2 | [`b396cca6fafc`](https://git.kernel.org/torvalds/c/b396cca6fafc) (loose) | [net] | sched: deprecate enqueue_root() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.2 | [`28e6b67f0b29`](https://git.kernel.org/torvalds/c/28e6b67f0b29) (loose) | [net] | sched: fix refcount imbalance in actions |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 4.2 | [`4cda01e86f68`](https://git.kernel.org/torvalds/c/4cda01e86f68) (loose) | [net] | sched: fix typo in net_device ifdef |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 4.2 | [`d2788d34885d`](https://git.kernel.org/torvalds/c/d2788d34885d) (loose) | [net] | sched: further simplify handle_ing |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 4.2 | [`bd5850d39f10`](https://git.kernel.org/torvalds/c/bd5850d39f10) (loose) | [net] | sched: pkt_cls: remove unused macros from uapi |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.2 | [`4749c3ef854e`](https://git.kernel.org/torvalds/c/4749c3ef854e) (loose) | [net] | sched: remove TC_MUNGED bits |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 4.2 | [`087c1a601ad7`](https://git.kernel.org/torvalds/c/087c1a601ad7) (loose) | [net] | sched: run ingress qdisc without locks |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 4.2 | [`17cebfd097fe`](https://git.kernel.org/torvalds/c/17cebfd097fe) (loose) | [net] | sched: Simplify em_ipset_match |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.2 | [`e578d9c02587`](https://git.kernel.org/torvalds/c/e578d9c02587) (loose) | [net] | sched: use counter to break reclassify loops |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 4.2 | [`3365495c1883`](https://git.kernel.org/torvalds/c/3365495c1883) (loose) | [net] | set qdisc pkt len before tc_classify |  | generic code, tag [net] | 3.10.0-625 |
| CANDIDATE | 4.2 | [`be12a1fe298e`](https://git.kernel.org/torvalds/c/be12a1fe298e) (loose) | [net] | skbuff: add skb_append_pagefrags and use it |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 4.2 | [`3fd22af808f4`](https://git.kernel.org/torvalds/c/3fd22af808f4) | [net] | sock_diag: specify info_size per inet protocol |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.2 | [`0e39250845c0`](https://git.kernel.org/torvalds/c/0e39250845c0) (loose) | [net] | Store virtual address instead of page in netdev_alloc_cache |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 4.2 | [`c19ae86a510c`](https://git.kernel.org/torvalds/c/c19ae86a510c) | [net] | tc: remove unused redirect ttl |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 4.2 | [`2efd055c53c0`](https://git.kernel.org/torvalds/c/2efd055c53c0) | [net] | tcp: add tcpi_segs_in and tcpi_segs_out to tcp_info |  | generic code, tag [net] | 3.10.0-352 |
| CANDIDATE | 4.2 | [`76dfa6082032`](https://git.kernel.org/torvalds/c/76dfa6082032) | [net] | tcp: allow one skb to be received per socket under memory pressure |  | generic code, tag [net] | 3.10.0-349 |
| CANDIDATE | 4.2 | [`f9c2ff22bb2d`](https://git.kernel.org/torvalds/c/f9c2ff22bb2d) (loose) | [net] | tcp: dctcp_update_alpha() fixes |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | 4.2 | [`dfea2aa65424`](https://git.kernel.org/torvalds/c/dfea2aa65424) | [net] | tcp: Do not call tcp_fastopen_reset_cipher from interrupt context |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | 4.2 | [`f82b681a511f`](https://git.kernel.org/torvalds/c/f82b681a511f) | [net] | tcp: don't use F-RTO on non-recurring timeouts |  | generic code, tag [net] | 3.10.0-709 |
| CANDIDATE | 4.2 | [`c39c4c6abb89`](https://git.kernel.org/torvalds/c/c39c4c6abb89) | [net] | tcp: double default TSQ output bytes limit |  | generic code, tag [net] | 3.10.0-265 |
| CANDIDATE | 4.2 | [`8e4d980ac215`](https://git.kernel.org/torvalds/c/8e4d980ac215) | [net] | tcp: fix behavior for epoll edge trigger |  | generic code, tag [net] | 3.10.0-349 |
| CANDIDATE | 4.2 | [`dfbafc995304`](https://git.kernel.org/torvalds/c/dfbafc995304) | [net] | tcp: fix recv with flags MSG_WAITALL \| MSG_PEEK |  | generic code, tag [net] | 3.10.0-306 |
| CANDIDATE | 4.2 | [`946f9eb226c2`](https://git.kernel.org/torvalds/c/946f9eb226c2) | [net] | tcp: improve REUSEADDR/NOREUSEADDR cohabitation |  | generic code, tag [net] | 3.10.0-359 |
| CANDIDATE | 4.2 | [`b8da51ebb1aa`](https://git.kernel.org/torvalds/c/b8da51ebb1aa) | [net] | tcp: introduce tcp_under_memory_pressure() |  | generic code, tag [net] | 3.10.0-349 |
| CANDIDATE | 4.2 | [`a6c5ea4ccf00`](https://git.kernel.org/torvalds/c/a6c5ea4ccf00) | [net] | tcp: rename sk_forced_wmem_schedule() to sk_forced_mem_schedule() |  | generic code, tag [net] | 3.10.0-349 |
| CANDIDATE | 4.2 | [`a7eea416cb08`](https://git.kernel.org/torvalds/c/a7eea416cb08) | [net] | tcp: reserve tcp_skb_mss() to tcp stack |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.2 | [`790ba4566c1a`](https://git.kernel.org/torvalds/c/790ba4566c1a) | [net] | tcp: set SOCK_NOSPACE under memory pressure |  | generic code, tag [net] | 3.10.0-349 |
| CANDIDATE | 4.2 | [`10e2eb878f3c`](https://git.kernel.org/torvalds/c/10e2eb878f3c) | [net] | udp: fix dst races with multicast early demux |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.2 | [`9451980a6646`](https://git.kernel.org/torvalds/c/9451980a6646) (loose) | [net] | Use cached copy of pfmemalloc to avoid accessing page |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 4.2 | [`76357c715f32`](https://git.kernel.org/torvalds/c/76357c715f32) | [net] | xprtrdma, svcrdma: Switch to generic logging helpers |  | generic code, tag [net] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`0894ae3f0a58`](https://git.kernel.org/torvalds/c/0894ae3f0a58) (loose) | [net] | add netif_is_bridge_master helper |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.3 | [`d754f98b502a`](https://git.kernel.org/torvalds/c/d754f98b502a) (loose) | [net] | add phys ID compare helper to test if two IDs are the same |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.3 | [`0344338bd883`](https://git.kernel.org/torvalds/c/0344338bd883) (loose) | [net] | addr IFLA_OPERSTATE to netlink message for ipv6 ifinfo |  | generic code, tag [net] | 3.10.0-385 |
| CANDIDATE | 4.3 | [`0accfc268f4d`](https://git.kernel.org/torvalds/c/0accfc268f4d) | [net] | arp: Inherit metadata dst when creating ARP requests |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`d2d427b3927b`](https://git.kernel.org/torvalds/c/d2d427b3927b) | [net] | bridge: Add netlink support for vlan_protocol attribute |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.3 | [`bf361ad38165`](https://git.kernel.org/torvalds/c/bf361ad38165) (loose) | [net] | bridge: check __vlan_vid_del for error |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.3 | [`ccecb2a47ceb`](https://git.kernel.org/torvalds/c/ccecb2a47ceb) (loose) | [net] | bridge: convert to using IFF_NO_QUEUE |  | CONFIG_BRIDGE=y in A37 | 3.10.0-395 |
| CANDIDATE | 4.3 | [`6678053092e8`](https://git.kernel.org/torvalds/c/6678053092e8) | [net] | bridge: Don't segment multiple tagged packets on bridge device |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.3 | [`b22fbf22f846`](https://git.kernel.org/torvalds/c/b22fbf22f846) | [net] | bridge: fdb: rearrange net_bridge_fdb_entry |  | CONFIG_BRIDGE=y in A37 | 3.10.0-395 |
| CANDIDATE | 4.3 | [`c2d4fbd2163e`](https://git.kernel.org/torvalds/c/c2d4fbd2163e) | [net] | bridge: fix igmpv3 / mldv2 report parsing |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.3 | [`eb4cb85180cd`](https://git.kernel.org/torvalds/c/eb4cb85180cd) | [net] | bridge: fix netlink max attr size |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.3 | [`6ca91c604074`](https://git.kernel.org/torvalds/c/6ca91c604074) | [net] | bridge: Fix setting a flag in br_fill_ifvlaninfo_range(). |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.3 | [`a7ce45a74bed`](https://git.kernel.org/torvalds/c/a7ce45a74bed) | [net] | bridge: mcast: fix br_multicast_dev_del warn when igmp snooping is not defined |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.3 | [`74fe61f17e99`](https://git.kernel.org/torvalds/c/74fe61f17e99) | [net] | bridge: mdb: add vlan support for user entries |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.3 | [`e44deb2f0cce`](https://git.kernel.org/torvalds/c/e44deb2f0cce) | [net] | bridge: mdb: add/del entry on all vlans if vlan_filter is enabled and vid is 0 |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.3 | [`09cf0211f970`](https://git.kernel.org/torvalds/c/09cf0211f970) | [net] | bridge: mdb: fill state in br_mdb_notify |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.3 | [`58da01805353`](https://git.kernel.org/torvalds/c/58da01805353) | [net] | bridge: mdb: fix vlan_enabled access when vlans are not configured |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.3 | [`949f1e39a617`](https://git.kernel.org/torvalds/c/949f1e39a617) | [net] | bridge: mdb: notify on router port add and del |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.3 | [`e10177abf842`](https://git.kernel.org/torvalds/c/e10177abf842) | [net] | bridge: multicast: fix handling of temp and perm entries |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.3 | [`ef8299de7e2b`](https://git.kernel.org/torvalds/c/ef8299de7e2b) | [net] | bridge: multicast: notify on group delete |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.3 | [`a7854037da00`](https://git.kernel.org/torvalds/c/a7854037da00) | [net] | bridge: netlink: add support for vlan_filtering attribute |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.3 | [`7a577f013d67`](https://git.kernel.org/torvalds/c/7a577f013d67) (loose) | [net] | bridge: remove unnecessary switchdev include |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.3 | [`fa8187c96471`](https://git.kernel.org/torvalds/c/fa8187c96471) (loose) | [net] | declare new net_device priv_flag IFF_NO_QUEUE |  | generic code, tag [net] | 3.10.0-395 |
| CANDIDATE | 4.3 | [`0c4f691ff679`](https://git.kernel.org/torvalds/c/0c4f691ff679) (loose) | [net] | don't reforward packets already forwarded by offload device |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.3 | [`e79e259588a4`](https://git.kernel.org/torvalds/c/e79e259588a4) | [net] | dst: Add __skb_dst_copy() variation |  | generic code, tag [net] | 3.10.0-340 |
| CANDIDATE | 4.3 | [`f38a9eb1f77b`](https://git.kernel.org/torvalds/c/f38a9eb1f77b) | [net] | dst: Metadata destinations |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`f38a9eb1f77b`](https://git.kernel.org/torvalds/c/f38a9eb1f77b) | [net] | dst: Metadata destinations |  | generic code, tag [net] | 3.10.0-340 |
| CANDIDATE | 4.3 | [`ff42c02c09aa`](https://git.kernel.org/torvalds/c/ff42c02c09aa) (loose) | [net] | dummy: convert to using IFF_NO_QUEUE |  | generic code, tag [net] | 3.10.0-395 |
| CANDIDATE | 4.3 | [`b8d3e4163a35`](https://git.kernel.org/torvalds/c/b8d3e4163a35) | [net] | fib, fib6: reject invalid feature bits |  | generic code, tag [net] | 3.10.0-315 |
| CANDIDATE | 4.3 | [`1bb14807bc76`](https://git.kernel.org/torvalds/c/1bb14807bc76) (loose) | [net] | fib6: reduce identation in ip6_convert_metrics |  | generic code, tag [net] | 3.10.0-315 |
| CANDIDATE | 4.3 | [`e7030878fc84`](https://git.kernel.org/torvalds/c/e7030878fc84) | [net] | fib: Add fib rule match on tunnel id |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`6cf9dfd3bd62`](https://git.kernel.org/torvalds/c/6cf9dfd3bd62) (loose) | [net] | fib: move metrics parsing to a helper |  | generic code, tag [net] | 3.10.0-315 |
| CANDIDATE | 4.3 | [`c2229fe1430d`](https://git.kernel.org/torvalds/c/c2229fe1430d) | [net] | fib_trie: leaf_walk_rcu should not compute key if key is less than pn->key |  | generic code, tag [net] | 3.10.0-352 |
| CANDIDATE | 4.3 | [`0315e3827048`](https://git.kernel.org/torvalds/c/0315e3827048) (loose) | [net] | fix behaviour of unreachable, blackhole and prohibit routes |  | generic code, tag [net] | 3.10.0-359 |
| CANDIDATE | 4.3 | [`f84bb1eac027`](https://git.kernel.org/torvalds/c/f84bb1eac027) (loose) | [net] | fix IFF_NO_QUEUE for drivers using alloc_netdev |  | generic code, tag [net] | 3.10.0-395 |
| CANDIDATE | 4.3 | [`4c9bcd117918`](https://git.kernel.org/torvalds/c/4c9bcd117918) (loose) | [net] | Fix nexthop lookups |  | generic code, tag [net] | 3.10.0-1039 |
| CANDIDATE | 4.3 | [`823b96939578`](https://git.kernel.org/torvalds/c/823b96939578) | [net] | flow_dissector: Add control/reporting of encapsulation |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.3 | [`807e165dc44f`](https://git.kernel.org/torvalds/c/807e165dc44f) | [net] | flow_dissector: Add control/reporting of fragmentation |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.3 | [`8306b688f1a6`](https://git.kernel.org/torvalds/c/8306b688f1a6) | [net] | flow_dissector: Add flag to stop parsing at L3 |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.3 | [`872b1abb1ed4`](https://git.kernel.org/torvalds/c/872b1abb1ed4) | [net] | flow_dissector: Add flag to stop parsing when an IPv6 flow label is seen |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.3 | [`cd79a2382aa5`](https://git.kernel.org/torvalds/c/cd79a2382aa5) | [net] | flow_dissector: Add flags argument to skb_flow_dissector functions |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.3 | [`4b36993d3df0`](https://git.kernel.org/torvalds/c/4b36993d3df0) | [net] | flow_dissector: Don't use bit fields. |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.3 | [`de4c1f8ba302`](https://git.kernel.org/torvalds/c/de4c1f8ba302) | [net] | flow_dissector: Fix function argument ordering dependency |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.3 | [`6db61d79c1e1`](https://git.kernel.org/torvalds/c/6db61d79c1e1) | [net] | flow_dissector: Ignore flow dissector return value from ___skb_get_hash |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.3 | [`a6e544b0a88b`](https://git.kernel.org/torvalds/c/a6e544b0a88b) | [net] | flow_dissector: Jump to exit code in __skb_flow_dissect |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.3 | [`e5276937ae6e`](https://git.kernel.org/torvalds/c/e5276937ae6e) | [net] | flow_dissector: Move skb related functions to skbuff.h |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.3 | [`b840f28b908d`](https://git.kernel.org/torvalds/c/b840f28b908d) | [net] | flow_dissector: Support IPv6 fragment header |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.3 | [`20a17bf6c04e`](https://git.kernel.org/torvalds/c/20a17bf6c04e) | [net] | flow_dissector: Use 'const' where possible. |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.3 | [`c6cc1ca7f4d7`](https://git.kernel.org/torvalds/c/c6cc1ca7f4d7) | [net] | flowi: Abstract out functions to get flow hash based on flowi |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.3 | [`b7fe10e5ebac`](https://git.kernel.org/torvalds/c/b7fe10e5ebac) | [net] | gro: Fix remcsum offload to deal with frags in GRO |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`c42858eaf492`](https://git.kernel.org/torvalds/c/c42858eaf492) | [net] | gro_cells: remove spinlock protecting receive queues |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 4.3 | [`7c1eb45a22d7`](https://git.kernel.org/torvalds/c/7c1eb45a22d7) | [net] | ib/core: lock client data with lists_rwsem |  | generic code, tag [net] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`7dd78647a2c2`](https://git.kernel.org/torvalds/c/7dd78647a2c2) | [net] | ib/core: Make ib_dealloc_pd return void |  | generic code, tag [net] | 3.10.0-447 |
| CANDIDATE | 4.3 | [`773a69d64bf6`](https://git.kernel.org/torvalds/c/773a69d64bf6) | [net] | icmp: Don't leak original dst into ip_route_input() |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`9e29e21a9bbf`](https://git.kernel.org/torvalds/c/9e29e21a9bbf) | [net] | ifb: add multiqueue operation |  | generic code, tag [net] | 3.10.0-1093 |
| CANDIDATE | 4.3 | [`0e4ead9d7b36`](https://git.kernel.org/torvalds/c/0e4ead9d7b36) (loose) | [net] | introduce change upper device notifier change info |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 4.3 | [`83cf9a2521b0`](https://git.kernel.org/torvalds/c/83cf9a2521b0) | [net] | ip6tunnel: make rx/tx bytes counters consistent |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`045a0fa0c5f5`](https://git.kernel.org/torvalds/c/045a0fa0c5f5) | [net] | ip_tunnel: Call ip_tunnel_core_init() from inet_init() |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`1d8fff907342`](https://git.kernel.org/torvalds/c/1d8fff907342) | [net] | ip_tunnel: Make ovs_tunnel_info and ovs_key_ipv4_tunnel generic |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`052831879945`](https://git.kernel.org/torvalds/c/052831879945) | [net] | ip_tunnel: Provide tunnel metadata API for CONFIG_INET=n |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`c1ea5d672aaf`](https://git.kernel.org/torvalds/c/c1ea5d672aaf) | [net] | ip_tunnels: add IPv6 addresses to ip_tunnel_key |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`46fa062ad631`](https://git.kernel.org/torvalds/c/46fa062ad631) | [net] | ip_tunnels: convert the mode field of ip_tunnel_info to flags |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`7f9562a1f405`](https://git.kernel.org/torvalds/c/7f9562a1f405) | [net] | ip_tunnels: record IP version in tunnel info |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`ac1cf3990c99`](https://git.kernel.org/torvalds/c/ac1cf3990c99) | [net] | ip_tunnels: remove custom alignment and packing |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`376534a3d170`](https://git.kernel.org/torvalds/c/376534a3d170) | [net] | ip_tunnels: use offsetofend |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`7c383fb2254c`](https://git.kernel.org/torvalds/c/7c383fb2254c) | [net] | ip_tunnels: use tos and ttl fields also for IPv6 |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`6b8847c5a2ba`](https://git.kernel.org/torvalds/c/6b8847c5a2ba) | [net] | ip_tunnels: use u8/u16/u32 |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`bc22a0e2ea03`](https://git.kernel.org/torvalds/c/bc22a0e2ea03) | [net] | iptunnel: make rx/tx bytes counters consistent |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`0335f5b500ad`](https://git.kernel.org/torvalds/c/0335f5b500ad) | [net] | ipv4: apply lwtunnel encap for locally-generated packets |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`88f643203668`](https://git.kernel.org/torvalds/c/88f643203668) | [net] | ipv4: be more aggressive when probing alternative gateways |  | generic code, tag [net] | 3.10.0-927 |
| CANDIDATE | 4.3 | [`1e3136789975`](https://git.kernel.org/torvalds/c/1e3136789975) | [net] | ipv4: fix refcount leak in fib_check_nh() |  | generic code, tag [net] | 3.10.0-1039 |
| CANDIDATE | 4.3 | [`181a4224acdf`](https://git.kernel.org/torvalds/c/181a4224acdf) | [net] | ipv4: fix reply_dst leakage on arp reply |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`e01286ef03a9`](https://git.kernel.org/torvalds/c/e01286ef03a9) | [net] | ipv4: Make fib_encap_match static |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`8602a6250247`](https://git.kernel.org/torvalds/c/8602a6250247) | [net] | ipv4: redirect dst output to lwtunnel output |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`63d008a4e9ee`](https://git.kernel.org/torvalds/c/63d008a4e9ee) | [net] | ipv4: send arp replies to the correct tunnel |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`571e722676fe`](https://git.kernel.org/torvalds/c/571e722676fe) | [net] | ipv4: support for fib route lwtunnel encap attributes |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`741a11d9e410`](https://git.kernel.org/torvalds/c/741a11d9e410) (loose) | [net] | ipv6: Add RT6_LOOKUP_F_IFACE flag if oif is set |  | generic code, tag [net] | 3.10.0-349 |
| CANDIDATE | 4.3 | [`8e3d5be73681`](https://git.kernel.org/torvalds/c/8e3d5be73681) | [net] | ipv6: Avoid double dst_free |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.3 | [`343d60aada5a`](https://git.kernel.org/torvalds/c/343d60aada5a) | [net] | ipv6: change ipv6_stub_impl.ipv6_dst_lookup to take net argument |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`d943659508a4`](https://git.kernel.org/torvalds/c/d943659508a4) | [net] | ipv6: copy lwtstate in ip6_rt_copy_init() |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`e332bc67cf5e`](https://git.kernel.org/torvalds/c/e332bc67cf5e) | [net] | ipv6: Don't call with rt6_uncached_list_flush_dev |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.3 | [`d46a9d678e4c`](https://git.kernel.org/torvalds/c/d46a9d678e4c) (loose) | [net] | ipv6: Dont add RT6_LOOKUP_F_IFACE flag if saddr set |  | generic code, tag [net] | 3.10.0-349 |
| CANDIDATE | 4.3 | [`9ef2e965e554`](https://git.kernel.org/torvalds/c/9ef2e965e554) | [net] | ipv6: drop frames with attached skb->sk in forwarding |  | generic code, tag [net] | 3.10.0-330 |
| CANDIDATE | 4.3 | [`06e9d040ba08`](https://git.kernel.org/torvalds/c/06e9d040ba08) | [net] | ipv6: drop metadata dst in ip6_route_input |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`190b8ffbb700`](https://git.kernel.org/torvalds/c/190b8ffbb700) | [net] | ipv6: Export nf_ct_frag6_consume_orig() |  | generic code, tag [net] | 3.10.0-340 |
| CANDIDATE | 4.3 | [`5b490047240f`](https://git.kernel.org/torvalds/c/5b490047240f) | [net] | ipv6: Export nf_ct_frag6_gather() |  | generic code, tag [net] | 3.10.0-340 |
| CANDIDATE | 4.3 | [`48fb6b554501`](https://git.kernel.org/torvalds/c/48fb6b554501) | [net] | ipv6: fix crash over flow-based vxlan device |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`cdf3464e6c6b`](https://git.kernel.org/torvalds/c/cdf3464e6c6b) | [net] | ipv6: Fix dst_entry refcnt bugs in ip6_tunnel |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.3 | [`93efac3f2e03`](https://git.kernel.org/torvalds/c/93efac3f2e03) | [net] | ipv6: Fix IPsec pre-encap fragmentation check |  | generic code, tag [net] | 3.10.0-345 |
| CANDIDATE | 4.3 | [`6b9ea5a64ed5`](https://git.kernel.org/torvalds/c/6b9ea5a64ed5) | [net] | ipv6: fix multipath route replace error recovery |  | generic code, tag [net] | 3.10.0-638 |
| CANDIDATE | 4.3 | [`ab997ad40839`](https://git.kernel.org/torvalds/c/ab997ad40839) | [net] | ipv6: fix the incorrect return value of throw route |  | generic code, tag [net] | 3.10.0-349 |
| CANDIDATE | 4.3 | [`d9e4ce65b276`](https://git.kernel.org/torvalds/c/d9e4ce65b276) | [net] | ipv6: gre: setup default multicast routes over PtP links |  | generic code, tag [net] | 3.10.0-385 |
| CANDIDATE | 4.3 | [`0a1f59620068`](https://git.kernel.org/torvalds/c/0a1f59620068) | [net] | ipv6: Initialize rt6_info properly in ip6_blackhole_route() |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.3 | [`1d325d217c7f`](https://git.kernel.org/torvalds/c/1d325d217c7f) | [net] | ipv6: ip6_fragment: fix headroom tests and skb leak |  | generic code, tag [net] | 3.10.0-703 |
| CANDIDATE | 4.3 | [`ebfa45f0d952`](https://git.kernel.org/torvalds/c/ebfa45f0d952) | [net] | ipv6: Move common init code for rt6_info to a new function rt6_info_init() |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.3 | [`35a256fee52c`](https://git.kernel.org/torvalds/c/35a256fee52c) | [net] | ipv6: Nonlocal bind |  | generic code, tag [net] | 3.10.0-373 |
| CANDIDATE | 4.3 | [`990edb428c2c`](https://git.kernel.org/torvalds/c/990edb428c2c) | [net] | ipv6: Re-arrange code in rt6_probe() |  | generic code, tag [net] | 3.10.0-971 |
| CANDIDATE | 4.3 | [`a3c119d392d7`](https://git.kernel.org/torvalds/c/a3c119d392d7) | [net] | ipv6: Refactor common ip6gre_tunnel_init codes |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.3 | [`f230d1e891ba`](https://git.kernel.org/torvalds/c/f230d1e891ba) | [net] | ipv6: Rename the dst_cache helper functions in ip6_tunnel |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.3 | [`70da5b5c532f`](https://git.kernel.org/torvalds/c/70da5b5c532f) | [net] | ipv6: Replace spinlock with seqlock and rcu in ip6_tunnel |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.3 | [`904af04d30f3`](https://git.kernel.org/torvalds/c/904af04d30f3) | [net] | ipv6: route: extend flow representation with tunnel key |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`32a2b002ce61`](https://git.kernel.org/torvalds/c/32a2b002ce61) | [net] | ipv6: route: per route IP tunnel metadata via lightweight tunnel |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`74a0f2fe8ed5`](https://git.kernel.org/torvalds/c/74a0f2fe8ed5) | [net] | ipv6: rt6_info output redirect to tunnel output |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`19e42e451506`](https://git.kernel.org/torvalds/c/19e42e451506) | [net] | ipv6: support for fib route lwtunnel encap attributes |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`f53de1e9a4aa`](https://git.kernel.org/torvalds/c/f53de1e9a4aa) (loose) | [net] | ipv6: use common fib_default_rule_pref |  | generic code, tag [net] | 3.10.0-345 |
| CANDIDATE | 4.3 | [`6673a9f4e35c`](https://git.kernel.org/torvalds/c/6673a9f4e35c) | [net] | ipv6: use lwtunnel_output6() only if flag redirect is set |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`e65db2b724a2`](https://git.kernel.org/torvalds/c/e65db2b724a2) (loose) | [net] | loopback: convert to using IFF_NO_QUEUE |  | generic code, tag [net] | 3.10.0-395 |
| CANDIDATE | 4.3 | [`5a6228a0b472`](https://git.kernel.org/torvalds/c/5a6228a0b472) | [net] | lwtunnel: change prototype of lwtunnel_state_get() |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`e0910bace663`](https://git.kernel.org/torvalds/c/e0910bace663) | [net] | lwtunnel: export linux/lwtunnel.h to userspace |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`df383e6240ef`](https://git.kernel.org/torvalds/c/df383e6240ef) | [net] | lwtunnel: fix memory leak |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`824e7383e928`](https://git.kernel.org/torvalds/c/824e7383e928) | [net] | lwtunnel: Fix the sparse warnings in fib_encap_match |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`499a24256862`](https://git.kernel.org/torvalds/c/499a24256862) | [net] | lwtunnel: infrastructure for handling light weight tunnels like mpls |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`2d79849903e0`](https://git.kernel.org/torvalds/c/2d79849903e0) | [net] | lwtunnel: ip tunnel: fix multiple routes with different encap |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`92a99bf3bae7`](https://git.kernel.org/torvalds/c/92a99bf3bae7) | [net] | lwtunnel: Make lwtun_encaps[] static |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`b194f30c61ef`](https://git.kernel.org/torvalds/c/b194f30c61ef) | [net] | lwtunnel: remove source and destination UDP port config option |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`a1c234f95cae`](https://git.kernel.org/torvalds/c/a1c234f95cae) | [net] | lwtunnel: rename ip lwtunnel attributes |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`abf7c1c540f8`](https://git.kernel.org/torvalds/c/abf7c1c540f8) | [net] | lwtunnel: set skb protocol and dev |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`ffce41962ef6`](https://git.kernel.org/torvalds/c/ffce41962ef6) | [net] | lwtunnel: support dst output redirect function |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`e11f40b9352f`](https://git.kernel.org/torvalds/c/e11f40b9352f) | [net] | lwtunnel: use kfree_skb() instead of vanilla kfree() |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`9e528d89154b`](https://git.kernel.org/torvalds/c/9e528d89154b) | [net] | net_sched: convert rsvp to call tcf_exts_destroy from rcu callback |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.3 | [`ed7aa879ce1a`](https://git.kernel.org/torvalds/c/ed7aa879ce1a) | [net] | net_sched: convert tcindex to call tcf_exts_destroy from rcu callback |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.3 | [`3c645621b798`](https://git.kernel.org/torvalds/c/3c645621b798) | [net] | net_sched: make tcf_hash_destroy() static |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.3 | [`55e5713f2b5c`](https://git.kernel.org/torvalds/c/55e5713f2b5c) | [net] | netfilter: Always export nf_connlabels_replace() |  | CONFIG_NETFILTER=y in A37 | 3.10.0-340 |
| CANDIDATE | 4.3 | [`f4b3eee727e8`](https://git.kernel.org/torvalds/c/f4b3eee727e8) | [net] | netfilter: bridge: do not initialize statics to 0 or NULL |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.3 | [`18e1db67e93e`](https://git.kernel.org/torvalds/c/18e1db67e93e) | [net] | netfilter: bridge: fix IPv6 packets not being bridged with CONFIG_IPV6=n |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.3 | [`63cdbc06b357`](https://git.kernel.org/torvalds/c/63cdbc06b357) | [net] | netfilter: bridge: fix routing of bridge frames with call-iptables=1 |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.3 | [`72b1e5e4cac7`](https://git.kernel.org/torvalds/c/72b1e5e4cac7) | [net] | netfilter: bridge: reduce nf_bridge_info to 32 bytes again |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.3 | [`86ca02e77408`](https://git.kernel.org/torvalds/c/86ca02e77408) | [net] | netfilter: connlabels: Export setting connlabel length |  | CONFIG_NETFILTER=y in A37 | 3.10.0-340 |
| CANDIDATE | 4.3 | [`9cf94eab8b30`](https://git.kernel.org/torvalds/c/9cf94eab8b30) | [net] | netfilter: conntrack: use nf_ct_tmpl_free in CT/synproxy error paths |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-340 |
| CANDIDATE | 4.3 | [`2e4cfae2a8e3`](https://git.kernel.org/torvalds/c/2e4cfae2a8e3) | [net] | netfilter: Define v6ops in !CONFIG_NETFILTER case |  | CONFIG_NETFILTER=y in A37 | 3.10.0-340 |
| CANDIDATE | 4.3 | [`bbde9fc1824a`](https://git.kernel.org/torvalds/c/bbde9fc1824a) | [net] | netfilter: factor out packet duplication for IPv4/IPv6 |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.3 | [`cc4998febd56`](https://git.kernel.org/torvalds/c/cc4998febd56) | [net] | netfilter: ipt_rpfilter: remove the nh_scope test in rpfilter_lookup_reverse |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-349 |
| CANDIDATE | 4.3 | [`e7c8899f3e6f`](https://git.kernel.org/torvalds/c/e7c8899f3e6f) | [net] | netfilter: move tee_active to core |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.3 | [`deedb59039f1`](https://git.kernel.org/torvalds/c/deedb59039f1) | [net] | netfilter: nf_conntrack: add direction support for zones |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.3 | [`deedb59039f1`](https://git.kernel.org/torvalds/c/deedb59039f1) | [net] | netfilter: nf_conntrack: add direction support for zones |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-340 |
| CANDIDATE | 4.3 | [`5e8018fc6142`](https://git.kernel.org/torvalds/c/5e8018fc6142) | [net] | netfilter: nf_conntrack: add efficient mark to zone mapping |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-340 |
| CANDIDATE | 4.3 | [`62da98656b62`](https://git.kernel.org/torvalds/c/62da98656b62) | [net] | netfilter: nf_conntrack: make nf_ct_zone_dflt built-in |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-340 |
| CANDIDATE | 4.3 | [`308ac9143ee2`](https://git.kernel.org/torvalds/c/308ac9143ee2) | [net] | netfilter: nf_conntrack: push zone object into functions |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-340 |
| CANDIDATE | 4.3 | [`d7ee35190427`](https://git.kernel.org/torvalds/c/d7ee35190427) | [net] | netfilter: nf_ct_sctp: minimal multihoming support |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-312 |
| CANDIDATE | 4.3 | [`59e26423e002`](https://git.kernel.org/torvalds/c/59e26423e002) | [net] | netfilter: nf_dup: fix sparse warnings |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.3 | [`a82b0e63917f`](https://git.kernel.org/torvalds/c/a82b0e63917f) | [net] | netfilter: nf_dup{4, 6}: fix build error when nf_conntrack disabled |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.3 | [`205ee117d4dc`](https://git.kernel.org/torvalds/c/205ee117d4dc) | [net] | netfilter: nf_log: don't zap all loggers on unregister |  | CONFIG_NETFILTER_NETLINK_LOG=y in A37 | 3.10.0-345 |
| CANDIDATE | 4.3 | [`ad5001cc7cdf`](https://git.kernel.org/torvalds/c/ad5001cc7cdf) | [net] | netfilter: nf_log: wait for rcu grace after logger unregistration |  | CONFIG_NETFILTER_NETLINK_LOG=y in A37 | 3.10.0-345 |
| CANDIDATE | 4.3 | [`a9de9777d613`](https://git.kernel.org/torvalds/c/a9de9777d613) | [net] | netfilter: nfnetlink: work around wrong endianess in res_id field |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.3 | [`085db2c04557`](https://git.kernel.org/torvalds/c/085db2c04557) | [net] | netfilter: Per network namespace netfilter hooks. |  | CONFIG_NETFILTER=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.3 | [`24b7811fa5de`](https://git.kernel.org/torvalds/c/24b7811fa5de) | [net] | netfilter: xt_TEE: get rid of WITH_CONNTRACK definition |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.3 | [`116984a316c3`](https://git.kernel.org/torvalds/c/116984a316c3) | [net] | netfilter: xt_TEE: use IS_ENABLED(CONFIG_NF_DUP_IPV6) |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.3 | [`88d6378bd6c0`](https://git.kernel.org/torvalds/c/88d6378bd6c0) | [net] | netlink: changes for setting and clearing protodown via netlink |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.3 | [`1f770c0a09da`](https://git.kernel.org/torvalds/c/1f770c0a09da) | [net] | netlink: Fix autobind race condition that leads to zero port ID |  | generic code, tag [net] | 3.10.0-368 |
| CANDIDATE | 4.3 | [`da314c9923fe`](https://git.kernel.org/torvalds/c/da314c9923fe) | [net] | netlink: Replace rhash_portid with bound |  | generic code, tag [net] | 3.10.0-368 |
| CANDIDATE | 4.3 | [`2d8bff12699a`](https://git.kernel.org/torvalds/c/2d8bff12699a) | [net] | netpoll: Close race condition between poll_one_napi and napi_disable |  | generic code, tag [net] | 3.10.0-717 |
| CANDIDATE | 4.3 | [`85773a61a310`](https://git.kernel.org/torvalds/c/85773a61a310) (loose) | [net] | nlmon: convert to using IFF_NO_QUEUE |  | generic code, tag [net] | 3.10.0-395 |
| CANDIDATE | 4.3 | [`9723e6abc70a`](https://git.kernel.org/torvalds/c/9723e6abc70a) | [net] | openswitch: fix typo CONFIG_NF_CONNTRACK_LABEL |  | generic code, tag [net] | 3.10.0-340 |
| CANDIDATE | 4.3 | [`40bdc5360d09`](https://git.kernel.org/torvalds/c/40bdc5360d09) | [net] | pkt_sched: sch_qfq: remove unused member of struct qfq_sched |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.3 | [`2e64126bb0fb`](https://git.kernel.org/torvalds/c/2e64126bb0fb) (loose) | [net] | qdisc: enhance default_qdisc documentation |  | generic code, tag [net] | 3.10.0-395 |
| CANDIDATE | 4.3 | [`d8aecb101154`](https://git.kernel.org/torvalds/c/d8aecb101154) (loose) | [net] | revert "net_sched: move tp->root allocation into fw_init()" |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.3 | [`1b7179d3adff`](https://git.kernel.org/torvalds/c/1b7179d3adff) | [net] | route: Extend flow representation with tunnel key |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`e252b3d1a174`](https://git.kernel.org/torvalds/c/e252b3d1a174) | [net] | route: fix a use-after-free |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`61adedf3e3f1`](https://git.kernel.org/torvalds/c/61adedf3e3f1) | [net] | route: move lwtunnel state to dst_entry |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`3093fbe7ff4b`](https://git.kernel.org/torvalds/c/3093fbe7ff4b) | [net] | route: Per route IP tunnel metadata via lightweight tunnel |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`cb1c61680d29`](https://git.kernel.org/torvalds/c/cb1c61680d29) | [net] | route: remove unsed variable in __mkroute_input |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.3 | [`d64f69b0373a`](https://git.kernel.org/torvalds/c/d64f69b0373a) | [net] | rtnetlink: catch -EOPNOTSUPP errors from ndo_bridge_getlink |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.3 | [`a0d9a8604f29`](https://git.kernel.org/torvalds/c/a0d9a8604f29) | [net] | rtnetlink: introduce new RTA_ENCAP_TYPE and RTA_ENCAP attributes |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`519c818e8fb6`](https://git.kernel.org/torvalds/c/519c818e8fb6) (loose) | [net] | sched: add percpu stats to actions |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 4.3 | [`c1b3b19923a3`](https://git.kernel.org/torvalds/c/c1b3b19923a3) (loose) | [net] | sched: don't break line in tc_classify loop notification |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.3 | [`348e3435cbef`](https://git.kernel.org/torvalds/c/348e3435cbef) (loose) | [net] | sched: drop all special handling of tx_queue_len == 0 |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-395 |
| CANDIDATE | 4.3 | [`24ea591d2201`](https://git.kernel.org/torvalds/c/24ea591d2201) (loose) | [net] | sched: extend percpu stats helpers |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 4.3 | [`db4094bca7a5`](https://git.kernel.org/torvalds/c/db4094bca7a5) (loose) | [net] | sched: ignore tx_queue_len when assigning default qdisc |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-395 |
| CANDIDATE | 4.3 | [`d66d6c3152e8`](https://git.kernel.org/torvalds/c/d66d6c3152e8) (loose) | [net] | sched: register noqueue qdisc |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-395 |
| CANDIDATE | 4.3 | [`3e692f21532a`](https://git.kernel.org/torvalds/c/3e692f21532a) (loose) | [net] | sched: simplify attach_one_default_qdisc() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-395 |
| CANDIDATE | 4.3 | [`877d1f6291f8`](https://git.kernel.org/torvalds/c/877d1f6291f8) (loose) | [net] | Set sk_txhash from a random number |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.3 | [`675ee231d960`](https://git.kernel.org/torvalds/c/675ee231d960) | [net] | tcp: add proper TS val into RST packets |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.3 | [`c80dbe046129`](https://git.kernel.org/torvalds/c/c80dbe046129) | [net] | tcp: allow dctcp alpha to drop to zero |  | generic code, tag [net] | 3.10.0-558 |
| CANDIDATE | 4.3 | [`c3a8d9474684`](https://git.kernel.org/torvalds/c/c3a8d9474684) | [net] | tcp: use dctcp if enabled on the route to the initiator |  | generic code, tag [net] | 3.10.0-315 |
| CANDIDATE | 4.3 | [`c29a70d2cadf`](https://git.kernel.org/torvalds/c/c29a70d2cadf) | [net] | tunnel: introduce udp_tun_rx_dst() |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`e277de5f3f7d`](https://git.kernel.org/torvalds/c/e277de5f3f7d) | [net] | tunnels: Don't require remote endpoint or ID during creation |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.3 | [`3bfd847203c6`](https://git.kernel.org/torvalds/c/3bfd847203c6) (loose) | [net] | Use passed in table for nexthop lookups |  | generic code, tag [net] | 3.10.0-1039 |
| CANDIDATE | 4.3 | [`02f01ec1c5c6`](https://git.kernel.org/torvalds/c/02f01ec1c5c6) (loose) | [net] | veth: enable noqueue operation by default |  | CONFIG_VETH=y in A37 | 3.10.0-395 |
| CANDIDATE | 4.3 | [`906470c19da7`](https://git.kernel.org/torvalds/c/906470c19da7) (loose) | [net] | warn if drivers set tx_queue_len = 0 |  | generic code, tag [net] | 3.10.0-395 |
| CANDIDATE | 4.3 | [`eae8dee992af`](https://git.kernel.org/torvalds/c/eae8dee992af) | [net] | xfrm6: Fix IPv6 ECN decapsulation |  | CONFIG_XFRM=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.3 | [`4e077237cfb6`](https://git.kernel.org/torvalds/c/4e077237cfb6) | [net] | xfrm: Fix state threshold configuration from userspace |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 4.3 | [`0410e38eca85`](https://git.kernel.org/torvalds/c/0410e38eca85) | [net] | xprtrdma, svcrdma: Convert to ib_alloc_mr |  | generic code, tag [net] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`aabc92bbe3cf`](https://git.kernel.org/torvalds/c/aabc92bbe3cf) (loose) | [net] | add __netdev_alloc_pcpu_stats() to indicate gfp flags |  | generic code, tag [net] | 3.10.0-458 |
| CANDIDATE | 4.4 | [`54abc686c2d1`](https://git.kernel.org/torvalds/c/54abc686c2d1) (loose) | [net] | add skb_to_full_sk() helper and use it in selinux_netlbl_skbuff_setsid() |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.4 | [`8844f97238ca`](https://git.kernel.org/torvalds/c/8844f97238ca) | [net] | af_unix: don't append consumed skbs to sk_receive_queue |  | CONFIG_UNIX=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.4 | [`a3a116e04cc6`](https://git.kernel.org/torvalds/c/a3a116e04cc6) | [net] | af_unix: take receive queue lock while appending new skb |  | CONFIG_UNIX=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.4 | [`04eb44890e5b`](https://git.kernel.org/torvalds/c/04eb44890e5b) | [net] | bridge: Add br_netif_receive_skb remove netif_receive_skb_sk |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.4 | [`3741873b4f73`](https://git.kernel.org/torvalds/c/3741873b4f73) | [net] | bridge: allow adding of fdb entries pointing to the bridge device |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`f2d74cf88c62`](https://git.kernel.org/torvalds/c/f2d74cf88c62) | [net] | bridge: Cache net in br_nf_pre_routing_finish |  | CONFIG_BRIDGE=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.4 | [`56607386e80c`](https://git.kernel.org/torvalds/c/56607386e80c) | [net] | bridge: defer switchdev fdb del call in fdb_del_external_learn |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`a79e88d9fbbe`](https://git.kernel.org/torvalds/c/a79e88d9fbbe) | [net] | bridge: define some min/max/default ageing time constants |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`dcd45e06496c`](https://git.kernel.org/torvalds/c/dcd45e06496c) | [net] | bridge: don't age externally added FDB entries |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`af3793921d49`](https://git.kernel.org/torvalds/c/af3793921d49) | [net] | bridge: fix gc_timer mod/del race condition |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`1f19c578df80`](https://git.kernel.org/torvalds/c/1f19c578df80) | [net] | bridge: Introduce br_send_bpdu_finish |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.4 | [`150217c68821`](https://git.kernel.org/torvalds/c/150217c68821) | [net] | bridge: netlink: add fdb flush |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`111189abc5c3`](https://git.kernel.org/torvalds/c/111189abc5c3) | [net] | bridge: netlink: add group_addr support |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`7910228b6bb3`](https://git.kernel.org/torvalds/c/7910228b6bb3) | [net] | bridge: netlink: add group_fwd_mask support |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`0f963b7592ef`](https://git.kernel.org/torvalds/c/0f963b7592ef) | [net] | bridge: netlink: add support for default_pvid |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`431db3c050af`](https://git.kernel.org/torvalds/c/431db3c050af) | [net] | bridge: netlink: add support for igmp's hash_elasticity |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`858079fdae16`](https://git.kernel.org/torvalds/c/858079fdae16) | [net] | bridge: netlink: add support for igmp's hash_max |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`7e4df51eb35d`](https://git.kernel.org/torvalds/c/7e4df51eb35d) | [net] | bridge: netlink: add support for igmp's intervals |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`79b859f573d6`](https://git.kernel.org/torvalds/c/79b859f573d6) | [net] | bridge: netlink: add support for multicast_last_member_count |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`ba062d7cc6a0`](https://git.kernel.org/torvalds/c/ba062d7cc6a0) | [net] | bridge: netlink: add support for multicast_querier |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`295141d9049b`](https://git.kernel.org/torvalds/c/295141d9049b) | [net] | bridge: netlink: add support for multicast_query_use_ifaddr |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`a9a6bc70f5f7`](https://git.kernel.org/torvalds/c/a9a6bc70f5f7) | [net] | bridge: netlink: add support for multicast_router |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`89126327f921`](https://git.kernel.org/torvalds/c/89126327f921) | [net] | bridge: netlink: add support for multicast_snooping |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`b89e6babad4b`](https://git.kernel.org/torvalds/c/b89e6babad4b) | [net] | bridge: netlink: add support for multicast_startup_query_count |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`93870cc02a0a`](https://git.kernel.org/torvalds/c/93870cc02a0a) | [net] | bridge: netlink: add support for netfilter tables config |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`5d6ae479ab7d`](https://git.kernel.org/torvalds/c/5d6ae479ab7d) | [net] | bridge: netlink: add support for port's multicast_router attribute |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`9b0c6e4deb3d`](https://git.kernel.org/torvalds/c/9b0c6e4deb3d) | [net] | bridge: netlink: allow to flush port's fdb |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`d76bd14e0f75`](https://git.kernel.org/torvalds/c/d76bd14e0f75) | [net] | bridge: netlink: export all timers |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`7599a2201fc7`](https://git.kernel.org/torvalds/c/7599a2201fc7) | [net] | bridge: netlink: export bridge id |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`80df9a2692ed`](https://git.kernel.org/torvalds/c/80df9a2692ed) | [net] | bridge: netlink: export port's bridge id |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`96f94e7f4a21`](https://git.kernel.org/torvalds/c/96f94e7f4a21) | [net] | bridge: netlink: export port's designated cost and port |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`42d452c4b5e7`](https://git.kernel.org/torvalds/c/42d452c4b5e7) | [net] | bridge: netlink: export port's id and number |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`4ebc7660ab45`](https://git.kernel.org/torvalds/c/4ebc7660ab45) | [net] | bridge: netlink: export port's root id |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`61c0a9a83e0b`](https://git.kernel.org/torvalds/c/61c0a9a83e0b) | [net] | bridge: netlink: export port's timer values |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`e08e838ac570`](https://git.kernel.org/torvalds/c/e08e838ac570) | [net] | bridge: netlink: export port's topology_change_ack and config_pending |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`5127c81f84de`](https://git.kernel.org/torvalds/c/5127c81f84de) | [net] | bridge: netlink: export root id |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`684dd248bee8`](https://git.kernel.org/torvalds/c/684dd248bee8) | [net] | bridge: netlink: export root path cost |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`8762ba680fe8`](https://git.kernel.org/torvalds/c/8762ba680fe8) | [net] | bridge: netlink: export root port |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`ed4163098e30`](https://git.kernel.org/torvalds/c/ed4163098e30) | [net] | bridge: netlink: export topology_change and topology_change_detected |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`4917a1548ff4`](https://git.kernel.org/torvalds/c/4917a1548ff4) | [net] | bridge: netlink: make br_fill_info's frame size smaller |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`8d4df0b9300a`](https://git.kernel.org/torvalds/c/8d4df0b9300a) | [net] | bridge: Pass net into br_nf_ip_fragment |  | CONFIG_BRIDGE=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.4 | [`6532948b2e7b`](https://git.kernel.org/torvalds/c/6532948b2e7b) | [net] | bridge: Pass net into br_nf_push_frag_xmit |  | CONFIG_BRIDGE=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.4 | [`c62987bbd8a1`](https://git.kernel.org/torvalds/c/c62987bbd8a1) | [net] | bridge: push bridge setting ageing_time down to switchdev |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`b7af1472afa2`](https://git.kernel.org/torvalds/c/b7af1472afa2) | [net] | bridge: set is_local and is_static before fdb entry is added to the fdb hashtable |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`0944d6b5a2fa`](https://git.kernel.org/torvalds/c/0944d6b5a2fa) | [net] | bridge: try switchdev op first in __vlan_vid_add/del |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`2594e9064a57`](https://git.kernel.org/torvalds/c/2594e9064a57) | [net] | bridge: vlan: add per-vlan struct and move to rhashtables |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`8af78b648785`](https://git.kernel.org/torvalds/c/8af78b648785) | [net] | bridge: vlan: adjust rhashtable initial size and hash locks size |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`248234ca0297`](https://git.kernel.org/torvalds/c/248234ca0297) | [net] | bridge: vlan: don't pass flags when creating context only |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`2ffdf508d278`](https://git.kernel.org/torvalds/c/2ffdf508d278) | [net] | bridge: vlan: drop master_flags from __vlan_add |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`b8d02c3cace3`](https://git.kernel.org/torvalds/c/b8d02c3cace3) | [net] | bridge: vlan: drop unnecessary flush code |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`6623c60dc28e`](https://git.kernel.org/torvalds/c/6623c60dc28e) | [net] | bridge: vlan: enforce no pvid flag in vlan ranges |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`263344e64c0a`](https://git.kernel.org/torvalds/c/263344e64c0a) | [net] | bridge: vlan: fix possible null ptr derefs on port init and deinit |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`468e7944589c`](https://git.kernel.org/torvalds/c/468e7944589c) | [net] | bridge: vlan: fix possible null vlgrp deref while registering new port |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`f409d0ed87d2`](https://git.kernel.org/torvalds/c/f409d0ed87d2) | [net] | bridge: vlan: move back vlan_flush |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`77751ee8aec3`](https://git.kernel.org/torvalds/c/77751ee8aec3) | [net] | bridge: vlan: move pvid inside net_bridge_vlan_group |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`07bc588fc108`](https://git.kernel.org/torvalds/c/07bc588fc108) | [net] | bridge: vlan: Prevent possible use-after-free |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`f8ed289fab84`](https://git.kernel.org/torvalds/c/f8ed289fab84) | [net] | bridge: vlan: use br_vlan_(get\|put)_master to deal with refcounts |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`6be144f62f64`](https://git.kernel.org/torvalds/c/6be144f62f64) | [net] | bridge: vlan: use br_vlan_should_use to simplify __vlan_add/del |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`ddd611d3fffb`](https://git.kernel.org/torvalds/c/ddd611d3fffb) | [net] | bridge: vlan: Use correct flag name in comment |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`907b1e6e83ed`](https://git.kernel.org/torvalds/c/907b1e6e83ed) | [net] | bridge: vlan: use proper rcu for the vlgrp member |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`e9c953eff7f0`](https://git.kernel.org/torvalds/c/e9c953eff7f0) | [net] | bridge: vlan: use rcu for vlan_list traversal in br_fill_ifinfo |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`586c2b573ee4`](https://git.kernel.org/torvalds/c/586c2b573ee4) | [net] | bridge: vlan: use rcu list for the ordered vlan list |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`eca1e006cf6f`](https://git.kernel.org/torvalds/c/eca1e006cf6f) | [net] | bridge: vlan: Use rcu_dereference instead of rtnl_dereference |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.4 | [`b5ffe6344255`](https://git.kernel.org/torvalds/c/b5ffe6344255) (loose) | [net] | Drop unlikely before IS_ERR(_OR_NULL) |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.4 | [`5f8dc33e8ee7`](https://git.kernel.org/torvalds/c/5f8dc33e8ee7) (loose) | [net] | fix feature changes on devices without ndo_set_features |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 4.4 | [`5037e9ef9454`](https://git.kernel.org/torvalds/c/5037e9ef9454) (loose) | [net] | fix IP early demux races |  | generic code, tag [net] | 3.10.0-343 |
| CANDIDATE | 4.4 | [`92c14d9b5ee8`](https://git.kernel.org/torvalds/c/92c14d9b5ee8) | [net] | genetlink: simplify genl_notify |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 4.4 | [`fa20105e09e9`](https://git.kernel.org/torvalds/c/fa20105e09e9) | [net] | ib/cma: Add support for network namespaces |  | generic code, tag [net] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`e622f2f4ad21`](https://git.kernel.org/torvalds/c/e622f2f4ad21) | [net] | ib: split struct ib_send_wr |  | generic code, tag [net] | 3.10.0-447 |
| CANDIDATE | 4.4 | [`dd461d6aa894`](https://git.kernel.org/torvalds/c/dd461d6aa894) | [net] | if_link: Add control trust VF |  | generic code, tag [net] | 3.10.0-395 |
| CANDIDATE | 4.4 | [`6f9c96154669`](https://git.kernel.org/torvalds/c/6f9c96154669) | [net] | inet: constify ip_route_output_flow() socket argument |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.4 | [`caf3f2676aaa`](https://git.kernel.org/torvalds/c/caf3f2676aaa) | [net] | inet: ip_skb_dst_mtu() should use sk_fullsock() |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | 4.4 | [`573c7ba006ed`](https://git.kernel.org/torvalds/c/573c7ba006ed) (loose) | [net] | introduce pre-change upper device notifier |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.4 | [`b4fe85f9c914`](https://git.kernel.org/torvalds/c/b4fe85f9c914) | [net] | ip_tunnel: disable preemption when updating per-cpu tstats |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.4 | [`fbdd29bfd2da`](https://git.kernel.org/torvalds/c/fbdd29bfd2da) (loose) | [net] | ipmr, ip6mr: fix vif/tunnel failure race condition |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.4 | [`dbd3393c56a8`](https://git.kernel.org/torvalds/c/dbd3393c56a8) | [net] | ipv4: add defensive check for CHECKSUM_PARTIAL skbs in ip_fragment |  | generic code, tag [net] | 3.10.0-373 |
| CANDIDATE | 4.4 | [`cc4c851e4b41`](https://git.kernel.org/torvalds/c/cc4c851e4b41) | [net] | ipv4: Don't recompute net in ipmr_queue_xmit |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.4 | [`87e9f0315952`](https://git.kernel.org/torvalds/c/87e9f0315952) | [net] | ipv4: fix a potential deadlock in mcast getsockopt() path |  | generic code, tag [net] | 3.10.0-829 |
| CANDIDATE | 4.4 | [`0a837fe47247`](https://git.kernel.org/torvalds/c/0a837fe47247) | [net] | ipv4: Fix compilation errors in fib_rebalance |  | generic code, tag [net] | 3.10.0-345 |
| CANDIDATE | 4.4 | [`79a131592dbb`](https://git.kernel.org/torvalds/c/79a131592dbb) | [net] | ipv4: ICMP packet inspection for multipath |  | generic code, tag [net] | 3.10.0-345 |
| CANDIDATE | 4.4 | [`7b1311807f3d`](https://git.kernel.org/torvalds/c/7b1311807f3d) | [net] | ipv4: implement support for NOPREFIXROUTE ifa flag for ipv4 address |  | generic code, tag [net] | 3.10.0-352 |
| CANDIDATE | 4.4 | [`0e884c78ee19`](https://git.kernel.org/torvalds/c/0e884c78ee19) | [net] | ipv4: L3 hash-based multipath |  | generic code, tag [net] | 3.10.0-345 |
| CANDIDATE | 4.4 | [`d749c9cbffd6`](https://git.kernel.org/torvalds/c/d749c9cbffd6) | [net] | ipv4: no CHECKSUM_PARTIAL on MSG_MORE corked sockets |  | generic code, tag [net] | 3.10.0-373 |
| CANDIDATE | 4.4 | [`758ccac8e741`](https://git.kernel.org/torvalds/c/758ccac8e741) | [net] | ipv4: Only compute net once in ipmr_forward_finish |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.4 | [`9920e48b830a`](https://git.kernel.org/torvalds/c/9920e48b830a) | [net] | ipv4: use l4 hash for locally generated multipath flows |  | generic code, tag [net] | 3.10.0-558 |
| CANDIDATE | 4.4 | [`644d0e656958`](https://git.kernel.org/torvalds/c/644d0e656958) | [net] | ipv6 Use get_hash_from_flowi6 for rt6 hash |  | generic code, tag [net] | 3.10.0-969 |
| CANDIDATE | 4.4 | [`405c92f7a541`](https://git.kernel.org/torvalds/c/405c92f7a541) | [net] | ipv6: add defensive check for CHECKSUM_PARTIAL skbs in ip_fragment |  | generic code, tag [net] | 3.10.0-373 |
| CANDIDATE | 4.4 | [`9b29c6962b70`](https://git.kernel.org/torvalds/c/9b29c6962b70) | [net] | ipv6: automatically enable stable privacy mode if stable_secret set |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 4.4 | [`0d3f6d297bfb`](https://git.kernel.org/torvalds/c/0d3f6d297bfb) | [net] | ipv6: Avoid creating RTF_CACHE from a rt that is not managed by fib6 tree |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.4 | [`5973fb1e2450`](https://git.kernel.org/torvalds/c/5973fb1e2450) | [net] | ipv6: Check expire on DST_NOCACHE route |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.4 | [`02bcf4e082e4`](https://git.kernel.org/torvalds/c/02bcf4e082e4) | [net] | ipv6: Check rt->dst.from for the DST_NOCACHE route |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.4 | [`2a189f9e5765`](https://git.kernel.org/torvalds/c/2a189f9e5765) | [net] | ipv6: clean up dev_snmp6 proc entry when we fail to initialize inet6_dev |  | generic code, tag [net] | 3.10.0-385 |
| CANDIDATE | 4.4 | [`3aef934f4d4b`](https://git.kernel.org/torvalds/c/3aef934f4d4b) | [net] | ipv6: constify ip6_dst_lookup_{flow\|tail}() sock arguments | CVE-2020-1749 | generic code, tag [net] | 3.10.0-1131 |
| CANDIDATE | 4.4 | [`ec13ad1d705c`](https://git.kernel.org/torvalds/c/ec13ad1d705c) | [net] | ipv6: fix crash on ICMPv6 redirects with prohibited/blackholed source |  | generic code, tag [net] | 3.10.0-345 |
| CANDIDATE | 4.4 | [`ebac62fe3d24`](https://git.kernel.org/torvalds/c/ebac62fe3d24) | [net] | ipv6: fix tunnel error handling |  | generic code, tag [net] | 3.10.0-925 |
| CANDIDATE | 4.4 | [`feec0cb3f20b`](https://git.kernel.org/torvalds/c/feec0cb3f20b) | [net] | ipv6: gro: support sit protocol |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.4 | [`9a1ec4612c9b`](https://git.kernel.org/torvalds/c/9a1ec4612c9b) | [net] | ipv6: keep existing flags when setting IFA_F_OPTIMISTIC |  | generic code, tag [net] | 3.10.0-385 |
| CANDIDATE | 4.4 | [`6bd4f355df2e`](https://git.kernel.org/torvalds/c/6bd4f355df2e) | [net] | ipv6: kill sk_dst_lock |  | generic code, tag [net] | 3.10.0-491 |
| CANDIDATE | 4.4 | [`682b1a9d3f96`](https://git.kernel.org/torvalds/c/682b1a9d3f96) | [net] | ipv6: no CHECKSUM_PARTIAL on MSG_MORE corked sockets |  | generic code, tag [net] | 3.10.0-373 |
| CANDIDATE | 4.4 | [`b7b0b1d290cc`](https://git.kernel.org/torvalds/c/b7b0b1d290cc) | [net] | ipv6: recreate ipv6 link-local addresses when increasing MTU over IPV6_MIN_MTU |  | generic code, tag [net] | 3.10.0-343 |
| CANDIDATE | 4.4 | [`c836a8ba9386`](https://git.kernel.org/torvalds/c/c836a8ba9386) | [net] | ipv6: sctp: add rcu protection around np->opt |  | generic code, tag [net] | 3.10.0-352 |
| CANDIDATE | 4.4 | [`69ce6487dcd3`](https://git.kernel.org/torvalds/c/69ce6487dcd3) | [net] | ipv6: sctp: fix lockdep splat in sctp_v6_get_dst() |  | generic code, tag [net] | 3.10.0-352 |
| CANDIDATE | 4.4 | [`02a56c81cf33`](https://git.kernel.org/torvalds/c/02a56c81cf33) | [net] | net_sched: em_meta: use skb_to_full_sk() helper |  | CONFIG_NET_EMATCH_META=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.4 | [`4eaf3b84f288`](https://git.kernel.org/torvalds/c/4eaf3b84f288) | [net] | net_sched: fix qdisc_tree_decrease_qlen() races |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.4 | [`225734de70cd`](https://git.kernel.org/torvalds/c/225734de70cd) | [net] | net_sched: make qdisc_tree_decrease_qlen() work for non mq |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.4 | [`c9322458119e`](https://git.kernel.org/torvalds/c/c9322458119e) | [net] | netfilter: bridge: avoid unused label warning |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-359 |
| CANDIDATE | 4.4 | [`ae2d708ed8fb`](https://git.kernel.org/torvalds/c/ae2d708ed8fb) | [net] | netfilter: conntrack: fix crash on timeout object removal |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-468 |
| CANDIDATE | 4.4 | [`97b59c3a91d5`](https://git.kernel.org/torvalds/c/97b59c3a91d5) | [net] | netfilter: ebtables: Simplify the arguments to ebt_do_table |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.4 | [`74ec4d55c4d2`](https://git.kernel.org/torvalds/c/74ec4d55c4d2) | [net] | netfilter: fix xt_TEE and xt_TPROXY dependencies |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.4 | [`7695495d5a83`](https://git.kernel.org/torvalds/c/7695495d5a83) | [net] | netfilter: ipv6: code indentation |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.4 | [`a31f1adc0948`](https://git.kernel.org/torvalds/c/a31f1adc0948) | [net] | netfilter: nf_conntrack: Add a struct net parameter to l4_pkt_to_tuple |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.4 | [`94f9cd81436c`](https://git.kernel.org/torvalds/c/94f9cd81436c) | [net] | netfilter: nf_nat_redirect: add missing NULL pointer check |  | CONFIG_NF_NAT=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.4 | [`633c9a840d0b`](https://git.kernel.org/torvalds/c/633c9a840d0b) | [net] | netfilter: nfnetlink: avoid recurrent netns lookups in call_batch |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.4 | [`dbc3617f4c1f`](https://git.kernel.org/torvalds/c/dbc3617f4c1f) | [net] | netfilter: nfnetlink: don't probe module if it exists |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.4 | [`bd678e09dc17`](https://git.kernel.org/torvalds/c/bd678e09dc17) | [net] | netfilter: nfnetlink: fix splat due to incorrect socket memory accounting in skbuff clones |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.4 | [`639e077b43d9`](https://git.kernel.org/torvalds/c/639e077b43d9) | [net] | netfilter: nfnetlink_queue: Unregister pernet subsys in case of init failure |  | CONFIG_NETFILTER_NETLINK_QUEUE=y in A37 | 3.10.0-424 |
| CANDIDATE | 4.4 | [`c7af6483b9f7`](https://git.kernel.org/torvalds/c/c7af6483b9f7) | [net] | netfilter: Pass net into nf_xfrm_me_harder |  | CONFIG_NETFILTER=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.4 | [`206e8c00752f`](https://git.kernel.org/torvalds/c/206e8c00752f) | [net] | netfilter: Pass net to nf_dup_ipv4 and nf_dup_ipv6 |  | CONFIG_NETFILTER=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.4 | [`b11b1f652dcc`](https://git.kernel.org/torvalds/c/b11b1f652dcc) | [net] | netfilter: Store net in nf_hook_state |  | CONFIG_NETFILTER=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.4 | [`156c196f6038`](https://git.kernel.org/torvalds/c/156c196f6038) | [net] | netfilter: x_tables: Pass struct net in xt_action_param |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.4 | [`686c9b50809d`](https://git.kernel.org/torvalds/c/686c9b50809d) | [net] | netfilter: x_tables: Use par->net instead of computing from the passed net devices |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.4 | [`fdd723e2a856`](https://git.kernel.org/torvalds/c/fdd723e2a856) | [net] | netfilter: xt_owner: use skb_to_full_sk() helper |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.4 | [`45efccdbec3c`](https://git.kernel.org/torvalds/c/45efccdbec3c) | [net] | netfilter: xt_TEE: fix NULL dereference |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.4 | [`b1974ed05ea9`](https://git.kernel.org/torvalds/c/b1974ed05ea9) | [net] | netlink: Rightsize IFLA_AF_SPEC size calculation |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | 4.4 | [`822d54b9c2c1`](https://git.kernel.org/torvalds/c/822d54b9c2c1) | [net] | netpoll: Drop budget parameter from NAPI polling call hierarchy |  | generic code, tag [net] | 3.10.0-717 |
| CANDIDATE | 4.4 | [`880621c2605b`](https://git.kernel.org/torvalds/c/880621c2605b) | [net] | packet: Allow packets with only a header (but no payload) |  | CONFIG_PACKET=y in A37 | 3.10.0-703 |
| CANDIDATE | 4.4 | [`30f7ea1c2b5f`](https://git.kernel.org/torvalds/c/30f7ea1c2b5f) | [net] | packet: race condition in packet_bind |  | CONFIG_PACKET=y in A37 | 3.10.0-352 |
| CANDIDATE | 4.4 | [`3ce58d84358c`](https://git.kernel.org/torvalds/c/3ce58d84358c) (loose) | [net] | Refactor path selection in __ip_route_output_key_hash |  | generic code, tag [net] | 3.10.0-882 |
| CANDIDATE | 4.4 | [`326fcfa5acca`](https://git.kernel.org/torvalds/c/326fcfa5acca) (loose) | [net] | remove unnecessary semicolon in netdev_alloc_pcpu_stats() |  | generic code, tag [net] | 3.10.0-458 |
| CANDIDATE | 4.4 | [`b22b941b2c25`](https://git.kernel.org/torvalds/c/b22b941b2c25) | [net] | rtnetlink: fix frame size warning in rtnl_fill_ifinfo |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.4 | [`743b2a667446`](https://git.kernel.org/torvalds/c/743b2a667446) | [net] | sched: cls_flow: use skb_to_full_sk() helper |  | CONFIG_NET_CLS_FLOW=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.4 | [`73c20a8b7245`](https://git.kernel.org/torvalds/c/73c20a8b7245) (loose) | [net] | sched: fix missing free per cpu on qstats |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 4.4 | [`2a4f4176217d`](https://git.kernel.org/torvalds/c/2a4f4176217d) (loose) | [net] | sched: kill dead code in sch_choke.c |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.4 | [`4ece90097745`](https://git.kernel.org/torvalds/c/4ece90097745) | [net] | sit: fix sit0 percpu double allocations |  | CONFIG_IPV6_SIT=y in A37 | 3.10.0-440 |
| CANDIDATE | 4.4 | [`f65486156987`](https://git.kernel.org/torvalds/c/f65486156987) | [net] | skbuff: Fix offset error in skb_reorder_vlan_header |  | generic code, tag [net] | 3.10.0-343 |
| CANDIDATE | 4.4 | [`080a270f5ade`](https://git.kernel.org/torvalds/c/080a270f5ade) | [net] | sock: don't enable netstamp for af_unix sockets |  | generic code, tag [net] | 3.10.0-345 |
| CANDIDATE | 4.4 | [`ebb516af60e1`](https://git.kernel.org/torvalds/c/ebb516af60e1) | [net] | tcp/dccp: fix race at listener dismantle phase |  | generic code, tag [net] | 3.10.0-1040 |
| CANDIDATE | 4.4 | [`9e45a3e36b36`](https://git.kernel.org/torvalds/c/9e45a3e36b36) | [net] | tcp: apply Kern's check on RTTs used for congestion control |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.4 | [`8941faa161b5`](https://git.kernel.org/torvalds/c/8941faa161b5) (loose) | [net] | tso: add support for IPv6 |  | generic code, tag [net] | 3.10.0-444 |
| CANDIDATE | 4.4 | [`f63ce5b6fa5e`](https://git.kernel.org/torvalds/c/f63ce5b6fa5e) | [net] | tun_dst: Fix potential NULL dereference |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.4 | [`1a14f1e5550a`](https://git.kernel.org/torvalds/c/1a14f1e5550a) | [net] | xfrm4: Fix header checks in _decode_session4 |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 4.4 | [`ea673a4d3a33`](https://git.kernel.org/torvalds/c/ea673a4d3a33) | [net] | xfrm4: Reload skb header pointers after calling pskb_may_pull |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 4.4 | [`a8a572a6b5f2`](https://git.kernel.org/torvalds/c/a8a572a6b5f2) | [net] | xfrm: dst_entries_init() per-net dst_ops |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 4.4 | [`e33d4f13d21e`](https://git.kernel.org/torvalds/c/e33d4f13d21e) | [net] | xfrm: Fix unaligned access to stats in copy_to_user_state() |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 4.4 | [`cb866e3298cd`](https://git.kernel.org/torvalds/c/cb866e3298cd) | [net] | xfrm: Increment statistic counter on inner mode error |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 4.4 | [`bd5eb35f16a9`](https://git.kernel.org/torvalds/c/bd5eb35f16a9) | [net] | xfrm: take care of request sockets |  | CONFIG_XFRM=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.5 | [`c7f5d105495a`](https://git.kernel.org/torvalds/c/c7f5d105495a) (loose) | [net] | Add eth_platform_get_mac_address() helper. |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.5 | [`b1f0a0e99c58`](https://git.kernel.org/torvalds/c/b1f0a0e99c58) (loose) | [net] | add inet_sk_transparent() helper |  | generic code, tag [net] | 3.10.0-349 |
| CANDIDATE | 4.5 | [`764f5e544118`](https://git.kernel.org/torvalds/c/764f5e544118) (loose) | [net] | add info struct for LAG changeupper |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.5 | [`7be61833042e`](https://git.kernel.org/torvalds/c/7be61833042e) (loose) | [net] | add netif_is_lag_master helper |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.5 | [`e0ba1414f310`](https://git.kernel.org/torvalds/c/e0ba1414f310) (loose) | [net] | add netif_is_lag_port helper |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.5 | [`c981e4213e9d`](https://git.kernel.org/torvalds/c/c981e4213e9d) (loose) | [net] | add netif_is_team_master helper |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.5 | [`f7f019ee6d11`](https://git.kernel.org/torvalds/c/f7f019ee6d11) (loose) | [net] | add netif_is_team_port helper |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.5 | [`d64b5e85bfe2`](https://git.kernel.org/torvalds/c/d64b5e85bfe2) (loose) | [net] | add netif_tx_napi_add() |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.5 | [`29bf24afb290`](https://git.kernel.org/torvalds/c/29bf24afb290) (loose) | [net] | add possibility to pass information about upper device via notifier |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.5 | [`55dc5a9f2f2a`](https://git.kernel.org/torvalds/c/55dc5a9f2f2a) (loose) | [net] | Add skb_inner_transport_offset function |  | generic code, tag [net] | 3.10.0-444 |
| CANDIDATE | 4.5 | [`52a82e23b9f2`](https://git.kernel.org/torvalds/c/52a82e23b9f2) | [net] | af_iucv: Validate socket address length in iucv_sock_bind() |  | generic code, tag [net] | 3.10.0-532 |
| CANDIDATE | 4.5 | [`2a028ecb7649`](https://git.kernel.org/torvalds/c/2a028ecb7649) (loose) | [net] | allow BH servicing in sk_busy_loop() |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.5 | [`e2f9dc3bd213`](https://git.kernel.org/torvalds/c/e2f9dc3bd213) (loose) | [net] | avoid NULL deref in napi_get_frags() |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 4.5 | [`52bd2d62ce67`](https://git.kernel.org/torvalds/c/52bd2d62ce67) (loose) | [net] | better skb->sender_cpu and skb->napi_id cohabitation |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.5 | [`404cdbf0894a`](https://git.kernel.org/torvalds/c/404cdbf0894a) | [net] | bridge: add vlan filtering change for new bridged device |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.5 | [`6b72a770202a`](https://git.kernel.org/torvalds/c/6b72a770202a) | [net] | bridge: add vlan filtering change notification |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.5 | [`c6894dec8ea9`](https://git.kernel.org/torvalds/c/c6894dec8ea9) | [net] | bridge: fix lockdep addr_list_lock false positive splat |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.5 | [`56bb7fd994f4`](https://git.kernel.org/torvalds/c/56bb7fd994f4) | [net] | bridge: mdb: avoid uninitialized variable warning |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.5 | [`08474cc1e6ea`](https://git.kernel.org/torvalds/c/08474cc1e6ea) | [net] | bridge: Propagate vlan add failure to user |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.5 | [`f1fecb1d10ec`](https://git.kernel.org/torvalds/c/f1fecb1d10ec) | [net] | bridge: Reflect MDB entries to hardware |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.5 | [`aeb7ed14fe5d`](https://git.kernel.org/torvalds/c/aeb7ed14fe5d) | [net] | bridge: use kobj_to_dev instead of to_dev |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.5 | [`b03804e7c3ad`](https://git.kernel.org/torvalds/c/b03804e7c3ad) (loose) | [net] | Check CHANGEUPPER notifier return value |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 4.5 | [`b618aaa91b58`](https://git.kernel.org/torvalds/c/b618aaa91b58) (loose) | [net] | constify netif_is_* helpers net_device param |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | 4.5 | [`7a6ae71b2490`](https://git.kernel.org/torvalds/c/7a6ae71b2490) (loose) | [net] | Elaborate on checksum offload interface description |  | generic code, tag [net] | 3.10.0-678 |
| CANDIDATE | 4.5 | [`c8cd0989bd15`](https://git.kernel.org/torvalds/c/c8cd0989bd15) (loose) | [net] | Eliminate NETIF_F_GEN_CSUM and NETIF_F_V[46]_CSUM |  | generic code, tag [net] | 3.10.0-444 |
| CANDIDATE | 4.5 | [`ea3793ee29d3`](https://git.kernel.org/torvalds/c/ea3793ee29d3) (loose) | [net] | enable more fine-grained datagram reception control |  | generic code, tag [net] | 3.10.0-599 |
| CANDIDATE | 4.5 | [`9b368814b336`](https://git.kernel.org/torvalds/c/9b368814b336) (loose) | [net] | fix bridge multicast packet checksum validation |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | 4.5 | [`760a4322470e`](https://git.kernel.org/torvalds/c/760a4322470e) (loose) | [net] | Fix inverted test in __skb_recv_datagram |  | generic code, tag [net] | 3.10.0-599 |
| CANDIDATE | 4.5 | [`b6a0e72ad3cf`](https://git.kernel.org/torvalds/c/b6a0e72ad3cf) (loose) | [net] | Fix typo in netdev_intersect_features |  | generic code, tag [net] | 3.10.0-444 |
| CANDIDATE | 4.5 | [`461547f31589`](https://git.kernel.org/torvalds/c/461547f31589) | [net] | flow_dissector: Fix unaligned access in __skb_flow_dissector when used by eth_get_headlen |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.5 | [`ce87fc6ce3f9`](https://git.kernel.org/torvalds/c/ce87fc6ce3f9) | [net] | gro: Make GRO aware of lightweight tunnels |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.5 | [`a813104d9233`](https://git.kernel.org/torvalds/c/a813104d9233) | [net] | IFF_NO_QUEUE: Fix for drivers not calling ether_setup() |  | generic code, tag [net] | 3.10.0-395 |
| CANDIDATE | 4.5 | [`8282f27449bf`](https://git.kernel.org/torvalds/c/8282f27449bf) | [net] | inet: frag: Always orphan skbs inside ip_defrag() |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.5 | [`04d482660a07`](https://git.kernel.org/torvalds/c/04d482660a07) (loose) | [net] | introduce change lower state notifier |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.5 | [`fb1b2e3ce53a`](https://git.kernel.org/torvalds/c/fb1b2e3ce53a) (loose) | [net] | introduce lower state changed info structure for LAG lowers |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.5 | [`039f50629b7f`](https://git.kernel.org/torvalds/c/039f50629b7f) | [net] | ip_tunnel: Move stats update to iptunnel_xmit() |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.5 | [`ccbb0aa62da7`](https://git.kernel.org/torvalds/c/ccbb0aa62da7) (loose) | [net] | ipmr: add mfc newroute/delroute netlink support |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.5 | [`520191bb404c`](https://git.kernel.org/torvalds/c/520191bb404c) (loose) | [net] | ipmr: adjust mroute.h style and drop extern |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.5 | [`f3d431810e85`](https://git.kernel.org/torvalds/c/f3d431810e85) (loose) | [net] | ipmr: always define mroute_reg_vif_num |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.5 | [`29c3f1973942`](https://git.kernel.org/torvalds/c/29c3f1973942) (loose) | [net] | ipmr: drop an instance of CONFIG_IP_MROUTE_MULTIPLE_TABLES |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.5 | [`af623236a9f3`](https://git.kernel.org/torvalds/c/af623236a9f3) (loose) | [net] | ipmr: drop ip_mr_init() mrt_cachep null check as we'll panic if it fails |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.5 | [`a0b477366a95`](https://git.kernel.org/torvalds/c/a0b477366a95) (loose) | [net] | ipmr: factor out common vif init code |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.5 | [`7ef8f65df976`](https://git.kernel.org/torvalds/c/7ef8f65df976) (loose) | [net] | ipmr: fix code and comment style |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.5 | [`42e6b89ce4e8`](https://git.kernel.org/torvalds/c/42e6b89ce4e8) (loose) | [net] | ipmr: fix setsockopt error return |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.5 | [`fe9ef3ce395d`](https://git.kernel.org/torvalds/c/fe9ef3ce395d) (loose) | [net] | ipmr: make ip_mroute_getsockopt more understandable |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.5 | [`1973a4ea6cea`](https://git.kernel.org/torvalds/c/1973a4ea6cea) (loose) | [net] | ipmr: move pimsm_enabled to pim.h and rename |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.5 | [`5ea1f13299d8`](https://git.kernel.org/torvalds/c/5ea1f13299d8) (loose) | [net] | ipmr: move struct mr_table and VIF_EXISTS to mroute.h |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.5 | [`1113ebbcf9e4`](https://git.kernel.org/torvalds/c/1113ebbcf9e4) (loose) | [net] | ipmr: move the tbl id check in ipmr_new_table |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.5 | [`29e97d214509`](https://git.kernel.org/torvalds/c/29e97d214509) (loose) | [net] | ipmr: rearrange and cleanup setsockopt |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.5 | [`c316c629f12e`](https://git.kernel.org/torvalds/c/c316c629f12e) (loose) | [net] | ipmr: remove some pimsm ifdefs and simplify |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.5 | [`06bd6c0370bb`](https://git.kernel.org/torvalds/c/06bd6c0370bb) (loose) | [net] | ipmr: remove unused MFC_NOTIFY flag and make the flags enum |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.5 | [`0797cbd8e274`](https://git.kernel.org/torvalds/c/0797cbd8e274) | [net] | ipv4: eliminate endianness warnings in ip_fib.h |  | generic code, tag [net] | 3.10.0-882 |
| CANDIDATE | 4.5 | [`30d3d83a7dce`](https://git.kernel.org/torvalds/c/30d3d83a7dce) | [net] | ipv4: fix endianness warnings in ip_tunnel_core.c |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.5 | [`919483096bfe`](https://git.kernel.org/torvalds/c/919483096bfe) | [net] | ipv4: fix memory leaks in ip_cmsg_send() callers |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.5 | [`13b287e8d1ca`](https://git.kernel.org/torvalds/c/13b287e8d1ca) | [net] | ipv4: Namespaceify tcp_keepalive_time sysctl knob |  | generic code, tag [net] | 3.10.0-786 |
| CANDIDATE | 4.5 | [`9bd6861bd432`](https://git.kernel.org/torvalds/c/9bd6861bd432) | [net] | ipv4: Namespecify tcp_keepalive_probes sysctl knob |  | generic code, tag [net] | 3.10.0-786 |
| CANDIDATE | 4.5 | [`b840d15d3912`](https://git.kernel.org/torvalds/c/b840d15d3912) | [net] | ipv4: Namespecify the tcp_keepalive_intvl sysctl knob |  | generic code, tag [net] | 3.10.0-786 |
| CANDIDATE | 4.5 | [`a8c4a2522a08`](https://git.kernel.org/torvalds/c/a8c4a2522a08) | [net] | ipv4: only create late gso-skb if skb is already set up with CHECKSUM_PARTIAL |  | generic code, tag [net] | 3.10.0-373 |
| CANDIDATE | 4.5 | [`16186a82de1f`](https://git.kernel.org/torvalds/c/16186a82de1f) | [net] | ipv6: addrconf: Fix recursive spin lock call |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.5 | [`cc9da6cc4f56`](https://git.kernel.org/torvalds/c/cc9da6cc4f56) | [net] | ipv6: addrconf: use stable address generator for ARPHRD_NONE |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 4.5 | [`3d171f390732`](https://git.kernel.org/torvalds/c/3d171f390732) | [net] | ipv6: always add flag an address that failed DAD with DADFAILED |  | generic code, tag [net] | 3.10.0-385 |
| CANDIDATE | 4.5 | [`44c3d0c1c0a8`](https://git.kernel.org/torvalds/c/44c3d0c1c0a8) | [net] | ipv6: fix a lockdep splat |  | generic code, tag [net] | 3.10.0-1069 |
| CANDIDATE | 4.5 | [`3ef0952ca85e`](https://git.kernel.org/torvalds/c/3ef0952ca85e) | [net] | ipv6: Only act upon NETDEV_*_TYPE_CHANGE if we have ipv6 addresses |  | generic code, tag [net] | 3.10.0-385 |
| CANDIDATE | 4.5 | [`d6df198d9247`](https://git.kernel.org/torvalds/c/d6df198d9247) (loose) | [net] | ipv6: restrict hop_limit sysctl setting to range [1; 255] |  | generic code, tag [net] | 3.10.0-385 |
| CANDIDATE | 4.5 | [`34ae6a1aa054`](https://git.kernel.org/torvalds/c/34ae6a1aa054) | [net] | ipv6: update skb->csum when CE mark is propagated |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.5 | [`979f66b32dbb`](https://git.kernel.org/torvalds/c/979f66b32dbb) | [net] | iucv: call skb_linearize() when needed |  | generic code, tag [net] | 3.10.0-426 |
| CANDIDATE | 4.5 | [`1837b2e2bcd2`](https://git.kernel.org/torvalds/c/1837b2e2bcd2) | [net] | mld, igmp: Fix reserved tailroom calculation |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.5 | [`6180d9de61a5`](https://git.kernel.org/torvalds/c/6180d9de61a5) (loose) | [net] | move napi_hash[] into read mostly section |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.5 | [`93f93a440415`](https://git.kernel.org/torvalds/c/93f93a440415) (loose) | [net] | move skb_mark_napi_id() into core networking stack |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.5 | [`34cbe27e811c`](https://git.kernel.org/torvalds/c/34cbe27e811c) (loose) | [net] | napi_hash_del() returns a boolean status |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.5 | [`472681d57a5d`](https://git.kernel.org/torvalds/c/472681d57a5d) (loose) | [net] | ndo_fdb_dump should report -EMSGSIZE to rtnl_fdb_dump |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.5 | [`619fe32640b4`](https://git.kernel.org/torvalds/c/619fe32640b4) | [net] | net_sched fix: reclassification needs to consider ether protocol changes |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.5 | [`df3eb6cd6892`](https://git.kernel.org/torvalds/c/df3eb6cd6892) | [net] | net_sched: drr: check for NULL pointer in drr_dequeue |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.5 | [`d93c6258ee42`](https://git.kernel.org/torvalds/c/d93c6258ee42) | [net] | netfilter: conntrack: resched in nf_ct_iterate_cleanup |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1118 |
| CANDIDATE | 4.5 | [`19576c947868`](https://git.kernel.org/torvalds/c/19576c947868) | [net] | netfilter: cttimeout: add netns support |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-468 |
| CANDIDATE | 4.5 | [`b4aae759c22e`](https://git.kernel.org/torvalds/c/b4aae759c22e) | [net] | netfilter: meta: add support for setting skb->pkttype |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.5 | [`ad6d95039313`](https://git.kernel.org/torvalds/c/ad6d95039313) | [net] | netfilter: nf_ct_helper: define pr_fmt() |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1053 |
| CANDIDATE | 4.5 | [`7c7bdf35991b`](https://git.kernel.org/torvalds/c/7c7bdf35991b) | [net] | netfilter: nfnetlink: use original skbuff when acking batches |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.5 | [`08a7f5d3f5c3`](https://git.kernel.org/torvalds/c/08a7f5d3f5c3) | [net] | netfilter: tee: select NF_DUP_IPV6 unconditionally |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.5 | [`ce6aea93f751`](https://git.kernel.org/torvalds/c/ce6aea93f751) (loose) | [net] | network drivers no longer need to implement ndo_busy_poll() |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.5 | [`9207f9d45b0a`](https://git.kernel.org/torvalds/c/9207f9d45b0a) (loose) | [net] | preserve IP control block during GSO segmentation |  | generic code, tag [net] | 3.10.0-352 |
| CANDIDATE | 4.5 | [`6dffb0447c25`](https://git.kernel.org/torvalds/c/6dffb0447c25) (loose) | [net] | propagate upper priv via netdev_master_upper_dev_link |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.5 | [`93d05d4a320c`](https://git.kernel.org/torvalds/c/93d05d4a320c) (loose) | [net] | provide generic busy polling to all NAPI drivers |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.5 | [`dfc3b0e89188`](https://git.kernel.org/torvalds/c/dfc3b0e89188) (loose) | [net] | remove unnecessary mroute.h includes |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.5 | [`a188222b6ed2`](https://git.kernel.org/torvalds/c/a188222b6ed2) (loose) | [net] | Rename NETIF_F_ALL_CSUM to NETIF_F_CSUM_MASK |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.5 | [`deed49df7390`](https://git.kernel.org/torvalds/c/deed49df7390) | [net] | route: check and remove route cache when we get route |  | generic code, tag [net] | 3.10.0-359 |
| CANDIDATE | 4.5 | [`1f211a1b929c`](https://git.kernel.org/torvalds/c/1f211a1b929c) (loose) | [net] | sched: add clsact qdisc |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.5 | [`fdc5432a7b44`](https://git.kernel.org/torvalds/c/fdc5432a7b44) (loose) | [net] | sched: add skb_at_tc_ingress helper |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.5 | [`44ef548f4f8b`](https://git.kernel.org/torvalds/c/44ef548f4f8b) (loose) | [net] | sched: fix act_ipt for LOG target |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-494 |
| CANDIDATE | 4.5 | [`ef456144da8e`](https://git.kernel.org/torvalds/c/ef456144da8e) | [net] | soreuseport: define reuseport groups |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 4.5 | [`e32ea7e74727`](https://git.kernel.org/torvalds/c/e32ea7e74727) | [net] | soreuseport: fast reuseport UDP socket selection |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 4.5 | [`b4ace4f1ae07`](https://git.kernel.org/torvalds/c/b4ace4f1ae07) | [net] | soreuseport: fix NULL ptr dereference SO_REUSEPORT after bind |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 4.5 | [`5fe1043da848`](https://git.kernel.org/torvalds/c/5fe1043da848) | [net] | svc_rdma: use local_dma_lkey |  | generic code, tag [net] | 3.10.0-447 |
| CANDIDATE | 4.5 | [`7716682cc58e`](https://git.kernel.org/torvalds/c/7716682cc58e) | [net] | tcp/dccp: fix another race at listener dismantle |  | generic code, tag [net] | 3.10.0-1040 |
| CANDIDATE | 4.5 | [`ff5d74977201`](https://git.kernel.org/torvalds/c/ff5d74977201) | [net] | tcp: beware of alignments in tcp_get_info() |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.5 | [`e62a123b8ef7`](https://git.kernel.org/torvalds/c/e62a123b8ef7) | [net] | tcp: fix NULL deref in tcp_v4_send_ack() |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.5 | [`d88270eef4b5`](https://git.kernel.org/torvalds/c/d88270eef4b5) | [net] | tcp: fix tcp_mark_head_lost to check skb len before fragmenting |  | generic code, tag [net] | 3.10.0-468 |
| CANDIDATE | 4.5 | [`a9d99ce28ed3`](https://git.kernel.org/torvalds/c/a9d99ce28ed3) | [net] | tcp: fix tcpi_segs_in after connection establishment |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.5 | [`271c3b9b7bda`](https://git.kernel.org/torvalds/c/271c3b9b7bda) | [net] | tcp: honour SO_BINDTODEVICE for TW_RST case too |  | generic code, tag [net] | 3.10.0-349 |
| CANDIDATE | 4.5 | [`e46787f0dd93`](https://git.kernel.org/torvalds/c/e46787f0dd93) | [net] | tcp: send_reset: test for non-NULL sk first |  | generic code, tag [net] | 3.10.0-349 |
| CANDIDATE | 4.5 | [`8c2c2358b236`](https://git.kernel.org/torvalds/c/8c2c2358b236) (loose) | [net] | tcp_memcontrol: properly detect ancestor socket pressure |  | generic code, tag [net] | 3.10.0-894 |
| CANDIDATE | 4.5 | [`931f3f4beb03`](https://git.kernel.org/torvalds/c/931f3f4beb03) (loose) | [net] | tcp_memcontrol: remove bogus hierarchy pressure propagation |  | generic code, tag [net] | 3.10.0-894 |
| CANDIDATE | 4.5 | [`af95d7df4059`](https://git.kernel.org/torvalds/c/af95d7df4059) (loose) | [net] | tcp_memcontrol: remove dead per-memcg count of allocated sockets |  | generic code, tag [net] | 3.10.0-894 |
| CANDIDATE | 4.5 | [`5146d1f15112`](https://git.kernel.org/torvalds/c/5146d1f15112) | [net] | tunnel: Clear IPCB(skb)->opt before dst_link_failure called |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 4.5 | [`35e2d1152b22`](https://git.kernel.org/torvalds/c/35e2d1152b22) | [net] | tunnels: Allow IPv6 UDP checksums to be correctly controlled |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.5 | [`40ba330227ad`](https://git.kernel.org/torvalds/c/40ba330227ad) | [net] | udp: disallow UFO for sockets with SO_NO_CHECK option |  | generic code, tag [net] | 3.10.0-638 |
| CANDIDATE | 4.5 | [`ed0dfffd7dcd`](https://git.kernel.org/torvalds/c/ed0dfffd7dcd) | [net] | udp: fix potential infinite loop in SO_REUSEPORT logic |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 4.5 | [`787d7ac308ff`](https://git.kernel.org/torvalds/c/787d7ac308ff) | [net] | udp: restrict offloads to one namespace |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.5 | [`02d62e86fe89`](https://git.kernel.org/torvalds/c/02d62e86fe89) (loose) | [net] | un-inline sk_busy_loop() |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.5 | [`7e059158d57b`](https://git.kernel.org/torvalds/c/7e059158d57b) | [net] | vxlan, gre, geneve: Set a large MTU on ovs-created tunnel devices |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.6 | [`ed49e6503710`](https://git.kernel.org/torvalds/c/ed49e6503710) (loose) | [net] | add description for len argument of dev_get_phys_port_name |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.6 | [`911362c70df5`](https://git.kernel.org/torvalds/c/911362c70df5) (loose) | [net] | add dst_cache support |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.6 | [`d71785ffc7e7`](https://git.kernel.org/torvalds/c/d71785ffc7e7) (loose) | [net] | add dst_cache to ovs vxlan lwtunnel |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.6 | [`3c17578473b9`](https://git.kernel.org/torvalds/c/3c17578473b9) (loose) | [net] | add MACsec netdevice priv_flags and helper |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`6e7333d315a7`](https://git.kernel.org/torvalds/c/6e7333d315a7) (loose) | [net] | add rx_nohandler stat counter |  | generic code, tag [net] | 3.10.0-352 |
| CANDIDATE | 4.6 | [`1c78c64e9c6f`](https://git.kernel.org/torvalds/c/1c78c64e9c6f) (loose) | [net] | add tc offload feature flag |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.6 | [`885eb0a516e4`](https://git.kernel.org/torvalds/c/885eb0a516e4) (loose) | [net] | adjust napi_consume_skb to handle non-NAPI callers |  | generic code, tag [net] | 3.10.0-444 |
| CANDIDATE | 4.6 | [`f7f9b5e7f8ec`](https://git.kernel.org/torvalds/c/f7f9b5e7f8ec) | [net] | af_vsock: Shrink the area influenced by prepare_to_wait |  | generic code, tag [net] | 3.10.0-571 |
| CANDIDATE | 4.6 | [`f245d079c1d1`](https://git.kernel.org/torvalds/c/f245d079c1d1) (loose) | [net] | Allow tunnels to use inner checksum offloads with outer checksums needed |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.6 | [`6d5d2ee63cee`](https://git.kernel.org/torvalds/c/6d5d2ee63cee) | [net] | bluetooth: add LED trigger for indicating HCI is powered up |  | CONFIG_BT=y in A37 | 3.10.0-466 |
| CANDIDATE | 4.6 | [`82a37adeedd3`](https://git.kernel.org/torvalds/c/82a37adeedd3) | [net] | bluetooth: Add support for limited privacy mode |  | CONFIG_BT=y in A37 | 3.10.0-466 |
| CANDIDATE | 4.6 | [`d43efbd0d545`](https://git.kernel.org/torvalds/c/d43efbd0d545) | [net] | bluetooth: Fix adding discoverable to adv instance flags |  | CONFIG_BT=y in A37 | 3.10.0-466 |
| CANDIDATE | 4.6 | [`6a0e78072c2a`](https://git.kernel.org/torvalds/c/6a0e78072c2a) | [net] | bluetooth: Fix potential buffer overflow with Add Advertising |  | CONFIG_BT=y in A37 | 3.10.0-466 |
| CANDIDATE | 4.6 | [`6a19cc8c892b`](https://git.kernel.org/torvalds/c/6a19cc8c892b) | [net] | bluetooth: Fix setting correct flags in AD |  | CONFIG_BT=y in A37 | 3.10.0-466 |
| CANDIDATE | 4.6 | [`d82142a8b133`](https://git.kernel.org/torvalds/c/d82142a8b133) | [net] | bluetooth: hci_core: cancel power off delayed work properly |  | CONFIG_BT=y in A37 | 3.10.0-466 |
| CANDIDATE | 4.6 | [`eec7a01dc836`](https://git.kernel.org/torvalds/c/eec7a01dc836) | [net] | bluetooth: Move memset closer to where it's needed |  | CONFIG_BT=y in A37 | 3.10.0-466 |
| CANDIDATE | 4.6 | [`b6e402fc84a7`](https://git.kernel.org/torvalds/c/b6e402fc84a7) | [net] | bluetooth: Use managed version of led_trigger_register in LED trigger |  | CONFIG_BT=y in A37 | 3.10.0-466 |
| CANDIDATE | 4.6 | [`3697649ff29e`](https://git.kernel.org/torvalds/c/3697649ff29e) | [net] | bpf: try harder on clones when writing into skb |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.6 | [`5e263f712691`](https://git.kernel.org/torvalds/c/5e263f712691) | [net] | bridge: Allow set bridge ageing time when switchdev disabled |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.6 | [`4c656c13b254`](https://git.kernel.org/torvalds/c/4c656c13b254) | [net] | bridge: allow zero ageing time |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.6 | [`856ce5d083e1`](https://git.kernel.org/torvalds/c/856ce5d083e1) | [net] | bridge: fix igmp / mld query parsing |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.6 | [`8626c56c8279`](https://git.kernel.org/torvalds/c/8626c56c8279) | [net] | bridge: fix potential use-after-free when hook returns QUEUE or STOLEN verdict |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.6 | [`7c25b16dbbcf`](https://git.kernel.org/torvalds/c/7c25b16dbbcf) (loose) | [net] | bridge: log port STP state on change |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.6 | [`59f78f9f6c2e`](https://git.kernel.org/torvalds/c/59f78f9f6c2e) | [net] | bridge: mcast: add support for more router port information dumping |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.6 | [`a55d8246abcc`](https://git.kernel.org/torvalds/c/a55d8246abcc) | [net] | bridge: mcast: add support for temporary port router |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.6 | [`4950cfd1e6a8`](https://git.kernel.org/torvalds/c/4950cfd1e6a8) | [net] | bridge: mcast: do nothing if port's multicast_router is set to the same val |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.6 | [`7f0aec7a6684`](https://git.kernel.org/torvalds/c/7f0aec7a6684) | [net] | bridge: mcast: use names for the different multicast_router types |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.6 | [`212571563505`](https://git.kernel.org/torvalds/c/212571563505) | [net] | bridge: mdb: add support for more attributes and export timer |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.6 | [`157ede6784ba`](https://git.kernel.org/torvalds/c/157ede6784ba) | [net] | bridge: mdb: add support for offloaded mdb entries |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.6 | [`6dd684c0feb2`](https://git.kernel.org/torvalds/c/6dd684c0feb2) | [net] | bridge: mdb: Common function for mdb entry translation |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.6 | [`45ebcce56823`](https://git.kernel.org/torvalds/c/45ebcce56823) | [net] | bridge: mdb: Marking port-group as offloaded |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.6 | [`9e8430f8d60d`](https://git.kernel.org/torvalds/c/9e8430f8d60d) | [net] | bridge: mdb: Passing the port-group pointer to br_mdb module |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.6 | [`76cc173d48d9`](https://git.kernel.org/torvalds/c/76cc173d48d9) | [net] | bridge: mdb: reduce the indentation level in br_mdb_fill_info |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.6 | [`9d06b6d8a3fc`](https://git.kernel.org/torvalds/c/9d06b6d8a3fc) | [net] | bridge: mdb: Separate br_mdb_entry->state from net_bridge_port_group->state |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.6 | [`45493d47c3db`](https://git.kernel.org/torvalds/c/45493d47c3db) | [net] | bridge: notify enslaved devices of headroom changes |  | CONFIG_BRIDGE=y in A37 | 3.10.0-435 |
| CANDIDATE | 4.6 | [`7fbac984f33a`](https://git.kernel.org/torvalds/c/7fbac984f33a) | [net] | bridge: switchdev: Offload VLAN flags to hardware bridge |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.6 | [`ae74f1006838`](https://git.kernel.org/torvalds/c/ae74f1006838) | [net] | bridge: update max_gso_segs and max_gso_size |  | CONFIG_BRIDGE=y in A37 | 3.10.0-572 |
| CANDIDATE | 4.6 | [`702b26a24d3d`](https://git.kernel.org/torvalds/c/702b26a24d3d) (loose) | [net] | bridge: use __ethtool_get_ksettings |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.6 | [`795bb1c00dd3`](https://git.kernel.org/torvalds/c/795bb1c00dd3) (loose) | [net] | bulk free infrastructure for NAPI context, use napi_consume_skb |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 4.6 | [`15fad714be86`](https://git.kernel.org/torvalds/c/15fad714be86) (loose) | [net] | bulk free SKBs that were delay free'ed due to IRQ context |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 4.6 | [`7cad1bac96d3`](https://git.kernel.org/torvalds/c/7cad1bac96d3) (loose) | [net] | core: use __ethtool_get_ksettings |  | generic code, tag [net] | 3.10.0-668 |
| CANDIDATE | 4.6 | [`338039635d01`](https://git.kernel.org/torvalds/c/338039635d01) | [net] | csum: Update csum_block_add to use rotate instead of byteswap |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`996e80218788`](https://git.kernel.org/torvalds/c/996e80218788) (loose) | [net] | Disable segmentation if checksumming is not supported |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`e8ae7b000e64`](https://git.kernel.org/torvalds/c/e8ae7b000e64) | [net] | documentation/networking: add checksum-offloads.txt to explain LCO |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.6 | [`c81aa7979432`](https://git.kernel.org/torvalds/c/c81aa7979432) | [net] | documentation/networking: more accurate LCO explanation |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.6 | [`edb9a1b8942b`](https://git.kernel.org/torvalds/c/edb9a1b8942b) | [net] | documentation: networking: fix spelling mistakes |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.6 | [`bef3c6c9374d`](https://git.kernel.org/torvalds/c/bef3c6c9374d) (loose) | [net] | Drop unecessary enc_features variable from tunnel segmentation functions |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.6 | [`21e2e7f9b5fe`](https://git.kernel.org/torvalds/c/21e2e7f9b5fe) (loose) | [net] | enable LCO for udp_tunnel_handle_offloads() users |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.6 | [`d975ddd69698`](https://git.kernel.org/torvalds/c/d975ddd69698) | [net] | eth: Pull header from first fragment via eth_get_headlen |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.6 | [`72bb68721f80`](https://git.kernel.org/torvalds/c/72bb68721f80) | [net] | ethtool: add IPv6 to the NFC API |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.6 | [`3f1ac7a700d0`](https://git.kernel.org/torvalds/c/3f1ac7a700d0) (loose) | [net] | ethtool: add new ETHTOOL_xLINKSETTINGS API |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.6 | [`103a8ad1fa3b`](https://git.kernel.org/torvalds/c/103a8ad1fa3b) | [net] | ethtool: add speed/duplex validation functions |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.6 | [`d4ab4286276f`](https://git.kernel.org/torvalds/c/d4ab4286276f) | [net] | ethtool: correctly ensure {GS}CHANNELS doesn't conflict with GS{RXFH} |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.6 | [`ba905f5e2f63`](https://git.kernel.org/torvalds/c/ba905f5e2f63) | [net] | ethtool: Declare netdev_rss_key as __read_mostly. |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.6 | [`8bf368620486`](https://git.kernel.org/torvalds/c/8bf368620486) | [net] | ethtool: ensure channel counts are within bounds during SCHANNELS |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.6 | [`4456ed04ea44`](https://git.kernel.org/torvalds/c/4456ed04ea44) | [net] | ethtool: future-proof interface for speed extensions |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.6 | [`e02564ee334a`](https://git.kernel.org/torvalds/c/e02564ee334a) | [net] | ethtool: make validate_speed accept all speeds between 0 and INT_MAX |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.6 | [`3237fc63a329`](https://git.kernel.org/torvalds/c/3237fc63a329) (loose) | [net] | ethtool: remove unused __ethtool_get_settings |  | generic code, tag [net] | 3.10.0-668 |
| CANDIDATE | 4.6 | [`793cf87de9d1`](https://git.kernel.org/torvalds/c/793cf87de9d1) | [net] | ethtool: Set cmd field in ETHTOOL_GLINKSETTINGS response to wrong nwords |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.6 | [`d99079e2fbd5`](https://git.kernel.org/torvalds/c/d99079e2fbd5) | [net] | export tc ife uapi header |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.6 | [`918c023f29ab`](https://git.kernel.org/torvalds/c/918c023f29ab) | [net] | flow_dissector: Check for IP fragmentation even if not using IPv4 address |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.6 | [`224516b3a798`](https://git.kernel.org/torvalds/c/224516b3a798) | [net] | flow_dissector: Correctly handle parsing FCoE |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.6 | [`43d2ccb3c122`](https://git.kernel.org/torvalds/c/43d2ccb3c122) | [net] | flow_dissector: Fix fragment handling for header length computation |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.6 | [`b3c3106ce3f4`](https://git.kernel.org/torvalds/c/b3c3106ce3f4) | [net] | flow_dissector: Use same pointer for IPv4 and IPv6 addresses |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.6 | [`c194cf93c164`](https://git.kernel.org/torvalds/c/c194cf93c164) | [net] | gro: Defer clearing of flush bit in tunnel paths |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`08334824951d`](https://git.kernel.org/torvalds/c/08334824951d) | [net] | gso/udp: Use skb->len instead of udph->len to determine length of original skb |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.6 | [`224638766235`](https://git.kernel.org/torvalds/c/224638766235) | [net] | gso: Provide software checksum of tunneled UDP fragmentation offload |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.6 | [`bfcd3a466172`](https://git.kernel.org/torvalds/c/bfcd3a466172) | [net] | Introduce devlink infrastructure |  | generic code, tag [net] | 3.10.0-444 |
| CANDIDATE | 4.6 | [`ef6980b6becb`](https://git.kernel.org/torvalds/c/ef6980b6becb) | [net] | introduce IFE action |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.6 | [`e28e87ed474c`](https://git.kernel.org/torvalds/c/e28e87ed474c) | [net] | ip_tunnel, bpf: ip_tunnel_info_opts_{get, set} depends on CONFIG_INET |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.6 | [`134611446dc6`](https://git.kernel.org/torvalds/c/134611446dc6) | [net] | ip_tunnel: add support for setting flow label via collect metadata |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.6 | [`f27337e16f2d`](https://git.kernel.org/torvalds/c/f27337e16f2d) | [net] | ip_tunnel: fix preempt warning in ip tunnel creation/updating |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.6 | [`6fa79666e24d`](https://git.kernel.org/torvalds/c/6fa79666e24d) (loose) | [net] | ip_tunnel: remove 'csum_help' argument to iptunnel_handle_offloads |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.6 | [`e09acddf873b`](https://git.kernel.org/torvalds/c/e09acddf873b) | [net] | ip_tunnel: replace dst_cache with generic implementation |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.6 | [`7f290c94352e`](https://git.kernel.org/torvalds/c/7f290c94352e) | [net] | iptunnel: scrub packet in iptunnel_pull_header |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | 4.6 | [`391a20333b83`](https://git.kernel.org/torvalds/c/391a20333b83) | [net] | ipv4/fib: don't warn when primary address is missing if in_dev is dead | CVE-2016-3156 | generic code, tag [net] | 3.10.0-395 |
| CANDIDATE | 4.6 | [`ad0ea1989cc4`](https://git.kernel.org/torvalds/c/ad0ea1989cc4) | [net] | ipv4: fix broadcast packets reception |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`4cfc86f3dae6`](https://git.kernel.org/torvalds/c/4cfc86f3dae6) | [net] | ipv4: initialize flowi4_flags before calling fib_lookup() |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 4.6 | [`fa50d974d104`](https://git.kernel.org/torvalds/c/fa50d974d104) | [net] | ipv4: Namespaceify ip_default_ttl sysctl knob |  | generic code, tag [net] | 3.10.0-915 |
| CANDIDATE | 4.6 | [`01cfbad79a5e`](https://git.kernel.org/torvalds/c/01cfbad79a5e) | [net] | ipv4: Update parameters for csum_tcpudp_magic to their original types |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.6 | [`4f25a1110cd4`](https://git.kernel.org/torvalds/c/4f25a1110cd4) (loose) | [net] | ipv6/l3mdev: Move host route on saved address if necessary |  | generic code, tag [net] | 3.10.0-906 |
| CANDIDATE | 4.6 | [`3ba3458fb9c0`](https://git.kernel.org/torvalds/c/3ba3458fb9c0) | [net] | ipv6: Count in extension headers in skb->network_header |  | generic code, tag [net] | 3.10.0-395 |
| CANDIDATE | 4.6 | [`7e2040db1539`](https://git.kernel.org/torvalds/c/7e2040db1539) | [net] | ipv6: datagram: Refactor dst lookup and update codes to a new function |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.6 | [`80fbdb208f37`](https://git.kernel.org/torvalds/c/80fbdb208f37) | [net] | ipv6: datagram: Refactor flowi6 init codes to a new function |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.6 | [`33c162a980fe`](https://git.kernel.org/torvalds/c/33c162a980fe) | [net] | ipv6: datagram: Update dst cache of a connected datagram sk during pmtu update |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.6 | [`38bd10c447f8`](https://git.kernel.org/torvalds/c/38bd10c447f8) (loose) | [net] | ipv6: Delete host routes on an ifdown |  | generic code, tag [net] | 3.10.0-906 |
| CANDIDATE | 4.6 | [`70af921db6f8`](https://git.kernel.org/torvalds/c/70af921db6f8) (loose) | [net] | ipv6: Do not keep linklocal and loopback addresses |  | generic code, tag [net] | 3.10.0-906 |
| CANDIDATE | 4.6 | [`799977d9aafb`](https://git.kernel.org/torvalds/c/799977d9aafb) (loose) | [net] | ipv6: Fix refcnt on host routes |  | generic code, tag [net] | 3.10.0-906 |
| CANDIDATE | 4.6 | [`f1705ec197e7`](https://git.kernel.org/torvalds/c/f1705ec197e7) (loose) | [net] | ipv6: Make address flushing on ifdown optional |  | generic code, tag [net] | 3.10.0-906 |
| CANDIDATE | 4.6 | [`e646b657f698`](https://git.kernel.org/torvalds/c/e646b657f698) | [net] | ipv6: udp: Do a route lookup and update during release_cb |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.6 | [`179bc67f69b6`](https://git.kernel.org/torvalds/c/179bc67f69b6) (loose) | [net] | local checksum offload for encapsulation |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.6 | [`96cfc5052c5d`](https://git.kernel.org/torvalds/c/96cfc5052c5d) | [net] | macsec: add consistency check to netlink dumps |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`748164802c1b`](https://git.kernel.org/torvalds/c/748164802c1b) | [net] | macsec: add missing macsec prefix in uapi |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`72f2a05b8f36`](https://git.kernel.org/torvalds/c/72f2a05b8f36) | [net] | macsec: add missing NULL check after kmalloc |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`497f358aa4c0`](https://git.kernel.org/torvalds/c/497f358aa4c0) | [net] | macsec: don't put a NULL rxsa |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`960d5848dbf1`](https://git.kernel.org/torvalds/c/960d5848dbf1) | [net] | macsec: fix memory leaks around rx_handler (un)registration |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`4b1fb9352f35`](https://git.kernel.org/torvalds/c/4b1fb9352f35) | [net] | macsec: fix netlink attribute validation |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`c3b7d0bd7ac2`](https://git.kernel.org/torvalds/c/c3b7d0bd7ac2) | [net] | macsec: fix rx_sa refcounting with decrypt callback |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`38787fc20958`](https://git.kernel.org/torvalds/c/38787fc20958) | [net] | macsec: fix SA leak if initialization fails |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`c09440f7dcb3`](https://git.kernel.org/torvalds/c/c09440f7dcb3) | [net] | macsec: introduce IEEE 802.1AE driver |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`8acca6acebd0`](https://git.kernel.org/torvalds/c/8acca6acebd0) | [net] | macsec: key identifier is 128 bits, not 64 |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`c10c63ea739b`](https://git.kernel.org/torvalds/c/c10c63ea739b) | [net] | macsec: take rtnl lock before for_each_netdev |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`9b246841f404`](https://git.kernel.org/torvalds/c/9b246841f404) | [net] | Make DST_CACHE a silent config option |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.6 | [`764434562270`](https://git.kernel.org/torvalds/c/764434562270) (loose) | [net] | Move GSO csum into SKB_GSO_CB |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.6 | [`ddff00d42043`](https://git.kernel.org/torvalds/c/ddff00d42043) (loose) | [net] | Move skb_has_shared_frag check out of GRE code and into segmentation |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.6 | [`4e8c86155010`](https://git.kernel.org/torvalds/c/4e8c86155010) | [net] | net sched: ife action fix late binding |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.6 | [`a57f19d30b2d`](https://git.kernel.org/torvalds/c/a57f19d30b2d) | [net] | net sched: ipt action fix late binding |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.6 | [`87dfbdc6c747`](https://git.kernel.org/torvalds/c/87dfbdc6c747) | [net] | net sched: mirred action fix late binding |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.6 | [`0e5538ab2b59`](https://git.kernel.org/torvalds/c/0e5538ab2b59) | [net] | net sched: simple action fix late binding |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.6 | [`5e1567aeb7fe`](https://git.kernel.org/torvalds/c/5e1567aeb7fe) | [net] | net sched: skbedit action fix late binding |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.6 | [`5026c9b1bafc`](https://git.kernel.org/torvalds/c/5026c9b1bafc) | [net] | net sched: vlan action fix late binding |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.6 | [`ddf97ccdd7cb`](https://git.kernel.org/torvalds/c/ddf97ccdd7cb) | [net] | net_sched: add network namespace support for tc actions |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.6 | [`f8b33d8e8707`](https://git.kernel.org/torvalds/c/f8b33d8e8707) | [net] | net_sched: dsmark: use qdisc_dequeue_peeked() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.6 | [`18fcf49f87f4`](https://git.kernel.org/torvalds/c/18fcf49f87f4) | [net] | net_sched: fix a memory leak in tc action |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.6 | [`7e6e18fbc033`](https://git.kernel.org/torvalds/c/7e6e18fbc033) | [net] | net_sched: Improve readability of filter processing |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.6 | [`1d4150c02c57`](https://git.kernel.org/torvalds/c/1d4150c02c57) | [net] | net_sched: prepare tcf_hashinfo_destroy() for netns support |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.6 | [`2ccccf5fb43f`](https://git.kernel.org/torvalds/c/2ccccf5fb43f) | [net] | net_sched: update hierarchical backlog too |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.6 | [`871b642adebe`](https://git.kernel.org/torvalds/c/871b642adebe) | [net] | netdev: introduce ndo_set_rx_headroom |  | generic code, tag [net] | 3.10.0-435 |
| CANDIDATE | 4.6 | [`6071bd1aa13e`](https://git.kernel.org/torvalds/c/6071bd1aa13e) | [net] | netem: Segment GSO packets on enqueue |  | generic code, tag [net] | 3.10.0-407 |
| CANDIDATE | 4.6 | [`264619055bd5`](https://git.kernel.org/torvalds/c/264619055bd5) | [net] | netfilter: Allow calling into nat helper without skb_dst |  | CONFIG_NETFILTER=y in A37 | 3.10.0-444 |
| CANDIDATE | 4.6 | [`bcf493428840`](https://git.kernel.org/torvalds/c/bcf493428840) | [net] | netfilter: ebtables: Fix extension lookup with identical name |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-494 |
| CANDIDATE | 4.6 | [`29421198c3a8`](https://git.kernel.org/torvalds/c/29421198c3a8) | [net] | netfilter: ipv4: fix NULL dereference |  | CONFIG_NETFILTER=y in A37 | 3.10.0-915 |
| CANDIDATE | 4.6 | [`bfa3f9d7f3b3`](https://git.kernel.org/torvalds/c/bfa3f9d7f3b3) | [net] | netfilter: Remove IP_CT_NEW_REPLY definition |  | CONFIG_NETFILTER=y in A37 | 3.10.0-444 |
| CANDIDATE | 4.6 | [`b301f2538759`](https://git.kernel.org/torvalds/c/b301f2538759) | [net] | netfilter: x_tables: enforce nul-terminated table name from getsockopt GET_ENTRIES | CVE-2016-3134 | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-395 |
| CANDIDATE | 4.6 | [`d1b4c689d413`](https://git.kernel.org/torvalds/c/d1b4c689d413) | [net] | netlink: remove mmapped netlink support |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 4.6 | [`31b0b385f69d`](https://git.kernel.org/torvalds/c/31b0b385f69d) | [net] | nf_conntrack: avoid kernel pointer value leak in slab name |  | generic code, tag [net] | 3.10.0-1093 |
| CANDIDATE | 4.6 | [`905f0a739ad8`](https://git.kernel.org/torvalds/c/905f0a739ad8) | [net] | nfnetlink: remove nfnetlink_alloc_skb |  | CONFIG_NETFILTER=y in A37 | 3.10.0-798 |
| CANDIDATE | 4.6 | [`9e74a6dadbbf`](https://git.kernel.org/torvalds/c/9e74a6dadbbf) (loose) | [net] | Optimize local checksum offload |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.6 | [`e014860e31e2`](https://git.kernel.org/torvalds/c/e014860e31e2) (loose) | [net] | pack tc_cls_u32_knode struct slighter better |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.6 | [`5eb4dce3b347`](https://git.kernel.org/torvalds/c/5eb4dce3b347) (loose) | [net] | relax setup_tc ndo op handle restriction |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 4.6 | [`abbdb5a74cea`](https://git.kernel.org/torvalds/c/abbdb5a74cea) (loose) | [net] | remove a dubious unlikely() clause |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | 4.6 | [`607f725f6f7d`](https://git.kernel.org/torvalds/c/607f725f6f7d) (loose) | [net] | replace dst_cache ip6_tunnel implementation with the generic one |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.6 | [`5197f3499c47`](https://git.kernel.org/torvalds/c/5197f3499c47) (loose) | [net] | Reset encap_level to avoid resetting features on inner IP headers |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.6 | [`263ea09084d1`](https://git.kernel.org/torvalds/c/263ea09084d1) | [net] | revert "genl: Add genlmsg_new_unicast() for unicast message allocation" |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 4.6 | [`e4c6734eaab9`](https://git.kernel.org/torvalds/c/e4c6734eaab9) (loose) | [net] | rework ndo tc op to consume additional qdisc handle parameter |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.6 | [`16e5cc647173`](https://git.kernel.org/torvalds/c/16e5cc647173) (loose) | [net] | rework setup_tc ndo op to consume general tc operand |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | 4.6 | [`c57c7a95da84`](https://git.kernel.org/torvalds/c/c57c7a95da84) | [net] | rtnl: fix msg size calculation in if_nlmsg_size() |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | 4.6 | [`431e3a8e36a0`](https://git.kernel.org/torvalds/c/431e3a8e36a0) | [net] | sch_htb: update backlog as well |  | CONFIG_NET_SCH_HTB=y in A37 | 3.10.0-615 |
| CANDIDATE | 4.6 | [`a1b7c5fd7fe9`](https://git.kernel.org/torvalds/c/a1b7c5fd7fe9) (loose) | [net] | sched: add cls_u32 offload hooks for netdevs |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-628 |
| CANDIDATE | 4.6 | [`e9fc2f052c96`](https://git.kernel.org/torvalds/c/e9fc2f052c96) (loose) | [net] | sched: Add description for cpu_bstats argument |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | 4.6 | [`9e8ce79cd711`](https://git.kernel.org/torvalds/c/9e8ce79cd711) (loose) | [net] | sched: cls_u32 add bit to specify software only rules |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-628 |
| CANDIDATE | 4.6 | [`6843e7a2abe7`](https://git.kernel.org/torvalds/c/6843e7a2abe7) (loose) | [net] | sched: consolidate offload decision in cls_u32 |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-628 |
| CANDIDATE | 4.6 | [`3dcd493fbebf`](https://git.kernel.org/torvalds/c/3dcd493fbebf) (loose) | [net] | sched: do not requeue a NULL skb |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-577 |
| CANDIDATE | 4.6 | [`1f27cde313d7`](https://git.kernel.org/torvalds/c/1f27cde313d7) (loose) | [net] | sched: use pfifo_fast for non real queues |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.6 | [`d894ba18d4e4`](https://git.kernel.org/torvalds/c/d894ba18d4e4) | [net] | soreuseport: fix ordering for mixed v4/v6 sockets |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 4.6 | [`08b64fcca942`](https://git.kernel.org/torvalds/c/08b64fcca942) (loose) | [net] | Store checksum result for offloaded GSO checksums |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.6 | [`084e2f6566d2`](https://git.kernel.org/torvalds/c/084e2f6566d2) | [net] | Support to encoding decoding skb mark on IFE action |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.6 | [`200e10f46936`](https://git.kernel.org/torvalds/c/200e10f46936) | [net] | Support to encoding decoding skb prio on IFE action |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.6 | [`d9b3fca27385`](https://git.kernel.org/torvalds/c/d9b3fca27385) | [net] | tcp: __tcp_hdrlen() helper |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | 4.6 | [`10a81980fc47`](https://git.kernel.org/torvalds/c/10a81980fc47) | [net] | tcp: refresh skb timestamp at retransmit time |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.6 | [`5a5abb1fa3b0`](https://git.kernel.org/torvalds/c/5a5abb1fa3b0) | [net] | tun, bpf: fix suspicious RCU usage in tun_{attach, detach}_filter |  | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | 4.6 | [`fac8e0f57969`](https://git.kernel.org/torvalds/c/fac8e0f57969) | [net] | tunnels: Don't apply GRO to multiple layers of encapsulation |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`fac8e0f57969`](https://git.kernel.org/torvalds/c/fac8e0f57969) | [net] | tunnels: Don't apply GRO to multiple layers of encapsulation. |  | generic code, tag [net] | 3.10.0-1096 |
| CANDIDATE | 4.6 | [`a09a4c8dd1ec`](https://git.kernel.org/torvalds/c/a09a4c8dd1ec) | [net] | tunnels: Remove encapsulation offloads on decap |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`016adb7260f4`](https://git.kernel.org/torvalds/c/016adb7260f4) | [net] | tuntap: restore default qdisc |  | CONFIG_TUN=y in A37 | 3.10.0-395 |
| CANDIDATE | 4.6 | [`dece8d2b78d1`](https://git.kernel.org/torvalds/c/dece8d2b78d1) | [net] | uapi: add MACsec bits |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`d75f1306d946`](https://git.kernel.org/torvalds/c/d75f1306d946) (loose) | [net] | udp: always set up for CHECKSUM_PARTIAL offload |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.6 | [`fdaefd62fd65`](https://git.kernel.org/torvalds/c/fdaefd62fd65) | [net] | udp: Clean up the use of flags in UDP segmentation offload |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.6 | [`dbef491ebe7f`](https://git.kernel.org/torvalds/c/dbef491ebe7f) | [net] | udp: Use uh->len instead of skb->len to compute checksum in segmentation |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.6 | [`229740c63169`](https://git.kernel.org/torvalds/c/229740c63169) | [net] | udp_offload: Set encapsulation before inner completes |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`43b8448cd7b4`](https://git.kernel.org/torvalds/c/43b8448cd7b4) | [net] | udp_tunnel: Remove redundant udp_tunnel_gro_complete() |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.6 | [`7fbeffed77c1`](https://git.kernel.org/torvalds/c/7fbeffed77c1) (loose) | [net] | Update remote checksum segmentation to support use of GSO checksum |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.6 | [`0c1d70af924b`](https://git.kernel.org/torvalds/c/0c1d70af924b) (loose) | [net] | use dst_cache for vxlan device |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.6 | [`6b83d28a55a8`](https://git.kernel.org/torvalds/c/6b83d28a55a8) (loose) | [net] | use skb_postpush_rcsum instead of own implementations |  | generic code, tag [net] | 3.10.0-435 |
| CANDIDATE | 4.6 | [`163e529200af`](https://git.kernel.org/torvalds/c/163e529200af) | [net] | veth: implement ndo_set_rx_headroom |  | CONFIG_VETH=y in A37 | 3.10.0-435 |
| CANDIDATE | 4.6 | [`d6af1a31cc72`](https://git.kernel.org/torvalds/c/d6af1a31cc72) | [net] | vti: Add pmtu handling to vti_xmit |  | CONFIG_XFRM=y in A37 | 3.10.0-702 |
| CANDIDATE | 4.6 | [`071d36bf21bc`](https://git.kernel.org/torvalds/c/071d36bf21bc) | [net] | xfrm: Fix crash observed during device unregistration and decryption |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 4.6 | [`215276c0147e`](https://git.kernel.org/torvalds/c/215276c0147e) | [net] | xfrm: Reset encapsulation field of the skb before transformation |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | 4.7 | [`1d2077ac0165`](https://git.kernel.org/torvalds/c/1d2077ac0165) (loose) | [net] | add __sock_wfree() helper |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.7 | [`35c5845957c7`](https://git.kernel.org/torvalds/c/35c5845957c7) (loose) | [net] | Add helpers for 64-bit aligning netlink attributes. |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`a4298e4522d6`](https://git.kernel.org/torvalds/c/a4298e4522d6) (loose) | [net] | add SOCK_RCU_FREE socket flag |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 4.7 | [`7f348a60762a`](https://git.kernel.org/torvalds/c/7f348a60762a) (loose) | [net] | Add support for IP ID mangling TSO in cases that require encapsulation |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`18402843bf88`](https://git.kernel.org/torvalds/c/18402843bf88) (loose) | [net] | Align IFLA_STATS64 attributes properly on architectures that need it. |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`7e2c3aea4398`](https://git.kernel.org/torvalds/c/7e2c3aea4398) (loose) | [net] | also make sch_handle_egress() drop monitor ready |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.7 | [`55441070ca1c`](https://git.kernel.org/torvalds/c/55441070ca1c) | [net] | bluetooth: 6lowpan: Fix memory corruption of ipv6 destination address |  | CONFIG_BT=y in A37 | 3.10.0-466 |
| CANDIDATE | 4.7 | [`5c0e03cd9f10`](https://git.kernel.org/torvalds/c/5c0e03cd9f10) | [net] | bluetooth: Add defines for SPI and I2C |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.7 | [`a164cee11108`](https://git.kernel.org/torvalds/c/a164cee11108) | [net] | bluetooth: Allow setting BT_SECURITY_FIPS with setsockopt |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.7 | [`bf389cabb3b8`](https://git.kernel.org/torvalds/c/bf389cabb3b8) | [net] | bluetooth: fix power_on vs close race |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.7 | [`f18ba58f538e`](https://git.kernel.org/torvalds/c/f18ba58f538e) | [net] | bluetooth: Fix setting NO_BREDR advertising flag |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.7 | [`56b40fbf61a2`](https://git.kernel.org/torvalds/c/56b40fbf61a2) | [net] | bluetooth: Ignore unknown advertising packet types |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.7 | [`4f3446bb809f`](https://git.kernel.org/torvalds/c/4f3446bb809f) | [net] | bpf: add generic constant blinding for use in jits |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`6077776b5908`](https://git.kernel.org/torvalds/c/6077776b5908) | [net] | bpf: split HAVE_BPF_JIT into cBPF and eBPF variant |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.7 | [`047831a9b9c3`](https://git.kernel.org/torvalds/c/047831a9b9c3) | [net] | bridge: a netlink notification should be sent when those attributes are changed by br_sysfs_br |  | CONFIG_BRIDGE=y in A37 | 3.10.0-567 |
| CANDIDATE | 4.7 | [`bdaf0d5d98e1`](https://git.kernel.org/torvalds/c/bdaf0d5d98e1) | [net] | bridge: a netlink notification should be sent when those attributes are changed by br_sysfs_if |  | CONFIG_BRIDGE=y in A37 | 3.10.0-567 |
| CANDIDATE | 4.7 | [`bf871ad792e3`](https://git.kernel.org/torvalds/c/bf871ad792e3) | [net] | bridge: a netlink notification should be sent when those attributes are changed by ioctl |  | CONFIG_BRIDGE=y in A37 | 3.10.0-567 |
| CANDIDATE | 4.7 | [`0b148def4031`](https://git.kernel.org/torvalds/c/0b148def4031) | [net] | bridge: Don't insert unnecessary local fdb entry on changing mac address |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | 4.7 | [`56fae404fb2c`](https://git.kernel.org/torvalds/c/56fae404fb2c) | [net] | bridge: Fix incorrect re-injection of STP packets |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.7 | [`0888d5f3c0f1`](https://git.kernel.org/torvalds/c/0888d5f3c0f1) | [net] | bridge: Fix ipv6 mc snooping if bridge has no ipv6 address |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.7 | [`565ce8f32ac4`](https://git.kernel.org/torvalds/c/565ce8f32ac4) (loose) | [net] | bridge: fix vlan stats continue counter |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.7 | [`a60c090361ea`](https://git.kernel.org/torvalds/c/a60c090361ea) | [net] | bridge: netlink: export per-vlan stats |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.7 | [`14f31bb39f5d`](https://git.kernel.org/torvalds/c/14f31bb39f5d) | [net] | bridge: simplify the flush_store by calling store_bridge_parm |  | CONFIG_BRIDGE=y in A37 | 3.10.0-567 |
| CANDIDATE | 4.7 | [`347db6b49ec0`](https://git.kernel.org/torvalds/c/347db6b49ec0) | [net] | bridge: simplify the forward_delay_store by calling store_bridge_parm |  | CONFIG_BRIDGE=y in A37 | 3.10.0-567 |
| CANDIDATE | 4.7 | [`4436156b6fbe`](https://git.kernel.org/torvalds/c/4436156b6fbe) | [net] | bridge: simplify the stp_state_store by calling store_bridge_parm |  | CONFIG_BRIDGE=y in A37 | 3.10.0-567 |
| CANDIDATE | 4.7 | [`12a0faa3bd76`](https://git.kernel.org/torvalds/c/12a0faa3bd76) | [net] | bridge: use nla_put_u64_64bit() |  | CONFIG_BRIDGE=y in A37 | 3.10.0-577 |
| CANDIDATE | 4.7 | [`6dada9b10a08`](https://git.kernel.org/torvalds/c/6dada9b10a08) | [net] | bridge: vlan: learn to count |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.7 | [`c041778c966c`](https://git.kernel.org/torvalds/c/c041778c966c) | [net] | cfg80211: fix proto in ieee80211_data_to_8023 for frames without LLC header |  | CONFIG_CFG80211=y in A37 | 3.10.0-497 |
| CANDIDATE | 4.7 | [`16a910a6722b`](https://git.kernel.org/torvalds/c/16a910a6722b) | [net] | cfg80211: handle failed skb allocation |  | CONFIG_CFG80211=y in A37 | 3.10.0-497 |
| CANDIDATE | 4.7 | [`6cbf6236d54c`](https://git.kernel.org/torvalds/c/6cbf6236d54c) | [net] | cfg80211: remove get/set antenna and tx power warnings |  | CONFIG_CFG80211=y in A37 | 3.10.0-497 |
| CANDIDATE | 4.7 | [`0340d0b9e0e2`](https://git.kernel.org/torvalds/c/0340d0b9e0e2) (loose) | [net] | Checks skb_dst to be NULL in inet_iif |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.7 | [`201c44bd8ffa`](https://git.kernel.org/torvalds/c/201c44bd8ffa) (loose) | [net] | cls_u32: be more strict about skip-sw flag for knodes |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.7 | [`6eef3801e719`](https://git.kernel.org/torvalds/c/6eef3801e719) (loose) | [net] | cls_u32: catch all hardware offload errors |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.7 | [`1a0f7d2984f3`](https://git.kernel.org/torvalds/c/1a0f7d2984f3) (loose) | [net] | cls_u32: fix error code for invalid flags |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.7 | [`79bdc4c862af`](https://git.kernel.org/torvalds/c/79bdc4c862af) | [net] | codel: generalize the implementation |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | 4.7 | [`d068ca2ae2e6`](https://git.kernel.org/torvalds/c/d068ca2ae2e6) | [net] | codel: split into multiple files |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | 4.7 | [`c3ec5e5ce9ce`](https://git.kernel.org/torvalds/c/c3ec5e5ce9ce) (loose) | [net] | diag: add missing declarations |  | generic code, tag [net] | 3.10.0-647 |
| CANDIDATE | 4.7 | [`f7a6272bf3cb`](https://git.kernel.org/torvalds/c/f7a6272bf3cb) | [net] | documentation: Add documentation for TSO and GSO features |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`518f213dddb3`](https://git.kernel.org/torvalds/c/518f213dddb3) | [net] | ethtool: Add support for toggling any of the GSO offloads |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`6d62b4d5fac6`](https://git.kernel.org/torvalds/c/6d62b4d5fac6) (loose) | [net] | ethtool: export conversion function between u32 and link mode |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | 4.7 | [`cca1d81574d2`](https://git.kernel.org/torvalds/c/cca1d81574d2) (loose) | [net] | fix HAVE_EFFICIENT_UNALIGNED_ACCESS typos |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`b1dc497b28ad`](https://git.kernel.org/torvalds/c/b1dc497b28ad) (loose) | [net] | Fix netdev_fix_features so that TSO_MANGLEID is only available with TSO |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`557fc4a09803`](https://git.kernel.org/torvalds/c/557fc4a09803) | [net] | fq: add fair queuing framework |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | 4.7 | [`b43e7199a906`](https://git.kernel.org/torvalds/c/b43e7199a906) | [net] | fq: split out backlog update logic |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | 4.7 | [`8bf42e9e51cc`](https://git.kernel.org/torvalds/c/8bf42e9e51cc) | [net] | gre6: add Kconfig dependency for NET_IPGRE_DEMUX |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`308edfdf1563`](https://git.kernel.org/torvalds/c/308edfdf1563) | [net] | gre6: Cleanup GREv6 receive path, call common GRE functions |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`b05229f44228`](https://git.kernel.org/torvalds/c/b05229f44228) | [net] | gre6: Cleanup GREv6 transmit path, call common GRE functions |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`f41fe3c2acc9`](https://git.kernel.org/torvalds/c/f41fe3c2acc9) | [net] | gre6: Fix flag translations |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`1530545ed64b`](https://git.kernel.org/torvalds/c/1530545ed64b) | [net] | gro: Add support for TCP with fixed IPv4 ID field, limit tunnel IP ID values |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`cbc53e08a793`](https://git.kernel.org/torvalds/c/cbc53e08a793) | [net] | gso: Add GSO type for fixed IPv4 ID |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`d7fb5a804921`](https://git.kernel.org/torvalds/c/d7fb5a804921) | [net] | gso: Do not perform partial GSO if number of partial segments is 1 or less |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`36c983824b6f`](https://git.kernel.org/torvalds/c/36c983824b6f) | [net] | gso: Only allow GSO_PARTIAL if we can checksum the inner protocol |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`5c7cdf339af5`](https://git.kernel.org/torvalds/c/5c7cdf339af5) | [net] | gso: Remove arbitrary checks for unsupported GSO |  | generic code, tag [net] | 3.10.0-461 |
| CANDIDATE | 4.7 | [`802ab55adc39`](https://git.kernel.org/torvalds/c/802ab55adc39) | [net] | gso: Support partial segmentation offload |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`0ee13627f963`](https://git.kernel.org/torvalds/c/0ee13627f963) | [net] | htb: call qdisc_root with rcu read lock held |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.7 | [`1e1d04e678cf`](https://git.kernel.org/torvalds/c/1e1d04e678cf) (loose) | [net] | introduce lockdep_is_held and update various places to use it |  | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | 4.7 | [`ac4eb009e477`](https://git.kernel.org/torvalds/c/ac4eb009e477) | [net] | ip6gre: Add support for basic offloads offloads excluding GSO |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`3a80e1facd3c`](https://git.kernel.org/torvalds/c/3a80e1facd3c) | [net] | ip6gre: Add support for GSO |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`0a46baaf6346`](https://git.kernel.org/torvalds/c/0a46baaf6346) | [net] | ip6gre: Allow live link address change |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`a9e242ca43b1`](https://git.kernel.org/torvalds/c/a9e242ca43b1) | [net] | ip6gretap: Fix MTU to allow for Ethernet header |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`3d6b66c1d1a8`](https://git.kernel.org/torvalds/c/3d6b66c1d1a8) | [net] | ip6mr: align RTA_MFC_STATS on 64-bit |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`a6d5bbf34efa`](https://git.kernel.org/torvalds/c/a6d5bbf34efa) | [net] | ip_tunnel: implement __iptunnel_pull_header |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.7 | [`aed069df099c`](https://git.kernel.org/torvalds/c/aed069df099c) | [net] | ip_tunnel_core: iptunnel_handle_offloads returns int and doesn't free skb |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`a9a080422ef7`](https://git.kernel.org/torvalds/c/a9a080422ef7) | [net] | ipmr: align RTA_MFC_STATS on 64-bit |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`b46d9f625b07`](https://git.kernel.org/torvalds/c/b46d9f625b07) | [net] | ipv4: fix checksum annotation in udp4_csum_init |  | generic code, tag [net] | 3.10.0-1085 |
| CANDIDATE | 4.7 | [`fedbb6b4ff34`](https://git.kernel.org/torvalds/c/fedbb6b4ff34) | [net] | ipv4: Fix ip_skb_dst_mtu to use the sk passed by ip_finish_output |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | 4.7 | [`0d3c703a9d17`](https://git.kernel.org/torvalds/c/0d3c703a9d17) | [net] | ipv6: Cleanup IPv6 tunnel receive path |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`8eb30be0352d`](https://git.kernel.org/torvalds/c/8eb30be0352d) | [net] | ipv6: Create ip6_tnl_xmit |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`48f1dcb55a7d`](https://git.kernel.org/torvalds/c/48f1dcb55a7d) | [net] | ipv6: enforce egress device match in per table nexthop lookups |  | generic code, tag [net] | 3.10.0-1039 |
| CANDIDATE | 4.7 | [`ca4aa976f04d`](https://git.kernel.org/torvalds/c/ca4aa976f04d) | [net] | ipv6: fix 4in6 tunnel receive path |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`c148d16369ff`](https://git.kernel.org/torvalds/c/c148d16369ff) | [net] | ipv6: fix checksum annotation in udp6_csum_init |  | generic code, tag [net] | 3.10.0-1085 |
| CANDIDATE | 4.7 | [`903ce4abdf37`](https://git.kernel.org/torvalds/c/903ce4abdf37) | [net] | ipv6: Fix mem leak in rt6i_pcpu |  | generic code, tag [net] | 3.10.0-468 |
| CANDIDATE | 4.7 | [`79ecb90e65f3`](https://git.kernel.org/torvalds/c/79ecb90e65f3) | [net] | ipv6: Generic tunnel cleanup |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`00bc0ef5880d`](https://git.kernel.org/torvalds/c/00bc0ef5880d) | [net] | ipv6: Skip XFRM lookup if dst_entry in socket cache is valid |  | generic code, tag [net] | 3.10.0-458 |
| CANDIDATE | 4.7 | [`47e27d5e92c4`](https://git.kernel.org/torvalds/c/47e27d5e92c4) (loose) | [net] | ipv6: token: allow for clearing the current device token |  | generic code, tag [net] | 3.10.0-925 |
| CANDIDATE | 4.7 | [`8c14586fc320`](https://git.kernel.org/torvalds/c/8c14586fc320) (loose) | [net] | ipv6: Use passed in table for nexthop lookups |  | generic code, tag [net] | 3.10.0-1039 |
| CANDIDATE | 4.7 | [`0e6b5259824e`](https://git.kernel.org/torvalds/c/0e6b5259824e) (loose) | [net] | l2tp: Make l2tp_ip6 namespace aware |  | CONFIG_L2TP=y in A37 | 3.10.0-703 |
| CANDIDATE | 4.7 | [`1c714a928336`](https://git.kernel.org/torvalds/c/1c714a928336) | [net] | l2tp: use nla_put_u64_64bit() |  | CONFIG_L2TP=y in A37 | 3.10.0-577 |
| CANDIDATE | 4.7 | [`089bf1a6a924`](https://git.kernel.org/torvalds/c/089bf1a6a924) | [net] | libnl: add more helpers to align attributes on 64-bit |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`73520786b079`](https://git.kernel.org/torvalds/c/73520786b079) | [net] | libnl: add nla_put_u64_64bit() helper |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`11a99573079e`](https://git.kernel.org/torvalds/c/11a99573079e) | [net] | libnl: fix help of _64bit functions |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`b46f6ded906e`](https://git.kernel.org/torvalds/c/b46f6ded906e) | [net] | libnl: nla_put_be64(): align on a 64-bit area |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`e7479122befd`](https://git.kernel.org/torvalds/c/e7479122befd) | [net] | libnl: nla_put_le64(): align on a 64-bit area |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`2175d87cc356`](https://git.kernel.org/torvalds/c/2175d87cc356) | [net] | libnl: nla_put_msecs(): align on a 64-bit area |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`e9bbe898cbe8`](https://git.kernel.org/torvalds/c/e9bbe898cbe8) | [net] | libnl: nla_put_net64(): align on a 64-bit area |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`756a2f59b73c`](https://git.kernel.org/torvalds/c/756a2f59b73c) | [net] | libnl: nla_put_s64(): align on a 64-bit area |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`b196c22af5c3`](https://git.kernel.org/torvalds/c/b196c22af5c3) | [net] | macsec: add rcu_barrier() on module exit |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.7 | [`5d9649b3a524`](https://git.kernel.org/torvalds/c/5d9649b3a524) | [net] | macsec: allocate sg and iv on the heap |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.7 | [`e425974feaa5`](https://git.kernel.org/torvalds/c/e425974feaa5) | [net] | macsec: Convert to using IFF_NO_QUEUE |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.7 | [`1968a0b8b6ca`](https://git.kernel.org/torvalds/c/1968a0b8b6ca) | [net] | macsec: fix netlink attribute for key id |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.7 | [`6052f7fbce85`](https://git.kernel.org/torvalds/c/6052f7fbce85) | [net] | macsec: fix SA initialization |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.7 | [`79c62220d74a`](https://git.kernel.org/torvalds/c/79c62220d74a) | [net] | macsec: set actual real device for xmit when !protect_frames |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.7 | [`f60d94c00968`](https://git.kernel.org/torvalds/c/f60d94c00968) | [net] | macsec: use nla_put_u64_64bit() |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`8a3a4c6e7b34`](https://git.kernel.org/torvalds/c/8a3a4c6e7b34) (loose) | [net] | make sch_handle_ingress() drop monitor ready |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.7 | [`b676338fb3aa`](https://git.kernel.org/torvalds/c/b676338fb3aa) | [net] | neigh: align nlattr properly when needed |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`ebecaa6662b0`](https://git.kernel.org/torvalds/c/ebecaa6662b0) | [net] | net sched actions: bug fix dumping actions directly didnt produce NLMSG_DONE |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.7 | [`e0d194adfa9f`](https://git.kernel.org/torvalds/c/e0d194adfa9f) | [net] | net_sched: add missing paddattr description |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.7 | [`a9efad8b24bd`](https://git.kernel.org/torvalds/c/a9efad8b24bd) | [net] | net_sched: avoid too many hrtimer_start() calls |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.7 | [`82a31b9231f0`](https://git.kernel.org/torvalds/c/82a31b9231f0) | [net] | net_sched: fix mirrored packets checksum |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.7 | [`3d7c8257d999`](https://git.kernel.org/torvalds/c/3d7c8257d999) | [net] | net_sched: prio: insure proper transactional behavior |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.7 | [`cbdf45116478`](https://git.kernel.org/torvalds/c/cbdf45116478) | [net] | net_sched: prio: properly report out of memory errors |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.7 | [`b1c20f0b97b4`](https://git.kernel.org/torvalds/c/b1c20f0b97b4) | [net] | netdev_features: Fold NETIF_F_ALL_TSO into NETIF_F_GSO_SOFTWARE |  | generic code, tag [net] | 3.10.0-461 |
| CANDIDATE | 4.7 | [`ba162f8eed61`](https://git.kernel.org/torvalds/c/ba162f8eed61) | [net] | netdevice: add helper to update trans_start |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`adff6c656000`](https://git.kernel.org/torvalds/c/adff6c656000) | [net] | netfilter: connlabels: change nf_connlabels_get bit arg to 'highest used' |  | CONFIG_NETFILTER=y in A37 | 3.10.0-473 |
| CANDIDATE | 4.7 | [`b4ef15992715`](https://git.kernel.org/torvalds/c/b4ef15992715) | [net] | netfilter: connlabels: move helpers to xt_connlabel |  | CONFIG_NETFILTER=y in A37 | 3.10.0-798 |
| CANDIDATE | 4.7 | [`5e3c61f98175`](https://git.kernel.org/torvalds/c/5e3c61f98175) | [net] | netfilter: conntrack: fix lookup race during hash resize |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-800 |
| CANDIDATE | 4.7 | [`71d8c47fc653`](https://git.kernel.org/torvalds/c/71d8c47fc653) | [net] | netfilter: conntrack: introduce clash resolution on insertion race |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1015 |
| CANDIDATE | 4.7 | [`ba76738c032e`](https://git.kernel.org/torvalds/c/ba76738c032e) | [net] | netfilter: conntrack: introduce nf_ct_acct_update() |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1015 |
| CANDIDATE | 4.7 | [`a3efd81205b1`](https://git.kernel.org/torvalds/c/a3efd81205b1) | [net] | netfilter: conntrack: move generation seqcnt out of netns_ct |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-800 |
| CANDIDATE | 4.7 | [`590b52e10d41`](https://git.kernel.org/torvalds/c/590b52e10d41) | [net] | netfilter: conntrack: skip clash resolution if nat is in place |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1015 |
| CANDIDATE | 4.7 | [`b7a8daa9f3d1`](https://git.kernel.org/torvalds/c/b7a8daa9f3d1) | [net] | netfilter: nf_ct_helper: Fix helper unregister count. |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1053 |
| CANDIDATE | 4.7 | [`83170f3beccc`](https://git.kernel.org/torvalds/c/83170f3beccc) | [net] | netfilter: nf_dup_ipv6: set again FLOWI_FLAG_KNOWN_NH at flowi6_flags |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | 4.7 | [`364723410175`](https://git.kernel.org/torvalds/c/364723410175) | [net] | netfilter: x_tables: validate targets of jumps | CVE-2016-3134 | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-385 |
| CANDIDATE | 4.7 | [`7822ce73e659`](https://git.kernel.org/torvalds/c/7822ce73e659) | [net] | netlink: use nla_get_in_addr and nla_put_in_addr for ipv4 address |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`6e8ef842223b`](https://git.kernel.org/torvalds/c/6e8ef842223b) | [net] | nl80211: Move ACL parsing later to avoid a possible memory leak |  | CONFIG_CFG80211=y in A37 | 3.10.0-497 |
| CANDIDATE | 4.7 | [`9e3b71f34364`](https://git.kernel.org/torvalds/c/9e3b71f34364) | [net] | nl802154: avoid address change while running lowpan |  | generic code, tag [net] | 3.10.0-638 |
| CANDIDATE | 4.7 | [`e6f268ef3687`](https://git.kernel.org/torvalds/c/e6f268ef3687) (loose) | [net] | nla_align_64bit() needs to test the right pointer. |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`eb70db875671`](https://git.kernel.org/torvalds/c/eb70db875671) | [net] | packet: Use symmetric hash for PACKET_FANOUT_HASH. |  | CONFIG_PACKET=y in A37 | 3.10.0-637 |
| CANDIDATE | 4.7 | [`cfe2f14c72b0`](https://git.kernel.org/torvalds/c/cfe2f14c72b0) | [net] | qdisc: constify meta_type_ops structures |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.7 | [`9b15350f0d5c`](https://git.kernel.org/torvalds/c/9b15350f0d5c) | [net] | qfq: don't leak skb if kzalloc fails |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.7 | [`9580bf2edb40`](https://git.kernel.org/torvalds/c/9580bf2edb40) (loose) | [net] | relax expensive skb_unclone() in iptunnel_handle_offloads() |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.7 | [`97a47facf346`](https://git.kernel.org/torvalds/c/97a47facf346) (loose) | [net] | rtnetlink: add linkxstats callbacks and attribute |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | 4.7 | [`10c9ead9f3c6`](https://git.kernel.org/torvalds/c/10c9ead9f3c6) | [net] | rtnetlink: add new RTM_GETSTATS message to dump link stats |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`e8872a25a05e`](https://git.kernel.org/torvalds/c/e8872a25a05e) (loose) | [net] | rtnetlink: allow rtnl_fill_statsinfo to save private state counter |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | 4.7 | [`550bce59baf3`](https://git.kernel.org/torvalds/c/550bce59baf3) | [net] | rtnetlink: rtnl_fill_stats: avoid an unnecssary stats copy |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`270cb4d05b29`](https://git.kernel.org/torvalds/c/270cb4d05b29) | [net] | rtnl: align nlattr properly when needed |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`343a6d8e4955`](https://git.kernel.org/torvalds/c/343a6d8e4955) | [net] | rtnl: use nla_put_u64_64bit() |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`58414d32a37e`](https://git.kernel.org/torvalds/c/58414d32a37e) | [net] | rtnl: use the new API to align IFLA_STATS* |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`9854518ea04d`](https://git.kernel.org/torvalds/c/9854518ea04d) | [net] | sched: align nlattr properly when needed |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.7 | [`9854518ea04d`](https://git.kernel.org/torvalds/c/9854518ea04d) | [net] | sched: align nlattr properly when needed |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-668 |
| CANDIDATE | 4.7 | [`92c075dbdeed`](https://git.kernel.org/torvalds/c/92c075dbdeed) (loose) | [net] | sched: fix tc_should_offload for specific clsact classes |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.7 | [`92c075dbdeed`](https://git.kernel.org/torvalds/c/92c075dbdeed) (loose) | [net] | sched: fix tc_should_offload for specific clsact classes |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-643 |
| CANDIDATE | 4.7 | [`760edee8b59e`](https://git.kernel.org/torvalds/c/760edee8b59e) (loose) | [net] | sched: Move TCA_CLS_FLAGS_SKIP_HW to uapi header file. |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-628 |
| CANDIDATE | 4.7 | [`2a51c1e8ecdc`](https://git.kernel.org/torvalds/c/2a51c1e8ecdc) | [net] | sched: use nla_put_u64_64bit() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-577 |
| CANDIDATE | 4.7 | [`b9bb53f3836f`](https://git.kernel.org/torvalds/c/b9bb53f3836f) | [net] | sock: convert sk_peek_offset functions to WRITE_ONCE |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | 4.7 | [`61881cfb5ad8`](https://git.kernel.org/torvalds/c/61881cfb5ad8) | [net] | sock: fix lockdep annotation in release_sock |  | generic code, tag [net] | 3.10.0-1111 |
| CANDIDATE | 4.7 | [`15239302edd4`](https://git.kernel.org/torvalds/c/15239302edd4) | [net] | sock_diag: add SK_MEMINFO_DROPS |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.7 | [`6ed46d1247a5`](https://git.kernel.org/torvalds/c/6ed46d1247a5) | [net] | sock_diag: align nlattr properly when needed |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.7 | [`d296ba60d8e2`](https://git.kernel.org/torvalds/c/d296ba60d8e2) | [net] | soreuseport: Resolve merge conflict for v4/v6 ordering fix |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 4.7 | [`083ae308280d`](https://git.kernel.org/torvalds/c/083ae308280d) | [net] | tcp: enable per-socket rate limiting of all 'challenge acks' | CVE-2016-5696 | generic code, tag [net] | 3.10.0-475 |
| CANDIDATE | 4.7 | [`532182cd6107`](https://git.kernel.org/torvalds/c/532182cd6107) | [net] | tcp: increment sk_drops for dropped rx packets | CVE-2018-5390 | generic code, tag [net] | 3.10.0-932 |
| CANDIDATE | 4.7 | [`97ef38b8210d`](https://git.kernel.org/torvalds/c/97ef38b8210d) | [net] | tty: Replace TTY_THROTTLED bit tests with tty_throttled() |  | CONFIG_TTY=y in A37 | 3.10.0-627 |
| CANDIDATE | 4.7 | [`2a2bbf170054`](https://git.kernel.org/torvalds/c/2a2bbf170054) | [net] | tun: don't require serialization lock on tx |  | CONFIG_TUN=y in A37 | 3.10.0-444 |
| CANDIDATE | 4.7 | [`608b9977260f`](https://git.kernel.org/torvalds/c/608b9977260f) | [net] | tun: use per cpu variables for stats accounting |  | CONFIG_TUN=y in A37 | 3.10.0-444 |
| CANDIDATE | 4.7 | [`d1e37288c914`](https://git.kernel.org/torvalds/c/d1e37288c914) | [net] | udp reuseport: fix packet of same flow hashed to different socket |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 4.7 | [`a6024562ffd7`](https://git.kernel.org/torvalds/c/a6024562ffd7) | [net] | udp: Add GRO functions to UDP socket |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.7 | [`38fd2af24fcf`](https://git.kernel.org/torvalds/c/38fd2af24fcf) | [net] | udp: Add socket based GRO and config |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.7 | [`63058308cd55`](https://git.kernel.org/torvalds/c/63058308cd55) | [net] | udp: Add udp6_lib_lookup_skb and udp4_lib_lookup_skb |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.7 | [`ca065d0cf80f`](https://git.kernel.org/torvalds/c/ca065d0cf80f) | [net] | udp: no longer use SLAB_DESTROY_BY_RCU |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 4.7 | [`e5aed006be91`](https://git.kernel.org/torvalds/c/e5aed006be91) | [net] | udp: prevent skbs lingering in tunnel socket queues |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.7 | [`46aa2f30aa7f`](https://git.kernel.org/torvalds/c/46aa2f30aa7f) | [net] | udp: Remove udp_offloads |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.7 | [`ed7cbbce5448`](https://git.kernel.org/torvalds/c/ed7cbbce5448) | [net] | udp: Resolve NULL pointer dereference over flow-based vxlan device |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.7 | [`b7de529c793c`](https://git.kernel.org/torvalds/c/b7de529c793c) (loose) | [net] | use jiffies_to_msecs to replace EXPIRES_IN_MS in inet/sctp_diag |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | 4.7 | [`732912d727cd`](https://git.kernel.org/torvalds/c/732912d727cd) | [net] | veth: Update features to include all tunnel GSO types |  | CONFIG_VETH=y in A37 | 3.10.0-506 |
| CANDIDATE | 4.7 | [`2dad624e6dd6`](https://git.kernel.org/torvalds/c/2dad624e6dd6) | [net] | wireless: use nla_put_u64_64bit() |  | CONFIG_CFG80211=y in A37 | 3.10.0-577 |
| CANDIDATE | 4.7 | [`de95c4a46a6e`](https://git.kernel.org/torvalds/c/de95c4a46a6e) | [net] | xfrm: align nlattr properly when needed |  | CONFIG_XFRM=y in A37 | 3.10.0-577 |
| CANDIDATE | 4.8 | [`503eebc265dc`](https://git.kernel.org/torvalds/c/503eebc265dc) (loose) | [net] | add dev arg to ndo_neigh_construct/destroy |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.8 | [`d3fff6c443fe`](https://git.kernel.org/torvalds/c/d3fff6c443fe) (loose) | [net] | add netdev_lockdep_set_classes() helper |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.8 | [`4f672235cb11`](https://git.kernel.org/torvalds/c/4f672235cb11) | [net] | addrconf: put prefix address add in an own function |  | generic code, tag [net] | 3.10.0-638 |
| CANDIDATE | 4.8 | [`291759a57532`](https://git.kernel.org/torvalds/c/291759a57532) | [net] | af_iucv: remove fragment_skb() to use paged SKBs |  | generic code, tag [net] | 3.10.0-532 |
| CANDIDATE | 4.8 | [`a006353a9a8d`](https://git.kernel.org/torvalds/c/a006353a9a8d) | [net] | af_iucv: use paged SKBs for big inbound messages |  | generic code, tag [net] | 3.10.0-532 |
| CANDIDATE | 4.8 | [`e53743994e21`](https://git.kernel.org/torvalds/c/e53743994e21) | [net] | af_iucv: use paged SKBs for big outbound messages |  | generic code, tag [net] | 3.10.0-532 |
| CANDIDATE | 4.8 | [`6e1ce3c34512`](https://git.kernel.org/torvalds/c/6e1ce3c34512) | [net] | af_unix: split 'u->readlock' into two: 'iolock' and 'bindlock' |  | CONFIG_UNIX=y in A37 | 3.10.0-1090 |
| CANDIDATE | 4.8 | [`160b925163c0`](https://git.kernel.org/torvalds/c/160b925163c0) | [net] | bluetooth: Add Authentication Failed reason to Disconnected Mgmt event |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.8 | [`5177a83827cd`](https://git.kernel.org/torvalds/c/5177a83827cd) | [net] | bluetooth: Add debugfs fields for hardware and firmware info |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.8 | [`b5f34f9420b5`](https://git.kernel.org/torvalds/c/b5f34f9420b5) | [net] | bluetooth: Fix bt_sock_recvmsg return value |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.8 | [`90a56f72edb0`](https://git.kernel.org/torvalds/c/90a56f72edb0) | [net] | bluetooth: Fix bt_sock_recvmsg when MSG_TRUNC is not set |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.8 | [`83871f8ccdfa`](https://git.kernel.org/torvalds/c/83871f8ccdfa) | [net] | bluetooth: Fix hci_sock_recvmsg return value |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.8 | [`4f34228b6724`](https://git.kernel.org/torvalds/c/4f34228b6724) | [net] | bluetooth: Fix hci_sock_recvmsg when MSG_TRUNC is not set |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.8 | [`9afee94939e3`](https://git.kernel.org/torvalds/c/9afee94939e3) | [net] | bluetooth: Fix memory leak at end of hci requests |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.8 | [`f962fe32f2f8`](https://git.kernel.org/torvalds/c/f962fe32f2f8) | [net] | bluetooth: Move hci_recv_frame and hci_recv_diag prototypes |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.8 | [`ca8bee5dde1f`](https://git.kernel.org/torvalds/c/ca8bee5dde1f) | [net] | bluetooth: Rename HCI_BREDR into HCI_PRIMARY |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.8 | [`dbb50887c8f6`](https://git.kernel.org/torvalds/c/dbb50887c8f6) | [net] | bluetooth: split sk_filter in l2cap_sock_recv_cb |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.8 | [`1080ab95e3c7`](https://git.kernel.org/torvalds/c/1080ab95e3c7) (loose) | [net] | bridge: add support for IGMP/MLD stats and export them via netlink |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.8 | [`9e0b27fe5ada`](https://git.kernel.org/torvalds/c/9e0b27fe5ada) (loose) | [net] | bridge: br_set_ageing_time takes a clock_t |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.8 | [`85a3d4a9356b`](https://git.kernel.org/torvalds/c/85a3d4a9356b) (loose) | [net] | bridge: don't increment tx_dropped in br_do_proxy_arp |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.8 | [`b35c5f632b63`](https://git.kernel.org/torvalds/c/b35c5f632b63) (loose) | [net] | bridge: drop skb2/skb0 variables and use a local_rcv boolean |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.8 | [`a65056ecf4b4`](https://git.kernel.org/torvalds/c/a65056ecf4b4) (loose) | [net] | bridge: extend MLD/IGMP query stats |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.8 | [`dba479f3d60a`](https://git.kernel.org/torvalds/c/dba479f3d60a) (loose) | [net] | bridge: fix br_stp_enable_bridge comment |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.8 | [`baedbe55884c`](https://git.kernel.org/torvalds/c/baedbe55884c) | [net] | bridge: Fix incorrect re-injection of LLDP packets |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.8 | [`7bb90c3715a4`](https://git.kernel.org/torvalds/c/7bb90c3715a4) | [net] | bridge: Fix problems around fdb entries pointing to the bridge device |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.8 | [`46c0772d8530`](https://git.kernel.org/torvalds/c/46c0772d8530) (loose) | [net] | bridge: minor style adjustments in br_handle_frame_finish |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.8 | [`9264251ee2a5`](https://git.kernel.org/torvalds/c/9264251ee2a5) | [net] | bridge: re-introduce 'fix parsing of MLDv2 reports' |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.8 | [`e151aab9b5b3`](https://git.kernel.org/torvalds/c/e151aab9b5b3) (loose) | [net] | bridge: rearrange flood vs unicast receive paths |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.8 | [`37b090e6be2d`](https://git.kernel.org/torvalds/c/37b090e6be2d) (loose) | [net] | bridge: remove _deliver functions and consolidate forward code |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.8 | [`c3498d34dd36`](https://git.kernel.org/torvalds/c/c3498d34dd36) | [net] | cbq: remove TCA_CBQ_OVL_STRATEGY support |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.8 | [`dd47c1fa776c`](https://git.kernel.org/torvalds/c/dd47c1fa776c) | [net] | cbq: remove TCA_CBQ_POLICE support |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.8 | [`e7b3db5e60e8`](https://git.kernel.org/torvalds/c/e7b3db5e60e8) (loose) | [net] | Combine GENEVE and VXLAN port notifiers into single functions |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.8 | [`153380ec4b9b`](https://git.kernel.org/torvalds/c/153380ec4b9b) | [net] | fib_rules: Added NLM_F_EXCL support to fib_nl_newrule |  | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | 4.8 | [`5f652bb2eb3e`](https://git.kernel.org/torvalds/c/5f652bb2eb3e) | [net] | gro_cells: gro_cells_receive now return error code |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.8 | [`bba7eb5d9b4e`](https://git.kernel.org/torvalds/c/bba7eb5d9b4e) | [net] | hfsc: reduce hfsc_sched to 14 cachelines |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.8 | [`18bfb924f000`](https://git.kernel.org/torvalds/c/18bfb924f000) (loose) | [net] | introduce default neigh_construct/destroy ndo calls for L2 upper devices |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.8 | [`08294a26e15d`](https://git.kernel.org/torvalds/c/08294a26e15d) (loose) | [net] | introduce NETDEV_CHANGE_TX_QUEUE_LEN |  | generic code, tag [net] | 3.10.0-656 |
| CANDIDATE | 4.8 | [`b5036cd4ed31`](https://git.kernel.org/torvalds/c/b5036cd4ed31) | [net] | ipmr, ip6mr: return lastuse relative to now |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.8 | [`22a59be8b769`](https://git.kernel.org/torvalds/c/22a59be8b769) (loose) | [net] | ipv4: Add ability to have GRE ignore DF bit in IPv4 payloads |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.8 | [`94d9f1c5906b`](https://git.kernel.org/torvalds/c/94d9f1c5906b) | [net] | ipv4: panic in leaf_walk_rcu due to stale node pointer |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 4.8 | [`ea06f7176413`](https://git.kernel.org/torvalds/c/ea06f7176413) (loose) | [net] | ipv6: Always leave anycast and multicast groups on link down |  | generic code, tag [net] | 3.10.0-906 |
| CANDIDATE | 4.8 | [`bc561632dddd`](https://git.kernel.org/torvalds/c/bc561632dddd) (loose) | [net] | ipv6: Do not keep IPv6 addresses when IPv6 is disabled |  | generic code, tag [net] | 3.10.0-906 |
| CANDIDATE | 4.8 | [`ab34380162cb`](https://git.kernel.org/torvalds/c/ab34380162cb) | [net] | ipv6: Don't unset flowi6_proto in ipxip6_tnl_xmit() |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.8 | [`cc84b3c6b48a`](https://git.kernel.org/torvalds/c/cc84b3c6b48a) | [net] | ipv6: export several functions |  | generic code, tag [net] | 3.10.0-638 |
| CANDIDATE | 4.8 | [`a435a07f9164`](https://git.kernel.org/torvalds/c/a435a07f9164) (loose) | [net] | ipv6: fallback to full lookup if table lookup is unsuitable |  | generic code, tag [net] | 3.10.0-1039 |
| CANDIDATE | 4.8 | [`f997c55c1dc8`](https://git.kernel.org/torvalds/c/f997c55c1dc8) | [net] | ipv6: introduce neighbour discovery ops |  | generic code, tag [net] | 3.10.0-638 |
| CANDIDATE | 4.8 | [`c15c0ab12fd6`](https://git.kernel.org/torvalds/c/c15c0ab12fd6) | [net] | ipv6: suppress sparse warnings in IP6_ECN_set_ce() |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.8 | [`c882219ae43e`](https://git.kernel.org/torvalds/c/c882219ae43e) (loose) | [net] | ipv6: use list_move instead of list_del/list_add |  | generic code, tag [net] | 3.10.0-906 |
| CANDIDATE | 4.8 | [`38b7097b55b6`](https://git.kernel.org/torvalds/c/38b7097b55b6) | [net] | ipv6: use TOS marks from sockets for routing decision |  | generic code, tag [net] | 3.10.0-703 |
| CANDIDATE | 4.8 | [`02f06918156b`](https://git.kernel.org/torvalds/c/02f06918156b) | [net] | iucv: properly clone LSM attributes to newly created child sockets |  | generic code, tag [net] | 3.10.0-444 |
| CANDIDATE | 4.8 | [`4ac36a4adaf8`](https://git.kernel.org/torvalds/c/4ac36a4adaf8) | [net] | l2tp: Correctly return -EBADF from pppol2tp_getname. |  | CONFIG_L2TP=y in A37 | 3.10.0-1096 |
| CANDIDATE | 4.8 | [`2f86953e7436`](https://git.kernel.org/torvalds/c/2f86953e7436) | [net] | l2tp: fix use-after-free during module unload |  | CONFIG_L2TP=y in A37 | 3.10.0-532 |
| CANDIDATE | 4.8 | [`f6c382fc553b`](https://git.kernel.org/torvalds/c/f6c382fc553b) | [net] | loopback: make use of NETIF_F_GSO_SOFTWARE |  | generic code, tag [net] | 3.10.0-461 |
| CANDIDATE | 4.8 | [`5491e7c6b1a9`](https://git.kernel.org/torvalds/c/5491e7c6b1a9) | [net] | macsec: enable GRO and RPS on macsec devices |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.8 | [`e3a3b626010a`](https://git.kernel.org/torvalds/c/e3a3b626010a) | [net] | macsec: ensure rx_sa is set when validation is disabled |  | generic code, tag [net] | 3.10.0-499 |
| CANDIDATE | 4.8 | [`34aedfee2296`](https://git.kernel.org/torvalds/c/34aedfee2296) | [net] | macsec: fix error codes when a SA is created |  | generic code, tag [net] | 3.10.0-484 |
| CANDIDATE | 4.8 | [`0759e552bce7`](https://git.kernel.org/torvalds/c/0759e552bce7) | [net] | macsec: fix negative refcnt on parent link |  | generic code, tag [net] | 3.10.0-491 |
| CANDIDATE | 4.8 | [`c78ebe1df01f`](https://git.kernel.org/torvalds/c/c78ebe1df01f) | [net] | macsec: fix reference counting on RXSC in macsec_handle_frame |  | generic code, tag [net] | 3.10.0-491 |
| CANDIDATE | 4.8 | [`2ccbe2cb79f2`](https://git.kernel.org/torvalds/c/2ccbe2cb79f2) | [net] | macsec: limit ICV length to 16 octets |  | generic code, tag [net] | 3.10.0-484 |
| CANDIDATE | 4.8 | [`36b232c880c9`](https://git.kernel.org/torvalds/c/36b232c880c9) | [net] | macsec: RXSAs don't need to hold a reference on RXSCs |  | generic code, tag [net] | 3.10.0-491 |
| CANDIDATE | 4.8 | [`bbe11fab0b6c`](https://git.kernel.org/torvalds/c/bbe11fab0b6c) | [net] | macsec: use after free when deleting the underlying device |  | generic code, tag [net] | 3.10.0-499 |
| CANDIDATE | 4.8 | [`f04c392d2dd9`](https://git.kernel.org/torvalds/c/f04c392d2dd9) | [net] | macsec: validate ICV length on link creation |  | generic code, tag [net] | 3.10.0-484 |
| CANDIDATE | 4.8 | [`7c46a640de6f`](https://git.kernel.org/torvalds/c/7c46a640de6f) (loose) | [net] | Merge VXLAN and GENEVE push notifiers into a single notifier |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.8 | [`8ec5da415028`](https://git.kernel.org/torvalds/c/8ec5da415028) | [net] | ndisc: add __ndisc_fill_addr_option function |  | generic code, tag [net] | 3.10.0-638 |
| CANDIDATE | 4.8 | [`4f36ce84c54c`](https://git.kernel.org/torvalds/c/4f36ce84c54c) | [net] | ndisc: add __ndisc_opt_addr_data function |  | generic code, tag [net] | 3.10.0-638 |
| CANDIDATE | 4.8 | [`1e82f961ac8e`](https://git.kernel.org/torvalds/c/1e82f961ac8e) | [net] | ndisc: add __ndisc_opt_addr_space function |  | generic code, tag [net] | 3.10.0-638 |
| CANDIDATE | 4.8 | [`2a4501ae18b5`](https://git.kernel.org/torvalds/c/2a4501ae18b5) | [net] | neigh: Send a notification when DELAY_PROBE_TIME changes |  | generic code, tag [net] | 3.10.0-634 |
| CANDIDATE | 4.8 | [`43b9e1274060`](https://git.kernel.org/torvalds/c/43b9e1274060) | [net] | net: ipmr/ip6mr: add support for keeping an entry age |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.8 | [`90b5ca1766ae`](https://git.kernel.org/torvalds/c/90b5ca1766ae) | [net] | net: ipmr/ip6mr: update lastuse on entry change |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.8 | [`1b5c5493e3e6`](https://git.kernel.org/torvalds/c/1b5c5493e3e6) | [net] | net_sched: add the ability to defer skb freeing |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`b5ac851885ac`](https://git.kernel.org/torvalds/c/b5ac851885ac) | [net] | net_sched: allow flushing tc police actions |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`cca605dd4b3b`](https://git.kernel.org/torvalds/c/cca605dd4b3b) | [net] | net_sched: cbq: remove a flaky use of qdisc_is_throttled() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`22dc13c837c3`](https://git.kernel.org/torvalds/c/22dc13c837c3) | [net] | net_sched: convert tcf_exts from list to pointer array |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`520ac30f4551`](https://git.kernel.org/torvalds/c/520ac30f4551) | [net] | net_sched: drop packets after root qdisc lock is released |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`008830bc321c`](https://git.kernel.org/torvalds/c/008830bc321c) | [net] | net_sched: fq_codel: cache skb->truesize into skb->cb |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`ece5d4c723b6`](https://git.kernel.org/torvalds/c/ece5d4c723b6) | [net] | net_sched: fq_codel: defer skb freeing |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`4d202a0d31b9`](https://git.kernel.org/torvalds/c/4d202a0d31b9) | [net] | net_sched: generalize bulk dequeue |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`ec0595cc4495`](https://git.kernel.org/torvalds/c/ec0595cc4495) | [net] | net_sched: get rid of struct tcf_common |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`b2313077ed0d`](https://git.kernel.org/torvalds/c/b2313077ed0d) | [net] | net_sched: make tcf_hash_check() boolean |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`a85a970af265`](https://git.kernel.org/torvalds/c/a85a970af265) | [net] | net_sched: move tc_action into tcf_common |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`8a6e9c670341`](https://git.kernel.org/torvalds/c/8a6e9c670341) | [net] | net_sched: netem: do not call qdisc_drop() with a NULL skb |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`42117927cab5`](https://git.kernel.org/torvalds/c/42117927cab5) | [net] | net_sched: netem: remove qdisc_is_throttled() use |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`824a7e8863b3`](https://git.kernel.org/torvalds/c/824a7e8863b3) | [net] | net_sched: remove an unnecessary list_del() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`45f50bed1d80`](https://git.kernel.org/torvalds/c/45f50bed1d80) | [net] | net_sched: remove generic throttled management |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`95df1b16074c`](https://git.kernel.org/torvalds/c/95df1b16074c) | [net] | net_sched: remove internal use of TC_POLICE_* |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`f07fed82ad79`](https://git.kernel.org/torvalds/c/f07fed82ad79) | [net] | net_sched: remove the leftover cleanup_a() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`a5a9f5346fb9`](https://git.kernel.org/torvalds/c/a5a9f5346fb9) | [net] | net_sched: sch_htb: defer skb freeing |  | CONFIG_NET_SCH_HTB=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`338ed9b4de57`](https://git.kernel.org/torvalds/c/338ed9b4de57) | [net] | net_sched: sch_htb: export class backlog in dumps |  | CONFIG_NET_SCH_HTB=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`f9eb8aea2a1e`](https://git.kernel.org/torvalds/c/f9eb8aea2a1e) | [net] | net_sched: transform qdisc running bit into a seqcount |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`0852e455238f`](https://git.kernel.org/torvalds/c/0852e455238f) | [net] | net_sched: unify the init logic for act_police |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`82de0be6862c`](https://git.kernel.org/torvalds/c/82de0be6862c) | [net] | netfilter: Add helper array register/unregister functions |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1053 |
| CANDIDATE | 4.8 | [`64b87639c9cb`](https://git.kernel.org/torvalds/c/64b87639c9cb) | [net] | netfilter: conntrack: fix race between nf_conntrack proc read and hash resize |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-800 |
| CANDIDATE | 4.8 | [`23014011ba42`](https://git.kernel.org/torvalds/c/23014011ba42) | [net] | netfilter: conntrack: support a fixed size of 128 distinct labels |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-798 |
| CANDIDATE | 4.8 | [`4249fc1f023a`](https://git.kernel.org/torvalds/c/4249fc1f023a) | [net] | netfilter: ebtables: put module reference when an incorrect extension is found |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-499 |
| CANDIDATE | 4.8 | [`c6ac37d8d884`](https://git.kernel.org/torvalds/c/c6ac37d8d884) | [net] | netfilter: nf_log: fix error on write NONE to logger choice sysctl |  | CONFIG_NETFILTER_NETLINK_LOG=y in A37 | 3.10.0-1134 |
| CANDIDATE | 4.8 | [`00a3101f5618`](https://git.kernel.org/torvalds/c/00a3101f5618) | [net] | netfilter: nfnetlink_queue: reject verdict request from different portid |  | CONFIG_NETFILTER_NETLINK_QUEUE=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.8 | [`47c74456257d`](https://git.kernel.org/torvalds/c/47c74456257d) | [net] | netfilter: physdev: physdev-is-out should not work with OUTPUT chain |  | CONFIG_NETFILTER=y in A37 | 3.10.0-494 |
| CANDIDATE | 4.8 | [`f4dc77713f80`](https://git.kernel.org/torvalds/c/f4dc77713f80) | [net] | netfilter: x_tables: speed up jump target validation | CVE-2016-3134 | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-484 |
| CANDIDATE | 4.8 | [`36f959c491ab`](https://git.kernel.org/torvalds/c/36f959c491ab) | [net] | netfilter: xt_TRACE: add explicitly nf_logger_find_get call |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-1123 |
| CANDIDATE | 4.8 | [`aece0c3fe1f0`](https://git.kernel.org/torvalds/c/aece0c3fe1f0) | [net] | nl802154: move PAD to right position |  | generic code, tag [net] | 3.10.0-638 |
| CANDIDATE | 4.8 | [`2e0ab8ca83c1`](https://git.kernel.org/torvalds/c/2e0ab8ca83c1) | [net] | ptr_ring: array based FIFO for pointers |  | generic code, tag [net] | 3.10.0-656 |
| CANDIDATE | 4.8 | [`5d49de532002`](https://git.kernel.org/torvalds/c/5d49de532002) | [net] | ptr_ring: resize support |  | generic code, tag [net] | 3.10.0-656 |
| CANDIDATE | 4.8 | [`59e6ae53248a`](https://git.kernel.org/torvalds/c/59e6ae53248a) | [net] | ptr_ring: support resizing multiple queues |  | generic code, tag [net] | 3.10.0-656 |
| CANDIDATE | 4.8 | [`982fb490c298`](https://git.kernel.org/torvalds/c/982fb490c298) | [net] | ptr_ring: support zero length ring |  | generic code, tag [net] | 3.10.0-656 |
| CANDIDATE | 4.8 | [`166ee5b87866`](https://git.kernel.org/torvalds/c/166ee5b87866) | [net] | qdisc: fix a module refcount leak in qdisc_create_dflt() |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.8 | [`40e4e713ebb2`](https://git.kernel.org/torvalds/c/40e4e713ebb2) (loose) | [net] | Reduce queue allocation to one in kdump kernel |  | generic code, tag [net] | 3.10.0-628 |
| CANDIDATE | 4.8 | [`80e73cc563c4`](https://git.kernel.org/torvalds/c/80e73cc563c4) (loose) | [net] | rtnetlink: add support for the IFLA_STATS_LINK_XSTATS_SLAVE attribute |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | 4.8 | [`0f06a6787e05`](https://git.kernel.org/torvalds/c/0f06a6787e05) | [net] | samples: Add an IPv6 '-6' option to the pktgen scripts |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.8 | [`6fd980ac39ef`](https://git.kernel.org/torvalds/c/6fd980ac39ef) (loose) | [net] | samples: pktgen mode samples/tests for qdisc layer |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.8 | [`edb09eb17ed8`](https://git.kernel.org/torvalds/c/edb09eb17ed8) (loose) | [net] | sched: do not acquire qdisc spinlock in qdisc/class stats dump |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`123b36526592`](https://git.kernel.org/torvalds/c/123b36526592) (loose) | [net] | sched: fix missing doc annotations |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`52fbb2907988`](https://git.kernel.org/torvalds/c/52fbb2907988) (loose) | [net] | sched: fix qdisc->running lockdep annotations |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1018 |
| CANDIDATE | 4.8 | [`52fbb2907988`](https://git.kernel.org/torvalds/c/52fbb2907988) (loose) | [net] | sched: fix qdisc->running lockdep annotations |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`c8945043cdc6`](https://git.kernel.org/torvalds/c/c8945043cdc6) | [net] | sched: place state, next_sched and gso_skb in same cacheline again |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`99860208bc62`](https://git.kernel.org/torvalds/c/99860208bc62) | [net] | sched: remove NET_XMIT_POLICED |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`a09ceb0e0814`](https://git.kernel.org/torvalds/c/a09ceb0e0814) | [net] | sched: remove qdisc->drop |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`c3a173d7dba2`](https://git.kernel.org/torvalds/c/c3a173d7dba2) | [net] | sched: remove qdisc_rehape_fail |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.8 | [`12474e8e58d8`](https://git.kernel.org/torvalds/c/12474e8e58d8) | [net] | sctp_diag: Fix T3_rtx timer export |  | generic code, tag [net] | 3.10.0-499 |
| CANDIDATE | 4.8 | [`1ba8d77f410d`](https://git.kernel.org/torvalds/c/1ba8d77f410d) | [net] | sctp_diag: Respect ss adding TCPF_CLOSE to idiag_states |  | generic code, tag [net] | 3.10.0-499 |
| CANDIDATE | 4.8 | [`8b10cab64c13`](https://git.kernel.org/torvalds/c/8b10cab64c13) (loose) | [net] | simplify and make pkt_type_ok() available for other users |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.8 | [`bf900b3dbefe`](https://git.kernel.org/torvalds/c/bf900b3dbefe) | [net] | skb_array: add wrappers for resizing |  | generic code, tag [net] | 3.10.0-656 |
| CANDIDATE | 4.8 | [`ad69f35d1dc0`](https://git.kernel.org/torvalds/c/ad69f35d1dc0) | [net] | skb_array: array based FIFO for skbs |  | generic code, tag [net] | 3.10.0-656 |
| CANDIDATE | 4.8 | [`fd68adec9de3`](https://git.kernel.org/torvalds/c/fd68adec9de3) | [net] | skb_array: minor tweak |  | generic code, tag [net] | 3.10.0-656 |
| CANDIDATE | 4.8 | [`7d7072e3bad5`](https://git.kernel.org/torvalds/c/7d7072e3bad5) | [net] | skb_array: resize support |  | generic code, tag [net] | 3.10.0-656 |
| CANDIDATE | 4.8 | [`57c05650394b`](https://git.kernel.org/torvalds/c/57c05650394b) | [net] | skbuff: export skb_gro_receive |  | generic code, tag [net] | 3.10.0-461 |
| CANDIDATE | 4.8 | [`ae7ef81ef000`](https://git.kernel.org/torvalds/c/ae7ef81ef000) | [net] | skbuff: introduce skb_gso_validate_mtu |  | generic code, tag [net] | 3.10.0-461 |
| CANDIDATE | 4.8 | [`b1ed4c4fa9a5`](https://git.kernel.org/torvalds/c/b1ed4c4fa9a5) | [net] | tcp: add an ability to dump and restore window parameters |  | generic code, tag [net] | 3.10.0-558 |
| CANDIDATE | 4.8 | [`76061f631c2e`](https://git.kernel.org/torvalds/c/76061f631c2e) | [net] | tcp: fastopen: avoid negative sk_forward_alloc |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.8 | [`28b346cbc071`](https://git.kernel.org/torvalds/c/28b346cbc071) | [net] | tcp: fastopen: fix rcv_wup initialization for TFO server on SYN/data |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.8 | [`2631b79f6cb8`](https://git.kernel.org/torvalds/c/2631b79f6cb8) | [net] | tcp: increase size at which tcp_bound_to_half_wnd bounds to > TCP_MSS_DEFAULT |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | 4.8 | [`86dfb4acb378`](https://git.kernel.org/torvalds/c/86dfb4acb378) | [net] | tun: Don't assume type tun in tun_device_event |  | CONFIG_TUN=y in A37 | 3.10.0-656 |
| CANDIDATE | 4.8 | [`f48cc6b2661c`](https://git.kernel.org/torvalds/c/f48cc6b2661c) | [net] | tun: fix build warnings |  | CONFIG_TUN=y in A37 | 3.10.0-656 |
| CANDIDATE | 4.8 | [`1576d9860599`](https://git.kernel.org/torvalds/c/1576d9860599) | [net] | tun: switch to use skb array for tx |  | CONFIG_TUN=y in A37 | 3.10.0-656 |
| CANDIDATE | 4.8 | [`63c43787d35e`](https://git.kernel.org/torvalds/c/63c43787d35e) | [net] | vti6: fix input path |  | generic code, tag [net] | 3.10.0-567 |
| CANDIDATE | 4.8 | [`a5d0dc810abf`](https://git.kernel.org/torvalds/c/a5d0dc810abf) | [net] | vti: flush x-netns xfrm cache when vti interface is removed |  | CONFIG_XFRM=y in A37 | 3.10.0-494 |
| CANDIDATE | 4.8 | [`b588479358ce`](https://git.kernel.org/torvalds/c/b588479358ce) | [net] | xfrm: Fix memory leak of aead algorithm name |  | CONFIG_XFRM=y in A37 | 3.10.0-915 |
| CANDIDATE | 4.8 | [`73efc3245fd3`](https://git.kernel.org/torvalds/c/73efc3245fd3) | [net] | xfrm: get rid of incorrect WARN |  | CONFIG_XFRM=y in A37 | 3.10.0-1039 |
| CANDIDATE | 4.8 | [`2f30ea5090cb`](https://git.kernel.org/torvalds/c/2f30ea5090cb) | [net] | xfrm_user: propagate sec ctx allocation errors |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.9 | [`93409033ae65`](https://git.kernel.org/torvalds/c/93409033ae65) (loose) | [net] | Add netdev all_adj_list refcnt propagation to fix panic |  | generic code, tag [net] | 3.10.0-622 |
| CANDIDATE | 4.9 | [`fcd91dd44986`](https://git.kernel.org/torvalds/c/fcd91dd44986) (loose) | [net] | add recursion limit to GRO | CVE-2016-7039 | generic code, tag [net] | 3.10.0-511 |
| CANDIDATE | 4.9 | [`7ddb30c7471e`](https://git.kernel.org/torvalds/c/7ddb30c7471e) | [net] | bluetooth: Add appearance to default scan rsp data |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`6a9e90bff9cf`](https://git.kernel.org/torvalds/c/6a9e90bff9cf) | [net] | bluetooth: Add appearance to Read Ext Controller Info command |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`e64c97b53bc6`](https://git.kernel.org/torvalds/c/e64c97b53bc6) | [net] | bluetooth: Add combined LED trigger for controller power |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`d0bef1d26fb6`](https://git.kernel.org/torvalds/c/d0bef1d26fb6) | [net] | bluetooth: Add extra channel checks for control open/close messages |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`321c6feed251`](https://git.kernel.org/torvalds/c/321c6feed251) | [net] | bluetooth: Add framework for Extended Controller Information |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`65010e68efbe`](https://git.kernel.org/torvalds/c/65010e68efbe) | [net] | bluetooth: Add HCI device identifier for Qualcomm SMD |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`1aabbbcefe8e`](https://git.kernel.org/torvalds/c/1aabbbcefe8e) | [net] | bluetooth: add printf format attribute to hci_set_[fh]w_info() |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`c4960ecf2b09`](https://git.kernel.org/torvalds/c/c4960ecf2b09) | [net] | bluetooth: Add support for appearance in scan rsp |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`7c295c4801b2`](https://git.kernel.org/torvalds/c/7c295c4801b2) | [net] | bluetooth: Add support for local name in scan rsp |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`38ceaa00d02d`](https://git.kernel.org/torvalds/c/38ceaa00d02d) | [net] | bluetooth: Add support for sending MGMT commands and events to monitor |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`249fa1699f86`](https://git.kernel.org/torvalds/c/249fa1699f86) | [net] | bluetooth: Add support for sending MGMT open and close to monitor |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`5e9fae48f800`](https://git.kernel.org/torvalds/c/5e9fae48f800) | [net] | bluetooth: Add supported data types to ext info changed event |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`8a0c9f49090f`](https://git.kernel.org/torvalds/c/8a0c9f49090f) | [net] | bluetooth: Append local name and CoD to Extended Controller Info |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`5a6d2cf5f18b`](https://git.kernel.org/torvalds/c/5a6d2cf5f18b) | [net] | bluetooth: Assign the channel early when binding HCI sockets |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`47b0f573f2fa`](https://git.kernel.org/torvalds/c/47b0f573f2fa) | [net] | bluetooth: Check SOL_HCI for raw socket options |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`cde7a863d36a`](https://git.kernel.org/torvalds/c/cde7a863d36a) | [net] | bluetooth: Factor appending EIR to separate helper |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`9c9db78dc0fb`](https://git.kernel.org/torvalds/c/9c9db78dc0fb) | [net] | bluetooth: Fix advertising instance validity check for flags |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`f61851f64b17`](https://git.kernel.org/torvalds/c/f61851f64b17) | [net] | bluetooth: Fix append max 11 bytes of name to scan rsp data |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`cecbf3e932c1`](https://git.kernel.org/torvalds/c/cecbf3e932c1) | [net] | bluetooth: Fix local name in scan rsp |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`e74317f43f5c`](https://git.kernel.org/torvalds/c/e74317f43f5c) | [net] | bluetooth: Fix missing ext info event when setting appearance |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`83ebb9ec734e`](https://git.kernel.org/torvalds/c/83ebb9ec734e) | [net] | bluetooth: Fix not registering BR/EDR SMP channel with force_bredr flag |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`7dc6f16c6875`](https://git.kernel.org/torvalds/c/7dc6f16c6875) | [net] | bluetooth: Fix not updating scan rsp when adv off |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`dd7e39bbfce1`](https://git.kernel.org/torvalds/c/dd7e39bbfce1) | [net] | bluetooth: Fix NULL pointer dereference in mgmt context |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`39385cb5f327`](https://git.kernel.org/torvalds/c/39385cb5f327) | [net] | bluetooth: Fix using the correct source address type |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`56f787c5024d`](https://git.kernel.org/torvalds/c/56f787c5024d) | [net] | bluetooth: Fix wrong Get Clock Information return parameters |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`baab793225c9`](https://git.kernel.org/torvalds/c/baab793225c9) | [net] | bluetooth: Fix wrong New Settings event when closing HCI User Channel |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`f4cdbb3f25c1`](https://git.kernel.org/torvalds/c/f4cdbb3f25c1) | [net] | bluetooth: Handle HCI raw socket transition from unbound to bound |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`4037a7747d7b`](https://git.kernel.org/torvalds/c/4037a7747d7b) | [net] | bluetooth: Increase the subsystem minor version number |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`df1cb87af9f2`](https://git.kernel.org/torvalds/c/df1cb87af9f2) | [net] | bluetooth: Introduce helper functions for socket cookie handling |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`03c979c4717c`](https://git.kernel.org/torvalds/c/03c979c4717c) | [net] | bluetooth: Introduce helper to pack mgmt version information |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`37d3a1fab50f`](https://git.kernel.org/torvalds/c/37d3a1fab50f) | [net] | bluetooth: mgmt: Fix sending redundant event for Advertising Instance |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`53f863a66904`](https://git.kernel.org/torvalds/c/53f863a66904) | [net] | bluetooth: Put led_trigger field behind CONFIG_BT_LEDS |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`1b422066658b`](https://git.kernel.org/torvalds/c/1b422066658b) | [net] | bluetooth: Refactor append name and appearance |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`7d5c11da1ff6`](https://git.kernel.org/torvalds/c/7d5c11da1ff6) | [net] | bluetooth: Refactor read_ext_controller_info handler |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`5e2c59e84b63`](https://git.kernel.org/torvalds/c/5e2c59e84b63) | [net] | bluetooth: Remove unused parameter from tlv_data_is_valid function |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`f81f5b2db869`](https://git.kernel.org/torvalds/c/f81f5b2db869) | [net] | bluetooth: Send control open and close messages for HCI raw sockets |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`aa1638dde75d`](https://git.kernel.org/torvalds/c/aa1638dde75d) | [net] | bluetooth: Send control open and close messages for HCI user channels |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`0ef2c42f8c4e`](https://git.kernel.org/torvalds/c/0ef2c42f8c4e) | [net] | bluetooth: Send control open and close only when cookie is present |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`af4168c5a925`](https://git.kernel.org/torvalds/c/af4168c5a925) | [net] | bluetooth: Set appearance only for LE capable controllers |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`70ecce91e3a2`](https://git.kernel.org/torvalds/c/70ecce91e3a2) | [net] | bluetooth: Store control socket cookie and comm information |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`2bb36870e8cb`](https://git.kernel.org/torvalds/c/2bb36870e8cb) | [net] | bluetooth: Unify advertising instance flags check |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`9db5c6295187`](https://git.kernel.org/torvalds/c/9db5c6295187) | [net] | bluetooth: Use command status event for Set IO Capability errors |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`5504c3a31061`](https://git.kernel.org/torvalds/c/5504c3a31061) | [net] | bluetooth: Use individual flags for certain management events |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`3e36ca483a64`](https://git.kernel.org/torvalds/c/3e36ca483a64) | [net] | bluetooth: Use kzalloc instead of kmalloc/memset |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`9e8305b39bfa`](https://git.kernel.org/torvalds/c/9e8305b39bfa) | [net] | bluetooth: Use numbers for subsystem version string |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.9 | [`308433155a67`](https://git.kernel.org/torvalds/c/308433155a67) (loose) | [net] | bridge: add helper to call /sbin/bridge-stp |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.9 | [`b6cb5ac8331b`](https://git.kernel.org/torvalds/c/b6cb5ac8331b) (loose) | [net] | bridge: add per-port multicast flood flag |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.9 | [`4eb6753c3324`](https://git.kernel.org/torvalds/c/4eb6753c3324) (loose) | [net] | bridge: add the multicast_flood flag attribute to brport_attrs |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.9 | [`8addd5e7d3a5`](https://git.kernel.org/torvalds/c/8addd5e7d3a5) (loose) | [net] | bridge: change unicast boolean to exact pkt_type |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.9 | [`d5ff8c41b5f7`](https://git.kernel.org/torvalds/c/d5ff8c41b5f7) (loose) | [net] | bridge: consolidate bridge and port linkxstats calls |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.9 | [`72f4af4e4706`](https://git.kernel.org/torvalds/c/72f4af4e4706) (loose) | [net] | bridge: export also pvid flag in the xstats flags |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.9 | [`61ba1a2da969`](https://git.kernel.org/torvalds/c/61ba1a2da969) (loose) | [net] | bridge: export vlan flags with the stats |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.9 | [`7cb3f9214dfa`](https://git.kernel.org/torvalds/c/7cb3f9214dfa) | [net] | bridge: multicast: restore perm router ports on multicast enable |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.9 | [`b59589635ff0`](https://git.kernel.org/torvalds/c/b59589635ff0) (loose) | [net] | bridge: set error code on failure |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.9 | [`6bc506b4fb06`](https://git.kernel.org/torvalds/c/6bc506b4fb06) | [net] | bridge: switchdev: Add forward mark support for stacked devices |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.9 | [`69ae6ad2ff37`](https://git.kernel.org/torvalds/c/69ae6ad2ff37) (loose) | [net] | core: Add offload stats to if_stats_msg |  | generic code, tag [net] | 3.10.0-634 |
| CANDIDATE | 4.9 | [`e4961b076885`](https://git.kernel.org/torvalds/c/e4961b076885) (loose) | [net] | core: Correctly iterate over lower adjacency list |  | generic code, tag [net] | 3.10.0-634 |
| CANDIDATE | 4.9 | [`ce6dd23329b1`](https://git.kernel.org/torvalds/c/ce6dd23329b1) | [net] | dctcp: avoid bogus doubling of cwnd after loss |  | generic code, tag [net] | 3.10.0-567 |
| CANDIDATE | 4.9 | [`c98501879b1b`](https://git.kernel.org/torvalds/c/c98501879b1b) | [net] | fib: introduce FIB info offload flag helpers |  | generic code, tag [net] | 3.10.0-634 |
| CANDIDATE | 4.9 | [`b90eb7549499`](https://git.kernel.org/torvalds/c/b90eb7549499) | [net] | fib: introduce FIB notification infrastructure |  | generic code, tag [net] | 3.10.0-634 |
| CANDIDATE | 4.9 | [`fd0285a39b1c`](https://git.kernel.org/torvalds/c/fd0285a39b1c) | [net] | fib_trie: Correct /proc/net/route off by one error |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 4.9 | [`6176e89c5734`](https://git.kernel.org/torvalds/c/6176e89c5734) (loose) | [net] | fix up a few missing hashtable.h conflict resolutions |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.9 | [`3805a938a6c2`](https://git.kernel.org/torvalds/c/3805a938a6c2) | [net] | flow_dissector: Check skb for VLAN only if skb specified. |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.9 | [`bc72f3dd89e0`](https://git.kernel.org/torvalds/c/bc72f3dd89e0) | [net] | flow_dissector: fix vlan tag handling |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.9 | [`d5709f7ab776`](https://git.kernel.org/torvalds/c/d5709f7ab776) | [net] | flow_dissector: For stripped vlan, get vlan info from skb->vlan_tci |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.9 | [`f6a66927692e`](https://git.kernel.org/torvalds/c/f6a66927692e) | [net] | flow_dissector: Get vlan priority in addition to vlan id |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.9 | [`e88a2766143a`](https://git.kernel.org/torvalds/c/e88a2766143a) | [net] | gro_cells: mark napi struct as not busy poll candidates |  | generic code, tag [net] | 3.10.0-687 |
| CANDIDATE | 4.9 | [`a51088782417`](https://git.kernel.org/torvalds/c/a51088782417) | [net] | gso: Reload iph after pskb_may_pull |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.9 | [`07b26c9454a2`](https://git.kernel.org/torvalds/c/07b26c9454a2) | [net] | gso: Support partial splitting at the frag_list pointer |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.9 | [`ed082d36a7b2`](https://git.kernel.org/torvalds/c/ed082d36a7b2) | [net] | ib/core: add support to create a unsafe global rkey to ib_create_pd |  | generic code, tag [net] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`24803f38a5c0`](https://git.kernel.org/torvalds/c/24803f38a5c0) | [net] | igmp: do not remove igmp souce list info when set link down |  | generic code, tag [net] | 3.10.0-532 |
| CANDIDATE | 4.9 | [`6b6ebb6b01c8`](https://git.kernel.org/torvalds/c/6b6ebb6b01c8) | [net] | ip6_offload: check segs for NULL in ipv6_gso_segment |  | generic code, tag [net] | 3.10.0-681 |
| CANDIDATE | 4.9 | [`8d79266bc48c`](https://git.kernel.org/torvalds/c/8d79266bc48c) | [net] | ip6_tunnel: add collect_md mode to IPv6 tunnels |  | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | 4.9 | [`68d00f332e0b`](https://git.kernel.org/torvalds/c/68d00f332e0b) | [net] | ip6_tunnel: fix ip6_tnl_lookup |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 4.9 | [`9ee6c5dc816a`](https://git.kernel.org/torvalds/c/9ee6c5dc816a) | [net] | ipv4: allow local fragmentation in ip_finish_output_gso() |  | generic code, tag [net] | 3.10.0-538 |
| CANDIDATE | 4.9 | [`3114cdfe66c1`](https://git.kernel.org/torvalds/c/3114cdfe66c1) | [net] | ipv4: Fix memory leak in exception case for splitting tries |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 4.9 | [`b93e1fa71065`](https://git.kernel.org/torvalds/c/b93e1fa71065) | [net] | ipv4: fix value of ->nlmsg_flags reported in RTM_NEWROUTE events |  | generic code, tag [net] | 3.10.0-647 |
| CANDIDATE | 4.9 | [`3b7093346b32`](https://git.kernel.org/torvalds/c/3b7093346b32) | [net] | ipv4: Restore fib_trie_flush_external function and fix call ordering |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 4.9 | [`19bda36c4299`](https://git.kernel.org/torvalds/c/19bda36c4299) | [net] | ipv6: add mtu lock check in __ip6_rt_update_pmtu |  | generic code, tag [net] | 3.10.0-523 |
| CANDIDATE | 4.9 | [`764d3be6e415`](https://git.kernel.org/torvalds/c/764d3be6e415) | [net] | ipv6: bump genid when the IFA_F_TENTATIVE flag is clear |  | generic code, tag [net] | 3.10.0-532 |
| CANDIDATE | 4.9 | [`f89c56ce710a`](https://git.kernel.org/torvalds/c/f89c56ce710a) | [net] | ipv6: Don't use ufo handling on later transformed packets |  | generic code, tag [net] | 3.10.0-578 |
| CANDIDATE | 4.9 | [`8651be8f14a1`](https://git.kernel.org/torvalds/c/8651be8f14a1) | [net] | ipv6: fix a potential deadlock in do_ipv6_setsockopt() |  | generic code, tag [net] | 3.10.0-829 |
| CANDIDATE | 4.9 | [`b4e479a96fc3`](https://git.kernel.org/torvalds/c/b4e479a96fc3) | [net] | ipv6: Set skb->protocol properly for local output |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 4.9 | [`31e2f21fb35b`](https://git.kernel.org/torvalds/c/31e2f21fb35b) | [net] | l2tp: fix address test in __l2tp_ip6_bind_lookup() | CVE-2016-10200 | CONFIG_L2TP=y in A37 | 3.10.0-678 |
| CANDIDATE | 4.9 | [`df90e6886146`](https://git.kernel.org/torvalds/c/df90e6886146) | [net] | l2tp: fix lookup for sockets not bound to a device in l2tp_ip | CVE-2016-10200 | CONFIG_L2TP=y in A37 | 3.10.0-678 |
| CANDIDATE | 4.9 | [`d5e3a190937a`](https://git.kernel.org/torvalds/c/d5e3a190937a) | [net] | l2tp: fix racy socket lookup in l2tp_ip and l2tp_ip6 bind() | CVE-2016-10200 | CONFIG_L2TP=y in A37 | 3.10.0-678 |
| CANDIDATE | 4.9 | [`a3c18422a4b4`](https://git.kernel.org/torvalds/c/a3c18422a4b4) | [net] | l2tp: hold socket before dropping lock in l2tp_ip{, 6}_recv() | CVE-2016-10200 | CONFIG_L2TP=y in A37 | 3.10.0-678 |
| CANDIDATE | 4.9 | [`e0f841f5cbf2`](https://git.kernel.org/torvalds/c/e0f841f5cbf2) | [net] | macsec: Fix header length if SCI is added if explicitly disabled |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.9 | [`c24acf03c735`](https://git.kernel.org/torvalds/c/c24acf03c735) | [net] | macsec: set network devtype |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.9 | [`eb60a8ddf3c3`](https://git.kernel.org/torvalds/c/eb60a8ddf3c3) (loose) | [net] | minor optimization in qdisc_qstats_cpu_drop() |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.9 | [`21641c2e1ffd`](https://git.kernel.org/torvalds/c/21641c2e1ffd) | [net] | net_sched: check NULL on error path in route4_change() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.9 | [`fa59b27c9d6f`](https://git.kernel.org/torvalds/c/fa59b27c9d6f) | [net] | net_sched: do not broadcast RTM_GETTFILTER result |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.9 | [`86da71b57383`](https://git.kernel.org/torvalds/c/86da71b57383) | [net] | net_sched: Introduce skbmod action |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.9 | [`b9a24bb76bf6`](https://git.kernel.org/torvalds/c/b9a24bb76bf6) | [net] | net_sched: properly handle failure case of tcf_exts_init() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.9 | [`ab102b80cef2`](https://git.kernel.org/torvalds/c/ab102b80cef2) | [net] | net_sched: reorder pernet ops and act ops registrations |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.9 | [`2c9d85d4d82d`](https://git.kernel.org/torvalds/c/2c9d85d4d82d) | [net] | netdevice: Add offload statistics ndo |  | generic code, tag [net] | 3.10.0-634 |
| CANDIDATE | 4.9 | [`d4ef9f72128d`](https://git.kernel.org/torvalds/c/d4ef9f72128d) | [net] | netfilter: bridge: clarify bridge/netfilter message |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.9 | [`cdb436d181d2`](https://git.kernel.org/torvalds/c/cdb436d181d2) | [net] | netfilter: conntrack: avoid excess memory allocation |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-798 |
| CANDIDATE | 4.9 | [`1bcabc81ee94`](https://git.kernel.org/torvalds/c/1bcabc81ee94) | [net] | netfilter: nf_ct_sip: allow tab character in SIP headers |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-786 |
| CANDIDATE | 4.9 | [`f0608ceaa79d`](https://git.kernel.org/torvalds/c/f0608ceaa79d) | [net] | netfilter: nf_ct_sip: correct allowed characters in Call-ID SIP header |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-786 |
| CANDIDATE | 4.9 | [`68cb9fe47ea6`](https://git.kernel.org/torvalds/c/68cb9fe47ea6) | [net] | netfilter: nf_ct_sip: correct parsing of continuation lines in SIP headers |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-786 |
| CANDIDATE | 4.9 | [`ceee4091d622`](https://git.kernel.org/torvalds/c/ceee4091d622) | [net] | netfilter: physdev: add missed blank |  | CONFIG_NETFILTER=y in A37 | 3.10.0-494 |
| CANDIDATE | 4.9 | [`1486587b2fcd`](https://git.kernel.org/torvalds/c/1486587b2fcd) | [net] | pie: use qdisc_dequeue_head wrapper |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.9 | [`695b4ec0f0a9`](https://git.kernel.org/torvalds/c/695b4ec0f0a9) | [net] | pkt_sched: fq: use proper locking in fq_dump_stats() |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.9 | [`e87a8f24c915`](https://git.kernel.org/torvalds/c/e87a8f24c915) (loose) | [net] | resolve symbol conflicts with generic hashtable.h |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.9 | [`ab10dccb1160`](https://git.kernel.org/torvalds/c/ab10dccb1160) | [net] | rps: Inspect PPTP encapsulated by GRE to get flow hash |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.9 | [`f8edcd127b5f`](https://git.kernel.org/torvalds/c/f8edcd127b5f) (loose) | [net] | rtnetlink: Don't export empty RTAX_FEATURES |  | generic code, tag [net] | 3.10.0-567 |
| CANDIDATE | 4.9 | [`d297653dd6f0`](https://git.kernel.org/torvalds/c/d297653dd6f0) | [net] | rtnetlink: fdb dump: optimize by saving last interface markers |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | 4.9 | [`f82ef3e10a87`](https://git.kernel.org/torvalds/c/f82ef3e10a87) | [net] | rtnetlink: fix FDB size computation |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | 4.9 | [`7e75f74a171a`](https://git.kernel.org/torvalds/c/7e75f74a171a) | [net] | rtnetlink: fix rtnl_vfinfo_size |  | generic code, tag [net] | 3.10.0-532 |
| CANDIDATE | 4.9 | [`fa34cd94fb01`](https://git.kernel.org/torvalds/c/fa34cd94fb01) (loose) | [net] | rtnl: avoid uninitialized data in IFLA_VF_VLAN_LIST handling |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.9 | [`775f4f05501b`](https://git.kernel.org/torvalds/c/775f4f05501b) (loose) | [net] | rtnl: info leak in rtnl_fill_vfinfo() |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.9 | [`48da34b7a742`](https://git.kernel.org/torvalds/c/48da34b7a742) | [net] | sched: add and use qdisc_skb_head helpers |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.9 | [`ea3274695353`](https://git.kernel.org/torvalds/c/ea3274695353) (loose) | [net] | sched: avoid duplicates in qdisc dump |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.9 | [`59cc1f61f09c`](https://git.kernel.org/torvalds/c/59cc1f61f09c) (loose) | [net] | sched: convert qdisc linked list to hashtable |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.9 | [`97d0678f9133`](https://git.kernel.org/torvalds/c/97d0678f9133) | [net] | sched: don't use skb queue helpers |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.9 | [`69012ae425d7`](https://git.kernel.org/torvalds/c/69012ae425d7) (loose) | [net] | sched: fix handling of singleton qdiscs with qdisc_hash |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.9 | [`ec323368793b`](https://git.kernel.org/torvalds/c/ec323368793b) | [net] | sched: remove qdisc arg from __qdisc_dequeue_head |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.9 | [`ed760cb8aae7`](https://git.kernel.org/torvalds/c/ed760cb8aae7) | [net] | sched: replace __skb_dequeue with __qdisc_dequeue_head |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.9 | [`d936377414fa`](https://git.kernel.org/torvalds/c/d936377414fa) (loose) | [net] | sched: respect rcu grace period on cls destruction |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-634 |
| CANDIDATE | 4.9 | [`d936377414fa`](https://git.kernel.org/torvalds/c/d936377414fa) (loose) | [net] | sched: respect rcu grace period on cls destruction |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | 4.9 | [`0013de38a829`](https://git.kernel.org/torvalds/c/0013de38a829) (loose) | [net] | sched: use IS_ENABLED() instead of checking for built-in or module |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.9 | [`bfca4c520f7e`](https://git.kernel.org/torvalds/c/bfca4c520f7e) (loose) | [net] | skbuff: Export __skb_vlan_pop |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.9 | [`b6a7920848ca`](https://git.kernel.org/torvalds/c/b6a7920848ca) (loose) | [net] | skbuff: Limit skb_vlan_pop/push() to expect skb->data at mac header |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.9 | [`76f0dcbb5ae1`](https://git.kernel.org/torvalds/c/76f0dcbb5ae1) | [net] | tcp: fix a stale ooo_last_skb after a replace | CVE-2018-5390 | generic code, tag [net] | 3.10.0-932 |
| CANDIDATE | 4.9 | [`36a6503fedda`](https://git.kernel.org/torvalds/c/36a6503fedda) | [net] | tcp: refine tcp_prune_ofo_queue() to not drop all packets | CVE-2018-5390 | generic code, tag [net] | 3.10.0-932 |
| CANDIDATE | 4.9 | [`9f5afeae5152`](https://git.kernel.org/torvalds/c/9f5afeae5152) | [net] | tcp: use an RB tree for ooo receive queue | CVE-2018-5390 | generic code, tag [net] | 3.10.0-932 |
| CANDIDATE | 4.9 | [`dcb17d22e1c2`](https://git.kernel.org/torvalds/c/dcb17d22e1c2) | [net] | tcp: warn on bogus MSS and try to amend it |  | generic code, tag [net] | 3.10.0-558 |
| CANDIDATE | 4.9 | [`ad5588582957`](https://git.kernel.org/torvalds/c/ad5588582957) | [net] | uapi: export tc_skbmod.h |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.9 | [`79aab093a0b5`](https://git.kernel.org/torvalds/c/79aab093a0b5) (loose) | [net] | Update API for VF vlan protocol 802.1ad support |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.9 | [`c80fafbbb59e`](https://git.kernel.org/torvalds/c/c80fafbbb59e) | [net] | veth: sctp: add NETIF_F_SCTP_CRC to device features |  | CONFIG_VETH=y in A37 | 3.10.0-506 |
| CANDIDATE | 4.9 | [`607fca9acfb6`](https://git.kernel.org/torvalds/c/607fca9acfb6) (loose) | [net] | veth: Set features for MPLS |  | CONFIG_VETH=y in A37 | 3.10.0-798 |
| CANDIDATE | 4.9 | [`eeb30613e1ef`](https://git.kernel.org/torvalds/c/eeb30613e1ef) | [net] | xprtrmda: Report address of frmr, not mw |  | generic code, tag [net] | 3.10.0-603 |
| CANDIDATE | 4.10 | [`3df5b3c67546`](https://git.kernel.org/torvalds/c/3df5b3c67546) (loose) | [net] | Add net-device param to the get offloaded stats ndo |  | generic code, tag [net] | 3.10.0-634 |
| CANDIDATE | 4.10 | [`184c449f91fe`](https://git.kernel.org/torvalds/c/184c449f91fe) (loose) | [net] | Add support for XPS with QoS via traffic classes |  | generic code, tag [net] | 3.10.0-1015 |
| CANDIDATE | 4.10 | [`8d059b0f6f5b`](https://git.kernel.org/torvalds/c/8d059b0f6f5b) (loose) | [net] | Add sysfs value to determine queue traffic class |  | generic code, tag [net] | 3.10.0-898 |
| CANDIDATE | 4.10 | [`21fcf572716f`](https://git.kernel.org/torvalds/c/21fcf572716f) | [net] | bluetooth: __ variants of u8 and friends are not neccessary inside kernel |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | 4.10 | [`8d829bdb97dc`](https://git.kernel.org/torvalds/c/8d829bdb97dc) | [net] | bpf, cls: consolidate prog deletion path |  | generic code, tag [net] | 3.10.0-1002 |
| CANDIDATE | 4.10 | [`c491680f8f48`](https://git.kernel.org/torvalds/c/c491680f8f48) | [net] | bpf: reuse dev_is_mac_header_xmit for redirect |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.10 | [`de1dfeefefde`](https://git.kernel.org/torvalds/c/de1dfeefefde) | [net] | bridge: add address and vlan to fdb warning messages |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | 4.10 | [`82dd4332aa07`](https://git.kernel.org/torvalds/c/82dd4332aa07) (loose) | [net] | bridge: add helper to offload ageing time |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.10 | [`8384b5f5b293`](https://git.kernel.org/torvalds/c/8384b5f5b293) (loose) | [net] | bridge: add helper to set topology change |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.10 | [`5e9235853d65`](https://git.kernel.org/torvalds/c/5e9235853d65) | [net] | bridge: mcast: add IGMPv3 query support |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.10 | [`aa2ae3e71c74`](https://git.kernel.org/torvalds/c/aa2ae3e71c74) | [net] | bridge: mcast: add MLDv2 querier support |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.10 | [`b6677449dff6`](https://git.kernel.org/torvalds/c/b6677449dff6) | [net] | bridge: netlink: call br_changelink() during br_dev_newlink() |  | CONFIG_BRIDGE=y in A37 | 3.10.0-628 |
| CANDIDATE | 4.10 | [`34d8acd8aabb`](https://git.kernel.org/torvalds/c/34d8acd8aabb) (loose) | [net] | bridge: shorten ageing time on topology change |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.10 | [`217f69743681`](https://git.kernel.org/torvalds/c/217f69743681) (loose) | [net] | busy-poll: allow preemption in sk_busy_loop() |  | generic code, tag [net] | 3.10.0-717 |
| CANDIDATE | 4.10 | [`21cb84c48ca0`](https://git.kernel.org/torvalds/c/21cb84c48ca0) (loose) | [net] | busy-poll: remove need_resched() from sk_can_busy_loop() |  | generic code, tag [net] | 3.10.0-717 |
| CANDIDATE | 4.10 | [`364b6055738b`](https://git.kernel.org/torvalds/c/364b6055738b) (loose) | [net] | busy-poll: return busypolling status to drivers |  | generic code, tag [net] | 3.10.0-717 |
| CANDIDATE | 4.10 | [`61e84623ace3`](https://git.kernel.org/torvalds/c/61e84623ace3) (loose) | [net] | centralize net_device min/max MTU checking |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 4.10 | [`4780566784b3`](https://git.kernel.org/torvalds/c/4780566784b3) | [net] | dctcp: update cwnd on congestion event |  | generic code, tag [net] | 3.10.0-538 |
| CANDIDATE | 4.10 | [`a52ad514fdf3`](https://git.kernel.org/torvalds/c/a52ad514fdf3) (loose) | [net] | deprecate eth_change_mtu, remove usage |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 4.10 | [`46b5ab1a7cfe`](https://git.kernel.org/torvalds/c/46b5ab1a7cfe) (loose) | [net] | dev: Fix non-RCU based lower dev walker |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | 4.10 | [`25e3e84b183a`](https://git.kernel.org/torvalds/c/25e3e84b183a) | [net] | dummy: expend mtu range for dummy device |  | generic code, tag [net] | 3.10.0-829 |
| CANDIDATE | 4.10 | [`31a86d137219`](https://git.kernel.org/torvalds/c/31a86d137219) (loose) | [net] | ethtool: Initialize buffer when querying device channel settings |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.10 | [`972d3876faa8`](https://git.kernel.org/torvalds/c/972d3876faa8) | [net] | flow dissector: ICMP support |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.10 | [`b917783c7b35`](https://git.kernel.org/torvalds/c/b917783c7b35) | [net] | flow_dissector: __skb_get_hash_symmetric arg can be const |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.10 | [`9ba6a9a9f7a4`](https://git.kernel.org/torvalds/c/9ba6a9a9f7a4) | [net] | flow_dissector: Add enums for encapsulation keys |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.10 | [`d0af683407a2`](https://git.kernel.org/torvalds/c/d0af683407a2) | [net] | flow_dissector: Update pptp handling to avoid null pointer deref. |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | 4.10 | [`22ca904ad70a`](https://git.kernel.org/torvalds/c/22ca904ad70a) | [net] | genetlink: fix error return code in genl_register_family() |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 4.10 | [`0e82c7635997`](https://git.kernel.org/torvalds/c/0e82c7635997) | [net] | genetlink: Fix generic netlink family unregister |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 4.10 | [`c90c39dab3e0`](https://git.kernel.org/torvalds/c/c90c39dab3e0) | [net] | genetlink: introduce and use genl_family_attrbuf() |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 4.10 | [`98e4321b97cc`](https://git.kernel.org/torvalds/c/98e4321b97cc) | [net] | genetlink: Make family a signed integer |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 4.10 | [`a07ea4d9941a`](https://git.kernel.org/torvalds/c/a07ea4d9941a) | [net] | genetlink: no longer support using static family IDs |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 4.10 | [`489111e5c25b`](https://git.kernel.org/torvalds/c/489111e5c25b) | [net] | genetlink: statically initialize families |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 4.10 | [`2ae0f17df1cd`](https://git.kernel.org/torvalds/c/2ae0f17df1cd) | [net] | genetlink: use idr to track families |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 4.10 | [`9c8bb163ae78`](https://git.kernel.org/torvalds/c/9c8bb163ae78) | [net] | igmp, mld: Fix memory leak in igmpv3/mld_del_delrec() |  | generic code, tag [net] | 3.10.0-578 |
| CANDIDATE | 4.10 | [`1a3f060c1a47`](https://git.kernel.org/torvalds/c/1a3f060c1a47) (loose) | [net] | Introduce new api for walking upper and lower devices |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | 4.10 | [`02ca0423fd65`](https://git.kernel.org/torvalds/c/02ca0423fd65) | [net] | ip6_tunnel: Account for tunnel header in tunnel MTU |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | 4.10 | [`21b995a9cb09`](https://git.kernel.org/torvalds/c/21b995a9cb09) | [net] | ip6_tunnel: must reload ipv6h in ip6ip6_tnl_xmit() |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | 4.10 | [`5350d54f6cd1`](https://git.kernel.org/torvalds/c/5350d54f6cd1) | [net] | ipv4: Do not allow MAIN to be alias for new LOCAL w/ custom rules |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 4.10 | [`1c677b3d2828`](https://git.kernel.org/torvalds/c/1c677b3d2828) | [net] | ipv4: fib: Add fib_info_hold() helper |  | generic code, tag [net] | 3.10.0-634 |
| CANDIDATE | 4.10 | [`cacaad11f43a`](https://git.kernel.org/torvalds/c/cacaad11f43a) | [net] | ipv4: fib: Allow for consistent FIB dumping |  | generic code, tag [net] | 3.10.0-634 |
| CANDIDATE | 4.10 | [`d3f706f68e2f`](https://git.kernel.org/torvalds/c/d3f706f68e2f) | [net] | ipv4: fib: Convert FIB notification chain to be atomic |  | generic code, tag [net] | 3.10.0-634 |
| CANDIDATE | 4.10 | [`b423cb10807b`](https://git.kernel.org/torvalds/c/b423cb10807b) | [net] | ipv4: fib: Export free_fib_info() |  | generic code, tag [net] | 3.10.0-634 |
| CANDIDATE | 4.10 | [`c3852ef7f2f8`](https://git.kernel.org/torvalds/c/c3852ef7f2f8) | [net] | ipv4: fib: Replay events when registering FIB notifier |  | generic code, tag [net] | 3.10.0-649 |
| CANDIDATE | 4.10 | [`0a28cfd51e17`](https://git.kernel.org/torvalds/c/0a28cfd51e17) | [net] | ipv4: Should use consistent conditional judgement for ip fragment in __ip_append_data and ip_finish_output | CVE-2017-1000112 | generic code, tag [net] | 3.10.0-709 |
| CANDIDATE | 4.10 | [`a11a7f71cac2`](https://git.kernel.org/torvalds/c/a11a7f71cac2) | [net] | ipv6: addrconf: fix generation of new temporary addresses |  | generic code, tag [net] | 3.10.0-937 |
| CANDIDATE | 4.10 | [`2b89ed65a6f2`](https://git.kernel.org/torvalds/c/2b89ed65a6f2) | [net] | ipv6: Paritially checksum full MTU frames |  | generic code, tag [net] | 3.10.0-638 |
| CANDIDATE | 4.10 | [`e4c5e13aa45c`](https://git.kernel.org/torvalds/c/e4c5e13aa45c) | [net] | ipv6: Should use consistent conditional judgement for ip6 fragment between __ip6_append_data and ip6_finish_output |  | generic code, tag [net] | 3.10.0-638 |
| CANDIDATE | 4.10 | [`57ceb8611d85`](https://git.kernel.org/torvalds/c/57ceb8611d85) (loose) | [net] | l2tp: cleanup: remove redundant condition |  | CONFIG_L2TP=y in A37 | 3.10.0-882 |
| CANDIDATE | 4.10 | [`3f9b9770b479`](https://git.kernel.org/torvalds/c/3f9b9770b479) (loose) | [net] | l2tp: fix negative assignment to unsigned int |  | CONFIG_L2TP=y in A37 | 3.10.0-882 |
| CANDIDATE | 4.10 | [`97b7af097edb`](https://git.kernel.org/torvalds/c/97b7af097edb) (loose) | [net] | l2tp: netlink: l2tp_nl_tunnel_send: set UDP6 checksum flags |  | CONFIG_L2TP=y in A37 | 3.10.0-882 |
| CANDIDATE | 4.10 | [`7ff516ffe4ec`](https://git.kernel.org/torvalds/c/7ff516ffe4ec) (loose) | [net] | l2tp: only set L2TP_ATTR_UDP_CSUM if AF_INET |  | CONFIG_L2TP=y in A37 | 3.10.0-882 |
| CANDIDATE | 4.10 | [`c9fba3ed3a43`](https://git.kernel.org/torvalds/c/c9fba3ed3a43) | [net] | macsec: remove first zero and add attribute name in comments |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.10 | [`d0a81f67cd62`](https://git.kernel.org/torvalds/c/d0a81f67cd62) (loose) | [net] | make default TX queue length a defined constant |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.10 | [`bc8ee596afe8`](https://git.kernel.org/torvalds/c/bc8ee596afe8) (loose) | [net] | mii: add generic function to support ksetting support |  | generic code, tag [net] | 3.10.0-867 |
| CANDIDATE | 4.10 | [`dc0b2c9cb47a`](https://git.kernel.org/torvalds/c/dc0b2c9cb47a) (loose) | [net] | mii: report 0 for unknown lp_advertising |  | generic code, tag [net] | 3.10.0-867 |
| CANDIDATE | 4.10 | [`1666d49e1d41`](https://git.kernel.org/torvalds/c/1666d49e1d41) | [net] | mld: do not remove mld souce list info when set link down |  | generic code, tag [net] | 3.10.0-578 |
| CANDIDATE | 4.10 | [`9cf1f6a8c4cb`](https://git.kernel.org/torvalds/c/9cf1f6a8c4cb) (loose) | [net] | Move functions for configuring traffic classes out of inline headers |  | generic code, tag [net] | 3.10.0-898 |
| CANDIDATE | 4.10 | [`7627ae6030f5`](https://git.kernel.org/torvalds/c/7627ae6030f5) (loose) | [net] | neigh: Fix netevent NETEVENT_DELAY_PROBE_TIME_UPDATE notification |  | generic code, tag [net] | 3.10.0-634 |
| CANDIDATE | 4.10 | [`53f800e3baf9`](https://git.kernel.org/torvalds/c/53f800e3baf9) | [net] | neigh: Send netevent after marking neigh as dead |  | generic code, tag [net] | 3.10.0-634 |
| CANDIDATE | 4.10 | [`12efa1fa4396`](https://git.kernel.org/torvalds/c/12efa1fa4396) | [net] | net_sched: gen_estimator: account for timer drifts |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.10 | [`1c0d32fde5bd`](https://git.kernel.org/torvalds/c/1c0d32fde5bd) | [net] | net_sched: gen_estimator: complete rewrite of rate estimators |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.10 | [`0c4e966eafff`](https://git.kernel.org/torvalds/c/0c4e966eafff) | [net] | netfilter: built-in NAT support for DCCP |  | CONFIG_NETFILTER=y in A37 | 3.10.0-578 |
| CANDIDATE | 4.10 | [`7a2dd28c7034`](https://git.kernel.org/torvalds/c/7a2dd28c7034) | [net] | netfilter: built-in NAT support for SCTP |  | CONFIG_NETFILTER=y in A37 | 3.10.0-578 |
| CANDIDATE | 4.10 | [`b8ad652f9779`](https://git.kernel.org/torvalds/c/b8ad652f9779) | [net] | netfilter: built-in NAT support for UDPlite |  | CONFIG_NETFILTER=y in A37 | 3.10.0-578 |
| CANDIDATE | 4.10 | [`c51d39010a1b`](https://git.kernel.org/torvalds/c/c51d39010a1b) | [net] | netfilter: conntrack: built-in support for DCCP |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-578 |
| CANDIDATE | 4.10 | [`a85406afeb3e`](https://git.kernel.org/torvalds/c/a85406afeb3e) | [net] | netfilter: conntrack: built-in support for SCTP |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-578 |
| CANDIDATE | 4.10 | [`9b91c96c5d1f`](https://git.kernel.org/torvalds/c/9b91c96c5d1f) | [net] | netfilter: conntrack: built-in support for UDPlite |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-578 |
| CANDIDATE | 4.10 | [`7e416ad74163`](https://git.kernel.org/torvalds/c/7e416ad74163) | [net] | netfilter: conntrack: remove unused netns_ct member |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-798 |
| CANDIDATE | 4.10 | [`0e54d2179f65`](https://git.kernel.org/torvalds/c/0e54d2179f65) | [net] | netfilter: conntrack: simplify init/uninit of L4 protocol trackers |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-578 |
| CANDIDATE | 4.10 | [`6c5d5cfbe3c5`](https://git.kernel.org/torvalds/c/6c5d5cfbe3c5) | [net] | netfilter: ipt_CLUSTERIP: check duplicate config when initializing |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-703 |
| CANDIDATE | 4.10 | [`3fd0b634de7d`](https://git.kernel.org/torvalds/c/3fd0b634de7d) | [net] | netfilter: ipt_CLUSTERIP: fix build error without procfs |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-703 |
| CANDIDATE | 4.10 | [`3189a290f98d`](https://git.kernel.org/torvalds/c/3189a290f98d) | [net] | netfilter: nat: skip checksum on offload SCTP packets |  | CONFIG_NF_NAT=y in A37 | 3.10.0-590 |
| CANDIDATE | 4.10 | [`3b760dcb0fd3`](https://git.kernel.org/torvalds/c/3b760dcb0fd3) | [net] | netfilter: rpfilter: bypass ipv4 lbcast packets with zeronet source |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1053 |
| CANDIDATE | 4.10 | [`cc31d43b4154`](https://git.kernel.org/torvalds/c/cc31d43b4154) | [net] | netfilter: use fwmark_reflect in nf_send_reset |  | CONFIG_NETFILTER=y in A37 | 3.10.0-717 |
| CANDIDATE | 4.10 | [`613dbd95723a`](https://git.kernel.org/torvalds/c/613dbd95723a) | [net] | netfilter: x_tables: move hook state into xt_action_param structure |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.10 | [`ae0ac0ed6fcf`](https://git.kernel.org/torvalds/c/ae0ac0ed6fcf) | [net] | netfilter: x_tables: pack percpu counter allocations |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-742 |
| CANDIDATE | 4.10 | [`4d31eef5176d`](https://git.kernel.org/torvalds/c/4d31eef5176d) | [net] | netfilter: x_tables: pass xt_counters struct instead of packet counter |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-742 |
| CANDIDATE | 4.10 | [`f28e15bacedd`](https://git.kernel.org/torvalds/c/f28e15bacedd) | [net] | netfilter: x_tables: pass xt_counters struct to counter allocator |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-742 |
| CANDIDATE | 4.10 | [`b15ca182ed13`](https://git.kernel.org/torvalds/c/b15ca182ed13) | [net] | netlink: Add nla_memdup() to wrap kmemdup() use on nlattr |  | generic code, tag [net] | 3.10.0-668 |
| CANDIDATE | 4.10 | [`89c4b442b78b`](https://git.kernel.org/torvalds/c/89c4b442b78b) | [net] | netpoll: more efficient locking |  | generic code, tag [net] | 3.10.0-717 |
| CANDIDATE | 4.10 | [`d8d263541913`](https://git.kernel.org/torvalds/c/d8d263541913) | [net] | ptp: Introduce a high resolution frequency adjustment method |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.10 | [`84c46dd86538`](https://git.kernel.org/torvalds/c/84c46dd86538) | [net] | qdisc: catch misconfig of attaching qdisc to tx_queue_len zero device |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.10 | [`39384f04d03e`](https://git.kernel.org/torvalds/c/39384f04d03e) | [net] | rds_rdma: log the connection reject message |  | generic code, tag [net] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`6234f87407cb`](https://git.kernel.org/torvalds/c/6234f87407cb) (loose) | [net] | Refactor removal of queues from XPS map and apply on num_tc changes |  | generic code, tag [net] | 3.10.0-1015 |
| CANDIDATE | 4.10 | [`8b1efc0f83f1`](https://git.kernel.org/torvalds/c/8b1efc0f83f1) (loose) | [net] | remove MTU limits on a few ether_setup callers |  | generic code, tag [net] | 3.10.0-829 |
| CANDIDATE | 4.10 | [`a0e65de71527`](https://git.kernel.org/torvalds/c/a0e65de71527) (loose) | [net] | report right mtu value in error message |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 4.10 | [`343dfaa198e9`](https://git.kernel.org/torvalds/c/343dfaa198e9) | [net] | revert "dctcp: update cwnd on congestion event" |  | generic code, tag [net] | 3.10.0-567 |
| CANDIDATE | 4.10 | [`4775cc1f2d5a`](https://git.kernel.org/torvalds/c/4775cc1f2d5a) | [net] | rtnl: stats - add missing netlink message size checks |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | 4.10 | [`73e42ff72a86`](https://git.kernel.org/torvalds/c/73e42ff72a86) | [net] | sch_htb: do not report fake rate estimators |  | CONFIG_NET_SCH_HTB=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.10 | [`d7426c69a194`](https://git.kernel.org/torvalds/c/d7426c69a194) | [net] | sit: fix a double free on error path |  | CONFIG_IPV6_SIT=y in A37 | 3.10.0-613 |
| CANDIDATE | 4.10 | [`3174fed9820e`](https://git.kernel.org/torvalds/c/3174fed9820e) (loose) | [net] | skb_condense() can also deal with empty skbs |  | generic code, tag [net] | 3.10.0-755 |
| CANDIDATE | 4.10 | [`4fe77d82ef80`](https://git.kernel.org/torvalds/c/4fe77d82ef80) | [net] | skbedit: allow the user to specify bitmask for mark |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.10 | [`f41cd11d64b2`](https://git.kernel.org/torvalds/c/f41cd11d64b2) | [net] | tc_act: Remove tcf_act macro |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.10 | [`319b0534b958`](https://git.kernel.org/torvalds/c/319b0534b958) | [net] | tcp: allow to enable the repair mode for non-listening sockets |  | generic code, tag [net] | 3.10.0-558 |
| CANDIDATE | 4.10 | [`92e55f412cff`](https://git.kernel.org/torvalds/c/92e55f412cff) | [net] | tcp: don't annotate mark on control socket from tcp_v6_send_response() |  | generic code, tag [net] | 3.10.0-717 |
| CANDIDATE | 4.10 | [`bf99b4ded5f8`](https://git.kernel.org/torvalds/c/bf99b4ded5f8) | [net] | tcp: fix mark propagation with fwmark_reflect enabled |  | generic code, tag [net] | 3.10.0-717 |
| CANDIDATE | 4.10 | [`363dc73acacb`](https://git.kernel.org/torvalds/c/363dc73acacb) | [net] | udp: be less conservative with sock rmem accounting |  | generic code, tag [net] | 3.10.0-599 |
| CANDIDATE | 4.10 | [`7c13f97ffde6`](https://git.kernel.org/torvalds/c/7c13f97ffde6) | [net] | udp: do fwd memory scheduling on dequeue |  | generic code, tag [net] | 3.10.0-599 |
| CANDIDATE | 4.10 | [`f970bd9e3a06`](https://git.kernel.org/torvalds/c/f970bd9e3a06) | [net] | udp: implement memory accounting helpers |  | generic code, tag [net] | 3.10.0-599 |
| CANDIDATE | 4.10 | [`69629464e0b5`](https://git.kernel.org/torvalds/c/69629464e0b5) | [net] | udp: properly cope with csum errors |  | generic code, tag [net] | 3.10.0-599 |
| CANDIDATE | 4.10 | [`c8c8b127091b`](https://git.kernel.org/torvalds/c/c8c8b127091b) | [net] | udp: under rx pressure, try to condense skbs |  | generic code, tag [net] | 3.10.0-755 |
| CANDIDATE | 4.10 | [`850cbaddb52d`](https://git.kernel.org/torvalds/c/850cbaddb52d) | [net] | udp: use it's own memory accounting schema |  | generic code, tag [net] | 3.10.0-599 |
| CANDIDATE | 4.10 | [`c915fe13cbaa`](https://git.kernel.org/torvalds/c/c915fe13cbaa) | [net] | udplite: fix NULL pointer dereference |  | generic code, tag [net] | 3.10.0-599 |
| CANDIDATE | 4.11 | [`63fca65d0863`](https://git.kernel.org/torvalds/c/63fca65d0863) (loose) | [net] | add confirm_neigh method to dst_ops |  | generic code, tag [net] | 3.10.0-678 |
| CANDIDATE | 4.11 | [`4ff0620354f2`](https://git.kernel.org/torvalds/c/4ff0620354f2) (loose) | [net] | add dst_pending_confirm flag to skbuff |  | generic code, tag [net] | 3.10.0-678 |
| CANDIDATE | 4.11 | [`8fe809a99263`](https://git.kernel.org/torvalds/c/8fe809a99263) (loose) | [net] | add LINUX_MIB_PFMEMALLOCDROP counter |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.11 | [`c21b48cc1bbf`](https://git.kernel.org/torvalds/c/c21b48cc1bbf) (loose) | [net] | adjust skb->truesize in ___pskb_trim() |  | generic code, tag [net] | 3.10.0-755 |
| CANDIDATE | 4.11 | [`62bc306e2083`](https://git.kernel.org/torvalds/c/62bc306e2083) | [net] | audit: log 32-bit socketcalls |  | CONFIG_AUDIT=y in A37 | 3.10.0-568 |
| CANDIDATE | 4.11 | [`74451e66d516`](https://git.kernel.org/torvalds/c/74451e66d516) | [net] | bpf: make jited programs visible in traces |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-968 |
| CANDIDATE | 4.11 | [`8953de2f02ad`](https://git.kernel.org/torvalds/c/8953de2f02ad) (loose) | [net] | bridge: allow IPv6 when multicast flood is disabled |  | CONFIG_BRIDGE=y in A37 | 3.10.0-689 |
| CANDIDATE | 4.11 | [`ca6d4480f87d`](https://git.kernel.org/torvalds/c/ca6d4480f87d) | [net] | bridge: avoid unnecessary read of jiffies |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`eda7a5e88d95`](https://git.kernel.org/torvalds/c/eda7a5e88d95) | [net] | bridge: don't indicate expiry on NTF_EXT_LEARNED fdb entries |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`a13b2082ece9`](https://git.kernel.org/torvalds/c/a13b2082ece9) | [net] | bridge: drop netfilter fake rtable unconditionally |  | CONFIG_BRIDGE=y in A37 | 3.10.0-622 |
| CANDIDATE | 4.11 | [`410b3d48f511`](https://git.kernel.org/torvalds/c/410b3d48f511) | [net] | bridge: fdb: add proper lock checks in searching functions |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`bfd0aeac52f7`](https://git.kernel.org/torvalds/c/bfd0aeac52f7) | [net] | bridge: fdb: converge fdb searching functions into one |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`5019ab50f26c`](https://git.kernel.org/torvalds/c/5019ab50f26c) | [net] | bridge: fdb: converge fdb_delete_by functions into one |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`83a718d62949`](https://git.kernel.org/torvalds/c/83a718d62949) | [net] | bridge: fdb: write to used and updated at most once per jiffy |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`df2c43343b47`](https://git.kernel.org/torvalds/c/df2c43343b47) | [net] | bridge: Fix error path in nbp_vlan_init |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`b6fe0440c637`](https://git.kernel.org/torvalds/c/b6fe0440c637) | [net] | bridge: implement missing ndo_uninit() |  | CONFIG_BRIDGE=y in A37 | 3.10.0-664 |
| CANDIDATE | 4.11 | [`f12e7d95d12f`](https://git.kernel.org/torvalds/c/f12e7d95d12f) | [net] | bridge: mcast: Merge the mc router ports deletions to one function |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`1f90c7f34705`](https://git.kernel.org/torvalds/c/1f90c7f34705) | [net] | bridge: modify bridge and port to have often accessed fields in one cache line |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`b1b9d366028f`](https://git.kernel.org/torvalds/c/b1b9d366028f) | [net] | bridge: move bridge multicast cleanup to ndo_uninit |  | CONFIG_BRIDGE=y in A37 | 3.10.0-664 |
| CANDIDATE | 4.11 | [`5b9d6b154a62`](https://git.kernel.org/torvalds/c/5b9d6b154a62) | [net] | bridge: move maybe_deliver_addr() inside #ifdef |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`f7cdee8a79a1`](https://git.kernel.org/torvalds/c/f7cdee8a79a1) | [net] | bridge: move to workqueue gc |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`1214628cb186`](https://git.kernel.org/torvalds/c/1214628cb186) | [net] | bridge: move write-heavy fdb members in their own cache line |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`6db6f0eae605`](https://git.kernel.org/torvalds/c/6db6f0eae605) | [net] | bridge: multicast to unicast |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`5b8d5429daa0`](https://git.kernel.org/torvalds/c/5b8d5429daa0) | [net] | bridge: netlink: register netdevice before executing changelink |  | CONFIG_BRIDGE=y in A37 | 3.10.0-664 |
| CANDIDATE | 4.11 | [`efa5356b0d97`](https://git.kernel.org/torvalds/c/efa5356b0d97) | [net] | bridge: per vlan dst_metadata netlink support |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`1f02b5f42f53`](https://git.kernel.org/torvalds/c/1f02b5f42f53) (loose) | [net] | bridge: remove redundant check to see if err is set |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`a8cab863a75f`](https://git.kernel.org/torvalds/c/a8cab863a75f) | [net] | bridge: remove unnecessary check for vtbegin in br_fill_vlan_tinfo_range |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`d12c917691b4`](https://git.kernel.org/torvalds/c/d12c917691b4) | [net] | bridge: resolve a false alarm of lockdep |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`53631a5f9c66`](https://git.kernel.org/torvalds/c/53631a5f9c66) | [net] | bridge: sparse fixes in br_ip6_multicast_alloc_query() |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`bb580ad698ae`](https://git.kernel.org/torvalds/c/bb580ad698ae) | [net] | bridge: tunnel: fix attribute checks in br_parse_vlan_tunnel_info |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`b3c7ef0adadc`](https://git.kernel.org/torvalds/c/b3c7ef0adadc) | [net] | bridge: uapi: add per vlan tunnel info |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`11538d039ac6`](https://git.kernel.org/torvalds/c/11538d039ac6) | [net] | bridge: vlan dst_metadata hooks in ingress and egress paths |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`8ef959476461`](https://git.kernel.org/torvalds/c/8ef959476461) | [net] | bridge: vlan tunnel id info range fill size calc cleanups |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`afcb50ba7f74`](https://git.kernel.org/torvalds/c/afcb50ba7f74) | [net] | bridge: vlan_tunnel: explicitly reset metadata attrs to NULL on failure |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.11 | [`b3ef5520c1ea`](https://git.kernel.org/torvalds/c/b3ef5520c1ea) | [net] | cfg80211: check rdev resume callback only for registered wiphy |  | CONFIG_CFG80211=y in A37 | 3.10.0-671 |
| CANDIDATE | 4.11 | [`58fa118f3de4`](https://git.kernel.org/torvalds/c/58fa118f3de4) | [net] | cls_u32: don't bother explicitly initializing ->divisor to zero |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.11 | [`3d48b53fb2ae`](https://git.kernel.org/torvalds/c/3d48b53fb2ae) (loose) | [net] | dev_weight: TX/RX orthogonality |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.11 | [`f991bb9da142`](https://git.kernel.org/torvalds/c/f991bb9da142) (loose) | [net] | Drop secpath on free after gro merge |  | generic code, tag [net] | 3.10.0-755 |
| CANDIDATE | 4.11 | [`4d1ceea8516c`](https://git.kernel.org/torvalds/c/4d1ceea8516c) (loose) | [net] | ethtool: convert large order kmalloc allocations to vzalloc |  | generic code, tag [net] | 3.10.0-1134 |
| CANDIDATE | 4.11 | [`7ba91ecb1682`](https://git.kernel.org/torvalds/c/7ba91ecb1682) (loose) | [net] | for rate-limited ICMP replies save one atomic operation |  | generic code, tag [net] | 3.10.0-647 |
| CANDIDATE | 4.11 | [`264b87fa617e`](https://git.kernel.org/torvalds/c/264b87fa617e) | [net] | fq_codel: Avoid regenerating skb flow hash unless necessary |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.11 | [`1d2a6a5e4bf2`](https://git.kernel.org/torvalds/c/1d2a6a5e4bf2) | [net] | genetlink: fix counting regression on ctrl_dumpfamily() |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 4.11 | [`43170c4e0ba7`](https://git.kernel.org/torvalds/c/43170c4e0ba7) | [net] | gso: Validate assumption of frag_list segementation |  | generic code, tag [net] | 3.10.0-703 |
| CANDIDATE | 4.11 | [`d43dbacfc063`](https://git.kernel.org/torvalds/c/d43dbacfc063) | [net] | ib/core: Change the type of an ib_dma_alloc_coherent() argument |  | generic code, tag [net] | 3.10.0-722 |
| CANDIDATE | 4.11 | [`f617f27653c4`](https://git.kernel.org/torvalds/c/f617f27653c4) (loose) | [net] | implement netif_cond_dbg macro |  | generic code, tag [net] | 3.10.0-598 |
| CANDIDATE | 4.11 | [`1ce8460496c0`](https://git.kernel.org/torvalds/c/1ce8460496c0) (loose) | [net] | Introduce ife encapsulation module |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.11 | [`6ae0a6286171`](https://git.kernel.org/torvalds/c/6ae0a6286171) (loose) | [net] | Introduce psample, a new genetlink channel for packet sampling |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.11 | [`f35581d64e55`](https://git.kernel.org/torvalds/c/f35581d64e55) | [net] | ip_tunnels: new IP_TUNNEL_INFO_BRIDGE flag for ip_tunnel_info mode |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.11 | [`8fb472c09b9d`](https://git.kernel.org/torvalds/c/8fb472c09b9d) | [net] | ipmr: improve hash scalability |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.11 | [`2f3a5272e5c1`](https://git.kernel.org/torvalds/c/2f3a5272e5c1) | [net] | ipv4: fib: Add events for FIB replace and append |  | generic code, tag [net] | 3.10.0-651 |
| CANDIDATE | 4.11 | [`982acb97560c`](https://git.kernel.org/torvalds/c/982acb97560c) | [net] | ipv4: fib: Notify about nexthop status changes |  | generic code, tag [net] | 3.10.0-647 |
| CANDIDATE | 4.11 | [`58e3bdd59742`](https://git.kernel.org/torvalds/c/58e3bdd59742) | [net] | ipv4: fib: Only flush FIB aliases belonging to currently flushed table |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.11 | [`42d5aa76ec8f`](https://git.kernel.org/torvalds/c/42d5aa76ec8f) | [net] | ipv4: fib: Send deletion notification with actual FIB alias type |  | generic code, tag [net] | 3.10.0-647 |
| CANDIDATE | 4.11 | [`5b7d616dbccc`](https://git.kernel.org/torvalds/c/5b7d616dbccc) | [net] | ipv4: fib: Send notification before deleting FIB alias |  | generic code, tag [net] | 3.10.0-647 |
| CANDIDATE | 4.11 | [`99253eb750fd`](https://git.kernel.org/torvalds/c/99253eb750fd) | [net] | ipv6: check sk sk_type and protocol early in ip_mroute_set/getsockopt |  | generic code, tag [net] | 3.10.0-702 |
| CANDIDATE | 4.11 | [`199ab00f3cdb`](https://git.kernel.org/torvalds/c/199ab00f3cdb) | [net] | ipv6: check skb->protocol before lookup for nexthop |  | generic code, tag [net] | 3.10.0-969 |
| CANDIDATE | 4.11 | [`a2d6cbb0670d`](https://git.kernel.org/torvalds/c/a2d6cbb0670d) | [net] | ipv6: Fix idev->addr_list corruption |  | generic code, tag [net] | 3.10.0-906 |
| CANDIDATE | 4.11 | [`67e194007be0`](https://git.kernel.org/torvalds/c/67e194007be0) | [net] | ipv6: make ECMP route replacement less greedy |  | generic code, tag [net] | 3.10.0-638 |
| CANDIDATE | 4.11 | [`48cac18ecf1d`](https://git.kernel.org/torvalds/c/48cac18ecf1d) | [net] | ipv6: orphan skbs in reassembly unit |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 4.11 | [`8048ced9beb2`](https://git.kernel.org/torvalds/c/8048ced9beb2) (loose) | [net] | ipv6: regenerate host route if moved to gc list |  | generic code, tag [net] | 3.10.0-906 |
| CANDIDATE | 4.11 | [`15e668070a64`](https://git.kernel.org/torvalds/c/15e668070a64) | [net] | ipv6: reorder icmpv6_init() and ip6_mr_init() |  | generic code, tag [net] | 3.10.0-944 |
| CANDIDATE | 4.11 | [`557c44be917c`](https://git.kernel.org/torvalds/c/557c44be917c) (loose) | [net] | ipv6: RTF_PCPU should not be settable from userspace |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.11 | [`fc1f8f4f310a`](https://git.kernel.org/torvalds/c/fc1f8f4f310a) (loose) | [net] | ipv6: send unsolicited NA if enabled for all interfaces |  | generic code, tag [net] | 3.10.0-937 |
| CANDIDATE | 4.11 | [`12d656af4e3d`](https://git.kernel.org/torvalds/c/12d656af4e3d) | [net] | l2tp: Avoid schedule while atomic in exit_net |  | CONFIG_L2TP=y in A37 | 3.10.0-622 |
| CANDIDATE | 4.11 | [`321a52a39189`](https://git.kernel.org/torvalds/c/321a52a39189) | [net] | l2tp: don't mask errors in pppol2tp_getsockopt() |  | CONFIG_L2TP=y in A37 | 3.10.0-1096 |
| CANDIDATE | 4.11 | [`364700cf8fd5`](https://git.kernel.org/torvalds/c/364700cf8fd5) | [net] | l2tp: don't mask errors in pppol2tp_setsockopt() |  | CONFIG_L2TP=y in A37 | 3.10.0-1096 |
| CANDIDATE | 4.11 | [`dbdbc73b4478`](https://git.kernel.org/torvalds/c/dbdbc73b4478) | [net] | l2tp: fix duplicate session creation |  | CONFIG_L2TP=y in A37 | 3.10.0-745 |
| CANDIDATE | 4.11 | [`61b9a047729b`](https://git.kernel.org/torvalds/c/61b9a047729b) | [net] | l2tp: fix race in l2tp_recv_common() |  | CONFIG_L2TP=y in A37 | 3.10.0-745 |
| CANDIDATE | 4.11 | [`94d7ee0baa8b`](https://git.kernel.org/torvalds/c/94d7ee0baa8b) | [net] | l2tp: hold tunnel socket when handling control frames in l2tp_ip and l2tp_ip6 | CVE-2016-10200 | CONFIG_L2TP=y in A37 | 3.10.0-678 |
| CANDIDATE | 4.11 | [`2c935bc57221`](https://git.kernel.org/torvalds/c/2c935bc57221) | [net] | locking/atomic, kref: Add kref_read() |  | generic code, tag [net] | 3.10.0-785 |
| CANDIDATE | 4.11 | [`4d6fa57b4dab`](https://git.kernel.org/torvalds/c/4d6fa57b4dab) | [net] | macsec: avoid heap overflow in skb_to_sgvec | CVE-2017-7477 | generic code, tag [net] | 3.10.0-664 |
| CANDIDATE | 4.11 | [`5294b83086cc`](https://git.kernel.org/torvalds/c/5294b83086cc) | [net] | macsec: dynamically allocate space for sglist | CVE-2017-7477 | generic code, tag [net] | 3.10.0-664 |
| CANDIDATE | 4.11 | [`b3bdc3acbb44`](https://git.kernel.org/torvalds/c/b3bdc3acbb44) | [net] | macsec: fix validation failed in asynchronous operation. |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.11 | [`bc1f44709cf2`](https://git.kernel.org/torvalds/c/bc1f44709cf2) (loose) | [net] | make ndo_get_stats64 a void function |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 4.11 | [`559c59b238eb`](https://git.kernel.org/torvalds/c/559c59b238eb) (loose) | [net] | napi_watchdog() can use napi_schedule_irqoff() |  | generic code, tag [net] | 3.10.0-717 |
| CANDIDATE | 4.11 | [`92f9170621a1`](https://git.kernel.org/torvalds/c/92f9170621a1) | [net] | net_sched: check noop_qdisc before qdisc_hash_add() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.11 | [`87b60cfacf9f`](https://git.kernel.org/torvalds/c/87b60cfacf9f) | [net] | net_sched: fix error recovery at qdisc creation |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.11 | [`c74454fadd5e`](https://git.kernel.org/torvalds/c/c74454fadd5e) | [net] | netfilter: add and use nf_ct_set helper |  | CONFIG_NETFILTER=y in A37 | 3.10.0-703 |
| CANDIDATE | 4.11 | [`2851940ffee3`](https://git.kernel.org/torvalds/c/2851940ffee3) | [net] | netfilter: allow logging from non-init namespaces |  | CONFIG_NETFILTER=y in A37 | 3.10.0-770 |
| CANDIDATE | 4.11 | [`4ca60d08cbe6`](https://git.kernel.org/torvalds/c/4ca60d08cbe6) | [net] | netfilter: bridge: honor frag_max_size when refragmenting |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-622 |
| CANDIDATE | 4.11 | [`11df4b760f11`](https://git.kernel.org/torvalds/c/11df4b760f11) | [net] | netfilter: conntrack: no need to pass ctinfo to error handler |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-703 |
| CANDIDATE | 4.11 | [`cf6e007eef83`](https://git.kernel.org/torvalds/c/cf6e007eef83) | [net] | netfilter: conntrack: validate SCTP crc32c in PREROUTING |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-590 |
| CANDIDATE | 4.11 | [`a963d710f367`](https://git.kernel.org/torvalds/c/a963d710f367) | [net] | netfilter: ctnetlink: Fix regression in CTA_STATUS processing |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.11 | [`e4781421e883`](https://git.kernel.org/torvalds/c/e4781421e883) | [net] | netfilter: merge udp and udplite conntrack helpers |  | CONFIG_NETFILTER=y in A37 | 3.10.0-692 |
| CANDIDATE | 4.11 | [`9700ba805b4f`](https://git.kernel.org/torvalds/c/9700ba805b4f) | [net] | netfilter: nat: merge udp and udplite helpers |  | CONFIG_NF_NAT=y in A37 | 3.10.0-692 |
| CANDIDATE | 4.11 | [`da2f27e9e615`](https://git.kernel.org/torvalds/c/da2f27e9e615) | [net] | netfilter: nf_conntrack_sip: fix wrong memory initialisation |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1053 |
| CANDIDATE | 4.11 | [`8e05ba7f8484`](https://git.kernel.org/torvalds/c/8e05ba7f8484) | [net] | netfilter: nf_nat_sctp: fix ICMP packet to be dropped accidently |  | CONFIG_NF_NAT=y in A37 | 3.10.0-871 |
| CANDIDATE | 4.11 | [`97a6ad13decc`](https://git.kernel.org/torvalds/c/97a6ad13decc) | [net] | netfilter: reduce direct skb->nfct usage |  | CONFIG_NETFILTER=y in A37 | 3.10.0-703 |
| CANDIDATE | 4.11 | [`6e10148c5c85`](https://git.kernel.org/torvalds/c/6e10148c5c85) | [net] | netfilter: reset netfilter state when duplicating packet |  | CONFIG_NETFILTER=y in A37 | 3.10.0-703 |
| CANDIDATE | 4.11 | [`300ae149468f`](https://git.kernel.org/torvalds/c/300ae149468f) | [net] | netfilter: select LIBCRC32C together with SCTP conntrack |  | CONFIG_NETFILTER=y in A37 | 3.10.0-590 |
| CANDIDATE | 4.11 | [`29e09229d9f2`](https://git.kernel.org/torvalds/c/29e09229d9f2) | [net] | netfilter: use skb_to_full_sk in ip_route_me_harder |  | CONFIG_NETFILTER=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.11 | [`ea90e0dc8cec`](https://git.kernel.org/torvalds/c/ea90e0dc8cec) | [net] | nl80211: fix dumpit error path RTNL deadlocks |  | CONFIG_CFG80211=y in A37 | 3.10.0-671 |
| CANDIDATE | 4.11 | [`51ce8bd4d17a`](https://git.kernel.org/torvalds/c/51ce8bd4d17a) (loose) | [net] | pending_confirm is not used anymore |  | generic code, tag [net] | 3.10.0-678 |
| CANDIDATE | 4.11 | [`806a83765050`](https://git.kernel.org/torvalds/c/806a83765050) | [net] | pkt_sched: Remove useless qdisc_stab_lock |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.11 | [`e71695307114`](https://git.kernel.org/torvalds/c/e71695307114) | [net] | ptr_ring: fix race conditions when resizing |  | generic code, tag [net] | 3.10.0-656 |
| CANDIDATE | 4.11 | [`c0303efeab73`](https://git.kernel.org/torvalds/c/c0303efeab73) (loose) | [net] | reduce cycles spend on ICMP replies that gets rate limited |  | generic code, tag [net] | 3.10.0-647 |
| CANDIDATE | 4.11 | [`02c1602ee7b3`](https://git.kernel.org/torvalds/c/02c1602ee7b3) (loose) | [net] | remove __napi_complete() |  | generic code, tag [net] | 3.10.0-717 |
| CANDIDATE | 4.11 | [`4a7c972644c1`](https://git.kernel.org/torvalds/c/4a7c972644c1) (loose) | [net] | Remove usage of net_device last_rx member |  | generic code, tag [net] | 3.10.0-709 |
| CANDIDATE | 4.11 | [`3b45a4106f14`](https://git.kernel.org/torvalds/c/3b45a4106f14) (loose) | [net] | route: add missing nla_policy entry for RTA_MARK attribute |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.11 | [`7215032ced14`](https://git.kernel.org/torvalds/c/7215032ced14) | [net] | sched: add missing curly braces in else branch in tc_ctl_tfilter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.11 | [`40c81b25b16c`](https://git.kernel.org/torvalds/c/40c81b25b16c) | [net] | sched: check negative err value to safe one level of indent |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.11 | [`d7cf52c249d7`](https://git.kernel.org/torvalds/c/d7cf52c249d7) | [net] | sched: Fix accidental removal of errout goto |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.11 | [`8ae70032552a`](https://git.kernel.org/torvalds/c/8ae70032552a) | [net] | sched: have stub for tcf_destroy_chain in case NET_CLS is not configured |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.11 | [`6bb16e7ae260`](https://git.kernel.org/torvalds/c/6bb16e7ae260) | [net] | sched: move err set right before goto errout in tc_ctl_tfilter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.11 | [`cf1facda2f61`](https://git.kernel.org/torvalds/c/cf1facda2f61) | [net] | sched: move tcf_proto_destroy and tcf_destroy_chain helpers into cls_api |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.11 | [`33a48927c193`](https://git.kernel.org/torvalds/c/33a48927c193) | [net] | sched: push TC filter protocol creation into a separate function |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.11 | [`79112c26f14c`](https://git.kernel.org/torvalds/c/79112c26f14c) | [net] | sched: rename tcf_destroy to tcf_destroy_proto |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.11 | [`cb9c68363efb`](https://git.kernel.org/torvalds/c/cb9c68363efb) | [net] | skbuff: add and use skb_nfct helper |  | generic code, tag [net] | 3.10.0-703 |
| CANDIDATE | 4.11 | [`9b8805a32559`](https://git.kernel.org/torvalds/c/9b8805a32559) | [net] | sock: add sk_dst_pending_confirm flag |  | generic code, tag [net] | 3.10.0-678 |
| CANDIDATE | 4.11 | [`39e6c8208d7b`](https://git.kernel.org/torvalds/c/39e6c8208d7b) (loose) | [net] | solve a NAPI race |  | generic code, tag [net] | 3.10.0-717 |
| CANDIDATE | 4.11 | [`eee2faabc63d`](https://git.kernel.org/torvalds/c/eee2faabc63d) | [net] | tcp: account for ts offset only if tsecr not zero |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.11 | [`7162fb242cb8`](https://git.kernel.org/torvalds/c/7162fb242cb8) | [net] | tcp: do not underestimate skb->truesize in tcp_trim_head() |  | generic code, tag [net] | 3.10.0-755 |
| CANDIDATE | 4.11 | [`8605330aac5a`](https://git.kernel.org/torvalds/c/8605330aac5a) | [net] | tcp: fix SCM_TIMESTAMPING_OPT_STATS for normal skbs |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 4.11 | [`0b9aefea8600`](https://git.kernel.org/torvalds/c/0b9aefea8600) | [net] | tcp: minimize false-positives on TCP/GRO check |  | generic code, tag [net] | 3.10.0-656 |
| CANDIDATE | 4.11 | [`c3a2e8370534`](https://git.kernel.org/torvalds/c/c3a2e8370534) | [net] | tcp: replace dst_confirm with sk_dst_confirm |  | generic code, tag [net] | 3.10.0-678 |
| CANDIDATE | 4.11 | [`4b3b45edba92`](https://git.kernel.org/torvalds/c/4b3b45edba92) | [net] | udp: avoid ufo handling on IP payload compression packets |  | generic code, tag [net] | 3.10.0-703 |
| CANDIDATE | 4.11 | [`b40c5f4fde22`](https://git.kernel.org/torvalds/c/b40c5f4fde22) | [net] | udp: disable inner UDP checksum offloads in IPsec case |  | generic code, tag [net] | 3.10.0-1144 |
| CANDIDATE | 4.11 | [`df560056d960`](https://git.kernel.org/torvalds/c/df560056d960) | [net] | udp: inuse checks can quit early for reuseport |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 4.11 | [`0dec879f636f`](https://git.kernel.org/torvalds/c/0dec879f636f) (loose) | [net] | use dst_confirm_neigh for UDP, RAW, ICMP, L2TP |  | generic code, tag [net] | 3.10.0-678 |
| CANDIDATE | 4.11 | [`e3dc847a5f85`](https://git.kernel.org/torvalds/c/e3dc847a5f85) | [net] | vti6: Don't report path MTU below IPV6_MIN_MTU. |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.11 | [`4c86d77743a5`](https://git.kernel.org/torvalds/c/4c86d77743a5) | [net] | xfrm: Don't use sk_family for socket policy lookups |  | CONFIG_XFRM=y in A37 | 3.10.0-927 |
| CANDIDATE | 4.11 | [`c282222a45cb`](https://git.kernel.org/torvalds/c/c282222a45cb) | [net] | xfrm: policy: init locks early |  | CONFIG_XFRM=y in A37 | 3.10.0-983 |
| CANDIDATE | 4.11 | [`1ecc9ad02c3d`](https://git.kernel.org/torvalds/c/1ecc9ad02c3d) | [net] | xfrm: provide correct dst in xfrm_neigh_lookup |  | CONFIG_XFRM=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.12 | [`282ccf6efb7c`](https://git.kernel.org/torvalds/c/282ccf6efb7c) (loose) | [net] | add explicit interrupt.h includes |  | generic code, tag [net] | 3.10.0-785 |
| CANDIDATE | 4.12 | [`7d472a59c0e5`](https://git.kernel.org/torvalds/c/7d472a59c0e5) | [net] | arp: always override existing neigh entries with gratuitous ARP |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.12 | [`6fd05633bdaf`](https://git.kernel.org/torvalds/c/6fd05633bdaf) | [net] | arp: decompose is_garp logic into a separate function |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.12 | [`5990baaa6d7b`](https://git.kernel.org/torvalds/c/5990baaa6d7b) | [net] | arp: fixed -Wuninitialized compiler warning |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.12 | [`34eb5fe07831`](https://git.kernel.org/torvalds/c/34eb5fe07831) | [net] | arp: fixed error in a comment |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.12 | [`23d268eb2409`](https://git.kernel.org/torvalds/c/23d268eb2409) | [net] | arp: honour gratuitous ARP _replies_ |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.12 | [`d9ef2e7bf99f`](https://git.kernel.org/torvalds/c/d9ef2e7bf99f) | [net] | arp: postpone addr_type calculation to as late as possible |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.12 | [`2173c519d5e9`](https://git.kernel.org/torvalds/c/2173c519d5e9) | [net] | audit: normalize NETFILTER_PKT |  | CONFIG_AUDIT=y in A37 | 3.10.0-656 |
| CANDIDATE | 4.12 | [`586f8525979a`](https://git.kernel.org/torvalds/c/586f8525979a) | [net] | bpf: Align packet data properly in program testing framework |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-939 |
| CANDIDATE | 4.12 | [`78e5227237ca`](https://git.kernel.org/torvalds/c/78e5227237ca) | [net] | bpf: Do not dereference user pointer in bpf_test_finish() |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-939 |
| CANDIDATE | 4.12 | [`1cf1cae963c2`](https://git.kernel.org/torvalds/c/1cf1cae963c2) | [net] | bpf: introduce BPF_PROG_TEST_RUN command |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.12 | [`99f906e9ad7b`](https://git.kernel.org/torvalds/c/99f906e9ad7b) | [net] | bridge: add per-port broadcast flood flag |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.12 | [`7e26bf45e4cb`](https://git.kernel.org/torvalds/c/7e26bf45e4cb) (loose) | [net] | bridge: allow SW learn to take over HW fdb entries |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.12 | [`eb100e0e24a2`](https://git.kernel.org/torvalds/c/eb100e0e24a2) (loose) | [net] | bridge: allow to add externally learned entries from user-space |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.12 | [`1020ce3108cc`](https://git.kernel.org/torvalds/c/1020ce3108cc) (loose) | [net] | bridge: fix a null pointer dereference in br_afspec |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.12 | [`58073b32b0f7`](https://git.kernel.org/torvalds/c/58073b32b0f7) (loose) | [net] | bridge: Fix improper taking over HW learned FDB |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.12 | [`9051247dcf9e`](https://git.kernel.org/torvalds/c/9051247dcf9e) | [net] | bridge: netlink: account for IFLA_BRPORT_{B, M}CAST_FLOOD size and policy |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.12 | [`a285860211bf`](https://git.kernel.org/torvalds/c/a285860211bf) | [net] | bridge: netlink: check vlan_default_pvid range |  | CONFIG_BRIDGE=y in A37 | 3.10.0-702 |
| CANDIDATE | 4.12 | [`cab93af0ed6a`](https://git.kernel.org/torvalds/c/cab93af0ed6a) (loose) | [net] | bridge: notify on hw fdb takeover |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.12 | [`aeb073241fe7`](https://git.kernel.org/torvalds/c/aeb073241fe7) (loose) | [net] | bridge: start hello timer only if device is up |  | CONFIG_BRIDGE=y in A37 | 3.10.0-681 |
| CANDIDATE | 4.12 | [`6d18c732b95c`](https://git.kernel.org/torvalds/c/6d18c732b95c) | [net] | bridge: start hello_timer when enabling KERNEL_STP in br_stp_start |  | CONFIG_BRIDGE=y in A37 | 3.10.0-681 |
| CANDIDATE | 4.12 | [`545cd5e5ec54`](https://git.kernel.org/torvalds/c/545cd5e5ec54) (loose) | [net] | Busy polling should ignore sender CPUs |  | generic code, tag [net] | 3.10.0-717 |
| CANDIDATE | 4.12 | [`849a44de9163`](https://git.kernel.org/torvalds/c/849a44de9163) (loose) | [net] | don't global ICMP rate limit packets originating from loopback |  | generic code, tag [net] | 3.10.0-703 |
| CANDIDATE | 4.12 | [`abb521e36b92`](https://git.kernel.org/torvalds/c/abb521e36b92) | [net] | ethtool: add CRC32 as an RSS hash function |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | 4.12 | [`9142e9007f2d`](https://git.kernel.org/torvalds/c/9142e9007f2d) (loose) | [net] | fix compile error in skb_orphan_partial() |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.12 | [`cf124db566e6`](https://git.kernel.org/torvalds/c/cf124db566e6) (loose) | [net] | Fix inconsistent teardown and release of private netdev state |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | 4.12 | [`029c1ecbb242`](https://git.kernel.org/torvalds/c/029c1ecbb242) | [net] | flow_dissector: add mpls support (v2) |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | 4.12 | [`d5774b93f042`](https://git.kernel.org/torvalds/c/d5774b93f042) | [net] | flow_dissector: Fix GRE header error path |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | 4.12 | [`9bf881ffc5c0`](https://git.kernel.org/torvalds/c/9bf881ffc5c0) | [net] | flow_dissector: Move ARP dissection into a separate function |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | 4.12 | [`7c92de8eaabf`](https://git.kernel.org/torvalds/c/7c92de8eaabf) | [net] | flow_dissector: Move GRE dissection into a separate function |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | 4.12 | [`4a5d6c8b14b8`](https://git.kernel.org/torvalds/c/4a5d6c8b14b8) | [net] | flow_dissector: Move MPLS dissection into a separate function |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | 4.12 | [`c5ef188e9318`](https://git.kernel.org/torvalds/c/c5ef188e9318) | [net] | flow_dissector: rename "proto again" goto label |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | 4.12 | [`1a7fca63cd40`](https://git.kernel.org/torvalds/c/1a7fca63cd40) | [net] | flower: check unused bits in MPLS fields |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.12 | [`eaffadbbb3f2`](https://git.kernel.org/torvalds/c/eaffadbbb3f2) | [net] | gso: Support frag_list splitting with head_frag |  | generic code, tag [net] | 3.10.0-703 |
| CANDIDATE | 4.12 | [`e44699d2c280`](https://git.kernel.org/torvalds/c/e44699d2c280) (loose) | [net] | handle NAPI_GRO_FREE_STOLEN_HEAD case also in napi_frags_finish() |  | generic code, tag [net] | 3.10.0-755 |
| CANDIDATE | 4.12 | [`f1925ca50deb`](https://git.kernel.org/torvalds/c/f1925ca50deb) | [net] | ip6_tunnel: fix potential issue in __ip6_tnl_rcv |  | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | 4.12 | [`469f87e15862`](https://git.kernel.org/torvalds/c/469f87e15862) | [net] | ip_tunnel: fix potential issue in ip_tunnel_rcv |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.12 | [`3fb07daff8e9`](https://git.kernel.org/torvalds/c/3fb07daff8e9) | [net] | ipv4: add reference counting to metrics |  | generic code, tag [net] | 3.10.0-878 |
| CANDIDATE | 4.12 | [`bf4e0a3db97e`](https://git.kernel.org/torvalds/c/bf4e0a3db97e) (loose) | [net] | ipv4: add support for ECMP hash policy choice |  | generic code, tag [net] | 3.10.0-882 |
| CANDIDATE | 4.12 | [`c0243892cbb0`](https://git.kernel.org/torvalds/c/c0243892cbb0) | [net] | ipv4: fib: Move FIB notification code to a separate file |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.12 | [`d05f7a7dd470`](https://git.kernel.org/torvalds/c/d05f7a7dd470) | [net] | ipv4: fib: Remove redundant argument |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.12 | [`6a003a5ff294`](https://git.kernel.org/torvalds/c/6a003a5ff294) | [net] | ipv4: fib_rules: Add notifier info to FIB rules notifications |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.12 | [`3c71006d15fd`](https://git.kernel.org/torvalds/c/3c71006d15fd) | [net] | ipv4: fib_rules: Check if rule is a default rule |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.12 | [`5d7bfd141924`](https://git.kernel.org/torvalds/c/5d7bfd141924) | [net] | ipv4: fib_rules: Dump FIB rules when registering FIB notifier |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.12 | [`66eb9f86e505`](https://git.kernel.org/torvalds/c/66eb9f86e505) | [net] | ipv6: avoid dad-failures for addresses with NODAD |  | generic code, tag [net] | 3.10.0-937 |
| CANDIDATE | 4.12 | [`7dd7eb9513bd`](https://git.kernel.org/torvalds/c/7dd7eb9513bd) | [net] | ipv6: Check ip6_find_1stfragopt() return value properly | CVE-2017-9074 | generic code, tag [net] | 3.10.0-681 |
| CANDIDATE | 4.12 | [`6d717134a1a6`](https://git.kernel.org/torvalds/c/6d717134a1a6) (loose) | [net] | ipv6: Do not duplicate DAD on link up |  | generic code, tag [net] | 3.10.0-906 |
| CANDIDATE | 4.12 | [`f8a894b21813`](https://git.kernel.org/torvalds/c/f8a894b21813) | [net] | ipv6: fix calling in6_ifa_hold incorrectly for dad work |  | generic code, tag [net] | 3.10.0-702 |
| CANDIDATE | 4.12 | [`e3e86b5119f8`](https://git.kernel.org/torvalds/c/e3e86b5119f8) | [net] | ipv6: Fix leak in ipv6_gso_segment() | CVE-2017-9074 | generic code, tag [net] | 3.10.0-681 |
| CANDIDATE | 4.12 | [`2f460933f58e`](https://git.kernel.org/torvalds/c/2f460933f58e) | [net] | ipv6: initialize route null entry in addrconf_init() |  | generic code, tag [net] | 3.10.0-678 |
| CANDIDATE | 4.12 | [`76da0704507b`](https://git.kernel.org/torvalds/c/76da0704507b) | [net] | ipv6: only call ip6_route_dev_notify() once for NETDEV_UNREGISTER |  | generic code, tag [net] | 3.10.0-709 |
| CANDIDATE | 4.12 | [`242d3a49a2a1`](https://git.kernel.org/torvalds/c/242d3a49a2a1) | [net] | ipv6: reorder ip6_route_dev_notifier after ipv6_dev_notf |  | generic code, tag [net] | 3.10.0-678 |
| CANDIDATE | 4.12 | [`4a6e3c5def13`](https://git.kernel.org/torvalds/c/4a6e3c5def13) (loose) | [net] | ipv6: send unsolicited NA on admin up |  | generic code, tag [net] | 3.10.0-937 |
| CANDIDATE | 4.12 | [`6e80ac5cc992`](https://git.kernel.org/torvalds/c/6e80ac5cc992) | [net] | ipv6: xfrm: Handle errors reported by xfrm6_find_1stfragopt() | CVE-2017-9074 | generic code, tag [net] | 3.10.0-681 |
| CANDIDATE | 4.12 | [`9b3dc0a17d73`](https://git.kernel.org/torvalds/c/9b3dc0a17d73) | [net] | l2tp: cast l2tp traffic counter to unsigned |  | CONFIG_L2TP=y in A37 | 3.10.0-1096 |
| CANDIDATE | 4.12 | [`2026fecf516b`](https://git.kernel.org/torvalds/c/2026fecf516b) | [net] | mqprio: Change handling of hw u8 to allow for multiple hardware offload modes |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.12 | [`56f36acd215c`](https://git.kernel.org/torvalds/c/56f36acd215c) | [net] | mqprio: Modify mqprio to pass user parameters via ndo_setup_tc |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.12 | [`7b8f7a402d4c`](https://git.kernel.org/torvalds/c/7b8f7a402d4c) | [net] | neighbour: fix nlmsg_pid in notifications |  | generic code, tag [net] | 3.10.0-703 |
| CANDIDATE | 4.12 | [`77d7123342dc`](https://git.kernel.org/torvalds/c/77d7123342dc) | [net] | neighbour: update neigh timestamps iff update is effective |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.12 | [`74030603dfd9`](https://git.kernel.org/torvalds/c/74030603dfd9) | [net] | net_sched: move tcf_lock down after gen_replace_estimator() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.12 | [`763dbf6328e4`](https://git.kernel.org/torvalds/c/763dbf6328e4) | [net] | net_sched: move the empty tp check from ->destroy() to ->delete() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.12 | [`439205387971`](https://git.kernel.org/torvalds/c/439205387971) | [net] | net_sched: remove useless NULL to tp->root |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.12 | [`3b1af93cf193`](https://git.kernel.org/torvalds/c/3b1af93cf193) | [net] | net_sched: use setup_deferrable_timer |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.12 | [`5080f39e8c72`](https://git.kernel.org/torvalds/c/5080f39e8c72) | [net] | netem: apply correct delay when rate throttling |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.12 | [`f6ba8d33cfbb`](https://git.kernel.org/torvalds/c/f6ba8d33cfbb) | [net] | netem: fix skb_orphan_partial() |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.12 | [`f3c0eb05e258`](https://git.kernel.org/torvalds/c/f3c0eb05e258) | [net] | netfilter: conntrack: fix false CRC32c mismatch using paged skb |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-678 |
| CANDIDATE | 4.12 | [`14e567615679`](https://git.kernel.org/torvalds/c/14e567615679) | [net] | netfilter: ctnetlink: drop the incorrect cthelper module request |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.12 | [`88be4c09d900`](https://git.kernel.org/torvalds/c/88be4c09d900) | [net] | netfilter: ctnetlink: fix deadlock due to acquire _expect_lock twice |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.12 | [`fefa92679dbe`](https://git.kernel.org/torvalds/c/fefa92679dbe) | [net] | netfilter: ctnetlink: fix incorrect nf_ct_put during hash resize |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.12 | [`53b56da83d78`](https://git.kernel.org/torvalds/c/53b56da83d78) | [net] | netfilter: ctnetlink: make it safer when updating ct->status |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.12 | [`d91fc59cd77c`](https://git.kernel.org/torvalds/c/d91fc59cd77c) | [net] | netfilter: introduce nf_conntrack_helper_put helper function |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1053 |
| CANDIDATE | 4.12 | [`cc41c84b7e7f`](https://git.kernel.org/torvalds/c/cc41c84b7e7f) | [net] | netfilter: kill the fake untracked conntrack objects |  | CONFIG_NETFILTER=y in A37 | 3.10.0-703 |
| CANDIDATE | 4.12 | [`d4ef38354120`](https://git.kernel.org/torvalds/c/d4ef38354120) | [net] | netfilter: Remove exceptional & on function name |  | CONFIG_NETFILTER=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.12 | [`68ad546aefdd`](https://git.kernel.org/torvalds/c/68ad546aefdd) | [net] | netfilter: Remove unnecessary cast on void pointer |  | CONFIG_NETFILTER=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.12 | [`4f139972b489`](https://git.kernel.org/torvalds/c/4f139972b489) | [net] | netfilter: udplite: Remove duplicated udplite4/6 declaration |  | CONFIG_NETFILTER=y in A37 | 3.10.0-692 |
| CANDIDATE | 4.12 | [`0cb88b6ff054`](https://git.kernel.org/torvalds/c/0cb88b6ff054) | [net] | netfilter: use consistent ipv4 network offset in xt_AUDIT |  | CONFIG_NETFILTER=y in A37 | 3.10.0-656 |
| CANDIDATE | 4.12 | [`470acf55a021`](https://git.kernel.org/torvalds/c/470acf55a021) | [net] | netfilter: xt_CT: fix refcnt leak on error path |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-1053 |
| CANDIDATE | 4.12 | [`a88086e09876`](https://git.kernel.org/torvalds/c/a88086e09876) (loose) | [net] | off by one in inet6_pton() |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 4.12 | [`a7678c70ef62`](https://git.kernel.org/torvalds/c/a7678c70ef62) | [net] | rtnetlink: Add dump all for netconf |  | generic code, tag [net] | 3.10.0-969 |
| CANDIDATE | 4.12 | [`5138e86f1760`](https://git.kernel.org/torvalds/c/5138e86f1760) | [net] | rtnetlink: Convert rtnetlink_event to white list |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.12 | [`46ede612c7a3`](https://git.kernel.org/torvalds/c/46ede612c7a3) | [net] | rtnetlink: Do not generate notification for UDP_TUNNEL_PUSH_INFO |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.12 | [`cd8966e75ed3`](https://git.kernel.org/torvalds/c/cd8966e75ed3) | [net] | rtnetlink: Do not generate notifications for CHANGEADDR event |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.12 | [`aed073590970`](https://git.kernel.org/torvalds/c/aed073590970) | [net] | rtnetlink: Do not generate notifications for CHANGELOWERSTATE event |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.12 | [`085e1a65f04f`](https://git.kernel.org/torvalds/c/085e1a65f04f) | [net] | rtnetlink: Do not generate notifications for MTU events |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.12 | [`27b3b551d8a7`](https://git.kernel.org/torvalds/c/27b3b551d8a7) | [net] | rtnetlink: Do not generate notifications for NETDEV_CHANGE_TX_QUEUE_LEN event |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.12 | [`b6b36eb23a46`](https://git.kernel.org/torvalds/c/b6b36eb23a46) | [net] | rtnetlink: Do not generate notifications for NETDEV_CHANGEUPPER event |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.12 | [`aef091ae58aa`](https://git.kernel.org/torvalds/c/aef091ae58aa) | [net] | rtnetlink: Do not generate notifications for POST_TYPE_CHANGE event |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.12 | [`bf2c2984d3f4`](https://git.kernel.org/torvalds/c/bf2c2984d3f4) | [net] | rtnetlink: Do not generate notifications for PRECHANGEUPPER event |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.12 | [`def12888c161`](https://git.kernel.org/torvalds/c/def12888c161) | [net] | rtnl: Add support for netdev event to link messages |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.12 | [`9da3242e6a83`](https://git.kernel.org/torvalds/c/9da3242e6a83) (loose) | [net] | sched: add helpers to handle extended actions |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.12 | [`5952fde10c35`](https://git.kernel.org/torvalds/c/5952fde10c35) (loose) | [net] | sched: choke: remove dead filter classify code |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.12 | [`2c099ccbd093`](https://git.kernel.org/torvalds/c/2c099ccbd093) (loose) | [net] | sched: choke: remove some dead code |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.12 | [`c1a4872ebfb8`](https://git.kernel.org/torvalds/c/c1a4872ebfb8) (loose) | [net] | sched: Fix one possible panic when no destroy callback |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.12 | [`49b499718fa1`](https://git.kernel.org/torvalds/c/49b499718fa1) (loose) | [net] | sched: make default fifo qdiscs appear in the dump |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.12 | [`cb395b201087`](https://git.kernel.org/torvalds/c/cb395b201087) (loose) | [net] | sched: optimize class dumps |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.12 | [`0ccc22f425e5`](https://git.kernel.org/torvalds/c/0ccc22f425e5) | [net] | sit: use __GFP_NOWARN for user controlled allocation |  | CONFIG_IPV6_SIT=y in A37 | 3.10.0-710 |
| CANDIDATE | 4.12 | [`b451e5d24ba6`](https://git.kernel.org/torvalds/c/b451e5d24ba6) | [net] | tcp: avoid fragmenting peculiar skbs in SACK |  | generic code, tag [net] | 3.10.0-755 |
| CANDIDATE | 4.12 | [`8b485ce69876`](https://git.kernel.org/torvalds/c/8b485ce69876) | [net] | tcp: do not inherit fastopen_req from parent | CVE-2017-8890 CVE-2017-9075 CVE-2017-9076 CVE-2017-9077 | generic code, tag [net] | 3.10.0-678 |
| CANDIDATE | 4.12 | [`bafbb9c73241`](https://git.kernel.org/torvalds/c/bafbb9c73241) | [net] | tcp: eliminate negative reordering in tcp_clean_rtx_queue |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.12 | [`a9f11f963a54`](https://git.kernel.org/torvalds/c/a9f11f963a54) | [net] | tcp: fix wraparound issue in tcp_lp |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.12 | [`3d4762639dd3`](https://git.kernel.org/torvalds/c/3d4762639dd3) | [net] | tcp: remove poll() flakes when receiving RST |  | generic code, tag [net] | 3.10.0-709 |
| CANDIDATE | 4.12 | [`da6bc57a8f02`](https://git.kernel.org/torvalds/c/da6bc57a8f02) (loose) | [net] | use kvmalloc with __GFP_REPEAT rather than open coded variant |  | generic code, tag [net] | 3.10.0-812 |
| CANDIDATE | 4.12 | [`9b3eb54106cf`](https://git.kernel.org/torvalds/c/9b3eb54106cf) | [net] | xfrm: fix stack access out of bounds with CONFIG_XFRM_SUB_POLICY |  | CONFIG_XFRM=y in A37 | 3.10.0-867 |
| CANDIDATE | 4.12 | [`a486cd23661c`](https://git.kernel.org/torvalds/c/a486cd23661c) | [net] | xfrm: fix state migration copy replay sequence numbers |  | CONFIG_XFRM=y in A37 | 3.10.0-842 |
| CANDIDATE | 4.12 | [`138437f591dd`](https://git.kernel.org/torvalds/c/138437f591dd) | [net] | xfrm: move xfrm_garbage_collect out of xfrm_policy_flush |  | CONFIG_XFRM=y in A37 | 3.10.0-745 |
| CANDIDATE | 4.12 | [`0eed9cf58446`](https://git.kernel.org/torvalds/c/0eed9cf58446) (loose) | [net] | Zero ifla_vf_info in rtnl_fill_vfinfo() |  | generic code, tag [net] | 3.10.0-940 |
| CANDIDATE | 4.13 | [`90b602f80397`](https://git.kernel.org/torvalds/c/90b602f80397) (loose) | [net] | add function to retrieve original skb device using NAPI ID |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 4.13 | [`aad9c8c470f2`](https://git.kernel.org/torvalds/c/aad9c8c470f2) (loose) | [net] | add new control message for incoming HW-timestamped packets |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 4.13 | [`36f41f8fc6d8`](https://git.kernel.org/torvalds/c/36f41f8fc6d8) | [net] | af_key: do not use GFP_KERNEL in atomic contexts |  | CONFIG_NET_KEY=y in A37 | 3.10.0-1064 |
| CANDIDATE | 4.13 | [`b50a5c70ffa4`](https://git.kernel.org/torvalds/c/b50a5c70ffa4) (loose) | [net] | allow simultaneous SW and HW transmit timestamping |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 4.13 | [`8d63bee643f1`](https://git.kernel.org/torvalds/c/8d63bee643f1) (loose) | [net] | avoid skb_warn_bad_offload false positives on UFO |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 4.13 | [`0baa10fff2c8`](https://git.kernel.org/torvalds/c/0baa10fff2c8) (loose) | [net] | bridge: Add support for calling FDB external learning under rcu |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.13 | [`6b26b51b1d13`](https://git.kernel.org/torvalds/c/6b26b51b1d13) (loose) | [net] | bridge: Add support for notifying devices about FDB add/del |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.13 | [`3922285d96e7`](https://git.kernel.org/torvalds/c/3922285d96e7) (loose) | [net] | bridge: Add support for offloading port attributes |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.13 | [`7597b266c56f`](https://git.kernel.org/torvalds/c/7597b266c56f) | [net] | bridge: allow ext learned entries to change ports |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.13 | [`ef9a5a62c634`](https://git.kernel.org/torvalds/c/ef9a5a62c634) | [net] | bridge: check for null fdb->dst before notifying switchdev drivers |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.13 | [`cddbb79f7a80`](https://git.kernel.org/torvalds/c/cddbb79f7a80) (loose) | [net] | bridge: constify attribute_group structures. |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.13 | [`9341b988e606`](https://git.kernel.org/torvalds/c/9341b988e606) | [net] | bridge: Export multicast enabled state |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.13 | [`1f51445af35e`](https://git.kernel.org/torvalds/c/1f51445af35e) | [net] | bridge: Export VLAN filtering state |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.13 | [`31a4562d7408`](https://git.kernel.org/torvalds/c/31a4562d7408) (loose) | [net] | bridge: fix dest lookup when vlan proto doesn't match |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.13 | [`bd080488a6cf`](https://git.kernel.org/torvalds/c/bd080488a6cf) | [net] | bridge: fix hello and hold timers starting/stopping |  | CONFIG_BRIDGE=y in A37 | 3.10.0-681 |
| CANDIDATE | 4.13 | [`1bfb15967395`](https://git.kernel.org/torvalds/c/1bfb15967395) | [net] | bridge: mdb: fix leak on complete_info ptr on fail path |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.13 | [`9fe8bcec0dbc`](https://git.kernel.org/torvalds/c/9fe8bcec0dbc) (loose) | [net] | bridge: Receive notification about successful FDB offload |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.13 | [`79e99bdd60b4`](https://git.kernel.org/torvalds/c/79e99bdd60b4) | [net] | bridge: switchdev: Clear forward mark when transmitting packet |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.13 | [`b8210a9e4bea`](https://git.kernel.org/torvalds/c/b8210a9e4bea) (loose) | [net] | define receive timestamp filter for NTP |  | generic code, tag [net] | 3.10.0-709 |
| CANDIDATE | 4.13 | [`1c4f676a68a5`](https://git.kernel.org/torvalds/c/1c4f676a68a5) (loose) | [net] | Define SCM_TIMESTAMPING_PKTINFO on all architectures |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 4.13 | [`e3412575488a`](https://git.kernel.org/torvalds/c/e3412575488a) (loose) | [net] | ethernet: update drivers to handle HWTSTAMP_FILTER_NTP_ALL |  | generic code, tag [net] | 3.10.0-709 |
| CANDIDATE | 4.13 | [`74abc9b18f44`](https://git.kernel.org/torvalds/c/74abc9b18f44) (loose) | [net] | ethernet: update drivers to make both SW and HW TX timestamps |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 4.13 | [`ac4bb5de2701`](https://git.kernel.org/torvalds/c/ac4bb5de2701) (loose) | [net] | flow_dissector: add support for dissection of tcp flags |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | 4.13 | [`de77b966ce8a`](https://git.kernel.org/torvalds/c/de77b966ce8a) (loose) | [net] | introduce __skb_put_[zero, data, u8] |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | 4.13 | [`b72b5bf6a8fc`](https://git.kernel.org/torvalds/c/b72b5bf6a8fc) (loose) | [net] | introduce skb_crc32c_csum_help |  | generic code, tag [net] | 3.10.0-678 |
| CANDIDATE | 4.13 | [`187e5b3ac84d`](https://git.kernel.org/torvalds/c/187e5b3ac84d) | [net] | ipv4: fix NULL dereference in free_fib_info_rcu() |  | generic code, tag [net] | 3.10.0-878 |
| CANDIDATE | 4.13 | [`254d900b801f`](https://git.kernel.org/torvalds/c/254d900b801f) | [net] | ipv4: ip_do_fragment: fix headroom tests |  | generic code, tag [net] | 3.10.0-703 |
| CANDIDATE | 4.13 | [`3de33e1ba050`](https://git.kernel.org/torvalds/c/3de33e1ba050) | [net] | ipv6: accept 64k - 1 packet length in ip6_find_1stfragopt() | CVE-2017-7542 | generic code, tag [net] | 3.10.0-717 |
| CANDIDATE | 4.13 | [`6399f1fae4ec`](https://git.kernel.org/torvalds/c/6399f1fae4ec) | [net] | ipv6: avoid overflow of offset in ip6_find_1stfragopt | CVE-2017-7542 | generic code, tag [net] | 3.10.0-717 |
| CANDIDATE | 4.13 | [`ec8add2a4c9d`](https://git.kernel.org/torvalds/c/ec8add2a4c9d) | [net] | ipv6: dad: don't remove dynamic addresses if link is down |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | 4.13 | [`e8d411d29807`](https://git.kernel.org/torvalds/c/e8d411d29807) | [net] | ipv6: do not set sk_destruct in IPV6_ADDRFORM sockopt |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | 4.13 | [`afce615aaabf`](https://git.kernel.org/torvalds/c/afce615aaabf) | [net] | ipv6: Don't increase IPSTATS_MIB_FRAGFAILS twice in ip6_fragment() |  | generic code, tag [net] | 3.10.0-703 |
| CANDIDATE | 4.13 | [`12d94a804946`](https://git.kernel.org/torvalds/c/12d94a804946) | [net] | ipv6: fix NULL dereference in ip6_route_dev_notify() |  | generic code, tag [net] | 3.10.0-925 |
| CANDIDATE | 4.13 | [`383143f31d7d`](https://git.kernel.org/torvalds/c/383143f31d7d) | [net] | ipv6: reset fn->rr_ptr when replacing route |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.13 | [`9ee369a405c5`](https://git.kernel.org/torvalds/c/9ee369a405c5) | [net] | l2tp: initialise session's refcount before making it reachable |  | CONFIG_L2TP=y in A37 | 3.10.0-745 |
| CANDIDATE | 4.13 | [`78362998f58c`](https://git.kernel.org/torvalds/c/78362998f58c) | [net] | macsec: add genl family module alias |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.13 | [`863483c970e9`](https://git.kernel.org/torvalds/c/863483c970e9) | [net] | macsec: double accounting of dropped rx/tx packets |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.13 | [`43c26a1a4593`](https://git.kernel.org/torvalds/c/43c26a1a4593) (loose) | [net] | more accurate checksumming in validate_xmit_skb() |  | generic code, tag [net] | 3.10.0-678 |
| CANDIDATE | 4.13 | [`551143d8d954`](https://git.kernel.org/torvalds/c/551143d8d954) | [net] | net_sched: fix a refcount_t issue with noop_qdisc |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`68a66d149a8c`](https://git.kernel.org/torvalds/c/68a66d149a8c) | [net] | net_sched: fix order of queue length updates in qdisc_replace() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`367a8ce896f1`](https://git.kernel.org/torvalds/c/367a8ce896f1) | [net] | net_sched: only create filter chains for new filters/actions |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`c90e95147c27`](https://git.kernel.org/torvalds/c/c90e95147c27) | [net] | net_sched: remove warning from qdisc_hash_add |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`898904226b5a`](https://git.kernel.org/torvalds/c/898904226b5a) | [net] | net_sched: reset pointers to tcf blocks in classful qdiscs' destructors |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`202f59afd441`](https://git.kernel.org/torvalds/c/202f59afd441) | [net] | netfilter: ipt_CLUSTERIP: do not hold dev |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-703 |
| CANDIDATE | 4.13 | [`3840538ad384`](https://git.kernel.org/torvalds/c/3840538ad384) | [net] | netfilter: ipt_CLUSTERIP: fix use-after-free of proc entry |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-703 |
| CANDIDATE | 4.13 | [`deaa0a976b82`](https://git.kernel.org/torvalds/c/deaa0a976b82) | [net] | netfilter: nf_ct_dccp/sctp: fix memory leak after netns cleanup |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-692 |
| CANDIDATE | 4.13 | [`a5fcf8a6c968`](https://git.kernel.org/torvalds/c/a5fcf8a6c968) (loose) | [net] | propagate tc filter chain index down the ndo_setup_tc call |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.13 | [`3753654e5419`](https://git.kernel.org/torvalds/c/3753654e5419) | [net] | revert "rtnetlink: Do not generate notifications for CHANGEADDR event" |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.13 | [`8c6c918da16f`](https://git.kernel.org/torvalds/c/8c6c918da16f) | [net] | rtnetlink: use the new rtnl_get_event() interface |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.13 | [`88c2ace69dbe`](https://git.kernel.org/torvalds/c/88c2ace69dbe) | [net] | sch_htb: fix crash on init failure |  | CONFIG_NET_SCH_HTB=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`d897a638e98c`](https://git.kernel.org/torvalds/c/d897a638e98c) | [net] | sched: add helper for updating statistics on all actions |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`db50514f9a9c`](https://git.kernel.org/torvalds/c/db50514f9a9c) (loose) | [net] | sched: add termination action to allow goto chain |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`30d65e8f96ad`](https://git.kernel.org/torvalds/c/30d65e8f96ad) (loose) | [net] | sched: don't do tcf_chain_flush from tcf_chain_destroy |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`4f8a881acc9d`](https://git.kernel.org/torvalds/c/4f8a881acc9d) (loose) | [net] | sched: fix NULL pointer dereference when action calls some targets |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`acc8b31665b4`](https://git.kernel.org/torvalds/c/acc8b31665b4) (loose) | [net] | sched: fix p_filter_chain check in tcf_chain_flush |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`744a4cf63e52`](https://git.kernel.org/torvalds/c/744a4cf63e52) (loose) | [net] | sched: fix use after free when tcf_chain_destroy is called multiple times |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`e25ea21ffa66`](https://git.kernel.org/torvalds/c/e25ea21ffa66) (loose) | [net] | sched: introduce a TRAP control action |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`5a4d1fee2f84`](https://git.kernel.org/torvalds/c/5a4d1fee2f84) (loose) | [net] | sched: introduce helper to identify gact trap action |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`2190d1d0944f`](https://git.kernel.org/torvalds/c/2190d1d0944f) (loose) | [net] | sched: introduce helpers to work with filter chains |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`5bc1701881e3`](https://git.kernel.org/torvalds/c/5bc1701881e3) (loose) | [net] | sched: introduce multichain support for filters |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`6529eaba33f0`](https://git.kernel.org/torvalds/c/6529eaba33f0) (loose) | [net] | sched: introduce tcf block infractructure |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`87d83093bfc2`](https://git.kernel.org/torvalds/c/87d83093bfc2) (loose) | [net] | sched: move tc_classify function to cls_api.c |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`7961973a0087`](https://git.kernel.org/torvalds/c/7961973a0087) (loose) | [net] | sched: move TC_H_MAJ macro call into tcf_auto_prio |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`acb31fae3b35`](https://git.kernel.org/torvalds/c/acb31fae3b35) (loose) | [net] | sched: push chain dump to a separate function |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`9fb9f251d229`](https://git.kernel.org/torvalds/c/9fb9f251d229) (loose) | [net] | sched: push tp down to action init |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`fbe9c5b01f97`](https://git.kernel.org/torvalds/c/fbe9c5b01f97) (loose) | [net] | sched: rename tcf_destroy_chain helper |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`9d36d9e545dc`](https://git.kernel.org/torvalds/c/9d36d9e545dc) (loose) | [net] | sched: replace nprio by a bool to make the function more readable |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`8ec1507dc9d1`](https://git.kernel.org/torvalds/c/8ec1507dc9d1) (loose) | [net] | sched: select cls when cls_act is enabled |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`ec0acb093130`](https://git.kernel.org/torvalds/c/ec0acb093130) (loose) | [net] | sched: set xt_tgchk_param par.net properly in ipt_init_target |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`96d9703050a0`](https://git.kernel.org/torvalds/c/96d9703050a0) (loose) | [net] | sched: set xt_tgchk_param par.nft_compat as 0 in ipt_init_target |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.13 | [`219f1d798712`](https://git.kernel.org/torvalds/c/219f1d798712) | [net] | sk_buff: remove support for csum_bad in sk_buff |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | 4.13 | [`9617813dba5b`](https://git.kernel.org/torvalds/c/9617813dba5b) | [net] | skbuff: add stub to help computing crc32c on SCTP packets |  | generic code, tag [net] | 3.10.0-678 |
| CANDIDATE | 4.13 | [`83ad357dee46`](https://git.kernel.org/torvalds/c/83ad357dee46) | [net] | skbuff: make skb_put_zero() return void |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | 4.13 | [`3fcece12bc1b`](https://git.kernel.org/torvalds/c/3fcece12bc1b) (loose) | [net] | store port/representator id in metadata_dst |  | generic code, tag [net] | 3.10.0-755 |
| CANDIDATE | 4.13 | [`ff244c6b29b1`](https://git.kernel.org/torvalds/c/ff244c6b29b1) | [net] | tun: handle register_netdevice() failures properly |  | CONFIG_TUN=y in A37 | 3.10.0-745 |
| CANDIDATE | 4.13 | [`dba003067a43`](https://git.kernel.org/torvalds/c/dba003067a43) (loose) | [net] | use skb->csum_not_inet to identify packets needing crc32c |  | generic code, tag [net] | 3.10.0-678 |
| CANDIDATE | 4.13 | [`8bafd73093f2`](https://git.kernel.org/torvalds/c/8bafd73093f2) | [net] | xfrm: add UDP encapsulation port in migrate message |  | CONFIG_XFRM=y in A37 | 3.10.0-842 |
| CANDIDATE | 4.13 | [`4ab47d47af20`](https://git.kernel.org/torvalds/c/4ab47d47af20) | [net] | xfrm: extend MIGRATE with UDP encapsulation port |  | CONFIG_XFRM=y in A37 | 3.10.0-842 |
| CANDIDATE | 4.13 | [`3f5a95ad6c6c`](https://git.kernel.org/torvalds/c/3f5a95ad6c6c) | [net] | xfrm: fix null pointer dereference on state and tmpl sort |  | CONFIG_XFRM=y in A37 | 3.10.0-829 |
| CANDIDATE | 4.13 | [`931e79d7a7dd`](https://git.kernel.org/torvalds/c/931e79d7a7dd) | [net] | xfrm_user: fix info leak in build_aevent() |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.13 | [`50329c8a340c`](https://git.kernel.org/torvalds/c/50329c8a340c) | [net] | xfrm_user: fix info leak in xfrm_notify_sa() |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.14 | [`296d8ee37c50`](https://git.kernel.org/torvalds/c/296d8ee37c50) (loose) | [net] | add infrastructure to un-offload UDP tunnel port |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.14 | [`864150dfa31d`](https://git.kernel.org/torvalds/c/864150dfa31d) (loose) | [net] | Add module reference to FIB notifiers |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.14 | [`d764a122cc7a`](https://git.kernel.org/torvalds/c/d764a122cc7a) (loose) | [net] | add new netdevice feature for offload of RX port for UDP tunnels |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.14 | [`e3cfddd577e7`](https://git.kernel.org/torvalds/c/e3cfddd577e7) | [net] | bridge: add tracepoint in br_fdb_update |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.14 | [`b74fd306ef2d`](https://git.kernel.org/torvalds/c/b74fd306ef2d) | [net] | bridge: fdb add and delete tracepoints |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.14 | [`66c54517540c`](https://git.kernel.org/torvalds/c/66c54517540c) (loose) | [net] | bridge: fix returning of vlan range op errors |  | CONFIG_BRIDGE=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.14 | [`f1c2eddf4cb6`](https://git.kernel.org/torvalds/c/f1c2eddf4cb6) | [net] | bridge: switchdev: Use an helper to clear forward mark |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | 4.14 | [`ae847f40b641`](https://git.kernel.org/torvalds/c/ae847f40b641) (loose) | [net] | call udp_tunnel_get_rx_info when NETIF_F_RX_UDP_TUNNEL_PORT is toggled |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.14 | [`51e13359cd5e`](https://git.kernel.org/torvalds/c/51e13359cd5e) | [net] | cfg80211: fix connect/disconnect edge cases |  | CONFIG_CFG80211=y in A37 | 3.10.0-806 |
| CANDIDATE | 4.14 | [`e65a4955b0bb`](https://git.kernel.org/torvalds/c/e65a4955b0bb) (loose) | [net] | check type when freeing metadata dst |  | generic code, tag [net] | 3.10.0-755 |
| CANDIDATE | 4.14 | [`7a27fc6d536b`](https://git.kernel.org/torvalds/c/7a27fc6d536b) (loose) | [net] | check UDP tunnel RX port offload feature before calling tunnel ndo ndo |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.14 | [`22f7cec93f0a`](https://git.kernel.org/torvalds/c/22f7cec93f0a) | [net] | cls_flow: use tcf_exts_get_net() before call_rcu() |  | CONFIG_NET_CLS_FLOW=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`d5f984f5af1d`](https://git.kernel.org/torvalds/c/d5f984f5af1d) | [net] | cls_fw: use tcf_exts_get_net() before call_rcu() |  | CONFIG_NET_CLS_FW=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`35c55fc156d8`](https://git.kernel.org/torvalds/c/35c55fc156d8) | [net] | cls_u32: use tcf_exts_get_net() before call_rcu() |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`04b1d4e50e82`](https://git.kernel.org/torvalds/c/04b1d4e50e82) (loose) | [net] | core: Make the FIB notification chain generic |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.14 | [`155e6f649757`](https://git.kernel.org/torvalds/c/155e6f649757) | [net] | ether: add NSH ethertype |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.14 | [`606c07f30860`](https://git.kernel.org/torvalds/c/606c07f30860) (loose) | [net] | ethtool: Add macro to clear a link mode setting |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 4.14 | [`1a5f3da20bd9`](https://git.kernel.org/torvalds/c/1a5f3da20bd9) (loose) | [net] | ethtool: add support for forward error correction modes |  | generic code, tag [net] | 3.10.0-842 |
| CANDIDATE | 4.14 | [`95491e3cf378`](https://git.kernel.org/torvalds/c/95491e3cf378) (loose) | [net] | ethtool: remove error check for legacy setting transceiver type |  | generic code, tag [net] | 3.10.0-976 |
| CANDIDATE | 4.14 | [`1b2a44408588`](https://git.kernel.org/torvalds/c/1b2a44408588) (loose) | [net] | fib_rules: Implement notification logic in core |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.14 | [`1eed4dfb81b1`](https://git.kernel.org/torvalds/c/1eed4dfb81b1) | [net] | flow_dissector: Add limit for number of headers to dissect |  | generic code, tag [net] | 3.10.0-983 |
| CANDIDATE | 4.14 | [`3a1214e8b063`](https://git.kernel.org/torvalds/c/3a1214e8b063) | [net] | flow_dissector: Cleanup control flow |  | generic code, tag [net] | 3.10.0-983 |
| CANDIDATE | 4.14 | [`3d0241d57c7b`](https://git.kernel.org/torvalds/c/3d0241d57c7b) | [net] | gso: fix payload length when gso_size is zero |  | generic code, tag [net] | 3.10.0-818 |
| CANDIDATE | 4.14 | [`2804fd3af6ba`](https://git.kernel.org/torvalds/c/2804fd3af6ba) | [net] | if_ether: add forces ife lfb type |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.14 | [`8c22dab03ad0`](https://git.kernel.org/torvalds/c/8c22dab03ad0) | [net] | ip6_tunnel: do not allow loading ip6_tunnel if ipv6 is disabled in cmdline |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 4.14 | [`6c1cb4393cc7`](https://git.kernel.org/torvalds/c/6c1cb4393cc7) | [net] | ip6_tunnel: fix ip6 tunnel lookup in collect_md mode |  | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | 4.14 | [`d41bb33ba33b`](https://git.kernel.org/torvalds/c/d41bb33ba33b) | [net] | ip6_tunnel: update mtu properly for ARPHRD_ETHER tunnel device in tx path |  | generic code, tag [net] | 3.10.0-878 |
| CANDIDATE | 4.14 | [`833a8b405465`](https://git.kernel.org/torvalds/c/833a8b405465) | [net] | ip_tunnel: fix ip tunnel lookup in collect_md mode |  | generic code, tag [net] | 3.10.0-1096 |
| CANDIDATE | 4.14 | [`1137b5e2529a`](https://git.kernel.org/torvalds/c/1137b5e2529a) | [net] | ipsec: Fix aborted xfrm policy dump crash | CVE-2017-16939 | CONFIG_XFRM=y in A37 | 3.10.0-866 |
| CANDIDATE | 4.14 | [`5f9ae3d9e7e4`](https://git.kernel.org/torvalds/c/5f9ae3d9e7e4) | [net] | ipv4: do metrics match when looking up and deleting a route |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | 4.14 | [`7487449c86c6`](https://git.kernel.org/torvalds/c/7487449c86c6) | [net] | ipv4: early demux can return an error code |  | generic code, tag [net] | 3.10.0-755 |
| CANDIDATE | 4.14 | [`475abbf1ef67`](https://git.kernel.org/torvalds/c/475abbf1ef67) | [net] | ipv4: fib: Set offload indication according to nexthop flags |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.14 | [`e669b8694547`](https://git.kernel.org/torvalds/c/e669b8694547) | [net] | ipv6: addrconf: increment ifp refcount before ipv6_del_addr() |  | generic code, tag [net] | 3.10.0-906 |
| CANDIDATE | 4.14 | [`16ab6d7d4d8c`](https://git.kernel.org/torvalds/c/16ab6d7d4d8c) | [net] | ipv6: fib: Add FIB notifiers callbacks |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.14 | [`a460aa83963b`](https://git.kernel.org/torvalds/c/a460aa83963b) | [net] | ipv6: fib: Add helpers to hold / drop a reference on rt6_info |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.14 | [`df77fe4d9865`](https://git.kernel.org/torvalds/c/df77fe4d9865) | [net] | ipv6: fib: Add in-kernel notifications for route add / delete |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.14 | [`61e4d01e16ac`](https://git.kernel.org/torvalds/c/61e4d01e16ac) | [net] | ipv6: fib: Add offload indication to routes |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.14 | [`c5b12410fa59`](https://git.kernel.org/torvalds/c/c5b12410fa59) | [net] | ipv6: fib: Don't assume only nodes hold a reference on routes |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.14 | [`e1ee0a5ba35d`](https://git.kernel.org/torvalds/c/e1ee0a5ba35d) | [net] | ipv6: fib: Dump tables during registration to FIB chain |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.14 | [`fe4007999599`](https://git.kernel.org/torvalds/c/fe4007999599) | [net] | ipv6: fib: Provide offload indication using nexthop flags |  | generic code, tag [net] | 3.10.0-818 |
| CANDIDATE | 4.14 | [`7483cea79957`](https://git.kernel.org/torvalds/c/7483cea79957) | [net] | ipv6: fib: Unlink replaced routes from their nodes |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.14 | [`e3ea973159d5`](https://git.kernel.org/torvalds/c/e3ea973159d5) | [net] | ipv6: fib_rules: Check if rule is a default rule |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.14 | [`dcb18f762f6a`](https://git.kernel.org/torvalds/c/dcb18f762f6a) | [net] | ipv6: fib_rules: Dump rules during registration to FIB chain |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.14 | [`35e015e1f577`](https://git.kernel.org/torvalds/c/35e015e1f577) | [net] | ipv6: fix net.ipv6.conf.all interface DAD handlers |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.14 | [`a2d3f3e33853`](https://git.kernel.org/torvalds/c/a2d3f3e33853) | [net] | ipv6: fix net.ipv6.conf.all.accept_dad behaviour for real |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | 4.14 | [`fc882fcff1ee`](https://git.kernel.org/torvalds/c/fc882fcff1ee) | [net] | ipv6: Regenerate host route according to node pointer upon interface up |  | generic code, tag [net] | 3.10.0-906 |
| CANDIDATE | 4.14 | [`9217d8c2fe74`](https://git.kernel.org/torvalds/c/9217d8c2fe74) | [net] | ipv6: Regenerate host route according to node pointer upon loopback up |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.14 | [`62b982eeb458`](https://git.kernel.org/torvalds/c/62b982eeb458) | [net] | l2tp: fix race condition in l2tp_tunnel_delete |  | CONFIG_L2TP=y in A37 | 3.10.0-745 |
| CANDIDATE | 4.14 | [`f026bc29a8e0`](https://git.kernel.org/torvalds/c/f026bc29a8e0) | [net] | l2tp: pass tunnel pointer to ->session_create() | CVE-2018-9517 | CONFIG_L2TP=y in A37 | 3.10.0-969 |
| CANDIDATE | 4.14 | [`f3c66d4e144a`](https://git.kernel.org/torvalds/c/f3c66d4e144a) | [net] | l2tp: prevent creation of sessions on terminated tunnels |  | CONFIG_L2TP=y in A37 | 3.10.0-745 |
| CANDIDATE | 4.14 | [`a159d3c4b829`](https://git.kernel.org/torvalds/c/a159d3c4b829) | [net] | net_sched: acquire RTNL in tc_action_net_exit() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`07d79fc7d94e`](https://git.kernel.org/torvalds/c/07d79fc7d94e) | [net] | net_sched: add reverse binding for tc class |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`2d132eba1d97`](https://git.kernel.org/torvalds/c/2d132eba1d97) | [net] | net_sched: add rtnl assertion to tcf_exts_destroy() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`c8e1812960ee`](https://git.kernel.org/torvalds/c/c8e1812960ee) | [net] | net_sched: always reset qdisc backlog in qdisc_reset() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`959466588aa7`](https://git.kernel.org/torvalds/c/959466588aa7) | [net] | net_sched: call qlen_notify only if child qdisc is empty |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`1697c4bb5245`](https://git.kernel.org/torvalds/c/1697c4bb5245) | [net] | net_sched: carefully handle tcf_block_put() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`46e235c15ca4`](https://git.kernel.org/torvalds/c/46e235c15ca4) | [net] | net_sched: fix call_rcu() race on act_sample module removal |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`e2ef75445340`](https://git.kernel.org/torvalds/c/e2ef75445340) | [net] | net_sched: fix reference counting of tc filter chain |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`ca558e185972`](https://git.kernel.org/torvalds/c/ca558e185972) | [net] | net_sched: gen_estimator: fix scaling error in bytes/packets samples |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`27d7f07c49de`](https://git.kernel.org/torvalds/c/27d7f07c49de) | [net] | net_sched: get rid of more forward declarations |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`7120371c8ef1`](https://git.kernel.org/torvalds/c/7120371c8ef1) | [net] | net_sched: get rid of some forward declarations |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`d7fb60b9cafb`](https://git.kernel.org/torvalds/c/d7fb60b9cafb) | [net] | net_sched: get rid of tcfa_rcu |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`7aa0045dadb6`](https://git.kernel.org/torvalds/c/7aa0045dadb6) | [net] | net_sched: introduce a workqueue for RCU callbacks of tc filter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`e4b95c41df36`](https://git.kernel.org/torvalds/c/e4b95c41df36) | [net] | net_sched: introduce tcf_exts_get_net() and tcf_exts_put_net() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`14546ba1e565`](https://git.kernel.org/torvalds/c/14546ba1e565) | [net] | net_sched: introduce tclass_del_notify() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`3cd904ecbb5d`](https://git.kernel.org/torvalds/c/3cd904ecbb5d) | [net] | net_sched: kill u32_node pointer in Qdisc |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`54df2cf819a2`](https://git.kernel.org/torvalds/c/54df2cf819a2) | [net] | net_sched: refactor notification code for RTM_DELTFILTER |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`fe2502e49b58`](https://git.kernel.org/torvalds/c/fe2502e49b58) | [net] | net_sched: remove cls_flower idr on failure |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`143976ce992f`](https://git.kernel.org/torvalds/c/143976ce992f) | [net] | net_sched: remove tc class reference counting |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`822e86d997e4`](https://git.kernel.org/torvalds/c/822e86d997e4) | [net] | net_sched: remove tcf_block_put_deferred() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`c96a48385d53`](https://git.kernel.org/torvalds/c/c96a48385d53) | [net] | net_sched: use tcf_queue_work() in basic filter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`e910af676b56`](https://git.kernel.org/torvalds/c/e910af676b56) | [net] | net_sched: use tcf_queue_work() in bpf filter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`b1b5b04fdb6d`](https://git.kernel.org/torvalds/c/b1b5b04fdb6d) | [net] | net_sched: use tcf_queue_work() in cgroup filter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`94cdb47566b7`](https://git.kernel.org/torvalds/c/94cdb47566b7) | [net] | net_sched: use tcf_queue_work() in flow filter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`0552c8afa077`](https://git.kernel.org/torvalds/c/0552c8afa077) | [net] | net_sched: use tcf_queue_work() in flower filter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`e071dff2a6be`](https://git.kernel.org/torvalds/c/e071dff2a6be) | [net] | net_sched: use tcf_queue_work() in fw filter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`df2735ee8e6c`](https://git.kernel.org/torvalds/c/df2735ee8e6c) | [net] | net_sched: use tcf_queue_work() in matchall filter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`c2f3f31d402b`](https://git.kernel.org/torvalds/c/c2f3f31d402b) | [net] | net_sched: use tcf_queue_work() in route filter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`d4f84a41dc61`](https://git.kernel.org/torvalds/c/d4f84a41dc61) | [net] | net_sched: use tcf_queue_work() in rsvp filter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`27ce4f05e2ab`](https://git.kernel.org/torvalds/c/27ce4f05e2ab) | [net] | net_sched: use tcf_queue_work() in tcindex filter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`c0d378ef1266`](https://git.kernel.org/torvalds/c/c0d378ef1266) | [net] | net_sched: use tcf_queue_work() in u32 filter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.14 | [`8113c095672f`](https://git.kernel.org/torvalds/c/8113c095672f) | [net] | net_sched: use void pointer for filter handle |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`2b5ec1a5f973`](https://git.kernel.org/torvalds/c/2b5ec1a5f973) | [net] | netfilter/ipvs: clear ipvs_property flag when SKB net namespace changed |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1069 |
| CANDIDATE | 4.14 | [`e466af75c074`](https://git.kernel.org/torvalds/c/e466af75c074) | [net] | netfilter: x_tables: avoid stack-out-of-bounds read in xt_copy_counters_from_user |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.14 | [`a5d7a7145691`](https://git.kernel.org/torvalds/c/a5d7a7145691) | [net] | netfilter: xtables: add scheduling opportunity in get_counters |  | CONFIG_NETFILTER=y in A37 | 3.10.0-742 |
| CANDIDATE | 4.14 | [`ad670233c9e1`](https://git.kernel.org/torvalds/c/ad670233c9e1) | [net] | nl80211: Define policy for packet pattern attributes |  | CONFIG_CFG80211=y in A37 | 3.10.0-806 |
| CANDIDATE | 4.14 | [`008ba2a13f2d`](https://git.kernel.org/torvalds/c/008ba2a13f2d) | [net] | packet: hold bind lock when rebinding to fanout hook | CVE-2017-15649 | CONFIG_PACKET=y in A37 | 3.10.0-797 |
| CANDIDATE | 4.14 | [`4971613c1639`](https://git.kernel.org/torvalds/c/4971613c1639) | [net] | packet: in packet_do_bind, test fanout with bind_lock held | CVE-2017-15649 | CONFIG_PACKET=y in A37 | 3.10.0-797 |
| CANDIDATE | 4.14 | [`e543002f77f4`](https://git.kernel.org/torvalds/c/e543002f77f4) | [net] | qdisc: add tracepoint qdisc:qdisc_dequeue for dequeued SKBs |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | 4.14 | [`fb452a1aa3fd`](https://git.kernel.org/torvalds/c/fb452a1aa3fd) | [net] | revert "net: use lib/percpu_counter API for fragmentation mem accounting" |  | generic code, tag [net] | 3.10.0-786 |
| CANDIDATE | 4.14 | [`d371ac1e1b11`](https://git.kernel.org/torvalds/c/d371ac1e1b11) | [net] | rocker: Ignore address families other than IPv4 |  | generic code, tag [net] | 3.10.0-800 |
| CANDIDATE | 4.14 | [`d0225784be6c`](https://git.kernel.org/torvalds/c/d0225784be6c) | [net] | rtnelink: Move link dump consistency check out of the loop |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 4.14 | [`ebdcf0450b02`](https://git.kernel.org/torvalds/c/ebdcf0450b02) | [net] | rtnetlink: bring NETDEV_CHANGE_TX_QUEUE_LEN event process back in rtnetlink_event |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.14 | [`8a212589fe0e`](https://git.kernel.org/torvalds/c/8a212589fe0e) | [net] | rtnetlink: bring NETDEV_CHANGEMTU event process back in rtnetlink_event |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.14 | [`dc709f375743`](https://git.kernel.org/torvalds/c/dc709f375743) | [net] | rtnetlink: bring NETDEV_CHANGEUPPER event process back in rtnetlink_event |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.14 | [`e6e6659446c8`](https://git.kernel.org/torvalds/c/e6e6659446c8) | [net] | rtnetlink: bring NETDEV_POST_TYPE_CHANGE event process back in rtnetlink_event |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.14 | [`64ff90cc2e6f`](https://git.kernel.org/torvalds/c/64ff90cc2e6f) | [net] | rtnetlink: check DO_SETLINK_NOTIFY correctly in do_setlink |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.14 | [`2d7f669b42a9`](https://git.kernel.org/torvalds/c/2d7f669b42a9) | [net] | rtnetlink: do not set notification for tx_queue_len in do_setlink |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.14 | [`ce024f42c2e2`](https://git.kernel.org/torvalds/c/ce024f42c2e2) (loose) | [net] | rtnetlink: fix info leak in RTM_GETSTATS call |  | generic code, tag [net] | 3.10.0-1144 |
| CANDIDATE | 4.14 | [`e457d86ada27`](https://git.kernel.org/torvalds/c/e457d86ada27) (loose) | [net] | sched: add couple of goto_chain helpers |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`861932ecc360`](https://git.kernel.org/torvalds/c/861932ecc360) (loose) | [net] | sched: Add helpers to identify classids |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`7d3f0cd43fee`](https://git.kernel.org/torvalds/c/7d3f0cd43fee) (loose) | [net] | sched: Add the invalid handle check in qdisc_class_find |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`9b0d4446b569`](https://git.kernel.org/torvalds/c/9b0d4446b569) (loose) | [net] | sched: avoid atomic swap in tcf_exts_change |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`3bcc0cec818f`](https://git.kernel.org/torvalds/c/3bcc0cec818f) (loose) | [net] | sched: change names of action number helpers to be aligned with the rest |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`38cf0426e517`](https://git.kernel.org/torvalds/c/38cf0426e517) (loose) | [net] | sched: change return value of ndo_setup_tc for driver supporting mqprio only |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`c09fc2e11ed1`](https://git.kernel.org/torvalds/c/c09fc2e11ed1) (loose) | [net] | sched: cls_flow: no need to call tcf_exts_change for newly allocated struct |  | CONFIG_NET_CLS_FLOW=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`94611bff6e1e`](https://git.kernel.org/torvalds/c/94611bff6e1e) (loose) | [net] | sched: cls_fw: no need to call tcf_exts_change for newly allocated struct |  | CONFIG_NET_CLS_FW=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`1e5003af3735`](https://git.kernel.org/torvalds/c/1e5003af3735) (loose) | [net] | sched: cls_fw: rename fw_change_attrs function |  | CONFIG_NET_CLS_FW=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`705c7091262d`](https://git.kernel.org/torvalds/c/705c7091262d) (loose) | [net] | sched: cls_u32: no need to call tcf_exts_change for newly allocated struct |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`2c8468dcf830`](https://git.kernel.org/torvalds/c/2c8468dcf830) (loose) | [net] | sched: don't use GFP_KERNEL under spin lock |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`80532384af4c`](https://git.kernel.org/torvalds/c/80532384af4c) (loose) | [net] | sched: fix memleak for chain zero |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`af089e701adf`](https://git.kernel.org/torvalds/c/af089e701adf) (loose) | [net] | sched: fix return value of tcf_exts_exec |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`255cd50f207a`](https://git.kernel.org/torvalds/c/255cd50f207a) (loose) | [net] | sched: fix use-after-free in tcf_action_destroy and tcf_del_walker |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`de4784ca030f`](https://git.kernel.org/torvalds/c/de4784ca030f) (loose) | [net] | sched: get rid of struct tc_to_netdev |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`3e0e82664322`](https://git.kernel.org/torvalds/c/3e0e82664322) (loose) | [net] | sched: make egress_dev flag part of flower offload struct |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`2572ac53c46f`](https://git.kernel.org/torvalds/c/2572ac53c46f) (loose) | [net] | sched: make type an argument for ndo_setup_tc |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`d7c1c8d2e53b`](https://git.kernel.org/torvalds/c/d7c1c8d2e53b) (loose) | [net] | sched: move prio into cls_common |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`7690f2a51d8a`](https://git.kernel.org/torvalds/c/7690f2a51d8a) (loose) | [net] | sched: propagate classid down to offload drivers |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`5fd9fc4e207d`](https://git.kernel.org/torvalds/c/5fd9fc4e207d) (loose) | [net] | sched: push cls related args into cls_common structure |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`ec1a9cca0e13`](https://git.kernel.org/torvalds/c/ec1a9cca0e13) (loose) | [net] | sched: remove check for number of actions in tcf_exts_exec |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`7b06e8aed283`](https://git.kernel.org/torvalds/c/7b06e8aed283) (loose) | [net] | sched: remove cops->tcf_cl_offload |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`237f79d24ebe`](https://git.kernel.org/torvalds/c/237f79d24ebe) (loose) | [net] | sched: remove handle propagation down to the drivers |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.14 | [`6fc6d06e5371`](https://git.kernel.org/torvalds/c/6fc6d06e5371) (loose) | [net] | sched: remove redundant helpers tcf_exts_is_predicative and tcf_exts_is_available |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`4ebc1e3cfcd8`](https://git.kernel.org/torvalds/c/4ebc1e3cfcd8) (loose) | [net] | sched: remove unneeded tcf_em_tree_change |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`ade9b6588420`](https://git.kernel.org/torvalds/c/ade9b6588420) (loose) | [net] | sched: rename TC_SETUP_MATCHALL to TC_SETUP_CLSMATCHALL |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`f9ab7425b312`](https://git.kernel.org/torvalds/c/f9ab7425b312) | [net] | sched: sfq: drop packets after root qdisc lock is released |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`39ad1297a208`](https://git.kernel.org/torvalds/c/39ad1297a208) | [net] | sched: Use __qdisc_drop instead of kfree_skb in sch_prio and sch_qfq |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`a2e8da9378cc`](https://git.kernel.org/torvalds/c/a2e8da9378cc) (loose) | [net] | sched: use newly added classid identity helpers |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`af69afc551eb`](https://git.kernel.org/torvalds/c/af69afc551eb) (loose) | [net] | sched: use tcf_exts_has_actions in tcf_exts_exec |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`978dfd8d14a5`](https://git.kernel.org/torvalds/c/978dfd8d14a5) (loose) | [net] | sched: use tcf_exts_has_actions instead of exts->nr_actions |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | 4.14 | [`b5b7db8d6804`](https://git.kernel.org/torvalds/c/b5b7db8d6804) | [net] | tcp: fastopen: fix on syn-data transmit failure |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.14 | [`2b7cda9c35d3`](https://git.kernel.org/torvalds/c/2b7cda9c35d3) | [net] | tcp: fix tcp_mtu_probe() vs highest_sack |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.14 | [`93161922c658`](https://git.kernel.org/torvalds/c/93161922c658) | [net] | tun/tap: sanitize TUNSETSNDBUF input |  | CONFIG_TUN=y in A37 | 3.10.0-1112 |
| CANDIDATE | 4.14 | [`5c25f65fd1e4`](https://git.kernel.org/torvalds/c/5c25f65fd1e4) | [net] | tun: allow positive return values on dev_get_valid_name() call | CVE-2018-7191 | CONFIG_TUN=y in A37 | 3.10.0-1090 |
| CANDIDATE | 4.14 | [`0ad646c81b21`](https://git.kernel.org/torvalds/c/0ad646c81b21) | [net] | tun: call dev_get_valid_name() before register_netdevice() | CVE-2018-7191 | CONFIG_TUN=y in A37 | 3.10.0-1090 |
| CANDIDATE | 4.14 | [`996b44fcef8f`](https://git.kernel.org/torvalds/c/996b44fcef8f) | [net] | udp: fix bcast packet reception |  | generic code, tag [net] | 3.10.0-755 |
| CANDIDATE | 4.14 | [`bc044e8db796`](https://git.kernel.org/torvalds/c/bc044e8db796) | [net] | udp: perform source validation for mcast early demux |  | generic code, tag [net] | 3.10.0-755 |
| CANDIDATE | 4.14 | [`63ecc3d9436f`](https://git.kernel.org/torvalds/c/63ecc3d9436f) | [net] | udpv6: Fix the checksum computation when HW checksum does not apply |  | generic code, tag [net] | 3.10.0-940 |
| CANDIDATE | 4.14 | [`36f6ee22d2d6`](https://git.kernel.org/torvalds/c/36f6ee22d2d6) | [net] | vti: fix use after free in vti_tunnel_xmit/vti6_tnl_xmit |  | CONFIG_XFRM=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.14 | [`11393cc9b9be`](https://git.kernel.org/torvalds/c/11393cc9b9be) | [net] | xdp: Add batching support to redirect map |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.14 | [`814abfabef3c`](https://git.kernel.org/torvalds/c/814abfabef3c) | [net] | xdp: add bpf_redirect helper function |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.14 | [`5acaee0a8964`](https://git.kernel.org/torvalds/c/5acaee0a8964) | [net] | xdp: add trace event for xdp redirect |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.14 | [`2b06cdf3e688`](https://git.kernel.org/torvalds/c/2b06cdf3e688) | [net] | xfrm: Clear sk_dst_cache when applying per-socket policy. |  | CONFIG_XFRM=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.15 | [`18a4c0eab262`](https://git.kernel.org/torvalds/c/18a4c0eab262) (loose) | [net] | add rb_to_skb() and other rb tree helpers | CVE-2018-5390 | generic code, tag [net] | 3.10.0-932 |
| CANDIDATE | 4.15 | [`74c4b656c3d9`](https://git.kernel.org/torvalds/c/74c4b656c3d9) | [net] | adding missing rcu_read_unlock in ipxip6_rcv |  | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | 4.15 | [`06e7e776ca4d`](https://git.kernel.org/torvalds/c/06e7e776ca4d) | [net] | bluetooth: Prevent stack info leak from the EFS element | CVE-2017-1000410 | CONFIG_BT=y in A37 | 3.10.0-838 |
| CANDIDATE | 4.15 | [`de8f3a83b0a0`](https://git.kernel.org/torvalds/c/de8f3a83b0a0) | [net] | bpf: add meta pointer for direct access |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.15 | [`290af86629b2`](https://git.kernel.org/torvalds/c/290af86629b2) | [net] | bpf: introduce BPF_JIT_ALWAYS_ON config |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`f4e63525ee35`](https://git.kernel.org/torvalds/c/f4e63525ee35) (loose) | [net] | bpf: rename ndo_xdp to ndo_bpf |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-889 |
| CANDIDATE | 4.15 | [`fbec443bfe44`](https://git.kernel.org/torvalds/c/fbec443bfe44) (loose) | [net] | bridge: add vlan_tunnel to bridge port policies |  | CONFIG_BRIDGE=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.15 | [`0912bda43638`](https://git.kernel.org/torvalds/c/0912bda43638) (loose) | [net] | bridge: Export bridge multicast router state |  | CONFIG_BRIDGE=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.15 | [`84aeb437ab98`](https://git.kernel.org/torvalds/c/84aeb437ab98) (loose) | [net] | bridge: fix early call to br_stp_change_bridge_id and plug newlink leaks |  | CONFIG_BRIDGE=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.15 | [`77041420751f`](https://git.kernel.org/torvalds/c/77041420751f) (loose) | [net] | bridge: Notify on bridge device mrouter state changes |  | CONFIG_BRIDGE=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.15 | [`88230ef1f31b`](https://git.kernel.org/torvalds/c/88230ef1f31b) | [net] | cfg80211: fix CFG80211_EXTRA_REGDB_KEYDIR typo |  | CONFIG_CFG80211=y in A37 | 3.10.0-932 |
| CANDIDATE | 4.15 | [`a48a52b7bea8`](https://git.kernel.org/torvalds/c/a48a52b7bea8) | [net] | cfg80211: fully initialize old channel for event |  | CONFIG_CFG80211=y in A37 | 3.10.0-932 |
| CANDIDATE | 4.15 | [`90a53e4432b1`](https://git.kernel.org/torvalds/c/90a53e4432b1) | [net] | cfg80211: implement regdb signature checking |  | CONFIG_CFG80211=y in A37 | 3.10.0-932 |
| CANDIDATE | 4.15 | [`d7be102f2945`](https://git.kernel.org/torvalds/c/d7be102f2945) | [net] | cfg80211: initialize regulatory keys/database later |  | CONFIG_CFG80211=y in A37 | 3.10.0-932 |
| CANDIDATE | 4.15 | [`c8c240e284b3`](https://git.kernel.org/torvalds/c/c8c240e284b3) | [net] | cfg80211: reg: remove support for built-in regdb |  | CONFIG_CFG80211=y in A37 | 3.10.0-932 |
| CANDIDATE | 4.15 | [`1ea4ff3e9f0b`](https://git.kernel.org/torvalds/c/1ea4ff3e9f0b) | [net] | cfg80211: support reloading regulatory database |  | CONFIG_CFG80211=y in A37 | 3.10.0-932 |
| CANDIDATE | 4.15 | [`46209401f8f6`](https://git.kernel.org/torvalds/c/46209401f8f6) (loose) | [net] | core: introduce mini_Qdisc and eliminate usage of tp->q for clsact fastpath |  | generic code, tag [net] | 3.10.0-894 |
| CANDIDATE | 4.15 | [`f15ca723c1eb`](https://git.kernel.org/torvalds/c/f15ca723c1eb) (loose) | [net] | don't call update_pmtu unconditionally |  | generic code, tag [net] | 3.10.0-980 |
| CANDIDATE | 4.15 | [`5a6cd6de76ae`](https://git.kernel.org/torvalds/c/5a6cd6de76ae) | [net] | ethtool: add ethtool_intersect_link_masks |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 4.15 | [`8a5f2166a628`](https://git.kernel.org/torvalds/c/8a5f2166a628) (loose) | [net] | export netdev_txq_to_tc to allow sch_mqprio to compile as module |  | generic code, tag [net] | 3.10.0-898 |
| CANDIDATE | 4.15 | [`7cbebc8a1422`](https://git.kernel.org/torvalds/c/7cbebc8a1422) (loose) | [net] | export peernet2id_alloc |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 4.15 | [`85e482285bbb`](https://git.kernel.org/torvalds/c/85e482285bbb) | [net] | fib: notifier: Add VIF add and delete event types |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.15 | [`21b594435005`](https://git.kernel.org/torvalds/c/21b594435005) (loose) | [net] | Fix double free and memory corruption in get_net_ns_by_id() | CVE-2017-15129 | generic code, tag [net] | 3.10.0-844 |
| CANDIDATE | 4.15 | [`a38402bc5070`](https://git.kernel.org/torvalds/c/a38402bc5070) | [net] | flow_dissector: dissect tunnel info |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.15 | [`d0c081b49137`](https://git.kernel.org/torvalds/c/d0c081b49137) | [net] | flow_dissector: properly cap thoff field |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.15 | [`8c418b5b1574`](https://git.kernel.org/torvalds/c/8c418b5b1574) | [net] | fq: support filtering a given tin |  | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | 4.15 | [`981542c526ec`](https://git.kernel.org/torvalds/c/981542c526ec) | [net] | gre6: use log_ecn_error module parameter in ip6_tnl_rcv() |  | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | 4.15 | [`121d57af308d`](https://git.kernel.org/torvalds/c/121d57af308d) | [net] | gso: validate gso_type in GSO handlers |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 4.15 | [`375ef2b1f0d0`](https://git.kernel.org/torvalds/c/375ef2b1f0d0) (loose) | [net] | Introduce netdev_*_once functions |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 4.15 | [`383c1f88759b`](https://git.kernel.org/torvalds/c/383c1f88759b) | [net] | ip6_tunnel: add the process for redirect in ip6_tnl_err |  | generic code, tag [net] | 3.10.0-867 |
| CANDIDATE | 4.15 | [`2fa771be953a`](https://git.kernel.org/torvalds/c/2fa771be953a) | [net] | ip6_tunnel: allow ip6gre dev mtu to be set below 1280 |  | generic code, tag [net] | 3.10.0-930 |
| CANDIDATE | 4.15 | [`77552cfa39c4`](https://git.kernel.org/torvalds/c/77552cfa39c4) | [net] | ip6_tunnel: clean up ip4ip6 and ip6ip6's err_handlers |  | generic code, tag [net] | 3.10.0-867 |
| CANDIDATE | 4.15 | [`c9fefa08190f`](https://git.kernel.org/torvalds/c/c9fefa08190f) | [net] | ip6_tunnel: get the min mtu properly in ip6_tnl_xmit |  | generic code, tag [net] | 3.10.0-925 |
| CANDIDATE | 4.15 | [`b00f543240b9`](https://git.kernel.org/torvalds/c/b00f543240b9) | [net] | ip6_tunnel: process toobig in a better way |  | generic code, tag [net] | 3.10.0-867 |
| CANDIDATE | 4.15 | [`4d65b9487831`](https://git.kernel.org/torvalds/c/4d65b9487831) | [net] | ipmr: Add FIB notification access functions |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.15 | [`c7c0bbeae950`](https://git.kernel.org/torvalds/c/c7c0bbeae950) (loose) | [net] | ipmr: Add MFC offload indication |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.15 | [`310ebbba3b73`](https://git.kernel.org/torvalds/c/310ebbba3b73) | [net] | ipmr: Add reference count to MFC entries |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.15 | [`b362053a7cc0`](https://git.kernel.org/torvalds/c/b362053a7cc0) | [net] | ipmr: Send FIB notifications on MFC and VIF entries |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.15 | [`d03a45572efa`](https://git.kernel.org/torvalds/c/d03a45572efa) | [net] | ipv4: fib: Fix metrics match when deleting a route |  | generic code, tag [net] | 3.10.0-842 |
| CANDIDATE | 4.15 | [`b4681c2829e2`](https://git.kernel.org/torvalds/c/b4681c2829e2) | [net] | ipv4: Fix use-after-free when flushing FIB tables |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.15 | [`5d8b3e69fc5e`](https://git.kernel.org/torvalds/c/5d8b3e69fc5e) | [net] | ipv4: ipmr: Add the parent ID field to VIF struct |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.15 | [`a5bc9294d70f`](https://git.kernel.org/torvalds/c/a5bc9294d70f) | [net] | ipv4: ipmr: Don't forward packets already forwarded by hardware |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.15 | [`3ae6ec08292f`](https://git.kernel.org/torvalds/c/3ae6ec08292f) | [net] | ipv4: Send a netevent whenever multipath hash policy is changed |  | generic code, tag [net] | 3.10.0-906 |
| CANDIDATE | 4.15 | [`f3d9832e56c4`](https://git.kernel.org/torvalds/c/f3d9832e56c4) | [net] | ipv6: addrconf: cleanup locking in ipv6_add_addr |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.15 | [`fffcefe967a0`](https://git.kernel.org/torvalds/c/fffcefe967a0) | [net] | ipv6: addrconf: fix a lockdep splat |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.15 | [`ff7883ea60e7`](https://git.kernel.org/torvalds/c/ff7883ea60e7) (loose) | [net] | ipv6: Make inet6addr_validator a blocking notifier |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.15 | [`1859bac04fb6`](https://git.kernel.org/torvalds/c/1859bac04fb6) | [net] | ipv6: remove from fib tree aged out RTF_CACHE dst |  | generic code, tag [net] | 3.10.0-770 |
| CANDIDATE | 4.15 | [`1f372c7bfb23`](https://git.kernel.org/torvalds/c/1f372c7bfb23) (loose) | [net] | ipv6: send NS for DAD when link operationally up |  | generic code, tag [net] | 3.10.0-937 |
| CANDIDATE | 4.15 | [`094009531612`](https://git.kernel.org/torvalds/c/094009531612) | [net] | ipv6: set all.accept_dad to 0 by default |  | generic code, tag [net] | 3.10.0-829 |
| CANDIDATE | 4.15 | [`22ce97fe49b5`](https://git.kernel.org/torvalds/c/22ce97fe49b5) | [net] | mqprio: fix potential null pointer dereference on opt |  | generic code, tag [net] | 3.10.0-878 |
| CANDIDATE | 4.15 | [`4e8b86c06269`](https://git.kernel.org/torvalds/c/4e8b86c06269) | [net] | mqprio: Introduce new hardware offload mode and shaper in mqprio |  | generic code, tag [net] | 3.10.0-878 |
| CANDIDATE | 4.15 | [`32302902ff09`](https://git.kernel.org/torvalds/c/32302902ff09) | [net] | mqprio: Reserve last 32 classid values for HW traffic classes and misc IDs |  | generic code, tag [net] | 3.10.0-898 |
| CANDIDATE | 4.15 | [`478e4c2f0067`](https://git.kernel.org/torvalds/c/478e4c2f0067) (loose) | [net] | mroute: Check if rule is a default rule |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.15 | [`4b380c42f7d0`](https://git.kernel.org/torvalds/c/4b380c42f7d0) | [net] | netfilter: nfnetlink_cthelper: Add missing permission checks | CVE-2017-17448 | CONFIG_NETFILTER=y in A37 | 3.10.0-850 |
| CANDIDATE | 4.15 | [`4c82fd0abb87`](https://git.kernel.org/torvalds/c/4c82fd0abb87) | [net] | netfilter: uapi: correct UNTRACKED conntrack state bit number |  | CONFIG_NETFILTER=y in A37 | 3.10.0-829 |
| CANDIDATE | 4.15 | [`d13e7b2e65f6`](https://git.kernel.org/torvalds/c/d13e7b2e65f6) | [net] | netfilter: x_tables: don't use seqlock when fetching old counters |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-767 |
| CANDIDATE | 4.15 | [`80055dab5de0`](https://git.kernel.org/torvalds/c/80055dab5de0) | [net] | netfilter: x_tables: make xt_replace_table wait until old rules are not used anymore |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-767 |
| CANDIDATE | 4.15 | [`6ab405114b0b`](https://git.kernel.org/torvalds/c/6ab405114b0b) | [net] | netfilter: xt_bpf: add overflow checks |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.15 | [`916a27901de0`](https://git.kernel.org/torvalds/c/916a27901de0) | [net] | netfilter: xt_osf: Add missing permission checks | CVE-2017-17448 | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-850 |
| CANDIDATE | 4.15 | [`93c647643b48`](https://git.kernel.org/torvalds/c/93c647643b48) | [net] | netlink: Add netns check on taps | CVE-2017-17449 | generic code, tag [net] | 3.10.0-850 |
| CANDIDATE | 4.15 | [`02612bb05e51`](https://git.kernel.org/torvalds/c/02612bb05e51) | [net] | pppoe: take ->needed_headroom of lower device into account on xmit |  | CONFIG_PPP=y in A37 | 3.10.0-980 |
| CANDIDATE | 4.15 | [`e94cd8113ce6`](https://git.kernel.org/torvalds/c/e94cd8113ce6) (loose) | [net] | remove MTU limits for dummy and ifb device |  | generic code, tag [net] | 3.10.0-829 |
| CANDIDATE | 4.15 | [`242c1a28eb61`](https://git.kernel.org/torvalds/c/242c1a28eb61) (loose) | [net] | Remove useless function skb_header_release |  | generic code, tag [net] | 3.10.0-897 |
| CANDIDATE | 4.15 | [`cebe84c6190d`](https://git.kernel.org/torvalds/c/cebe84c6190d) | [net] | route: also update fnhe_genid when updating a route cache |  | generic code, tag [net] | 3.10.0-867 |
| CANDIDATE | 4.15 | [`e39d52461113`](https://git.kernel.org/torvalds/c/e39d52461113) | [net] | route: update fnhe_expires for redirect when the fnhe exists |  | generic code, tag [net] | 3.10.0-867 |
| CANDIDATE | 4.15 | [`79110a0426d8`](https://git.kernel.org/torvalds/c/79110a0426d8) | [net] | rtnetlink: add helper to put master and link ifindexes |  | generic code, tag [net] | 3.10.0-1051 |
| CANDIDATE | 4.15 | [`b1e66b9a67d6`](https://git.kernel.org/torvalds/c/b1e66b9a67d6) | [net] | rtnetlink: add helpers to dump netnsid information |  | generic code, tag [net] | 3.10.0-1051 |
| CANDIDATE | 4.15 | [`eeda3fb9e132`](https://git.kernel.org/torvalds/c/eeda3fb9e132) | [net] | rtnetlink: bring NETDEV_CHANGELOWERSTATE event process back to rtnetlink_event |  | generic code, tag [net] | 3.10.0-797 |
| CANDIDATE | 4.15 | [`03ac738d5cf2`](https://git.kernel.org/torvalds/c/03ac738d5cf2) | [net] | rtnetlink: fix missing size for IFLA_IF_NETNSID |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 4.15 | [`f428fe4a04cc`](https://git.kernel.org/torvalds/c/f428fe4a04cc) | [net] | rtnetlink: give a user socket to get_target_net() | CVE-2018-14646 | generic code, tag [net] | 3.10.0-970 |
| CANDIDATE | 4.15 | [`79e1ad148c84`](https://git.kernel.org/torvalds/c/79e1ad148c84) | [net] | rtnetlink: use netnsid to query interface |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | 4.15 | [`029e1ea65e37`](https://git.kernel.org/torvalds/c/029e1ea65e37) | [net] | samples/pktgen: add script pktgen_sample06_numa_awared_queue_irq_affinity.sh |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.15 | [`22ac5ad4a7d4`](https://git.kernel.org/torvalds/c/22ac5ad4a7d4) | [net] | samples/pktgen: Add some helper functions |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.15 | [`a4b6ade8359f`](https://git.kernel.org/torvalds/c/a4b6ade8359f) | [net] | samples/pktgen: remove remaining old pktgen sample scripts |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.15 | [`9efc44d74b58`](https://git.kernel.org/torvalds/c/9efc44d74b58) | [net] | samples/pktgen: update sample03, no need for clones when bursting |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.15 | [`8c4083b30e56`](https://git.kernel.org/torvalds/c/8c4083b30e56) (loose) | [net] | sched: add block bind/unbind notif. and extended block_get/put |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`7a4fa29106d9`](https://git.kernel.org/torvalds/c/7a4fa29106d9) (loose) | [net] | sched: Add TCA_HW_OFFLOAD |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.15 | [`8d26d5636dff`](https://git.kernel.org/torvalds/c/8d26d5636dff) (loose) | [net] | sched: avoid ndo_setup_tc calls for TC_SETUP_CLS* |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`d51aae68b142`](https://git.kernel.org/torvalds/c/d51aae68b142) (loose) | [net] | sched: cbq: create block for q->link.block |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-829 |
| CANDIDATE | 4.15 | [`245dc5121a9b`](https://git.kernel.org/torvalds/c/245dc5121a9b) (loose) | [net] | sched: cls_u32: call block callbacks for offload |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`77460411929d`](https://git.kernel.org/torvalds/c/77460411929d) (loose) | [net] | sched: cls_u32: swap u32_remove_hw_knode and u32_remove_hw_hnode |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`0f04d0575152`](https://git.kernel.org/torvalds/c/0f04d0575152) (loose) | [net] | sched: cls_u32: use bitwise & rather than logical && on n->flags |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`7fa9d974f3c2`](https://git.kernel.org/torvalds/c/7fa9d974f3c2) (loose) | [net] | sched: cls_u32: use block instead of q in tc_u_common |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`d18b4b35e310`](https://git.kernel.org/torvalds/c/d18b4b35e310) (loose) | [net] | sched: cls_u32: use hash_ptr() for tc_u_hash |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`717503b9cf57`](https://git.kernel.org/torvalds/c/717503b9cf57) (loose) | [net] | sched: convert cls_flower->egress_dev users to tc_setup_cb_egdev infra |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-882 |
| CANDIDATE | 4.15 | [`a60b3f515d30`](https://git.kernel.org/torvalds/c/a60b3f515d30) (loose) | [net] | sched: crash on blocks with goto chain action |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.15 | [`c1954561cd26`](https://git.kernel.org/torvalds/c/c1954561cd26) (loose) | [net] | sched: ematch: obtain net pointer from blocks |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`343723dd51ef`](https://git.kernel.org/torvalds/c/343723dd51ef) (loose) | [net] | sched: fix clsact init error path |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`d7aa04a5e82b`](https://git.kernel.org/torvalds/c/d7aa04a5e82b) (loose) | [net] | sched: fix crash when deleting secondary chains |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.15 | [`4853f128c13e`](https://git.kernel.org/torvalds/c/4853f128c13e) (loose) | [net] | sched: fix possible null pointer deref in tcf_block_put |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`b59e6979a863`](https://git.kernel.org/torvalds/c/b59e6979a863) (loose) | [net] | sched: fix static key imbalance in case of ingress/clsact_init error |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`384c181e3780`](https://git.kernel.org/torvalds/c/384c181e3780) (loose) | [net] | sched: Identify hardware traffic classes using classid |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-898 |
| CANDIDATE | 4.15 | [`c7eb7d723050`](https://git.kernel.org/torvalds/c/c7eb7d723050) (loose) | [net] | sched: introduce chain_head_change callback |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`3b8e9238a8d1`](https://git.kernel.org/torvalds/c/3b8e9238a8d1) (loose) | [net] | sched: introduce helper to identify gact pass action |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-882 |
| CANDIDATE | 4.15 | [`acb674428c3d`](https://git.kernel.org/torvalds/c/acb674428c3d) (loose) | [net] | sched: introduce per-block callbacks |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`b3f55bdda8df`](https://git.kernel.org/torvalds/c/b3f55bdda8df) (loose) | [net] | sched: introduce per-egress action device callbacks |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-882 |
| CANDIDATE | 4.15 | [`44186460c85a`](https://git.kernel.org/torvalds/c/44186460c85a) (loose) | [net] | sched: introduce tcf_block_q and tcf_block_dev helpers |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`843e79d05add`](https://git.kernel.org/torvalds/c/843e79d05add) (loose) | [net] | sched: make tc_action_ops->get_dev return dev and avoid passing net |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-882 |
| CANDIDATE | 4.15 | [`4bb1b116b7f3`](https://git.kernel.org/torvalds/c/4bb1b116b7f3) (loose) | [net] | sched: move block offload unbind after all chains are flushed |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`44ae12a768b7`](https://git.kernel.org/torvalds/c/44ae12a768b7) (loose) | [net] | sched: move the can_offload check from binding phase to rule insertion phase |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`428a68af3a7c`](https://git.kernel.org/torvalds/c/428a68af3a7c) (loose) | [net] | sched: Move to new offload indication in RED |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.15 | [`a10fa20101ae`](https://git.kernel.org/torvalds/c/a10fa20101ae) (loose) | [net] | sched: propagate q and parent from caller down to tcf_fill_node |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`70b5aee46782`](https://git.kernel.org/torvalds/c/70b5aee46782) (loose) | [net] | sched: remove ndo_setup_tc check from tc_can_offload |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`7612fb0387d6`](https://git.kernel.org/torvalds/c/7612fb0387d6) (loose) | [net] | sched: remove tc_can_offload check from egdev call |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`d58d31a11869`](https://git.kernel.org/torvalds/c/d58d31a11869) (loose) | [net] | sched: remove unused classid field from tc_cls_common_offload |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`fa71212e9181`](https://git.kernel.org/torvalds/c/fa71212e9181) (loose) | [net] | sched: remove unused is_classid_clsact_ingress/egress helpers |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`0b5a89caee5c`](https://git.kernel.org/torvalds/c/0b5a89caee5c) (loose) | [net] | sched: remove unused tc_should_offload helper |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`7578d7b45ed8`](https://git.kernel.org/torvalds/c/7578d7b45ed8) (loose) | [net] | sched: remove unused tcf_exts_get_dev helper and cls_flower->egress_dev |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-882 |
| CANDIDATE | 4.15 | [`855319becbcf`](https://git.kernel.org/torvalds/c/855319becbcf) (loose) | [net] | sched: store net pointer in block and introduce qdisc_net helper |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`69d78ef25c7b`](https://git.kernel.org/torvalds/c/69d78ef25c7b) (loose) | [net] | sched: store Qdisc pointer in struct block |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`1abf272022cf`](https://git.kernel.org/torvalds/c/1abf272022cf) (loose) | [net] | sched: tcindex, fw, flow: use tcf_block_q helper to get struct Qdisc |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`34e3759cf86a`](https://git.kernel.org/torvalds/c/34e3759cf86a) (loose) | [net] | sched: teach tcf_bind/unbind_filter to use block->q |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`6e40cf2d4dee`](https://git.kernel.org/torvalds/c/6e40cf2d4dee) (loose) | [net] | sched: use extended variants of block_get/put in ingress and clsact qdiscs |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`208c0f4b5237`](https://git.kernel.org/torvalds/c/208c0f4b5237) (loose) | [net] | sched: use tc_setup_cb_call to call per-block callbacks |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`74e3be6021d2`](https://git.kernel.org/torvalds/c/74e3be6021d2) (loose) | [net] | sched: use tcf_block_q helper to get q pointer for sch_tree_lock |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.15 | [`f859b4af1c52`](https://git.kernel.org/torvalds/c/f859b4af1c52) | [net] | sit: update frag_off info |  | CONFIG_IPV6_SIT=y in A37 | 3.10.0-829 |
| CANDIDATE | 4.15 | [`abf4bb6b63d0`](https://git.kernel.org/torvalds/c/abf4bb6b63d0) | [net] | skbuff: Add the offload_mr_fwd_mark field |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.15 | [`7c90584c66cc`](https://git.kernel.org/torvalds/c/7c90584c66cc) (loose) | [net] | speed up skb_rbtree_purge() | CVE-2018-5391 | generic code, tag [net] | 3.10.0-947 |
| CANDIDATE | 4.15 | [`f33198163a0f`](https://git.kernel.org/torvalds/c/f33198163a0f) | [net] | tcp: pass previous skb to tcp_shifted_skb() | CVE-2019-11477 | generic code, tag [net] | 3.10.0-1058 |
| CANDIDATE | 4.15 | [`81d98fa4df3d`](https://git.kernel.org/torvalds/c/81d98fa4df3d) | [net] | tun: avoid extra timer schedule in tun_flow_cleanup() |  | CONFIG_TUN=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.15 | [`ee74d9967b82`](https://git.kernel.org/torvalds/c/ee74d9967b82) | [net] | tun: do not arm flow_gc_timer in tun_flow_init() |  | CONFIG_TUN=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.15 | [`7dbfb4ef77db`](https://git.kernel.org/torvalds/c/7dbfb4ef77db) | [net] | tun: do not block BH again in tun_flow_cleanup() |  | CONFIG_TUN=y in A37 | 3.10.0-818 |
| CANDIDATE | 4.15 | [`ddc47e4404b5`](https://git.kernel.org/torvalds/c/ddc47e4404b5) | [net] | xfrm: Fix stack-out-of-bounds read on socket policy lookup |  | CONFIG_XFRM=y in A37 | 3.10.0-927 |
| CANDIDATE | 4.15 | [`5e708e47c443`](https://git.kernel.org/torvalds/c/5e708e47c443) | [net] | xfrm: make xfrm_replay_state_esn_len() return unsigned int |  | CONFIG_XFRM=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.15 | [`acf568ee859f`](https://git.kernel.org/torvalds/c/acf568ee859f) | [net] | xfrm: Reinject transport-mode packets through tasklet |  | CONFIG_XFRM=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.15 | [`bcfd09f7837f`](https://git.kernel.org/torvalds/c/bcfd09f7837f) | [net] | xfrm: Return error on unknown encap_type in init_state |  | CONFIG_XFRM=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.15 | [`d16b46e4fd8b`](https://git.kernel.org/torvalds/c/d16b46e4fd8b) | [net] | xfrm: Use __skb_queue_tail in xfrm_trans_queue |  | CONFIG_XFRM=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.16 | [`8d74e9f88d65`](https://git.kernel.org/torvalds/c/8d74e9f88d65) (loose) | [net] | avoid skb_warn_bad_offload on IS_ERR |  | generic code, tag [net] | 3.10.0-947 |
| CANDIDATE | 4.16 | [`fa9dd599b4da`](https://git.kernel.org/torvalds/c/fa9dd599b4da) | [net] | bpf: get rid of pure_initcall dependency to enable jits |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-934 |
| CANDIDATE | 4.16 | [`1b12580af1d0`](https://git.kernel.org/torvalds/c/1b12580af1d0) | [net] | bridge: check brport attr show in brport_show |  | CONFIG_BRIDGE=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.16 | [`97bbf6623ebe`](https://git.kernel.org/torvalds/c/97bbf6623ebe) (loose) | [net] | Clarify dev_weight documentation for LRO and GRO_HW |  | generic code, tag [net] | 3.10.0-867 |
| CANDIDATE | 4.16 | [`d7cdee5ea8d2`](https://git.kernel.org/torvalds/c/d7cdee5ea8d2) | [net] | cls_u32: fix use after free in u32_destroy_key() |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-850 |
| CANDIDATE | 4.16 | [`2b16f048729b`](https://git.kernel.org/torvalds/c/2b16f048729b) (loose) | [net] | create skb_gso_validate_mac_len() | CVE-2018-1000026 | generic code, tag [net] | 3.10.0-941 |
| CANDIDATE | 4.16 | [`38e01b30563a`](https://git.kernel.org/torvalds/c/38e01b30563a) | [net] | dev: advertise the new ifindex when the netns iface changes |  | generic code, tag [net] | 3.10.0-940 |
| CANDIDATE | 4.16 | [`c36ac8e23073`](https://git.kernel.org/torvalds/c/c36ac8e23073) | [net] | dev: always advertise the new nsid when the netns iface changes |  | generic code, tag [net] | 3.10.0-940 |
| CANDIDATE | 4.16 | [`a67708892283`](https://git.kernel.org/torvalds/c/a67708892283) | [net] | docs: segmentation-offloads.txt: add SCTP info |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 4.16 | [`d2ee7973c376`](https://git.kernel.org/torvalds/c/d2ee7973c376) | [net] | documentation/pktgen: Clearify how-to use pktgen samples |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.16 | [`37e2d99b59c4`](https://git.kernel.org/torvalds/c/37e2d99b59c4) | [net] | ethtool: Ensure new ring parameters are within bounds during SRINGPARAM |  | generic code, tag [net] | 3.10.0-937 |
| CANDIDATE | 4.16 | [`a8c6db1dfd1b`](https://git.kernel.org/torvalds/c/a8c6db1dfd1b) | [net] | fib_semantics: Don't match route with mismatching tclassid |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 4.16 | [`72dd831e24cc`](https://git.kernel.org/torvalds/c/72dd831e24cc) (loose) | [net] | Fix netdev_WARN_ONCE macro |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 4.16 | [`1dfe82ebd7d8`](https://git.kernel.org/torvalds/c/1dfe82ebd7d8) (loose) | [net] | fix possible out-of-bound read in skb_network_protocol() |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.16 | [`ac5b70198adc`](https://git.kernel.org/torvalds/c/ac5b70198adc) (loose) | [net] | fix race on decreasing number of TX queues |  | generic code, tag [net] | 3.10.0-991 |
| CANDIDATE | 4.16 | [`62b32379fd12`](https://git.kernel.org/torvalds/c/62b32379fd12) | [net] | flow_dissector: dissect tunnel info outside __skb_flow_dissect() |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.16 | [`fb1f5f79ae96`](https://git.kernel.org/torvalds/c/fb1f5f79ae96) (loose) | [net] | Introduce NETIF_F_GRO_HW |  | generic code, tag [net] | 3.10.0-867 |
| CANDIDATE | 4.16 | [`a6aa80446234`](https://git.kernel.org/torvalds/c/a6aa80446234) | [net] | ip6_tunnel: fix IFLA_MTU ignored on NEWLINK |  | generic code, tag [net] | 3.10.0-867 |
| CANDIDATE | 4.16 | [`53c81e95df17`](https://git.kernel.org/torvalds/c/53c81e95df17) | [net] | ip6_vti: adjust vti mtu according to mtu of lower device |  | CONFIG_XFRM=y in A37 | 3.10.0-871 |
| CANDIDATE | 4.16 | [`24fc79798b8d`](https://git.kernel.org/torvalds/c/24fc79798b8d) | [net] | ip_tunnel: Clamp MTU to bounds on new link |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 4.16 | [`f6cc9c054e77`](https://git.kernel.org/torvalds/c/f6cc9c054e77) | [net] | ip_tunnel: Emit events for post-register MTU changes |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.16 | [`773daa3caf5d`](https://git.kernel.org/torvalds/c/773daa3caf5d) (loose) | [net] | ipv4: avoid unused variable warning for sysctl |  | generic code, tag [net] | 3.10.0-867 |
| CANDIDATE | 4.16 | [`c7272c2f1229`](https://git.kernel.org/torvalds/c/c7272c2f1229) (loose) | [net] | ipv4: don't allow setting net.ipv4.route.min_pmtu below 68 |  | generic code, tag [net] | 3.10.0-867 |
| CANDIDATE | 4.16 | [`d52e5a7e7ca4`](https://git.kernel.org/torvalds/c/d52e5a7e7ca4) | [net] | ipv4: lock mtu in fnhe when received PMTU < net.ipv4.route.min_pmtu |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.16 | [`e64e469b9a2c`](https://git.kernel.org/torvalds/c/e64e469b9a2c) | [net] | ipv6: addrconf: break critical section in addrconf_verify_rtnl() |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.16 | [`9f62c15f28b0`](https://git.kernel.org/torvalds/c/9f62c15f28b0) | [net] | ipv6: fix access to non-linear packet in ndisc_fill_redirect_hdr_option() |  | generic code, tag [net] | 3.10.0-878 |
| CANDIDATE | 4.16 | [`e9fa1495d738`](https://git.kernel.org/torvalds/c/e9fa1495d738) | [net] | ipv6: Reflect MTU changes on PMTU of exceptions for MTU-less routes |  | generic code, tag [net] | 3.10.0-889 |
| CANDIDATE | 4.16 | [`c76fe2d98c72`](https://git.kernel.org/torvalds/c/c76fe2d98c72) (loose) | [net] | ipv6: send unsolicited NA after DAD |  | generic code, tag [net] | 3.10.0-937 |
| CANDIDATE | 4.16 | [`10b8a3de603d`](https://git.kernel.org/torvalds/c/10b8a3de603d) | [net] | ipv6: the entire IPv6 header chain must fit the first fragment |  | generic code, tag [net] | 3.10.0-878 |
| CANDIDATE | 4.16 | [`17cfe79a65f9`](https://git.kernel.org/torvalds/c/17cfe79a65f9) | [net] | l2tp: do not accept arbitrary sockets |  | CONFIG_L2TP=y in A37 | 3.10.0-1096 |
| CANDIDATE | 4.16 | [`c4585a2823ed`](https://git.kernel.org/torvalds/c/c4585a2823ed) | [net] | netfilter: bridge: ebt_among: add missing match size checks | CVE-2018-1068 | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-866 |
| CANDIDATE | 4.16 | [`c8d70a700a5b`](https://git.kernel.org/torvalds/c/c8d70a700a5b) | [net] | netfilter: bridge: ebt_among: add more missing match size checks | CVE-2018-1068 | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-866 |
| CANDIDATE | 4.16 | [`01ea306f2ac2`](https://git.kernel.org/torvalds/c/01ea306f2ac2) | [net] | netfilter: drop outermost socket lock in getsockopt() |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.16 | [`b71812168571`](https://git.kernel.org/torvalds/c/b71812168571) | [net] | netfilter: ebtables: CONFIG_COMPAT: don't trust userland offsets | CVE-2018-1068 | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-866 |
| CANDIDATE | 4.16 | [`932909d9b28d`](https://git.kernel.org/torvalds/c/932909d9b28d) | [net] | netfilter: ebtables: fix erroneous reject of last rule | CVE-2018-1068 | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-866 |
| CANDIDATE | 4.16 | [`cfc2c7405333`](https://git.kernel.org/torvalds/c/cfc2c7405333) | [net] | netfilter: IDLETIMER: be syzkaller friendly |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.16 | [`b078556aecd7`](https://git.kernel.org/torvalds/c/b078556aecd7) | [net] | netfilter: ipv6: fix use-after-free Write in nf_nat_ipv6_manip_pkt |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.16 | [`e8542dcec002`](https://git.kernel.org/torvalds/c/e8542dcec002) | [net] | netfilter: mark expected switch fall-throughs |  | CONFIG_NETFILTER=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.16 | [`db57ccf0f2f4`](https://git.kernel.org/torvalds/c/db57ccf0f2f4) | [net] | netfilter: nat: cope with negative port range |  | CONFIG_NF_NAT=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.16 | [`3f34cfae1238`](https://git.kernel.org/torvalds/c/3f34cfae1238) | [net] | netfilter: on sockopt() acquire sock lock only in the required scope |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.16 | [`7d98386d55a5`](https://git.kernel.org/torvalds/c/7d98386d55a5) | [net] | netfilter: use skb_to_full_sk in ip6_route_me_harder |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.16 | [`b1d0a5d0cba4`](https://git.kernel.org/torvalds/c/b1d0a5d0cba4) | [net] | netfilter: x_tables: add and use xt_check_proc_name |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.16 | [`10414014bc08`](https://git.kernel.org/torvalds/c/10414014bc08) | [net] | netfilter: x_tables: fix missing timer initialization in xt_LED |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.16 | [`7dc68e98757a`](https://git.kernel.org/torvalds/c/7dc68e98757a) | [net] | netfilter: xt_RATEEST: acquire xt_rateest_mutex for hash insert |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.16 | [`c82b31c5f560`](https://git.kernel.org/torvalds/c/c82b31c5f560) | [net] | netfilter: xt_set: use pr ratelimiting |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.16 | [`cb9f7a9a5c96`](https://git.kernel.org/torvalds/c/cb9f7a9a5c96) | [net] | netlink: ensure to loop over all netns in genlmsg_multicast_allns() |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.16 | [`7880287981b6`](https://git.kernel.org/torvalds/c/7880287981b6) | [net] | netlink: make sure nladdr has correct size in netlink_connect() |  | generic code, tag [net] | 3.10.0-1144 |
| CANDIDATE | 4.16 | [`259d8c1e9843`](https://git.kernel.org/torvalds/c/259d8c1e9843) | [net] | nl80211: Sanitize array index in parse_txq_params | CVE-2018-3693 | CONFIG_CFG80211=y in A37 | 3.10.0-932 |
| CANDIDATE | 4.16 | [`e1cfe3d0eb04`](https://git.kernel.org/torvalds/c/e1cfe3d0eb04) (loose) | [net] | No line break on netdev_WARN* formatting |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 4.16 | [`878db9f0f26d`](https://git.kernel.org/torvalds/c/878db9f0f26d) | [net] | pkt_cls: add new tc cls helper to check offload flag and chain index |  | generic code, tag [net] | 3.10.0-898 |
| CANDIDATE | 4.16 | [`51ab2994c387`](https://git.kernel.org/torvalds/c/51ab2994c387) (loose) | [net] | sched: allow ingress and clsact qdiscs to share filter blocks |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.16 | [`9d3aaff3d852`](https://git.kernel.org/torvalds/c/9d3aaff3d852) (loose) | [net] | sched: avoid usage of tp->q in tcf_classify |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.16 | [`bb047ddd1458`](https://git.kernel.org/torvalds/c/bb047ddd1458) (loose) | [net] | sched: don't set q pointer for shared blocks |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.16 | [`339c21d7c459`](https://git.kernel.org/torvalds/c/339c21d7c459) (loose) | [net] | sched: fix tc_u_common lookup |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.16 | [`339c21d7c459`](https://git.kernel.org/torvalds/c/339c21d7c459) (loose) | [net] | sched: fix tc_u_common lookup |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | 4.16 | [`df45bf84e4f5`](https://git.kernel.org/torvalds/c/df45bf84e4f5) (loose) | [net] | sched: fix use-after-free in tcf_block_put_ext |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-842 |
| CANDIDATE | 4.16 | [`f36fe1c498c8`](https://git.kernel.org/torvalds/c/f36fe1c498c8) (loose) | [net] | sched: introduce block mechanism to handle netif_keep_dst calls |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.16 | [`d47a6b0e7c49`](https://git.kernel.org/torvalds/c/d47a6b0e7c49) (loose) | [net] | sched: introduce ingress/egress block index attributes for qdisc |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.16 | [`4861738775d7`](https://git.kernel.org/torvalds/c/4861738775d7) (loose) | [net] | sched: introduce shared filter blocks infrastructure |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.16 | [`a9b19443edba`](https://git.kernel.org/torvalds/c/a9b19443edba) (loose) | [net] | sched: introduce support for multiple filter chain pointers registration |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.16 | [`caa7260156eb`](https://git.kernel.org/torvalds/c/caa7260156eb) (loose) | [net] | sched: keep track of offloaded filters and check tc offload feature |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.16 | [`44edf2f89791`](https://git.kernel.org/torvalds/c/44edf2f89791) (loose) | [net] | sched: Move offload check till after dump call |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.16 | [`416ef9b15c68`](https://git.kernel.org/torvalds/c/416ef9b15c68) (loose) | [net] | sched: red: don't reset the backlog on every stat dump |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.16 | [`edf6711c9840`](https://git.kernel.org/torvalds/c/edf6711c9840) (loose) | [net] | sched: remove classid and q fields from tcf_proto |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.16 | [`d680b3524cd2`](https://git.kernel.org/torvalds/c/d680b3524cd2) (loose) | [net] | sched: silence uninitialized parent variable warning in tc_dump_tfilter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.16 | [`7960d1daf278`](https://git.kernel.org/torvalds/c/7960d1daf278) (loose) | [net] | sched: use block index as a handle instead of qdisc when block is shared |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.16 | [`2b3957c34b6d`](https://git.kernel.org/torvalds/c/2b3957c34b6d) | [net] | sit: fix IFLA_MTU ignored on NEWLINK |  | CONFIG_IPV6_SIT=y in A37 | 3.10.0-867 |
| CANDIDATE | 4.16 | [`bf2ae2e4bf93`](https://git.kernel.org/torvalds/c/bf2ae2e4bf93) | [net] | sock_diag: request _diag module only when the family or proto has been registered |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 4.16 | [`c8c9aeb51949`](https://git.kernel.org/torvalds/c/c8c9aeb51949) | [net] | tcp: Split BUG_ON() in tcp_tso_should_defer() into two assertions |  | generic code, tag [net] | 3.10.0-842 |
| CANDIDATE | 4.16 | [`15f35d49c93f`](https://git.kernel.org/torvalds/c/15f35d49c93f) | [net] | udplite: fix partial checksum initialization |  | generic code, tag [net] | 3.10.0-1085 |
| CANDIDATE | 4.16 | [`4dcb31d4649d`](https://git.kernel.org/torvalds/c/4dcb31d4649d) (loose) | [net] | use skb_to_full_sk() in skb_update_prio() |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.16 | [`03080e5ec727`](https://git.kernel.org/torvalds/c/03080e5ec727) | [net] | vti4: Don't override MTU passed on link creation via IFLA_MTU |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 4.16 | [`7a67e69a339a`](https://git.kernel.org/torvalds/c/7a67e69a339a) | [net] | vti6: Keep set MTU on link creation or change, validate it |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 4.16 | [`c6741fbed6dc`](https://git.kernel.org/torvalds/c/c6741fbed6dc) | [net] | vti6: Properly adjust vti6 MTU from MTU of lower device |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | 4.16 | [`aecd67b60722`](https://git.kernel.org/torvalds/c/aecd67b60722) | [net] | xdp: base API for new XDP rx-queue info concept |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-889 |
| CANDIDATE | 4.16 | [`e817f85652c1`](https://git.kernel.org/torvalds/c/e817f85652c1) | [net] | xdp: generic XDP handling of xdp_rxq_info |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.16 | [`9a3fb9fb84cc`](https://git.kernel.org/torvalds/c/9a3fb9fb84cc) | [net] | xfrm: Fix transport mode skb control buffer usage. |  | CONFIG_XFRM=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.16 | [`d97ca5d714a5`](https://git.kernel.org/torvalds/c/d97ca5d714a5) | [net] | xfrm_user: uncoditionally validate esn replay attribute struct |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.17 | [`19d3577e35e0`](https://git.kernel.org/torvalds/c/19d3577e35e0) | [net] | cfg80211: Add API to allow querying regdb for wmm_rule |  | CONFIG_CFG80211=y in A37 | 3.10.0-932 |
| CANDIDATE | 4.17 | [`5bf16a11ba29`](https://git.kernel.org/torvalds/c/5bf16a11ba29) | [net] | cfg80211: don't require RTNL held for regdomain reads |  | CONFIG_CFG80211=y in A37 | 3.10.0-932 |
| CANDIDATE | 4.17 | [`5247a77ced2d`](https://git.kernel.org/torvalds/c/5247a77ced2d) | [net] | cfg80211: fix NULL pointer derference when querying regdb |  | CONFIG_CFG80211=y in A37 | 3.10.0-932 |
| CANDIDATE | 4.17 | [`83826469e36b`](https://git.kernel.org/torvalds/c/83826469e36b) | [net] | cfg80211: fix possible memory leak in regdb_query_country() |  | CONFIG_CFG80211=y in A37 | 3.10.0-932 |
| CANDIDATE | 4.17 | [`230ebaa189af`](https://git.kernel.org/torvalds/c/230ebaa189af) | [net] | cfg80211: read wmm rules from regulatory database |  | CONFIG_CFG80211=y in A37 | 3.10.0-932 |
| CANDIDATE | 4.17 | [`2f0aaf7fb11c`](https://git.kernel.org/torvalds/c/2f0aaf7fb11c) | [net] | documentation: ip-sysctl.txt: clarify disable_ipv6 |  | generic code, tag [net] | 3.10.0-889 |
| CANDIDATE | 4.17 | [`e1577c1c881b`](https://git.kernel.org/torvalds/c/e1577c1c881b) | [net] | ethtool: Add support for configuring PFC stall prevention in ethtool |  | generic code, tag [net] | 3.10.0-980 |
| CANDIDATE | 4.17 | [`84a1d9c48200`](https://git.kernel.org/torvalds/c/84a1d9c48200) (loose) | [net] | ethtool: extend RXNFC API to support RSS spreading of filter matches |  | generic code, tag [net] | 3.10.0-889 |
| CANDIDATE | 4.17 | [`6358d49ac239`](https://git.kernel.org/torvalds/c/6358d49ac239) (loose) | [net] | Fix a bug in removing queues from XPS map |  | generic code, tag [net] | 3.10.0-1015 |
| CANDIDATE | 4.17 | [`9783ccd0f250`](https://git.kernel.org/torvalds/c/9783ccd0f250) (loose) | [net] | Fix one possible memleak in ip_setup_cork |  | generic code, tag [net] | 3.10.0-1148 |
| CANDIDATE | 4.17 | [`db7a65e3ab78`](https://git.kernel.org/torvalds/c/db7a65e3ab78) | [net] | ip6_tunnel: better validate user provided tunnel names |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.17 | [`9cb726a212a8`](https://git.kernel.org/torvalds/c/9cb726a212a8) | [net] | ip_tunnel: better validate user provided tunnel names |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.17 | [`b0066da52ea5`](https://git.kernel.org/torvalds/c/b0066da52ea5) | [net] | ip_tunnel: Rename & publish init_tunnel_flow |  | generic code, tag [net] | 3.10.0-906 |
| CANDIDATE | 4.17 | [`82612de1c98e`](https://git.kernel.org/torvalds/c/82612de1c98e) | [net] | ip_tunnel: restore binding to ifaces with a large mtu |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.17 | [`66fb33254f45`](https://git.kernel.org/torvalds/c/66fb33254f45) | [net] | ipmr: properly check rhltable_init() return value |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | 4.17 | [`94720e3aee68`](https://git.kernel.org/torvalds/c/94720e3aee68) | [net] | ipv4: fix fnhe usage by non-cached routes |  | generic code, tag [net] | 3.10.0-1131 |
| CANDIDATE | 4.17 | [`1b97013bfb11`](https://git.kernel.org/torvalds/c/1b97013bfb11) | [net] | ipv4: fix memory leaks in udp_sendmsg, ping_v4_sendmsg |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.17 | [`0e8411e426e2`](https://git.kernel.org/torvalds/c/0e8411e426e2) | [net] | ipv4: reset fnhe_mtu_locked after cache route flushed |  | generic code, tag [net] | 3.10.0-925 |
| CANDIDATE | 4.17 | [`aa8f8778493c`](https://git.kernel.org/torvalds/c/aa8f8778493c) | [net] | ipv6: add RTA_TABLE and RTA_PREFSRC to rtm_ipv6_policy |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.17 | [`f1c02cfb7b30`](https://git.kernel.org/torvalds/c/f1c02cfb7b30) | [net] | ipv6: allow userspace to add IFA_F_OPTIMISTIC addresses |  | generic code, tag [net] | 3.10.0-937 |
| CANDIDATE | 4.17 | [`428604fb118f`](https://git.kernel.org/torvalds/c/428604fb118f) | [net] | ipv6: do not set routes if disable_ipv6 has been enabled |  | generic code, tag [net] | 3.10.0-889 |
| CANDIDATE | 4.17 | [`b95211e066fc`](https://git.kernel.org/torvalds/c/b95211e066fc) | [net] | ipv6: sit: better validate user provided tunnel names |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.17 | [`eb1c28c05894`](https://git.kernel.org/torvalds/c/eb1c28c05894) | [net] | l2tp: check sockaddr length in pppol2tp_connect() |  | CONFIG_L2TP=y in A37 | 3.10.0-1096 |
| CANDIDATE | 4.17 | [`ede2762d93ff`](https://git.kernel.org/torvalds/c/ede2762d93ff) (loose) | [net] | Make NETDEV_XXX commands enum { } |  | generic code, tag [net] | 3.10.0-991 |
| CANDIDATE | 4.17 | [`de8d5ab2ff6e`](https://git.kernel.org/torvalds/c/de8d5ab2ff6e) (loose) | [net] | Make RX-FCS and HW GRO mutually exclusive |  | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | 4.17 | [`e6c6a9290521`](https://git.kernel.org/torvalds/c/e6c6a9290521) (loose) | [net] | Make RX-FCS and LRO mutually exclusive |  | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | 4.17 | [`6091f09c2f79`](https://git.kernel.org/torvalds/c/6091f09c2f79) | [net] | netlink: fix uninit-value in netlink_sendmsg |  | generic code, tag [net] | 3.10.0-1144 |
| CANDIDATE | 4.17 | [`3192dac64c73`](https://git.kernel.org/torvalds/c/3192dac64c73) (loose) | [net] | Rename NETEVENT_MULTIPATH_HASH_UPDATE |  | generic code, tag [net] | 3.10.0-906 |
| CANDIDATE | 4.17 | [`d68d75fdc34b`](https://git.kernel.org/torvalds/c/d68d75fdc34b) (loose) | [net] | sched: fix error path in tcf_proto_create() when modules are not configured |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1053 |
| CANDIDATE | 4.17 | [`44a63b137f7b`](https://git.kernel.org/torvalds/c/44a63b137f7b) (loose) | [net] | sched: red: avoid hashing NULL child |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.17 | [`989f881ebf77`](https://git.kernel.org/torvalds/c/989f881ebf77) | [net] | svc: Simplify ->xpo_secure_port |  | generic code, tag [net] | 3.10.0-975 |
| CANDIDATE | 4.17 | [`7e5a206ab686`](https://git.kernel.org/torvalds/c/7e5a206ab686) | [net] | tcp: don't read out-of-bounds opsize |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.17 | [`bf2acc943a45`](https://git.kernel.org/torvalds/c/bf2acc943a45) | [net] | tcp: fix TCP_REPAIR_QUEUE bound checking |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.17 | [`721230326891`](https://git.kernel.org/torvalds/c/721230326891) | [net] | tcp: md5: reject TCP_MD5SIG or TCP_MD5SIG_EXT on established sockets |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.17 | [`7f582b248d0a`](https://git.kernel.org/torvalds/c/7f582b248d0a) | [net] | tcp: purge write queue in tcp_connect_init() |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.17 | [`113f99c33585`](https://git.kernel.org/torvalds/c/113f99c33585) (loose) | [net] | test tailroom before appending to linear skb |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.17 | [`7063efd33bb1`](https://git.kernel.org/torvalds/c/7063efd33bb1) | [net] | tuntap: fix use after free during release |  | CONFIG_TUN=y in A37 | 3.10.0-1112 |
| CANDIDATE | 4.17 | [`4fe0de5b1437`](https://git.kernel.org/torvalds/c/4fe0de5b1437) | [net] | uapi: Add 802.11 Preauthentication to if_ether |  | generic code, tag [net] | 3.10.0-1093 |
| CANDIDATE | 4.17 | [`537b361fbcbc`](https://git.kernel.org/torvalds/c/537b361fbcbc) | [net] | vti6: better validate user provided tunnel names |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.17 | [`b4331a681822`](https://git.kernel.org/torvalds/c/b4331a681822) | [net] | vti6: Change minimum MTU to IPV4_MIN_MTU, vti6 can carry IPv4 too |  | generic code, tag [net] | 3.10.0-915 |
| CANDIDATE | 4.17 | [`d9f92772e8ec`](https://git.kernel.org/torvalds/c/d9f92772e8ec) | [net] | xfrm6: avoid potential infinite loop in _decode_session6() |  | CONFIG_XFRM=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.18 | [`e3760c7e50ac`](https://git.kernel.org/torvalds/c/e3760c7e50ac) (loose) | [net] | added netdevice operation for Tx |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.18 | [`fbfc504a24f5`](https://git.kernel.org/torvalds/c/fbfc504a24f5) | [net] | bpf: introduce new bpf AF_XDP map type BPF_MAP_TYPE_XSKMAP |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.18 | [`4a22b00b2886`](https://git.kernel.org/torvalds/c/4a22b00b2886) | [net] | cfg80211: fix spelling mistake: "uknown" -> "unknown" |  | CONFIG_CFG80211=y in A37 | 3.10.0-932 |
| CANDIDATE | 4.18 | [`8b7008620b84`](https://git.kernel.org/torvalds/c/8b7008620b84) (loose) | [net] | Don't copy pfmemalloc flag in __copy_skb_header() |  | generic code, tag [net] | 3.10.0-927 |
| CANDIDATE | 4.18 | [`b1d2e4e03f92`](https://git.kernel.org/torvalds/c/b1d2e4e03f92) | [net] | ifb: fix packets checksum |  | generic code, tag [net] | 3.10.0-915 |
| CANDIDATE | 4.18 | [`b87bac1012c4`](https://git.kernel.org/torvalds/c/b87bac1012c4) (loose) | [net] | igmp: make function __ip_mc_inc_group() static |  | generic code, tag [net] | 3.10.0-980 |
| CANDIDATE | 4.18 | [`30c8bd5aa8b2`](https://git.kernel.org/torvalds/c/30c8bd5aa8b2) (loose) | [net] | Introduce generic failover module |  | generic code, tag [net] | 3.10.0-1092 |
| CANDIDATE | 4.18 | [`82a40777de12`](https://git.kernel.org/torvalds/c/82a40777de12) | [net] | ip6_tunnel: use the right value for ipv4 min mtu check in ip6_tnl_xmit |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.18 | [`6e2059b53f98`](https://git.kernel.org/torvalds/c/6e2059b53f98) | [net] | ipv4/igmp: init group mode as INCLUDE when join source group |  | generic code, tag [net] | 3.10.0-930 |
| CANDIDATE | 4.18 | [`9fc12023d6f5`](https://git.kernel.org/torvalds/c/9fc12023d6f5) | [net] | ipv4: remove BUG_ON() from fib_compute_spec_dst |  | generic code, tag [net] | 3.10.0-944 |
| CANDIDATE | 4.18 | [`c7ea20c9da5b`](https://git.kernel.org/torvalds/c/c7ea20c9da5b) | [net] | ipv6/mcast: init as INCLUDE when join SSM INCLUDE group |  | generic code, tag [net] | 3.10.0-930 |
| CANDIDATE | 4.18 | [`0aef78aa7b39`](https://git.kernel.org/torvalds/c/0aef78aa7b39) | [net] | ipv6: addrconf: don't evaluate keep_addr_on_down twice |  | generic code, tag [net] | 3.10.0-906 |
| CANDIDATE | 4.18 | [`e66515999b62`](https://git.kernel.org/torvalds/c/e66515999b62) | [net] | ipv6: make DAD fail with enhanced DAD when nonce length differs |  | generic code, tag [net] | 3.10.0-937 |
| CANDIDATE | 4.18 | [`6c6da9280844`](https://git.kernel.org/torvalds/c/6c6da9280844) | [net] | ipv6: mcast: fix unsolicited report interval after receiving querys |  | generic code, tag [net] | 3.10.0-930 |
| CANDIDATE | 4.18 | [`a2d481b326c9`](https://git.kernel.org/torvalds/c/a2d481b326c9) | [net] | ipv6: send netlink notifications for manually configured addresses |  | generic code, tag [net] | 3.10.0-889 |
| CANDIDATE | 4.18 | [`3e1bc8bf974e`](https://git.kernel.org/torvalds/c/3e1bc8bf974e) | [net] | l2tp: prevent pppol2tp_connect() from creating kernel sockets |  | CONFIG_L2TP=y in A37 | 3.10.0-1096 |
| CANDIDATE | 4.18 | [`08d3ffcc0cfa`](https://git.kernel.org/torvalds/c/08d3ffcc0cfa) | [net] | multicast: do not restore deleted record source filter mode to new one |  | generic code, tag [net] | 3.10.0-930 |
| CANDIDATE | 4.18 | [`35b42da69e35`](https://git.kernel.org/torvalds/c/35b42da69e35) | [net] | net_sched: remove a bogus warning in hfsc |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1131 |
| CANDIDATE | 4.18 | [`aaa908ffbee1`](https://git.kernel.org/torvalds/c/aaa908ffbee1) | [net] | net_sched: switch to rcu_work |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1002 |
| CANDIDATE | 4.18 | [`ce00bf07cc95`](https://git.kernel.org/torvalds/c/ce00bf07cc95) | [net] | netfilter: nf_log: don't hold nf_log_mutex during user access |  | CONFIG_NETFILTER_NETLINK_LOG=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.18 | [`dffd22aed2aa`](https://git.kernel.org/torvalds/c/dffd22aed2aa) | [net] | netfilter: nf_log: fix uninit read in nf_log_proc_dostring |  | CONFIG_NETFILTER_NETLINK_LOG=y in A37 | 3.10.0-1134 |
| CANDIDATE | 4.18 | [`ba062ebb2cd5`](https://git.kernel.org/torvalds/c/ba062ebb2cd5) | [net] | netfilter: nf_queue: augment nfqa_cfg_policy |  | CONFIG_NETFILTER_NETLINK_QUEUE=y in A37 | 3.10.0-1093 |
| CANDIDATE | 4.18 | [`c568503ef020`](https://git.kernel.org/torvalds/c/c568503ef020) | [net] | netfilter: x_tables: initialise match/target check parameter struct |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.18 | [`ff7d6b27f894`](https://git.kernel.org/torvalds/c/ff7d6b27f894) | [net] | page_pool: refurbish version of page_pool code |  | generic code, tag [net] | 3.10.0-983 |
| CANDIDATE | 4.18 | [`8db0c433692e`](https://git.kernel.org/torvalds/c/8db0c433692e) | [net] | regulatory: Rename confusing 'country IE' in log output |  | generic code, tag [net] | 3.10.0-932 |
| CANDIDATE | 4.18 | [`c1c9a3c9663b`](https://git.kernel.org/torvalds/c/c1c9a3c9663b) (loose) | [net] | remove unnecessary genlmsg_cancel() calls |  | generic code, tag [net] | 3.10.0-991 |
| CANDIDATE | 4.18 | [`ff907a11a0d6`](https://git.kernel.org/torvalds/c/ff907a11a0d6) (loose) | [net] | skb_segment() should not return NULL |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.18 | [`e78bfb0751d4`](https://git.kernel.org/torvalds/c/e78bfb0751d4) | [net] | skbuff: Unconditionally copy pfmemalloc in __skb_clone() |  | generic code, tag [net] | 3.10.0-927 |
| CANDIDATE | 4.18 | [`00483690552c`](https://git.kernel.org/torvalds/c/00483690552c) | [net] | tcp: Add mark for TIMEWAIT sockets |  | generic code, tag [net] | 3.10.0-925 |
| CANDIDATE | 4.18 | [`58152ecbbcc6`](https://git.kernel.org/torvalds/c/58152ecbbcc6) | [net] | tcp: add tcp_ooo_try_coalesce() helper | CVE-2018-5390 | generic code, tag [net] | 3.10.0-932 |
| CANDIDATE | 4.18 | [`f4a3313d8e2c`](https://git.kernel.org/torvalds/c/f4a3313d8e2c) | [net] | tcp: avoid collapses in tcp_prune_queue() if possible | CVE-2018-5390 | generic code, tag [net] | 3.10.0-932 |
| CANDIDATE | 4.18 | [`8541b21e781a`](https://git.kernel.org/torvalds/c/8541b21e781a) | [net] | tcp: call tcp_drop() from tcp_data_queue_ofo() | CVE-2018-5390 | generic code, tag [net] | 3.10.0-932 |
| CANDIDATE | 4.18 | [`3d4bf93ac120`](https://git.kernel.org/torvalds/c/3d4bf93ac120) | [net] | tcp: detect malicious patterns in tcp_collapse_ofo_queue() | CVE-2018-5390 | generic code, tag [net] | 3.10.0-932 |
| CANDIDATE | 4.18 | [`72cd43ba64fc`](https://git.kernel.org/torvalds/c/72cd43ba64fc) | [net] | tcp: free batches of packets in tcp_prune_ofo_queue() | CVE-2018-5390 | generic code, tag [net] | 3.10.0-932 |
| CANDIDATE | 4.18 | [`1236f22fbae1`](https://git.kernel.org/torvalds/c/1236f22fbae1) | [net] | tcp: prevent bogus FRTO undos with non-SACK flows |  | generic code, tag [net] | 3.10.0-1146 |
| CANDIDATE | 4.18 | [`fd7becedb1f0`](https://git.kernel.org/torvalds/c/fd7becedb1f0) | [net] | treewide: Use array_size() in vzalloc_node() |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.18 | [`fd7becedb1f0`](https://git.kernel.org/torvalds/c/fd7becedb1f0) | [net] | treewide: Use array_size() in vzalloc_node() |  | generic code, tag [net] | 3.10.0-982 |
| CANDIDATE | 4.18 | [`d6990976af7c`](https://git.kernel.org/torvalds/c/d6990976af7c) | [net] | vti6: fix PMTU caching and reporting on xmit |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.18 | [`42b33468987b`](https://git.kernel.org/torvalds/c/42b33468987b) | [net] | xdp: add flags argument to ndo_xdp_xmit API |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.18 | [`02b55e5657c3`](https://git.kernel.org/torvalds/c/02b55e5657c3) | [net] | xdp: add MEM_TYPE_ZERO_COPY |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.18 | [`74515c5750f3`](https://git.kernel.org/torvalds/c/74515c5750f3) (loose) | [net] | xdp: added bpf_netdev_command XDP_{QUERY, SETUP}_XSK_UMEM |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.18 | [`57d0a1c1ac9e`](https://git.kernel.org/torvalds/c/57d0a1c1ac9e) | [net] | xdp: allow page_pool as an allocator type in xdp_return_frame |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-983 |
| CANDIDATE | 4.18 | [`735fc4054b3a`](https://git.kernel.org/torvalds/c/735fc4054b3a) | [net] | xdp: change ndo_xdp_xmit API to support bulking |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.18 | [`c0048cff8abb`](https://git.kernel.org/torvalds/c/c0048cff8abb) | [net] | xdp: introduce a new xdp_frame type |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.18 | [`5ab073ffd326`](https://git.kernel.org/torvalds/c/5ab073ffd326) | [net] | xdp: introduce xdp_return_frame API and use in cpumap |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.18 | [`389ab7f01af9`](https://git.kernel.org/torvalds/c/389ab7f01af9) | [net] | xdp: introduce xdp_return_frame_rx_napi |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.18 | [`106ca27f2922`](https://git.kernel.org/torvalds/c/106ca27f2922) | [net] | xdp: move struct xdp_buff from filter.h to xdp.h |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.18 | [`44fa2dbd4759`](https://git.kernel.org/torvalds/c/44fa2dbd4759) | [net] | xdp: transition into using xdp_frame for ndo_xdp_xmit |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.18 | [`039930945a72`](https://git.kernel.org/torvalds/c/039930945a72) | [net] | xdp: transition into using xdp_frame for return API |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-906 |
| CANDIDATE | 4.18 | [`8cc88773855f`](https://git.kernel.org/torvalds/c/8cc88773855f) | [net] | xfrm: fix missing dst_release() after policy blocking lbcast and multicast |  | CONFIG_XFRM=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.18 | [`86126b77dcd5`](https://git.kernel.org/torvalds/c/86126b77dcd5) | [net] | xfrm: free skb if nlsk pointer is NULL |  | CONFIG_XFRM=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.18 | [`45c180bc29ba`](https://git.kernel.org/torvalds/c/45c180bc29ba) | [net] | xfrm_user: prevent leaking 2 bytes of kernel memory |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.18 | [`b9b6b68e8abd`](https://git.kernel.org/torvalds/c/b9b6b68e8abd) | [net] | xsk: add Rx queue setup and mmap support |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.18 | [`c497176cb2e4`](https://git.kernel.org/torvalds/c/c497176cb2e4) | [net] | xsk: add Rx receive functions and poll support |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.18 | [`965a99098443`](https://git.kernel.org/torvalds/c/965a99098443) | [net] | xsk: add support for bind for Rx |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.18 | [`f61459030ec7`](https://git.kernel.org/torvalds/c/f61459030ec7) | [net] | xsk: add Tx queue setup and mmap support |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.18 | [`fe2308328cd2`](https://git.kernel.org/torvalds/c/fe2308328cd2) | [net] | xsk: add umem completion queue support and mmap |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.18 | [`423f38329d26`](https://git.kernel.org/torvalds/c/423f38329d26) | [net] | xsk: add umem fill queue support and mmap |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.18 | [`c0c77d8fb787`](https://git.kernel.org/torvalds/c/c0c77d8fb787) | [net] | xsk: add user memory registration support sockopt |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.18 | [`173d3adb6f43`](https://git.kernel.org/torvalds/c/173d3adb6f43) | [net] | xsk: add zero-copy support for Rx |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.18 | [`dac09149d992`](https://git.kernel.org/torvalds/c/dac09149d992) | [net] | xsk: clean up SPDX headers |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.18 | [`ad75646c68a6`](https://git.kernel.org/torvalds/c/ad75646c68a6) | [net] | xsk: fill hole in struct sockaddr_xdp |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.18 | [`a9744f7ca200`](https://git.kernel.org/torvalds/c/a9744f7ca200) | [net] | xsk: fix potential race in SKB TX completion code |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.18 | [`a5a16e43529b`](https://git.kernel.org/torvalds/c/a5a16e43529b) | [net] | xsk: Fix umem fill/completion queue mmap on 32-bit |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.18 | [`8aef7340ae96`](https://git.kernel.org/torvalds/c/8aef7340ae96) | [net] | xsk: introduce xdp_umem_page |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.18 | [`e61e62b9e2cc`](https://git.kernel.org/torvalds/c/e61e62b9e2cc) | [net] | xsk: moved struct xdp_umem definition |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.18 | [`bbff2f321a86`](https://git.kernel.org/torvalds/c/bbff2f321a86) | [net] | xsk: new descriptor addressing scheme |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.18 | [`b3a9e0be4369`](https://git.kernel.org/torvalds/c/b3a9e0be4369) | [net] | xsk: remove explicit ring structure from uapi |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.18 | [`af75d9e02d08`](https://git.kernel.org/torvalds/c/af75d9e02d08) | [net] | xsk: statistics support |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.18 | [`ac98d8aab61b`](https://git.kernel.org/torvalds/c/ac98d8aab61b) | [net] | xsk: wire upp Tx zero-copy functions |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.19 | [`7992c18810e5`](https://git.kernel.org/torvalds/c/7992c18810e5) | [net] | bluetooth: hidp: buffer overflow in hidp_process_report | CVE-2018-9363 | CONFIG_BT=y in A37 | 3.10.0-1031 |
| CANDIDATE | 4.19 | [`256c87c17c53`](https://git.kernel.org/torvalds/c/256c87c17c53) (loose) | [net] | check tunnel option type in tunnel flags |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.19 | [`6cfef793b558`](https://git.kernel.org/torvalds/c/6cfef793b558) | [net] | ethtool: Add WAKE_FILTER and RX_CLS_FLOW_WAKE |  | generic code, tag [net] | 3.10.0-991 |
| CANDIDATE | 4.19 | [`58f5bbe331c5`](https://git.kernel.org/torvalds/c/58f5bbe331c5) | [net] | ethtool: fix a privilege escalation bug |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.19 | [`92e2c4053623`](https://git.kernel.org/torvalds/c/92e2c4053623) | [net] | flow_dissector: allow dissection of tunnel options from metadata |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.19 | [`7463e4f9b99c`](https://git.kernel.org/torvalds/c/7463e4f9b99c) | [net] | geneve, vxlan: Don't check skb_dst() twice |  | generic code, tag [net] | 3.10.0-980 |
| CANDIDATE | 4.19 | [`6b4f92af3d59`](https://git.kernel.org/torvalds/c/6b4f92af3d59) | [net] | geneve, vxlan: Don't set exceptions if skb->len < mtu |  | generic code, tag [net] | 3.10.0-980 |
| CANDIDATE | 4.19 | [`ff06525fcb8a`](https://git.kernel.org/torvalds/c/ff06525fcb8a) | [net] | igmp: fix incorrect unsolicit report count after link down and up |  | generic code, tag [net] | 3.10.0-980 |
| CANDIDATE | 4.19 | [`4fb7253e4f9a`](https://git.kernel.org/torvalds/c/4fb7253e4f9a) | [net] | igmp: fix incorrect unsolicit report count when join group |  | generic code, tag [net] | 3.10.0-980 |
| CANDIDATE | 4.19 | [`76c0ddd8c3a6`](https://git.kernel.org/torvalds/c/76c0ddd8c3a6) | [net] | ip6_tunnel: be careful when accessing the inner header |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.19 | [`3789cabaab1a`](https://git.kernel.org/torvalds/c/3789cabaab1a) | [net] | ip6_tunnel: collect_md xmit: Use ip_tunnel_key's provided src address |  | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | 4.19 | [`7969e5c40dfd`](https://git.kernel.org/torvalds/c/7969e5c40dfd) | [net] | ip: discard IPv4 datagrams with overlapping segments | CVE-2018-5391 | generic code, tag [net] | 3.10.0-947 |
| CANDIDATE | 4.19 | [`a4fd284a1f8f`](https://git.kernel.org/torvalds/c/a4fd284a1f8f) | [net] | ip: process in-order fragments efficiently | CVE-2018-5391 | generic code, tag [net] | 3.10.0-947 |
| CANDIDATE | 4.19 | [`fa0f527358bd`](https://git.kernel.org/torvalds/c/fa0f527358bd) | [net] | ip: use rb trees for IP frag queue | CVE-2018-5391 | generic code, tag [net] | 3.10.0-947 |
| CANDIDATE | 4.19 | [`ccfec9e5cb2d`](https://git.kernel.org/torvalds/c/ccfec9e5cb2d) | [net] | ip_tunnel: be careful when accessing the inner header |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.19 | [`28d35bcdd392`](https://git.kernel.org/torvalds/c/28d35bcdd392) (loose) | [net] | ipv4: don't let PMTU updates increase route MTU |  | generic code, tag [net] | 3.10.0-980 |
| CANDIDATE | 4.19 | [`af7d6cce5369`](https://git.kernel.org/torvalds/c/af7d6cce5369) (loose) | [net] | ipv4: update fnhe_pmtu when first hop's MTU changes |  | generic code, tag [net] | 3.10.0-980 |
| CANDIDATE | 4.19 | [`0ed4229b08c1`](https://git.kernel.org/torvalds/c/0ed4229b08c1) | [net] | ipv6: defrag: drop non-last frags smaller than min mtu | CVE-2018-5391 | generic code, tag [net] | 3.10.0-947 |
| CANDIDATE | 4.19 | [`afe49de44c27`](https://git.kernel.org/torvalds/c/afe49de44c27) | [net] | ipv6: fix cleanup ordering for ip6_mr failure |  | generic code, tag [net] | 3.10.0-944 |
| CANDIDATE | 4.19 | [`bbd6528d28c1`](https://git.kernel.org/torvalds/c/bbd6528d28c1) | [net] | ipv6: fix possible use-after-free in ip6_xmit() |  | generic code, tag [net] | 3.10.0-1034 |
| CANDIDATE | 4.19 | [`5f379ef51bc9`](https://git.kernel.org/torvalds/c/5f379ef51bc9) | [net] | ipv6: icmp: Updating pmtu for link local route |  | generic code, tag [net] | 3.10.0-1069 |
| CANDIDATE | 4.19 | [`f547fac624be`](https://git.kernel.org/torvalds/c/f547fac624be) | [net] | ipv6: rate-limit probes for neighbourless routes |  | generic code, tag [net] | 3.10.0-971 |
| CANDIDATE | 4.19 | [`eb95f52fc72d`](https://git.kernel.org/torvalds/c/eb95f52fc72d) (loose) | [net] | ipv6_gre: Fix GRO to work on IPv6 over GRE tap |  | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | 4.19 | [`385114dec8a4`](https://git.kernel.org/torvalds/c/385114dec8a4) (loose) | [net] | modify skb_rbtree_purge to return the truesize of all purged skbs | CVE-2018-5391 | generic code, tag [net] | 3.10.0-947 |
| CANDIDATE | 4.19 | [`0ae0d60a379c`](https://git.kernel.org/torvalds/c/0ae0d60a379c) | [net] | multicast: remove useless parameter for group add |  | generic code, tag [net] | 3.10.0-930 |
| CANDIDATE | 4.19 | [`f564650106a6`](https://git.kernel.org/torvalds/c/f564650106a6) | [net] | netfilter: check if the socket netns is correct. |  | CONFIG_NETFILTER=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.19 | [`ed07d9a021df`](https://git.kernel.org/torvalds/c/ed07d9a021df) | [net] | netfilter: nf_conntrack: resolve clash for matching conntracks |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1015 |
| CANDIDATE | 4.19 | [`40e4f26e6a14`](https://git.kernel.org/torvalds/c/40e4f26e6a14) | [net] | netfilter: xt_socket: check sk before checking for netns. |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.19 | [`c24498c6827b`](https://git.kernel.org/torvalds/c/c24498c6827b) | [net] | netpoll: do not test NAPI_STATE_SCHED in poll_one_napi() |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.19 | [`ac3d9dd034e5`](https://git.kernel.org/torvalds/c/ac3d9dd034e5) | [net] | netpoll: make ndo_poll_controller() optional |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.19 | [`1222a1601488`](https://git.kernel.org/torvalds/c/1222a1601488) | [net] | nl80211: Fix possible Spectre-v1 for CQM RSSI thresholds |  | CONFIG_CFG80211=y in A37 | 3.10.0-1112 |
| CANDIDATE | 4.19 | [`1222a1601488`](https://git.kernel.org/torvalds/c/1222a1601488) | [net] | nl80211: Fix possible Spectre-v1 for CQM RSSI thresholds |  | CONFIG_CFG80211=y in A37 | 3.10.0-1045 |
| CANDIDATE | 4.19 | [`30fe6d50eb08`](https://git.kernel.org/torvalds/c/30fe6d50eb08) | [net] | nl80211: Fix possible Spectre-v1 for NL80211_TXRATE_HT |  | CONFIG_CFG80211=y in A37 | 3.10.0-1045 |
| CANDIDATE | 4.19 | [`efa61c8cf295`](https://git.kernel.org/torvalds/c/efa61c8cf295) | [net] | ptp: fix Spectre v1 vulnerability |  | generic code, tag [net] | 3.10.0-1039 |
| CANDIDATE | 4.19 | [`4e8ddd7f1758`](https://git.kernel.org/torvalds/c/4e8ddd7f1758) (loose) | [net] | sched: don't release reference on action overwrite |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1053 |
| CANDIDATE | 4.19 | [`3c53ed8fef68`](https://git.kernel.org/torvalds/c/3c53ed8fef68) (loose) | [net] | sched: Fix for duplicate class dump |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1018 |
| CANDIDATE | 4.19 | [`01683a146999`](https://git.kernel.org/torvalds/c/01683a146999) (loose) | [net] | sched: refactor flower walk to iterate over idr |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1002 |
| CANDIDATE | 4.19 | [`9c4c325252c5`](https://git.kernel.org/torvalds/c/9c4c325252c5) | [net] | skbuff: preserve sock reference when scrubbing the skb. |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.19 | [`66b51b0a0341`](https://git.kernel.org/torvalds/c/66b51b0a0341) (loose) | [net] | sock_diag: Fix spectre v1 gadget in __sock_diag_cmd() |  | generic code, tag [net] | 3.10.0-980 |
| CANDIDATE | 4.19 | [`63cc357f7bba`](https://git.kernel.org/torvalds/c/63cc357f7bba) | [net] | tcp: do not restart timewait timer on rst reception |  | generic code, tag [net] | 3.10.0-980 |
| CANDIDATE | 4.19 | [`9f2895461439`](https://git.kernel.org/torvalds/c/9f2895461439) | [net] | vti6: remove !skb->ignore_df check from vti6_xmit() |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.19 | [`6b8675897338`](https://git.kernel.org/torvalds/c/6b8675897338) | [net] | xdp: don't make drivers report attachment mode |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.19 | [`215ab0f021c9`](https://git.kernel.org/torvalds/c/215ab0f021c9) | [net] | xfrm6: call kfree_skb when skb is toobig |  | CONFIG_XFRM=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.19 | [`07bf7908950a`](https://git.kernel.org/torvalds/c/07bf7908950a) | [net] | xfrm: Validate address prefix lengths in the xfrm selector. |  | CONFIG_XFRM=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.20 | [`6c5c9581044d`](https://git.kernel.org/torvalds/c/6c5c9581044d) (loose) | [net] | add napi_if_scheduled_mark_missed |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.20 | [`5ff4ff4fe8c4`](https://git.kernel.org/torvalds/c/5ff4ff4fe8c4) (loose) | [net] | Add netif_is_vxlan() |  | generic code, tag [net] | 3.10.0-1002 |
| CANDIDATE | 4.20 | [`3e59020abf0f`](https://git.kernel.org/torvalds/c/3e59020abf0f) (loose) | [net] | bql: add __netdev_tx_sent_queue() |  | generic code, tag [net] | 3.10.0-983 |
| CANDIDATE | 4.20 | [`fe60faa50638`](https://git.kernel.org/torvalds/c/fe60faa50638) (loose) | [net] | do not abort bulk send on BQL status |  | generic code, tag [net] | 3.10.0-983 |
| CANDIDATE | 4.20 | [`1661d3466281`](https://git.kernel.org/torvalds/c/1661d3466281) | [net] | ethtool: don't allow disabling queues with umem installed |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.20 | [`8e1da73acded`](https://git.kernel.org/torvalds/c/8e1da73acded) | [net] | gro_cell: add napi_disable in gro_cells_destroy |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.20 | [`69d2c86766da`](https://git.kernel.org/torvalds/c/69d2c86766da) | [net] | ip6mr: Fix potential Spectre v1 vulnerability |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.20 | [`16f7eb2b77b5`](https://git.kernel.org/torvalds/c/16f7eb2b77b5) | [net] | ip_tunnel: don't force DF when MTU is locked |  | generic code, tag [net] | 3.10.0-971 |
| CANDIDATE | 4.20 | [`5648451e30a0`](https://git.kernel.org/torvalds/c/5648451e30a0) | [net] | ipv4: Fix potential Spectre v1 vulnerability |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 4.20 | [`ee1abcf68935`](https://git.kernel.org/torvalds/c/ee1abcf68935) | [net] | ipv6/ndisc: Preserve IPv6 control buffer if protocol error handlers are called |  | generic code, tag [net] | 3.10.0-971 |
| CANDIDATE | 4.20 | [`66033f47ca60`](https://git.kernel.org/torvalds/c/66033f47ca60) | [net] | ipv6: Check available headroom in ip6_xmit() even without options |  | generic code, tag [net] | 3.10.0-1034 |
| CANDIDATE | 4.20 | [`fb2427454631`](https://git.kernel.org/torvalds/c/fb2427454631) | [net] | ipv6: explicitly initialize udp6_addr in udp_sock_create6() |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.20 | [`cbb49697d551`](https://git.kernel.org/torvalds/c/cbb49697d551) | [net] | ipv6: tunnels: fix two use-after-free |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 4.20 | [`07bddef98393`](https://git.kernel.org/torvalds/c/07bddef98393) | [net] | macsec: let the administrator set UP state even if lowerdev is down |  | generic code, tag [net] | 3.10.0-969 |
| CANDIDATE | 4.20 | [`e6ac075882b2`](https://git.kernel.org/torvalds/c/e6ac075882b2) | [net] | macsec: update operstate when lower device changes |  | generic code, tag [net] | 3.10.0-969 |
| CANDIDATE | 4.20 | [`e6ac64d4c4d0`](https://git.kernel.org/torvalds/c/e6ac64d4c4d0) | [net] | neighbour: Avoid writing before skb->head in neigh_hh_output() |  | generic code, tag [net] | 3.10.0-1034 |
| CANDIDATE | 4.20 | [`124eee3f6955`](https://git.kernel.org/torvalds/c/124eee3f6955) | [net] | net: linkwatch: add check for netdevice being present to linkwatch_do_dev |  | generic code, tag [net] | 3.10.0-1137 |
| CANDIDATE | 4.20 | [`584eab291c67`](https://git.kernel.org/torvalds/c/584eab291c67) | [net] | netfilter: add missing error handling code for register functions |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.20 | [`508b09046c0f`](https://git.kernel.org/torvalds/c/508b09046c0f) | [net] | netfilter: ipv6: Preserve link scope traffic original oif |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.20 | [`097f95d319f8`](https://git.kernel.org/torvalds/c/097f95d319f8) | [net] | netfilter: masquerade: don't flush all conntracks if only one address deleted on device |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1118 |
| CANDIDATE | 4.20 | [`095faf45e64b`](https://git.kernel.org/torvalds/c/095faf45e64b) | [net] | netfilter: nat: fix double register in masquerade modules |  | CONFIG_NF_NAT=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.20 | [`54451f60c8fa`](https://git.kernel.org/torvalds/c/54451f60c8fa) | [net] | netfilter: xt_IDLETIMER: add sysfs filename checking routine |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-1048 |
| CANDIDATE | 4.20 | [`5cd8d46ea156`](https://git.kernel.org/torvalds/c/5cd8d46ea156) | [net] | packet: copy user buffers before orphan or clone |  | CONFIG_PACKET=y in A37 | 3.10.0-1160.2.1 |
| CANDIDATE | 4.20 | [`8b69bd7d8a89`](https://git.kernel.org/torvalds/c/8b69bd7d8a89) | [net] | ppp: Remove direct skb_queue_head list pointer access. |  | CONFIG_PPP=y in A37 | 3.10.0-1090 |
| CANDIDATE | 4.20 | [`688838934c23`](https://git.kernel.org/torvalds/c/688838934c23) | [net] | rtnetlink: ndo_dflt_fdb_dump() only work for ARPHRD_ETHER devices |  | generic code, tag [net] | 3.10.0-1144 |
| CANDIDATE | 4.20 | [`38b4f18d5637`](https://git.kernel.org/torvalds/c/38b4f18d5637) (loose) | [net] | sched: gred: pass the right attribute to gred_change_table_def() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1053 |
| CANDIDATE | 4.20 | [`b5dd186d10ba`](https://git.kernel.org/torvalds/c/b5dd186d10ba) (loose) | [net] | skb_scrub_packet(): Scrub offload_fwd_mark |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | 4.20 | [`8ebebcba559a`](https://git.kernel.org/torvalds/c/8ebebcba559a) | [net] | tuntap: fix multiqueue rx |  | CONFIG_TUN=y in A37 | 3.10.0-1018 |
| CANDIDATE | 4.20 | [`db4f1be3ca9b`](https://git.kernel.org/torvalds/c/db4f1be3ca9b) (loose) | [net] | udp: fix handling of CHECKSUM_COMPLETE packets |  | generic code, tag [net] | 3.10.0-1085 |
| CANDIDATE | 4.20 | [`dce5bd6140a4`](https://git.kernel.org/torvalds/c/dce5bd6140a4) | [net] | xdp: export xdp_rxq_info_unreg_mem_model |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-998 |
| CANDIDATE | 4.20 | [`f5bd91388e26`](https://git.kernel.org/torvalds/c/f5bd91388e26) (loose) | [net] | xsk: add a simple buffer reuse queue |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 4.20 | [`93ee30f3e8b4`](https://git.kernel.org/torvalds/c/93ee30f3e8b4) | [net] | xsk: i40e: get rid of useless struct xdp_umem_props |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 5.0 | [`1d10bd167667`](https://git.kernel.org/torvalds/c/1d10bd167667) (loose) | [net] | add netif_is_geneve() |  | generic code, tag [net] | 3.10.0-1013 |
| CANDIDATE | 5.0 | [`0621e6fc5ed2`](https://git.kernel.org/torvalds/c/0621e6fc5ed2) (loose) | [net] | Add netif_is_gretap()/netif_is_ip6gretap() |  | generic code, tag [net] | 3.10.0-991 |
| CANDIDATE | 5.0 | [`28c1382fa28f`](https://git.kernel.org/torvalds/c/28c1382fa28f) (loose) | [net] | bridge: Fix ethernet header pointer before check skb forwardable |  | CONFIG_BRIDGE=y in A37 | 3.10.0-1093 |
| CANDIDATE | 5.0 | [`620344c43edf`](https://git.kernel.org/torvalds/c/620344c43edf) (loose) | [net] | core: add __netdev_sent_queue as variant of __netdev_tx_sent_queue |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | 5.0 | [`e75913c93f7c`](https://git.kernel.org/torvalds/c/e75913c93f7c) (loose) | [net] | fix IPv6 prefix route residue |  | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | 5.0 | [`f97f4dd8b3bb`](https://git.kernel.org/torvalds/c/f97f4dd8b3bb) (loose) | [net] | ipv4: Fix memory leak in network namespace dismantle |  | generic code, tag [net] | 3.10.0-1069 |
| CANDIDATE | 5.0 | [`b6e9e5df4ecf`](https://git.kernel.org/torvalds/c/b6e9e5df4ecf) | [net] | ipv4: Return error for RTA_VIA attribute |  | generic code, tag [net] | 3.10.0-1096 |
| CANDIDATE | 5.0 | [`c09551c6ff7f`](https://git.kernel.org/torvalds/c/c09551c6ff7f) (loose) | [net] | ipv4: use a dedicated counter for icmp_v4 redirect packets |  | generic code, tag [net] | 3.10.0-1148 |
| CANDIDATE | 5.0 | [`e3818541b49f`](https://git.kernel.org/torvalds/c/e3818541b49f) | [net] | ipv6: Return error for RTA_VIA attribute |  | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | 5.0 | [`5845f706388a`](https://git.kernel.org/torvalds/c/5845f706388a) (loose) | [net] | netem: fix skb length BUG_ON in __skb_to_sgvec |  | generic code, tag [net] | 3.10.0-1096 |
| CANDIDATE | 5.0 | [`15df03c661cb`](https://git.kernel.org/torvalds/c/15df03c661cb) | [net] | netfilter: ipv6: Don't preserve original oif for loopback address |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1048 |
| CANDIDATE | 5.0 | [`a504b703bb1d`](https://git.kernel.org/torvalds/c/a504b703bb1d) | [net] | netfilter: nat: limit port clash resolution attempts |  | CONFIG_NF_NAT=y in A37 | 3.10.0-998 |
| CANDIDATE | 5.0 | [`6ed5943f8735`](https://git.kernel.org/torvalds/c/6ed5943f8735) | [net] | netfilter: nat: remove l4 protocol port rovers |  | CONFIG_NF_NAT=y in A37 | 3.10.0-998 |
| CANDIDATE | 5.0 | [`4e35c1cb9460`](https://git.kernel.org/torvalds/c/4e35c1cb9460) | [net] | netfilter: nf_nat: skip nat clash resolution for same-origin entries |  | CONFIG_NF_NAT=y in A37 | 3.10.0-1015 |
| CANDIDATE | 5.0 | [`361800876f80`](https://git.kernel.org/torvalds/c/361800876f80) | [net] | ptp: add PTP_SYS_OFFSET_EXTENDED ioctl |  | generic code, tag [net] | 3.10.0-1002 |
| CANDIDATE | 5.0 | [`83d0bdc7390b`](https://git.kernel.org/torvalds/c/83d0bdc7390b) | [net] | ptp: check gettime64 return code in PTP_SYS_OFFSET ioctl |  | generic code, tag [net] | 3.10.0-1002 |
| CANDIDATE | 5.0 | [`895ac1376d5a`](https://git.kernel.org/torvalds/c/895ac1376d5a) | [net] | ptp: check that rsv field is zero in struct ptp_sys_offset_extended |  | generic code, tag [net] | 3.10.0-1002 |
| CANDIDATE | 5.0 | [`916444df305e`](https://git.kernel.org/torvalds/c/916444df305e) | [net] | ptp: deprecate gettime64() in favor of gettimex64() |  | generic code, tag [net] | 3.10.0-1002 |
| CANDIDATE | 5.0 | [`fbb960ac2617`](https://git.kernel.org/torvalds/c/fbb960ac2617) | [net] | ptp: reorder declarations in ptp_ioctl() |  | generic code, tag [net] | 3.10.0-1002 |
| CANDIDATE | 5.0 | [`b7ea4894aa86`](https://git.kernel.org/torvalds/c/b7ea4894aa86) | [net] | ptp: uapi: change _IOW to IOWR in PTP_SYS_OFFSET_EXTENDED definition |  | generic code, tag [net] | 3.10.0-1002 |
| CANDIDATE | 5.0 | [`7f76fa36754b`](https://git.kernel.org/torvalds/c/7f76fa36754b) (loose) | [net] | sched: register callbacks for indirect tc block binds |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1013 |
| CANDIDATE | 5.0 | [`07f12b26e21a`](https://git.kernel.org/torvalds/c/07f12b26e21a) (loose) | [net] | sit: fix memory leak in sit_init_net() | CVE-2019-16994 | CONFIG_IPV6_SIT=y in A37 | 3.10.0-1144 |
| CANDIDATE | 5.0 | [`ff7b11aa481f`](https://git.kernel.org/torvalds/c/ff7b11aa481f) (loose) | [net] | socket: set sock->sk to NULL after calling proto_ops::release() |  | generic code, tag [net] | 3.10.0-1085 |
| CANDIDATE | 5.0 | [`04c03114be82`](https://git.kernel.org/torvalds/c/04c03114be82) | [net] | tcp: clear icsk_backoff in tcp_write_queue_purge() |  | generic code, tag [net] | 3.10.0-1144 |
| CANDIDATE | 5.0 | [`85bdf7db5b53`](https://git.kernel.org/torvalds/c/85bdf7db5b53) | [net] | tcp: make tcp_space() aware of socket backlog |  | generic code, tag [net] | 3.10.0-1131 |
| CANDIDATE | 5.0 | [`e6e8869aed89`](https://git.kernel.org/torvalds/c/e6e8869aed89) (loose) | [net] | tcp: remove BUG_ON from tcp_v4_err |  | generic code, tag [net] | 3.10.0-1144 |
| CANDIDATE | 5.0 | [`2c4cc9712364`](https://git.kernel.org/torvalds/c/2c4cc9712364) | [net] | tcp: tcp_v4_err() should be more careful |  | generic code, tag [net] | 3.10.0-1144 |
| CANDIDATE | 5.0 | [`26d31925cd5e`](https://git.kernel.org/torvalds/c/26d31925cd5e) | [net] | tun: implement carrier change |  | CONFIG_TUN=y in A37 | 3.10.0-1015 |
| CANDIDATE | 5.0 | [`a36e185e8c85`](https://git.kernel.org/torvalds/c/a36e185e8c85) | [net] | udp: Handle ICMP errors for tunnels with same destination port on both endpoints |  | generic code, tag [net] | 3.10.0-971 |
| CANDIDATE | 5.1 | [`56897b217a1d`](https://git.kernel.org/torvalds/c/56897b217a1d) | [bluetooth] | Bluetooth: hci_ldisc: Postpone HCI_UART_PROTO_READY bit set in hci_uart_set_proto() | CVE-2019-15917 | CONFIG_BT=y in A37 | 3.10.0-1132 |
| CANDIDATE | 5.1 | [`7c9cbd0b5e38`](https://git.kernel.org/torvalds/c/7c9cbd0b5e38) | [net] | bluetooth: Verify that l2cap_get_conf_opt provides large enough buffer | CVE-2019-3459 | CONFIG_BT=y in A37 | 3.10.0-1044 |
| CANDIDATE | 5.1 | [`3b2e2904deb3`](https://git.kernel.org/torvalds/c/3b2e2904deb3) (loose) | [net] | bridge: fix per-port af_packet sockets |  | CONFIG_BRIDGE=y in A37 | 3.10.0-1093 |
| CANDIDATE | 5.1 | [`c5b493ce192b`](https://git.kernel.org/torvalds/c/c5b493ce192b) (loose) | [net] | bridge: multicast: use rcu to access port list from br_multicast_start_querier |  | CONFIG_BRIDGE=y in A37 | 3.10.0-1093 |
| CANDIDATE | 5.1 | [`8dfb4eba4100`](https://git.kernel.org/torvalds/c/8dfb4eba4100) | [net] | esp4: add length check for UDP encapsulation |  | CONFIG_XFRM=y in A37 | 3.10.0-1144 |
| CANDIDATE | 5.1 | [`2736d94f351b`](https://git.kernel.org/torvalds/c/2736d94f351b) | [net] | ethtool: Added support for 50Gbps per lane link modes |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | 5.1 | [`f4b3ec4e6aa1`](https://git.kernel.org/torvalds/c/f4b3ec4e6aa1) | [net] | iptunnel: NULL pointer deref for ip_md_tunnel_xmit |  | generic code, tag [net] | 3.10.0-1085 |
| CANDIDATE | 5.1 | [`6c0afef5fb0c`](https://git.kernel.org/torvalds/c/6c0afef5fb0c) | [net] | ipv6/flowlabel: wait rcu grace period before put_pid() |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 5.1 | [`ef0efcd3bd3f`](https://git.kernel.org/torvalds/c/ef0efcd3bd3f) | [net] | ipv6: Fix dangling pointer when ipv6 fragment |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 5.1 | [`bb9bd814ebf0`](https://git.kernel.org/torvalds/c/bb9bd814ebf0) | [net] | ipv6: sit: reset ip header pointer in ipip6_rcv |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 5.1 | [`163d1c3d6f17`](https://git.kernel.org/torvalds/c/163d1c3d6f17) | [net] | l2tp: fix infoleak in l2tp_ip6_recvmsg() |  | CONFIG_L2TP=y in A37 | 3.10.0-1146 |
| CANDIDATE | 5.1 | [`a3e23f719f5c`](https://git.kernel.org/torvalds/c/a3e23f719f5c) | [net] | net-sysfs: call dev_hold if kobject_init_and_add success | CVE-2019-20811 | generic code, tag [net] | 3.10.0-1160.3.1 |
| CANDIDATE | 5.1 | [`355b98553789`](https://git.kernel.org/torvalds/c/355b98553789) | [net] | netns: provide pure entropy for net_hash_mix() | CVE-2019-10639 | generic code, tag [net] | 3.10.0-1085 |
| CANDIDATE | 5.1 | [`ee60ad219f5c`](https://git.kernel.org/torvalds/c/ee60ad219f5c) | [net] | route: set the deleted fnhe fnhe_daddr to 0 in ip_del_fnhe to fix a race |  | generic code, tag [net] | 3.10.0-1039 |
| CANDIDATE | 5.1 | [`ecb3dea400d3`](https://git.kernel.org/torvalds/c/ecb3dea400d3) (loose) | [net] | sched: flower: insert new filter to idr after setting its mask |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1134 |
| CANDIDATE | 5.1 | [`4057765f2dee`](https://git.kernel.org/torvalds/c/4057765f2dee) | [net] | sock: consistent handling of extreme SO_SNDBUF/SO_RCVBUF values |  | generic code, tag [net] | 3.10.0-1034 |
| CANDIDATE | 5.1 | [`89e4130939a2`](https://git.kernel.org/torvalds/c/89e4130939a2) | [net] | tcp: do not use ipv6 header for ipv4 flow |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 5.1 | [`9d3e1368bb45`](https://git.kernel.org/torvalds/c/9d3e1368bb45) | [net] | tcp: handle inet_csk_reqsk_queue_add() failures |  | generic code, tag [net] | 3.10.0-1040 |
| CANDIDATE | 5.1 | [`6ee02a54ef99`](https://git.kernel.org/torvalds/c/6ee02a54ef99) | [net] | xfrm6_tunnel: Fix potential panic when unloading xfrm6_tunnel module |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | 5.2 | [`d5bb334a8e17`](https://git.kernel.org/torvalds/c/d5bb334a8e17) | [net] | Bluetooth: Align minimum encryption key size for LE and BR/EDR connections | CVE-2019-9506 | CONFIG_BT=y in A37 | 3.10.0-1083 |
| CANDIDATE | 5.2 | [`eca94432934f`](https://git.kernel.org/torvalds/c/eca94432934f) | [net] | Bluetooth: Fix faulty expression for minimum encryption key size check | CVE-2019-9506 | CONFIG_BT=y in A37 | 3.10.0-1083 |
| CANDIDATE | 5.2 | [`693cd8ce3f88`](https://git.kernel.org/torvalds/c/693cd8ce3f88) | [net] | Bluetooth: Fix regression with minimum encryption key size alignment | CVE-2019-9506 | CONFIG_BT=y in A37 | 3.10.0-1083 |
| CANDIDATE | 5.2 | [`a1616a5ac99e`](https://git.kernel.org/torvalds/c/a1616a5ac99e) | [net] | bluetooth: hidp: fix buffer overflow | CVE-2019-11884 | CONFIG_BT=y in A37 | 3.10.0-1065 |
| CANDIDATE | 5.2 | [`0a8dd9f67cd0`](https://git.kernel.org/torvalds/c/0a8dd9f67cd0) | [net] | Fix memory leak in sctp_process_init |  | generic code, tag [net] | 3.10.0-1096 |
| CANDIDATE | 5.2 | [`df453700e8d8`](https://git.kernel.org/torvalds/c/df453700e8d8) | [net] | inet: switch IP ID generator to siphash | CVE-2019-10638 | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | 5.2 | [`9b1c1ef13b35`](https://git.kernel.org/torvalds/c/9b1c1ef13b35) | [net] | ipv6: constify rt6_nexthop() |  | generic code, tag [net] | 3.10.0-1096 |
| CANDIDATE | 5.2 | [`2c6b55f45d53`](https://git.kernel.org/torvalds/c/2c6b55f45d53) | [net] | ipv6: fix neighbour resolution with raw socket |  | generic code, tag [net] | 3.10.0-1096 |
| CANDIDATE | 5.2 | [`f3e92cb8e2eb`](https://git.kernel.org/torvalds/c/f3e92cb8e2eb) | [net] | neigh: fix use-after-free read in pneigh_get_next |  | generic code, tag [net] | 3.10.0-1093 |
| CANDIDATE | 5.2 | [`177b8007463c`](https://git.kernel.org/torvalds/c/177b8007463c) (loose) | [net] | netem: fix backlog accounting for corrupted GSO frames |  | generic code, tag [net] | 3.10.0-1096 |
| CANDIDATE | 5.2 | [`08010a216026`](https://git.kernel.org/torvalds/c/08010a216026) | [net] | netfilter: add API to manage NAT helpers. |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1053 |
| CANDIDATE | 5.2 | [`53b11308a1b5`](https://git.kernel.org/torvalds/c/53b11308a1b5) | [net] | netfilter: nf_nat: register NAT helpers. |  | CONFIG_NF_NAT=y in A37 | 3.10.0-1053 |
| CANDIDATE | 5.2 | [`e1f172e162c0`](https://git.kernel.org/torvalds/c/e1f172e162c0) | [net] | netfilter: use macros to create module aliases. |  | CONFIG_NETFILTER=y in A37 | 3.10.0-1053 |
| CANDIDATE | 5.2 | [`feadc4b6cf42`](https://git.kernel.org/torvalds/c/feadc4b6cf42) | [net] | rtnetlink: always put IFLA_LINK for links with a link-netnsid |  | generic code, tag [net] | 3.10.0-1051 |
| CANDIDATE | 5.2 | [`185ce5c38ea7`](https://git.kernel.org/torvalds/c/185ce5c38ea7) (loose) | [net] | test nouarg before dereferencing zerocopy pointers |  | generic code, tag [net] | 3.10.0-1160.2.1 |
| CANDIDATE | 5.2 | [`9871a9e47a26`](https://git.kernel.org/torvalds/c/9871a9e47a26) | [net] | tuntap: synchronize through tfiles array instead of tun->numqueues |  | CONFIG_TUN=y in A37 | 3.10.0-1112 |
| CANDIDATE | 5.3 | [`c54c2c72b2b9`](https://git.kernel.org/torvalds/c/c54c2c72b2b9) (loose) | [net] | Add a define for LLDP ethertype |  | generic code, tag [net] | 3.10.0-1085 |
| CANDIDATE | 5.3 | [`d7bae09fa008`](https://git.kernel.org/torvalds/c/d7bae09fa008) (loose) | [net] | bridge: delete local fdb on device init failure |  | CONFIG_BRIDGE=y in A37 | 3.10.0-1093 |
| CANDIDATE | 5.3 | [`5c725b6b6506`](https://git.kernel.org/torvalds/c/5c725b6b6506) (loose) | [net] | bridge: mcast: don't delete permanent entries when fast leave is enabled |  | CONFIG_BRIDGE=y in A37 | 3.10.0-1093 |
| CANDIDATE | 5.3 | [`3b26a5d03d35`](https://git.kernel.org/torvalds/c/3b26a5d03d35) (loose) | [net] | bridge: mcast: fix stale ipv6 hdr pointer when handling v6 query |  | CONFIG_BRIDGE=y in A37 | 3.10.0-1093 |
| CANDIDATE | 5.3 | [`e57f61858b7c`](https://git.kernel.org/torvalds/c/e57f61858b7c) (loose) | [net] | bridge: mcast: fix stale nsrcs pointer in igmp3/mld2 report handling |  | CONFIG_BRIDGE=y in A37 | 3.10.0-1093 |
| CANDIDATE | 5.3 | [`2446a68ae6a8`](https://git.kernel.org/torvalds/c/2446a68ae6a8) (loose) | [net] | bridge: stp: don't cache eth dest pointer before skb pull |  | CONFIG_BRIDGE=y in A37 | 3.10.0-1093 |
| CANDIDATE | 5.3 | [`55b40dbf0e76`](https://git.kernel.org/torvalds/c/55b40dbf0e76) (loose) | [net] | fix ifindex collision during namespace removal |  | generic code, tag [net] | 3.10.0-1093 |
| CANDIDATE | 5.3 | [`10cc514f451a`](https://git.kernel.org/torvalds/c/10cc514f451a) (loose) | [net] | fix null de-reference of device refcount |  | generic code, tag [net] | 3.10.0-1148 |
| CANDIDATE | 5.3 | [`891584f48a90`](https://git.kernel.org/torvalds/c/891584f48a90) | [net] | inet: frags: re-introduce skb coalescing for local delivery |  | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | 5.3 | [`e2c693934194`](https://git.kernel.org/torvalds/c/e2c693934194) | [net] | ipv4/icmp: fix rt dst dev null pointer dereference |  | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | 5.3 | [`7d8b16b9facb`](https://git.kernel.org/torvalds/c/7d8b16b9facb) | [net] | macsec: fix checksumming after decryption |  | generic code, tag [net] | 3.10.0-1085 |
| CANDIDATE | 5.3 | [`095c02da80a4`](https://git.kernel.org/torvalds/c/095c02da80a4) | [net] | macsec: fix use-after-free of skb during RX |  | generic code, tag [net] | 3.10.0-1085 |
| CANDIDATE | 5.3 | [`b617158dc096`](https://git.kernel.org/torvalds/c/b617158dc096) | [net] | tcp: be more careful in tcp_fragment() |  | generic code, tag [net] | 3.10.0-1069 |
| CANDIDATE | 5.3 | [`c3b4c3a47e05`](https://git.kernel.org/torvalds/c/c3b4c3a47e05) | [net] | xfrm/xfrm_policy: fix dst dev null pointer dereference in collect_md mode |  | CONFIG_XFRM=y in A37 | 3.10.0-1090 |
| CANDIDATE | 5.3 | [`b8d6d0079757`](https://git.kernel.org/torvalds/c/b8d6d0079757) | [net] | xfrm: fix sa selector validation |  | CONFIG_XFRM=y in A37 | 3.10.0-1085 |
| CANDIDATE | 5.3 | [`b38ff4075a80`](https://git.kernel.org/torvalds/c/b38ff4075a80) | [net] | xfrm: Fix xfrm sel prefix length validation |  | CONFIG_XFRM=y in A37 | 3.10.0-1085 |
| CANDIDATE | 5.4 | [`39f13ea2f61b`](https://git.kernel.org/torvalds/c/39f13ea2f61b) (loose) | [net] | avoid potential infinite loop in tc_ctl_action() |  | generic code, tag [net] | 3.10.0-1148 |
| CANDIDATE | 5.4 | [`f43e5210c739`](https://git.kernel.org/torvalds/c/f43e5210c739) | [net] | cfg80211: initialize on-stack chandefs |  | CONFIG_CFG80211=y in A37 | 3.10.0-1112 |
| CANDIDATE | 5.4 | [`c1d3ad84eae3`](https://git.kernel.org/torvalds/c/c1d3ad84eae3) | [net] | cfg80211: Purge frame registrations on iftype change |  | CONFIG_CFG80211=y in A37 | 3.10.0-1112 |
| CANDIDATE | 5.4 | [`242b0931c191`](https://git.kernel.org/torvalds/c/242b0931c191) | [net] | cfg80211: validate SSID/MBSSID element ordering assumption |  | CONFIG_CFG80211=y in A37 | 3.10.0-1112 |
| CANDIDATE | 5.4 | [`4ac2813cc867`](https://git.kernel.org/torvalds/c/4ac2813cc867) | [net] | cfg80211: wext: avoid copying malformed SSIDs |  | CONFIG_CFG80211=y in A37 | 3.10.0-1112 |
| CANDIDATE | 5.4 | [`b406472b5ad7`](https://git.kernel.org/torvalds/c/b406472b5ad7) (loose) | [net] | ipv4: avoid mixed n_redirects and rate_tokens usage |  | generic code, tag [net] | 3.10.0-1148 |
| CANDIDATE | 5.4 | [`595e0651d029`](https://git.kernel.org/torvalds/c/595e0651d029) | [net] | ipv4: Return -ENETUNREACH if we can't create route but saddr is valid |  | generic code, tag [net] | 3.10.0-1111 |
| CANDIDATE | 5.4 | [`6af1799aaf3f`](https://git.kernel.org/torvalds/c/6af1799aaf3f) | [net] | ipv6: drop incoming packets having a v4mapped source address |  | generic code, tag [net] | 3.10.0-1146 |
| CANDIDATE | 5.4 | [`2d819d250a13`](https://git.kernel.org/torvalds/c/2d819d250a13) | [net] | ipv6: Handle missing host route in __ipv6_ifa_notify |  | generic code, tag [net] | 3.10.0-1146 |
| CANDIDATE | 5.4 | [`280b0b8e89ad`](https://git.kernel.org/torvalds/c/280b0b8e89ad) | [net] | ipv6: remove printk |  | generic code, tag [net] | 3.10.0-1134 |
| CANDIDATE | 5.4 | [`6efb971ba8ed`](https://git.kernel.org/torvalds/c/6efb971ba8ed) | [net] | net_sched: let qdisc_put() accept NULL pointer |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1148 |
| CANDIDATE | 5.4 | [`a7fa12d15855`](https://git.kernel.org/torvalds/c/a7fa12d15855) (loose) | [net] | netem: fix error path for corrupted GSO frames |  | generic code, tag [net] | 3.10.0-1148 |
| CANDIDATE | 5.4 | [`1399c59fa929`](https://git.kernel.org/torvalds/c/1399c59fa929) | [net] | nl80211: fix memory leak in nl80211_get_ftm_responder_stats | CVE-2019-19055 | CONFIG_CFG80211=y in A37 | 3.10.0-1142 |
| CANDIDATE | 5.4 | [`b501426cf86e`](https://git.kernel.org/torvalds/c/b501426cf86e) | [net] | nl80211: fix null pointer dereference |  | CONFIG_CFG80211=y in A37 | 3.10.0-1112 |
| CANDIDATE | 5.4 | [`f88eb7c0d002`](https://git.kernel.org/torvalds/c/f88eb7c0d002) | [net] | nl80211: validate beacon head |  | CONFIG_CFG80211=y in A37 | 3.10.0-1112 |
| CANDIDATE | 5.4 | [`4f0e97d07098`](https://git.kernel.org/torvalds/c/4f0e97d07098) (loose) | [net] | sched: ensure opts_len <= IP_TUNNEL_OPTS_MAX in act_tunnel_key |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1144 |
| CANDIDATE | 5.5 | [`c4b4c421857d`](https://git.kernel.org/torvalds/c/c4b4c421857d) (loose) | [net] | bridge: deny dev_set_mac_address() when unregistering |  | CONFIG_BRIDGE=y in A37 | 3.10.0-1144 |
| CANDIDATE | 5.5 | [`501a90c94510`](https://git.kernel.org/torvalds/c/501a90c94510) | [net] | inet: protect against too small mtu values. |  | generic code, tag [net] | 3.10.0-1148 |
| CANDIDATE | 5.5 | [`c4e85f73afb6`](https://git.kernel.org/torvalds/c/c4e85f73afb6) (loose) | [net] | ipv6: add net argument to ip6_dst_lookup_flow | CVE-2020-1749 | generic code, tag [net] | 3.10.0-1131 |
| CANDIDATE | 5.5 | [`6c8991f41546`](https://git.kernel.org/torvalds/c/6c8991f41546) (loose) | [net] | ipv6_stub: use ip6_dst_lookup_flow instead of ip6_dst_lookup | CVE-2020-1749 | generic code, tag [net] | 3.10.0-1131 |
| CANDIDATE | 5.5 | [`e0b60903b434`](https://git.kernel.org/torvalds/c/e0b60903b434) | [net] | net-sysfs: Call dev_hold always in netdev_queue_add_kobject | CVE-2019-20811 | generic code, tag [net] | 3.10.0-1160.3.1 |
| CANDIDATE | 5.5 | [`ddd9b5e3e765`](https://git.kernel.org/torvalds/c/ddd9b5e3e765) | [net] | net-sysfs: Call dev_hold always in rx_queue_add_kobject | CVE-2019-20811 | generic code, tag [net] | 3.10.0-1160.3.1 |
| CANDIDATE | 5.5 | [`61678d28d4a4`](https://git.kernel.org/torvalds/c/61678d28d4a4) | [net] | net_sched: fix datalen for ematch |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1148 |
| CANDIDATE | 5.5 | [`18a110b022a5`](https://git.kernel.org/torvalds/c/18a110b022a5) | [net] | netfilter: ctnetlink: netns exit must wait for callbacks |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1134 |
| CANDIDATE | 5.5 | [`d836f5c69d87`](https://git.kernel.org/torvalds/c/d836f5c69d87) (loose) | [net] | rtnetlink: validate IFLA_MTU attribute in rtnl_create_link() |  | generic code, tag [net] | 3.10.0-1144 |
| CANDIDATE | 5.6 | [`60380488e4e0`](https://git.kernel.org/torvalds/c/60380488e4e0) | [net] | ipv6/addrconf: call ipv6_mc_up() for non-Ethernet interface |  | generic code, tag [net] | 3.10.0-1146 |
| CANDIDATE | 5.6 | [`0d0d9a388a85`](https://git.kernel.org/torvalds/c/0d0d9a388a85) | [net] | l2tp: Allow duplicate session creation with UDP |  | CONFIG_L2TP=y in A37 | 3.10.0-1134 |
| CANDIDATE | 5.6 | [`2a9de3af21aa`](https://git.kernel.org/torvalds/c/2a9de3af21aa) | [net] | vti6: Fix memory leak of skb if input policy check fails |  | generic code, tag [net] | 3.10.0-1146 |
| CANDIDATE | 5.6 | [`a1a7e3a36e01`](https://git.kernel.org/torvalds/c/a1a7e3a36e01) | [net] | xfrm: add the missing verify_sec_ctx_len check in xfrm_add_acquire |  | CONFIG_XFRM=y in A37 | 3.10.0-1144 |
| CANDIDATE | 5.6 | [`171d449a0285`](https://git.kernel.org/torvalds/c/171d449a0285) | [net] | xfrm: fix uctx len check in verify_sec_ctx_len |  | CONFIG_XFRM=y in A37 | 3.10.0-1144 |
| CANDIDATE | 5.6 | [`4c59406ed003`](https://git.kernel.org/torvalds/c/4c59406ed003) | [net] | xfrm: policy: Fix doulbe free in xfrm_policy_timer |  | CONFIG_XFRM=y in A37 | 3.10.0-1144 |
| CANDIDATE | 5.7 | [`dd912306ff00`](https://git.kernel.org/torvalds/c/dd912306ff00) (loose) | [net] | fix a potential recursive NETDEV_FEAT_CHANGE |  | generic code, tag [net] | 3.10.0-1148 |
| CANDIDATE | 5.7 | [`57644431a6c2`](https://git.kernel.org/torvalds/c/57644431a6c2) (loose) | [net] | ipv4: really enforce backoff for redirects |  | generic code, tag [net] | 3.10.0-1148 |
| CANDIDATE | 5.7 | [`ea64d8d6c675`](https://git.kernel.org/torvalds/c/ea64d8d6c675) | [net] | netfilter: nat: never update the UDP checksum when it's 0 |  | CONFIG_NF_NAT=y in A37 | 3.10.0-1144 |
| CANDIDATE | 5.7 | [`af370ab36fcd`](https://git.kernel.org/torvalds/c/af370ab36fcd) | [net] | netfilter: nf_queue: do not release refcouts until nf_reinject is done |  | CONFIG_NETFILTER_NETLINK_QUEUE=y in A37 | 3.10.0-1160.6.1 |
| CANDIDATE | 5.7 | [`dd3cc111f2e3`](https://git.kernel.org/torvalds/c/dd3cc111f2e3) | [net] | netfilter: nf_queue: make nf_queue_entry_release_refs static |  | CONFIG_NETFILTER_NETLINK_QUEUE=y in A37 | 3.10.0-1160.6.1 |
| CANDIDATE | 5.7 | [`119e52e664c5`](https://git.kernel.org/torvalds/c/119e52e664c5) | [net] | netfilter: nf_queue: place bridge physports into queue_entry struct |  | CONFIG_NETFILTER_NETLINK_QUEUE=y in A37 | 3.10.0-1160.6.1 |
| CANDIDATE | 5.9 | [`cc5453a5b7e9`](https://git.kernel.org/torvalds/c/cc5453a5b7e9) | [net] | netfilter: conntrack: allow sctp hearbeat after connection re-use |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1160.1.1 |
| CANDIDATE | 5.9 | [`1cc5ef91d2ff`](https://git.kernel.org/torvalds/c/1cc5ef91d2ff) | [net] | netfilter: ctnetlink: add a range check for l3/l4 protonum | CVE-2020-25211 | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1160.19.1 |
| CANDIDATE | 5.10 | [`eddb7732119d`](https://git.kernel.org/torvalds/c/eddb7732119d) | [net] | bluetooth: a2mp: Fix not initializing all members | CVE-2020-12352 | CONFIG_BT=y in A37 | 3.10.0-1160.6.1 |
| CANDIDATE | 5.10 | [`f19425641cb2`](https://git.kernel.org/torvalds/c/f19425641cb2) | [net] | bluetooth: l2cap: Fix calling sk_filter on non-socket based channel | CVE-2020-12351 | CONFIG_BT=y in A37 | 3.10.0-1160.6.1 |
| CANDIDATE | 5.10 | [`b38e7819cae9`](https://git.kernel.org/torvalds/c/b38e7819cae9) | [net] | icmp: randomize the global rate limiter | CVE-2020-25705 | generic code, tag [net] | 3.10.0-1160.19.1 |
| CANDIDATE | 5.11 | [`fb25038586d0`](https://git.kernel.org/torvalds/c/fb25038586d0) | [net] | net-sysfs: take the rtnl lock when accessing xps_cpus_map and num_tc |  | generic code, tag [net] | 3.10.0-1160.16.1 |
| CANDIDATE | 5.11 | [`1ad58225dba3`](https://git.kernel.org/torvalds/c/1ad58225dba3) | [net] | net-sysfs: take the rtnl lock when storing xps_cpus |  | generic code, tag [net] | 3.10.0-1160.16.1 |
| CANDIDATE | — | — | [net] | 802154 and 6lowpan: Rebase to v4.5 |  | generic code, tag [net] | 3.10.0-422 |
| CANDIDATE | — | — | [net] | Add a function to check macvlan port |  | generic code, tag [net] | 3.10.0-343 |
| CANDIDATE | — | — | [bluetooth] | Add a new 04ca:3011 QCA_ROME device |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | — | — | [net] | add a postfix to old ndo_change_mtu |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | — | — | [net] | add addrconf.h to ip6_route.h |  | generic code, tag [net] | 3.10.0-785 |
| CANDIDATE | — | — | [net] | add and use skb_put_u8() |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | — | — | [bluetooth] | Add another AR3012 04ca:3018 device |  | CONFIG_BT=y in A37 | 3.10.0-757 |
| CANDIDATE | — | — | [net] | Add compatible kAPI for skb_get_rxhash |  | generic code, tag [net] | 3.10.0-424 |
| CANDIDATE | — | — | [net] | Add couple of lower device helper functions |  | generic code, tag [net] | 3.10.0-634 |
| CANDIDATE | — | — | [net] | Add event for a change in slave state |  | generic code, tag [net] | 3.10.0-444 |
| CANDIDATE | — | — | [bluetooth] | Add new AR3012 ID 0489:e095 |  | CONFIG_BT=y in A37 | 3.10.0-466 |
| CANDIDATE | — | — | [net] | Add protodown support |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | — | — | [net] | add sk_filter_trim_cap | CVE-2016-8645 | generic code, tag [net] | 3.10.0-558 |
| CANDIDATE | — | — | [net] | add skb_clone_sk() and sock_efree() |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | — | — | [net] | add SKB_GSO_TUNNEL_REMCSUM to SKB_GSO2_MASK |  | generic code, tag [net] | 3.10.0-444 |
| CANDIDATE | — | — | [net] | add skb_postpush_rcsum and fix dev_forward_skb occasions |  | generic code, tag [net] | 3.10.0-435 |
| CANDIDATE | — | — | [net] | Add support for configuring VF GUIDs |  | generic code, tag [net] | 3.10.0-444 |
| CANDIDATE | — | — | [bluetooth] | Add support for Intel Bluetooth device 3168 [8087:0aa7] |  | CONFIG_BT=y in A37 | 3.10.0-466 |
| CANDIDATE | — | — | [bluetooth] | Add support for Intel Bluetooth device 8265 [8087:0a2b] |  | CONFIG_BT=y in A37 | 3.10.0-466 |
| CANDIDATE | — | — | [bluetooth] | Add support for Intel Bluetooth device 9460/9560 [8087:0aaa] |  | CONFIG_BT=y in A37 | 3.10.0-757 |
| CANDIDATE | — | — | [bluetooth] | Add support of 13d3:3490 AR3012 device |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | — | — | [net] | Add support to configure SR-IOV VF minimum and maximum Tx rate through ip tool |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | — | — | [bluetooth] | Add USB ID 13D3:3487 to ath3k |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | — | — | [bluetooth] | add WCNSS dependency for HCI driver |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | — | — | [bluetooth] | Added support for Rivet Networks Killer 1535 |  | CONFIG_BT=y in A37 | 3.10.0-757 |
| CANDIDATE | — | — | [net] | af_iucv: drop inbound packets with invalid flags |  | generic code, tag [net] | 3.10.0-983 |
| CANDIDATE | — | — | [net] | af_iucv: enable control sends in case of SEND_SHUTDOWN |  | generic code, tag [net] | 3.10.0-889 |
| CANDIDATE | — | — | [net] | af_iucv: fix skb handling on HiperTransport xmit error |  | generic code, tag [net] | 3.10.0-983 |
| CANDIDATE | — | — | [net] | af_iucv: remove GFP_DMA restriction for HiperTransport |  | generic code, tag [net] | 3.10.0-1065 |
| CANDIDATE | — | — | [net] | af_unix: fix use-after-free with concurrent readers while splicing |  | CONFIG_UNIX=y in A37 | 3.10.0-359 |
| CANDIDATE | — | — | [net] | af_unix: passcred support for sendpage |  | CONFIG_UNIX=y in A37 | 3.10.0-359 |
| CANDIDATE | — | — | [net] | allow configuring default qdisc |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | — | — | [net] | always advertise rx_flags changes via netlink |  | generic code, tag [net] | 3.10.0-158 |
| CANDIDATE | — | — | [bluetooth] | Always wait for a connection on RFCOMM open() |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [net] | Backport mac80211 from linux-5.3-rc5 |  | generic code, tag [net] | 3.10.0-1093 |
| CANDIDATE | — | — | [net] | Backport wireless core from linux-5.3-rc5 |  | generic code, tag [net] | 3.10.0-1093 |
| CANDIDATE | — | — | [bluetooth] | BCSP fails to ACK re-transmitted frames from the peer |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | — | — | [net] | be careful with zero len iov |  | generic code, tag [net] | 3.10.0-969 |
| CANDIDATE | — | — | [bluetooth] | bluecard: use setup_timer |  | CONFIG_BT=y in A37 | 3.10.0-757 |
| CANDIDATE | — | — | [net] | bluetooth: KABI cleanups |  | CONFIG_BT=y in A37 | 3.10.0-422 |
| CANDIDATE | — | — | [net] | bluetooth: Rebase to v4.5 |  | CONFIG_BT=y in A37 | 3.10.0-422 |
| CANDIDATE | — | — | [net] | bpf: add bpf_prog_sub |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-889 |
| CANDIDATE | — | — | [net] | bpf: rename netdev_xdp to netdev_bpf |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-889 |
| CANDIDATE | — | — | [net] | break flow vs skbuff header dependency |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | bridge: add space before '(/{', after ', ', etc. |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | — | — | [net] | bridge: Adding switchdev ageing notification on port bridged |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | — | — | [net] | bridge: Do not call ndo_dflt_fdb_dump if ndo_fdb_dump is defined |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | — | — | [net] | bridge: Program port vlan filters only if filtering is enabled in bridge |  | CONFIG_BRIDGE=y in A37 | 3.10.0-228 |
| CANDIDATE | — | — | [net] | bridge: Replace <asm/uaccess.h> with <linux/uaccess.h> globally |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | — | — | [net] | bridge: replace br_fdb_external_learn_* calls with switchdev notifier events |  | CONFIG_BRIDGE=y in A37 | 3.10.0-525 |
| CANDIDATE | — | — | [net] | bridge: un-comment br_multicast_list_adjacent() |  | CONFIG_BRIDGE=y in A37 | 3.10.0-594 |
| CANDIDATE | — | — | [net] | bridge: use core MTU range checking in core net infra |  | CONFIG_BRIDGE=y in A37 | 3.10.0-764 |
| CANDIDATE | — | — | [net] | bridge: Use RCU_INIT_POINTER(x, NULL) in br_vlan.c |  | CONFIG_BRIDGE=y in A37 | 3.10.0-193 |
| CANDIDATE | — | — | [bluetooth] | btqcomsmd: Allow driver to build if COMPILE_TEST is enabled |  | CONFIG_BT=y in A37 | 3.10.0-757 |
| CANDIDATE | — | — | [bluetooth] | btqcomsmd: fix compile-test dependency |  | CONFIG_BT=y in A37 | 3.10.0-757 |
| CANDIDATE | — | — | [bluetooth] | btqcomsmd: Fix module autoload |  | CONFIG_BT=y in A37 | 3.10.0-757 |
| CANDIDATE | — | — | [bluetooth] | btusb, hci_intel: Fix wait_on_bit_timeout() return value checks |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | — | — | [bluetooth] | btwilink: Fix probe return value |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | — | — | [bluetooth] | btwilink: Save the packet type before sending |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | — | — | [net] | busy_poll: add low latency socket poll |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | busy_poll: add socket option for low latency polling |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | busy_poll: avoid calling sched_clock when LLS is off |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | busy_poll: change busy poll time accounting |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | busy_poll: change sysctl_net_ll_poll into an unsigned int |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | busy_poll: convert lls to use time_in_range() |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | busy_poll: convert low latency sockets to sched_clock() |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | busy_poll: fix LLS debug_smp_processor_id() warning |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | busy_poll: lls fix build with allnoconfig |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | busy_poll: poll/select low latency socket support |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | busy_poll: remove NET_LL_RX_POLL config menu |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | busy_poll: rename busy poll socket op and globals |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | busy_poll: rename include/net/ll_poll.h to include/net/busy_poll.h |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | busy_poll: rename ll methods to busy-poll |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | busy_poll: rename low latency sockets functions to busy poll |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | busy_poll: revert unsupported bits from creation of BUSY_POLL socket option |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | cfg80211: Call reg_notifier for self managed hints |  | CONFIG_CFG80211=y in A37 | 3.10.0-932 |
| CANDIDATE | — | — | [net] | cfg80211: support loading regulatory database as firmware |  | CONFIG_CFG80211=y in A37 | 3.10.0-932 |
| CANDIDATE | — | — | [net] | check before dereferencing netdev_ops during busy poll |  | generic code, tag [net] | 3.10.0-1069 |
| CANDIDATE | — | — | [net] | chunk lost from bd9b51 |  | generic code, tag [net] | 3.10.0-306 |
| CANDIDATE | — | — | [net] | configs: enable Fair Queue scheduler (CONFIG_NET_SCH_FQ) |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | — | — | [net] | configs: enable nft dup |  | generic code, tag [net] | 3.10.0-458 |
| CANDIDATE | — | — | [net] | convert many more places to skb_put_zero() |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | — | — | [net] | core: Add drop counters to VF statistics |  | generic code, tag [net] | 3.10.0-889 |
| CANDIDATE | — | — | [net] | core: Add new basic hardware counter |  | generic code, tag [net] | 3.10.0-983 |
| CANDIDATE | — | — | [net] | core: Add reading VF statistics through the PF netdevice |  | generic code, tag [net] | 3.10.0-299 |
| CANDIDATE | — | — | [net] | core: Add VF link state control |  | generic code, tag [net] | 3.10.0-35 |
| CANDIDATE | — | — | [net] | core: Add VF link state control policy |  | generic code, tag [net] | 3.10.0-309 |
| CANDIDATE | — | — | [net] | core: lockdep_rtnl_is_held can be boolean |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | — | — | [net] | core: make function ___gnet_stats_copy_basic() static |  | generic code, tag [net] | 3.10.0-983 |
| CANDIDATE | — | — | [net] | core: relax BUILD_BUG_ON in netdev_stats_to_stats64 |  | generic code, tag [net] | 3.10.0-352 |
| CANDIDATE | — | — | [net] | core: remove WARN_ON from skb_try_coalesce |  | generic code, tag [net] | 3.10.0-925 |
| CANDIDATE | — | — | [net] | Correct assignment of skb->network_header to skb->tail |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | — | — | [net] | deprecate dev->trans_start |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | — | — | [net] | diag: Fix ns_capable check in sock_diag_put_filterinfo | CVE-2014-0181 | generic code, tag [net] | 3.10.0-128 |
| CANDIDATE | — | — | [net] | diag: Move the permission check in sock_diag_put_filterinfo to packet_diag_dump | CVE-2014-0181 | generic code, tag [net] | 3.10.0-128 |
| CANDIDATE | — | — | [net] | dim: Update DIM start sample after each DIM iteration |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | — | — | [bluetooth] | Directly close dlc for not yet started RFCOMM session |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [net] | do not ignore dmac in dev_forward_skb() |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | document that no more GSO bits can be added |  | generic code, tag [net] | 3.10.0-681 |
| CANDIDATE | — | — | [net] | Documentation: Add missing descriptions for fwmark_reflect for ipv4 and ipv6 |  | generic code, tag [net] | 3.10.0-717 |
| CANDIDATE | — | — | [net] | Documentation: Document xfrm4_gc_thresh and xfrm6_gc_thresh |  | generic code, tag [net] | 3.10.0-484 |
| CANDIDATE | — | — | [net] | documentation: ipv6: add documentation for stable_secret, idgen_delay and idgen_retries knobs |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | — | — | [bluetooth] | don't release the port in rfcomm_dev_state_change() |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [net] | drop_monitor: use proper genetlink multicast APIs |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | — | — | [net] | dst: Add dst port to dst_metadata utility functions |  | generic code, tag [net] | 3.10.0-668 |
| CANDIDATE | — | — | [net] | dst: Fix an intermittent pr_emerg warning about lo becoming free |  | generic code, tag [net] | 3.10.0-702 |
| CANDIDATE | — | — | [net] | dst: Make skb parameter of skb{metadata_dst, tunnel_info}() const |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | — | — | [net] | dst: Utility functions to build dst_metadata without supplying an skb |  | generic code, tag [net] | 3.10.0-643 |
| CANDIDATE | — | — | [net] | ensure features get disabled on new lower devs |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | — | — | [net] | esp: fix potential MTU calculation overflows |  | CONFIG_XFRM=y in A37 | 3.10.0-281 |
| CANDIDATE | — | — | [net] | eth: add devm version of alloc_etherdev_mqs function |  | generic code, tag [net] | 3.10.0-882 |
| CANDIDATE | — | — | [net] | eth: Fix sysfs_format_mac() code duplication |  | generic code, tag [net] | 3.10.0-882 |
| CANDIDATE | — | — | [net] | ether: MAC address helpers |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | — | — | [net] | ethernet: Avoid unnecessary byte swap in check for Ethertype |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | — | — | [net] | ethernet: Fix sparse error, make test usable by other functions |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | — | — | [net] | ethtool: Add current supported tunable options |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | — | — | [net] | ethtool: Added port speed macros |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | — | — | [net] | ethtool: clarify implementation of ethtool's get_ts_info op |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | — | — | [net] | ethtool: constify array pointer parameters to ethtool_ops::set_rxfh |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | — | — | [net] | ethtool: define INT_MAX for userland |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | — | — | [net] | ethtool: Expand documentation of ethtool_ops::{get, set}_rxfh() |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | — | — | [net] | ethtool: Fix comment regarding location of dev_ethtool() call |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | — | — | [net] | ethtool: introduce a new ioctl for per queue setting |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | — | — | [net] | ethtool: page allocation failure |  | generic code, tag [net] | 3.10.0-568 |
| CANDIDATE | — | — | [net] | ethtool: Replace ethtool_ops::{get, set}_rxfh_indir() with {get, set}_rxfh() |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | — | — | [net] | ethtool: support get coalesce per queue |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | — | — | [net] | ethtool: support set coalesce per queue |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | — | — | [bluetooth] | Exclude released devices from RFCOMMGETDEVLIST ioctl |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [net] | filter: introduce SO_BPF_EXTENSIONS |  | generic code, tag [net] | 3.10.0-131 |
| CANDIDATE | — | — | [net] | fix __copy_skb_header() |  | generic code, tag [net] | 3.10.0-359 |
| CANDIDATE | — | — | [net] | fix build break when DEBUG is enabled |  | generic code, tag [net] | 3.10.0-475 |
| CANDIDATE | — | — | [net] | Fix compilation error when CLS_ACT isn't set |  | generic code, tag [net] | 3.10.0-634 |
| CANDIDATE | — | — | [net] | fix for_each_netdev_feature |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | — | — | [net] | fix GSO_PARTIAL support |  | generic code, tag [net] | 3.10.0-681 |
| CANDIDATE | — | — | [net] | fix INET_DIAG_MAX value |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | — | — | [bluetooth] | Fix issue with RFCOMM getsockopt operation |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [net] | fix mistake with TCP cgroup memory pressure check |  | generic code, tag [net] | 3.10.0-702 |
| CANDIDATE | — | — | [net] | fix NULL pointer dereference in skb_copy_and_csum_datagram_iovec when using NFS |  | generic code, tag [net] | 3.10.0-316 |
| CANDIDATE | — | — | [bluetooth] | Fix racy acquire of rfcomm_dev reference |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [bluetooth] | Fix RFCOMM bind fail for L2CAP sock |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [bluetooth] | Fix RFCOMM parent device for reused dlc |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [bluetooth] | Fix RFCOMM tty teardown race |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [net] | fix struct pid memory leak |  | generic code, tag [net] | 3.10.0-1160.16.1 |
| CANDIDATE | — | — | [bluetooth] | Fix the reference counting of tty_port |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [bluetooth] | Fix to set proper bdaddr_type for RFCOMM connect |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [bluetooth] | Fix unreleased rfcomm_dev reference |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [bluetooth] | Fix unsafe RFCOMM device parenting |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [bluetooth] | Fix waiting for clearing of BT_SK_SUSPEND flag |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [net] | fix wrong merge of ndo_set_vf_rate documentation |  | generic code, tag [net] | 3.10.0-435 |
| CANDIDATE | — | — | [net] | fixup comments after "Future-proof tunnel offload handlers" |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | — | — | [net] | flow: Add function for parsing the header length out of linear ethernet frames |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | — | — | [net] | flow: Allow raw buffers to be passed into the flow dissector |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | — | — | [net] | flow: Fix CPU hotplug callback registration |  | generic code, tag [net] | 3.10.0-558 |
| CANDIDATE | — | — | [net] | flow: make skb an optional parameter for__skb_flow_dissect() |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | — | — | [net] | flow: Remove extern from function prototypes |  | generic code, tag [net] | 3.10.0-236 |
| CANDIDATE | — | — | [net] | flow_disector: ARP support |  | generic code, tag [net] | 3.10.0-643 |
| CANDIDATE | — | — | [net] | flow_dissector: __skb_flow_dissect() must cap its return value |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: Add flow_keys digest |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: Add full IPv6 addresses to flow_keys |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: Add functions to get skb->hash based on flow structures |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: Add GRE keyid in flow_keys |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: Add IPv6 flow label to flow_keys |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: Add keys for TIPC address |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: Add MPLS entropy label in flow_keys |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: add support for dissection of misc ip header fields |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | — | — | [net] | flow_dissector: Add support for QinQ dissection |  | generic code, tag [net] | 3.10.0-983 |
| CANDIDATE | — | — | [net] | flow_dissector: Add VLAN ID to flow_keys |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: call init_default_flow_dissectors() earlier |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: Call skb_get_hash in get_xps_queue and __skb_tx_hash |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | — | — | [net] | flow_dissector: check if arp_eth is null rather than arp |  | generic code, tag [net] | 3.10.0-643 |
| CANDIDATE | — | — | [net] | flow_dissector: Copy inner L3 and L4 headers as unaligned on GRE TEB |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: correct size of storage for ARP |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | — | — | [net] | flow_dissector: Fix alignment issue in __skb_flow_get_ports |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: Get rid of IPv6 hash addresses flow keys |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: Get skb hash over flow_keys structure |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: initialize hashrnd in flow_dissector with net_get_random_once |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | — | — | [net] | flow_dissector: Make dissector_uses_key() and skb_flow_dissector_target() public |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: Move __get_hash_from_flowi{4, 6} into flow_dissector.c |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: Remove superfluous setting of key_basic |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: rps: Add the const for the parameter of flow_keys_have_l4 |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: rps: Fix uninitialized flow_keys used in __skb_get_hash possibly |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: Save vlan ethertype from headers |  | generic code, tag [net] | 3.10.0-983 |
| CANDIDATE | — | — | [net] | flow_dissector: Simplify GRE case in flow_dissector |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: skb_flow_get_be16() can be static |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flow_dissector: switch to siphash | CVE-2019-18282 | generic code, tag [net] | 3.10.0-1160.7.1 |
| CANDIDATE | — | — | [net] | flow_dissector: use programable dissector in skb_flow_dissect and friends |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | flowi: introduce get_hash_from_flowi4 |  | generic code, tag [net] | 3.10.0-558 |
| CANDIDATE | — | — | [net] | fou: eliminate IPv4, v6 specific GRO functions |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | fou: fix a potential use after free in fou.c |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | fou: Move fou_build_header into fou.c and refactor |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | fq: Port memory limit mechanism from fq_codel |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | — | — | [net] | gen_stats: Remove extern from function prototypes |  | generic code, tag [net] | 3.10.0-625 |
| CANDIDATE | — | — | [net] | generic support for disabling netdev features down stack |  | generic code, tag [net] | 3.10.0-415 |
| CANDIDATE | — | — | [net] | genetlink: Remove extern from function prototypes |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | — | — | [net] | gre6: don't try to add the same route two times |  | generic code, tag [net] | 3.10.0-140 |
| CANDIDATE | — | — | [net] | gro: avoid reorders |  | generic code, tag [net] | 3.10.0-867 |
| CANDIDATE | — | — | [net] | gro: Fix GRO flush when receiving a GSO packet. |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | — | — | [net] | gro: Fix remcsum in GRO path to not change packet |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | gro: fix use-after-free read in napi_gro_frags() |  | generic code, tag [net] | 3.10.0-1093 |
| CANDIDATE | — | — | [net] | gro: Prepare GRO stack for the upcoming tunneling support |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | — | — | [net] | gro: reset skb->truesize in napi_reuse_skb() |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | — | — | [net] | gro: restore frag0 optimization (and fix crash) |  | generic code, tag [net] | 3.10.0-127 |
| CANDIDATE | — | — | [net] | gso: fix kABI |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | gso: make skb_gso_segment error handling more robust |  | generic code, tag [net] | 3.10.0-204 |
| CANDIDATE | — | — | [net] | Handle csum for CHECKSUM_COMPLETE VXLAN forwarding |  | generic code, tag [net] | 3.10.0-468 |
| CANDIDATE | — | — | [bluetooth] | hci_bcsp: fix code style |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | — | — | [bluetooth] | hci_bcsp: Use setup_timer Kernel API instead of init_timer |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | — | — | [bluetooth] | hci_ldisc: Add missing clear HCI_UART_PROTO_READY |  | CONFIG_BT=y in A37 | 3.10.0-757 |
| CANDIDATE | — | — | [bluetooth] | hci_ldisc: Add missing return in hci_uart_init_work() |  | CONFIG_BT=y in A37 | 3.10.0-757 |
| CANDIDATE | — | — | [bluetooth] | hci_ldisc: Add protocol check to hci_uart_dequeue() |  | CONFIG_BT=y in A37 | 3.10.0-757 |
| CANDIDATE | — | — | [bluetooth] | hci_ldisc: Add protocol check to hci_uart_send_frame() |  | CONFIG_BT=y in A37 | 3.10.0-757 |
| CANDIDATE | — | — | [bluetooth] | hci_ldisc: Add protocol check to hci_uart_tx_wakeup() |  | CONFIG_BT=y in A37 | 3.10.0-757 |
| CANDIDATE | — | — | [bluetooth] | hci_ldisc: Ensure hu->hdev set to NULL before freeing hdev |  | CONFIG_BT=y in A37 | 3.10.0-757 |
| CANDIDATE | — | — | [bluetooth] | hci_ldisc: Fix null pointer derefence in case of early data |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | — | — | [net] | htb: do not setup default rate estimators |  | generic code, tag [net] | 3.10.0-33 |
| CANDIDATE | — | — | [net] | htb: do not setup default rate estimators |  | generic code, tag [net] | 3.10.0-32 |
| CANDIDATE | — | — | [bluetooth] | Implement .activate, .shutdown and .carrier_raised methods |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [net] | include/net/ip_fib: add missing semi-colon |  | generic code, tag [net] | 3.10.0-475 |
| CANDIDATE | — | — | [net] | inet: fix for a race condition in the inet frag code | CVE-2014-0100 | generic code, tag [net] | 3.10.0-111 |
| CANDIDATE | — | — | [net] | inet: frag: fix oops when unloading inetfrag modules |  | generic code, tag [net] | 3.10.0-112 |
| CANDIDATE | — | — | [net] | inet: inet_timewait_sock.h missing semi-colon when KMEMCHECK is enabled |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | — | — | [net] | inet_diag: Fix up addresses in v4-mapped SYN-RECV TCP pseudo sockets |  | generic code, tag [net] | 3.10.0-786 |
| CANDIDATE | — | — | [net] | inet_diag: use READ_ONCE |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | — | — | [net] | inet_diag: zero out uninitialized idiag_{src, dst} fields |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | — | — | [net] | inet_fragment: remove an empty ifdef |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | — | — | [bluetooth] | intel: Use request_firmware instead |  | CONFIG_BT=y in A37 | 3.10.0-422 |
| CANDIDATE | — | — | [net] | introduce and use skb_put_data() |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | — | — | [net] | introduce csum_replace_by_diff() helper |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | — | — | [net] | introduce dev_get_iflink() |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | introduce extended napi_struct |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | — | — | [net] | introduce net_device_extended |  | generic code, tag [net] | 3.10.0-577 |
| CANDIDATE | — | — | [net] | introduce net_device_ops_extended |  | generic code, tag [net] | 3.10.0-435 |
| CANDIDATE | — | — | [bluetooth] | Introduce Qualcomm WCNSS SMD based HCI driver |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | — | — | [net] | iovec.c: add memcpy_fromiovecend_nocache |  | generic code, tag [net] | 3.10.0-427 |
| CANDIDATE | — | — | [net] | ip6_tunnel: Allow sending packets through tunnels with wildcard endpoints |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | ip6_tunnel: fix dst leak |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | — | — | [net] | ip6_tunnel: make ip6tunnel_xmit definition conditional |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | — | — | [net] | ip6_tunnel: remove dead debug code from ip6_tunnel.c |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | ip6tnl, gre6, vti6: implement ndo_get_iflink |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | ip: add SNMP counters tracking incoming ECN bits |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | — | — | [net] | ip: better estimate tunnel header cut for correct ufo handling |  | generic code, tag [net] | 3.10.0-215 |
| CANDIDATE | — | — | [net] | ip: Remove extern from function prototypes |  | generic code, tag [net] | 3.10.0-312 |
| CANDIDATE | — | — | [net] | ip: Save TX flow hash in sock and set in skbuf on xmit |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | — | — | [net] | ip_tunnel: Cache dst in tunnels |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | ip_tunnel: Change __skb_push back to skb_push |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | — | — | [net] | ip_tunnel: Changes to ip_tunnel to support foo-over-udp encapsulation |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | ip_tunnel: clean the GSO bits properly |  | generic code, tag [net] | 3.10.0-951 |
| CANDIDATE | — | — | [net] | ip_tunnel: extend iptunnel_xmit() |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | ip_tunnel: fix a dst leak in tunnels |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | ip_tunnel: fix dst race in sk_dst_get() |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | ip_tunnel: Fix returned tc and hoplimit values for route with IPv6 encapsulation |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | — | — | [net] | ip_tunnel: fix tunnels with "local any remote $remote_ip" |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | ip_tunnel: ip_tunnels: disable cache for nbma gre tunnels |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | ip_tunnel: remove the useless argument from ip_tunnel_hash() |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | ip_tunnel: Use API to access tunnel metadata options |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | — | — | [net] | ip_tunnel: use net_eq() helper to check netns |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | ip_tunnel: Use percpu Cache route in IP tunnels |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | ip_tunnels: define IP_TUNNEL_OPTS_MAX and use it |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | — | — | [net] | ip_tunnels: Introduce tunnel_id_to_key32() and key32_to_tunnel_id() |  | generic code, tag [net] | 3.10.0-643 |
| CANDIDATE | — | — | [net] | ipip, gre, vti, sit: implement ndo_get_iflink |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | ipmr, ip6mr: call ip6mr_free_table() on failure path |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | — | — | [net] | ipt_ulog: do not fail init after creating socket |  | generic code, tag [net] | 3.10.0-308 |
| CANDIDATE | — | — | [net] | ipv4, ipv6: grab rtnl before locking the socket |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | ipv4/tunnels: fix an oops when using ipip/sit with IPsec |  | generic code, tag [net] | 3.10.0-131 |
| CANDIDATE | — | — | [net] | ipv4: add dst cache support for gre lwtunnels |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | — | — | [net] | ipv4: bind ip_nonlocal_bind to current netns |  | generic code, tag [net] | 3.10.0-373 |
| CANDIDATE | — | — | [net] | ipv4: Call skb_checksum_init in IPv4 |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | — | — | [net] | ipv4: Convert ipv4.ip_local_port_range to be per netns |  | generic code, tag [net] | 3.10.0-236 |
| CANDIDATE | — | — | [net] | ipv4: don't forward defragmented DF packet |  | generic code, tag [net] | 3.10.0-340 |
| CANDIDATE | — | — | [net] | ipv4: don't use module_init in non-modular gre_offload |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | — | — | [net] | ipv4: Fix graylist symbol change when edit fib_table |  | generic code, tag [net] | 3.10.0-898 |
| CANDIDATE | — | — | [net] | ipv4: fix incorrectly registered callback for sysctl_fib_multipath_hash_policy |  | generic code, tag [net] | 3.10.0-947 |
| CANDIDATE | — | — | [net] | ipv4: fix spacing in assignment |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | — | — | [net] | ipv4: initialize flow flags in input path |  | generic code, tag [net] | 3.10.0-871 |
| CANDIDATE | — | — | [net] | ipv4: kABI fix for 0bbf87d backport |  | generic code, tag [net] | 3.10.0-236 |
| CANDIDATE | — | — | [net] | ipv4: make snmp_mib_free static inline |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | — | — | [net] | ipv4: Remove fib_local variable |  | generic code, tag [net] | 3.10.0-710 |
| CANDIDATE | — | — | [net] | ipv4: suppress NETDEV_UP notification on address lifetime update |  | generic code, tag [net] | 3.10.0-316 |
| CANDIDATE | — | — | [net] | ipv4: test for IPSKB_FORWARDED in ip_finish_output_gso |  | generic code, tag [net] | 3.10.0-461 |
| CANDIDATE | — | — | [net] | ipv4: udp_offload: Handle static checker complaints |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | — | — | [net] | ipv4: Update RFS target at poll for tcp/udp |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | — | — | [net] | ipv4: Use IS_ERR_OR_NULL |  | generic code, tag [net] | 3.10.0-204 |
| CANDIDATE | — | — | [net] | ipv4: Use non-atomic allocation of udp offloads structure instance |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | — | — | [net] | ipv4: Use proper RCU APIs for writer-side in udp_offload.c |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | — | — | [net] | ipv4: xfrm: Add ESN support for AH egress part |  | generic code, tag [net] | 3.10.0-352 |
| CANDIDATE | — | — | [net] | ipv4: xfrm: Add ESN support for AH ingress part |  | generic code, tag [net] | 3.10.0-352 |
| CANDIDATE | — | — | [net] | ipv4: xfrm: Introduce xfrm_tunnel_notifier for xfrm tunnel mode callback |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | — | — | [net] | ipv6: *_start_timer: rather use unsigned long |  | generic code, tag [net] | 3.10.0-47 |
| CANDIDATE | — | — | [net] | ipv6: accept tlv which includes only padding |  | generic code, tag [net] | 3.10.0-26 |
| CANDIDATE | — | — | [net] | ipv6: add ipv6_proxy_select_ident() |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | — | — | [net] | ipv6: Add NEXTHDR_SCTP to ipv6.h |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | ipv6: addrconf: add IFA_F_NOPREFIXROUTE flag to suppress creation of IP6 routes |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | — | — | [net] | ipv6: addrconf: always initialize sysctl table data |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | — | — | [net] | ipv6: addrconf: don't cleanup prefix route for IFA_F_NOPREFIXROUTE |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | — | — | [net] | ipv6: addrconf: extend ifa_flags to u32 |  | generic code, tag [net] | 3.10.0-63 |
| CANDIDATE | — | — | [net] | ipv6: addrconf: fix preferred lifetime state-changing behavior while valid_lft is infinity |  | generic code, tag [net] | 3.10.0-74 |
| CANDIDATE | — | — | [net] | ipv6: addrconf: Implemented enhanced DAD (RFC7527) |  | generic code, tag [net] | 3.10.0-937 |
| CANDIDATE | — | — | [net] | ipv6: addrconf: introduce IFA_F_MANAGETEMPADDR to tell kernel to manage temporary addresses |  | generic code, tag [net] | 3.10.0-63 |
| CANDIDATE | — | — | [net] | ipv6: addrconf: revert /proc/net/if_inet6 ifa_flag format |  | generic code, tag [net] | 3.10.0-63 |
| CANDIDATE | — | — | [net] | ipv6: addrlabel: fix ip6addrlbl_get() |  | generic code, tag [net] | 3.10.0-352 |
| CANDIDATE | — | — | [net] | ipv6: allow routes to be configured with expire |  | generic code, tag [net] | 3.10.0-349 |
| CANDIDATE | — | — | [net] | ipv6: always hold idev->lock before mca_lock |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | — | — | [net] | ipv6: Call skb_checksum_init in IPv6 |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | — | — | [net] | ipv6: Clean up indentation in net/ipv6/transp_v6.h |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | — | — | [net] | ipv6: Display all addresses in output of /proc/net/if_inet6 |  | generic code, tag [net] | 3.10.0-1018 |
| CANDIDATE | — | — | [net] | ipv6: display hw address of source machine during ipv6 DAD failure |  | generic code, tag [net] | 3.10.0-937 |
| CANDIDATE | — | — | [net] | ipv6: don't use CHECKSUM_PARTIAL on MSG_MORE/UDP_CORK sockets |  | generic code, tag [net] | 3.10.0-326 |
| CANDIDATE | — | — | [net] | ipv6: drop unused fib6_clean_all_ro() function and rt6_proc_arg struct |  | generic code, tag [net] | 3.10.0-215 |
| CANDIDATE | — | — | [net] | ipv6: Export addrconf_ifid_eui48 |  | generic code, tag [net] | 3.10.0-444 |
| CANDIDATE | — | — | [net] | ipv6: Export fib6_get_table and nd_tbl |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | — | — | [net] | ipv6: Fix alleged compiler warning in ipv6_exthdrs_len() |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | — | — | [net] | ipv6: fix potential use after free in tcp_v6_do_rcv |  | generic code, tag [net] | 3.10.0-21 |
| CANDIDATE | — | — | [net] | ipv6: Fix regression in udp_v6_mcast_next() |  | generic code, tag [net] | 3.10.0-349 |
| CANDIDATE | — | — | [net] | ipv6: Fix wrong direct fetch of hw_enc_features in ipv6_gso_segment() |  | generic code, tag [net] | 3.10.0-532 |
| CANDIDATE | — | — | [net] | ipv6: gre: add x-netns support |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | — | — | [net] | ipv6: gro: fix forwarding of tunneled packets |  | generic code, tag [net] | 3.10.0-509 |
| CANDIDATE | — | — | [net] | ipv6: igmp: add __ipv6_sock_mc_join and __ipv6_sock_mc_drop |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | ipv6: implement ipv6_mod_enabled |  | generic code, tag [net] | 3.10.0-668 |
| CANDIDATE | — | — | [net] | ipv6: Implmement RFC 6936 (zero RX csums for UDP/IPv6) |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | — | — | [net] | ipv6: increase ip6_rt_max_size to 16384 |  | generic code, tag [net] | 3.10.0-150 |
| CANDIDATE | — | — | [net] | ipv6: introduce ipv6_authlen and IP6_OFFSET |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | ipv6: mcast: use defines for rfc3810/8.1 lengths |  | generic code, tag [net] | 3.10.0-47 |
| CANDIDATE | — | — | [net] | ipv6: provide stubs for ip6_set_txhash and ip6_make_flowlabel |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | — | — | [net] | ipv6: Remove extern function prototypes |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | — | — | [net] | ipv6: Remove rebundant rt6i_nsiblings initialization |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | — | — | [net] | ipv6: Rewind hlist offset on interrupted /proc/net/if_inet6 read |  | generic code, tag [net] | 3.10.0-1111 |
| CANDIDATE | — | — | [net] | ipv6: sit: set rtnl_link_ops before calling register_netdevice |  | generic code, tag [net] | 3.10.0-385 |
| CANDIDATE | — | — | [net] | ipv6: support more tunnel interfaces for EUI64 link-local generation |  | generic code, tag [net] | 3.10.0-1118 |
| CANDIDATE | — | — | [net] | ipv6: transp_v6.h: style neatening |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | — | — | [net] | ipv6: udp: use sticky pktinfo egress ifindex on connect() |  | generic code, tag [net] | 3.10.0-352 |
| CANDIDATE | — | — | [net] | ipv6: update flowi6_oif in ip6_dst_lookup_flow if not set |  | generic code, tag [net] | 3.10.0-312 |
| CANDIDATE | — | — | [net] | ipv6: use in6_dev_put in dad timer handler instead of __in6_dev_put |  | generic code, tag [net] | 3.10.0-1160.14.1 |
| CANDIDATE | — | — | [net] | ipv6: xfrm: Add ESN support for AH egress part |  | generic code, tag [net] | 3.10.0-352 |
| CANDIDATE | — | — | [net] | ipv6: xfrm: Add ESN support for AH ingress part |  | generic code, tag [net] | 3.10.0-352 |
| CANDIDATE | — | — | [net] | iucv: use basic blocks for iucv inline assemblies |  | generic code, tag [net] | 3.10.0-532 |
| CANDIDATE | — | — | [net] | kabi: don't make kabi-check trip over sk_buff change |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | — | — | [net] | kabi: introduce shadow sch_generic.h for generating correct checksums |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | — | — | [net] | kabi: prepare protection for struct Qdisc |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | — | — | [net] | kabi: remove RH_KABI_ macros from sch_generic.h |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | — | — | [net] | kabi: use different sch_generic.h for checksums generation |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | — | — | [net] | kabi: whitelist struct nf_hook_state |  | generic code, tag [net] | 3.10.0-284 |
| CANDIDATE | — | — | [net] | l2cap: prevent stack overflow on incoming bluetooth packet | CVE-2017-1000251 | generic code, tag [net] | 3.10.0-713 |
| CANDIDATE | — | — | [net] | l2tp: change L2TP_ATTR_UDP_ZERO_CSUM6_(RX, TX) attribute types |  | CONFIG_L2TP=y in A37 | 3.10.0-882 |
| CANDIDATE | — | — | [net] | l2tp: don't fall back on UDP [get\|set]sockopt | CVE-2014-4943 | CONFIG_L2TP=y in A37 | 3.10.0-144 |
| CANDIDATE | — | — | [net] | l2tp: fix racy SOCK_ZAPPED flag check in l2tp_ip{, 6}_bind() | CVE-2016-10200 | CONFIG_L2TP=y in A37 | 3.10.0-678 |
| CANDIDATE | — | — | [net] | leave space to allow adding new GSO bits |  | generic code, tag [net] | 3.10.0-444 |
| CANDIDATE | — | — | [net] | lwtunnel: Add cfg argument to build_state |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | — | — | [net] | lwtunnel: Add support to redirect dst.input |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | — | — | [net] | lwtunnel: fix rx checksum setting for lwt devices tunneling over ipv6 |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | — | — | [net] | macsec: use core MTU range checking in core net infra |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | — | — | [net] | Make __skb_set_sw_hash a general function |  | generic code, tag [net] | 3.10.0-637 |
| CANDIDATE | — | — | [net] | make skb_pull & friends return void pointers |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | — | — | [net] | make skb_push & __skb_push return void pointers |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | — | — | [net] | make skb_put & friends return void pointers |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | — | — | [net] | Mark TC HW offloading as Tech Preview |  | generic code, tag [net] | 3.10.0-866 |
| CANDIDATE | — | — | [net] | mii, smsc: Make mii_ethtool_get_link_ksettings and smc_netdev_get_ecmd return void |  | generic code, tag [net] | 3.10.0-867 |
| CANDIDATE | — | — | [net] | Miscellaneous conversions to ETH_ALEN |  | generic code, tag [net] | 3.10.0-594 |
| CANDIDATE | — | — | [net] | move inline skb_needs_linearize helper to header |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | — | — | [net] | move ndo_dfwd_add/del_station to net_device_ops_extended |  | generic code, tag [net] | 3.10.0-435 |
| CANDIDATE | — | — | [net] | move ndo_set_tx_maxrate to net_device_ops_extended |  | generic code, tag [net] | 3.10.0-435 |
| CANDIDATE | — | — | [net] | move ndo_set_vf_trust to net_device_ops_extended |  | generic code, tag [net] | 3.10.0-435 |
| CANDIDATE | — | — | [bluetooth] | Move rfcomm_get_device() before rfcomm_dev_activate() |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [net] | move skb_scrub_packet() after eth_type_trans() |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [bluetooth] | Move the tty initialization and cleanup out of open/close |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [net] | multicast: should not send source list records when have filter mode change |  | generic code, tag [net] | 3.10.0-494 |
| CANDIDATE | — | — | [net] | ndo: consolidate reserved fields |  | generic code, tag [net] | 3.10.0-435 |
| CANDIDATE | — | — | [net] | neighbour: fix crash at dumping device-agnostic proxy entries |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | — | — | [net] | neighbour: Really delete an arp/neigh entry on "ip neigh delete" or "arp -d" |  | generic code, tag [net] | 3.10.0-703 |
| CANDIDATE | — | — | [net] | neighbour: remove dynamic neigh table registration support |  | generic code, tag [net] | 3.10.0-703 |
| CANDIDATE | — | — | [net] | net.h, skbuff.h: Remove extern from function prototypes |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | — | — | [net] | net_sched: actions: use nla_parse_nested() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | net_sched: avoid costly atomic operation in fq_dequeue() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-297 |
| CANDIDATE | — | — | [net] | net_sched: fix a typo in htb_change_class() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-21 |
| CANDIDATE | — | — | [net] | net_sched: implement qstat helper routines |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-297 |
| CANDIDATE | — | — | [net] | netdev_features: work around NETIF_F kabi breakage |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | — | — | [net] | netfilter: bridge: No ICMP packet on IPv4 fragmentation error |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-340 |
| CANDIDATE | — | — | [net] | netfilter: bridge: simplify test with nf_bridge_in_prerouting |  | CONFIG_BRIDGE_NF_EBTABLES=y in A37 | 3.10.0-340 |
| CANDIDATE | — | — | [net] | netfilter: conntrack: don't reject clashing expectation if its in another ct zone |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-312 |
| CANDIDATE | — | — | [net] | netfilter: cttimeout: add rcu_barrier() on module removal |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-468 |
| CANDIDATE | — | — | [net] | netfilter: Fix common typo in "identify" |  | CONFIG_NETFILTER=y in A37 | 3.10.0-894 |
| CANDIDATE | — | — | [net] | netfilter: fix errors in printk |  | CONFIG_NETFILTER=y in A37 | 3.10.0-894 |
| CANDIDATE | — | — | [net] | netfilter: fix NULL ptr dereference in nf_send_reset() |  | CONFIG_NETFILTER=y in A37 | 3.10.0-857 |
| CANDIDATE | — | — | [net] | netfilter: fix oops with metadata dst |  | CONFIG_NETFILTER=y in A37 | 3.10.0-433 |
| CANDIDATE | — | — | [net] | netfilter: fix panic when oom during rule replacement |  | CONFIG_NETFILTER=y in A37 | 3.10.0-120 |
| CANDIDATE | — | — | [net] | netfilter: Fix typo in Kconfig |  | CONFIG_NETFILTER=y in A37 | 3.10.0-894 |
| CANDIDATE | — | — | [net] | netfilter: log: split family specific code to nf_log_{ip, ip6, common}.c files |  | CONFIG_NETFILTER=y in A37 | 3.10.0-211 |
| CANDIDATE | — | — | [net] | netfilter: nf_conntrack: don't resize NULL or freed hashtable |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-937 |
| CANDIDATE | — | — | [net] | netfilter: nf_conntrack_h323: lost .data_len definition for Q.931/ipv6 |  | CONFIG_NF_CONNTRACK=y in A37 | 3.10.0-1153 |
| CANDIDATE | — | — | [net] | netfilter: nf_nat: on-stack struct netdev_notifier_info |  | CONFIG_NF_NAT=y in A37 | 3.10.0-484 |
| CANDIDATE | — | — | [net] | netfilter: nf_tables_bridge: replace nft_reject_ip*hdr_validate functions |  | CONFIG_NETFILTER=y in A37 | 3.10.0-458 |
| CANDIDATE | — | — | [net] | netfilter: nf_tables_bridge: update hook_mask to allow {pre, post}routing |  | CONFIG_NETFILTER=y in A37 | 3.10.0-359 |
| CANDIDATE | — | — | [net] | netfilter: nfnetlink_{log, queue}, fix information leaks in netlink message |  | CONFIG_NETFILTER=y in A37 | 3.10.0-33 |
| CANDIDATE | — | — | [net] | netfilter: nfnetlink_{log, queue}, fix information leaks in netlink message |  | CONFIG_NETFILTER=y in A37 | 3.10.0-32 |
| CANDIDATE | — | — | [net] | netfilter: nfnetlink_{log, queue}: Register pernet in first place |  | CONFIG_NETFILTER=y in A37 | 3.10.0-424 |
| CANDIDATE | — | — | [net] | netfilter: Pass nf_hook_state through nf_nat_ipv4_{in, out, fn, local_fn}() |  | CONFIG_NETFILTER=y in A37 | 3.10.0-284 |
| CANDIDATE | — | — | [net] | netfilter: Pass nf_hook_state through nf_nat_ipv6_{in, out, fn, local_fn}() |  | CONFIG_NETFILTER=y in A37 | 3.10.0-284 |
| CANDIDATE | — | — | [net] | netfilter: provide v6ops->fragment to forward IPv6 fragmented packets |  | CONFIG_NETFILTER=y in A37 | 3.10.0-340 |
| CANDIDATE | — | — | [net] | netfilter: RHEL7 kABI prepare struct netns_ct |  | CONFIG_NETFILTER=y in A37 | 3.10.0-74 |
| CANDIDATE | — | — | [net] | netfilter: sometimes valid entries in hash:* types of sets were evicted |  | CONFIG_NETFILTER=y in A37 | 3.10.0-894 |
| CANDIDATE | — | — | [net] | netfilter: ulog: compat with new structure |  | CONFIG_NETFILTER=y in A37 | 3.10.0-211 |
| CANDIDATE | — | — | [net] | netfilter: x_tables: avoid percpu ruleset duplication |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-281 |
| CANDIDATE | — | — | [net] | netfilter: x_tables: use percpu rule counters |  | CONFIG_NETFILTER_XTABLES=y in A37 | 3.10.0-281 |
| CANDIDATE | — | — | [net] | netlink: Add new type NLA_BITFIELD32 |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | — | — | [net] | netlink: Add variants of capable for use on netlink messages | CVE-2014-0181 | generic code, tag [net] | 3.10.0-128 |
| CANDIDATE | — | — | [net] | netlink: fix missing newline in the implementation of NL_SET_ERR_MSG |  | generic code, tag [net] | 3.10.0-1090 |
| CANDIDATE | — | — | [net] | netlink: Fix permission check in netlink_connect() | CVE-2014-0181 | generic code, tag [net] | 3.10.0-128 |
| CANDIDATE | — | — | [net] | netlink: implement RHEL specific implementation of NL_SET_ERR_MSG* |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | — | — | [net] | netns: Delay default_device_exit_batch until no devices are unregistering |  | generic code, tag [net] | 3.10.0-158 |
| CANDIDATE | — | — | [net] | new helper memcpy_from_msg() |  | generic code, tag [net] | 3.10.0-532 |
| CANDIDATE | — | — | [net] | nf: remove automatic helper assignment removal warning |  | CONFIG_NETFILTER=y in A37 | 3.10.0-93 |
| CANDIDATE | — | — | [net] | nf_conntrack: allow server to become a client in TW handling |  | generic code, tag [net] | 3.10.0-236 |
| CANDIDATE | — | — | [net] | nf_conntrack: decrement global counter after object release |  | generic code, tag [net] | 3.10.0-132 |
| CANDIDATE | — | — | [net] | nf_conntrack: reserve two bytes for nf_ct_ext->len | CVE-2014-9715 | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | — | — | [net] | nf_log: Report attempt to load conflicting logger |  | generic code, tag [net] | 3.10.0-764 |
| CANDIDATE | — | — | [net] | nf_queue: add NFQA_SKB_CSUM_NOTVERIFIED info flag |  | generic code, tag [net] | 3.10.0-93 |
| CANDIDATE | — | — | [net] | nf_reset: also clear nfctinfo bits |  | generic code, tag [net] | 3.10.0-898 |
| CANDIDATE | — | — | [net] | nfnetlink_log: unset nf_loggers for netns when unloading module |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | — | — | [net] | oenvswitch: Change pseudohdr argument of inet_proto_csum_replace* to be a bool |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | — | — | [net] | packet: fix a race in packet_bind() and packet_notifier() | CVE-2018-18559 | CONFIG_PACKET=y in A37 | 3.10.0-971 |
| CANDIDATE | — | — | [net] | packet: fix overflow in check for priv area size | CVE-2017-7308 | CONFIG_PACKET=y in A37 | 3.10.0-656 |
| CANDIDATE | — | — | [net] | packet: fix overflow in check for tp_frame_nr | CVE-2017-7308 | CONFIG_PACKET=y in A37 | 3.10.0-656 |
| CANDIDATE | — | — | [net] | packet: fix overflow in check for tp_reserve | CVE-2017-7308 | CONFIG_PACKET=y in A37 | 3.10.0-656 |
| CANDIDATE | — | — | [net] | page_pool: Fix inconsistent lock state warning |  | generic code, tag [net] | 3.10.0-983 |
| CANDIDATE | — | — | [net] | ppp: ppp-ioctl.h: pull in ppp_defs.h |  | CONFIG_PPP=y in A37 | 3.10.0-223 |
| CANDIDATE | — | — | [net] | preserve behavior of ether_setup and allocate_etherdev_mqs |  | generic code, tag [net] | 3.10.0-829 |
| CANDIDATE | — | — | [net] | proc_fs: print UIDs as unsigned int |  | generic code, tag [net] | 3.10.0-41 |
| CANDIDATE | — | — | [bluetooth] | Purge the dlc->tx_queue to avoid circular dependency |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [net] | qdisc: hhf: Heavy-Hitter Filter (HHF) qdisc |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | — | — | [net] | qdisc: IFF_NO_QUEUE drivers should use consistent TX queue len |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | — | — | [bluetooth] | Refactor deferred setup test in rfcomm_dlc_close() |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [bluetooth] | Refactor dlc disconnect logic in rfcomm_dlc_close() |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [bluetooth] | Refuse peer RFCOMM address reading when not connected |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [bluetooth] | Release RFCOMM port when the last user closes the TTY |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [bluetooth] | Release rfcomm_dev only once |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [bluetooth] | Remove deprecated create_singlethread_workqueue |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | — | — | [net] | remove explicit do_softirq() from busy_poll_stop() |  | generic code, tag [net] | 3.10.0-717 |
| CANDIDATE | — | — | [net] | Remove extern from function prototypes |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | — | — | [net] | Remove extern from function prototypes |  | generic code, tag [net] | 3.10.0-223 |
| CANDIDATE | — | — | [net] | remove incorrect assignment to skb->sender_cpu |  | generic code, tag [net] | 3.10.0-475 |
| CANDIDATE | — | — | [bluetooth] | Remove rfcomm_carrier_raised() |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [bluetooth] | Remove the device from the list in the destructor |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [net] | rename ndo_setup_tc callback and remove it from kABI |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | — | — | [net] | replace callings of .ndo_setup_tc by wrapper |  | generic code, tag [net] | 3.10.0-774 |
| CANDIDATE | — | — | [bluetooth] | Replace constant hw_variant from Intel Bluetooth firmware filename |  | CONFIG_BT=y in A37 | 3.10.0-466 |
| CANDIDATE | — | — | [net] | reserve kABI fields in struct packet_type |  | generic code, tag [net] | 3.10.0-505 |
| CANDIDATE | — | — | [net] | return NULL if metadata_dst allocation fails in metadata_dst_alloc |  | generic code, tag [net] | 3.10.0-991 |
| CANDIDATE | — | — | [net] | revert "[net] dev: set iflink to 0 for virtual interfaces" |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | — | — | [net] | revert "[net] ipv6: Display all addresses in output of /proc/net/if_inet6" |  | generic code, tag [net] | 3.10.0-1111 |
| CANDIDATE | — | — | [net] | revert "[net] openvswitch: remove GFP_THISNODE" |  | generic code, tag [net] | 3.10.0-293 |
| CANDIDATE | — | — | [net] | revert "[netdrv] bonding: propagate LRO disable to slave devices" |  | generic code, tag [net] | 3.10.0-388 |
| CANDIDATE | — | — | [net] | revert "bridge: Program port vlan filters only if filtering is enabled in bridge" |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | — | — | [net] | revert "inet: frag: remove hash size assumptions from callers" |  | generic code, tag [net] | 3.10.0-650 |
| CANDIDATE | — | — | [net] | revert "ipv6: Don't reduce hop limit for an interface" |  | generic code, tag [net] | 3.10.0-322 |
| CANDIDATE | — | — | [net] | revert "ipv6: don't use CHECKSUM_PARTIAL on MSG_MORE/UDP_CORK sockets" |  | generic code, tag [net] | 3.10.0-373 |
| CANDIDATE | — | — | [net] | revert "rhel: use dummy net_device for tunnels" |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | — | — | [net] | revert "rtnetlink: validate IFLA_MTU attribute in rtnl_create_link()" |  | generic code, tag [net] | 3.10.0-1146 |
| CANDIDATE | — | — | [net] | revert "tcp: fix stretch ACK bugs in Reno" |  | generic code, tag [net] | 3.10.0-656 |
| CANDIDATE | — | — | [net] | revert "tcp: fix tcp_cong_avoid_ai() credit accumulation bug with decreases in w" |  | generic code, tag [net] | 3.10.0-656 |
| CANDIDATE | — | — | [net] | revert "tcp: fix the timid additive increase on stretch ACKs" |  | generic code, tag [net] | 3.10.0-656 |
| CANDIDATE | — | — | [net] | revert ipv4: use skb coalescing in defragmentation | CVE-2018-5391 | generic code, tag [net] | 3.10.0-947 |
| CANDIDATE | — | — | [net] | revert: "udp_offload: put sk before returning" |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | — | — | [net] | revise "bridge: implement rtnl_link_ops->get_size and rtnl_link_ops->fill_info" |  | generic code, tag [net] | 3.10.0-525 |
| CANDIDATE | — | — | [net] | rhel: use dummy net_device for tunnels |  | generic code, tag [net] | 3.10.0-340 |
| CANDIDATE | — | — | [net] | route: enforce hoplimit max value |  | generic code, tag [net] | 3.10.0-407 |
| CANDIDATE | — | — | [net] | route: Refactor rtable initialization |  | generic code, tag [net] | 3.10.0-918 |
| CANDIDATE | — | — | [net] | rtnetlink: add IFLA_GSO_MAX_SEGS and IFLA_GSO_MAX_SIZE attributes |  | generic code, tag [net] | 3.10.0-572 |
| CANDIDATE | — | — | [net] | rtnetlink: advertise the new nsid when the netns iface changes |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | — | — | [net] | rtnetlink: allow using zero MAC address in rtnl_fdb_{add, del} |  | generic code, tag [net] | 3.10.0-14 |
| CANDIDATE | — | — | [net] | rtnetlink: correct error path in rtnl_newlink() |  | generic code, tag [net] | 3.10.0-491 |
| CANDIDATE | — | — | [net] | rtnetlink: Improve handling of failures on link and route dumps |  | generic code, tag [net] | 3.10.0-798 |
| CANDIDATE | — | — | [net] | rtnetlink: Pass VLAN ID to rtnl_fdb_notify |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | — | — | [net] | rtnetlink: Remove extern from function prototypes |  | generic code, tag [net] | 3.10.0-433 |
| CANDIDATE | — | — | [net] | rtnetlink: wrap .ndo_fdb_dump calls |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | — | — | [net] | rtnl: do_setlink(): last arg is now a set of flags |  | generic code, tag [net] | 3.10.0-475 |
| CANDIDATE | — | — | [net] | rtnl: do_setlink(): notify when a netdev is modified |  | generic code, tag [net] | 3.10.0-475 |
| CANDIDATE | — | — | [net] | rtnl: do_setlink(): set modified when IFLA_LINKMODE is updated |  | generic code, tag [net] | 3.10.0-475 |
| CANDIDATE | — | — | [net] | rtnl: do_setlink(): set modified when IFLA_TXQLEN is updated |  | generic code, tag [net] | 3.10.0-475 |
| CANDIDATE | — | — | [net] | sched actions: fix dumping which requires several messages to user space |  | generic code, tag [net] | 3.10.0-1053 |
| CANDIDATE | — | — | [net] | sched actions: fix invalid pointer dereferencing if skbedit flags missing |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | — | — | [net] | sched actions: fix refcnt leak in skbmod |  | generic code, tag [net] | 3.10.0-1048 |
| CANDIDATE | — | — | [net] | sched: act: action flushing missaccounting |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: act: clean up notification functions |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: act: clean up tca_action_flush() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: act: Dont increment refcnt on replace |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: act: export tcf_hash_search() instead of tcf_hash_lookup() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: act: fetch hinfo from a->ops->hinfo |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: act: hide struct tcf_common from API |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: act: move idx_gen into struct tcf_hashinfo |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: act: move tcf_hashinfo_init() into tcf_register_action() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: act: refactor cleanup ops |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: act: refuse to remove bound action outside |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: act: remove capab from struct tc_action_ops |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: act: remove struct tcf_act_hdr |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: act: use standard struct list_head |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: act: use tcf_hash_release() in net/sched/act_police.c |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: action: make local function static |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: actions police: peg drop stats for conforming traffic |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: actions: Add support for user cookies |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-668 |
| CANDIDATE | — | — | [net] | sched: actions: add time filter for action dumping |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: actions: aggregate dumping of actions timeinfo |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-668 |
| CANDIDATE | — | — | [net] | sched: actions: allocate act cookie early |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-668 |
| CANDIDATE | — | — | [net] | sched: actions: Complete the JUMPX opcode |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: actions: decrement module reference count after table flush. |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: actions: do not overwrite status of action creation |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-668 |
| CANDIDATE | — | — | [net] | sched: actions: dump more than TCA_ACT_MAX_PRIO actions per batch |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: actions: fix GETing actions |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: actions: fix refcnt when GETing of action after bind |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: actions: introduce timestamp for firsttime use |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-668 |
| CANDIDATE | — | — | [net] | sched: actions: policer missing timestamp processing |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-668 |
| CANDIDATE | — | — | [net] | sched: actions: rename act_get_notify() to tcf_get_notify() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: actions: return explicit error when tunnel_key mode is not specified |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-878 |
| CANDIDATE | — | — | [net] | sched: actions: skbedit add support for mod-ing skb pkt_type |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: actions: skbedit convert to use more modern nla_put_xxx |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: actions: Use proper root attribute table for actions |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: actions: use tcf_lastuse_update for consistency |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-668 |
| CANDIDATE | — | — | [net] | sched: Add __GFP_NOWARN to k.alloc calls with v.alloc fallbacks |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: Add accessor functions to pedit keys for offloading drivers |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: add cond_resched() to class and qdisc dump |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: Add hardware specific counters to TC actions |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-983 |
| CANDIDATE | — | — | [net] | sched: Add match-all classifier hw offloading. |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-634 |
| CANDIDATE | — | — | [net] | sched: Add select_queue() class_ops for mqprio |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-882 |
| CANDIDATE | — | — | [net] | sched: Add separate check for skip_hw flag |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-643 |
| CANDIDATE | — | — | [net] | sched: add struct net pointer to tcf_proto_ops->dump |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: Add support for HW offloading for CBS |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-882 |
| CANDIDATE | — | — | [net] | sched: add tunnel option support to act_tunnel_key |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-998 |
| CANDIDATE | — | — | [net] | sched: allow flower to match tunnel options |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1018 |
| CANDIDATE | — | — | [net] | sched: avoid calling tcf_unbind_filter() in call_rcu callback |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-628 |
| CANDIDATE | — | — | [net] | sched: avoid casting void pointer |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: avoid generating same handle for u32 filters |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: avoid matching qdisc with zero handle |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: avoid unused variable warning |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-643 |
| CANDIDATE | — | — | [net] | sched: cbs: Change TC_SETUP_CBS to TC_SETUP_QDISC_CBS |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-882 |
| CANDIDATE | — | — | [net] | sched: cbs: fix NULL dereference in case cbs_init() fails |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1144 |
| CANDIDATE | — | — | [net] | sched: change "foo* bar" to "foo *bar" |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: Change act_api and act_xxx modules to use IDR |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: Change behavior of mq select_queue() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-882 |
| CANDIDATE | — | — | [net] | sched: Change cls_flower to use IDR |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: Check for null dev_queue on create flow |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-882 |
| CANDIDATE | — | — | [net] | sched: check NULL in tcf_block_put() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | — | — | [net] | sched: close another race condition in tcf_mirred_release() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: cls: allow for deleting all filters for given parent |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-678 |
| CANDIDATE | — | — | [net] | sched: cls: also reject deleting all filters when TCA_KIND present |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-678 |
| CANDIDATE | — | — | [net] | sched: cls: refactor out struct tcf_ext_map |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: cls_flow: remove duplicate assignments |  | CONFIG_NET_CLS_FLOW=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: cls_flow: remove faulty use of list_for_each_entry_rcu |  | CONFIG_NET_CLS_FLOW=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: cls_u32: add missing rcu_assign_pointer and annotation |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-628 |
| CANDIDATE | — | — | [net] | sched: cls_u32: Add support for skip-sw flag to tc u32 classifier. |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-628 |
| CANDIDATE | — | — | [net] | sched: cls_u32: be more strict about skip-sw flag |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-628 |
| CANDIDATE | — | — | [net] | sched: cls_u32: complete the check for non-forced case in u32_destroy() |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: cls_u32: fix cls_u32 on filter replace |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-854 |
| CANDIDATE | — | — | [net] | sched: cls_u32: fix missed pcpu_success free_percpu |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-628 |
| CANDIDATE | — | — | [net] | sched: cls_u32: fix unsued cpu variable |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: cls_u32: move TC offload feature bit into cls_u32 offload logic |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-628 |
| CANDIDATE | — | — | [net] | sched: cls_u32: Reflect HW offload status |  | CONFIG_NET_CLS_U32=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: consolidate tc_classify{, _compat} |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: convert tc_action_ops to use struct list_head |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: convert tcf_hashinfo to hlist and use spinlock |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: convert tcf_proto_ops to use struct list_head |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: copy exts->type in tcf_exts_change() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: Default action lookup method for actions |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: destroy proto tp when all filters are gone |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: do not use rcu in tc_dump_qdisc() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: don't dereference a->goto_chain to read the chain index |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1096 |
| CANDIDATE | — | — | [net] | sched: Don't warn on missmatching qlen and backlog for offloaded qdiscs |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-918 |
| CANDIDATE | — | — | [net] | sched: em_meta: Fix 'meta vlan' to correctly recognize zero VID frames |  | CONFIG_NET_EMATCH_META=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: Enable netdev drivers to update statistics of offloaded actions |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-628 |
| CANDIDATE | — | — | [net] | sched: Export tc_tunnel_key so its UAPI accessible |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: Fail if missing mandatory action operation methods |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: filters: fix filter handle ID in tfilter_notify_chain() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: filters: fix notification of filter delete with proper handle |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: filters: pass netlink message flags in event notification |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: fix ->get helper of the matchall cls |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1053 |
| CANDIDATE | — | — | [net] | sched: fix a missing rcu barrier in mini_qdisc_pair_swap() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | — | — | [net] | sched: fix a null pointer dereference in tcindex_set_parms() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: fix a race condition in tcindex_destroy() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1053 |
| CANDIDATE | — | — | [net] | sched: fix a regression in tc actions |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: fix a regression in tcf_proto_lookup_ops() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: fix a typo in tc_for_each_action() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-628 |
| CANDIDATE | — | — | [net] | sched: fix a use-after-free in tc_ctl_tfilter() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: Fix actions list corruption when adding offloaded tc flows |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-882 |
| CANDIDATE | — | — | [net] | sched: fix an allocation bug in tcindex_set_parms() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: fix an oops in tcindex filter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: fix another regression in cls_tcindex |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: Fix dumping of non-existing actions' stats |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: fix encoding to use real length |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: fix errno in tcindex_set_parms() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: fix error return code in fw_change_attrs() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: fix filter flushing |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: fix idr leak in the error path of __tcf_ipt_init() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1048 |
| CANDIDATE | — | — | [net] | sched: fix idr leak in the error path of tcf_act_police_init() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1048 |
| CANDIDATE | — | — | [net] | sched: fix idr leak in the error path of tcf_simp_init() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1048 |
| CANDIDATE | — | — | [net] | sched: fix idr leak in the error path of tcf_skbmod_init() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1048 |
| CANDIDATE | — | — | [net] | sched: fix idr leak in the error path of tcp_pedit_init() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1048 |
| CANDIDATE | — | — | [net] | sched: fix memory leak in act_tunnel_key_init() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-998 |
| CANDIDATE | — | — | [net] | sched: fix memory leak in cls_tcindex |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: Fix missing res info when create new tc_index filter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-940 |
| CANDIDATE | — | — | [net] | sched: fix NULL dereference in the error path of tcf_sample_init() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1048 |
| CANDIDATE | — | — | [net] | sched: fix NULL dereference in the error path of tunnel_key_init() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-998 |
| CANDIDATE | — | — | [net] | sched: fix NULL dereference on the error path of tcf_skbmod_init() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1048 |
| CANDIDATE | — | — | [net] | sched: fix NULL pointer dereference when delete tcindex filter |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-940 |
| CANDIDATE | — | — | [net] | sched: fix panic when updating miniq (b, q)stats |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | — | — | [net] | sched: fix pfifo_head_drop behavior vs backlog |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-615 |
| CANDIDATE | — | — | [net] | sched: fix pointer check in gen_handle |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: fix refcnt leak in the error path of tcf_vlan_init() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1048 |
| CANDIDATE | — | — | [net] | sched: fix regression in tc_action_ops |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: fix struct tc_u_hnode layout in u32 |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: fix suspicious RCU usage in cls_bpf_classify() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: fix suspicious RCU usage in tcindex_classify() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: fix suspicious rcu_dereference_check in net/sched/sch_fq_codel.c |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: Fix the logic error to decide the ingress qdisc |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: fix unused variables in __gnet_stats_copy_basic_cpu() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: Fix update of lastuse in act modules implementing stats_update |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1053 |
| CANDIDATE | — | — | [net] | sched: flower: add support for matching on tcp flags |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: flower: Add support for matching on vlan ethertype |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-983 |
| CANDIDATE | — | — | [net] | sched: flower: Add supprt for matching on QinQ vlan headers |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-983 |
| CANDIDATE | — | — | [net] | sched: flower: Dump the ethertype encapsulated in vlan |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-983 |
| CANDIDATE | — | — | [net] | sched: flower: Fix null pointer dereference when run tc vlan command |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-983 |
| CANDIDATE | — | — | [net] | sched: fold tcf_block_cb_call() into tc_setup_cb_call() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1090 |
| CANDIDATE | — | — | [net] | sched: fq: take care of throttled flows before reuse |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1053 |
| CANDIDATE | — | — | [net] | sched: fq_codel: add batch ability to fq_codel_drop() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-615 |
| CANDIDATE | — | — | [net] | sched: fq_codel: add memory limitation per queue |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-615 |
| CANDIDATE | — | — | [net] | sched: fq_codel: Avoid set-but-unused variable |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: fq_codel: explicitly reset flows in ->reset() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-615 |
| CANDIDATE | — | — | [net] | sched: fq_codel: fix a use-after-free |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-615 |
| CANDIDATE | — | — | [net] | sched: fq_codel: fix memory limitation drift |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-615 |
| CANDIDATE | — | — | [net] | sched: fq_codel: fix NET_XMIT_CN behavior |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-615 |
| CANDIDATE | — | — | [net] | sched: fq_codel: fix return value of fq_codel_drop() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-615 |
| CANDIDATE | — | — | [net] | sched: fq_codel: return non zero qlen in class dumps |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: get rid of rcu_barrier() in tcf_block_put_ext() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-842 |
| CANDIDATE | — | — | [net] | sched: give visibility to mq slave qdiscs |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: hfsc: allocate tcf block for hfsc root class |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: hfsc: fix curve activation in hfsc_change_class() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: hfsc: opencode trivial set_active() and set_passive() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: hold tcf_lock in netdevice notifier |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: htb: do not acquire qdisc lock in dump operations |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: ife action: add 16 bit helpers |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: ife action: Introduce skb tcindex metadata encap decap |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: indentation and other OCD stylistic fixes |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-678 |
| CANDIDATE | — | — | [net] | sched: init struct tcf_hashinfo at register time |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: Introduce act_tunnel_key |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-668 |
| CANDIDATE | — | — | [net] | sched: Introduce Credit Based Shaper (CBS) qdisc |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-882 |
| CANDIDATE | — | — | [net] | sched: introduce Match-all classifier |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-634 |
| CANDIDATE | — | — | [net] | sched: introduce qdisc_replace() helper |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-615 |
| CANDIDATE | — | — | [net] | sched: Introduce sample tc action |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: invoke ->attach() after setting dev->qdisc |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: Kconfig: select LIBCRC32C if NET_ACT_CSUM is selected |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: keep backlog updated with qlen |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-615 |
| CANDIDATE | — | — | [net] | sched: Macro instead of CONFIG_NET_CLS_ACT ifdef |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-628 |
| CANDIDATE | — | — | [net] | sched: make dev_trans_start return vlan's real dev trans_start |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-577 |
| CANDIDATE | — | — | [net] | sched: make sch_blackhole.c explicitly non-modular |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: matchall: Fix configuration race |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-634 |
| CANDIDATE | — | — | [net] | sched: move tc offload macros to pkt_cls.h |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-643 |
| CANDIDATE | — | — | [net] | sched: move the sanity test in qdisc_list_add() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: mqprio: Change TC_SETUP_MQPRIO to TC_SETUP_QDISC_MQPRIO |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | — | — | [net] | sched: netem: fix a use after free |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-615 |
| CANDIDATE | — | — | [net] | sched: no need to free qdisc in RCU callback |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-894 |
| CANDIDATE | — | — | [net] | sched: optimize tcf_match_indev() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: pedit: make sure that offset is valid |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: pkt_cls: change tc actions order to be as the user sets |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: prio: Add offload ability for grafting a child |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-918 |
| CANDIDATE | — | — | [net] | sched: prio: Add offload ability to PRIO qdisc |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | — | — | [net] | sched: prio: Delete child qdiscs when removing bands |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-918 |
| CANDIDATE | — | — | [net] | sched: prio: work around gcc-4.4.4 union initializer issues |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | — | — | [net] | sched: properly assign RCU pointer in tcf_chain_tp_insert/remove |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: properly cancel netlink dump on failure |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-998 |
| CANDIDATE | — | — | [net] | sched: Provide default walker function for actions |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: qdisc: use rcu prefix and silence sparse warnings |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: rcu-ify tcf_proto |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: red: Add offload ability to RED qdisc |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | — | — | [net] | sched: red: Avoid illegal values |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | — | — | [net] | sched: red: Change the name of the stats struct to be generic |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | — | — | [net] | sched: red: Fix the new offload indication |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | — | — | [net] | sched: red: work around gcc-4.4.4 anon union initializer issue |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | — | — | [net] | sched: Reflect HW offload status |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-628 |
| CANDIDATE | — | — | [net] | sched: Remove egdev mechanism |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-1090 |
| CANDIDATE | — | — | [net] | sched: remove get_stats from tc_action_ops |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: remove redundant null check on head |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: Remove TC_RED_OFFLOADED from uapi |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-906 |
| CANDIDATE | — | — | [net] | sched: remove the first parameter from tcf_exts_destroy() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: Remove unnecessary checks for act->ops |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: remove unnecessary parentheses while return |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: replace macros net_random and net_srandom with direct calls to prandom |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: sch_htb: clamp xstats tokens to fit into 32-bit int |  | CONFIG_NET_SCH_HTB=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: sch_htb: let skb->priority refer to non-leaf class |  | CONFIG_NET_SCH_HTB=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: sch_prio: update backlog as well |  | CONFIG_NET_SCH_PRIO=y in A37 | 3.10.0-615 |
| CANDIDATE | — | — | [net] | sched: set root qdisc before change() in attach_default_qdiscs() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: Set the net-device for egress device instance |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-882 |
| CANDIDATE | — | — | [net] | sched: sfq: update hierarchical backlog when drop packet |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | sched: stylistic cleanups |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-643 |
| CANDIDATE | — | — | [net] | sched: tc: helper functions to query action types |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-628 |
| CANDIDATE | — | — | [net] | sched: tc_mirred: Rename public predicates 'is_tcf_mirred_redirect' and 'is_tcf_mirred_mirror' |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-647 |
| CANDIDATE | — | — | [net] | sched: tc_vlan: fix type of tcfv_push_vid |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-625 |
| CANDIDATE | — | — | [net] | sched: tunnel_key: Allow to set tos and ttl for tc based ip tunnels |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-998 |
| CANDIDATE | — | — | [net] | sched: update hierarchical backlog too |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-615 |
| CANDIDATE | — | — | [net] | sched: Use default action lookup functions |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: Use default action walker methods |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | sched: use tcindex_filter_result_init() |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-607 |
| CANDIDATE | — | — | [net] | Separate the close_list and the unreg_list |  | generic code, tag [net] | 3.10.0-520 |
| CANDIDATE | — | — | [bluetooth] | Simplify RFCOMM session state eval |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [net] | sk_buff: don't use RH_KABI_REPLACE_P for bitfields |  | generic code, tag [net] | 3.10.0-300 |
| CANDIDATE | — | — | [net] | skb: preserve value for head_frag and xmit more |  | generic code, tag [net] | 3.10.0-468 |
| CANDIDATE | — | — | [net] | skbuff: allow segmenting based on frag sizes |  | generic code, tag [net] | 3.10.0-461 |
| CANDIDATE | — | — | [net] | skbuff: improve description of CHECKSUM_{COMPLETE, UNNECESSARY} |  | generic code, tag [net] | 3.10.0-678 |
| CANDIDATE | — | — | [net] | skbuff: Introduce skb_mac_offset() |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | — | — | [net] | skbuff: introduce skb_put_zero() |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | — | — | [net] | sock: add an explicit sk argument for ip_cmsg_recv_offset() |  | generic code, tag [net] | 3.10.0-599 |
| CANDIDATE | — | — | [net] | sock: backport __sock_queue_rcv_skb() |  | generic code, tag [net] | 3.10.0-615 |
| CANDIDATE | — | — | [net] | sock: factor out helpers for memory and queue manipulation |  | generic code, tag [net] | 3.10.0-599 |
| CANDIDATE | — | — | [net] | sock: fix SO_MAX_PACING_RATE |  | generic code, tag [net] | 3.10.0-312 |
| CANDIDATE | — | — | [net] | sock: introduce sk_destruct() |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | — | — | [net] | socket: Fix minor information leak in siocdevprivate_ioctl() |  | generic code, tag [net] | 3.10.0-72 |
| CANDIDATE | — | — | [net] | socket: Merge multiple implementations of ifreq::ifr_data conversion |  | generic code, tag [net] | 3.10.0-72 |
| CANDIDATE | — | — | [net] | Split sk_no_check into sk_no_check_{rx, tx} |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | — | — | [bluetooth] | Store RFCOMM address information in its own socket structure |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [net] | sysfs: expose number of carrier on/off changes |  | CONFIG_SYSFS=y in A37 | 3.10.0-475 |
| CANDIDATE | — | — | [net] | sysfs: expose physical switch id for particular device |  | CONFIG_SYSFS=y in A37 | 3.10.0-525 |
| CANDIDATE | — | — | [net] | sysfs: Fix mem leak in netdev_register_kobject | CVE-2019-15916 | CONFIG_SYSFS=y in A37 | 3.10.0-1106 |
| CANDIDATE | — | — | [net] | sysfs: Fix memory leak in XPS configuration |  | CONFIG_SYSFS=y in A37 | 3.10.0-1015 |
| CANDIDATE | — | — | [net] | sysfs: get_netdev_queue_index() cleanup |  | CONFIG_SYSFS=y in A37 | 3.10.0-415 |
| CANDIDATE | — | — | [net] | sysfs: get_netdev_queue_index() cleanup |  | CONFIG_SYSFS=y in A37 | 3.10.0-388 |
| CANDIDATE | — | — | [net] | sysfs: Print link speed as signed integer |  | CONFIG_SYSFS=y in A37 | 3.10.0-668 |
| CANDIDATE | — | — | [bluetooth] | Take proper tty_struct references |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [net] | target: introduce __skb_put_(zero, data, u8) |  | generic code, tag [net] | 3.10.0-901 |
| CANDIDATE | — | — | [networking] | target: make skb_push & __skb_push return void pointers |  | generic code, tag [networking] | 3.10.0-901 |
| CANDIDATE | — | — | [networking] | target: make skb_put & friends return void pointers |  | generic code, tag [networking] | 3.10.0-901 |
| CANDIDATE | — | — | [net] | tc: convert tc_at to tc_at_ingress |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | tc: convert tc_verd to integer bitfields |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | tc: ensure that offloading callback is called for MQPRIO qdisc |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-940 |
| CANDIDATE | — | — | [net] | tc: extract skip classify bit from tc_verd |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | tc: make MAX_RECLASSIFY_LOOP local |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | tc: remove unused tc_verd fields |  | CONFIG_NET_SCHED=y in A37 | 3.10.0-774 |
| CANDIDATE | — | — | [net] | tcp, dccp: try to not exhaust ip_local_port_range in connect() |  | generic code, tag [net] | 3.10.0-359 |
| CANDIDATE | — | — | [net] | tcp, dccp: warn user for preferred ip_local_port_range |  | generic code, tag [net] | 3.10.0-359 |
| CANDIDATE | — | — | [net] | tcp/dccp: avoid starving bh on connect |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | — | — | [net] | tcp/dccp: Re-arm TIME_WAIT reaping hangman timer if thread slot quota is exceeded |  | generic code, tag [net] | 3.10.0-878 |
| CANDIDATE | — | — | [net] | tcp/dccp: remove __reqsk_free() from inet_child_forget() |  | generic code, tag [net] | 3.10.0-1040 |
| CANDIDATE | — | — | [net] | tcp: add RCU protection to ipv6 opt dereference |  | generic code, tag [net] | 3.10.0-927 |
| CANDIDATE | — | — | [net] | tcp: allow setting ecn via routing table |  | generic code, tag [net] | 3.10.0-246 |
| CANDIDATE | — | — | [net] | tcp: always send a quick ack when quickacks are enabled |  | generic code, tag [net] | 3.10.0-297 |
| CANDIDATE | — | — | [net] | tcp: fastopen: fix high order allocations |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | — | — | [net] | tcp: fix race during timewait sk creation |  | generic code, tag [net] | 3.10.0-532 |
| CANDIDATE | — | — | [net] | tcp: fix saving TX flow hash in sock for outgoing connections |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | — | — | [net] | tcp: implement sk_forced_wmem_schedule |  | generic code, tag [net] | 3.10.0-349 |
| CANDIDATE | — | — | [net] | tcp: limit sk_write_qlen based on sndbuf size |  | generic code, tag [net] | 3.10.0-1160.3.1 |
| CANDIDATE | — | — | [net] | tcp: make new names of tcp isn generation functions available to drivers |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | — | — | [net] | tcp: make tcp_cleanup_rbuf private |  | generic code, tag [net] | 3.10.0-223 |
| CANDIDATE | — | — | [net] | tcp: provide TCP_FRAG_IN_WRITE/RTX_QUEUE for tcp_fragment use |  | generic code, tag [net] | 3.10.0-1061 |
| CANDIDATE | — | — | [net] | tcp: Remove extern from function prototypes |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | — | — | [net] | tcp: remove one indentation level in tcp_rcv_state_process |  | generic code, tag [net] | 3.10.0-240 |
| CANDIDATE | — | — | [net] | tcp: reset sk_send_head in tcp_write_queue_purge | CVE-2019-15239 | generic code, tag [net] | 3.10.0-1093 |
| CANDIDATE | — | — | [net] | tcp: use tcp_skb_mss helper in tcp_tso_segment |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | — | — | [bluetooth] | Tidy-up coding style in hci_bcsp.c |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | — | — | [net] | timestamp: allow reading recv cmsg on errqueue with origin tstamp |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | — | — | [net] | timestamp: extend SCM_TIMESTAMPING ancillary data struct |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | — | — | [net] | timestamp: move timestamp flags out of sk_flags |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | — | — | [net] | timestamp: only report sw timestamp if reporting bit is set |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | — | — | [net-next] | treewide: use is_vlan_dev() helper function |  | generic code, tag [net-next] | 3.10.0-590 |
| CANDIDATE | — | — | [net] | tun: fix use after free for ptr_array |  | CONFIG_TUN=y in A37 | 3.10.0-1112 |
| CANDIDATE | — | — | [net] | tun: implement ndo_set_rx_headroom |  | CONFIG_TUN=y in A37 | 3.10.0-435 |
| CANDIDATE | — | — | [net] | tun: remove unnecessary sk_receive_queue |  | CONFIG_TUN=y in A37 | 3.10.0-656 |
| CANDIDATE | — | — | [net] | tun: use socket locks for sk_{attach, detatch}_filter |  | CONFIG_TUN=y in A37 | 3.10.0-1090 |
| CANDIDATE | — | — | [net] | tunnel: set inner protocol in network gro hooks |  | generic code, tag [net] | 3.10.0-613 |
| CANDIDATE | — | — | [net] | tunnels: enable module autoloading |  | generic code, tag [net] | 3.10.0-315 |
| CANDIDATE | — | — | [net] | tunnels: fix usage of dst_cache on xmit |  | generic code, tag [net] | 3.10.0-440 |
| CANDIDATE | — | — | [net] | udp6: Drop SCORE2_MAX optimization in socket lookup |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | — | — | [net] | udp: account for current skb length when deciding about UFO | CVE-2017-1000112 | generic code, tag [net] | 3.10.0-709 |
| CANDIDATE | — | — | [net] | udp: fix errorneous sk_filter removal |  | generic code, tag [net] | 3.10.0-599 |
| CANDIDATE | — | — | [net] | udp: Fix ipv6 multicast socket filter regression |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | — | — | [net] | udp: force symbol checksum change for lookup functions |  | generic code, tag [net] | 3.10.0-742 |
| CANDIDATE | — | — | [net] | udp: ipv4: Verify multicast group is ours in upd_v4_early_demux() |  | generic code, tag [net] | 3.10.0-473 |
| CANDIDATE | — | — | [net] | udp: Make enabling of zero UDP6 csums more restrictive |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | — | — | [net] | udp: move GSO functions to udp_offload |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | — | — | [net] | udp: remove remote checksum offload |  | generic code, tag [net] | 3.10.0-681 |
| CANDIDATE | — | — | [net] | udp: unify skb_udp_tunnel_segment() and skb_udp6_tunnel_segment() |  | generic code, tag [net] | 3.10.0-18 |
| CANDIDATE | — | — | [net] | udp: Verify UDP checksum before handoff to encap |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | — | — | [net] | udp_offload: put sk before returning |  | generic code, tag [net] | 3.10.0-493 |
| CANDIDATE | — | — | [net] | udp_offload: Use IS_ERR_OR_NULL |  | generic code, tag [net] | 3.10.0-204 |
| CANDIDATE | — | — | [net] | udp_tunnel: Add a few more UDP tunnel APIs |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | udp_tunnel: Add SKB_GSO_UDP_TUNNEL during gro_complete |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | unix, caif: sk_socket can disappear when state is unlocked |  | generic code, tag [net] | 3.10.0-271 |
| CANDIDATE | — | — | [net] | update __dev_notify_flags() to send rtnl msg |  | generic code, tag [net] | 3.10.0-158 |
| CANDIDATE | — | — | [net] | usb/cdc-acm: add TIOCGICOUNT |  | CONFIG_USB=y in A37 | 3.10.0-174 |
| CANDIDATE | — | — | [net] | usb/cdc_ncm: add include protection to cdc_ncm.h |  | CONFIG_USB=y in A37 | 3.10.0-174 |
| CANDIDATE | — | — | [net] | usb/cdc_ncm: drop "extern" from header declarations |  | CONFIG_USB=y in A37 | 3.10.0-174 |
| CANDIDATE | — | — | [net] | usb/cdc_ncm: Export cdc_ncm_{tx, rx}_fixup functions for re-use |  | CONFIG_USB=y in A37 | 3.10.0-174 |
| CANDIDATE | — | — | [net] | usb/cdc_ncm: remove descriptor pointers |  | CONFIG_USB=y in A37 | 3.10.0-174 |
| CANDIDATE | — | — | [net] | usb/cdc_ncm: remove ncm_parm field |  | CONFIG_USB=y in A37 | 3.10.0-174 |
| CANDIDATE | — | — | [net] | usb/cdc_ncm: remove non-standard NCM device IDs |  | CONFIG_USB=y in A37 | 3.10.0-197 |
| CANDIDATE | — | — | [net] | usb/cdc_ncm: remove redundant "intf" field |  | CONFIG_USB=y in A37 | 3.10.0-174 |
| CANDIDATE | — | — | [net] | usb/cdc_ncm: remove redundant endpoint pointers |  | CONFIG_USB=y in A37 | 3.10.0-174 |
| CANDIDATE | — | — | [net] | usb/cdc_ncm: remove redundant netdev field |  | CONFIG_USB=y in A37 | 3.10.0-174 |
| CANDIDATE | — | — | [net] | usb/cdc_ncm: remove tx_speed and rx_speed fields |  | CONFIG_USB=y in A37 | 3.10.0-174 |
| CANDIDATE | — | — | [net] | usb/cdc_ncm: remove unused udev field |  | CONFIG_USB=y in A37 | 3.10.0-174 |
| CANDIDATE | — | — | [net] | usb/cdc_ncm: simplify and optimize frame padding |  | CONFIG_USB=y in A37 | 3.10.0-174 |
| CANDIDATE | — | — | [net] | usb/huawei_cdc_ncm: add "subclass 3" devices |  | CONFIG_USB=y in A37 | 3.10.0-197 |
| CANDIDATE | — | — | [net] | usb/huawei_cdc_ncm: increase command buffer size |  | CONFIG_USB=y in A37 | 3.10.0-197 |
| CANDIDATE | — | — | [net] | usb: include wait queue head in device structure |  | CONFIG_USB=y in A37 | 3.10.0-174 |
| CANDIDATE | — | — | [net] | usb: Introduce the huawei_cdc_ncm driver |  | CONFIG_USB=y in A37 | 3.10.0-197 |
| CANDIDATE | — | — | [net] | use *pb[l] to print bitmaps including cpumasks and nodemasks |  | generic code, tag [net] | 3.10.0-1015 |
| CANDIDATE | — | — | [bluetooth] | Use IS_ERR_OR_NULL for checking bt_debugfs |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [net] | use is_vlan_dev() helper function |  | generic code, tag [net] | 3.10.0-745 |
| CANDIDATE | — | — | [net] | Use new KABI macros |  | generic code, tag [net] | 3.10.0-214 |
| CANDIDATE | — | — | [bluetooth] | Use single return in hci_uart_tty_ioctl() call |  | CONFIG_BT=y in A37 | 3.10.0-638 |
| CANDIDATE | — | — | [bluetooth] | Use switch statement for Intel hardware variants |  | CONFIG_BT=y in A37 | 3.10.0-757 |
| CANDIDATE | — | — | [net] | utils: generic inet_pton_with_scope helper |  | generic code, tag [net] | 3.10.0-867 |
| CANDIDATE | — | — | [bluetooth] | Verify dlci not in use before rfcomm_dev create |  | CONFIG_BT=y in A37 | 3.10.0-300 |
| CANDIDATE | — | — | [net] | veth: don't modify ip_summed; doing so treats packets with bad checksums as good |  | CONFIG_VETH=y in A37 | 3.10.0-352 |
| CANDIDATE | — | — | [net] | veth: fix veth vlan features |  | CONFIG_VETH=y in A37 | 3.10.0-114 |
| CANDIDATE | — | — | [bluetooth] | vhci: fix open_timeout vs. hdev race |  | CONFIG_BT=y in A37 | 3.10.0-466 |
| CANDIDATE | — | — | [bluetooth] | vhci: Fix race at creating hci device |  | CONFIG_BT=y in A37 | 3.10.0-466 |
| CANDIDATE | — | — | [bluetooth] | vhci: purge unhandled skbs |  | CONFIG_BT=y in A37 | 3.10.0-466 |
| CANDIDATE | — | — | [net] | vti, vti6: Do not touch skb->mark on xmit |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | — | — | [net] | vti, vti6: Preserve skb->mark after rcv_cb call |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | — | — | [net] | vti4: don't allow to add the same tunnel twice |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | — | — | [net] | vti4: switch to new ip tunnel code |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | — | — | [net] | vti4: Update the ipv4 side to use it's own receive hook |  | generic code, tag [net] | 3.10.0-180 |
| CANDIDATE | — | — | [net] | vti6: advertise link netns via netlink |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | — | — | [net] | vti6: Allow sending packets through tunnels with wildcard endpoints |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | — | — | [net] | vti6: implement ndo_get_iflink |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | — | — | [net] | vti6: Return an error when adding an existing tunnel |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | — | — | [net] | vti6: unify the pcpu_tstats and br_cpu_netstats as one |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | — | — | [net] | vti6: Use the tunnel mark for lookup in the error handlers |  | generic code, tag [net] | 3.10.0-281 |
| CANDIDATE | — | — | [net] | vti: Fix kernel panic due to tunnel not being removed on link deletion |  | CONFIG_XFRM=y in A37 | 3.10.0-215 |
| CANDIDATE | — | — | [net] | vxlan, bridge: get rid of SET_ETHTOOL_OPS |  | generic code, tag [net] | 3.10.0-260 |
| CANDIDATE | — | — | [net] | xdp: Build a facade of the driver facing xdp code to ease backports |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-800 |
| CANDIDATE | — | — | [net] | xdp: setup xdp_rxq_info and intro xdp_rxq_info_is_reg |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-906 |
| CANDIDATE | — | — | [net] | xfrm: Correct xfrm_state_lock usage in xfrm_stateonly_find |  | CONFIG_XFRM=y in A37 | 3.10.0-484 |
| CANDIDATE | — | — | [net] | xfrm: Remove extern from function prototypes |  | CONFIG_XFRM=y in A37 | 3.10.0-312 |
| CANDIDATE | — | — | [net] | xfrm: skip rt6i_idev update in xfrm6_dst_ifdown if loopback_idev is gone |  | CONFIG_XFRM=y in A37 | 3.10.0-1148 |
| CANDIDATE | — | — | [net] | xfrm_input: fix possible NULL deref of tunnel.ip6->parms.i_key |  | generic code, tag [net] | 3.10.0-567 |
| CANDIDATE | — | — | [net] | xsk: expose xdp_umem_get_{data, dma} to drivers |  | generic code, tag [net] | 3.10.0-998 |
| CANDIDATE | — | — | [net] | {xfrm, pktgen} Fix compiling error when CONFIG_XFRM is not set |  | generic code, tag [net] | 3.10.0-1018 |
| FEATURE-MISSING | 3.11 | [`0d89d2035fe0`](https://git.kernel.org/torvalds/c/0d89d2035fe0) | [net] | mpls: Add limited GSO support |  | CONFIG_MPLS does not exist in A37 tree | 3.10.0-18 |
| FEATURE-MISSING | 3.13 | [`ed683f138b3d`](https://git.kernel.org/torvalds/c/ed683f138b3d) | [net] | netfilter: nf_tables: add ARP filtering support |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-51 |
| FEATURE-MISSING | 3.13 | [`0ca743a55991`](https://git.kernel.org/torvalds/c/0ca743a55991) | [net] | netfilter: nf_tables: add compatibility layer for x_tables |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-51 |
| FEATURE-MISSING | 3.13 | [`5e94846686d0`](https://git.kernel.org/torvalds/c/5e94846686d0) | [net] | netfilter: nf_tables: add insert operation |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-51 |
| FEATURE-MISSING | 3.13 | [`20a69341f2d0`](https://git.kernel.org/torvalds/c/20a69341f2d0) | [net] | netfilter: nf_tables: add netlink set API |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-51 |
| FEATURE-MISSING | 3.13 | [`cb7dbfd0390c`](https://git.kernel.org/torvalds/c/cb7dbfd0390c) | [net] | netfilter: nf_tables: add optimized data comparison for small values |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-51 |
| FEATURE-MISSING | 3.13 | [`9ddf63235749`](https://git.kernel.org/torvalds/c/9ddf63235749) | [net] | netfilter: nf_tables: add support for dormant tables |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-51 |
| FEATURE-MISSING | 3.13 | [`eb31628e37a0`](https://git.kernel.org/torvalds/c/eb31628e37a0) | [net] | netfilter: nf_tables: Add support for IPv6 NAT |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-51 |
| FEATURE-MISSING | 3.13 | [`b5bc89bfa0b4`](https://git.kernel.org/torvalds/c/b5bc89bfa0b4) | [net] | netfilter: nf_tables: add trace support |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-51 |
| FEATURE-MISSING | 3.13 | [`99633ab29b21`](https://git.kernel.org/torvalds/c/99633ab29b21) | [net] | netfilter: nf_tables: complete net namespace support |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-51 |
| FEATURE-MISSING | 3.13 | [`9370761c56b6`](https://git.kernel.org/torvalds/c/9370761c56b6) | [net] | netfilter: nf_tables: convert built-in tables/chains to chain types |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-51 |
| FEATURE-MISSING | 3.13 | [`ef1f7df9170d`](https://git.kernel.org/torvalds/c/ef1f7df9170d) | [net] | netfilter: nf_tables: expression ops overloading |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-51 |
| FEATURE-MISSING | 3.13 | [`e38195bf32d7`](https://git.kernel.org/torvalds/c/e38195bf32d7) | [net] | netfilter: nf_tables: fix dumping with large number of sets |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.13 | [`cf9dc09d0949`](https://git.kernel.org/torvalds/c/cf9dc09d0949) | [net] | netfilter: nf_tables: fix missing rules flushing per table |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.13 | [`d20129756192`](https://git.kernel.org/torvalds/c/d20129756192) | [net] | netfilter: nf_tables: fix oops when updating table with user chains |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.13 | [`2ee0d3c80fdb`](https://git.kernel.org/torvalds/c/2ee0d3c80fdb) | [net] | netfilter: nf_tables: fix wrong datatype in nft_validate_data_load() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.13 | [`c54032e05bfc`](https://git.kernel.org/torvalds/c/c54032e05bfc) | [net] | netfilter: nf_tables: nft_payload: fix transport header base |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-51 |
| FEATURE-MISSING | 3.13 | [`ca0e8bd68bae`](https://git.kernel.org/torvalds/c/ca0e8bd68bae) | [net] | netfilter: nf_tables: remove duplicated include from nf_tables_ipv4.c |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-51 |
| FEATURE-MISSING | 3.13 | [`8691a9a3382f`](https://git.kernel.org/torvalds/c/8691a9a3382f) | [net] | netfilter: nft_compat: fix error path in nft_parse_compat() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.13 | [`c359c4157cf0`](https://git.kernel.org/torvalds/c/c359c4157cf0) | [net] | netfilter: nft_compat: use _safe version of list_for_each |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-51 |
| FEATURE-MISSING | 3.13 | [`540436c80e59`](https://git.kernel.org/torvalds/c/540436c80e59) | [net] | netfilter: nft_exthdr: call ipv6_find_hdr() with explicitly initialized offset |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.13 | [`98c37b6b0181`](https://git.kernel.org/torvalds/c/98c37b6b0181) | [net] | netfilter: nft_nat: Fix endianness issue reported by sparse |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-51 |
| FEATURE-MISSING | 3.13 | [`c29b72e02573`](https://git.kernel.org/torvalds/c/c29b72e02573) | [net] | netfilter: nft_payload: add optimized payload implementation for small loads |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-51 |
| FEATURE-MISSING | 3.13 | [`a3adadf30181`](https://git.kernel.org/torvalds/c/a3adadf30181) | [net] | netfilter: nft_reject: fix endianness in dump function |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`1d49144c0aaa`](https://git.kernel.org/torvalds/c/1d49144c0aaa) | [net] | netfilter: nf_tables: add "inet" table for IPv4/IPv6 |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`64d46806b621`](https://git.kernel.org/torvalds/c/64d46806b621) | [net] | netfilter: nf_tables: add AF specific expression support |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`c9484874e759`](https://git.kernel.org/torvalds/c/c9484874e759) | [net] | netfilter: nf_tables: add hook ops to struct nft_pktinfo |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`c9484874e759`](https://git.kernel.org/torvalds/c/c9484874e759) | [net] | netfilter: nf_tables: add hook ops to struct nft_pktinfo |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`88ce65a71c39`](https://git.kernel.org/torvalds/c/88ce65a71c39) | [net] | netfilter: nf_tables: add missing module references to chain types |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`124edfa9e045`](https://git.kernel.org/torvalds/c/124edfa9e045) | [net] | netfilter: nf_tables: add nfproto support to meta expression |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`05513e9e33db`](https://git.kernel.org/torvalds/c/05513e9e33db) | [net] | netfilter: nf_tables: add reject module for NFPROTO_INET |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`115a60b173af`](https://git.kernel.org/torvalds/c/115a60b173af) | [net] | netfilter: nf_tables: add support for multi family tables |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`f627ed91d85e`](https://git.kernel.org/torvalds/c/f627ed91d85e) | [net] | netfilter: nf_tables: check if payload length is a power of 2 |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`2a37d755b885`](https://git.kernel.org/torvalds/c/2a37d755b885) | [net] | netfilter: nf_tables: constify chain type definitions and pointers |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`bd7fc645daba`](https://git.kernel.org/torvalds/c/bd7fc645daba) | [net] | netfilter: nf_tables: do not allow NFT_SET_ELEM_INTERVAL_END flag and data |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`c9c8e485978a`](https://git.kernel.org/torvalds/c/c9c8e485978a) | [net] | netfilter: nf_tables: dump sets in all existing families |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`d8bcc768c80e`](https://git.kernel.org/torvalds/c/d8bcc768c80e) | [net] | netfilter: nf_tables: Expose the table usage counter via netlink |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`baae3e62f316`](https://git.kernel.org/torvalds/c/baae3e62f316) | [net] | netfilter: nf_tables: fix chain type module reference handling |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`758206760cba`](https://git.kernel.org/torvalds/c/758206760cba) | [net] | netfilter: nf_tables: fix check for table overflow |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`cf4dfa85395e`](https://git.kernel.org/torvalds/c/cf4dfa85395e) | [net] | netfilter: nf_tables: fix error path in the init functions |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`e569bdab35fd`](https://git.kernel.org/torvalds/c/e569bdab35fd) | [net] | netfilter: nf_tables: fix issue with verdict support |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`b8ecbee67c73`](https://git.kernel.org/torvalds/c/b8ecbee67c73) | [net] | netfilter: nf_tables: fix log/queue expressions for NFPROTO_INET |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`b8ecbee67c73`](https://git.kernel.org/torvalds/c/b8ecbee67c73) | [net] | netfilter: nf_tables: fix log/queue expressions for NFPROTO_INET |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`62f9c8b40d2d`](https://git.kernel.org/torvalds/c/62f9c8b40d2d) | [net] | netfilter: nf_tables: fix loop checking with end interval elements |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`8f46df184c31`](https://git.kernel.org/torvalds/c/8f46df184c31) | [net] | netfilter: nf_tables: fix missing byteorder conversion in policy |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`3dd7279fb6db`](https://git.kernel.org/torvalds/c/3dd7279fb6db) | [net] | netfilter: nf_tables: fix oops when deleting a chain with references |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`53b70287ddf4`](https://git.kernel.org/torvalds/c/53b70287ddf4) | [net] | netfilter: nf_tables: fix overrun in nf_tables_set_alloc_name() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`ec2c9935688f`](https://git.kernel.org/torvalds/c/ec2c9935688f) | [net] | netfilter: nf_tables: fix potential oops when dumping sets |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`0165d9325d6a`](https://git.kernel.org/torvalds/c/0165d9325d6a) | [net] | netfilter: nf_tables: fix racy rule deletion |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`14662917907e`](https://git.kernel.org/torvalds/c/14662917907e) | [net] | netfilter: nf_tables: fix type in parsing in nf_tables_set_alloc_name() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`3b088c4bc003`](https://git.kernel.org/torvalds/c/3b088c4bc003) | [net] | netfilter: nf_tables: make chain types override the default AF functions |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`fa2c1de0bbd9`](https://git.kernel.org/torvalds/c/fa2c1de0bbd9) | [net] | netfilter: nf_tables: minor nf_chain_type cleanups |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`e035b77ac7be`](https://git.kernel.org/torvalds/c/e035b77ac7be) | [net] | netfilter: nf_tables: nft_meta module get/set ops |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`c5c1f975ada4`](https://git.kernel.org/torvalds/c/c5c1f975ada4) | [net] | netfilter: nf_tables: perform flags validation before table allocation |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`44a6f0df039e`](https://git.kernel.org/torvalds/c/44a6f0df039e) | [net] | netfilter: nf_tables: prohibit deletion of a table with existing sets |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`994737513ee7`](https://git.kernel.org/torvalds/c/994737513ee7) | [net] | netfilter: nf_tables: remove nft_meta_target |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`720e0dfa3a86`](https://git.kernel.org/torvalds/c/720e0dfa3a86) | [net] | netfilter: nf_tables: remove unused variable in nf_tables_dump_set() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`3876d22dba62`](https://git.kernel.org/torvalds/c/3876d22dba62) | [net] | netfilter: nf_tables: rename nft_do_chain_pktinfo() to nft_do_chain() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`93b0806f006b`](https://git.kernel.org/torvalds/c/93b0806f006b) | [net] | netfilter: nf_tables: replay request after dropping locks to load chain type |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`4401a862009b`](https://git.kernel.org/torvalds/c/4401a862009b) | [net] | netfilter: nf_tables: restore chain change atomicity |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`57de2a0cd9d7`](https://git.kernel.org/torvalds/c/57de2a0cd9d7) | [net] | netfilter: nf_tables: split chain policy validation from actually setting it |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`7047f9d052c3`](https://git.kernel.org/torvalds/c/7047f9d052c3) | [net] | netfilter: nf_tables: take AF module reference when creating a table |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`6d8c00d58e9e`](https://git.kernel.org/torvalds/c/6d8c00d58e9e) | [net] | netfilter: nf_tables: unininline nft_trace_packet() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`c4ede3d3821a`](https://git.kernel.org/torvalds/c/c4ede3d3821a) | [net] | netfilter: nft_ct: Add support to set the connmark |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`847c8e2959f7`](https://git.kernel.org/torvalds/c/847c8e2959f7) | [net] | netfilter: nft_ct: fix compilation warning if NF_CONNTRACK_MARK is not set |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`51292c0735eb`](https://git.kernel.org/torvalds/c/51292c0735eb) | [net] | netfilter: nft_ct: fix missing NFT_CT_L3PROTOCOL key in validity checks |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`2a53bfb3e0fb`](https://git.kernel.org/torvalds/c/2a53bfb3e0fb) | [net] | netfilter: nft_ct: fix unconditional dump of 'dir' attr |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`9638f33ecf7e`](https://git.kernel.org/torvalds/c/9638f33ecf7e) | [net] | netfilter: nft_ct: load both IPv4 and IPv6 conntrack modules for NFPROTO_INET |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`4566bf27069b`](https://git.kernel.org/torvalds/c/4566bf27069b) | [net] | netfilter: nft_meta: add l4proto support |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`b38895c5773b`](https://git.kernel.org/torvalds/c/b38895c5773b) | [net] | netfilter: nft_meta: fix lack of validation of the input register |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`06efbd6d5694`](https://git.kernel.org/torvalds/c/06efbd6d5694) | [net] | netfilter: nft_meta: fix typo "CONFIG_NET_CLS_ROUTE" |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`2fb91ddbf8e1`](https://git.kernel.org/torvalds/c/2fb91ddbf8e1) | [net] | netfilter: nft_rbtree: fix data handling of end interval elements |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`688d18636f77`](https://git.kernel.org/torvalds/c/688d18636f77) | [net] | netfilter: nft_reject: fix compilation warning if NF_TABLES_IPV6 is disabled |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`cc4723ca3167`](https://git.kernel.org/torvalds/c/cc4723ca3167) | [net] | netfilter: nft_reject: split up reject module into IPv4 and IPv6 specifc parts |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`bee11dc78fc8`](https://git.kernel.org/torvalds/c/bee11dc78fc8) | [net] | netfilter: nft_reject: support for IPv6 and TCP reset |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.14 | [`ce898ecb5a3c`](https://git.kernel.org/torvalds/c/ce898ecb5a3c) | [net] | netfilter: nft_reject_inet: fix unintended fall-through in switch-statatement |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-93 |
| FEATURE-MISSING | 3.15 | [`e0abdadcc6e1`](https://git.kernel.org/torvalds/c/e0abdadcc6e1) | [net] | netfilter: nf_tables: accept QUEUE/DROP verdict parameters |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.15 | [`67a8fc27cca0`](https://git.kernel.org/torvalds/c/67a8fc27cca0) | [net] | netfilter: nf_tables: add nft_dereference() macro |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.15 | [`0768b3b3d228`](https://git.kernel.org/torvalds/c/0768b3b3d228) | [net] | netfilter: nf_tables: add optional user data area to rules |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.15 | [`a36e901cf60d`](https://git.kernel.org/torvalds/c/a36e901cf60d) | [net] | netfilter: nf_tables: clean up nf_tables_trans_add() argument order |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.15 | [`f7e7e39b21c2`](https://git.kernel.org/torvalds/c/f7e7e39b21c2) | [net] | netfilter: nf_tables: fix bogus rulenum after goto action |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.15 | [`5467a5122167`](https://git.kernel.org/torvalds/c/5467a5122167) | [net] | netfilter: nf_tables: fix goto action |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.15 | [`7e9bc10db275`](https://git.kernel.org/torvalds/c/7e9bc10db275) | [net] | netfilter: nf_tables: fix missing return trace at the end of non-base chain |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.15 | [`b855d416dc17`](https://git.kernel.org/torvalds/c/b855d416dc17) | [net] | netfilter: nf_tables: fix nft_cmp_fast failure on big endian for size < 4 |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.15 | [`3b084e99a3fa`](https://git.kernel.org/torvalds/c/3b084e99a3fa) | [net] | netfilter: nf_tables: fix trace of matching non-terminal rule |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.15 | [`7b9d5ef93229`](https://git.kernel.org/torvalds/c/7b9d5ef93229) | [net] | netfilter: nf_tables: fix tracing of the goto action |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.15 | [`2fec6bb6f484`](https://git.kernel.org/torvalds/c/2fec6bb6f484) | [net] | netfilter: nf_tables: fix wrong format in request_module() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.15 | [`d088be804284`](https://git.kernel.org/torvalds/c/d088be804284) | [net] | netfilter: nf_tables: reset rule number counter after jump and goto |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.15 | [`62472bcefb56`](https://git.kernel.org/torvalds/c/62472bcefb56) | [net] | netfilter: nf_tables: restore context for expression destructors |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.15 | [`ab9da5c19f35`](https://git.kernel.org/torvalds/c/ab9da5c19f35) | [net] | netfilter: nf_tables: restore notifications for anonymous set destruction |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.15 | [`a9bdd8365684`](https://git.kernel.org/torvalds/c/a9bdd8365684) | [net] | netfilter: nf_tables: set names cannot be larger than 15 bytes |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.15 | [`d2bf2f34cc1a`](https://git.kernel.org/torvalds/c/d2bf2f34cc1a) | [net] | netfilter: nft_ct: labels get support |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.15 | [`d46f2cd2601d`](https://git.kernel.org/torvalds/c/d46f2cd2601d) | [net] | netfilter: nft_ct: remove family from struct nft_ct |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.15 | [`ce6eb0d7c8ec`](https://git.kernel.org/torvalds/c/ce6eb0d7c8ec) | [net] | netfilter: nft_hash: bug fixes and resizing |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.15 | [`a4c2e8beba84`](https://git.kernel.org/torvalds/c/a4c2e8beba84) | [net] | netfilter: nft_nat: fix family validation |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`3b392ddba25a`](https://git.kernel.org/torvalds/c/3b392ddba25a) | [net] | mpls: Use mpls_features to activate software MPLS GSO segmentation |  | CONFIG_MPLS does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | 3.16 | [`ce355e209feb`](https://git.kernel.org/torvalds/c/ce355e209feb) | [net] | netfilter: nf_tables: 64bit stats need some extra synchronization |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`b380e5c733b9`](https://git.kernel.org/torvalds/c/b380e5c733b9) | [net] | netfilter: nf_tables: add message type to transactions |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`f5efc696cc71`](https://git.kernel.org/torvalds/c/f5efc696cc71) | [net] | netfilter: nf_tables: Add meta expression key for bridge interface name |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`d60ce62fb594`](https://git.kernel.org/torvalds/c/d60ce62fb594) | [net] | netfilter: nf_tables: add set_elem notifications |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`4fefee570d8e`](https://git.kernel.org/torvalds/c/4fefee570d8e) | [net] | netfilter: nf_tables: allow to delete several objects from a batch |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`31f8441c328b`](https://git.kernel.org/torvalds/c/31f8441c328b) | [net] | netfilter: nf_tables: atomic allocation in set notifications from rcu callback |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`7c95f6d866d8`](https://git.kernel.org/torvalds/c/7c95f6d866d8) | [net] | netfilter: nf_tables: deconstify table and chain in context structure |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`ac34b861979e`](https://git.kernel.org/torvalds/c/ac34b861979e) | [net] | netfilter: nf_tables: decrement chain use counter when replacing rules |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`c7c32e72cbe2`](https://git.kernel.org/torvalds/c/c7c32e72cbe2) | [net] | netfilter: nf_tables: defer all object release via rcu |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`f75edf5e9c97`](https://git.kernel.org/torvalds/c/f75edf5e9c97) | [net] | netfilter: nf_tables: disabling table hooks always succeeds |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`46bbafceb201`](https://git.kernel.org/torvalds/c/46bbafceb201) | [net] | netfilter: nf_tables: fix wrong transaction ordering in set elements |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`ac904ac835ac`](https://git.kernel.org/torvalds/c/ac904ac835ac) | [net] | netfilter: nf_tables: fix wrong type in transaction when replacing rules |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`1081d11b086a`](https://git.kernel.org/torvalds/c/1081d11b086a) | [net] | netfilter: nf_tables: generalise transaction infrastructure |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`60eb18943bd7`](https://git.kernel.org/torvalds/c/60eb18943bd7) | [net] | netfilter: nf_tables: handle more than 8 * PAGE_SIZE set name allocations |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`c50b960ccc59`](https://git.kernel.org/torvalds/c/c50b960ccc59) | [net] | netfilter: nf_tables: implement proper set selection |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`6403d96254c7`](https://git.kernel.org/torvalds/c/6403d96254c7) | [net] | netfilter: nf_tables: indicate family when dumping set elements |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`aa45660c6b59`](https://git.kernel.org/torvalds/c/aa45660c6b59) | [net] | netfilter: nf_tables: Make meta expression core functions public |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`e1aaca93ee66`](https://git.kernel.org/torvalds/c/e1aaca93ee66) | [net] | netfilter: nf_tables: pass context to nf_tables_updtable() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`ff3cd7b3c922`](https://git.kernel.org/torvalds/c/ff3cd7b3c922) | [net] | netfilter: nf_tables: refactor chain statistic routines |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`4c1f7818e400`](https://git.kernel.org/torvalds/c/4c1f7818e400) | [net] | netfilter: nf_tables: relax string validation of NFTA_CHAIN_TYPE |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`a1cee076f4d4`](https://git.kernel.org/torvalds/c/a1cee076f4d4) | [net] | netfilter: nf_tables: release objects in reverse order in the abort path |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`37082f930bb5`](https://git.kernel.org/torvalds/c/37082f930bb5) | [net] | netfilter: nf_tables: relocate commit and abort routines in the source file |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`128ad3322ba5`](https://git.kernel.org/torvalds/c/128ad3322ba5) | [net] | netfilter: nf_tables: remove skb and nlh from context structure |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`e688a7f8c6cb`](https://git.kernel.org/torvalds/c/e688a7f8c6cb) | [net] | netfilter: nf_tables: safe RCU iteration on list when dumping |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`38e029f14a97`](https://git.kernel.org/torvalds/c/38e029f14a97) | [net] | netfilter: nf_tables: set NLM_F_DUMP_INTR if netlink dumping is stale |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`35151d840c60`](https://git.kernel.org/torvalds/c/35151d840c60) | [net] | netfilter: nf_tables: simplify nf_tables_*_notify |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`63283dd21ed2`](https://git.kernel.org/torvalds/c/63283dd21ed2) | [net] | netfilter: nf_tables: skip transaction if no update flags in tables |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`758dbcecf180`](https://git.kernel.org/torvalds/c/758dbcecf180) | [net] | netfilter: nf_tables: Stack expression type depending on their family |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`91c7b38dc9f0`](https://git.kernel.org/torvalds/c/91c7b38dc9f0) | [net] | netfilter: nf_tables: use new transaction infrastructure to handle chain |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`60319eb1ca35`](https://git.kernel.org/torvalds/c/60319eb1ca35) | [net] | netfilter: nf_tables: use new transaction infrastructure to handle elements |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`958bee14d071`](https://git.kernel.org/torvalds/c/958bee14d071) | [net] | netfilter: nf_tables: use new transaction infrastructure to handle sets |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`55dd6f93076b`](https://git.kernel.org/torvalds/c/55dd6f93076b) | [net] | netfilter: nf_tables: use new transaction infrastructure to handle table |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`5bc5c307653c`](https://git.kernel.org/torvalds/c/5bc5c307653c) | [net] | netfilter: nf_tables: use RCU-safe list insertion when replacing rules |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`a0a7379e16b6`](https://git.kernel.org/torvalds/c/a0a7379e16b6) | [net] | netfilter: nf_tables: use u32 for chain use counter |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`3d9b142131ef`](https://git.kernel.org/torvalds/c/3d9b142131ef) | [net] | netfilter: nft_compat: call {target, match}->destroy() to cleanup entry |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`e88e514e1fde`](https://git.kernel.org/torvalds/c/e88e514e1fde) | [net] | netfilter: nft_ct: add missing ifdef for NFT_MARK setting |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`fe92ca45a170`](https://git.kernel.org/torvalds/c/fe92ca45a170) | [net] | netfilter: nft_ct: split nft_ct_init() into two functions for get/set |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`2c96c25d1140`](https://git.kernel.org/torvalds/c/2c96c25d1140) | [net] | netfilter: nft_hash: use set global element counter instead of private one |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`d2caa696addd`](https://git.kernel.org/torvalds/c/d2caa696addd) | [net] | netfilter: nft_meta: split nft_meta_init() into two functions for get/set |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`915136065b7c`](https://git.kernel.org/torvalds/c/915136065b7c) | [net] | netfilter: nft_nat: don't dump port information if unset |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.16 | [`7632667d26a9`](https://git.kernel.org/torvalds/c/7632667d26a9) | [net] | netfilter: nft_rbtree: introduce locking |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.17 | [`0dc1362562a2`](https://git.kernel.org/torvalds/c/0dc1362562a2) | [net] | netfilter: nf_tables: Avoid duplicate call to nft_data_uninit() for same key |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.17 | [`7d5570ca8972`](https://git.kernel.org/torvalds/c/7d5570ca8972) | [net] | netfilter: nf_tables: check for unset NFTA_SET_ELEM_LIST_ELEMENTS attribute |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.17 | [`b88825de8545`](https://git.kernel.org/torvalds/c/b88825de8545) | [net] | netfilter: nf_tables: don't update chain with unset counters |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.17 | [`609ccf087747`](https://git.kernel.org/torvalds/c/609ccf087747) | [net] | netfilter: nf_tables: fix error return code |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.17 | [`1e8430f30b55`](https://git.kernel.org/torvalds/c/1e8430f30b55) | [net] | netfilter: nf_tables: nat expression must select CONFIG_NF_NAT |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.17 | [`5b96af771354`](https://git.kernel.org/torvalds/c/5b96af771354) | [net] | netfilter: nf_tables: simplify set dump through netlink |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.17 | [`a3716e70e1de`](https://git.kernel.org/torvalds/c/a3716e70e1de) | [net] | netfilter: nf_tables: uninitialize element key/data from the commit path |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.17 | [`39f390167e9c`](https://git.kernel.org/torvalds/c/39f390167e9c) | [net] | netfilter: nft_hash: no need for rcu in the hash set destroy path |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.17 | [`09d27b88f15f`](https://git.kernel.org/torvalds/c/09d27b88f15f) | [net] | netfilter: nft_log: complete logging support |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.17 | [`5cbfda204381`](https://git.kernel.org/torvalds/c/5cbfda204381) | [net] | netfilter: nft_log: fix coccinelle warnings |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.17 | [`85d30e24166e`](https://git.kernel.org/torvalds/c/85d30e24166e) | [net] | netfilter: nft_log: request explicit logger when loading rules |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.17 | [`d99407f42f05`](https://git.kernel.org/torvalds/c/d99407f42f05) | [net] | netfilter: nft_rbtree: no need for spinlock from set destroy path |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.17 | [`cfe4a9dda034`](https://git.kernel.org/torvalds/c/cfe4a9dda034) | [net] | nftables: Convert nft_hash to use generic rhashtable |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`45cac46e51da`](https://git.kernel.org/torvalds/c/45cac46e51da) | [net] | geneve: Set GSO type on transmit |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | 3.18 | [`d3ca9eafc0ed`](https://git.kernel.org/torvalds/c/d3ca9eafc0ed) | [net] | geneve: Unregister pernet subsys on module unload |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | 3.18 | [`de05c400f7df`](https://git.kernel.org/torvalds/c/de05c400f7df) | [net] | mpls: Allow mpls_gso to be built as module |  | CONFIG_MPLS does not exist in A37 tree | 3.10.0-798 |
| FEATURE-MISSING | 3.18 | [`f7065f4bd3fe`](https://git.kernel.org/torvalds/c/f7065f4bd3fe) | [net] | mpls: Fix mpls_gso handler |  | CONFIG_MPLS does not exist in A37 tree | 3.10.0-798 |
| FEATURE-MISSING | 3.18 | [`3045d76070ab`](https://git.kernel.org/torvalds/c/3045d76070ab) | [net] | netfilter: nf_tables: add devgroup support in meta expresion |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`c559879406c1`](https://git.kernel.org/torvalds/c/c559879406c1) | [net] | netfilter: nf_tables: add helper to unregister chain hooks |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`ee01d5425634`](https://git.kernel.org/torvalds/c/ee01d5425634) | [net] | netfilter: nf_tables: add helpers to schedule objects deletion |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`9ba1f726bec0`](https://git.kernel.org/torvalds/c/9ba1f726bec0) | [net] | netfilter: nf_tables: add new nft_masq expression |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`39e393bb4f65`](https://git.kernel.org/torvalds/c/39e393bb4f65) | [net] | netfilter: nf_tables: add NFTA_MASQ_UNSPEC to nft_masq_attributes |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`36d2af599825`](https://git.kernel.org/torvalds/c/36d2af599825) | [net] | netfilter: nf_tables: allow to filter from prerouting and postrouting |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`c123bb716304`](https://git.kernel.org/torvalds/c/c123bb716304) | [net] | netfilter: nf_tables: check for NULL in nf_tables_newchain pcpu stats allocation |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.18 | [`84d7fce69388`](https://git.kernel.org/torvalds/c/84d7fce69388) | [net] | netfilter: nf_tables: export rule-set generation ID |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`b9ac12ef0997`](https://git.kernel.org/torvalds/c/b9ac12ef0997) | [net] | netfilter: nf_tables: extend NFT_MSG_DELTABLE to support flushing the ruleset |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`5e266fe7c046`](https://git.kernel.org/torvalds/c/5e266fe7c046) | [net] | netfilter: nf_tables: refactor rule deletion helper |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`ce24b7217b60`](https://git.kernel.org/torvalds/c/ce24b7217b60) | [net] | netfilter: nf_tables: rename nf_table_delrule_by_chain() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`b326dd37b94e`](https://git.kernel.org/torvalds/c/b326dd37b94e) | [net] | netfilter: nf_tables: restore synchronous object release from commit/abort |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.18 | [`7210e4e38f94`](https://git.kernel.org/torvalds/c/7210e4e38f94) | [net] | netfilter: nf_tables: restrict nat/masq expressions to nat chain type |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.18 | [`9363dc4b5999`](https://git.kernel.org/torvalds/c/9363dc4b5999) | [net] | netfilter: nf_tables: store and dump set policy |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`1b1bc49c0fc0`](https://git.kernel.org/torvalds/c/1b1bc49c0fc0) | [net] | netfilter: nf_tables: wait for call_rcu completion on module removal |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`65cd90ac765f`](https://git.kernel.org/torvalds/c/65cd90ac765f) | [net] | netfilter: nft_chain_nat_ipv4: use generic IPv4 NAT code from core |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`876665eafc0e`](https://git.kernel.org/torvalds/c/876665eafc0e) | [net] | netfilter: nft_chain_nat_ipv6: use generic IPv6 NAT code from core |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`493618a92c6a`](https://git.kernel.org/torvalds/c/493618a92c6a) | [net] | netfilter: nft_compat: fix hook validation for non-base chains |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.18 | [`7965ee937199`](https://git.kernel.org/torvalds/c/7965ee937199) | [net] | netfilter: nft_compat: fix wrong target lookup in nft_target_select_ops() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.18 | [`c918687f5e39`](https://git.kernel.org/torvalds/c/c918687f5e39) | [net] | netfilter: nft_compat: relax chain type validation |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.18 | [`756c1b1a7f20`](https://git.kernel.org/torvalds/c/756c1b1a7f20) | [net] | netfilter: nft_compat: remove incomplete 32/64 bits arch compat code |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`2daf1b4d18e3`](https://git.kernel.org/torvalds/c/2daf1b4d18e3) | [net] | netfilter: nft_compat: use current net namespace |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.18 | [`afefb6f928ed`](https://git.kernel.org/torvalds/c/afefb6f928ed) | [net] | netfilter: nft_compat: use the match->table to validate dependencies |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.18 | [`f3f5ddeddd6a`](https://git.kernel.org/torvalds/c/f3f5ddeddd6a) | [net] | netfilter: nft_compat: validate chain type in match/target |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.18 | [`6b96686ecffc`](https://git.kernel.org/torvalds/c/6b96686ecffc) | [net] | netfilter: nft_masq: fix uninitialized range in nft_masq_{ipv4, ipv6}_eval |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.18 | [`8da4cc1b10c1`](https://git.kernel.org/torvalds/c/8da4cc1b10c1) | [net] | netfilter: nft_masq: register/unregister notifiers on module init/exit |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`afc5be307979`](https://git.kernel.org/torvalds/c/afc5be307979) | [net] | netfilter: nft_meta: Add cpu attribute support |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`e2a093ff0dbf`](https://git.kernel.org/torvalds/c/e2a093ff0dbf) | [net] | netfilter: nft_meta: add pkttype support |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`1e2d56a5d33a`](https://git.kernel.org/torvalds/c/1e2d56a5d33a) | [net] | netfilter: nft_nat: dump attributes if they are set |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.18 | [`e42eff8a32f8`](https://git.kernel.org/torvalds/c/e42eff8a32f8) | [net] | netfilter: nft_nat: include a flag attribute |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`5c819a39753d`](https://git.kernel.org/torvalds/c/5c819a39753d) | [net] | netfilter: nft_nat: insufficient attribute validation |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.18 | [`61cfac6b42af`](https://git.kernel.org/torvalds/c/61cfac6b42af) | [net] | netfilter: nft_nat: NFTA_NAT_REG_ADDR_MAX depends on NFTA_NAT_REG_ADDR_MIN |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.18 | [`51b0a5d8c21a`](https://git.kernel.org/torvalds/c/51b0a5d8c21a) | [net] | netfilter: nft_reject: introduce icmp code abstraction for inet and bridge |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | 3.18 | [`523b929d5446`](https://git.kernel.org/torvalds/c/523b929d5446) | [net] | netfilter: nft_reject_bridge: don't use IP stack to reject traffic |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.18 | [`c1207c049b20`](https://git.kernel.org/torvalds/c/c1207c049b20) | [net] | netfilter: nft_reject_bridge: Fix powerpc build error |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.18 | [`127917c29a43`](https://git.kernel.org/torvalds/c/127917c29a43) | [net] | netfilter: nft_reject_bridge: restrict reject to prerouting and input |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.19 | [`12069401d895`](https://git.kernel.org/torvalds/c/12069401d895) | [net] | geneve: Fix races between socket add and release |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | 3.19 | [`7ed767f73192`](https://git.kernel.org/torvalds/c/7ed767f73192) | [net] | geneve: Remove socket and offload handlers at destruction |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | 3.19 | [`d0edc7bf397a`](https://git.kernel.org/torvalds/c/d0edc7bf397a) | [net] | mpls: Fix config check for mpls |  | CONFIG_MPLS does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | 3.19 | [`e9105f1bead4`](https://git.kernel.org/torvalds/c/e9105f1bead4) | [net] | netfilter: nf_tables: add new expression nft_redir |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.19 | [`e8781f70a5b2`](https://git.kernel.org/torvalds/c/e8781f70a5b2) | [net] | netfilter: nf_tables: disable preemption when restoring chain counters |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.19 | [`a2f18db0c68f`](https://git.kernel.org/torvalds/c/a2f18db0c68f) | [net] | netfilter: nf_tables: fix flush ruleset chain dependencies | CVE-2015-1573 | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-240 |
| FEATURE-MISSING | 3.19 | [`f5553c19ff90`](https://git.kernel.org/torvalds/c/f5553c19ff90) | [net] | netfilter: nf_tables: fix leaks in error path of nf_tables_newchain() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.19 | [`7b5bca4676c7`](https://git.kernel.org/torvalds/c/7b5bca4676c7) | [net] | netfilter: nf_tables: fix port natting in little endian archs |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.19 | [`75e8d06d4308`](https://git.kernel.org/torvalds/c/75e8d06d4308) | [net] | netfilter: nf_tables: validate hooks in NAT expressions |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.19 | [`ce674173e9f4`](https://git.kernel.org/torvalds/c/ce674173e9f4) | [net] | netfilter: nft_meta: add cgroup support |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 3.19 | [`baf4750d92cd`](https://git.kernel.org/torvalds/c/baf4750d92cd) | [net] | netfilter: nft_redir: fix sparse warnings |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.0 | [`a4c9ea5e8fec`](https://git.kernel.org/torvalds/c/a4c9ea5e8fec) | [net] | geneve: Add Geneve GRO support |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | 4.0 | [`46b1e4f9115d`](https://git.kernel.org/torvalds/c/46b1e4f9115d) | [net] | geneve: Check family when reusing sockets |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | 4.0 | [`df5dba8e52be`](https://git.kernel.org/torvalds/c/df5dba8e52be) | [net] | geneve: Remove socket hash table |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | 4.0 | [`61f3cade763d`](https://git.kernel.org/torvalds/c/61f3cade763d) | [net] | geneve: Remove workqueue |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | 4.0 | [`829a3ada9cc7`](https://git.kernel.org/torvalds/c/829a3ada9cc7) | [net] | geneve: Simplify locking |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | 4.0 | [`d6b6cb1d3e6f`](https://git.kernel.org/torvalds/c/d6b6cb1d3e6f) | [net] | netfilter: nf_tables: allow to change chain policy without hook if it exists |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.0 | [`9889840f5988`](https://git.kernel.org/torvalds/c/9889840f5988) | [net] | netfilter: nf_tables: check for overflow of rule dlen field |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.0 | [`59900e0a019e`](https://git.kernel.org/torvalds/c/59900e0a019e) | [net] | netfilter: nf_tables: fix error handling of rule replacement |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.0 | [`8670c3a55e91`](https://git.kernel.org/torvalds/c/8670c3a55e91) | [net] | netfilter: nf_tables: fix transaction race condition |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.0 | [`86f1ec323181`](https://git.kernel.org/torvalds/c/86f1ec323181) | [net] | netfilter: nf_tables: fix userdata length overflow |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.0 | [`5191f4d82daf`](https://git.kernel.org/torvalds/c/5191f4d82daf) | [net] | netfilter: nft_compat: add ebtables support |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.0 | [`2156d321b879`](https://git.kernel.org/torvalds/c/2156d321b879) | [net] | netfilter: nft_compat: don't truncate ethernet protocol type to u8 |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.0 | [`520aa7414bb5`](https://git.kernel.org/torvalds/c/520aa7414bb5) | [net] | netfilter: nft_compat: fix module refcount underflow |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.0 | [`749177ccc74f`](https://git.kernel.org/torvalds/c/749177ccc74f) | [net] | netfilter: nft_compat: set IP6T_F_PROTO flag if protocol is set |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.0 | [`4c1017aa80c9`](https://git.kernel.org/torvalds/c/4c1017aa80c9) | [net] | netfilter: nft_lookup: add missing attribute validation for NFTA_LOOKUP_SET_ID |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`8a08919f43d9`](https://git.kernel.org/torvalds/c/8a08919f43d9) | [net] | mpls: Allow mpls_gso and mpls_router to be built as modules |  | CONFIG_MPLS does not exist in A37 tree | 3.10.0-798 |
| FEATURE-MISSING | 4.1 | [`78f5b8991950`](https://git.kernel.org/torvalds/c/78f5b8991950) | [net] | mpls: Change reserved label names to be consistent with netbsd |  | CONFIG_MPLS does not exist in A37 tree | 3.10.0-637 |
| FEATURE-MISSING | 4.1 | [`7d5f41f276b3`](https://git.kernel.org/torvalds/c/7d5f41f276b3) | [net] | mpls: Fix the openvswitch select of NET_MPLS_GSO |  | CONFIG_MPLS does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | 4.1 | [`c967a0873a78`](https://git.kernel.org/torvalds/c/c967a0873a78) | [net] | mpls: Move reserved label definitions |  | CONFIG_MPLS does not exist in A37 tree | 3.10.0-637 |
| FEATURE-MISSING | 4.1 | [`cec9166ca4e5`](https://git.kernel.org/torvalds/c/cec9166ca4e5) | [net] | mpls: Refactor how the mpls module is built |  | CONFIG_MPLS does not exist in A37 tree | 3.10.0-798 |
| FEATURE-MISSING | 4.1 | [`26c459a8072f`](https://git.kernel.org/torvalds/c/26c459a8072f) | [net] | mpls: spelling: s/conceved/conceived/, s/as/a/ |  | CONFIG_MPLS does not exist in A37 tree | 3.10.0-798 |
| FEATURE-MISSING | 4.1 | [`7c6c6e95a12e`](https://git.kernel.org/torvalds/c/7c6c6e95a12e) | [net] | netfilter: nf_tables: add flag to indicate set contains expressions |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`6908665826d5`](https://git.kernel.org/torvalds/c/6908665826d5) | [net] | netfilter: nf_tables: add GC synchronization helpers |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`0b2d8a7b638b`](https://git.kernel.org/torvalds/c/0b2d8a7b638b) | [net] | netfilter: nf_tables: add helper functions for expression handling |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`b1c96ed37cee`](https://git.kernel.org/torvalds/c/b1c96ed37cee) | [net] | netfilter: nf_tables: add register parsing/dumping helpers |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`c3e1b005ed1c`](https://git.kernel.org/torvalds/c/c3e1b005ed1c) | [net] | netfilter: nf_tables: add set element timeout support |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`3ac4c07a2400`](https://git.kernel.org/torvalds/c/3ac4c07a2400) | [net] | netfilter: nf_tables: add set extensions |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`cfed7e1b1f8e`](https://git.kernel.org/torvalds/c/cfed7e1b1f8e) | [net] | netfilter: nf_tables: add set garbage collection helpers |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`761da2935d6e`](https://git.kernel.org/torvalds/c/761da2935d6e) | [net] | netfilter: nf_tables: add set timeout API support |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`22fe54d5fefc`](https://git.kernel.org/torvalds/c/22fe54d5fefc) | [net] | netfilter: nf_tables: add support for dynamic set updates |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`ea4bd995b0f2`](https://git.kernel.org/torvalds/c/ea4bd995b0f2) | [net] | netfilter: nf_tables: add transaction helper functions |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`1a1e1a12199c`](https://git.kernel.org/torvalds/c/1a1e1a12199c) | [net] | netfilter: nf_tables: cleanup nf_tables.h |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`ffdb210eb415`](https://git.kernel.org/torvalds/c/ffdb210eb415) | [net] | netfilter: nf_tables: consolidate error path of nf_tables_newtable() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`f04e599e20d7`](https://git.kernel.org/torvalds/c/f04e599e20d7) | [net] | netfilter: nf_tables: consolidate Kconfig options |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`354bf5a0d794`](https://git.kernel.org/torvalds/c/354bf5a0d794) | [net] | netfilter: nf_tables: consolidate tracing invocations |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`61edafbb47e9`](https://git.kernel.org/torvalds/c/61edafbb47e9) | [net] | netfilter: nf_tables: consolide set element destruction |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`fad136ea0d32`](https://git.kernel.org/torvalds/c/fad136ea0d32) | [net] | netfilter: nf_tables: convert expressions to u32 register pointers |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`fe2811ebeb97`](https://git.kernel.org/torvalds/c/fe2811ebeb97) | [net] | netfilter: nf_tables: convert hash and rbtree to set extensions |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`8cd8937ac0d6`](https://git.kernel.org/torvalds/c/8cd8937ac0d6) | [net] | netfilter: nf_tables: convert sets to u32 data pointers |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`960bd2c26421`](https://git.kernel.org/torvalds/c/960bd2c26421) | [net] | netfilter: nf_tables: fix bogus warning in nft_data_uninit() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`4a8678efbec6`](https://git.kernel.org/torvalds/c/4a8678efbec6) | [net] | netfilter: nf_tables: fix set selection when timeouts are requested |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`4c4ed0748f82`](https://git.kernel.org/torvalds/c/4c4ed0748f82) | [net] | netfilter: nf_tables: fix wrong length for jump/goto verdicts |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`a55e22e92f1a`](https://git.kernel.org/torvalds/c/a55e22e92f1a) | [net] | netfilter: nf_tables: get rid of NFT_REG_VERDICT usage |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`cc02e457bb86`](https://git.kernel.org/torvalds/c/cc02e457bb86) | [net] | netfilter: nf_tables: implement set transaction support |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`d07db9884a5f`](https://git.kernel.org/torvalds/c/d07db9884a5f) | [net] | netfilter: nf_tables: introduce nft_validate_register_load() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`e562d860d7c8`](https://git.kernel.org/torvalds/c/e562d860d7c8) | [net] | netfilter: nf_tables: kill nft_data_cmp() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`27e6d2017abd`](https://git.kernel.org/torvalds/c/27e6d2017abd) | [net] | netfilter: nf_tables: kill nft_validate_output_register() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`1cae565e8b74`](https://git.kernel.org/torvalds/c/1cae565e8b74) | [net] | netfilter: nf_tables: limit maximum table name length to 32 bytes |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`151d799a61da`](https://git.kernel.org/torvalds/c/151d799a61da) | [net] | netfilter: nf_tables: mark stateful expressions |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`01ef16c2dd2e`](https://git.kernel.org/torvalds/c/01ef16c2dd2e) | [net] | netfilter: nf_tables: minor tracing cleanups |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`5ebb335dcbe6`](https://git.kernel.org/torvalds/c/5ebb335dcbe6) | [net] | netfilter: nf_tables: move struct net pointer to base chain |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`f25ad2e907f1`](https://git.kernel.org/torvalds/c/f25ad2e907f1) | [net] | netfilter: nf_tables: prepare for expressions associated to set elements |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`3dd0673ac3cd`](https://git.kernel.org/torvalds/c/3dd0673ac3cd) | [net] | netfilter: nf_tables: prepare set element accounting for async updates |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`55df35d22fe3`](https://git.kernel.org/torvalds/c/55df35d22fe3) | [net] | netfilter: nf_tables: reject NFT_SET_ELEM_INTERVAL_END flag for non-interval sets |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`1ec10212f9bc`](https://git.kernel.org/torvalds/c/1ec10212f9bc) | [net] | netfilter: nf_tables: rename nft_validate_data_load() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`b2832dd6621b`](https://git.kernel.org/torvalds/c/b2832dd6621b) | [net] | netfilter: nf_tables: return set extensions from ->lookup() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`11113e190bf0`](https://git.kernel.org/torvalds/c/11113e190bf0) | [net] | netfilter: nf_tables: support different set binding types |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`68e942e88add`](https://git.kernel.org/torvalds/c/68e942e88add) | [net] | netfilter: nf_tables: support optional userdata for set elements |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`d0a11fc3dc4a`](https://git.kernel.org/torvalds/c/d0a11fc3dc4a) | [net] | netfilter: nf_tables: support variable sized data in nft_data_init() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`49499c3e6e18`](https://git.kernel.org/torvalds/c/49499c3e6e18) | [net] | netfilter: nf_tables: switch registers to 32 bit addressing |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`1ca2e1702c05`](https://git.kernel.org/torvalds/c/1ca2e1702c05) | [net] | netfilter: nf_tables: use struct nft_verdict within struct nft_data |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`45d9bcda21f4`](https://git.kernel.org/torvalds/c/45d9bcda21f4) | [net] | netfilter: nf_tables: validate len in nft_validate_data_load() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`7d7402642eaf`](https://git.kernel.org/torvalds/c/7d7402642eaf) | [net] | netfilter: nf_tables: variable sized set element keys / data |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`5f15893943bf`](https://git.kernel.org/torvalds/c/5f15893943bf) | [net] | netfilter: nft_compat: add support for arptables extensions |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`3e135cd499bf`](https://git.kernel.org/torvalds/c/3e135cd499bf) | [net] | netfilter: nft_dynset: dynamic stateful expression instantiation |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`9d0982927e79`](https://git.kernel.org/torvalds/c/9d0982927e79) | [net] | netfilter: nft_hash: add support for timeouts |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`bfd6e327e118`](https://git.kernel.org/torvalds/c/bfd6e327e118) | [net] | netfilter: nft_hash: convert to use rhashtable callbacks |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`45d84751fb31`](https://git.kernel.org/torvalds/c/45d84751fb31) | [net] | netfilter: nft_hash: indent rhashtable parameters |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`745f5450d519`](https://git.kernel.org/torvalds/c/745f5450d519) | [net] | netfilter: nft_hash: restore struct nft_hash |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`58f40ab6e242`](https://git.kernel.org/torvalds/c/58f40ab6e242) | [net] | netfilter: nft_lookup: use nft_validate_register_store() to validate types |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`c5035c77f893`](https://git.kernel.org/torvalds/c/c5035c77f893) | [net] | netfilter: nft_meta: fix cgroup matching |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`14d14a5d2957`](https://git.kernel.org/torvalds/c/14d14a5d2957) | [net] | netfilter: nft_meta: use raw_smp_processor_id() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.1 | [`16c45eda9603`](https://git.kernel.org/torvalds/c/16c45eda9603) | [net] | netfilter: nft_rbtree: fix locking |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.2 | [`2d07dc79fe04`](https://git.kernel.org/torvalds/c/2d07dc79fe04) | [net] | geneve: add initial netdev driver for GENEVE tunnels |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.2 | [`d89511251f65`](https://git.kernel.org/torvalds/c/d89511251f65) | [net] | geneve: allow user to specify TOS info for tunnel frames |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.2 | [`8760ce58353c`](https://git.kernel.org/torvalds/c/8760ce58353c) | [net] | geneve: allow user to specify TTL for tunnel frames |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.2 | [`35d32e8fe4ab`](https://git.kernel.org/torvalds/c/35d32e8fe4ab) | [net] | geneve: move definition of geneve_hdr() to geneve.h |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.2 | [`125907ae5ef0`](https://git.kernel.org/torvalds/c/125907ae5ef0) | [net] | geneve: remove MODULE_ALIAS_RTNL_LINK from net/ipv4/geneve.c |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.2 | [`11e1fa46b432`](https://git.kernel.org/torvalds/c/11e1fa46b432) | [net] | geneve: Rename support library as geneve_core |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.2 | [`730fc4371333`](https://git.kernel.org/torvalds/c/730fc4371333) | [net] | mpls: Add definition for IPPROTO_MPLS |  | CONFIG_MPLS does not exist in A37 tree | 3.10.0-637 |
| FEATURE-MISSING | 4.2 | [`d8ee8f7c56b2`](https://git.kernel.org/torvalds/c/d8ee8f7c56b2) | [net] | netfilter: nf_tables: add nft_register_basechain() and nft_unregister_basechain() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.2 | [`fdab6a4cbd89`](https://git.kernel.org/torvalds/c/fdab6a4cbd89) | [net] | netfilter: nftables: Do not run chains in the wrong network namespace |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.3 | [`e305ac6cf5a1`](https://git.kernel.org/torvalds/c/e305ac6cf5a1) | [net] | geneve: Add support to collect tunnel metadata |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.3 | [`371bd1061d29`](https://git.kernel.org/torvalds/c/371bd1061d29) | [net] | geneve: Consolidate Geneve functionality in single module |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.3 | [`ed961ac23384`](https://git.kernel.org/torvalds/c/ed961ac23384) (loose) | [net] | geneve: convert to using IFF_NO_QUEUE |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.3 | [`08399efc6319`](https://git.kernel.org/torvalds/c/08399efc6319) | [net] | geneve: ensure ECN info is handled properly in all tx/rx paths |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.3 | [`87cd3dcaf4bd`](https://git.kernel.org/torvalds/c/87cd3dcaf4bd) | [net] | geneve: Initialize ethernet address in device setup |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.3 | [`cd7918b35f0e`](https://git.kernel.org/torvalds/c/cd7918b35f0e) | [net] | geneve: Make dst-port configurable |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.3 | [`66d47003f7c1`](https://git.kernel.org/torvalds/c/66d47003f7c1) | [net] | geneve: Move device hash table to geneve socket |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.3 | [`5eb8f289ac30`](https://git.kernel.org/torvalds/c/5eb8f289ac30) | [net] | geneve: remove vlan-related feature assignment |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.3 | [`8e816df87997`](https://git.kernel.org/torvalds/c/8e816df87997) | [net] | geneve: Use GRO cells infrastructure |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.3 | [`7bbe33ff1896`](https://git.kernel.org/torvalds/c/7bbe33ff1896) | [net] | geneve: use network byte order for destination port config parameter |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.3 | [`980c394c53e4`](https://git.kernel.org/torvalds/c/980c394c53e4) | [net] | geneve: Use skb mark and protocol to lookup route |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.3 | [`d877f07112f1`](https://git.kernel.org/torvalds/c/d877f07112f1) | [net] | netfilter: nf_tables: add nft_dup expression |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.3 | [`bf798657eb5b`](https://git.kernel.org/torvalds/c/bf798657eb5b) | [net] | netfilter: nf_tables: Use 32 bit addressing register from nft_type_to_reg() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.3 | [`ba378ca9c04a`](https://git.kernel.org/torvalds/c/ba378ca9c04a) | [net] | netfilter: nft_compat: skip family comparison in case of NFPROTO_UNSPEC |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.3 | [`0c45e76960de`](https://git.kernel.org/torvalds/c/0c45e76960de) | [net] | netfilter: nft_counter: convert it to use per-cpu counters |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.3 | [`3e87baafa4f4`](https://git.kernel.org/torvalds/c/3e87baafa4f4) | [net] | netfilter: nft_limit: add burst parameter |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.3 | [`d2168e849ebf`](https://git.kernel.org/torvalds/c/d2168e849ebf) | [net] | netfilter: nft_limit: add per-byte limiting |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.3 | [`8bdf36264255`](https://git.kernel.org/torvalds/c/8bdf36264255) | [net] | netfilter: nft_limit: constant token cost per packet |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.3 | [`dba27ec1bc38`](https://git.kernel.org/torvalds/c/dba27ec1bc38) | [net] | netfilter: nft_limit: convert to token-based limiting at nanosecond granularity |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.3 | [`f8d3a6bc7601`](https://git.kernel.org/torvalds/c/f8d3a6bc7601) | [net] | netfilter: nft_limit: factor out shared code with per-byte limiting |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.3 | [`09e4e42a00b9`](https://git.kernel.org/torvalds/c/09e4e42a00b9) | [net] | netfilter: nft_limit: rename to nft_limit_pkts |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.3 | [`8cfd23e67401`](https://git.kernel.org/torvalds/c/8cfd23e67401) | [net] | netfilter: nft_payload: work around vlan header stripping |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.4 | [`b8812fa88371`](https://git.kernel.org/torvalds/c/b8812fa88371) | [net] | geneve: add IPv6 bits to geneve_fill_metadata_dst |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.4 | [`a322a1bcf329`](https://git.kernel.org/torvalds/c/a322a1bcf329) | [net] | geneve: Fix IPv6 xmit stats update |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.4 | [`3a56f86f1be6`](https://git.kernel.org/torvalds/c/3a56f86f1be6) | [net] | geneve: handle ipv6 priority like ipv4 tos |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.4 | [`8ed66f0e8235`](https://git.kernel.org/torvalds/c/8ed66f0e8235) | [net] | geneve: implement support for IPv6-based tunnels |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.4 | [`184fc8b5ee60`](https://git.kernel.org/torvalds/c/184fc8b5ee60) | [net] | geneve: initialize needed_headroom |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.4 | [`086f332167d6`](https://git.kernel.org/torvalds/c/086f332167d6) | [net] | netfilter: nf_tables: add clone interface to expression operations |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.4 | [`6aa187f21ca2`](https://git.kernel.org/torvalds/c/6aa187f21ca2) | [net] | netfilter: nf_tables: kill nft_pktinfo.ops |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.4 | [`46448d0093ba`](https://git.kernel.org/torvalds/c/46448d0093ba) | [net] | netfilter: nf_tables: Pass struct net in nft_pktinfo |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-998 |
| FEATURE-MISSING | 4.4 | [`88182a0e0c66`](https://git.kernel.org/torvalds/c/88182a0e0c66) | [net] | netfilter: nf_tables: Use pkt->net instead of computing net from the passed net_devices |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-998 |
| FEATURE-MISSING | 4.4 | [`d5f79b6e4d16`](https://git.kernel.org/torvalds/c/d5f79b6e4d16) | [net] | netfilter: nft_ct: include direction when dumping NFT_CT_L3PROTOCOL key |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.4 | [`3aed82259155`](https://git.kernel.org/torvalds/c/3aed82259155) | [net] | netfilter: nft_meta: use skb_to_full_sk() helper |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-998 |
| FEATURE-MISSING | 4.5 | [`a8170d2b9e8d`](https://git.kernel.org/torvalds/c/a8170d2b9e8d) | [net] | geneve: Add geneve udp port offload for ethernet devices |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.5 | [`05ca4029b25c`](https://git.kernel.org/torvalds/c/05ca4029b25c) | [net] | geneve: Add geneve_get_rx_port support |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.5 | [`fc41cdb322a2`](https://git.kernel.org/torvalds/c/fc41cdb322a2) | [net] | geneve: clear IFF_TX_SKB_SHARING |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.5 | [`aeee0e66c6b4`](https://git.kernel.org/torvalds/c/aeee0e66c6b4) | [net] | geneve: Refine MTU limit |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.5 | [`55e5bfb53cff`](https://git.kernel.org/torvalds/c/55e5bfb53cff) | [net] | geneve: Relax MTU constraints |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.5 | [`abe492b4f50c`](https://git.kernel.org/torvalds/c/abe492b4f50c) | [net] | geneve: UDP checksum configuration via netlink |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.5 | [`e6d8ecac9e68`](https://git.kernel.org/torvalds/c/e6d8ecac9e68) | [net] | netfilter: nf_tables: Add new attributes into nft_set to store user data. |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.5 | [`33d5a7b14bfd`](https://git.kernel.org/torvalds/c/33d5a7b14bfd) | [net] | netfilter: nf_tables: extend tracing infrastructure |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.5 | [`9fb0b519c7e0`](https://git.kernel.org/torvalds/c/9fb0b519c7e0) | [net] | netfilter: nf_tables: fix nf_log_trace based tracing |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.5 | [`df05ef874b28`](https://git.kernel.org/torvalds/c/df05ef874b28) | [net] | netfilter: nf_tables: release objects on netns destruction |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.5 | [`f4c756b4ea7d`](https://git.kernel.org/torvalds/c/f4c756b4ea7d) | [net] | netfilter: nf_tables: remove check against removal of inactive objects |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.5 | [`a9ecfbe7fcf2`](https://git.kernel.org/torvalds/c/a9ecfbe7fcf2) | [net] | netfilter: nf_tables: remove unused struct members |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.5 | [`e639f7ab079b`](https://git.kernel.org/torvalds/c/e639f7ab079b) | [net] | netfilter: nf_tables: wrap tracing with a static key |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.5 | [`4b8c4eddfc94`](https://git.kernel.org/torvalds/c/4b8c4eddfc94) | [net] | netfilter: nft_byteorder: avoid unneeded le/be conversion steps |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.5 | [`ce1e7989d989`](https://git.kernel.org/torvalds/c/ce1e7989d989) | [net] | netfilter: nft_byteorder: provide 64bit le/be conversion |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.5 | [`5cc6ce9ff275`](https://git.kernel.org/torvalds/c/5cc6ce9ff275) | [net] | netfilter: nft_counter: fix erroneous return values |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.5 | [`48f66c905a97`](https://git.kernel.org/torvalds/c/48f66c905a97) | [net] | netfilter: nft_ct: add byte/packet counter support |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.5 | [`efaea94aaf0d`](https://git.kernel.org/torvalds/c/efaea94aaf0d) | [net] | netfilter: nft_ct: keep counters away from CONFIG_NF_CONNTRACK_LABELS |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.5 | [`c7862a5f0de5`](https://git.kernel.org/torvalds/c/c7862a5f0de5) | [net] | netfilter: nft_limit: allow to invert matching criteria |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.5 | [`7ec3f7b47b8d`](https://git.kernel.org/torvalds/c/7ec3f7b47b8d) | [net] | netfilter: nft_payload: add packet mangling support |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.6 | [`468dfffcd762`](https://git.kernel.org/torvalds/c/468dfffcd762) | [net] | geneve: add dst caching support |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-440 |
| FEATURE-MISSING | 4.6 | [`95caf6f71a99`](https://git.kernel.org/torvalds/c/95caf6f71a99) | [net] | geneve: fix populating tclass in geneve_get_v6_dst |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.6 | [`1e9f12ec92ab`](https://git.kernel.org/torvalds/c/1e9f12ec92ab) | [net] | geneve: implement geneve_get_sk_family helper |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.6 | [`9fc4754582bf`](https://git.kernel.org/torvalds/c/9fc4754582bf) | [net] | geneve: move geneve device lookup before iptunnel_pull_header |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.6 | [`14f1f7243552`](https://git.kernel.org/torvalds/c/14f1f7243552) | [net] | geneve: Support outer IPv4 Tx checksums by default |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.6 | [`8eb3b99554b8`](https://git.kernel.org/torvalds/c/8eb3b99554b8) | [net] | geneve: support setting IPv6 flow label |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | 4.6 | [`f0716cd6eb89`](https://git.kernel.org/torvalds/c/f0716cd6eb89) | [net] | netfilter: nft_compat: check match/targetinfo attr size |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.6 | [`8a6bf5da1aef`](https://git.kernel.org/torvalds/c/8a6bf5da1aef) | [net] | netfilter: nft_masq: support port range |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-458 |
| FEATURE-MISSING | 4.7 | [`681e683ff30a`](https://git.kernel.org/torvalds/c/681e683ff30a) | [net] | geneve: break dependency with netdev drivers |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-473 |
| FEATURE-MISSING | 4.7 | [`4a0090a98e5f`](https://git.kernel.org/torvalds/c/4a0090a98e5f) | [net] | geneve: change to use UDP socket GRO |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-473 |
| FEATURE-MISSING | 4.7 | [`d5d5e8d55732`](https://git.kernel.org/torvalds/c/d5d5e8d55732) | [net] | geneve: fix max_mtu setting |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-572 |
| FEATURE-MISSING | 4.7 | [`efeb2267bba8`](https://git.kernel.org/torvalds/c/efeb2267bba8) | [net] | geneve: fix tx_errors statistics |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-572 |
| FEATURE-MISSING | 4.7 | [`1ba64facae57`](https://git.kernel.org/torvalds/c/1ba64facae57) | [net] | geneve: testing the wrong variable in geneve6_build_skb() |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-572 |
| FEATURE-MISSING | 4.7 | [`8fff1722f705`](https://git.kernel.org/torvalds/c/8fff1722f705) | [net] | netfilter: nf_tables: fix a wrong check to skip the inactive rules |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1085 |
| FEATURE-MISSING | 4.7 | [`c8607e020014`](https://git.kernel.org/torvalds/c/c8607e020014) | [net] | netfilter: nft_ct: fix expiration getter |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-710 |
| FEATURE-MISSING | 4.8 | [`0071e184a535`](https://git.kernel.org/torvalds/c/0071e184a535) | [net] | netfilter: nf_tables: add support for inverted logic in nft_lookup |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-664 |
| FEATURE-MISSING | 4.8 | [`4da449ae1df9`](https://git.kernel.org/torvalds/c/4da449ae1df9) | [net] | netfilter: nft_exthdr: Add size check on u8 nft_exthdr attributes |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.8 | [`89e1f6d2b956`](https://git.kernel.org/torvalds/c/89e1f6d2b956) | [net] | netfilter: nft_reject: restrict to INPUT/FORWARD/OUTPUT |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-867 |
| FEATURE-MISSING | 4.9 | [`5b0101475999`](https://git.kernel.org/torvalds/c/5b0101475999) | [net] | geneve: avoid use-after-free of skb->data |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-572 |
| FEATURE-MISSING | 4.9 | [`fceb9c3e3825`](https://git.kernel.org/torvalds/c/fceb9c3e3825) | [net] | geneve: avoid using stale geneve socket |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-770 |
| FEATURE-MISSING | 4.9 | [`48d2ab609b6b`](https://git.kernel.org/torvalds/c/48d2ab609b6b) (loose) | [net] | mpls: Fixups for GSO |  | CONFIG_MPLS does not exist in A37 tree | 3.10.0-798 |
| FEATURE-MISSING | 4.9 | [`9095e10edd28`](https://git.kernel.org/torvalds/c/9095e10edd28) | [net] | mpls: move mpls_hdr to a common location |  | CONFIG_MPLS does not exist in A37 tree | 3.10.0-798 |
| FEATURE-MISSING | 4.9 | [`0f3cd9b36977`](https://git.kernel.org/torvalds/c/0f3cd9b36977) | [net] | netfilter: nf_tables: add range expression |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.9 | [`d2e4d593516e`](https://git.kernel.org/torvalds/c/d2e4d593516e) | [net] | netfilter: nf_tables: avoid uninitialized variable warning |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.9 | [`c17c3cdff10b`](https://git.kernel.org/torvalds/c/c17c3cdff10b) | [net] | netfilter: nf_tables: destroy the set if fail to add transaction |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1085 |
| FEATURE-MISSING | 4.9 | [`61f9e2924f49`](https://git.kernel.org/torvalds/c/61f9e2924f49) | [net] | netfilter: nf_tables: fix *leak* when expr clone fail |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1085 |
| FEATURE-MISSING | 4.9 | [`d3e2a1110cae`](https://git.kernel.org/torvalds/c/d3e2a1110cae) | [net] | netfilter: nf_tables: fix inconsistent element expiration calculation |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-871 |
| FEATURE-MISSING | 4.9 | [`dab45060a56a`](https://git.kernel.org/torvalds/c/dab45060a56a) | [net] | netfilter: nf_tables: fix race when create new element in dynset |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1085 |
| FEATURE-MISSING | 4.9 | [`f1d505bb762e`](https://git.kernel.org/torvalds/c/f1d505bb762e) | [net] | netfilter: nf_tables: fix type mismatch with error return from nft_parse_u32_check |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.9 | [`508f8ccdab0e`](https://git.kernel.org/torvalds/c/508f8ccdab0e) | [net] | netfilter: nf_tables: introduce nft_chain_parse_hook() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-918 |
| FEATURE-MISSING | 4.9 | [`6133740d6e80`](https://git.kernel.org/torvalds/c/6133740d6e80) | [net] | netfilter: nf_tables: reject hook configuration updates on existing chains |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-918 |
| FEATURE-MISSING | 4.9 | [`09525a09ad30`](https://git.kernel.org/torvalds/c/09525a09ad30) | [net] | netfilter: nf_tables: underflow in nft_parse_u32_check() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.9 | [`36b701fae12a`](https://git.kernel.org/torvalds/c/36b701fae12a) | [net] | netfilter: nf_tables: validate maximum value of u32 netlink attributes |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.9 | [`a8b1e36d0d1d`](https://git.kernel.org/torvalds/c/a8b1e36d0d1d) | [net] | netfilter: nft_dynset: fix element timeout for HZ != 1000 |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-871 |
| FEATURE-MISSING | 4.9 | [`21a9e0f1568e`](https://git.kernel.org/torvalds/c/21a9e0f1568e) | [net] | netfilter: nft_exthdr: fix error handling in nft_exthdr_init() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.9 | [`49cdc4c74918`](https://git.kernel.org/torvalds/c/49cdc4c74918) | [net] | netfilter: nft_range: add the missing NULL pointer check |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.9 | [`ccca6607c545`](https://git.kernel.org/torvalds/c/ccca6607c545) | [net] | netfilter: nft_range: validate operation netlink attribute |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.10 | [`31ac1c19455f`](https://git.kernel.org/torvalds/c/31ac1c19455f) | [net] | geneve: fix ip_hdr_len reserved for geneve6 tunnel |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-770 |
| FEATURE-MISSING | 4.10 | [`c3ef5aa5e5f8`](https://git.kernel.org/torvalds/c/c3ef5aa5e5f8) | [net] | geneve: Merge ipv4 and ipv6 geneve_build_skb() |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-770 |
| FEATURE-MISSING | 4.10 | [`2e0b26e10352`](https://git.kernel.org/torvalds/c/2e0b26e10352) | [net] | geneve: Optimize geneve device lookup |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-770 |
| FEATURE-MISSING | 4.10 | [`bcceeec3ccc4`](https://git.kernel.org/torvalds/c/bcceeec3ccc4) | [net] | geneve: Remove redundant socket checks |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-770 |
| FEATURE-MISSING | 4.10 | [`9b4437a5b870`](https://git.kernel.org/torvalds/c/9b4437a5b870) | [net] | geneve: Unify LWT and netdev handling |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-770 |
| FEATURE-MISSING | 4.10 | [`b2c11e4b9536`](https://git.kernel.org/torvalds/c/b2c11e4b9536) | [net] | netfilter: nf_tables: bump set->ndeact on set flush |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1018 |
| FEATURE-MISSING | 4.10 | [`1a37ef769d68`](https://git.kernel.org/torvalds/c/1a37ef769d68) | [net] | netfilter: nf_tables: constify struct nft_ctx * parameter in nft_trans_alloc() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1018 |
| FEATURE-MISSING | 4.10 | [`de70185de033`](https://git.kernel.org/torvalds/c/de70185de033) | [net] | netfilter: nf_tables: deconstify walk callback function |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1018 |
| FEATURE-MISSING | 4.10 | [`3e38df136e45`](https://git.kernel.org/torvalds/c/3e38df136e45) | [net] | netfilter: nf_tables: fix oob access |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-983 |
| FEATURE-MISSING | 4.10 | [`e41e9d623cd7`](https://git.kernel.org/torvalds/c/e41e9d623cd7) | [net] | netfilter: nf_tables: remove useless U8_MAX validation |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.10 | [`4e24877e61e8`](https://git.kernel.org/torvalds/c/4e24877e61e8) | [net] | netfilter: nf_tables: simplify the basic expressions' init routine |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-578 |
| FEATURE-MISSING | 4.10 | [`8411b6442e59`](https://git.kernel.org/torvalds/c/8411b6442e59) | [net] | netfilter: nf_tables: support for set flushing |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1018 |
| FEATURE-MISSING | 4.10 | [`0e5a1c7eb3fc`](https://git.kernel.org/torvalds/c/0e5a1c7eb3fc) | [net] | netfilter: nf_tables: use hook state from xt_action_param structure |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-998 |
| FEATURE-MISSING | 4.10 | [`37df5301a3ae`](https://git.kernel.org/torvalds/c/37df5301a3ae) | [net] | netfilter: nft_set: introduce nft_{hash, rbtree}_deactivate_one() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1018 |
| FEATURE-MISSING | 4.11 | [`a717e3f74080`](https://git.kernel.org/torvalds/c/a717e3f74080) | [net] | geneve: lock RCU on TX path |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-770 |
| FEATURE-MISSING | 4.11 | [`10596608c4d6`](https://git.kernel.org/torvalds/c/10596608c4d6) | [net] | netfilter: nf_tables: fix mismatch in big-endian system |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-800 |
| FEATURE-MISSING | 4.11 | [`568af6de058c`](https://git.kernel.org/torvalds/c/568af6de058c) | [net] | netfilter: nf_tables: set pktinfo->thoff at AH header if found |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-764 |
| FEATURE-MISSING | 4.12 | [`11387fe4a98f`](https://git.kernel.org/torvalds/c/11387fe4a98f) | [net] | geneve: fix fill_info when using collect_metadata |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-770 |
| FEATURE-MISSING | 4.12 | [`5e0740c445e6`](https://git.kernel.org/torvalds/c/5e0740c445e6) | [net] | geneve: fix incorrect setting of UDP checksum flag |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-770 |
| FEATURE-MISSING | 4.12 | [`9a1c44d989bf`](https://git.kernel.org/torvalds/c/9a1c44d989bf) | [net] | geneve: fix needed_headroom and max_mtu for collect_metadata |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-770 |
| FEATURE-MISSING | 4.12 | [`277a292835c1`](https://git.kernel.org/torvalds/c/277a292835c1) | [net] | netfilter: nft_dynset: continue to next expr if _OP_ADD succeeded |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1085 |
| FEATURE-MISSING | 4.13 | [`fe741e2362f3`](https://git.kernel.org/torvalds/c/fe741e2362f3) | [net] | geneve: add missing rx stats accounting |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-770 |
| FEATURE-MISSING | 4.13 | [`4b4c21fad6ae`](https://git.kernel.org/torvalds/c/4b4c21fad6ae) | [net] | geneve: fix hlist corruption |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-693 |
| FEATURE-MISSING | 4.13 | [`04db70d9fe70`](https://git.kernel.org/torvalds/c/04db70d9fe70) | [net] | geneve: maximum value of VNI cannot be used |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-770 |
| FEATURE-MISSING | 4.13 | [`3ad7d2468f79`](https://git.kernel.org/torvalds/c/3ad7d2468f79) | [net] | Ipvlan should return an error when an address is already in use. |  | CONFIG_IPVLAN does not exist in A37 tree | 3.10.0-1018 |
| FEATURE-MISSING | 4.14 | [`2d2b13fcfff1`](https://git.kernel.org/torvalds/c/2d2b13fcfff1) | [net] | geneve/vxlan: add support for NETDEV_UDP_TUNNEL_DROP_INFO |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-764 |
| FEATURE-MISSING | 4.14 | [`04584957b5f9`](https://git.kernel.org/torvalds/c/04584957b5f9) | [net] | geneve/vxlan: offload ports on register/unregister events |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-764 |
| FEATURE-MISSING | 4.14 | [`772e97b57a4a`](https://git.kernel.org/torvalds/c/772e97b57a4a) | [net] | geneve: Fix function matching VNI and tunnel ID on big-endian |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-770 |
| FEATURE-MISSING | 4.15 | [`fd7eafd02121`](https://git.kernel.org/torvalds/c/fd7eafd02121) | [net] | geneve: fix fill_info when link down |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-829 |
| FEATURE-MISSING | 4.15 | [`f9094b7603c0`](https://git.kernel.org/torvalds/c/f9094b7603c0) | [net] | geneve: only configure or fill UDP_ZERO_CSUM6_RX/TX info when CONFIG_IPV6 |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-829 |
| FEATURE-MISSING | 4.15 | [`52a589d51f10`](https://git.kernel.org/torvalds/c/52a589d51f10) | [net] | geneve: update skb dst pmtu on tx path |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-980 |
| FEATURE-MISSING | 4.16 | [`467697d289e7`](https://git.kernel.org/torvalds/c/467697d289e7) | [net] | netfilter: nf_tables: add missing netlink attrs to policies |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1093 |
| FEATURE-MISSING | 4.18 | [`5edbea6987b3`](https://git.kernel.org/torvalds/c/5edbea6987b3) | [net] | geneve: cleanup hard coded value for Ethernet header length |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-980 |
| FEATURE-MISSING | 4.18 | [`71ad00c50d77`](https://git.kernel.org/torvalds/c/71ad00c50d77) | [net] | netfilter: nf_tables: fix module unload race |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1085 |
| FEATURE-MISSING | 4.18 | [`9970a8e40d4c`](https://git.kernel.org/torvalds/c/9970a8e40d4c) | [net] | netfilter: nft_set_hash: add rcu_barrier() in the nft_rhash_destroy() |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1085 |
| FEATURE-MISSING | 4.19 | [`d209df3e7f70`](https://git.kernel.org/torvalds/c/d209df3e7f70) | [net] | netfilter: nf_tables: fix register ordering |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1085 |
| FEATURE-MISSING | 4.19 | [`be2ab5b4d5c0`](https://git.kernel.org/torvalds/c/be2ab5b4d5c0) | [net] | netfilter: nf_tables: take module reference when starting a batch |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1085 |
| FEATURE-MISSING | 4.19 | [`4ef360dd6a65`](https://git.kernel.org/torvalds/c/4ef360dd6a65) | [net] | netfilter: nft_set: fix allocation size overflow in privsize callback. |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1085 |
| FEATURE-MISSING | 4.20 | [`447750f281ab`](https://git.kernel.org/torvalds/c/447750f281ab) | [net] | netfilter: nf_tables: don't use position attribute on rule replacement |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1085 |
| FEATURE-MISSING | 4.20 | [`29e3880109e3`](https://git.kernel.org/torvalds/c/29e3880109e3) | [net] | netfilter: nf_tables: fix use-after-free when deleting compat expressions |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1085 |
| FEATURE-MISSING | 5.0 | [`cf1c9ccba730`](https://git.kernel.org/torvalds/c/cf1c9ccba730) | [net] | geneve: correctly handle ipv6.disable module parameter |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-1034 |
| FEATURE-MISSING | 5.0 | [`a07966447f39`](https://git.kernel.org/torvalds/c/a07966447f39) | [net] | geneve: ICMP error lookup handler |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-971 |
| FEATURE-MISSING | 5.0 | [`23b7ca4f745f`](https://git.kernel.org/torvalds/c/23b7ca4f745f) | [net] | netfilter: nf_tables: fix flush after rule deletion in the same batch |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1085 |
| FEATURE-MISSING | 5.0 | [`753c111f655e`](https://git.kernel.org/torvalds/c/753c111f655e) | [net] | netfilter: nft_compat: use-after-free when deleting targets |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1085 |
| FEATURE-MISSING | 5.1 | [`3f3a390dbd59`](https://git.kernel.org/torvalds/c/3f3a390dbd59) | [net] | netfilter: nf_tables: use-after-free in dynamic operations |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1144 |
| FEATURE-MISSING | 5.2 | [`eccc73a6b2cb`](https://git.kernel.org/torvalds/c/eccc73a6b2cb) | [net] | geneve: Don't assume linear buffers in error handler |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-1090 |
| FEATURE-MISSING | 5.5 | [`7eb9d7675c08`](https://git.kernel.org/torvalds/c/7eb9d7675c08) (loose) | [net] | psample: fix skb_over_panic |  | CONFIG_PSAMPLE does not exist in A37 tree | 3.10.0-1144 |
| FEATURE-MISSING | — | — | [net] | geneve: Add Geneve tunneling protocol driver |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | — | — | [net] | geneve: coding style: comparison for equality with NULL |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | — | — | [net] | geneve: coding style: comparison for inequality with NULL |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | — | — | [net] | geneve: Do not require sock in udp_tunnel_xmit_skb |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | — | — | [net] | geneve: fix a sparse warning |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | — | — | [net] | geneve: fixup netdevice_notifier registration |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-484 |
| FEATURE-MISSING | — | — | [net] | geneve: identify as driver library in modules description |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-433 |
| FEATURE-MISSING | — | — | [net] | geneve: make access to tunnel options similar to vxlan |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-572 |
| FEATURE-MISSING | — | — | [net] | geneve: Pass UDP socket down through udp_tunnel{, 6}_xmit_skb() |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | — | — | [net] | geneve: pass udp_offload struct to UDP gro callbacks |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-284 |
| FEATURE-MISSING | — | — | [net] | geneve: use core MTU range checking in core net infra |  | CONFIG_GENEVE does not exist in A37 tree | 3.10.0-770 |
| FEATURE-MISSING | — | — | [net] | netfilter: nf_tables: fix nft_pktinfo initialization |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1015 |
| FEATURE-MISSING | — | — | [net] | nf_tables: fix addition/deletion of elements from commit/abort |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-352 |
| FEATURE-MISSING | — | — | [net] | nf_tables: Include appropriate header file in netfilter/nft_lookup.c |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-211 |
| FEATURE-MISSING | — | — | [net] | nf_tables: mark as Tech Preview |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-51 |
| FEATURE-MISSING | — | — | [net] | nf_tables: Remove TechPreview marker |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-1039 |
| FEATURE-MISSING | — | — | [net] | nf_tables: stuff structures to preserve kABI in the future |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-51 |
| FEATURE-MISSING | — | — | [net] | nf_tables: use reverse traversal commit_list in nf_tables_abort |  | CONFIG_NF_TABLES does not exist in A37 tree | 3.10.0-352 |
| REVIEW | 4.16 | [`60b01bcce971`](https://git.kernel.org/torvalds/c/60b01bcce971) | [wireless] | ath9k_htc: use non-QoS NDP for AP probing |  | tag [wireless], no specific rule | 3.10.0-1093 |
| REVIEW | 5.4 | [`ee6db78f5db9`](https://git.kernel.org/torvalds/c/ee6db78f5db9) | [wireless] | rtw88: pci: Rearrange the memory usage for skb in RX ISR |  | tag [wireless], no specific rule | 3.10.0-1112 |
| REVIEW | 5.4 | [`29b68a920f6a`](https://git.kernel.org/torvalds/c/29b68a920f6a) | [wireless] | rtw88: pci: Use DMA sync instead of remapping in RX ISR |  | tag [wireless], no specific rule | 3.10.0-1112 |
| REVIEW | — | — | [wireless] | Backport ath common code from linux-4.1-rc6 |  | tag [wireless], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [wireless] | Backport ath drivers from linux 3.16 |  | tag [wireless], no specific rule | 3.10.0-194 |
| REVIEW | — | — | [wireless] | Backport ath10k driver from linux-4.11-rc1 |  | tag [wireless], no specific rule | 3.10.0-628 |
| REVIEW | — | — | [wireless] | Backport ath9k driver from linux-4.1-rc6 |  | tag [wireless], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [wireless] | Backport ath9k driver from linux-4.11-rc1 |  | tag [wireless], no specific rule | 3.10.0-628 |
| REVIEW | — | — | [wireless] | Backport BCMA bus driver from linux-4.1-rc6 |  | tag [wireless], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [wireless] | Backport brcm80211 common code from linux-4.1-rc6 |  | tag [wireless], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [wireless] | Backport brcm80211 drivers from linux 3.16 |  | tag [wireless], no specific rule | 3.10.0-194 |
| REVIEW | — | — | [wireless] | Backport brcmfmac driver from linux-4.1-rc6 |  | tag [wireless], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [wireless] | Backport brcmsmac driver from linux-4.1-rc6 |  | tag [wireless], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [wireless] | Backport carl9170 from linux-4.1-rc6 |  | tag [wireless], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [wireless] | Backport iwlegacy driver from linux-4.1-rc6 |  | tag [wireless], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [wireless] | Backport iwlegacy drivers from linux 3.16 |  | tag [wireless], no specific rule | 3.10.0-194 |
| REVIEW | — | — | [wireless] | Backport iwlwifi driver from linux 3.16 |  | tag [wireless], no specific rule | 3.10.0-194 |
| REVIEW | — | — | [wireless] | Backport iwlwifi driver from linux-4.1-rc6 |  | tag [wireless], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [wireless] | Backport iwlwifi driver from linux-4.11-rc1 |  | tag [wireless], no specific rule | 3.10.0-628 |
| REVIEW | — | — | [wireless] | Backport iwlwifi driver from linux-5.3-rc5 |  | tag [wireless], no specific rule | 3.10.0-1093 |
| REVIEW | — | — | [wireless] | Backport mac80211 from linux 3.16 |  | tag [wireless], no specific rule | 3.10.0-194 |
| REVIEW | — | — | [wireless] | Backport mac80211 from linux-4.1-rc6 |  | tag [wireless], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [wireless] | Backport mwifiex driver from linux 3.16 |  | tag [wireless], no specific rule | 3.10.0-194 |
| REVIEW | — | — | [wireless] | Backport mwifiex driver from linux-4.1-rc6 |  | tag [wireless], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [wireless] | Backport mwl8k driver from linux 3.16 |  | tag [wireless], no specific rule | 3.10.0-194 |
| REVIEW | — | — | [wireless] | Backport mwl8k driver from linux-4.1-rc6 |  | tag [wireless], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [wireless] | Backport net/mac80211 from linux-4.11-rc1 |  | tag [wireless], no specific rule | 3.10.0-628 |
| REVIEW | — | — | [wireless] | Backport net/wireless from linux-4.11-rc1 |  | tag [wireless], no specific rule | 3.10.0-628 |
| REVIEW | — | — | [wireless] | Backport rt2x00 driver from linux 3.16 |  | tag [wireless], no specific rule | 3.10.0-194 |
| REVIEW | — | — | [wireless] | Backport rt2x00 driver from linux-4.1-rc6 |  | tag [wireless], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [wireless] | Backport rtlwifi driver family from linux-4.1-rc6 |  | tag [wireless], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [wireless] | Backport rtlwifi drivers from linux 3.16 |  | tag [wireless], no specific rule | 3.10.0-194 |
| REVIEW | — | — | [wireless] | Backport SSB bus driver from linux-4.1-rc6 |  | tag [wireless], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [wireless] | Backport wil6210 driver from linux-4.1-rc6 |  | tag [wireless], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [wireless] | Backport wil6210 driver from linux-4.11-rc1 |  | tag [wireless], no specific rule | 3.10.0-628 |
| REVIEW | — | — | [wireless] | Backport wireless core from linux 3.16 |  | tag [wireless], no specific rule | 3.10.0-194 |
| REVIEW | — | — | [wireless] | Backport wireless core from linux-4.1-rc6 |  | tag [wireless], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [wireless] | convert to use netdev_notifier_info |  | tag [wireless], no specific rule | 3.10.0-484 |
| REVIEW | — | — | [wireless] | Correct strange error in Makefiles for building modules in separate directories |  | tag [wireless], no specific rule | 3.10.0-1105 |
| REVIEW | — | — | [wireless] | disable WiMAX support |  | tag [wireless], no specific rule | 3.10.0-10 |
| REVIEW | — | — | [wireless] | net: Add EXPORT_SYMBOL_GPL(get_net_ns_by_fd) |  | tag [wireless], no specific rule | 3.10.0-304 |
| REVIEW | — | — | [wireless] | rtw88: compile with new mac80211 |  | tag [wireless], no specific rule | 3.10.0-1093 |
| REVIEW | — | — | [wireless] | Update brcmfmac driver to compile with cfg80211 from linux-4.11-rc1 |  | tag [wireless], no specific rule | 3.10.0-628 |
| REVIEW | — | — | [wireless] | Update iwlegacy driver to compile with cfg80211 from linux-4.11-rc1 |  | tag [wireless], no specific rule | 3.10.0-628 |
| REVIEW | — | — | [wireless] | Update mwifiex driver to compile with cfg80211 from linux-4.11-rc1 |  | tag [wireless], no specific rule | 3.10.0-628 |
| REVIEW | — | — | [wireless] | Update rt2x00 driver to work with cfg80211 from linux-4.11-rc1 |  | tag [wireless], no specific rule | 3.10.0-628 |
