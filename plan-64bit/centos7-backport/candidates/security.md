# Security, keys, crypto: backport candidates from CentOS 7

899 entries: 899 CANDIDATE, 0 FEATURE-MISSING, 0 REVIEW. Sorted by status, then by the first mainline release that has the commit. "loose" means the RHEL subject only matched after normalising its prefix; check it before cherry-picking. See ../README.md for the method and its limits.

| Status | First in | Upstream | Tag | Subject | CVE | Why relevant | RHEL |
|---|---|---|---|---|---|---|---|
| CANDIDATE | 3.11 | [`d47be3dfecaf`](https://git.kernel.org/torvalds/c/d47be3dfecaf) (loose) | [security] | Add hook to calculate context based on a negative dentry |  | generic code, tag [security] | 3.10.0-6 |
| CANDIDATE | 3.11 | [`746df9b59c8a`](https://git.kernel.org/torvalds/c/746df9b59c8a) (loose) | [security] | Add Hook to test if the particular xattr is part of a MAC model |  | generic code, tag [security] | 3.10.0-6 |
| CANDIDATE | 3.11 | [`649f6e771889`](https://git.kernel.org/torvalds/c/649f6e771889) | [security] | lsm: Add flags field to security_sb_set_mnt_opts for in kernel mount data |  | generic code, tag [security] | 3.10.0-6 |
| CANDIDATE | 3.11 | [`eb9ae686507b`](https://git.kernel.org/torvalds/c/eb9ae686507b) | [security] | selinux: Add new labeling type native labels |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-6 |
| CANDIDATE | 3.11 | [`a710f761fc9a`](https://git.kernel.org/torvalds/c/a710f761fc9a) (loose) | [crypto] | sha256_ssse3 - add sha224 support |  | generic code, tag [crypto] | 3.10.0-479 |
| CANDIDATE | 3.11 | [`340991e30cce`](https://git.kernel.org/torvalds/c/340991e30cce) (loose) | [crypto] | sha512_ssse3 - add sha384 support |  | generic code, tag [crypto] | 3.10.0-479 |
| CANDIDATE | 3.12 | [`9548906b2bb7`](https://git.kernel.org/torvalds/c/9548906b2bb7) | [security] | xattr: Constify ->name member of "struct xattr" |  | generic code, tag [security] | 3.10.0-1017 |
| CANDIDATE | 3.13 | [`a20b62bdf7a1`](https://git.kernel.org/torvalds/c/a20b62bdf7a1) | [security] | audit: suppress stock memalloc failure warnings since already managed |  | CONFIG_AUDIT=y in A37 | 3.10.0-41 |
| CANDIDATE | 3.13 | [`008643b86c5f`](https://git.kernel.org/torvalds/c/008643b86c5f) | [security] | keys: Add a 'trusted' flag and a 'trusted only' flag |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`f36f8c75ae2e`](https://git.kernel.org/torvalds/c/f36f8c75ae2e) | [security] | keys: Add per-user_namespace registers for persistent per-UID kerberos caches |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`3fe78ca2fb1d`](https://git.kernel.org/torvalds/c/3fe78ca2fb1d) | [crypto] | keys: change asymmetric keys to use common hash definitions |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | 3.13 | [`16feef434017`](https://git.kernel.org/torvalds/c/16feef434017) | [security] | keys: Consolidate the concept of an 'index key' for key access |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`ccc3e6d9c9ae`](https://git.kernel.org/torvalds/c/ccc3e6d9c9ae) | [security] | keys: Define a __key_get() wrapper to use rather than atomic_inc() |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`e57e8669f2ab`](https://git.kernel.org/torvalds/c/e57e8669f2ab) | [security] | keys: Drop the permissions argument from __keyring_search_one() |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`b2a4df200d57`](https://git.kernel.org/torvalds/c/b2a4df200d57) | [security] | keys: Expand the capacity of a keyring |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`74792b0001ee`](https://git.kernel.org/torvalds/c/74792b0001ee) | [security] | keys: Fix a race between negating a key and reading the error set |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`97826c821ec6`](https://git.kernel.org/torvalds/c/97826c821ec6) | [security] | keys: Fix error handling in big_key instantiation |  | CONFIG_KEYS=y in A37 | 3.10.0-53 |
| CANDIDATE | 3.13 | [`d2b86970245b`](https://git.kernel.org/torvalds/c/d2b86970245b) | [security] | keys: fix error return code in big_key_instantiate() |  | CONFIG_KEYS=y in A37 | 3.10.0-44 |
| CANDIDATE | 3.13 | [`62fe318256be`](https://git.kernel.org/torvalds/c/62fe318256be) | [security] | keys: Fix keyring content gc scanner |  | CONFIG_KEYS=y in A37 | 3.10.0-55 |
| CANDIDATE | 3.13 | [`034faeb9ef39`](https://git.kernel.org/torvalds/c/034faeb9ef39) | [security] | keys: Fix keyring quota misaccounting on key replacement and unlink |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`23fd78d76415`](https://git.kernel.org/torvalds/c/23fd78d76415) | [security] | keys: Fix multiple key add into associative array |  | CONFIG_KEYS=y in A37 | 3.10.0-99 |
| CANDIDATE | 3.13 | [`9c5e45df215b`](https://git.kernel.org/torvalds/c/9c5e45df215b) | [security] | keys: Fix searching of nested keyrings |  | CONFIG_KEYS=y in A37 | 3.10.0-99 |
| CANDIDATE | 3.13 | [`d54e58b7f015`](https://git.kernel.org/torvalds/c/d54e58b7f015) | [security] | keys: Fix the keyring hash function |  | CONFIG_KEYS=y in A37 | 3.10.0-99 |
| CANDIDATE | 3.13 | [`fbf8c53f1a2a`](https://git.kernel.org/torvalds/c/fbf8c53f1a2a) | [security] | keys: Fix UID check in keyctl_get_persistent() |  | CONFIG_KEYS=y in A37 | 3.10.0-44 |
| CANDIDATE | 3.13 | [`6bd364d82920`](https://git.kernel.org/torvalds/c/6bd364d82920) | [security] | keys: fix uninitialized persistent_keyring_register_sem |  | CONFIG_KEYS=y in A37 | 3.10.0-66 |
| CANDIDATE | 3.13 | [`ab3c3587f8cd`](https://git.kernel.org/torvalds/c/ab3c3587f8cd) | [security] | keys: Implement a big key type that can save to tmpfs |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`c124bde28bce`](https://git.kernel.org/torvalds/c/c124bde28bce) | [security] | keys: initialize root uid and session keyrings early |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`4bdf0bc30031`](https://git.kernel.org/torvalds/c/4bdf0bc30031) | [security] | keys: Introduce a search context structure |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`7e55ca6dcd07`](https://git.kernel.org/torvalds/c/7e55ca6dcd07) | [security] | keys: key_is_dead() should take a const key pointer argument |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`2eaf6b5dcafd`](https://git.kernel.org/torvalds/c/2eaf6b5dcafd) | [security] | keys: Make BIG_KEYS boolean |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`206ce59a109f`](https://git.kernel.org/torvalds/c/206ce59a109f) | [crypto] | keys: Move the algorithm pointer array from x509 to public_key.c |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`2480f57fb302`](https://git.kernel.org/torvalds/c/2480f57fb302) | [security] | keys: Pre-clear struct key on allocation |  | CONFIG_KEYS=y in A37 | 3.10.0-66 |
| CANDIDATE | 3.13 | [`9abc4e66eb83`](https://git.kernel.org/torvalds/c/9abc4e66eb83) | [crypto] | keys: Rename public key parameter name arrays |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`d0a059cac652`](https://git.kernel.org/torvalds/c/d0a059cac652) | [security] | keys: Search for auth-key by name rather than target key ID |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`cd0421dcd023`](https://git.kernel.org/torvalds/c/cd0421dcd023) | [crypto] | keys: Set the asymmetric-key type default search method |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`61ea0c0ba904`](https://git.kernel.org/torvalds/c/61ea0c0ba904) | [security] | keys: Skip key state checks when checking for possession |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`3d167d68e380`](https://git.kernel.org/torvalds/c/3d167d68e380) | [crypto] | keys: Split public_key_verify_signature() and make available |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`67f7d60b3a08`](https://git.kernel.org/torvalds/c/67f7d60b3a08) | [crypto] | keys: Store public key algo ID in public_key struct |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`1573801fa89d`](https://git.kernel.org/torvalds/c/1573801fa89d) | [crypto] | keys: Store public key algo ID in public_key_signature struct |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`dbed71416332`](https://git.kernel.org/torvalds/c/dbed71416332) | [crypto] | keys: The RSA public key algorithm needs to select MPILIB |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 3.13 | [`a5b4bd2874d9`](https://git.kernel.org/torvalds/c/a5b4bd2874d9) | [security] | keys: Use bool in make_key_ref() and is_key_possessed() |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`09fbc4737382`](https://git.kernel.org/torvalds/c/09fbc4737382) | [crypto] | keys: verify a certificate is signed by a 'trusted' key |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | 3.13 | [`09fbc4737382`](https://git.kernel.org/torvalds/c/09fbc4737382) | [crypto] | keys: verify a certificate is signed by a 'trusted' key |  | CONFIG_KEYS=y in A37 | 3.10.0-42 |
| CANDIDATE | 3.13 | [`ee08997fee16`](https://git.kernel.org/torvalds/c/ee08997fee16) (loose) | [crypto] | provide single place for hash algo information |  | generic code, tag [crypto] | 3.10.0-168 |
| CANDIDATE | 3.13 | [`b138004ea038`](https://git.kernel.org/torvalds/c/b138004ea038) | [security] | selinux: fix selinuxfs policy file on big endian systems |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-38 |
| CANDIDATE | 3.13 | [`a767f680e34b`](https://git.kernel.org/torvalds/c/a767f680e34b) | [security] | selinux: Increase ebitmap_node size for 64-bit configuration |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-135 |
| CANDIDATE | 3.13 | [`fee7114298cf`](https://git.kernel.org/torvalds/c/fee7114298cf) | [security] | selinux: Reduce overhead of mls_level_isvalid() function call |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-135 |
| CANDIDATE | 3.13 | [`12f348b9dcf6`](https://git.kernel.org/torvalds/c/12f348b9dcf6) | [security] | selinux: rename SE_SBLABELSUPP to SBLABEL_MNT |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-758 |
| CANDIDATE | 3.13 | [`cfca0303da0e`](https://git.kernel.org/torvalds/c/cfca0303da0e) | [security] | selinux: renumber the superblock options |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-758 |
| CANDIDATE | 3.13 | [`7d444909a25e`](https://git.kernel.org/torvalds/c/7d444909a25e) (loose) | [crypto] | sha256_ssse3 - use correct module alias for sha224 |  | generic code, tag [crypto] | 3.10.0-479 |
| CANDIDATE | 3.13 | [`e19aaa7d43be`](https://git.kernel.org/torvalds/c/e19aaa7d43be) | [crypto] | x.509: add module description and license |  | generic code, tag [crypto] | 3.10.0-42 |
| CANDIDATE | 3.13 | [`2ecdb23b8c54`](https://git.kernel.org/torvalds/c/2ecdb23b8c54) | [crypto] | x.509: Check the algorithm IDs obtained from parsing an X.509 certificate |  | generic code, tag [crypto] | 3.10.0-42 |
| CANDIDATE | 3.13 | [`b426beb6eeb0`](https://git.kernel.org/torvalds/c/b426beb6eeb0) | [crypto] | x.509: Embed public_key_signature struct and create filler function |  | generic code, tag [crypto] | 3.10.0-42 |
| CANDIDATE | 3.13 | [`17334cabc814`](https://git.kernel.org/torvalds/c/17334cabc814) | [crypto] | x.509: Handle certificates that lack an authorityKeyIdentifier field |  | generic code, tag [crypto] | 3.10.0-42 |
| CANDIDATE | 3.13 | [`57be4a784bf5`](https://git.kernel.org/torvalds/c/57be4a784bf5) | [crypto] | x.509: struct x509_certificate needs struct tm declaring |  | generic code, tag [crypto] | 3.10.0-42 |
| CANDIDATE | 3.14 | [`63b945091a07`](https://git.kernel.org/torvalds/c/63b945091a07) (loose) | [crypto] | ccp - CCP device driver and interface support |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 3.14 | [`db34cf912231`](https://git.kernel.org/torvalds/c/db34cf912231) (loose) | [crypto] | ccp - CCP device enabled/disabled changes |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 3.14 | [`d5aa80952aba`](https://git.kernel.org/torvalds/c/d5aa80952aba) (loose) | [crypto] | ccp - CCP Kconfig fixes |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 3.14 | [`81a59f000e1d`](https://git.kernel.org/torvalds/c/81a59f000e1d) (loose) | [crypto] | ccp - Change data length declarations to u64 |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 3.14 | [`b8d9a50412ec`](https://git.kernel.org/torvalds/c/b8d9a50412ec) (loose) | [crypto] | ccp - Remove redundant dev_set_drvdata |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 3.14 | [`f114766088f3`](https://git.kernel.org/torvalds/c/f114766088f3) | [crypto] | crytpo: ccp - CCP device driver build files |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 3.14 | [`d1dd206c2abf`](https://git.kernel.org/torvalds/c/d1dd206c2abf) | [crypto] | crytpo: ccp - fix coccinelle warnings |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 3.14 | [`979e0d74651b`](https://git.kernel.org/torvalds/c/979e0d74651b) | [security] | keys: Make the keyring cycle detector ignore other keyrings of the same name | CVE-2014-0102 | CONFIG_KEYS=y in A37 | 3.10.0-111 |
| CANDIDATE | 3.14 | [`9ad42a79247d`](https://git.kernel.org/torvalds/c/9ad42a79247d) | [security] | selinux: call WARN_ONCE() instead of calling audit_log_start() |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-73 |
| CANDIDATE | 3.14 | [`b5495b4217d3`](https://git.kernel.org/torvalds/c/b5495b4217d3) | [security] | selinux: security_load_policy: Silence frame-larger-than warning |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-805 |
| CANDIDATE | 3.14 | [`53f52d7aecb4`](https://git.kernel.org/torvalds/c/53f52d7aecb4) (loose) | [crypto] | tcrypt - Added speed tests for AEAD crypto alogrithms in tcrypt test suite |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 3.15 | [`0b3974eb04c4`](https://git.kernel.org/torvalds/c/0b3974eb04c4) (loose) | [security] | add flags to rename hooks |  | generic code, tag [security] | 3.10.0-220 |
| CANDIDATE | 3.15 | [`80e84c16e72a`](https://git.kernel.org/torvalds/c/80e84c16e72a) (loose) | [crypto] | ccp - Fix ccp_run_passthru_cmd dma variable assignments |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 3.15 | [`c11baa02c5d6`](https://git.kernel.org/torvalds/c/c11baa02c5d6) (loose) | [crypto] | ccp - Move HMAC calculation down to ccp ops file |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 3.15 | [`530abd89387b`](https://git.kernel.org/torvalds/c/530abd89387b) (loose) | [crypto] | ccp - Perform completion callbacks using a tasklet |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 3.15 | [`d2c2b11cfa13`](https://git.kernel.org/torvalds/c/d2c2b11cfa13) | [security] | device_cgroup: check if exception removal is allowed |  | generic code, tag [security] | 3.10.0-122 |
| CANDIDATE | 3.15 | [`d4a141c8e770`](https://git.kernel.org/torvalds/c/d4a141c8e770) (loose) | [security] | have cap_dentry_init_security return error |  | generic code, tag [security] | 3.10.0-171 |
| CANDIDATE | 3.15 | [`bca4feb0d4fe`](https://git.kernel.org/torvalds/c/bca4feb0d4fe) (loose) | [crypto] | testmgr - add aead null encryption test vectors |  | CONFIG_CRYPTO=y in A37 | 3.10.0-684 |
| CANDIDATE | 3.16 | [`5347ee8eff19`](https://git.kernel.org/torvalds/c/5347ee8eff19) (loose) | [crypto] | ccp - Use pci_enable_msix_range() instead of pci_enable_msix() |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 3.16 | [`7ded6e3d1bf5`](https://git.kernel.org/torvalds/c/7ded6e3d1bf5) (loose) | [crypto] | nx - Use RCU_INIT_POINTER(x, NULL) |  | generic code, tag [crypto] | 3.10.0-296 |
| CANDIDATE | 3.16 | [`ed1c96429a6a`](https://git.kernel.org/torvalds/c/ed1c96429a6a) | [security] | selinux: conditionally reschedule in hashtab_insert while loading selinux policy |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-300 |
| CANDIDATE | 3.16 | [`9a591f39a9d1`](https://git.kernel.org/torvalds/c/9a591f39a9d1) | [security] | selinux: conditionally reschedule in mls_convert_context while loading selinux policy |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-300 |
| CANDIDATE | 3.16 | [`5b589d44fad1`](https://git.kernel.org/torvalds/c/5b589d44fad1) | [security] | selinux: reject setexeccon() on MNT_NOSUID applications with -EACCES |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-349 |
| CANDIDATE | 3.16 | [`5208ed2ca165`](https://git.kernel.org/torvalds/c/5208ed2ca165) (loose) | [crypto] | testmgr - add aead cbc des, des3_ede tests |  | CONFIG_CRYPTO=y in A37 | 3.10.0-684 |
| CANDIDATE | 3.17 | [`7e9001f66363`](https://git.kernel.org/torvalds/c/7e9001f66363) | [security] | audit: fix dangling keywords in integrity ima message output |  | CONFIG_AUDIT=y in A37 | 3.10.0-289 |
| CANDIDATE | 3.17 | [`126ae9adc1ec`](https://git.kernel.org/torvalds/c/126ae9adc1ec) (loose) | [crypto] | ccp - Base AXI DMA cache settings on device tree |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 3.17 | [`c9f21cb63888`](https://git.kernel.org/torvalds/c/c9f21cb63888) (loose) | [crypto] | ccp - Check for CCP before registering crypto algs |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 3.17 | [`6391723293bb`](https://git.kernel.org/torvalds/c/6391723293bb) (loose) | [crypto] | ccp - Do not sign extend input data to CCP |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 3.17 | [`3d77565ba5e5`](https://git.kernel.org/torvalds/c/3d77565ba5e5) (loose) | [crypto] | ccp - Modify PCI support in prep for arm64 support |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 3.17 | [`4839ddcaba26`](https://git.kernel.org/torvalds/c/4839ddcaba26) (loose) | [crypto] | ccp - Remove "select OF" from Kconfig |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 3.17 | [`0c7774abb41b`](https://git.kernel.org/torvalds/c/0c7774abb41b) | [security] | keys: Allow special keys (eg. DNS results) to be invalidated by CAP_SYS_ADMIN |  | CONFIG_KEYS=y in A37 | 3.10.0-117 |
| CANDIDATE | 3.17 | [`002edaf76f09`](https://git.kernel.org/torvalds/c/002edaf76f09) | [security] | keys: big_key: Use key preparsing |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 3.17 | [`876c6e3e028d`](https://git.kernel.org/torvalds/c/876c6e3e028d) | [crypto] | keys: Fix public_key asymmetric key subtype name |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 3.17 | [`738c5d190f65`](https://git.kernel.org/torvalds/c/738c5d190f65) | [security] | keys: Increase root_maxkeys and root_maxbytes sizes |  | CONFIG_KEYS=y in A37 | 3.10.0-294 |
| CANDIDATE | 3.17 | [`b3426827c848`](https://git.kernel.org/torvalds/c/b3426827c848) | [crypto] | keys: make partial key id matching as a dedicated function |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | 3.17 | [`a4e3b8d79a5c`](https://git.kernel.org/torvalds/c/a4e3b8d79a5c) | [security] | keys: special dot prefixed keyring name bug fix |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | 3.17 | [`32c4741cb667`](https://git.kernel.org/torvalds/c/32c4741cb667) | [crypto] | keys: validate certificate trust only with builtin keys |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | 3.17 | [`ffb70f61bab1`](https://git.kernel.org/torvalds/c/ffb70f61bab1) | [crypto] | keys: validate certificate trust only with selected key |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | 3.17 | [`af316fc442ef`](https://git.kernel.org/torvalds/c/af316fc442ef) | [crypto] | pefile: Digest the PE binary and compare to the PKCS#7 data |  | generic code, tag [crypto] | 3.10.0-168 |
| CANDIDATE | 3.17 | [`dd7d66f21b9e`](https://git.kernel.org/torvalds/c/dd7d66f21b9e) | [crypto] | pefile: Handle pesign using the wrong OID |  | generic code, tag [crypto] | 3.10.0-168 |
| CANDIDATE | 3.17 | [`26d1164be37f`](https://git.kernel.org/torvalds/c/26d1164be37f) | [crypto] | pefile: Parse a PE binary to find a key and a signature contained therein |  | generic code, tag [crypto] | 3.10.0-168 |
| CANDIDATE | 3.17 | [`4c0b4b1d1ae0`](https://git.kernel.org/torvalds/c/4c0b4b1d1ae0) | [crypto] | pefile: Parse the "Microsoft individual code signing" data blob |  | generic code, tag [crypto] | 3.10.0-168 |
| CANDIDATE | 3.17 | [`3968280c7699`](https://git.kernel.org/torvalds/c/3968280c7699) | [crypto] | pefile: Parse the presumed PKCS#7 content of the certificate blob |  | generic code, tag [crypto] | 3.10.0-168 |
| CANDIDATE | 3.17 | [`0aa040940104`](https://git.kernel.org/torvalds/c/0aa040940104) | [crypto] | pefile: Relax the check on the length of the PKCS#7 cert |  | generic code, tag [crypto] | 3.10.0-173 |
| CANDIDATE | 3.17 | [`09dacbbda935`](https://git.kernel.org/torvalds/c/09dacbbda935) | [crypto] | pefile: Strip the wrapper off of the cert data block |  | generic code, tag [crypto] | 3.10.0-168 |
| CANDIDATE | 3.17 | [`98801c002f7e`](https://git.kernel.org/torvalds/c/98801c002f7e) | [crypto] | pefile: Validate PKCS#7 trust chain |  | generic code, tag [crypto] | 3.10.0-168 |
| CANDIDATE | 3.17 | [`26c18217330b`](https://git.kernel.org/torvalds/c/26c18217330b) | [crypto] | rsa: Don't select non-existent symbol |  | generic code, tag [crypto] | 3.10.0-794 |
| CANDIDATE | 3.17 | [`263a8df0d32e`](https://git.kernel.org/torvalds/c/263a8df0d32e) (loose) | [crypto] | tcrypt - print cra driver name in tcrypt tests output |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 3.18 | [`e7df61f4d1dd`](https://git.kernel.org/torvalds/c/e7df61f4d1dd) | [security] | audit: invalid op= values for rules |  | CONFIG_AUDIT=y in A37 | 3.10.0-289 |
| CANDIDATE | 3.18 | [`54e2c2c1a9d6`](https://git.kernel.org/torvalds/c/54e2c2c1a9d6) | [security] | keys: Reinstate EPERM for a key type name beginning with a '.' |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | 3.18 | [`0b0a84154eff`](https://git.kernel.org/torvalds/c/0b0a84154eff) | [security] | keys: request_key() should reget expired keys rather than give EKEYEXPIRED |  | CONFIG_KEYS=y in A37 | 3.10.0-616 |
| CANDIDATE | 3.18 | [`c3ce6dfa48e3`](https://git.kernel.org/torvalds/c/c3ce6dfa48e3) | [crypto] | keys: Set pr_fmt() in asymmetric key signature handling |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 3.18 | [`a0a77af14117`](https://git.kernel.org/torvalds/c/a0a77af14117) (loose) | [crypto] | llvmlinux: Add macro to remove use of VLAIS in crypto code |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 3.18 | [`37e5265437a0`](https://git.kernel.org/torvalds/c/37e5265437a0) (loose) | [crypto] | llvmlinux: Remove VLAIS from crypto/.../qat_algs.c |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 3.18 | [`7185ad2672a7`](https://git.kernel.org/torvalds/c/7185ad2672a7) (loose) | [crypto] | memzero_explicit - make sure to clear out sensitive data |  | generic code, tag [crypto] | 3.10.0-479 |
| CANDIDATE | 3.18 | [`41559420003c`](https://git.kernel.org/torvalds/c/41559420003c) | [crypto] | pkcs#7: Better handling of unsupported crypto |  | generic code, tag [crypto] | 3.10.0-794 |
| CANDIDATE | 3.18 | [`757932e6da6d`](https://git.kernel.org/torvalds/c/757932e6da6d) | [crypto] | pkcs#7: Handle PKCS#7 messages that contain no X.509 certs |  | generic code, tag [crypto] | 3.10.0-794 |
| CANDIDATE | 3.18 | [`7752759d957a`](https://git.kernel.org/torvalds/c/7752759d957a) (loose) | [crypto] | qat - Fix typo in name of tasklet_struct |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 3.18 | [`26c3af6c1580`](https://git.kernel.org/torvalds/c/26c3af6c1580) (loose) | [crypto] | qat - Removed unneeded partial state |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 3.18 | [`e173fb2646a8`](https://git.kernel.org/torvalds/c/e173fb2646a8) | [security] | selinux: cleanup error reporting in selinux_nlmsg_perm() |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-289 |
| CANDIDATE | 3.18 | [`d950f84c1c66`](https://git.kernel.org/torvalds/c/d950f84c1c66) | [security] | selinux: convert WARN_ONCE() to printk() in selinux_nlmsg_perm() |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-289 |
| CANDIDATE | 3.18 | [`a7a91a1928fe`](https://git.kernel.org/torvalds/c/a7a91a1928fe) | [security] | selinux: fix a problem with IPv6 traffic denials in selinux_ip_postroute() |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-165 |
| CANDIDATE | 3.18 | [`4093a8443941`](https://git.kernel.org/torvalds/c/4093a8443941) | [security] | selinux: normalize audit log formatting |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-289 |
| CANDIDATE | 3.18 | [`7b0d0b40cd78`](https://git.kernel.org/torvalds/c/7b0d0b40cd78) | [security] | selinux: Permit bounded transitions under NO_NEW_PRIVS or NOSUID |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-349 |
| CANDIDATE | 3.18 | [`d4c85f9bb53f`](https://git.kernel.org/torvalds/c/d4c85f9bb53f) (loose) | [crypto] | testmgr - remove unused function argument |  | CONFIG_CRYPTO=y in A37 | 3.10.0-414 |
| CANDIDATE | 3.18 | [`1a84db567aee`](https://git.kernel.org/torvalds/c/1a84db567aee) | [crypto] | treewide: fix errors in printk |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 3.19 | [`e1bd95bf7c25`](https://git.kernel.org/torvalds/c/e1bd95bf7c25) (loose) | [crypto] | algif - zeroize IV buffer |  | generic code, tag [crypto] | 3.10.0-875 |
| CANDIDATE | 3.19 | [`2a6af25befd0`](https://git.kernel.org/torvalds/c/2a6af25befd0) (loose) | [crypto] | algif - zeroize message digest buffer |  | generic code, tag [crypto] | 3.10.0-875 |
| CANDIDATE | 3.19 | [`f26b7b8052da`](https://git.kernel.org/torvalds/c/f26b7b8052da) (loose) | [crypto] | algif_skcipher - initialize upon init request |  | generic code, tag [crypto] | 3.10.0-684 |
| CANDIDATE | 3.19 | [`000851119e80`](https://git.kernel.org/torvalds/c/000851119e80) (loose) | [crypto] | nx - Fix SHA concurrence issue and sg limit bounds |  | generic code, tag [crypto] | 3.10.0-300 |
| CANDIDATE | 3.19 | [`f129430dd87d`](https://git.kernel.org/torvalds/c/f129430dd87d) (loose) | [crypto] | nx - Fixing the limit number of bytes to be processed |  | generic code, tag [crypto] | 3.10.0-300 |
| CANDIDATE | 3.19 | [`01a5aa08ef38`](https://git.kernel.org/torvalds/c/01a5aa08ef38) (loose) | [crypto] | nx - Moving limit and bound logic in CTR and fix IV vector |  | generic code, tag [crypto] | 3.10.0-300 |
| CANDIDATE | 3.19 | [`ac0f0a8a8764`](https://git.kernel.org/torvalds/c/ac0f0a8a8764) (loose) | [crypto] | nx - Moving NX-AES-CBC to be processed logic |  | generic code, tag [crypto] | 3.10.0-300 |
| CANDIDATE | 3.19 | [`9247f0b05572`](https://git.kernel.org/torvalds/c/9247f0b05572) (loose) | [crypto] | nx - Moving NX-AES-CCM to be processed logic and sg_list bounds |  | generic code, tag [crypto] | 3.10.0-300 |
| CANDIDATE | 3.19 | [`c7b675de3900`](https://git.kernel.org/torvalds/c/c7b675de3900) (loose) | [crypto] | nx - Moving NX-AES-ECB to be processed logic |  | generic code, tag [crypto] | 3.10.0-300 |
| CANDIDATE | 3.19 | [`e13a79acf9a4`](https://git.kernel.org/torvalds/c/e13a79acf9a4) (loose) | [crypto] | nx - Moving NX-AES-GCM to be processed logic |  | generic code, tag [crypto] | 3.10.0-300 |
| CANDIDATE | 3.19 | [`5313231ac9a4`](https://git.kernel.org/torvalds/c/5313231ac9a4) (loose) | [crypto] | nx - Moving NX-AES-XCBC to be processed logic |  | generic code, tag [crypto] | 3.10.0-300 |
| CANDIDATE | 3.19 | [`fdb4c0ad3e6c`](https://git.kernel.org/torvalds/c/fdb4c0ad3e6c) (loose) | [crypto] | qat - cleanup coccicheck warning - NULL check before freeing functions |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 3.19 | [`242b1598e6db`](https://git.kernel.org/torvalds/c/242b1598e6db) (loose) | [crypto] | qat - cleanup unnecessary break checkpatch warning |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 3.19 | [`8c4cef464b90`](https://git.kernel.org/torvalds/c/8c4cef464b90) (loose) | [crypto] | qat - fix bad unlock balance |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 3.19 | [`bc84b94a715f`](https://git.kernel.org/torvalds/c/bc84b94a715f) (loose) | [crypto] | qat - fix problem with coalescing enable logic |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 3.19 | [`77ddaba02bb8`](https://git.kernel.org/torvalds/c/77ddaba02bb8) (loose) | [crypto] | qat - misspelling typo - "reseting" should be "resetting" |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 3.19 | [`a727c4b6e523`](https://git.kernel.org/torvalds/c/a727c4b6e523) (loose) | [crypto] | qat - Move BAR definitions to device specific module |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 3.19 | [`aa408d601977`](https://git.kernel.org/torvalds/c/aa408d601977) (loose) | [crypto] | qat - Use memzero_explicit |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 3.19 | [`a6326ba025a4`](https://git.kernel.org/torvalds/c/a6326ba025a4) (loose) | [crypto] | sha - replace memset by memzero_explicit |  | generic code, tag [crypto] | 3.10.0-479 |
| CANDIDATE | 4.0 | [`ad202c8c1563`](https://git.kernel.org/torvalds/c/ad202c8c1563) (loose) | [crypto] | af_alg - zeroize key data |  | generic code, tag [crypto] | 3.10.0-684 |
| CANDIDATE | 4.0 | [`5afdfd22e6ba`](https://git.kernel.org/torvalds/c/5afdfd22e6ba) (loose) | [crypto] | algif_rng - add random number generator support |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.0 | [`2f3755381da8`](https://git.kernel.org/torvalds/c/2f3755381da8) (loose) | [crypto] | algif_rng - enable RNG interface compilation |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.0 | [`598de3695201`](https://git.kernel.org/torvalds/c/598de3695201) (loose) | [crypto] | algif_rng - fix sparse non static symbol warning |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.0 | [`490f702286bc`](https://git.kernel.org/torvalds/c/490f702286bc) (loose) | [crypto] | ccp - terminate ccp_support array with empty element |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.0 | [`338e84f3a974`](https://git.kernel.org/torvalds/c/338e84f3a974) (loose) | [crypto] | qat - add support for cbc(aes) ablkcipher |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.0 | [`fd98d692bb2b`](https://git.kernel.org/torvalds/c/fd98d692bb2b) (loose) | [crypto] | qat - adf_ae_stop() is never called |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.0 | [`53bc0251b111`](https://git.kernel.org/torvalds/c/53bc0251b111) (loose) | [crypto] | qat - correctly type a boolean |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.0 | [`b2c3f7cdad76`](https://git.kernel.org/torvalds/c/b2c3f7cdad76) (loose) | [crypto] | qat - don't need qat_auth_state struct |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.0 | [`48eb3691e8be`](https://git.kernel.org/torvalds/c/48eb3691e8be) (loose) | [crypto] | qat - Ensure ipad and opad are zeroed |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.0 | [`82f82504b8f5`](https://git.kernel.org/torvalds/c/82f82504b8f5) (loose) | [crypto] | qat - Fix assumption that sg in and out will have the same nents |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.0 | [`22e4dda06dd0`](https://git.kernel.org/torvalds/c/22e4dda06dd0) (loose) | [crypto] | qat - fix device reset flow |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.0 | [`ad511e260a27`](https://git.kernel.org/torvalds/c/ad511e260a27) (loose) | [crypto] | qat - Fix incorrect uses of memzero_explicit |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.0 | [`6a24efda80f9`](https://git.kernel.org/torvalds/c/6a24efda80f9) (loose) | [crypto] | qat - remove unnecessary include of atomic.h header file |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.0 | [`a6bcc1e44342`](https://git.kernel.org/torvalds/c/a6bcc1e44342) (loose) | [crypto] | qat - use pci_wait_for_pending_transaction() |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.0 | [`2088d60e3b2f`](https://git.kernel.org/torvalds/c/2088d60e3b2f) | [security] | selinux: quiet the filesystem labeling behavior message |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-372 |
| CANDIDATE | 4.0 | [`ad52184b705c`](https://git.kernel.org/torvalds/c/ad52184b705c) | [security] | selinuxfs: don't open-code d_genocide() |  | generic code, tag [security] | 3.10.0-1115 |
| CANDIDATE | 4.0 | [`8a45ac12ec5b`](https://git.kernel.org/torvalds/c/8a45ac12ec5b) (loose) | [crypto] | testmgr - don't use interruptible wait in tests |  | CONFIG_CRYPTO=y in A37 | 3.10.0-684 |
| CANDIDATE | 4.0 | [`424a5da69190`](https://git.kernel.org/torvalds/c/424a5da69190) (loose) | [crypto] | testmgr - limit IV copy length in aead tests |  | CONFIG_CRYPTO=y in A37 | 3.10.0-453 |
| CANDIDATE | 4.1 | [`2ef4d5c43de9`](https://git.kernel.org/torvalds/c/2ef4d5c43de9) (loose) | [crypto] | algif_rng - zeroize buffer with random data |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.1 | [`87b1675634e1`](https://git.kernel.org/torvalds/c/87b1675634e1) (loose) | [crypto] | api - Change crypto_unregister_instance argument type |  | generic code, tag [crypto] | 3.10.0-684 |
| CANDIDATE | 4.1 | [`1f7237109951`](https://git.kernel.org/torvalds/c/1f7237109951) (loose) | [crypto] | api - Fix races in crypto_unregister_instance |  | generic code, tag [crypto] | 3.10.0-684 |
| CANDIDATE | 4.1 | [`e9b8e5beb7be`](https://git.kernel.org/torvalds/c/e9b8e5beb7be) (loose) | [crypto] | api - Move alg ref count init to crypto_check_alg |  | generic code, tag [crypto] | 3.10.0-694 |
| CANDIDATE | 4.1 | [`9c521a200bc3`](https://git.kernel.org/torvalds/c/9c521a200bc3) (loose) | [crypto] | api - remove instance when test failed |  | generic code, tag [crypto] | 3.10.0-684 |
| CANDIDATE | 4.1 | [`be03a3a0961e`](https://git.kernel.org/torvalds/c/be03a3a0961e) (loose) | [crypto] | ccp - Convert calls to their devm_ counterparts |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.1 | [`a5bd093af0d1`](https://git.kernel.org/torvalds/c/a5bd093af0d1) (loose) | [crypto] | ccp - Update CCP build support |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.1 | [`8db884675476`](https://git.kernel.org/torvalds/c/8db884675476) (loose) | [crypto] | ccp - Updates for checkpatch warnings/errors |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.1 | [`466a7b9e3e78`](https://git.kernel.org/torvalds/c/466a7b9e3e78) (loose) | [crypto] | cryptd - process CRYPTO_ALG_INTERNAL |  | generic code, tag [crypto] | 3.10.0-684 |
| CANDIDATE | 4.1 | [`34c9a0ffc75a`](https://git.kernel.org/torvalds/c/34c9a0ffc75a) (loose) | [crypto] | fix broken crypto_register_instance() module handling |  | generic code, tag [crypto] | 3.10.0-684 |
| CANDIDATE | 4.1 | [`f52bbf55d195`](https://git.kernel.org/torvalds/c/f52bbf55d195) (loose) | [crypto] | mcryptd - process CRYPTO_ALG_INTERNAL | CVE-2016-10147 | generic code, tag [crypto] | 3.10.0-589 |
| CANDIDATE | 4.1 | [`b21582dfd586`](https://git.kernel.org/torvalds/c/b21582dfd586) (loose) | [crypto] | qat - checkpatch PARENTHESIS_ALIGNMENT and LOGICAL_CONTINUATIONS |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.1 | [`af6f2a7bb56c`](https://git.kernel.org/torvalds/c/af6f2a7bb56c) (loose) | [crypto] | qat - fix checkpatch BIT_MACRO issues |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.1 | [`304989fe59eb`](https://git.kernel.org/torvalds/c/304989fe59eb) (loose) | [crypto] | qat - fix checkpatch CHECK_SPACING issues |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.1 | [`64a31be39b8c`](https://git.kernel.org/torvalds/c/64a31be39b8c) (loose) | [crypto] | qat - fix checkpatch CODE_INDENT issue |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.1 | [`724c76ce30ae`](https://git.kernel.org/torvalds/c/724c76ce30ae) (loose) | [crypto] | qat - fix checkpatch COMPARISON_TO_NULL issue |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.1 | [`f7b3c2d34f9e`](https://git.kernel.org/torvalds/c/f7b3c2d34f9e) (loose) | [crypto] | qat - fix checkpatch CONCATENATED_STRING issues |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.1 | [`b4e97050248d`](https://git.kernel.org/torvalds/c/b4e97050248d) (loose) | [crypto] | qat - fix double release_firmware on error path |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.1 | [`754a90d3f389`](https://git.kernel.org/torvalds/c/754a90d3f389) (loose) | [crypto] | qat - fix typo |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.1 | [`92dd5be55996`](https://git.kernel.org/torvalds/c/92dd5be55996) (loose) | [crypto] | qat - fix typo in string |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.1 | [`665503049bad`](https://git.kernel.org/torvalds/c/665503049bad) (loose) | [crypto] | qat - make error and info log messages more descriptive |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.1 | [`8b5cf097c3b0`](https://git.kernel.org/torvalds/c/8b5cf097c3b0) (loose) | [crypto] | qat - print ring name in debug output |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.1 | [`a00204f8e51b`](https://git.kernel.org/torvalds/c/a00204f8e51b) (loose) | [crypto] | qat - remove duplicate definition of Intel PCI vendor id |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.1 | [`83ce01d24a19`](https://git.kernel.org/torvalds/c/83ce01d24a19) (loose) | [crypto] | qat - remove incorrect __exit markup |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.1 | [`cf890138087a`](https://git.kernel.org/torvalds/c/cf890138087a) | [security] | selinux/nlmsg: add a build time check for rtnl/xfrm cmds |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-252 |
| CANDIDATE | 4.1 | [`5bdfbc1f19d0`](https://git.kernel.org/torvalds/c/5bdfbc1f19d0) | [security] | selinux/nlmsg: add RTM_NEWNSID and RTM_GETNSID |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-260 |
| CANDIDATE | 4.1 | [`555fa17b2b8c`](https://git.kernel.org/torvalds/c/555fa17b2b8c) (loose) | [crypto] | sha-mb - mark Multi buffer SHA1 helper cipher |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.1 | [`c4d5b9ffa31f`](https://git.kernel.org/torvalds/c/c4d5b9ffa31f) (loose) | [crypto] | sha1 - implement base layer for SHA-1 |  | generic code, tag [crypto] | 3.10.0-479 |
| CANDIDATE | 4.1 | [`7c71f0f760d6`](https://git.kernel.org/torvalds/c/7c71f0f760d6) (loose) | [crypto] | sha1-generic - move to generic glue implementation |  | generic code, tag [crypto] | 3.10.0-479 |
| CANDIDATE | 4.1 | [`11b8d5ef9138`](https://git.kernel.org/torvalds/c/11b8d5ef9138) (loose) | [crypto] | sha256 - implement base layer for SHA-256 |  | generic code, tag [crypto] | 3.10.0-479 |
| CANDIDATE | 4.1 | [`a2e5ba4fedd6`](https://git.kernel.org/torvalds/c/a2e5ba4fedd6) (loose) | [crypto] | sha256-generic - move to generic glue implementation |  | generic code, tag [crypto] | 3.10.0-479 |
| CANDIDATE | 4.1 | [`b84a2a0b4ec2`](https://git.kernel.org/torvalds/c/b84a2a0b4ec2) (loose) | [crypto] | sha512 - implement base layer for SHA-512 |  | generic code, tag [crypto] | 3.10.0-479 |
| CANDIDATE | 4.1 | [`ca142584bc8e`](https://git.kernel.org/torvalds/c/ca142584bc8e) (loose) | [crypto] | sha512-generic - move to generic glue implementation |  | generic code, tag [crypto] | 3.10.0-479 |
| CANDIDATE | 4.1 | [`425a882991d9`](https://git.kernel.org/torvalds/c/425a882991d9) (loose) | [crypto] | testmgr - use CRYPTO_ALG_INTERNAL |  | CONFIG_CRYPTO=y in A37 | 3.10.0-684 |
| CANDIDATE | 4.1 | [`5c380d623ed3`](https://git.kernel.org/torvalds/c/5c380d623ed3) (loose) | [crypto] | vmx - Add support for VMS instructions by ASM |  | generic code, tag [crypto] | 3.10.0-459 |
| CANDIDATE | 4.1 | [`8676590a1593`](https://git.kernel.org/torvalds/c/8676590a1593) (loose) | [crypto] | vmx - Adding AES routines for VMX module |  | generic code, tag [crypto] | 3.10.0-459 |
| CANDIDATE | 4.1 | [`8c755ace357c`](https://git.kernel.org/torvalds/c/8c755ace357c) (loose) | [crypto] | vmx - Adding CBC routines for VMX module |  | generic code, tag [crypto] | 3.10.0-459 |
| CANDIDATE | 4.1 | [`4f7f60d312b3`](https://git.kernel.org/torvalds/c/4f7f60d312b3) (loose) | [crypto] | vmx - Adding CTR routines for VMX module |  | generic code, tag [crypto] | 3.10.0-459 |
| CANDIDATE | 4.1 | [`cc333cd68dfa`](https://git.kernel.org/torvalds/c/cc333cd68dfa) (loose) | [crypto] | vmx - Adding GHASH routines for VMX module |  | generic code, tag [crypto] | 3.10.0-459 |
| CANDIDATE | 4.1 | [`20a26faa7e62`](https://git.kernel.org/torvalds/c/20a26faa7e62) (loose) | [crypto] | vmx - Adding VMX module for Power 8 |  | generic code, tag [crypto] | 3.10.0-459 |
| CANDIDATE | 4.1 | [`d2e3ae6f3aba`](https://git.kernel.org/torvalds/c/d2e3ae6f3aba) (loose) | [crypto] | vmx - Enabling VMX module for PPC64 |  | generic code, tag [crypto] | 3.10.0-459 |
| CANDIDATE | 4.2 | [`2062c5b6da75`](https://git.kernel.org/torvalds/c/2062c5b6da75) (loose) | [crypto] | 842 - change 842 alg to use software |  | generic code, tag [crypto] | 3.10.0-296 |
| CANDIDATE | 4.2 | [`38d21433112c`](https://git.kernel.org/torvalds/c/38d21433112c) (loose) | [crypto] | api - Add crypto_alg_extsize helper |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.2 | [`fb43f69401fe`](https://git.kernel.org/torvalds/c/fb43f69401fe) (loose) | [crypto] | ccp - Protect against poorly marked end of sg list |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.2 | [`d725332208ef`](https://git.kernel.org/torvalds/c/d725332208ef) (loose) | [crypto] | ccp - Remove unused structure field |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.2 | [`fbb145bc0a1c`](https://git.kernel.org/torvalds/c/fbb145bc0a1c) (loose) | [crypto] | drbg - use pragmas for disabling optimization |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.2 | [`596103cf8fb0`](https://git.kernel.org/torvalds/c/596103cf8fb0) (loose) | [crypto] | drivers - Fix Kconfig selects |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.2 | [`596103cf8fb0`](https://git.kernel.org/torvalds/c/596103cf8fb0) (loose) | [crypto] | drivers - Fix Kconfig selects |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.2 | [`bb5530e40824`](https://git.kernel.org/torvalds/c/bb5530e40824) (loose) | [crypto] | jitterentropy - add jitterentropy RNG |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.2 | [`dfc9fa91938b`](https://git.kernel.org/torvalds/c/dfc9fa91938b) (loose) | [crypto] | jitterentropy - avoid compiler warnings |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.2 | [`cea0a3c305fa`](https://git.kernel.org/torvalds/c/cea0a3c305fa) (loose) | [crypto] | jitterentropy - Delete unnecessary checks before the function call "kzfree" |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.2 | [`cf58fcb1bea9`](https://git.kernel.org/torvalds/c/cf58fcb1bea9) (loose) | [crypto] | jitterentropy - remove timekeeping_valid_for_hres |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.2 | [`ca4da5dd1f99`](https://git.kernel.org/torvalds/c/ca4da5dd1f99) | [security] | keys: Ensure we free the assoc array edit if edit is valid | CVE-2015-1333 | CONFIG_KEYS=y in A37 | 3.10.0-304 |
| CANDIDATE | 4.2 | [`ed70b479c2c0`](https://git.kernel.org/torvalds/c/ed70b479c2c0) (loose) | [crypto] | nx - add hardware 842 crypto comp alg |  | generic code, tag [crypto] | 3.10.0-296 |
| CANDIDATE | 4.2 | [`c47d63020c03`](https://git.kernel.org/torvalds/c/c47d63020c03) (loose) | [crypto] | nx - add LE support to pSeries platform driver |  | generic code, tag [crypto] | 3.10.0-318 |
| CANDIDATE | 4.2 | [`7011a122383e`](https://git.kernel.org/torvalds/c/7011a122383e) (loose) | [crypto] | nx - add NX-842 platform frontend driver |  | generic code, tag [crypto] | 3.10.0-296 |
| CANDIDATE | 4.2 | [`959e6659b6f7`](https://git.kernel.org/torvalds/c/959e6659b6f7) (loose) | [crypto] | nx - add nx842 constraints |  | generic code, tag [crypto] | 3.10.0-296 |
| CANDIDATE | 4.2 | [`99182a42b7ef`](https://git.kernel.org/torvalds/c/99182a42b7ef) (loose) | [crypto] | nx - add PowerNV platform NX-842 driver |  | generic code, tag [crypto] | 3.10.0-296 |
| CANDIDATE | 4.2 | [`8000112cedb8`](https://git.kernel.org/torvalds/c/8000112cedb8) (loose) | [crypto] | nx - Check for bogus firmware properties |  | generic code, tag [crypto] | 3.10.0-300 |
| CANDIDATE | 4.2 | [`3154de71258a`](https://git.kernel.org/torvalds/c/3154de71258a) (loose) | [crypto] | nx - fix nx-842 pSeries driver minimum buffer size |  | generic code, tag [crypto] | 3.10.0-296 |
| CANDIDATE | 4.2 | [`030f4e968741`](https://git.kernel.org/torvalds/c/030f4e968741) (loose) | [crypto] | nx - Fix reentrancy bugs |  | generic code, tag [crypto] | 3.10.0-305 |
| CANDIDATE | 4.2 | [`c3365ce130e5`](https://git.kernel.org/torvalds/c/c3365ce130e5) (loose) | [crypto] | nx - Fixing NX data alignment with nx_sg list |  | generic code, tag [crypto] | 3.10.0-305 |
| CANDIDATE | 4.2 | [`10d87b730e1d`](https://git.kernel.org/torvalds/c/10d87b730e1d) (loose) | [crypto] | nx - Fixing SHA update bug |  | generic code, tag [crypto] | 3.10.0-305 |
| CANDIDATE | 4.2 | [`32be6d3e362b`](https://git.kernel.org/torvalds/c/32be6d3e362b) (loose) | [crypto] | nx - move include/linux/nx842.h into drivers/crypto/nx/nx-842.h |  | generic code, tag [crypto] | 3.10.0-296 |
| CANDIDATE | 4.2 | [`3e648cbeb31b`](https://git.kernel.org/torvalds/c/3e648cbeb31b) (loose) | [crypto] | nx - prevent nx 842 load if no hw driver |  | generic code, tag [crypto] | 3.10.0-296 |
| CANDIDATE | 4.2 | [`9358eac06b8f`](https://git.kernel.org/torvalds/c/9358eac06b8f) (loose) | [crypto] | nx - remove 842-nx null checks |  | generic code, tag [crypto] | 3.10.0-296 |
| CANDIDATE | 4.2 | [`fdd05e4b9ae2`](https://git.kernel.org/torvalds/c/fdd05e4b9ae2) (loose) | [crypto] | nx - rename nx-842.c to nx-842-pseries.c |  | generic code, tag [crypto] | 3.10.0-296 |
| CANDIDATE | 4.2 | [`2c6f6eabc0bf`](https://git.kernel.org/torvalds/c/2c6f6eabc0bf) (loose) | [crypto] | nx - replace NX842_MEM_COMPRESS with function |  | generic code, tag [crypto] | 3.10.0-296 |
| CANDIDATE | 4.2 | [`d3392f41f6d3`](https://git.kernel.org/torvalds/c/d3392f41f6d3) (loose) | [crypto] | nx - respect sg limit bounds when building sg lists for SHA |  | generic code, tag [crypto] | 3.10.0-305 |
| CANDIDATE | 4.2 | [`b8e04187c901`](https://git.kernel.org/torvalds/c/b8e04187c901) (loose) | [crypto] | nx - simplify pSeries nx842 driver |  | generic code, tag [crypto] | 3.10.0-296 |
| CANDIDATE | 4.2 | [`551d7ed2fdee`](https://git.kernel.org/torvalds/c/551d7ed2fdee) (loose) | [crypto] | qat - add driver version |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.2 | [`12a4bd312274`](https://git.kernel.org/torvalds/c/12a4bd312274) (loose) | [crypto] | qat - Deletion of unnecessary checks before two function calls |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.2 | [`dcd93e8303cb`](https://git.kernel.org/torvalds/c/dcd93e8303cb) (loose) | [crypto] | qat - do not duplicate string containing firmware name |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | 4.2 | [`6f043b50da8e`](https://git.kernel.org/torvalds/c/6f043b50da8e) (loose) | [crypto] | qat - Fix invalid synchronization between register/unregister sym algs |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.2 | [`0ed6264b60fc`](https://git.kernel.org/torvalds/c/0ed6264b60fc) (loose) | [crypto] | qat - Include internal/aead.h |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.2 | [`733a82e24e7a`](https://git.kernel.org/torvalds/c/733a82e24e7a) (loose) | [crypto] | qat - remove unused structure members |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.2 | [`3848d3478669`](https://git.kernel.org/torvalds/c/3848d3478669) (loose) | [crypto] | qat - rm unneeded header include |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.2 | [`e4fa1460b35e`](https://git.kernel.org/torvalds/c/e4fa1460b35e) (loose) | [crypto] | qat - Set max request size |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.2 | [`97cacb9f7a1e`](https://git.kernel.org/torvalds/c/97cacb9f7a1e) (loose) | [crypto] | qat - Use crypto_aead_set_reqsize helper |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.2 | [`ecb479d07a4e`](https://git.kernel.org/torvalds/c/ecb479d07a4e) (loose) | [crypto] | qat: fix issue when mapping assoc to internal AD struct |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.2 | [`b617b702da4e`](https://git.kernel.org/torvalds/c/b617b702da4e) (loose) | [crypto] | rng - Zero seed in crypto_rng_reset |  | generic code, tag [crypto] | 3.10.0-684 |
| CANDIDATE | 4.2 | [`44a17ef872fa`](https://git.kernel.org/torvalds/c/44a17ef872fa) (loose) | [crypto] | rsa - add .gitignore for crypto/*.-asn1.[ch] files |  | generic code, tag [crypto] | 3.10.0-573 |
| CANDIDATE | 4.2 | [`fc42bcba97ba`](https://git.kernel.org/torvalds/c/fc42bcba97ba) (loose) | [crypto] | scatterwalk - Add scatterwalk_ffwd helper |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.2 | [`5f76eea88dcb`](https://git.kernel.org/torvalds/c/5f76eea88dcb) | [crypto] | sched/preempt, powerpc: Disable preemption in enable_kernel_altivec() explicitly |  | generic code, tag [crypto] | 3.10.0-459 |
| CANDIDATE | 4.2 | [`332460352492`](https://git.kernel.org/torvalds/c/332460352492) | [security] | selinux: don't waste ebitmap space when importing NetLabel categories |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-351 |
| CANDIDATE | 4.2 | [`892e8cac99a7`](https://git.kernel.org/torvalds/c/892e8cac99a7) | [security] | selinux: fix mprotect PROT_EXEC regression caused by mm change |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-972 |
| CANDIDATE | 4.2 | [`ebb3472f5cc9`](https://git.kernel.org/torvalds/c/ebb3472f5cc9) (loose) | [crypto] | testmgr - add test cases for CRC32 |  | CONFIG_CRYPTO=y in A37 | 3.10.0-797 |
| CANDIDATE | 4.2 | [`946cc46372dc`](https://git.kernel.org/torvalds/c/946cc46372dc) (loose) | [crypto] | testmgr - add tests vectors for RSA |  | CONFIG_CRYPTO=y in A37 | 3.10.0-414 |
| CANDIDATE | 4.2 | [`42cb0c7bdf9d`](https://git.kernel.org/torvalds/c/42cb0c7bdf9d) (loose) | [crypto] | vmx - fix two mistyped texts |  | generic code, tag [crypto] | 3.10.0-459 |
| CANDIDATE | 4.2 | [`4beb10604597`](https://git.kernel.org/torvalds/c/4beb10604597) (loose) | [crypto] | vmx - Reindent to kernel style |  | generic code, tag [crypto] | 3.10.0-459 |
| CANDIDATE | 4.2 | [`0903e435ba45`](https://git.kernel.org/torvalds/c/0903e435ba45) (loose) | [crypto] | vmx - Remove duplicate PPC64 dependency |  | generic code, tag [crypto] | 3.10.0-459 |
| CANDIDATE | 4.3 | [`8d9b21dcfe68`](https://git.kernel.org/torvalds/c/8d9b21dcfe68) | [modsign] | asn.1: Fix handling of CHOICE in ASN.1 compiler |  | generic code, tag [modsign] | 3.10.0-348 |
| CANDIDATE | 4.3 | [`233ce79db4b2`](https://git.kernel.org/torvalds/c/233ce79db4b2) | [modsign] | asn.1: Handle 'ANY OPTIONAL' in grammar |  | generic code, tag [modsign] | 3.10.0-348 |
| CANDIDATE | 4.3 | [`746bf6d64275`](https://git.kernel.org/torvalds/c/746bf6d64275) | [security] | capabilities: add a securebit to disable PR_CAP_AMBIENT_RAISE |  | generic code, tag [security] | 3.10.0-408 |
| CANDIDATE | 4.3 | [`8f183751a860`](https://git.kernel.org/torvalds/c/8f183751a860) (loose) | [crypto] | cmac - allow usage in FIPS mode |  | generic code, tag [crypto] | 3.10.0-684 |
| CANDIDATE | 4.3 | [`d0cce062217f`](https://git.kernel.org/torvalds/c/d0cce062217f) | [crypto] | drivers/crypto/qat: use seq_hex_dump() to dump buffers |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`0c5f0aa5dd92`](https://git.kernel.org/torvalds/c/0c5f0aa5dd92) (loose) | [crypto] | jitterentropy - use safe format string parameters |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.3 | [`911b79cde95c`](https://git.kernel.org/torvalds/c/911b79cde95c) | [security] | keys: Don't permit request_key() to construct a new keyring | CVE-2015-7872 | CONFIG_KEYS=y in A37 | 3.10.0-332 |
| CANDIDATE | 4.3 | [`7abd75bf7ac6`](https://git.kernel.org/torvalds/c/7abd75bf7ac6) (loose) | [crypto] | nx - do not emit extra output if status is disabled |  | generic code, tag [crypto] | 3.10.0-305 |
| CANDIDATE | 4.3 | [`ee781b7ff3d8`](https://git.kernel.org/torvalds/c/ee781b7ff3d8) (loose) | [crypto] | nx - don't register pSeries driver if ENODEV |  | generic code, tag [crypto] | 3.10.0-305 |
| CANDIDATE | 4.3 | [`03952d980153`](https://git.kernel.org/torvalds/c/03952d980153) (loose) | [crypto] | nx - make platform drivers directly register with crypto |  | generic code, tag [crypto] | 3.10.0-305 |
| CANDIDATE | 4.3 | [`d31581a6e31f`](https://git.kernel.org/torvalds/c/d31581a6e31f) (loose) | [crypto] | nx - merge nx-compress and nx-compress-crypto |  | generic code, tag [crypto] | 3.10.0-305 |
| CANDIDATE | 4.3 | [`7f6e3aad5ab3`](https://git.kernel.org/torvalds/c/7f6e3aad5ab3) (loose) | [crypto] | nx - move kzalloc() out of spinlock |  | generic code, tag [crypto] | 3.10.0-305 |
| CANDIDATE | 4.3 | [`fa9a9a084a21`](https://git.kernel.org/torvalds/c/fa9a9a084a21) (loose) | [crypto] | nx - nx842_OF_upd_status should return ENODEV if device is not 'okay' |  | generic code, tag [crypto] | 3.10.0-305 |
| CANDIDATE | 4.3 | [`2b93f7ee0836`](https://git.kernel.org/torvalds/c/2b93f7ee0836) (loose) | [crypto] | nx - reduce chattiness of platform drivers |  | generic code, tag [crypto] | 3.10.0-305 |
| CANDIDATE | 4.3 | [`039af9675fd9`](https://git.kernel.org/torvalds/c/039af9675fd9) (loose) | [crypto] | nx - remove __init/__exit from VIO functions |  | generic code, tag [crypto] | 3.10.0-305 |
| CANDIDATE | 4.3 | [`90fd73f912f0`](https://git.kernel.org/torvalds/c/90fd73f912f0) (loose) | [crypto] | nx - remove pSeries NX 'status' field |  | generic code, tag [crypto] | 3.10.0-305 |
| CANDIDATE | 4.3 | [`9cfaf082b877`](https://git.kernel.org/torvalds/c/9cfaf082b877) (loose) | [crypto] | nx - Removing CTR mode from NX driver |  | generic code, tag [crypto] | 3.10.0-311 |
| CANDIDATE | 4.3 | [`174d66d47258`](https://git.kernel.org/torvalds/c/174d66d47258) (loose) | [crypto] | nx - rename nx-842-crypto.c to nx-842.c |  | generic code, tag [crypto] | 3.10.0-305 |
| CANDIDATE | 4.3 | [`ec13bcbe07a2`](https://git.kernel.org/torvalds/c/ec13bcbe07a2) (loose) | [crypto] | nx - rename nx842_{init, exit} to nx842_pseries_{init, exit} |  | generic code, tag [crypto] | 3.10.0-305 |
| CANDIDATE | 4.3 | [`20fc311fc0e1`](https://git.kernel.org/torvalds/c/20fc311fc0e1) (loose) | [crypto] | nx - use common code for both NX decompress success cases |  | generic code, tag [crypto] | 3.10.0-305 |
| CANDIDATE | 4.3 | [`23ad69aafec5`](https://git.kernel.org/torvalds/c/23ad69aafec5) (loose) | [crypto] | nx/842 - Fix context corruption |  | generic code, tag [crypto] | 3.10.0-305 |
| CANDIDATE | 4.3 | [`fd19a3d195be`](https://git.kernel.org/torvalds/c/fd19a3d195be) | [crypto] | pkcs#7: Improve and export the X.509 ASN.1 time object decoder |  | generic code, tag [crypto] | 3.10.0-794 |
| CANDIDATE | 4.3 | [`89c07b8a18a2`](https://git.kernel.org/torvalds/c/89c07b8a18a2) (loose) | [crypto] | qat - Add FW const table |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`28cfaf67e5c1`](https://git.kernel.org/torvalds/c/28cfaf67e5c1) (loose) | [crypto] | qat - add MMP FW support to accel engine |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`dd0f368398ea`](https://git.kernel.org/torvalds/c/dd0f368398ea) (loose) | [crypto] | qat - Add qat dh895xcc VF driver |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`f3dd7e60d202`](https://git.kernel.org/torvalds/c/f3dd7e60d202) (loose) | [crypto] | qat - add support for MMP FW |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`a990532023b9`](https://git.kernel.org/torvalds/c/a990532023b9) (loose) | [crypto] | qat - Add support for RSA algorithm |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`ed8ccaef52fa`](https://git.kernel.org/torvalds/c/ed8ccaef52fa) (loose) | [crypto] | qat - Add support for SRIOV |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`8f5ea2df02fb`](https://git.kernel.org/torvalds/c/8f5ea2df02fb) (loose) | [crypto] | qat - Don't attempt to register algorithm multiple times |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`c1ae632ad260`](https://git.kernel.org/torvalds/c/c1ae632ad260) (loose) | [crypto] | qat - Don't move data inside output buffer |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`df9e21e100a6`](https://git.kernel.org/torvalds/c/df9e21e100a6) (loose) | [crypto] | qat - enable legacy VFs |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`d5cf4023ebcb`](https://git.kernel.org/torvalds/c/d5cf4023ebcb) (loose) | [crypto] | qat - Fix adf_isr_resource_free name clash |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`ea77fcdaf1aa`](https://git.kernel.org/torvalds/c/ea77fcdaf1aa) (loose) | [crypto] | qat - fix bug in ADF_RING_SIZE_BYTES_MIN macro |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`3cf080a7b747`](https://git.kernel.org/torvalds/c/3cf080a7b747) (loose) | [crypto] | qat - fix invalid check for RSA keylen in fips mode |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`8669f34e122b`](https://git.kernel.org/torvalds/c/8669f34e122b) (loose) | [crypto] | qat - fix simple_return.cocci warnings |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`ec0d6fa3e884`](https://git.kernel.org/torvalds/c/ec0d6fa3e884) (loose) | [crypto] | qat - Fix typo othewise->otherwise |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`18be4ebe1f6b`](https://git.kernel.org/torvalds/c/18be4ebe1f6b) (loose) | [crypto] | qat - Fix unmet direct dependencies for QAT_DH895xCCVF |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`a57331394cf5`](https://git.kernel.org/torvalds/c/a57331394cf5) (loose) | [crypto] | qat - Move adf admin and adf hw arbitrer to common code |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`5995752eadfd`](https://git.kernel.org/torvalds/c/5995752eadfd) (loose) | [crypto] | qat - remove redundant struct elem |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`0a139416eed5`](https://git.kernel.org/torvalds/c/0a139416eed5) (loose) | [crypto] | qat - Remove reference to crypto_aead_crt |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`caa8c508494c`](https://git.kernel.org/torvalds/c/caa8c508494c) (loose) | [crypto] | qat - remove unnecessary list iteration |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`13dd7bee2063`](https://git.kernel.org/torvalds/c/13dd7bee2063) (loose) | [crypto] | qat - remove unused define |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`55e8dba1acc2`](https://git.kernel.org/torvalds/c/55e8dba1acc2) (loose) | [crypto] | qat - silence a static checker warning |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`17762c5acee2`](https://git.kernel.org/torvalds/c/17762c5acee2) (loose) | [crypto] | qat - VF should never trigger SBR on PH |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`6e8ec66c3d9c`](https://git.kernel.org/torvalds/c/6e8ec66c3d9c) (loose) | [crypto] | rsa - limit supported key lengths |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.3 | [`84cba178a3b8`](https://git.kernel.org/torvalds/c/84cba178a3b8) (loose) | [crypto] | testmgr - don't copy from source IV too much |  | CONFIG_CRYPTO=y in A37 | 3.10.0-453 |
| CANDIDATE | 4.3 | [`2d6f0600b2cd`](https://git.kernel.org/torvalds/c/2d6f0600b2cd) (loose) | [crypto] | vmx - Adding enable_kernel_vsx() to access VSX instructions |  | generic code, tag [crypto] | 3.10.0-459 |
| CANDIDATE | 4.3 | [`1d4aa0b4c181`](https://git.kernel.org/torvalds/c/1d4aa0b4c181) (loose) | [crypto] | vmx - Fixing AES-CTR counter bug |  | generic code, tag [crypto] | 3.10.0-459 |
| CANDIDATE | 4.3 | [`3c5f0ed78e97`](https://git.kernel.org/torvalds/c/3c5f0ed78e97) (loose) | [crypto] | vmx - Fixing GHASH Key issue on little endian |  | generic code, tag [crypto] | 3.10.0-459 |
| CANDIDATE | 4.3 | [`73613a8159dd`](https://git.kernel.org/torvalds/c/73613a8159dd) (loose) | [crypto] | vmx - Fixing opcode issue |  | generic code, tag [crypto] | 3.10.0-459 |
| CANDIDATE | 4.4 | [`271817a3e92c`](https://git.kernel.org/torvalds/c/271817a3e92c) (loose) | [crypto] | asymmetric_keys - Fix unaligned access in x509_get_sig_params() |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.4 | [`21dc9e8f941f`](https://git.kernel.org/torvalds/c/21dc9e8f941f) (loose) | [crypto] | ccp - Change references to accelerator to offload |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.4 | [`355eba5dda69`](https://git.kernel.org/torvalds/c/355eba5dda69) (loose) | [crypto] | ccp - Replace BUG_ON with WARN_ON and a return code |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.4 | [`166db195536f`](https://git.kernel.org/torvalds/c/166db195536f) (loose) | [crypto] | ccp - Use module name in driver structures |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.4 | [`f5128432b08c`](https://git.kernel.org/torvalds/c/f5128432b08c) (loose) | [crypto] | jitterentropy - remove unnecessary information from a comment |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.4 | [`fe351e8d4eec`](https://git.kernel.org/torvalds/c/fe351e8d4eec) | [security] | keys, trusted: move struct trusted_key_options to trusted-type.h |  | generic code, tag [security] | 3.10.0-430 |
| CANDIDATE | 4.4 | [`0fe5480303a1`](https://git.kernel.org/torvalds/c/0fe5480303a1) | [security] | keys, trusted: seal/unseal with TPM 2.0 chips |  | generic code, tag [security] | 3.10.0-430 |
| CANDIDATE | 4.4 | [`d0e0eba043c7`](https://git.kernel.org/torvalds/c/d0e0eba043c7) | [security] | keys: use kvfree() in add_key |  | CONFIG_KEYS=y in A37 | 3.10.0-812 |
| CANDIDATE | 4.4 | [`62f57d05e287`](https://git.kernel.org/torvalds/c/62f57d05e287) (loose) | [crypto] | pkcs7 - Fix unaligned access in pkcs7_verify() |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.4 | [`3cc43a0a5cea`](https://git.kernel.org/torvalds/c/3cc43a0a5cea) (loose) | [crypto] | qat - Add load balancing across devices |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.4 | [`def14bfaf30d`](https://git.kernel.org/torvalds/c/def14bfaf30d) (loose) | [crypto] | qat - add support for ctr(aes) and xts(aes) |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.4 | [`6c5de9871a4d`](https://git.kernel.org/torvalds/c/6c5de9871a4d) (loose) | [crypto] | qat - don't check for iommu |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.4 | [`4a4b0bad0653`](https://git.kernel.org/torvalds/c/4a4b0bad0653) (loose) | [crypto] | qat - fix crypto_get_instance_node function |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.4 | [`be2cfac07619`](https://git.kernel.org/torvalds/c/be2cfac07619) (loose) | [crypto] | qat - remove empty functions and turn qat_uregister fn to void |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.4 | [`9196d9676fe7`](https://git.kernel.org/torvalds/c/9196d9676fe7) (loose) | [crypto] | qat - remove unneeded variable |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.4 | [`1d2a168a085f`](https://git.kernel.org/torvalds/c/1d2a168a085f) | [security] | selinux: ioctl_has_perm should be static |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-875 |
| CANDIDATE | 4.4 | [`284a0f6e87b0`](https://git.kernel.org/torvalds/c/284a0f6e87b0) (loose) | [crypto] | testmgr - Disable fips-allowed for authenc() and des() ciphers |  | CONFIG_CRYPTO=y in A37 | 3.10.0-684 |
| CANDIDATE | 4.4 | [`cc25b994acfb`](https://git.kernel.org/torvalds/c/cc25b994acfb) | [crypto] | x.509: Fix the time validation [ver #2] |  | generic code, tag [crypto] | 3.10.0-794 |
| CANDIDATE | 4.5 | [`6f3be9f562e3`](https://git.kernel.org/torvalds/c/6f3be9f562e3) (loose) | [security] | Add hook to invalidate inode security labels |  | generic code, tag [security] | 3.10.0-550 |
| CANDIDATE | 4.5 | [`bdd75064d2b2`](https://git.kernel.org/torvalds/c/bdd75064d2b2) (loose) | [crypto] | ccp - Use precalculated hash from headers |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.5 | [`c6c59bf2c0d6`](https://git.kernel.org/torvalds/c/c6c59bf2c0d6) (loose) | [crypto] | ccp - use to_pci_dev and to_platform_device |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.5 | [`5208cc83423d`](https://git.kernel.org/torvalds/c/5208cc83423d) | [security] | keys, trusted: fix: *do not* allow duplicate key options |  | generic code, tag [security] | 3.10.0-430 |
| CANDIDATE | 4.5 | [`5beb0c435bdd`](https://git.kernel.org/torvalds/c/5beb0c435bdd) | [security] | keys, trusted: seal with a TPM2 authorization policy |  | generic code, tag [security] | 3.10.0-430 |
| CANDIDATE | 4.5 | [`5ca4c20cfd37`](https://git.kernel.org/torvalds/c/5ca4c20cfd37) | [security] | keys, trusted: select hash algorithm for TPM2 chips |  | generic code, tag [security] | 3.10.0-430 |
| CANDIDATE | 4.5 | [`d6335d77a762`](https://git.kernel.org/torvalds/c/d6335d77a762) (loose) | [security] | Make inode argument of inode_getsecid non-const |  | generic code, tag [security] | 3.10.0-550 |
| CANDIDATE | 4.5 | [`ea861dfd9e0e`](https://git.kernel.org/torvalds/c/ea861dfd9e0e) (loose) | [security] | Make inode argument of inode_getsecurity non-const |  | generic code, tag [security] | 3.10.0-550 |
| CANDIDATE | 4.5 | [`9809ebcd0e8c`](https://git.kernel.org/torvalds/c/9809ebcd0e8c) (loose) | [crypto] | qat - add new device definitions |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`890c55f4dc0e`](https://git.kernel.org/torvalds/c/890c55f4dc0e) (loose) | [crypto] | qat - add support for c3xxx accel type |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`8b206f2d666f`](https://git.kernel.org/torvalds/c/8b206f2d666f) (loose) | [crypto] | qat - add support for c3xxxvf accel type |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`a6dabee6c8ba`](https://git.kernel.org/torvalds/c/a6dabee6c8ba) (loose) | [crypto] | qat - add support for c62x accel type |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`3771df3cff75`](https://git.kernel.org/torvalds/c/3771df3cff75) (loose) | [crypto] | qat - add support for c62xvf accel type |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`b0272276d903`](https://git.kernel.org/torvalds/c/b0272276d903) (loose) | [crypto] | qat - add support for new devices to FW loader |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`202a32f0463e`](https://git.kernel.org/torvalds/c/202a32f0463e) (loose) | [crypto] | qat - constify pci_error_handlers structures |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`40c18a59d226`](https://git.kernel.org/torvalds/c/40c18a59d226) (loose) | [crypto] | qat - enable VF irq after guest exits ungracefully |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`46621e6f8490`](https://git.kernel.org/torvalds/c/46621e6f8490) (loose) | [crypto] | qat - fix CTX_ENABLES bits shift direction issue |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`d956fed7b68f`](https://git.kernel.org/torvalds/c/d956fed7b68f) (loose) | [crypto] | qat - fix get instance function |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`1fa844e2ff91`](https://git.kernel.org/torvalds/c/1fa844e2ff91) (loose) | [crypto] | qat - Fix random config build issue |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`2a5de720dcec`](https://git.kernel.org/torvalds/c/2a5de720dcec) (loose) | [crypto] | qat - fix SKU definiftion for c3xxx dev |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`51d77dddfff4`](https://git.kernel.org/torvalds/c/51d77dddfff4) (loose) | [crypto] | qat - fix some timeout tests |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`c0e77a11ffca`](https://git.kernel.org/torvalds/c/c0e77a11ffca) (loose) | [crypto] | qat - fix timeout issues |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`1a72d3a6d1d9`](https://git.kernel.org/torvalds/c/1a72d3a6d1d9) (loose) | [crypto] | qat - move isr files to qat common so that they can be reused |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`c52b67338937`](https://git.kernel.org/torvalds/c/c52b67338937) (loose) | [crypto] | qat - remove superfluous check from adf_probe |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`91a93eafea33`](https://git.kernel.org/torvalds/c/91a93eafea33) (loose) | [crypto] | qat - remove to call get_sram_bar_id for qat_c3xxx |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`a239c36e527e`](https://git.kernel.org/torvalds/c/a239c36e527e) (loose) | [crypto] | qat - Rename dh895xcc mmp firmware |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`06cabd755a97`](https://git.kernel.org/torvalds/c/06cabd755a97) (loose) | [crypto] | qat - ring returning retry even though ring has BW |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`75910d375ecb`](https://git.kernel.org/torvalds/c/75910d375ecb) (loose) | [crypto] | qat - select PCI_IOV when VF are enabled |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`81b312f11dfd`](https://git.kernel.org/torvalds/c/81b312f11dfd) (loose) | [crypto] | qat - uint8_t is not large enough for accel_id |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`70401f4edc33`](https://git.kernel.org/torvalds/c/70401f4edc33) (loose) | [crypto] | qat - update init_esram for C3xxx dev type |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`dc2c632272d5`](https://git.kernel.org/torvalds/c/dc2c632272d5) (loose) | [crypto] | qat - use list_for_each_entry* |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`b0c8bc1b9d80`](https://git.kernel.org/torvalds/c/b0c8bc1b9d80) (loose) | [crypto] | qat - when stopping all devices make fure VF are stopped first |  | generic code, tag [crypto] | 3.10.0-414 |
| CANDIDATE | 4.5 | [`83da53c5a345`](https://git.kernel.org/torvalds/c/83da53c5a345) | [security] | selinux: Add accessor functions for inode->i_security |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.5 | [`e817c2f33efb`](https://git.kernel.org/torvalds/c/e817c2f33efb) | [security] | selinux: Don't sleep inside inode_getsecid hook |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.5 | [`b197367ed1ba`](https://git.kernel.org/torvalds/c/b197367ed1ba) | [security] | selinux: Inode label revalidation performance fix |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.5 | [`a44ca52ca6bd`](https://git.kernel.org/torvalds/c/a44ca52ca6bd) | [security] | selinux: Remove unused variable in selinux_inode_init_security |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.5 | [`5d226df4edfa`](https://git.kernel.org/torvalds/c/5d226df4edfa) | [security] | selinux: Revalidate invalid inode security labels |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.5 | [`0d3d054b4371`](https://git.kernel.org/torvalds/c/0d3d054b4371) (loose) | [crypto] | vmx - IV size failing on skcipher API |  | generic code, tag [crypto] | 3.10.0-459 |
| CANDIDATE | 4.5 | [`1552cd703cf5`](https://git.kernel.org/torvalds/c/1552cd703cf5) (loose) | [crypto] | vmx: Only call enable_kernel_vsx() |  | generic code, tag [crypto] | 3.10.0-459 |
| CANDIDATE | 4.6 | [`53a0bd714422`](https://git.kernel.org/torvalds/c/53a0bd714422) (loose) | [crypto] | aead - move aead_request_cast helper to aead.h |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.6 | [`eac6d4081d7c`](https://git.kernel.org/torvalds/c/eac6d4081d7c) (loose) | [crypto] | ansi_cprng - ANSI X9.31 DRNG is not allowed in FIPS 140-2 |  | generic code, tag [crypto] | 3.10.0-684 |
| CANDIDATE | 4.6 | [`ea0375afa172`](https://git.kernel.org/torvalds/c/ea0375afa172) (loose) | [crypto] | ccp - Add abstraction for device-specific calls |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.6 | [`c7019c4d739e`](https://git.kernel.org/torvalds/c/c7019c4d739e) (loose) | [crypto] | ccp - CCP versioning support |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.6 | [`03a6f29000fd`](https://git.kernel.org/torvalds/c/03a6f29000fd) (loose) | [crypto] | ccp - fix lock acquisition code |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.6 | [`3f19ce205454`](https://git.kernel.org/torvalds/c/3f19ce205454) (loose) | [crypto] | ccp - Remove check for x86 family and model |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.6 | [`553d2374db0b`](https://git.kernel.org/torvalds/c/553d2374db0b) (loose) | [crypto] | ccp - Support for multiple CCPs |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.6 | [`a7c58ac06224`](https://git.kernel.org/torvalds/c/a7c58ac06224) (loose) | [crypto] | crc32 - Rename generic implementation |  | generic code, tag [crypto] | 3.10.0-479 |
| CANDIDATE | 4.6 | [`b3614763059b`](https://git.kernel.org/torvalds/c/b3614763059b) (loose) | [crypto] | drbg - remove FIPS 140-2 continuous test |  | generic code, tag [crypto] | 3.10.0-684 |
| CANDIDATE | 4.6 | [`e67ffe0af4d4`](https://git.kernel.org/torvalds/c/e67ffe0af4d4) (loose) | [crypto] | hash - Add helpers to zero stack request/descriptor |  | generic code, tag [crypto] | 3.10.0-794 |
| CANDIDATE | 4.6 | [`ddef482420b1`](https://git.kernel.org/torvalds/c/ddef482420b1) (loose) | [crypto] | mcryptd - Fix load failure |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.6 | [`e54358915d0a`](https://git.kernel.org/torvalds/c/e54358915d0a) | [crypto] | pkcs#7: pkcs7_validate_trust(): initialize the _trusted output argument |  | generic code, tag [crypto] | 3.10.0-794 |
| CANDIDATE | 4.6 | [`a2f5106f0de9`](https://git.kernel.org/torvalds/c/a2f5106f0de9) (loose) | [crypto] | qat - change name for c6xx dev type |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.6 | [`84a0ced0b6b4`](https://git.kernel.org/torvalds/c/84a0ced0b6b4) (loose) | [crypto] | qat - Change the definition of icp_qat_uof_regtype |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.6 | [`6dc5df71ee5c`](https://git.kernel.org/torvalds/c/6dc5df71ee5c) (loose) | [crypto] | qat - fix adf_ctl_drv.c:undefined reference to adf_init_pf_wq |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.6 | [`9e209fcfb804`](https://git.kernel.org/torvalds/c/9e209fcfb804) (loose) | [crypto] | qat - fix invalid pf2vf_resp_wq logic |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.6 | [`26d52ea39b89`](https://git.kernel.org/torvalds/c/26d52ea39b89) (loose) | [crypto] | qat - fix leak on error path |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.6 | [`26d52ea39b89`](https://git.kernel.org/torvalds/c/26d52ea39b89) (loose) | [crypto] | qat - fix leak on error path |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.6 | [`ba171135bfa5`](https://git.kernel.org/torvalds/c/ba171135bfa5) (loose) | [crypto] | qat - Pack cfg ctl structs |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.6 | [`7768fb2ee9e9`](https://git.kernel.org/torvalds/c/7768fb2ee9e9) (loose) | [crypto] | qat - Reduced reqsize in qat_algs |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.6 | [`34074205bb9f`](https://git.kernel.org/torvalds/c/34074205bb9f) (loose) | [crypto] | qat - remove redundant arbiter configuration |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.6 | [`718837c88bf7`](https://git.kernel.org/torvalds/c/718837c88bf7) (loose) | [crypto] | qat - remove redundant function call |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.6 | [`f93a8b25d2ae`](https://git.kernel.org/torvalds/c/f93a8b25d2ae) (loose) | [crypto] | qat - The AE id should be less than the maximal AE number |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.6 | [`fd09967b830c`](https://git.kernel.org/torvalds/c/fd09967b830c) (loose) | [crypto] | sha-mb - Fix load failure |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.6 | [`abfa7f4357e3`](https://git.kernel.org/torvalds/c/abfa7f4357e3) (loose) | [crypto] | testmgr - fix out of bound read in __test_aead() |  | CONFIG_CRYPTO=y in A37 | 3.10.0-453 |
| CANDIDATE | 4.6 | [`fb16abc2e9de`](https://git.kernel.org/torvalds/c/fb16abc2e9de) (loose) | [crypto] | testmgr - mark authenticated ctr(aes) also as FIPS able |  | CONFIG_CRYPTO=y in A37 | 3.10.0-684 |
| CANDIDATE | 4.6 | [`ed1afac9145c`](https://git.kernel.org/torvalds/c/ed1afac9145c) (loose) | [crypto] | testmgr - mark more algorithms as FIPS compliant |  | CONFIG_CRYPTO=y in A37 | 3.10.0-690 |
| CANDIDATE | 4.6 | [`ac4cbedfdf55`](https://git.kernel.org/torvalds/c/ac4cbedfdf55) | [crypto] | x.509: Fix leap year handling again |  | generic code, tag [crypto] | 3.10.0-794 |
| CANDIDATE | 4.6 | [`7650cb80e4e9`](https://git.kernel.org/torvalds/c/7650cb80e4e9) | [crypto] | x.509: Handle midnight alternative notation in GeneralizedTime |  | generic code, tag [crypto] | 3.10.0-794 |
| CANDIDATE | 4.6 | [`da02559c9f86`](https://git.kernel.org/torvalds/c/da02559c9f86) | [crypto] | x.509: Support leap seconds |  | generic code, tag [crypto] | 3.10.0-794 |
| CANDIDATE | 4.6 | [`28856a9e52c7`](https://git.kernel.org/torvalds/c/28856a9e52c7) (loose) | [crypto] | xts - consolidate sanity check for keys |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.6 | [`49abc0d2e19b`](https://git.kernel.org/torvalds/c/49abc0d2e19b) (loose) | [crypto] | xts - fix compile errors |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.7 | [`bc197b2a9c7e`](https://git.kernel.org/torvalds/c/bc197b2a9c7e) (loose) | [crypto] | ccp - constify ccp_actions structure |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.7 | [`b3c2fee5d66b`](https://git.kernel.org/torvalds/c/b3c2fee5d66b) (loose) | [crypto] | ccp - Ensure all dependencies are specified |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.7 | [`7587c4075400`](https://git.kernel.org/torvalds/c/7587c4075400) (loose) | [crypto] | ccp - Fix RT breaking #include <linux/rwlock_types.h> |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.7 | [`58ea8abf4904`](https://git.kernel.org/torvalds/c/58ea8abf4904) (loose) | [crypto] | ccp - Register the CCP as a DMA resource |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.7 | [`d6064165ba44`](https://git.kernel.org/torvalds/c/d6064165ba44) (loose) | [crypto] | qat - adf_dev_stop should not be called in atomic context |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.7 | [`aa8b6dd4b06b`](https://git.kernel.org/torvalds/c/aa8b6dd4b06b) (loose) | [crypto] | qat - avoid memory corruption or undefined behaviour |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.7 | [`256b1cfb9a34`](https://git.kernel.org/torvalds/c/256b1cfb9a34) (loose) | [crypto] | qat - change the adf_ctl_stop_devices to void |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.7 | [`f1420ceef301`](https://git.kernel.org/torvalds/c/f1420ceef301) (loose) | [crypto] | qat - changed adf_dev_stop to void |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.7 | [`25c6ffb249f6`](https://git.kernel.org/torvalds/c/25c6ffb249f6) (loose) | [crypto] | qat - check if PF is running |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.7 | [`cb00bca42f8b`](https://git.kernel.org/torvalds/c/cb00bca42f8b) (loose) | [crypto] | qat - explicitly stop all VFs first |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.7 | [`738f98233b94`](https://git.kernel.org/torvalds/c/738f98233b94) (loose) | [crypto] | qat - fix address leaking of RSA public exponent |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.7 | [`b3ab30a7cbda`](https://git.kernel.org/torvalds/c/b3ab30a7cbda) (loose) | [crypto] | qat - fix section mismatch warning |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.7 | [`cca0a7b0ac7f`](https://git.kernel.org/torvalds/c/cca0a7b0ac7f) (loose) | [crypto] | qat - Fix typo in comments |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.7 | [`87ba569a3988`](https://git.kernel.org/torvalds/c/87ba569a3988) (loose) | [crypto] | qat - interrupts need to be enabled when VFs are disabled |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.7 | [`d0c15bd5067e`](https://git.kernel.org/torvalds/c/d0c15bd5067e) (loose) | [crypto] | qat - make adf_vf_isr.c dependant on IOV config |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.7 | [`81dc0365cfa7`](https://git.kernel.org/torvalds/c/81dc0365cfa7) (loose) | [crypto] | qat - make qat_asym_algs.o depend on asn1 headers |  | generic code, tag [crypto] | 3.10.0-488 |
| CANDIDATE | 4.7 | [`082ebe92ca7f`](https://git.kernel.org/torvalds/c/082ebe92ca7f) (loose) | [crypto] | qat - make sure const_tab is 1024 bytes aligned |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.7 | [`02dc8d634b4f`](https://git.kernel.org/torvalds/c/02dc8d634b4f) (loose) | [crypto] | qat - move vf2pf_init and vf2pf_exit to common |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.7 | [`0c4935b31df0`](https://git.kernel.org/torvalds/c/0c4935b31df0) (loose) | [crypto] | qat - Remove redundant nrbg rings |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.7 | [`87dcdebd6beb`](https://git.kernel.org/torvalds/c/87dcdebd6beb) (loose) | [crypto] | rsa-pkcs1pad - fix rsa-pkcs1pad request struct |  | generic code, tag [crypto] | 3.10.0-479 |
| CANDIDATE | 4.7 | [`1ac42476263e`](https://git.kernel.org/torvalds/c/1ac42476263e) | [security] | selinux: check ss_initialized before revalidating an inode label |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.7 | [`20cdef8d5759`](https://git.kernel.org/torvalds/c/20cdef8d5759) | [security] | selinux: delay inode label lookup as long as possible |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.7 | [`2c97165befb4`](https://git.kernel.org/torvalds/c/2c97165befb4) | [security] | selinux: don't revalidate an inode's label when explicitly setting it |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.7 | [`899134f2f6e2`](https://git.kernel.org/torvalds/c/899134f2f6e2) | [security] | selinux: don't revalidate inodes in selinux_socket_getpeersec_dgram() |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.7 | [`4b57d6bcd940`](https://git.kernel.org/torvalds/c/4b57d6bcd940) | [security] | selinux: simply inode label states to INVALID and INITIALIZED |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.7 | [`5ca55738201c`](https://git.kernel.org/torvalds/c/5ca55738201c) (loose) | [crypto] | vmx - comply with ABIs that specify vrsave as reserved |  | generic code, tag [crypto] | 3.10.0-589 |
| CANDIDATE | 4.7 | [`975f57fdff1d`](https://git.kernel.org/torvalds/c/975f57fdff1d) (loose) | [crypto] | vmx - Fix ABI detection |  | generic code, tag [crypto] | 3.10.0-589 |
| CANDIDATE | 4.7 | [`12d3f49e1ffb`](https://git.kernel.org/torvalds/c/12d3f49e1ffb) (loose) | [crypto] | vmx - Increase priority of aes-cbc cipher |  | generic code, tag [crypto] | 3.10.0-589 |
| CANDIDATE | 4.8 | [`802c7f1c84e4`](https://git.kernel.org/torvalds/c/802c7f1c84e4) (loose) | [crypto] | dh - Add DH software implementation |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.8 | [`3c4b23901a0c`](https://git.kernel.org/torvalds/c/3c4b23901a0c) (loose) | [crypto] | ecdh - Add ECDH software support |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.8 | [`b578456c342e`](https://git.kernel.org/torvalds/c/b578456c342e) (loose) | [crypto] | jitterentropy - use ktime_get_ns as fallback |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.8 | [`965475acca2c`](https://git.kernel.org/torvalds/c/965475acca2c) | [security] | KEYS: Strip trailing spaces | CVE-2017-17807 | CONFIG_KEYS=y in A37 | 3.10.0-1091 |
| CANDIDATE | 4.8 | [`4e5f2c400765`](https://git.kernel.org/torvalds/c/4e5f2c400765) (loose) | [crypto] | kpp - Key-agreement Protocol Primitives API (KPP) |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.8 | [`6040e57658ee`](https://git.kernel.org/torvalds/c/6040e57658ee) | [security] | Make the hardened user-copy code depend on having a hardened allocator |  | generic code, tag [security] | 3.10.0-920 |
| CANDIDATE | 4.8 | [`c9839143ebbf`](https://git.kernel.org/torvalds/c/c9839143ebbf) (loose) | [crypto] | qat - Add DH support |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.8 | [`879f77e9071f`](https://git.kernel.org/torvalds/c/879f77e9071f) (loose) | [crypto] | qat - Add RSA CRT mode |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.8 | [`10bb087ce381`](https://git.kernel.org/torvalds/c/10bb087ce381) (loose) | [crypto] | qat - fix aes-xts key sizes |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.8 | [`21a3d3b234cd`](https://git.kernel.org/torvalds/c/21a3d3b234cd) (loose) | [crypto] | qat - fix typos sizeof for ctx |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.8 | [`773b197972be`](https://git.kernel.org/torvalds/c/773b197972be) (loose) | [crypto] | qat - Remove deprecated create_workqueue |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.8 | [`bd76ad4abfdc`](https://git.kernel.org/torvalds/c/bd76ad4abfdc) (loose) | [crypto] | qat - Stop dropping leading zeros from RSA output |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.8 | [`6889621fd231`](https://git.kernel.org/torvalds/c/6889621fd231) (loose) | [crypto] | qat - Switch to new rsa_helper functions |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.8 | [`e24860f2a6b5`](https://git.kernel.org/torvalds/c/e24860f2a6b5) (loose) | [crypto] | qat - Use alternative reset methods depending on the specific device |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.8 | [`5a7de97309f5`](https://git.kernel.org/torvalds/c/5a7de97309f5) (loose) | [crypto] | rsa - return raw integers for the ASN.1 parser |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.8 | [`8be0b84e58a9`](https://git.kernel.org/torvalds/c/8be0b84e58a9) (loose) | [crypto] | rsa - Store rest of the private key components |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.8 | [`8bebe88c0995`](https://git.kernel.org/torvalds/c/8bebe88c0995) | [security] | selinux: import NetLabel category bitmaps correctly |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-461 |
| CANDIDATE | 4.8 | [`331bf739c4f9`](https://git.kernel.org/torvalds/c/331bf739c4f9) (loose) | [crypto] | sha1-mb - async implementation for sha1-mb |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.8 | [`0a7f330c12f2`](https://git.kernel.org/torvalds/c/0a7f330c12f2) (loose) | [crypto] | sha1-mb - stylistic cleanup |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.8 | [`98cf10383a55`](https://git.kernel.org/torvalds/c/98cf10383a55) (loose) | [crypto] | sha256-mb - Algorithm data structures |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.8 | [`992532474ffa`](https://git.kernel.org/torvalds/c/992532474ffa) (loose) | [crypto] | sha256-mb - Crypto computation (x8 AVX2) |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.8 | [`9be7e2448399`](https://git.kernel.org/torvalds/c/9be7e2448399) (loose) | [crypto] | sha256-mb - Enable multibuffer support |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.8 | [`f876f440df39`](https://git.kernel.org/torvalds/c/f876f440df39) (loose) | [crypto] | sha256-mb - SHA256 multibuffer job manager and glue code |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.8 | [`a377c6b1876e`](https://git.kernel.org/torvalds/c/a377c6b1876e) (loose) | [crypto] | sha256-mb - submit/flush routines for AVX2 |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.8 | [`2cdacb68d70d`](https://git.kernel.org/torvalds/c/2cdacb68d70d) (loose) | [crypto] | sha512-mb - Algorithm data structures |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.8 | [`bee5cfd9f670`](https://git.kernel.org/torvalds/c/bee5cfd9f670) (loose) | [crypto] | sha512-mb - Crypto computation (x4 AVX2) |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.8 | [`026bb8aaf516`](https://git.kernel.org/torvalds/c/026bb8aaf516) (loose) | [crypto] | sha512-mb - Enable SHA512 multibuffer support |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.8 | [`8c603ff28659`](https://git.kernel.org/torvalds/c/8c603ff28659) (loose) | [crypto] | sha512-mb - SHA512 multibuffer job manager and glue code |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.8 | [`45691e2d9b18`](https://git.kernel.org/torvalds/c/45691e2d9b18) (loose) | [crypto] | sha512-mb - submit/flush routines for AVX2 |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.8 | [`14009c4bde13`](https://git.kernel.org/torvalds/c/14009c4bde13) (loose) | [crypto] | tcrypt - Add new mode for sha512_mb |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.8 | [`087bcd225c56`](https://git.kernel.org/torvalds/c/087bcd225c56) (loose) | [crypto] | tcrypt - Add speed tests for SHA multibuffer algorithms |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.8 | [`50d2b643ea66`](https://git.kernel.org/torvalds/c/50d2b643ea66) (loose) | [crypto] | testmgr - Allow leading zeros in RSA |  | CONFIG_CRYPTO=y in A37 | 3.10.0-893 |
| CANDIDATE | 4.8 | [`11c6e16ee13a`](https://git.kernel.org/torvalds/c/11c6e16ee13a) (loose) | [crypto] | vmx - Adding asm subroutines for XTS |  | generic code, tag [crypto] | 3.10.0-589 |
| CANDIDATE | 4.8 | [`c07f5d3da643`](https://git.kernel.org/torvalds/c/c07f5d3da643) (loose) | [crypto] | vmx - Adding support for XTS |  | generic code, tag [crypto] | 3.10.0-589 |
| CANDIDATE | 4.8 | [`16dee78005be`](https://git.kernel.org/torvalds/c/16dee78005be) (loose) | [crypto] | vmx - Fix aes_p8_xts_decrypt build failure |  | generic code, tag [crypto] | 3.10.0-589 |
| CANDIDATE | 4.8 | [`901d3d4fee83`](https://git.kernel.org/torvalds/c/901d3d4fee83) (loose) | [crypto] | vmx - fix null dereference in p8_aes_xts_crypt |  | generic code, tag [crypto] | 3.10.0-589 |
| CANDIDATE | 4.9 | [`02038fd6645a`](https://git.kernel.org/torvalds/c/02038fd6645a) (loose) | [crypto] | Added Chelsio Menu to the Kconfig file |  | generic code, tag [crypto] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`493b2ed3f760`](https://git.kernel.org/torvalds/c/493b2ed3f760) (loose) | [crypto] | algif_hash - Handle NULL hashes correctly |  | generic code, tag [crypto] | 3.10.0-875 |
| CANDIDATE | 4.9 | [`fba8855cb240`](https://git.kernel.org/torvalds/c/fba8855cb240) (loose) | [crypto] | ccp - Abstract PCI info for the CCP |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.9 | [`ba22a1e2aa8e`](https://git.kernel.org/torvalds/c/ba22a1e2aa8e) (loose) | [crypto] | ccp - add missing release in ccp_dmaengine_register |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.9 | [`084935b208f6`](https://git.kernel.org/torvalds/c/084935b208f6) (loose) | [crypto] | ccp - Add support for the RNG in a version 5 CCP |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.9 | [`9ddb9dc6be09`](https://git.kernel.org/torvalds/c/9ddb9dc6be09) (loose) | [crypto] | ccp - clean up data structure |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.9 | [`99d90b2ebd8b`](https://git.kernel.org/torvalds/c/99d90b2ebd8b) (loose) | [crypto] | ccp - Enable DMA service on a v5 CCP |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.9 | [`e14e7d126765`](https://git.kernel.org/torvalds/c/e14e7d126765) (loose) | [crypto] | ccp - Enable use of the additional CCP |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.9 | [`dabc7904a74c`](https://git.kernel.org/torvalds/c/dabc7904a74c) (loose) | [crypto] | ccp - Fix non static symbol warning |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.9 | [`dabc7904a74c`](https://git.kernel.org/torvalds/c/dabc7904a74c) (loose) | [crypto] | ccp - Fix non static symbol warning |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.9 | [`fa242e80c7fb`](https://git.kernel.org/torvalds/c/fa242e80c7fb) (loose) | [crypto] | ccp - Fix non-conforming comment style |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.9 | [`7514e3688811`](https://git.kernel.org/torvalds/c/7514e3688811) (loose) | [crypto] | ccp - Fix return value check in ccp_dmaengine_register() |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.9 | [`4b394a232df7`](https://git.kernel.org/torvalds/c/4b394a232df7) (loose) | [crypto] | ccp - Let a v5 CCP provide the same function as v3 |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.9 | [`81422badb390`](https://git.kernel.org/torvalds/c/81422badb390) (loose) | [crypto] | ccp - Make syslog errors human-readable |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.9 | [`8256e683113e`](https://git.kernel.org/torvalds/c/8256e683113e) (loose) | [crypto] | ccp - Refactor code supporting the CCP's RNG |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.9 | [`bb4e89b34d1b`](https://git.kernel.org/torvalds/c/bb4e89b34d1b) (loose) | [crypto] | ccp - Refactor code to enable checks for queue space |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.9 | [`58a690b701ef`](https://git.kernel.org/torvalds/c/58a690b701ef) (loose) | [crypto] | ccp - Refactor the storage block allocation code |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.9 | [`956ee21a6df0`](https://git.kernel.org/torvalds/c/956ee21a6df0) (loose) | [crypto] | ccp - refactoring: symbol cleanup |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.9 | [`a43eb9850757`](https://git.kernel.org/torvalds/c/a43eb9850757) (loose) | [crypto] | ccp - Shorten the fields of the action structure |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.9 | [`664f570a9cee`](https://git.kernel.org/torvalds/c/664f570a9cee) (loose) | [crypto] | ccp - use kmem_cache_zalloc instead of kmem_cache_alloc/memset |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.9 | [`66bf09377204`](https://git.kernel.org/torvalds/c/66bf09377204) (loose) | [crypto] | chcr - Fix memory corruption |  | generic code, tag [crypto] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`73b86bb7033e`](https://git.kernel.org/torvalds/c/73b86bb7033e) | [crypto] | chcr: Fix non static symbol warning |  | generic code, tag [crypto] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`324429d74127`](https://git.kernel.org/torvalds/c/324429d74127) | [crypto] | chcr: Support for Chelsio's Crypto Hardware |  | generic code, tag [crypto] | 3.10.0-603 |
| CANDIDATE | 4.9 | [`d89a67134fcc`](https://git.kernel.org/torvalds/c/d89a67134fcc) (loose) | [crypto] | drbg - do not call drbg_instantiate in healt test |  | generic code, tag [crypto] | 3.10.0-684 |
| CANDIDATE | 4.9 | [`10faa8c0d6c3`](https://git.kernel.org/torvalds/c/10faa8c0d6c3) (loose) | [crypto] | fips - allow tests to be disabled in FIPS mode |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.9 | [`a397ba829d7f`](https://git.kernel.org/torvalds/c/a397ba829d7f) (loose) | [crypto] | ghash-generic - move common definitions to a new header file |  | generic code, tag [crypto] | 3.10.0-589 |
| CANDIDATE | 4.9 | [`48a992727d82`](https://git.kernel.org/torvalds/c/48a992727d82) (loose) | [crypto] | mcryptd - Check mcryptd algorithm compatibility | CVE-2016-10147 | generic code, tag [crypto] | 3.10.0-589 |
| CANDIDATE | 4.9 | [`93ba73fed31d`](https://git.kernel.org/torvalds/c/93ba73fed31d) (loose) | [crypto] | qat - fix constants table DMA |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.9 | [`1548a37da044`](https://git.kernel.org/torvalds/c/1548a37da044) (loose) | [crypto] | qat - fix incorrect accelerator mask for C3X devices |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.9 | [`e09287dfef28`](https://git.kernel.org/torvalds/c/e09287dfef28) (loose) | [crypto] | rsa - allow keys >= 2048 bits in FIPS mode |  | generic code, tag [crypto] | 3.10.0-684 |
| CANDIDATE | 4.9 | [`0fae0c1e1d79`](https://git.kernel.org/torvalds/c/0fae0c1e1d79) (loose) | [crypto] | testmgr - fix !x==y confusion |  | CONFIG_CRYPTO=y in A37 | 3.10.0-797 |
| CANDIDATE | 4.9 | [`80da44c29d99`](https://git.kernel.org/torvalds/c/80da44c29d99) (loose) | [crypto] | vmx - Fix memory corruption caused by p8_ghash |  | generic code, tag [crypto] | 3.10.0-589 |
| CANDIDATE | 4.10 | [`2ebda74fd6c9`](https://git.kernel.org/torvalds/c/2ebda74fd6c9) (loose) | [crypto] | acomp - add asynchronous compression api |  | generic code, tag [crypto] | 3.10.0-797 |
| CANDIDATE | 4.10 | [`1ab53a77b772`](https://git.kernel.org/torvalds/c/1ab53a77b772) (loose) | [crypto] | acomp - add driver-side scomp interface |  | generic code, tag [crypto] | 3.10.0-797 |
| CANDIDATE | 4.10 | [`f6ded09de8bd`](https://git.kernel.org/torvalds/c/f6ded09de8bd) (loose) | [crypto] | acomp - add support for deflate via scomp |  | generic code, tag [crypto] | 3.10.0-797 |
| CANDIDATE | 4.10 | [`d7db7a882deb`](https://git.kernel.org/torvalds/c/d7db7a882deb) (loose) | [crypto] | acomp - update testmgr with support for acomp |  | generic code, tag [crypto] | 3.10.0-797 |
| CANDIDATE | 4.10 | [`fdd2cf9db1e2`](https://git.kernel.org/torvalds/c/fdd2cf9db1e2) (loose) | [crypto] | ccp - change bitfield type to unsigned ints |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.10 | [`3cf799680d26`](https://git.kernel.org/torvalds/c/3cf799680d26) (loose) | [crypto] | ccp - change type of struct member lsb to signed |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.10 | [`103600ab966a`](https://git.kernel.org/torvalds/c/103600ab966a) (loose) | [crypto] | ccp - Clean up the LSB slot allocation code |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.10 | [`500c0106e638`](https://git.kernel.org/torvalds/c/500c0106e638) (loose) | [crypto] | ccp - Fix DMA operations when IOMMU is enabled |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.10 | [`e5da5c566738`](https://git.kernel.org/torvalds/c/e5da5c566738) (loose) | [crypto] | ccp - Fix double add when creating new DMA command |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.10 | [`e6414b13ea39`](https://git.kernel.org/torvalds/c/e6414b13ea39) (loose) | [crypto] | ccp - Fix handling of RSA exponent on a v5 device |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.10 | [`ec9b70df75b3`](https://git.kernel.org/torvalds/c/ec9b70df75b3) (loose) | [crypto] | ccp - remove unneeded code |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | 4.10 | [`2debd3325e55`](https://git.kernel.org/torvalds/c/2debd3325e55) (loose) | [crypto] | chcr - Add AEAD algos |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.10 | [`358961d1cd1e`](https://git.kernel.org/torvalds/c/358961d1cd1e) (loose) | [crypto] | chcr - Added new structure chcr_wr |  | generic code, tag [crypto] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`adf1ca6182a6`](https://git.kernel.org/torvalds/c/adf1ca6182a6) (loose) | [crypto] | chcr - Adjust Dest. buffer size |  | generic code, tag [crypto] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`cc1b156df510`](https://git.kernel.org/torvalds/c/cc1b156df510) (loose) | [crypto] | chcr - Calculate Reverse round key in setkey callback |  | generic code, tag [crypto] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`f5f7bebc91ab`](https://git.kernel.org/torvalds/c/f5f7bebc91ab) (loose) | [crypto] | chcr - Check device is allocated before use |  | generic code, tag [crypto] | 3.10.0-685 |
| CANDIDATE | 4.10 | [`9a97ffd49ca9`](https://git.kernel.org/torvalds/c/9a97ffd49ca9) (loose) | [crypto] | chcr - checking for IS_ERR() instead of NULL |  | generic code, tag [crypto] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`39f91a34f321`](https://git.kernel.org/torvalds/c/39f91a34f321) (loose) | [crypto] | chcr - Cosmetic change |  | generic code, tag [crypto] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`7c2cf1c4615c`](https://git.kernel.org/torvalds/c/7c2cf1c4615c) (loose) | [crypto] | chcr - Fix key length for RFC4106 |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.10 | [`94e1dab1c947`](https://git.kernel.org/torvalds/c/94e1dab1c947) (loose) | [crypto] | chcr - Fix panic on dma_unmap_sg |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.10 | [`18f0aa06a3c9`](https://git.kernel.org/torvalds/c/18f0aa06a3c9) (loose) | [crypto] | chcr - Fixes Unchecked dereference inside function |  | generic code, tag [crypto] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`5c86a8ff2e0d`](https://git.kernel.org/torvalds/c/5c86a8ff2e0d) (loose) | [crypto] | chcr - Move tfm ctx variable to request context |  | generic code, tag [crypto] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`44fce12a3464`](https://git.kernel.org/torvalds/c/44fce12a3464) (loose) | [crypto] | chcr - Remove dynamic allocation |  | generic code, tag [crypto] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`e7922729bef4`](https://git.kernel.org/torvalds/c/e7922729bef4) (loose) | [crypto] | chcr - Use SHASH_DESC_ON_STACK |  | generic code, tag [crypto] | 3.10.0-635 |
| CANDIDATE | 4.10 | [`e8b2fa476e72`](https://git.kernel.org/torvalds/c/e8b2fa476e72) (loose) | [crypto] | jitterentropy - drop duplicate header module.h |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | 4.10 | [`db978da8fa1d`](https://git.kernel.org/torvalds/c/db978da8fa1d) | [security] | proc: Pass file mode to proc_pid_make_inode |  | CONFIG_PROC_FS=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.10 | [`3484ecbe0e9d`](https://git.kernel.org/torvalds/c/3484ecbe0e9d) (loose) | [crypto] | qat - fix bar discovery for c62x |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.10 | [`685ce0626840`](https://git.kernel.org/torvalds/c/685ce0626840) (loose) | [crypto] | qat - zero esram only for DH85x devices |  | generic code, tag [crypto] | 3.10.0-565 |
| CANDIDATE | 4.10 | [`13457d073c29`](https://git.kernel.org/torvalds/c/13457d073c29) | [security] | selinux: Clean up initialization of isec->sclass |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.10 | [`9287aed2ad1f`](https://git.kernel.org/torvalds/c/9287aed2ad1f) | [security] | selinux: Convert isec->lock into a spinlock |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.10 | [`420591128cb2`](https://git.kernel.org/torvalds/c/420591128cb2) | [security] | selinux: Minor cleanups |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-550 |
| CANDIDATE | 4.11 | [`7c468447f406`](https://git.kernel.org/torvalds/c/7c468447f406) (loose) | [crypto] | ccp - Assign DMA commands to the channel's CCP |  | generic code, tag [crypto] | 3.10.0-642 |
| CANDIDATE | 4.11 | [`8f0660150199`](https://git.kernel.org/torvalds/c/8f0660150199) (loose) | [crypto] | chcr - Change algo priority |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.11 | [`44e9f7991616`](https://git.kernel.org/torvalds/c/44e9f7991616) (loose) | [crypto] | chcr - Change cra_flags for cipher algos |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.11 | [`8a13449fceb0`](https://git.kernel.org/torvalds/c/8a13449fceb0) (loose) | [crypto] | chcr - Change flow IDs |  | generic code, tag [crypto] | 3.10.0-685 |
| CANDIDATE | 4.11 | [`ee3bd84f55d6`](https://git.kernel.org/torvalds/c/ee3bd84f55d6) (loose) | [crypto] | chcr - fix itnull.cocci warnings |  | generic code, tag [crypto] | 3.10.0-685 |
| CANDIDATE | 4.11 | [`5ba042c094f9`](https://git.kernel.org/torvalds/c/5ba042c094f9) (loose) | [crypto] | chcr - Fix Smatch Complaint |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.11 | [`d2826056cb5e`](https://git.kernel.org/torvalds/c/d2826056cb5e) (loose) | [crypto] | chcr - Fix wrong typecasting |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.11 | [`8356ea515ba1`](https://git.kernel.org/torvalds/c/8356ea515ba1) (loose) | [crypto] | chcr - Use cipher instead of Block Cipher in gcm setkey |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.11 | [`0837e49ab3fa`](https://git.kernel.org/torvalds/c/0837e49ab3fa) | [security] | keys: Differentiate uses of rcu_dereference_key() and user_key_payload() | CVE-2015-8539 CVE-2017-7472 | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.11 | [`52176603795c`](https://git.kernel.org/torvalds/c/52176603795c) | [security] | keys: Use memzero_explicit() for secret data | CVE-2015-8539 CVE-2017-7472 | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.11 | [`aebeff888256`](https://git.kernel.org/torvalds/c/aebeff888256) (loose) | [crypto] | qat - fix comments describing adf_disable_sriov() |  | generic code, tag [crypto] | 3.10.0-797 |
| CANDIDATE | 4.11 | [`0a3b1abedf26`](https://git.kernel.org/torvalds/c/0a3b1abedf26) (loose) | [crypto] | qat - fix indentation |  | generic code, tag [crypto] | 3.10.0-797 |
| CANDIDATE | 4.11 | [`1043c5146877`](https://git.kernel.org/torvalds/c/1043c5146877) (loose) | [crypto] | qat - increase number of supported devices |  | generic code, tag [crypto] | 3.10.0-797 |
| CANDIDATE | 4.11 | [`21aad0b6ca4d`](https://git.kernel.org/torvalds/c/21aad0b6ca4d) (loose) | [crypto] | qat - modify format of dev top level debugfs entries |  | generic code, tag [crypto] | 3.10.0-797 |
| CANDIDATE | 4.11 | [`ac6d9a2cec19`](https://git.kernel.org/torvalds/c/ac6d9a2cec19) (loose) | [crypto] | qat - replace hardcoded BIT(0) in vf_isr |  | generic code, tag [crypto] | 3.10.0-797 |
| CANDIDATE | 4.11 | [`1ea0ce40690d`](https://git.kernel.org/torvalds/c/1ea0ce40690d) | [security] | selinux: allow changing labels for cgroupfs |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-758 |
| CANDIDATE | 4.11 | [`01593d3299a1`](https://git.kernel.org/torvalds/c/01593d3299a1) | [security] | selinux: allow context mounts on tmpfs, ramfs, devpts within user namespaces |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-1089 |
| CANDIDATE | 4.11 | [`2651225b5ebc`](https://git.kernel.org/torvalds/c/2651225b5ebc) | [security] | selinux: wrap cgroup seclabel support with its own policy capability |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-758 |
| CANDIDATE | 4.12 | [`3ce5bc72eb88`](https://git.kernel.org/torvalds/c/3ce5bc72eb88) (loose) | [crypto] | acomp - allow registration of multiple acomps |  | generic code, tag [crypto] | 3.10.0-797 |
| CANDIDATE | 4.12 | [`0e93708dabc0`](https://git.kernel.org/torvalds/c/0e93708dabc0) (loose) | [crypto] | chcr - Add fallback for AEAD algos |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.12 | [`ec1bca941a36`](https://git.kernel.org/torvalds/c/ec1bca941a36) (loose) | [crypto] | chcr - Fix error handling related to 'chcr_alloc_shash' |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.12 | [`72a56ca97dc1`](https://git.kernel.org/torvalds/c/72a56ca97dc1) (loose) | [crypto] | chcr - Fix txq ids |  | generic code, tag [crypto] | 3.10.0-685 |
| CANDIDATE | 4.12 | [`e29abda591b5`](https://git.kernel.org/torvalds/c/e29abda591b5) (loose) | [crypto] | chcr - Increase priority of AEAD algos |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.12 | [`da7798a7b671`](https://git.kernel.org/torvalds/c/da7798a7b671) | [crypto] | crypto : asymmetric_keys : verify_pefile:zero memory content before freeing |  | CONFIG_CRYPTO=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.12 | [`2416e4fa98b9`](https://git.kernel.org/torvalds/c/2416e4fa98b9) (loose) | [crypto] | gf128mul - remove xx() macro |  | generic code, tag [crypto] | 3.10.0-850 |
| CANDIDATE | 4.12 | [`f33fd64778f2`](https://git.kernel.org/torvalds/c/f33fd64778f2) (loose) | [crypto] | gf128mul - rename the byte overflow tables |  | generic code, tag [crypto] | 3.10.0-850 |
| CANDIDATE | 4.12 | [`2fefc97b2180`](https://git.kernel.org/torvalds/c/2fefc97b2180) | [security] | HAVE_ARCH_HARDENED_USERCOPY is unconditional now |  | generic code, tag [security] | 3.10.0-920 |
| CANDIDATE | 4.12 | [`41f1c53e0d7d`](https://git.kernel.org/torvalds/c/41f1c53e0d7d) | [security] | keys: Delete an error message for a failed memory allocation in get_derived_key() |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.12 | [`794b4bc292f5`](https://git.kernel.org/torvalds/c/794b4bc292f5) | [security] | keys: encrypted: fix buffer overread in valid_master_desc() |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.12 | [`64d107d3acca`](https://git.kernel.org/torvalds/c/64d107d3acca) | [security] | keys: encrypted: fix race causing incorrect HMAC calculations |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.12 | [`a9dd74b252e0`](https://git.kernel.org/torvalds/c/a9dd74b252e0) | [security] | keys: encrypted: sanitize all key material |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.12 | [`0f534e4a1349`](https://git.kernel.org/torvalds/c/0f534e4a1349) | [security] | keys: encrypted: use constant-time HMAC comparison |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.12 | [`63a0b0509e70`](https://git.kernel.org/torvalds/c/63a0b0509e70) | [security] | keys: fix freeing uninitialized memory in key_update() |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.12 | [`d636bd9f12a6`](https://git.kernel.org/torvalds/c/d636bd9f12a6) | [security] | keys: put keyring if install_session_keyring_to_cred() fails |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.12 | [`57070c850a03`](https://git.kernel.org/torvalds/c/57070c850a03) | [security] | keys: sanitize add_key() and keyctl() key payloads |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.12 | [`0620fddb56df`](https://git.kernel.org/torvalds/c/0620fddb56df) | [security] | keys: sanitize key structs before freeing |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.12 | [`ee618b4619b7`](https://git.kernel.org/torvalds/c/ee618b4619b7) | [security] | keys: trusted: sanitize all key material |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.12 | [`6966c74932b3`](https://git.kernel.org/torvalds/c/6966c74932b3) | [security] | keys: user_defined: sanitize key payloads |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.12 | [`5527dfb6ddac`](https://git.kernel.org/torvalds/c/5527dfb6ddac) (loose) | [crypto] | kpp - constify buffer passed to crypto_kpp_set_secret() |  | generic code, tag [crypto] | 3.10.0-797 |
| CANDIDATE | 4.12 | [`a368f43d6e3a`](https://git.kernel.org/torvalds/c/a368f43d6e3a) (loose) | [crypto] | scomp - add support for deflate rfc1950 (zlib) |  | generic code, tag [crypto] | 3.10.0-797 |
| CANDIDATE | 4.12 | [`3de4f5e1a5db`](https://git.kernel.org/torvalds/c/3de4f5e1a5db) (loose) | [crypto] | scomp - allow registration of multiple scomps |  | generic code, tag [crypto] | 3.10.0-797 |
| CANDIDATE | 4.12 | [`023f108dcc18`](https://git.kernel.org/torvalds/c/023f108dcc18) | [security] | selinux: fix double free in selinux_parse_opts_str() |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-736 |
| CANDIDATE | 4.12 | [`6175ca2ba7d2`](https://git.kernel.org/torvalds/c/6175ca2ba7d2) (loose) | [crypto] | testmgr - Allow ecb(cipher_null) in FIPS mode |  | CONFIG_CRYPTO=y in A37 | 3.10.0-684 |
| CANDIDATE | 4.12 | [`0d8da104840a`](https://git.kernel.org/torvalds/c/0d8da104840a) (loose) | [crypto] | testmgr - mark ctr(des3_ede) as fips_allowed |  | CONFIG_CRYPTO=y in A37 | 3.10.0-684 |
| CANDIDATE | 4.12 | [`752ade68cbd8`](https://git.kernel.org/torvalds/c/752ade68cbd8) | [security] | treewide: use kv[mz]alloc* rather than opencoded variants |  | generic code, tag [security] | 3.10.0-812 |
| CANDIDATE | 4.12 | [`381f20fceba8`](https://git.kernel.org/torvalds/c/381f20fceba8) (loose) | [security] | use READ_ONCE instead of deprecated ACCESS_ONCE |  | generic code, tag [security] | 3.10.0-794 |
| CANDIDATE | 4.13 | [`b8fd1f4170e7`](https://git.kernel.org/torvalds/c/b8fd1f4170e7) (loose) | [crypto] | chcr - Add ctr mode and process large sg entries for cipher |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.13 | [`ee0863ba118d`](https://git.kernel.org/torvalds/c/ee0863ba118d) | [crypto] | chcr - Add debug counters |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.13 | [`d3f1d2f78631`](https://git.kernel.org/torvalds/c/d3f1d2f78631) (loose) | [crypto] | chcr - Avoid algo allocation in softirq |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.13 | [`d600fc8aae74`](https://git.kernel.org/torvalds/c/d600fc8aae74) (loose) | [crypto] | chcr - Avoid changing request structure |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.13 | [`738bff488719`](https://git.kernel.org/torvalds/c/738bff488719) (loose) | [crypto] | chcr - Ensure Destination sg entry size less than 2k |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.13 | [`4dbeae4237c1`](https://git.kernel.org/torvalds/c/4dbeae4237c1) (loose) | [crypto] | chcr - Fix fallback key setting |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.13 | [`2512a6241423`](https://git.kernel.org/torvalds/c/2512a6241423) (loose) | [crypto] | chcr - Pass lcb bit setting to firmware |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.13 | [`5fe8c7117d78`](https://git.kernel.org/torvalds/c/5fe8c7117d78) (loose) | [crypto] | chcr - Return correct error code |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.13 | [`14c19b178a01`](https://git.kernel.org/torvalds/c/14c19b178a01) (loose) | [crypto] | chcr - Select device in Round Robin fashion |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | 4.13 | [`ee34e2644a78`](https://git.kernel.org/torvalds/c/ee34e2644a78) (loose) | [crypto] | dh - fix memleak in setkey |  | generic code, tag [crypto] | 3.10.0-874 |
| CANDIDATE | 4.13 | [`03d7db5654ae`](https://git.kernel.org/torvalds/c/03d7db5654ae) (loose) | [crypto] | hmac - add hmac IPAD/OPAD constant |  | generic code, tag [crypto] | 3.10.0-893 |
| CANDIDATE | 4.13 | [`72eed063767e`](https://git.kernel.org/torvalds/c/72eed063767e) (loose) | [crypto] | qat - avoid an uninitialized variable warning |  | generic code, tag [crypto] | 3.10.0-797 |
| CANDIDATE | 4.13 | [`515c4d27d69a`](https://git.kernel.org/torvalds/c/515c4d27d69a) (loose) | [crypto] | qat - comply with crypto_akcipher_maxsize() |  | generic code, tag [crypto] | 3.10.0-797 |
| CANDIDATE | 4.13 | [`85ac98cbac1b`](https://git.kernel.org/torvalds/c/85ac98cbac1b) (loose) | [crypto] | qat - comply with crypto_kpp_maxsize() |  | generic code, tag [crypto] | 3.10.0-797 |
| CANDIDATE | 4.13 | [`f14011ad7cf7`](https://git.kernel.org/torvalds/c/f14011ad7cf7) (loose) | [crypto] | qat - Use IPAD/OPAD constant |  | generic code, tag [crypto] | 3.10.0-893 |
| CANDIDATE | 4.13 | [`248c65056ccc`](https://git.kernel.org/torvalds/c/248c65056ccc) (loose) | [crypto] | qat - use pcie_flr instead of duplicating it |  | generic code, tag [crypto] | 3.10.0-893 |
| CANDIDATE | 4.13 | [`8f408ab64be6`](https://git.kernel.org/torvalds/c/8f408ab64be6) | [security] | selinux lsm ib/core: Implement LSM notification system |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-789 |
| CANDIDATE | 4.13 | [`409dcf31538a`](https://git.kernel.org/torvalds/c/409dcf31538a) | [security] | selinux: Add a cache for quicker retreival of PKey SIDs |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-789 |
| CANDIDATE | 4.13 | [`3ba4bf5f1e2c`](https://git.kernel.org/torvalds/c/3ba4bf5f1e2c) | [security] | selinux: add a map permission check for mmap |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-875 |
| CANDIDATE | 4.13 | [`ab861dfca165`](https://git.kernel.org/torvalds/c/ab861dfca165) | [security] | selinux: Add IB Port SMP access vector |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-789 |
| CANDIDATE | 4.13 | [`3a976fa6767f`](https://git.kernel.org/torvalds/c/3a976fa6767f) | [security] | selinux: Allocate and free infiniband security hooks |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-789 |
| CANDIDATE | 4.13 | [`a806f7a1616f`](https://git.kernel.org/torvalds/c/a806f7a1616f) | [security] | selinux: Create policydb version for Infiniband support |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-789 |
| CANDIDATE | 4.13 | [`cfc4d882d417`](https://git.kernel.org/torvalds/c/cfc4d882d417) | [security] | selinux: Implement Infiniband PKey "Access" access vector |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-789 |
| CANDIDATE | 4.13 | [`1207107c7168`](https://git.kernel.org/torvalds/c/1207107c7168) (loose) | [crypto] | testmgr - add testvector for pkcs1pad(rsa) |  | CONFIG_CRYPTO=y in A37 | 3.10.0-893 |
| CANDIDATE | 4.13 | [`bcf741cb7792`](https://git.kernel.org/torvalds/c/bcf741cb7792) (loose) | [crypto] | testmgr - Reenable sha1/aes in FIPS mode |  | CONFIG_CRYPTO=y in A37 | 3.10.0-690 |
| CANDIDATE | 4.14 | [`8db6c34f1dbc`](https://git.kernel.org/torvalds/c/8db6c34f1dbc) | [security] | Introduce v3 namespaced file capabilities |  | generic code, tag [security] | 3.10.0-782 |
| CANDIDATE | 4.14 | [`f7b48cf08fa6`](https://git.kernel.org/torvalds/c/f7b48cf08fa6) | [security] | keys: don't revoke uninstantiated key in request_key_auth_new() |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.14 | [`44d8143340a9`](https://git.kernel.org/torvalds/c/44d8143340a9) | [security] | keys: fix cred refcount leak in request_key_auth_new() |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.14 | [`884bee0215fc`](https://git.kernel.org/torvalds/c/884bee0215fc) | [security] | keys: fix key refcount leak in keyctl_assume_authority() |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.14 | [`7fc0786d956d`](https://git.kernel.org/torvalds/c/7fc0786d956d) | [security] | keys: fix key refcount leak in keyctl_read_key() |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.14 | [`363b02dab09b`](https://git.kernel.org/torvalds/c/363b02dab09b) | [security] | keys: Fix race between updating and finding a negative key |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.14 | [`e645016abc80`](https://git.kernel.org/torvalds/c/e645016abc80) | [security] | keys: fix writing past end of user-supplied buffer in keyring_read() |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.14 | [`9d6c8711b6a7`](https://git.kernel.org/torvalds/c/9d6c8711b6a7) | [security] | keys: Load key expiry time atomically in keyring_search_iterator() |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.14 | [`1823d475a5ee`](https://git.kernel.org/torvalds/c/1823d475a5ee) | [security] | keys: load key flags and expiry time atomically in key_validate() |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.14 | [`ab5c69f01313`](https://git.kernel.org/torvalds/c/ab5c69f01313) | [security] | keys: load key flags and expiry time atomically in proc_keys_show() |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.14 | [`37863c43b2c6`](https://git.kernel.org/torvalds/c/37863c43b2c6) | [security] | keys: prevent KEYCTL_READ on negative key |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.14 | [`8f674565d405`](https://git.kernel.org/torvalds/c/8f674565d405) | [security] | keys: reset parent each time before searching key_user_tree |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.14 | [`3239b6f29bdf`](https://git.kernel.org/torvalds/c/3239b6f29bdf) | [security] | keys: return full count in keyring_read() if buffer is too small |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.14 | [`a3c812f7cfd8`](https://git.kernel.org/torvalds/c/a3c812f7cfd8) | [security] | keys: trusted: fix writing past end of buffer in trusted_read() |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.14 | [`e007ce9c59bd`](https://git.kernel.org/torvalds/c/e007ce9c59bd) | [security] | keys: use kmemdup() in request_key_auth_new() |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | 4.14 | [`a93854c9a596`](https://git.kernel.org/torvalds/c/a93854c9a596) (loose) | [crypto] | qat - fix spelling mistake: "runing" -> "running" |  | generic code, tag [crypto] | 3.10.0-893 |
| CANDIDATE | 4.14 | [`901ef845fa24`](https://git.kernel.org/torvalds/c/901ef845fa24) | [security] | selinux: allow per-file labeling for cgroupfs |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-758 |
| CANDIDATE | 4.14 | [`af63f4193f9f`](https://git.kernel.org/torvalds/c/af63f4193f9f) | [security] | selinux: Generalize support for NNP/nosuid SELinux domain transitions |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-758 |
| CANDIDATE | 4.14 | [`19128341d6ca`](https://git.kernel.org/torvalds/c/19128341d6ca) | [security] | selinux: remove AVC init audit log message |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-714 |
| CANDIDATE | 4.15 | [`afdb09c720b6`](https://git.kernel.org/torvalds/c/afdb09c720b6) (loose) | [security] | bpf: Add LSM hooks for bpf object related syscall |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-923 |
| CANDIDATE | 4.15 | [`afdb09c720b6`](https://git.kernel.org/torvalds/c/afdb09c720b6) (loose) | [security] | bpf: Add LSM hooks for bpf object related syscall |  | CONFIG_BPF_SYSCALL=y in A37 | 3.10.0-913 |
| CANDIDATE | 4.15 | [`588fb2c7e294`](https://git.kernel.org/torvalds/c/588fb2c7e294) | [security] | capabilities: fix logic for effective root or real root |  | generic code, tag [security] | 3.10.0-773 |
| CANDIDATE | 4.15 | [`abfa2b377f75`](https://git.kernel.org/torvalds/c/abfa2b377f75) (loose) | [crypto] | chcr - Replace _manual_ swap with swap macro |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.15 | [`40cdbe1a1bd9`](https://git.kernel.org/torvalds/c/40cdbe1a1bd9) (loose) | [crypto] | chelsio - Check error code with IS_ERR macro |  | generic code, tag [crypto] | 3.10.0-850 |
| CANDIDATE | 4.15 | [`396d34f95376`](https://git.kernel.org/torvalds/c/396d34f95376) (loose) | [crypto] | chelsio - Fix memory leak |  | generic code, tag [crypto] | 3.10.0-850 |
| CANDIDATE | 4.15 | [`dce094ea6986`](https://git.kernel.org/torvalds/c/dce094ea6986) (loose) | [crypto] | chelsio - pr_err() strings should end with newlines |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.15 | [`d042566d8c70`](https://git.kernel.org/torvalds/c/d042566d8c70) (loose) | [crypto] | chelsio - select CRYPTO_GF128MUL |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.15 | [`8f6acb7fbf30`](https://git.kernel.org/torvalds/c/8f6acb7fbf30) (loose) | [crypto] | chelsio - Use GCM IV size constant |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.15 | [`de1a00ac7da1`](https://git.kernel.org/torvalds/c/de1a00ac7da1) (loose) | [crypto] | chelsio - Use x8_ble gf multiplication to calculate IV |  | generic code, tag [crypto] | 3.10.0-850 |
| CANDIDATE | 4.15 | [`12d41a023efb`](https://git.kernel.org/torvalds/c/12d41a023efb) (loose) | [crypto] | dh - Fix double free of ctx->p |  | generic code, tag [crypto] | 3.10.0-874 |
| CANDIDATE | 4.15 | [`ced6a5863843`](https://git.kernel.org/torvalds/c/ced6a5863843) (loose) | [crypto] | dh - Remove pointless checks for NULL 'p' and 'g' |  | generic code, tag [crypto] | 3.10.0-893 |
| CANDIDATE | 4.15 | [`ef780324592d`](https://git.kernel.org/torvalds/c/ef780324592d) (loose) | [crypto] | gcm - add GCM IV size constant |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.15 | [`acfc587810be`](https://git.kernel.org/torvalds/c/acfc587810be) (loose) | [crypto] | gf128mul - The x8_ble multiplication functions |  | generic code, tag [crypto] | 3.10.0-850 |
| CANDIDATE | 4.15 | [`4dca6ea1d943`](https://git.kernel.org/torvalds/c/4dca6ea1d943) | [security] | KEYS: add missing permission check for request_key() destination | CVE-2017-17807 | CONFIG_KEYS=y in A37 | 3.10.0-1091 |
| CANDIDATE | 4.15 | [`a2d8737d5c78`](https://git.kernel.org/torvalds/c/a2d8737d5c78) | [security] | KEYS: remove unnecessary get/put of explicit dest_keyring | CVE-2017-17807 | CONFIG_KEYS=y in A37 | 3.10.0-1091 |
| CANDIDATE | 4.15 | [`5829cc8da94f`](https://git.kernel.org/torvalds/c/5829cc8da94f) (loose) | [crypto] | qat - Clean up error handling in qat_dh_set_secret() |  | generic code, tag [crypto] | 3.10.0-893 |
| CANDIDATE | 4.15 | [`e3d062a6a277`](https://git.kernel.org/torvalds/c/e3d062a6a277) (loose) | [crypto] | qat - mark expected switch fall-throughs in qat_uclo |  | generic code, tag [crypto] | 3.10.0-893 |
| CANDIDATE | 4.15 | [`ed713a257a58`](https://git.kernel.org/torvalds/c/ed713a257a58) (loose) | [crypto] | qat - pr_err() strings should end with newlines |  | generic code, tag [crypto] | 3.10.0-893 |
| CANDIDATE | 4.15 | [`9c290c507ca2`](https://git.kernel.org/torvalds/c/9c290c507ca2) (loose) | [crypto] | qat - remove unused and redundant pointer vf_info |  | generic code, tag [crypto] | 3.10.0-893 |
| CANDIDATE | 4.15 | [`f66e448cfda0`](https://git.kernel.org/torvalds/c/f66e448cfda0) | [security] | selinux: bpf: Add addtional check for bpf object file receive |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-923 |
| CANDIDATE | 4.15 | [`ec27c3568a34`](https://git.kernel.org/torvalds/c/ec27c3568a34) | [security] | selinux: bpf: Add selinux check for eBPF syscall operations |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-923 |
| CANDIDATE | 4.15 | [`6b240306ee16`](https://git.kernel.org/torvalds/c/6b240306ee16) | [security] | selinux: Perform both commoncap and selinux xattr checks |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-782 |
| CANDIDATE | 4.16 | [`6dad4e8ab3ec`](https://git.kernel.org/torvalds/c/6dad4e8ab3ec) | [crypto] | chcr: Add support for Inline IPSec |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.16 | [`df807a19957c`](https://git.kernel.org/torvalds/c/df807a19957c) | [crypto] | chcr: ensure cntrl is initialized to fix bit-wise or'ing of garabage data |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.16 | [`267469ea65fd`](https://git.kernel.org/torvalds/c/267469ea65fd) | [crypto] | chcr: remove unused variables net_device, pi, adap and cntrl |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.16 | [`3d64bd670269`](https://git.kernel.org/torvalds/c/3d64bd670269) (loose) | [crypto] | chelsio - Add authenc versions of ctr and sha |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.16 | [`8daa32b9357d`](https://git.kernel.org/torvalds/c/8daa32b9357d) (loose) | [crypto] | chelsio - check for sg null |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.16 | [`209c14bfb3b7`](https://git.kernel.org/torvalds/c/209c14bfb3b7) (loose) | [crypto] | chelsio - fix a type cast error |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.16 | [`7814f552ff82`](https://git.kernel.org/torvalds/c/7814f552ff82) (loose) | [crypto] | chelsio - Fix an error code in chcr_hash_dma_map() |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.16 | [`db6deea4899e`](https://git.kernel.org/torvalds/c/db6deea4899e) (loose) | [crypto] | chelsio - Fix Indentation |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.16 | [`5abc8db01317`](https://git.kernel.org/torvalds/c/5abc8db01317) (loose) | [crypto] | chelsio - Fix indentation warning |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.16 | [`209897d54a77`](https://git.kernel.org/torvalds/c/209897d54a77) (loose) | [crypto] | chelsio - Fix IV updated in XTS operation |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.16 | [`8579e0767c23`](https://git.kernel.org/torvalds/c/8579e0767c23) (loose) | [crypto] | chelsio - make arrays sgl_ent_len and dsgl_ent_len static |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.16 | [`e1a018e607a3`](https://git.kernel.org/torvalds/c/e1a018e607a3) (loose) | [crypto] | chelsio - Remove dst sg size zero check |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.16 | [`d7fc6cfdf1ef`](https://git.kernel.org/torvalds/c/d7fc6cfdf1ef) (loose) | [crypto] | chelsio - remove redundant assignments to reqctx and dst_size |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.16 | [`8c9478a400b7`](https://git.kernel.org/torvalds/c/8c9478a400b7) (loose) | [crypto] | qat - reduce stack size with KASAN |  | generic code, tag [crypto] | 3.10.0-893 |
| CANDIDATE | 4.17 | [`9ce285cfe360`](https://git.kernel.org/torvalds/c/9ce285cfe360) | [crypto] | .gitignore: move *-asn1.[ch] patterns to the top-level .gitignore |  | generic code, tag [crypto] | 3.10.0-1031 |
| CANDIDATE | 4.17 | [`eb02c38f0197`](https://git.kernel.org/torvalds/c/eb02c38f0197) (loose) | [crypto] | api - Keep failed instances alive |  | generic code, tag [crypto] | 3.10.0-903 |
| CANDIDATE | 4.17 | [`eb5265317585`](https://git.kernel.org/torvalds/c/eb5265317585) (loose) | [crypto] | chelsio - don't leak pointers to authenc keys |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.17 | [`7ffb911882a3`](https://git.kernel.org/torvalds/c/7ffb911882a3) (loose) | [crypto] | chelsio - Fix iv passed in fallback path for rfc3686 |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.17 | [`1efb892b6c3c`](https://git.kernel.org/torvalds/c/1efb892b6c3c) (loose) | [crypto] | chelsio - Make function aead_ccm_validate_input static |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.17 | [`80862bd66a1e`](https://git.kernel.org/torvalds/c/80862bd66a1e) (loose) | [crypto] | chelsio - no csum offload for ipsec path |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.17 | [`6f76672bd650`](https://git.kernel.org/torvalds/c/6f76672bd650) (loose) | [crypto] | chelsio - Remove declaration of static function from header |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.17 | [`5fb78dba1667`](https://git.kernel.org/torvalds/c/5fb78dba1667) (loose) | [crypto] | chelsio - Update IV before sending request to HW |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.17 | [`125d01caae30`](https://git.kernel.org/torvalds/c/125d01caae30) (loose) | [crypto] | chelsio - Use kernel round function to align lengths |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.17 | [`5110e65536f3`](https://git.kernel.org/torvalds/c/5110e65536f3) (loose) | [crypto] | chelsio -Split Hash requests for large scatter gather list |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | 4.17 | [`ab6815d028f3`](https://git.kernel.org/torvalds/c/ab6815d028f3) (loose) | [crypto] | qat - don't leak pointers to authenc keys |  | generic code, tag [crypto] | 3.10.0-1031 |
| CANDIDATE | 4.17 | [`9f32bb5358bb`](https://git.kernel.org/torvalds/c/9f32bb5358bb) (loose) | [crypto] | qat - Make several functions static |  | generic code, tag [crypto] | 3.10.0-1031 |
| CANDIDATE | 4.17 | [`efe3de79e0b5`](https://git.kernel.org/torvalds/c/efe3de79e0b5) | [security] | selinux: kasan: slab-out-of-bounds in xattr_getsecurity |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-907 |
| CANDIDATE | 4.17 | [`333e18c5cc74`](https://git.kernel.org/torvalds/c/333e18c5cc74) (loose) | [crypto] | testmgr - Fix incorrect values in PKCS#1 test vector |  | CONFIG_CRYPTO=y in A37 | 3.10.0-893 |
| CANDIDATE | 4.18 | [`1ebe6da2f989`](https://git.kernel.org/torvalds/c/1ebe6da2f989) (loose) | [crypto] | qat - Add MODULE_FIRMWARE for all qat drivers |  | generic code, tag [crypto] | 3.10.0-1031 |
| CANDIDATE | 4.18 | [`6396bb221514`](https://git.kernel.org/torvalds/c/6396bb221514) | [crypto] | treewide: kzalloc() -> kcalloc() |  | generic code, tag [crypto] | 3.10.0-1031 |
| CANDIDATE | 4.18 | [`590b5b7d8671`](https://git.kernel.org/torvalds/c/590b5b7d8671) | [crypto] | treewide: kzalloc_node() -> kcalloc_node() |  | generic code, tag [crypto] | 3.10.0-1031 |
| CANDIDATE | 4.19 | [`0868def3e410`](https://git.kernel.org/torvalds/c/0868def3e410) | [crypto] | crypto: blkcipher - fix crash flushing dcache in error path |  | CONFIG_CRYPTO=y in A37 | 3.10.0-1081 |
| CANDIDATE | 4.19 | [`ba439a6cbfa2`](https://git.kernel.org/torvalds/c/ba439a6cbfa2) (loose) | [crypto] | qat - Fix KASAN stack-out-of-bounds bug in adf_probe() |  | generic code, tag [crypto] | 3.10.0-1031 |
| CANDIDATE | 4.19 | [`8e8c0386b1fd`](https://git.kernel.org/torvalds/c/8e8c0386b1fd) (loose) | [crypto] | qat/adf_aer - Replace GFP_ATOMIC with GFP_KERNEL in adf_dev_aer_schedule_reset() |  | generic code, tag [crypto] | 3.10.0-1031 |
| CANDIDATE | 4.19 | [`bb2964810233`](https://git.kernel.org/torvalds/c/bb2964810233) (loose) | [crypto] | vmac - separate tfm and request context |  | generic code, tag [crypto] | 3.10.0-1078 |
| CANDIDATE | 4.20 | [`cfa1d74495aa`](https://git.kernel.org/torvalds/c/cfa1d74495aa) (loose) | [crypto] | qat - move temp buffers off the stack |  | generic code, tag [crypto] | 3.10.0-1031 |
| CANDIDATE | 4.20 | [`1299c9cfae6d`](https://git.kernel.org/torvalds/c/1299c9cfae6d) (loose) | [crypto] | qat - Remove VLA usage |  | generic code, tag [crypto] | 3.10.0-1031 |
| CANDIDATE | 5.0 | [`8362ea16f69f`](https://git.kernel.org/torvalds/c/8362ea16f69f) (loose) | [crypto] | chcr - ESN for Inline IPSec Tx |  | generic code, tag [crypto] | 3.10.0-1003 |
| CANDIDATE | 5.0 | [`c35828ea906a`](https://git.kernel.org/torvalds/c/c35828ea906a) (loose) | [crypto] | chcr - small packet Tx stalls the queue |  | generic code, tag [crypto] | 3.10.0-1003 |
| CANDIDATE | 5.0 | [`fc6176a240ae`](https://git.kernel.org/torvalds/c/fc6176a240ae) (loose) | [crypto] | chelsio - clean up various indentation issues |  | generic code, tag [crypto] | 3.10.0-1003 |
| CANDIDATE | 5.0 | [`c4f6d44d774e`](https://git.kernel.org/torvalds/c/c4f6d44d774e) (loose) | [crypto] | chelsio - cleanup:send addr as value in function argument |  | generic code, tag [crypto] | 3.10.0-1003 |
| CANDIDATE | 5.0 | [`f31ba0f95f19`](https://git.kernel.org/torvalds/c/f31ba0f95f19) (loose) | [crypto] | chelsio - Fix wrong error counter increments |  | generic code, tag [crypto] | 3.10.0-1003 |
| CANDIDATE | 5.0 | [`fef4912b66d6`](https://git.kernel.org/torvalds/c/fef4912b66d6) (loose) | [crypto] | chelsio - Handle PCI shutdown event |  | generic code, tag [crypto] | 3.10.0-1003 |
| CANDIDATE | 5.0 | [`3cc04c160208`](https://git.kernel.org/torvalds/c/3cc04c160208) (loose) | [crypto] | chelsio - remove set but not used variable 'kctx_len' |  | generic code, tag [crypto] | 3.10.0-1003 |
| CANDIDATE | 5.0 | [`6501ab5ed4d9`](https://git.kernel.org/torvalds/c/6501ab5ed4d9) (loose) | [crypto] | chelsio - Reset counters on cxgb4 Detach |  | generic code, tag [crypto] | 3.10.0-1003 |
| CANDIDATE | 5.0 | [`d5a4dfbdaf54`](https://git.kernel.org/torvalds/c/d5a4dfbdaf54) (loose) | [crypto] | chelsio - Use same value for both channel in single WR |  | generic code, tag [crypto] | 3.10.0-1003 |
| CANDIDATE | 5.0 | [`a053c866496d`](https://git.kernel.org/torvalds/c/a053c866496d) (loose) | [crypto] | chelsio: use skb_sec_path helper |  | generic code, tag [crypto] | 3.10.0-1003 |
| CANDIDATE | 5.0 | [`8f9c46934848`](https://git.kernel.org/torvalds/c/8f9c46934848) | [crypto] | crypto: authenc - fix parsing key with misaligned rta_len | CVE-2020-10769 | CONFIG_CRYPTO=y in A37 | 3.10.0-1160.7.1 |
| CANDIDATE | 5.0 | [`9db67581b91d`](https://git.kernel.org/torvalds/c/9db67581b91d) | [security] | keys-encrypted: add nvdimm key format type to encrypted keys |  | CONFIG_KEYS=y in A37 | 3.10.0-1034 |
| CANDIDATE | 5.0 | [`2cbdcb882f97`](https://git.kernel.org/torvalds/c/2cbdcb882f97) | [security] | selinux: always allow mounting submounts |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-1029 |
| CANDIDATE | 5.0 | [`ee1a84fdfeed`](https://git.kernel.org/torvalds/c/ee1a84fdfeed) | [security] | selinux: overhaul sidtab to fix bug and improve performance |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-1029 |
| CANDIDATE | 5.0 | [`5386e6caa671`](https://git.kernel.org/torvalds/c/5386e6caa671) | [security] | selinux: refactor sidtab conversion |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-1029 |
| CANDIDATE | 5.0 | [`24ed7fdae669`](https://git.kernel.org/torvalds/c/24ed7fdae669) | [security] | selinux: use separate table for initial SID lookup |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-1029 |
| CANDIDATE | 5.1 | [`4da66b758b25`](https://git.kernel.org/torvalds/c/4da66b758b25) (loose) | [crypto] | chelsio - avoid using sa_entry imm |  | generic code, tag [crypto] | 3.10.0-1043 |
| CANDIDATE | 5.1 | [`66af86d93ce3`](https://git.kernel.org/torvalds/c/66af86d93ce3) (loose) | [crypto] | chelsio - check set_msg_len overflow in generate_b0 |  | generic code, tag [crypto] | 3.10.0-1003 |
| CANDIDATE | 5.1 | [`b04a27ca175d`](https://git.kernel.org/torvalds/c/b04a27ca175d) (loose) | [crypto] | chelsio - Fix passing zero to 'PTR_ERR' warning in chcr_aead_op |  | generic code, tag [crypto] | 3.10.0-1043 |
| CANDIDATE | 5.1 | [`8cd9d183731a`](https://git.kernel.org/torvalds/c/8cd9d183731a) (loose) | [crypto] | chelsio - Fixed Traffic Stall |  | generic code, tag [crypto] | 3.10.0-1043 |
| CANDIDATE | 5.1 | [`27c6feb0fb33`](https://git.kernel.org/torvalds/c/27c6feb0fb33) (loose) | [crypto] | chelsio - Inline single pdu only |  | generic code, tag [crypto] | 3.10.0-1043 |
| CANDIDATE | 5.1 | [`e12468241b19`](https://git.kernel.org/torvalds/c/e12468241b19) (loose) | [crypto] | chelsio - remove set but not used variables 'adap' |  | generic code, tag [crypto] | 3.10.0-1003 |
| CANDIDATE | 5.2 | [`21d4120ec6f5`](https://git.kernel.org/torvalds/c/21d4120ec6f5) | [crypto] | crypto: user - prevent operating on larval algorithms |  | CONFIG_CRYPTO=y in A37 | 3.10.0-1081 |
| CANDIDATE | 5.2 | [`05174c95b83f`](https://git.kernel.org/torvalds/c/05174c95b83f) | [security] | selinux: do not report error on connect(AF_UNSPEC) |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-1160.8.1 |
| CANDIDATE | 5.4 | [`2a5243937c70`](https://git.kernel.org/torvalds/c/2a5243937c70) | [security] | selinux: fix context string corruption in convert_context() |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-1105 |
| CANDIDATE | 5.5 | [`ffdde5932042`](https://git.kernel.org/torvalds/c/ffdde5932042) | [crypto] | crypto: user - fix memory leak in crypto_report | CVE-2019-18808 CVE-2019-19062 | CONFIG_CRYPTO=y in A37 | 3.10.0-1144 |
| CANDIDATE | 5.6 | [`d8db60cb23e4`](https://git.kernel.org/torvalds/c/d8db60cb23e4) | [security] | selinux: ensure we cleanup the internal AVC counters on error in avc_insert() |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-1136 |
| CANDIDATE | 5.7 | [`fb73974172ff`](https://git.kernel.org/torvalds/c/fb73974172ff) | [security] | selinux: properly handle multiple messages in selinux_netlink_send() | CVE-2020-10751 | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-1150 |
| CANDIDATE | — | — | [crypto] | Add 2 missing __exit_p |  | generic code, tag [crypto] | 3.10.0-296 |
| CANDIDATE | — | — | [crypto] | Add missing chunk from addition of zlib tests |  | generic code, tag [crypto] | 3.10.0-797 |
| CANDIDATE | — | — | [crypto] | aes: AES CTR x86_64 "by8" AVX optimization |  | generic code, tag [crypto] | 3.10.0-231 |
| CANDIDATE | — | — | [crypto] | aesni-intel: Add support for 192 & 256 bit keys to AESNI RFC4106 |  | generic code, tag [crypto] | 3.10.0-224 |
| CANDIDATE | — | — | [crypto] | aesni: add generic gcm(aes) |  | generic code, tag [crypto] | 3.10.0-770 |
| CANDIDATE | — | — | [crypto] | aesni: Add support for 192 & 256 bit keys to AESNI RFC4106 |  | generic code, tag [crypto] | 3.10.0-875 |
| CANDIDATE | — | — | [crypto] | aesni: add wrapper for generic gcm(aes) |  | generic code, tag [crypto] | 3.10.0-842 |
| CANDIDATE | — | — | [crypto] | aesni: AVX and AVX2 version of AESNI-GCM encode and decode |  | generic code, tag [crypto] | 3.10.0-770 |
| CANDIDATE | — | — | [crypto] | aesni: fix "by8" variant for 128 bit keys |  | generic code, tag [crypto] | 3.10.0-231 |
| CANDIDATE | — | — | [crypto] | aesni: fix build on x86 (32bit) |  | generic code, tag [crypto] | 3.10.0-770 |
| CANDIDATE | — | — | [crypto] | aesni: fix counter overflow handling in "by8" variant |  | generic code, tag [crypto] | 3.10.0-231 |
| CANDIDATE | — | — | [crypto] | aesni: fix ivsize for generic gcm(aes) |  | generic code, tag [crypto] | 3.10.0-829 |
| CANDIDATE | — | — | [crypto] | aesni: fix typo in generic_gcmaes_decrypt |  | generic code, tag [crypto] | 3.10.0-842 |
| CANDIDATE | — | — | [crypto] | aesni: make AVX AES-GCM work with all valid auth_tag_len |  | generic code, tag [crypto] | 3.10.0-770 |
| CANDIDATE | — | — | [crypto] | aesni: make AVX AES-GCM work with any aadlen |  | generic code, tag [crypto] | 3.10.0-770 |
| CANDIDATE | — | — | [crypto] | aesni: make AVX2 AES-GCM work with all valid auth_tag_len |  | generic code, tag [crypto] | 3.10.0-770 |
| CANDIDATE | — | — | [crypto] | aesni: make AVX2 AES-GCM work with any aadlen |  | generic code, tag [crypto] | 3.10.0-770 |
| CANDIDATE | — | — | [crypto] | aesni: make non-AVX AES-GCM work with all valid auth_tag_len |  | generic code, tag [crypto] | 3.10.0-770 |
| CANDIDATE | — | — | [crypto] | aesni: make non-AVX AES-GCM work with any aadlen |  | generic code, tag [crypto] | 3.10.0-770 |
| CANDIDATE | — | — | [crypto] | aesni: remove unused defines in "by8" variant |  | generic code, tag [crypto] | 3.10.0-231 |
| CANDIDATE | — | — | [crypto] | af_alg: Allow af_af_alg_release_parent to be called on nokey path |  | generic code, tag [crypto] | 3.10.0-911 |
| CANDIDATE | — | — | [crypto] | af_alg: Forbid bind(2) when nokey child sockets are present |  | generic code, tag [crypto] | 3.10.0-911 |
| CANDIDATE | — | — | [crypto] | af_alg: properly label AF_ALG socket |  | generic code, tag [crypto] | 3.10.0-205 |
| CANDIDATE | — | — | [crypto] | ahash: Add real ahash walk interface |  | generic code, tag [crypto] | 3.10.0-238 |
| CANDIDATE | — | — | [crypto] | ahash: initialize entry len for null input in crypto hash sg list walk |  | generic code, tag [crypto] | 3.10.0-238 |
| CANDIDATE | — | — | [crypto] | algif: avoid excessive use of socket buffer in skcipher |  | generic code, tag [crypto] | 3.10.0-186 |
| CANDIDATE | — | — | [crypto] | algif_hash: Fix NULL hash crash with shash |  | generic code, tag [crypto] | 3.10.0-875 |
| CANDIDATE | — | — | [crypto] | algif_hash: Fix result clobbering in recvmsg |  | generic code, tag [crypto] | 3.10.0-875 |
| CANDIDATE | — | — | [crypto] | algif_hash: Remove custom release parent function |  | generic code, tag [crypto] | 3.10.0-855 |
| CANDIDATE | — | — | [crypto] | algif_hash: wait for crypto_ahash_init() to complete |  | generic code, tag [crypto] | 3.10.0-875 |
| CANDIDATE | — | — | [crypto] | algif_skcipher: Load TX SG list after waiting | CVE-2017-13215 | generic code, tag [crypto] | 3.10.0-903 |
| CANDIDATE | — | — | [crypto] | algif_skcipher: Remove custom release parent function |  | generic code, tag [crypto] | 3.10.0-855 |
| CANDIDATE | — | — | [crypto] | ansi_cprng: Fix off by one error in non-block size request |  | generic code, tag [crypto] | 3.10.0-109 |
| CANDIDATE | — | — | [crypto] | api: fix finding algorithm currently being tested |  | generic code, tag [crypto] | 3.10.0-949 |
| CANDIDATE | — | — | [crypto] | api: Only abort operations on fatal signal |  | generic code, tag [crypto] | 3.10.0-875 |
| CANDIDATE | — | — | [crypto] | asymmetric_keys: Add an EFI signature blob parser and key loader |  | CONFIG_KEYS=y in A37 | 3.10.0-52 |
| CANDIDATE | — | — | [crypto] | asymmetric_keys: Add an EFI signature blob parser and key loader |  | CONFIG_KEYS=y in A37 | 3.10.0-10 |
| CANDIDATE | — | — | [crypto] | authenc: Export key parsing helper function |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | ccp: Do not support CCP crypto API in RHEL7 |  | generic code, tag [crypto] | 3.10.0-580 |
| CANDIDATE | — | — | [crypto] | chainiv: Move IV seeding into init function |  | generic code, tag [crypto] | 3.10.0-289 |
| CANDIDATE | — | — | [crypto] | chcr - Set hmac_ctrl bit to use HW register HMAC_CFG 456 |  | generic code, tag [crypto] | 3.10.0-839 |
| CANDIDATE | — | — | [crypto] | chelsio - Remove unwanted initialization |  | generic code, tag [crypto] | 3.10.0-884 |
| CANDIDATE | — | — | [crypto] | chelsio - Send IV as Immediate for cipher algo |  | generic code, tag [crypto] | 3.10.0-921 |
| CANDIDATE | — | — | [crypto] | chelsio: Fix memory corruption in DMA Mapped buffers |  | generic code, tag [crypto] | 3.10.0-970 |
| CANDIDATE | — | — | [crypto] | chelsio: Fix src buffer dma length |  | generic code, tag [crypto] | 3.10.0-864 |
| CANDIDATE | — | — | [crypto] | chelsio: introduce __skb_put_zero() |  | generic code, tag [crypto] | 3.10.0-864 |
| CANDIDATE | — | — | [crypto] | chelsio: make skb_put & friends return void pointers |  | generic code, tag [crypto] | 3.10.0-864 |
| CANDIDATE | — | — | [crypto] | chelsio: Move DMA un/mapping to chcr from lld cxgb4 driver |  | generic code, tag [crypto] | 3.10.0-864 |
| CANDIDATE | — | — | [crypto] | chelsio: Remove allocation of sg list to implement 2K limit of dsgl header |  | generic code, tag [crypto] | 3.10.0-864 |
| CANDIDATE | — | — | [crypto] | chelsio: Remove separate buffer used for DMA map B0 block in CCM |  | generic code, tag [crypto] | 3.10.0-921 |
| CANDIDATE | — | — | [crypto] | chelsio: Remove unused parameter |  | generic code, tag [crypto] | 3.10.0-864 |
| CANDIDATE | — | — | [crypto] | chelsio: request to HW should wrap |  | generic code, tag [crypto] | 3.10.0-921 |
| CANDIDATE | — | — | [crypto] | crc-t10dif: add MODULE_SOFTDEP |  | generic code, tag [crypto] | 3.10.0-48 |
| CANDIDATE | — | — | [crypto] | crct10dif: Accelerated CRC T10 DIF computation with PCLMULQDQ instruction |  | generic code, tag [crypto] | 3.10.0-48 |
| CANDIDATE | — | — | [crypto] | crct10dif: Add fallback for broken initrds |  | generic code, tag [crypto] | 3.10.0-48 |
| CANDIDATE | — | — | [crypto] | crct10dif: Glue code to cast accelerated CRCT10DIF assembly as a crypto transform |  | generic code, tag [crypto] | 3.10.0-48 |
| CANDIDATE | — | — | [crypto] | crct10dif: Simple correctness and speed test for CRCT10DIF hash |  | generic code, tag [crypto] | 3.10.0-48 |
| CANDIDATE | — | — | [crypto] | crct10dif: Use PTR_RET |  | generic code, tag [crypto] | 3.10.0-48 |
| CANDIDATE | — | — | [crypto] | crct10dif: Wrap crc_t10dif function all to use crypto transform framework |  | generic code, tag [crypto] | 3.10.0-48 |
| CANDIDATE | — | — | [crypto] | cryptd: Add cryptd_max_cpu_qlen module parameter |  | generic code, tag [crypto] | 3.10.0-875 |
| CANDIDATE | — | — | [crypto] | cryptd: Add cryptd_max_cpu_qlen module parameter |  | generic code, tag [crypto] | 3.10.0-830 |
| CANDIDATE | — | — | [crypto] | cryptd: Add helpers to check whether a tfm is queued |  | generic code, tag [crypto] | 3.10.0-903 |
| CANDIDATE | — | — | [crypto] | cryptd: Fix AEAD request context corruption |  | generic code, tag [crypto] | 3.10.0-903 |
| CANDIDATE | — | — | [crypto] | crypto/pefile: Support multiple signatures in verify_pefile_signature |  | CONFIG_CRYPTO=y in A37 | 3.10.0-1159 |
| CANDIDATE | — | — | [crypto] | crypto/pefile: Tolerate other pefile signatures after first |  | CONFIG_CRYPTO=y in A37 | 3.10.0-1159 |
| CANDIDATE | — | — | [security] | device_cgroup: rework device access check and rule checking |  | generic code, tag [security] | 3.10.0-122 |
| CANDIDATE | — | — | [testmgr] | disable ECDH and DH in FIPS mode |  | generic code, tag [testmgr] | 3.10.0-844 |
| CANDIDATE | — | — | [security] | don't crash when selinux is disabled |  | generic code, tag [security] | 3.10.0-584 |
| CANDIDATE | — | — | [crypto] | drbg: Add DRBG test code to testmgr |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: Add stdrng alias and increase priority |  | generic code, tag [crypto] | 3.10.0-289 |
| CANDIDATE | — | — | [crypto] | drbg: Call CTR DRBG DF function only once |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: cleanup of preprocessor macros |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: compile the DRBG code |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: DRBG kernel configuration options |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: DRBG testmgr test vectors |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: drbg_exit() can be static |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: fix failure of generating multiple of 2**16 bytes |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: Fix format string for debugging statements |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: fix maximum value checks on 32 bit systems |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: fix memory corruption for AES192 |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: header file for DRBG |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: HMAC-SHA1 DRBG has crypto strength of 128 bits |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: Mix a time stamp into DRBG state |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: panic on continuous self test error |  | generic code, tag [crypto] | 3.10.0-224 |
| CANDIDATE | — | — | [crypto] | drbg: remove configuration of fixed values |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: Select correct DRBG core for stdrng |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: simplify ordering of linked list in drbg_ctr_df |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: SP800-90A Deterministic Random Bit Generator |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: Use Kconfig to ensure at least one RNG option is set |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | drbg: use of kernel linked list |  | generic code, tag [crypto] | 3.10.0-178 |
| CANDIDATE | — | — | [crypto] | eseqiv: Move IV seeding into init function |  | generic code, tag [crypto] | 3.10.0-289 |
| CANDIDATE | — | — | [crypto] | fips: only panic on bad/missing crypto mod signatures |  | generic code, tag [crypto] | 3.10.0-139 |
| CANDIDATE | — | — | [security] | fix cap_inode_getsecctx returning garbage |  | generic code, tag [security] | 3.10.0-6 |
| CANDIDATE | — | — | [security] | Grammar |  | generic code, tag [security] | 3.10.0-920 |
| CANDIDATE | — | — | [crypto] | hmac: require that the underlying hash algorithm is unkeyed |  | generic code, tag [crypto] | 3.10.0-1052 |
| CANDIDATE | — | — | [security] | keys, shmem: implement kernel private shmem inodes |  | generic code, tag [security] | 3.10.0-91 |
| CANDIDATE | — | — | [crypto] | keys/x509: Fix a spelling mistake |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | — | — | [security] | keys: add CONFIG_KEYS_COMPAT to Kconfig |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | — | — | [security] | keys: Don't leak a key reference if request_key() tries to use a revoked keyring |  | CONFIG_KEYS=y in A37 | 3.10.0-482 |
| CANDIDATE | — | — | [security] | keys: memory corruption or panic during key garbage collection | CVE-2014-9529 | CONFIG_KEYS=y in A37 | 3.10.0-249 |
| CANDIDATE | — | — | [security] | keys: properly zero out sensitive key material in big_key |  | CONFIG_KEYS=y in A37 | 3.10.0-794 |
| CANDIDATE | — | — | [security] | keys: Protect request_key() against a type with no match function | CVE-2017-2647 | CONFIG_KEYS=y in A37 | 3.10.0-686 |
| CANDIDATE | — | — | [security] | keys: Simplify KEYRING_SEARCH_{NO, DO}_STATE_CHECK flags |  | CONFIG_KEYS=y in A37 | 3.10.0-616 |
| CANDIDATE | — | — | [crypto] | krng: Remove krng |  | generic code, tag [crypto] | 3.10.0-289 |
| CANDIDATE | — | — | [security] | lsm: get comm using lock to avoid race in string printing |  | generic code, tag [security] | 3.10.0-290 |
| CANDIDATE | — | — | [security] | Make [un]register_lsm_notifier() null ops if !selinux_enabled |  | generic code, tag [security] | 3.10.0-964 |
| CANDIDATE | — | — | [crypto] | mcryptd: mcryptd_flist can be static |  | generic code, tag [crypto] | 3.10.0-238 |
| CANDIDATE | — | — | [crypto] | nx-842: dev_set_drvdata can no longer fail |  | generic code, tag [crypto] | 3.10.0-296 |
| CANDIDATE | — | — | [crypto] | nx-842: Fix handling of vmalloc addresses |  | generic code, tag [crypto] | 3.10.0-296 |
| CANDIDATE | — | — | [crypto] | nx-842: Mask XERS0 bit in return value |  | generic code, tag [crypto] | 3.10.0-347 |
| CANDIDATE | — | — | [crypto] | nx: 842 - Add CRC and validation support |  | generic code, tag [crypto] | 3.10.0-331 |
| CANDIDATE | — | — | [crypto] | nx: add offset to nx_build_sg_lists() |  | generic code, tag [crypto] | 3.10.0-19 |
| CANDIDATE | — | — | [crypto] | nx: fix concurrency issue |  | generic code, tag [crypto] | 3.10.0-10 |
| CANDIDATE | — | — | [crypto] | nx: fix GCM for zero length messages |  | generic code, tag [crypto] | 3.10.0-19 |
| CANDIDATE | — | — | [crypto] | nx: fix limits to sg lists for AES-CBC |  | generic code, tag [crypto] | 3.10.0-19 |
| CANDIDATE | — | — | [crypto] | nx: fix limits to sg lists for AES-CCM |  | generic code, tag [crypto] | 3.10.0-19 |
| CANDIDATE | — | — | [crypto] | nx: fix limits to sg lists for AES-CTR |  | generic code, tag [crypto] | 3.10.0-19 |
| CANDIDATE | — | — | [crypto] | nx: fix limits to sg lists for AES-ECB |  | generic code, tag [crypto] | 3.10.0-19 |
| CANDIDATE | — | — | [crypto] | nx: fix limits to sg lists for AES-GCM |  | generic code, tag [crypto] | 3.10.0-19 |
| CANDIDATE | — | — | [crypto] | nx: fix limits to sg lists for AES-XCBC |  | generic code, tag [crypto] | 3.10.0-19 |
| CANDIDATE | — | — | [crypto] | nx: fix limits to sg lists for SHA-2 |  | generic code, tag [crypto] | 3.10.0-9 |
| CANDIDATE | — | — | [crypto] | nx: fix nx-aes-gcm verification |  | generic code, tag [crypto] | 3.10.0-13 |
| CANDIDATE | — | — | [crypto] | nx: fix physical addresses added to sg lists |  | generic code, tag [crypto] | 3.10.0-9 |
| CANDIDATE | — | — | [crypto] | nx: fix SHA-2 for chunks bigger than block size |  | generic code, tag [crypto] | 3.10.0-19 |
| CANDIDATE | — | — | [crypto] | nx: fix XCBC for zero length messages |  | generic code, tag [crypto] | 3.10.0-19 |
| CANDIDATE | — | — | [crypto] | nx: saves chaining value from co-processor |  | generic code, tag [crypto] | 3.10.0-9 |
| CANDIDATE | — | — | [crypto] | pkcs7: Add a missing static |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | — | — | [crypto] | pkcs7: Digest the data in a signed-data message |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | — | — | [crypto] | pkcs7: Find intersection between PKCS#7 message and known, trusted keys |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | — | — | [crypto] | pkcs7: Find the right key in the PKCS#7 key list and verify the signature |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | — | — | [crypto] | pkcs7: fix sparse non static symbol warning |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | — | — | [crypto] | pkcs7: Fix the parser cleanup to drain parsed out X.509 certs |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | — | — | [crypto] | pkcs7: Implement a parser for RFC 2315 |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | — | — | [crypto] | pkcs7: Missing inclusion of linux/err.h |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | — | — | [crypto] | pkcs7: Provide a key type for testing PKCS#7 |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | — | — | [crypto] | pkcs7: Provide a single place to do signed info block freeing |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | — | — | [crypto] | pkcs7: Use x509_request_asymmetric_key() |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | — | — | [crypto] | pkcs7: Verify internal certificate chain |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | — | — | [crypto] | pkcs7: X.509 certificate issuer and subject are mandatory fields in the ASN.1 |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | — | — | [crypto] | qat - Fix 64 bytes requests |  | generic code, tag [crypto] | 3.10.0-245 |
| CANDIDATE | — | — | [crypto] | qat - Fix DMA on stack memory |  | generic code, tag [crypto] | 3.10.0-632 |
| CANDIDATE | — | — | [crypto] | qat: change ae_num to ae_id |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: change slice->regions to slice->region |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: checkpatch blank lines |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: copy back iv on completion |  | generic code, tag [crypto] | 3.10.0-685 |
| CANDIDATE | — | — | [crypto] | qat: Enable interrupts from all 32 bundles |  | generic code, tag [crypto] | 3.10.0-188 |
| CANDIDATE | — | — | [crypto] | qat: Enforce valid numa configuration |  | generic code, tag [crypto] | 3.10.0-192 |
| CANDIDATE | — | — | [crypto] | qat: Fix build problem with O= |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: Fix error path crash when no firmware is present |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: Fix random config build warnings |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: Fix return value check in adf_chr_drv_create() |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: Fixed new checkpatch warnings |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: Fixed SKU1 dev issue |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: Intel(R) QAT accelengine part of fw loader |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: Intel(R) QAT crypto interface |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: Intel(R) QAT DH895xcc accelerator |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: Intel(R) QAT driver framework |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: Intel(R) QAT FW interface |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: Intel(R) QAT transport code |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: Intel(R) QAT ucode part of fw loader |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: Prevent dma mapping zero length assoc data |  | generic code, tag [crypto] | 3.10.0-192 |
| CANDIDATE | — | — | [crypto] | qat: remove an unneeded cast |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: remove unnecessary parentheses |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: remove unnecessary return codes |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: remove unneeded header |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: Update to makefiles |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: Updated Firmware Info Metadata |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: Updated print outputs |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: Use hweight for bit counting |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: use min_t macro |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | qat: Use pci_enable_msix_exact() instead of pci_enable_msix() |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | rng: prevent entry into drbg test path from algif_rng |  | generic code, tag [crypto] | 3.10.0-854 |
| CANDIDATE | — | — | [crypto] | rng: RNGs must return 0 in success case |  | generic code, tag [crypto] | 3.10.0-232 |
| CANDIDATE | — | — | [crypto] | rsa: Add Makefile dependencies to fix parallel builds |  | generic code, tag [crypto] | 3.10.0-903 |
| CANDIDATE | — | — | [crypto] | rsa: Disable fips admission of rsa crypto |  | generic code, tag [crypto] | 3.10.0-797 |
| CANDIDATE | — | — | [crypto] | salsa20: fix blkcipher_walk API usage | CVE-2017-17805 | generic code, tag [crypto] | 3.10.0-903 |
| CANDIDATE | — | — | [crypto] | scatterwalk: Remove unnecessary BUG in scatterwalk_start |  | generic code, tag [crypto] | 3.10.0-770 |
| CANDIDATE | — | — | [security] | selinux/nlmsg: add RTM_DELNSID |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-260 |
| CANDIDATE | — | — | [security] | selinux: allow security_sb_clone_mnt_opts to enable/disable native labeling behavior |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-680 |
| CANDIDATE | — | — | [security] | selinux: correct locking in selinux_netlbl_socket_connect() |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-61 |
| CANDIDATE | — | — | [security] | selinux: define mapping for new Secure Boot capability |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-10 |
| CANDIDATE | — | — | [security] | selinux: fix SECURITY_LSM_NATIVE_LABELS on reused superblock |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-1035 |
| CANDIDATE | — | — | [security] | selinux: mark unsupported policy capabilities as reserved |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-948 |
| CANDIDATE | — | — | [security] | selinux: policydb: fix byte order and alignment issues |  | CONFIG_SECURITY_SELINUX=y in A37 | 3.10.0-1029 |
| CANDIDATE | — | — | [crypto] | seqiv: Move IV seeding into init function |  | generic code, tag [crypto] | 3.10.0-289 |
| CANDIDATE | — | — | [crypto] | set sk to NULL when af_alg_release |  | generic code, tag [crypto] | 3.10.0-1085 |
| CANDIDATE | — | — | [crypto] | sha-mb: multibuffer crypto infrastructure |  | generic code, tag [crypto] | 3.10.0-238 |
| CANDIDATE | — | — | [crypto] | sha-mb: SHA1 multibuffer algorithm data structures |  | generic code, tag [crypto] | 3.10.0-238 |
| CANDIDATE | — | — | [crypto] | sha-mb: SHA1 multibuffer crypto computation (x8 AVX2) |  | generic code, tag [crypto] | 3.10.0-238 |
| CANDIDATE | — | — | [crypto] | sha-mb: SHA1 multibuffer job manager and glue code |  | generic code, tag [crypto] | 3.10.0-238 |
| CANDIDATE | — | — | [crypto] | sha-mb: SHA1 multibuffer submit and flush routines for AVX2 |  | generic code, tag [crypto] | 3.10.0-238 |
| CANDIDATE | — | — | [crypto] | sha-mb: sha1_mb_alg_state can be static |  | generic code, tag [crypto] | 3.10.0-238 |
| CANDIDATE | — | — | [crypto] | sha: SHA1 transform x86_64 AVX2 |  | generic code, tag [crypto] | 3.10.0-238 |
| CANDIDATE | — | — | [crypto] | Sort drivers/crypto/Makefile |  | generic code, tag [crypto] | 3.10.0-165 |
| CANDIDATE | — | — | [crypto] | testmgr - Fix GCM test vector IV overrun |  | CONFIG_CRYPTO=y in A37 | 3.10.0-632 |
| CANDIDATE | — | — | [crypto] | testmgr: Enable DH/ECDH in FIPS mode |  | CONFIG_CRYPTO=y in A37 | 3.10.0-875 |
| CANDIDATE | — | — | [crypto] | testmgr: fix RNG return code enforcement |  | CONFIG_CRYPTO=y in A37 | 3.10.0-238 |
| CANDIDATE | — | — | [crypto] | testmgr: mark rfc4106(gcm(aes)) as fips_allowed |  | CONFIG_CRYPTO=y in A37 | 3.10.0-230 |
| CANDIDATE | — | — | [crypto] | vmx - Fix assembler perl to use _GLOBAL |  | generic code, tag [crypto] | 3.10.0-459 |
| CANDIDATE | — | — | [crypto] | x509: Add bits needed for PKCS#7 |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | — | — | [crypto] | x509: don't reject not-yet-valid keys |  | CONFIG_KEYS=y in A37 | 3.10.0-29 |
| CANDIDATE | — | — | [crypto] | x509: Export certificate parse and free functions |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | — | — | [crypto] | x509: Need to export x509_request_asymmetric_key() |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | — | — | [crypto] | x509: x509_request_asymmetric_keys() doesn't need string length arguments |  | CONFIG_KEYS=y in A37 | 3.10.0-168 |
| CANDIDATE | — | — | [security] | xattr: use RH_KABI_CONST to avoid security_inode_init_security checksum change |  | generic code, tag [security] | 3.10.0-1052 |
