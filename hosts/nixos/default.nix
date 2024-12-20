{pkgs, ...}: {
  networking.hostName = "nixos";
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
  ];
}
