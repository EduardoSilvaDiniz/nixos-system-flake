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
    ../common/network.nix
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
