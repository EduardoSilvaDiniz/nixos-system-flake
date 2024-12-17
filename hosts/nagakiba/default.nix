{
  inputs,
  ...
}:
#TODO passa a usar a definição pkgs, pkgs-unstable que esta no flake
inputs.nixpkgs.lib.nixosSystem {
  system = "x86_64-linux";
  modules = [
    ./setup.nix
  ];
}
