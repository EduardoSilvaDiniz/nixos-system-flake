{
 imports = [./packages.nix ];
  wsl.enable = true;
  wsl.defaultUser = "nixos";
  networking.hostName = "wsl";
  nix.settings.experimental-features = ["nix-command" "flakes"];
  system.stateVersion = "24.11";
}
