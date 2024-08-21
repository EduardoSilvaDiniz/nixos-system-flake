{inputs, system, ...}:
inputs.nixpkgs.lib.nixosSystem {
  specialArgs = {
    pkgs-stable = inputs.nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    inherit inputs system;
  };
  modules = [
    ./configuration.nix
  ];
}
