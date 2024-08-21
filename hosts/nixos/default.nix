{ inputs, system, ... }:
inputs.nixpkgs.lib.nixosSystem {
  specialArgs = {
    pkgs = import inputs.nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    pkgs-unstable = import inputs.nixpkgs-unstable {
      inherit system;
      config.allowUnfree = true;
    };
    inherit inputs system;
  };
  modules = [
    ./configuration.nix
  ];
}
