{ inputs, system, ... }:
inputs.nixpkgs.lib.nixosSystem {
  specialArgs = {
    pkgs-stable = import inputs.nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    inherit inputs system;
  };
  modules = [
    ./configuration.nix
  ];
}
