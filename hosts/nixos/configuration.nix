{
  imports = [
    ./hardware-configuration.nix
    ./packages.nix

    ./modules/bundle.nix
  ];

  networking.networkmanager.enable = true;

  networking.hostName = "nixos";

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "pt_BR.UTF-8";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "24.05";
}
