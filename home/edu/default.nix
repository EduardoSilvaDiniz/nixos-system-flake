{
  inputs,
  outputs,
  system,
  ...
}:
inputs.home-manager.lib.homeManagerConfiguration {
  pkgs = import inputs.nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };
  extraSpecialArgs = {inherit inputs outputs;};
  modules = [./home.nix];
}
