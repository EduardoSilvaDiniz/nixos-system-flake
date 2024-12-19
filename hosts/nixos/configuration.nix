{
  pkgs,
  inputs,
  ...
}: {
  config = {
    networking.networkmanager.enable = true;
    networking.hostName = "nixos";
    time.timeZone = "America/Sao_Paulo";
    system.stateVersion = "24.11";
    i18n.defaultLocale = "pt_BR.UTF-8";
    destkop = {
      gnome = true;
      kde = false;
      hyprland = false;
    };
    hardware = {
      graphicApis = true;
    };

    nix.settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      substituters = ["https://aseipp-nix-cache.freetls.fastly.net"];
      auto-optimise-store = true;
    };
    imports = [
      ./modules/system
      ./hardware.nix
      ./modules/common.nix
    ];
    services.flatpak.enable = true;
    services.syncthing = {
      enable = true;
      user = "edu";
      dataDir = "/home/edu/Sync/";
      openDefaultPorts = true;
    };
  };
}
