{ lib, pkgs, ... }:
{

  #automatically deploy updates
  system.autoUpgrade = {
    enable = true;
    randomizedDelaySec = "600"; #adds 0-10 minutes to trigger time to stagger updates
    operation = "boot";
  };

  #io-scheduler
  hardware.block.defaultScheduler = "kyber";
  hardware.block.defaultSchedulerRotational = "bfq";
  #this takes precedence over above defaultScheduler
  hardware.block.scheduler = {
    "mmcblk[0-9]*" = "bfq";
  };

  #clean up old deployments
  nix.optimise.automatic = true;
  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--delete-older-than 7d";
  };

  #randomize MAC
  networking.networkmanager = {
    ethernet.macAddress = "stable";
    wifi.macAddress = "random";
  };

  #lavd autopower scheduler
  services.scx = {
    enable = true;
    extraArgs = [ "--autopower" ];
    package = pkgs.scx.rustscheds;
    scheduler = "scx_lavd";
  };


}
