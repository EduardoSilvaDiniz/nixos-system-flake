{
  networking.networkmanager.enable = true;
  #TODO nao home
  # user.extraGroups = ["networkmanager"];
  networking.useDHCP = true;
  networking.nameservers = [
    "45.90.28.0#6cf6f6.dns.nextdns.io"
    "2a07:a8c0::#6cf6f6.dns.nextdns.io"
    "45.90.30.0#6cf6f6.dns.nextdns.io"
    "2a07:a8c1::#6cf6f6.dns.nextdns.io"
  ];

  services.resolved = {
    enable = true;
    dnssec = "true";
    domains = ["~."];
    fallbackDns = [
      "45.90.28.0#6cf6f6.dns.nextdns.io"
      "2a07:a8c0::#6cf6f6.dns.nextdns.io"
      "45.90.30.0#6cf6f6.dns.nextdns.io"
      "2a07:a8c1::#6cf6f6.dns.nextdns.io"
    ];
    dnsovertls = "true";
  };

  time.timeZone = "America/Sao_Paulo";

  location = {
    latitude = 43.70011;
    longitude = -79.4163;
  };
}
