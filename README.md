Settings I recommend for most NixOS systems.

hardening.nix sets various settings to harden the system, with limited impact on compatibility.

dhcp-anon.nix enable RFC 4941 IPv6 privacy exensions and sets RFC 7844 recommendations for DHCP anonymization, including stable MAC address randomization.

interactive performance.nix set CPU and IO schedulers tuned for optimal interactive performance, as well as enabling TCP BBR and RFC 4821. These schedulers are tuned for interactivity, and as such are optimal for graphical desktops. Servers will likely be better served by different schedulers, depending on hardware and use case.

zramswap.nix enables swap on zram (set to 1/2 RAM for systems with <32GiB, or 16GiB for systems with >32GiB) and sets swappiness to optimal settings for it. This should not be used in conjunction with a swap file/partition/zswap.
