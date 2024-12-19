{
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
    ../common/network.nix
    ../common/services/synching.nix
    ../common/apps/pcloud.nix
    ../common/sound.nix
    ../common/packages.nix
    ../common/opts.nix
    ../common/desktops/gnome.nix
    ./hardware.nix
  ];
}
