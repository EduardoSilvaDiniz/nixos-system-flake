# configuration.nix
{ config, pkgs, ... }:
let
  unstable = import
    (builtins.fetchTarball https://github.com/nixos/nixpkgs/nixos-unstable)
    { config = config.nixpkgs.config; };
in
{
  environment.systemPackages = with pkgs; [
	unstable.neovim
  ];
}
