{pkgs, ...}: {
  networking.hostName = "nagakiba";
  system.stateVersion = "24.11";
  nixpkgs.config.allowUnfree = true;
  nix.settings = {
    experimental-features = [
      "nix-command"
      "flakes"
    ];
    substituters = ["https://aseipp-nix-cache.freetls.fastly.net"];
    auto-optimise-store = true;
  };
  environment.systemPackages = with pkgs; [home-manager];
  imports = [
    ../common/user/edu.nix
    ../common/desktops/sway.nix
    ../common/desktops/fonts.nix
    ./hardware.nix

    ## Services
    # ../common/services/android.nix
    # ../common/services/docker.nix
    # ../common/services/flatpak.nix
    ../common/services/libinput.nix
    # ../common/services/mpd.nix
    ../common/services/syncthing.nix
    # ../common/services/tlp.nix
  ];
}
