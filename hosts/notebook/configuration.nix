{pkgs, ...}: {
  imports = [
    ../../config/cachix.nix
    ../../modules/system/all.nix
    ../../modules/system/hardware/all.nix
    ./hardware.nix
  ];

  services.udev.packages = [pkgs.android-udev-rules];

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

  system.stateVersion = "24.05";
}
