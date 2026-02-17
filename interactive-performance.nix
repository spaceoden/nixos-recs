{ lib, pkgs, ... }:
{

  #IO schedulers
  hardware.block.defaultScheduler = "bfq";
  hardware.block.scheduler = {
    "nvme[0-9]*" = "kyber"; # "none" is better on high end NVME drives
  };

  #bpfland scheduler
  services.scx = {
    enable = true;
    package = pkgs.scx.rustscheds;
    scheduler = "scx_bpfland";
  };

  #TCP BBR and RFC 4821
  boot.kernelModules = [ "tcp_bbr" ];
  boot.kernel.sysctl = {
    "net.ipv4.tcp_congestion_control" = "bbr";
    "net.ipv4.tcp_mtu_probing" = 1;
  };

}
