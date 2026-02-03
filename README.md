Settings I recommend for most NixOS systems.

hardening.nix sets various settings to harden the system, with limited impact on compatibility.

dhcp-anon.nix enable RFC 4941 IPv6 privacy exensions and sets RFC 7844 recommendations for DHCP anonymization, including stable MAC address randomization.

Both of the schedulers-*.nix files set CPU and IO schedulers tuned for optimal interactive performance. schedulers-workstation.nix uses the bpfland CPU scheduler. schedulers-gaming.nix uses the lavd CPU scheduler. Use one or the other, not both.

zramswap.nix enables swap on zram (set to 1/2 RAM for systems with <16GB, or 8GB for systems with >16GB) and sets swappiness to optimal settings for it. This should not be used in conjunction with a swap file/partition/zswap.
