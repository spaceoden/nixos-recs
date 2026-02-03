{
  networking.networkmanager = {
    ethernet.macAddress = "stable";
    wifi.macAddress = "stable";
    connectionConfig = {
      "connection.stable-id" = "$\{RANDOM}";
      "ipv4.dhcp-client-id" = "mac";
      "ipv6.dhcp-duid" = "ll";
      "ipv6.ip6-privacy" = 2;
    };
  };
}
