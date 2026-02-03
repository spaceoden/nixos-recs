Settings I recommend for most NixOS systems.

hardening.nix sets various settings to harden the system, with limited impact on compatibility.

rfc-7844.nix sets RFC 7844 recommendations for DHCP anonymization, including stable MAC address randomization.

schedulers.nix sets CPU and IO schedulers tuned for optimal interactive performance.

zramswap.nix enables swap on zram (set to 1/2 RAM for systems with <16GB, or 8GB for systems with >16GB) and sets swappiness to optimal settings for it. This should not be used in conjunction with a swap file/partition/zswap.
