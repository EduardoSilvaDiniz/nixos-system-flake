{ modules, pkgs, lib, ... }: {
  nix.settings = {
    experimental-features = [
      "nix-command"
      "flakes"
    ];
    substituters = ["https://aseipp-nix-cache.freetls.fastly.net"];
    auto-optimise-store = true;
  };

  networking.networkmanager.enable = true;
  networking.hostName = "nixos";
  time.timeZone = "America/Sao_Paulo";
  system.stateVersion = "24.11";
  i18n.defaultLocale = "pt_BR.UTF-8";


  imports = [
    ../common/synching.nix
    ../common/pcloud.nix
    ../common/sound.nix
    ../common/packages.nix
    ../common/opts.nix
    ../common/languages.nix
    ../common/extensions.nix
    ../common/desktops/gnome.nix
    ./hardware.nix
  ];
}

