# NixOS-WSL specific options are documented on the NixOS-WSL repository:
# https://github.com/nix-community/NixOS-WSL

{ config, lib, pkgs, ... }:{
#  imports = [ <nixos-wsl/modules> ];
  wsl.enable = true;
  wsl.defaultUser = "nixos";
  networking.hostName = "wsl";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "24.11";
  environment.systemPackages = with pkgs; [
    neovim
	git
  ];
}
