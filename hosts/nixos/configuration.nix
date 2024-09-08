{
  imports = [
    ./hardware.nix
    ./packages.nix
    ./packages-unstable.nix
    ./modules/bundle.nix
  ];

  networking.networkmanager.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@tty1".enable = false;

  networking.hostName = "nixos";

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "pt_BR.UTF-8";

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  system.stateVersion = "24.05";
}
