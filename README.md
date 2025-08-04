Settings I recommend for most NixOS systems.

hardening.nix sets various settings to harden the system, with limited impact on compatibility.

schedulers.nix sets CPU and IO schedulers tuned for optimal interactive performance.

zramswap.nix enables swap on zram (set to 63% RAM size) and sets swappiness to optimal settings for it. This should not be used in conjunction with a swap file/partition/zswap.
