{lib, ...}: {
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  nix.settings = {
    experimental-features = [
      "nix-command"
      "flakes"
    ];
    substituters = ["https://aseipp-nix-cache.freetls.fastly.net"];
    auto-optimise-store = true;
  };
  networking.hostName = "nixos";
  system.stateVersion = "24.11";
  imports = [
    ../common/user/edu.nix
    ../common/apps/pcloud.nix
    ../common/packages.nix
    ../common/desktops/sway.nix
    ./hardware.nix
  ];
}
