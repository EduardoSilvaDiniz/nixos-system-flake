{
  pkgs,
  pkgs-unstable,
  inputs,
  ...
}:
inputs.home-manager.lib.homeManagerConfiguration {
  inherit pkgs;
  extraSpecialArgs = {inherit pkgs-unstable;};
  modules = [./home.nix];
}
