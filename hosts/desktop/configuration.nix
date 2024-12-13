{
  pkgs,
  inputs,
  ...
}: {
  #TODO Refatore-me Porfavor!!!
  imports = [
    ../../config/cachix.nix
    ../../modules/system
    ../../modules/system/hardware
    ../../modules/system/desktops
    ./hardware.nix
  ];

  services.udev = {
    extraRules = ''
      ACTION=="add", SUBSYSTEM=="usb", ATTR{idVendor}=="046d", ATTR{idProduct}=="c52b", ATTR{power/autosuspend}="0"
    '';
    packages = [pkgs.android-udev-rules];
  };

  services.flatpak.enable = true;

  services.syncthing = {
    enable = true;
    user = "edu";
    dataDir = "/home/edu/Sync/";
    openDefaultPorts = true;
  };

  networking.networkmanager.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  systemd.tmpfiles.rules = ["L+    /opt/rocm/hip   -    -    -     -    ${pkgs.rocmPackages.clr}"];

  networking.hostName = "nixos";

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "pt_BR.UTF-8";

  nix.settings = {
    experimental-features = [
      "nix-command"
      "flakes"
    ];
    substituters = ["https://aseipp-nix-cache.freetls.fastly.net"];
    auto-optimise-store = true;
  };

  system.stateVersion = "24.11";
}
