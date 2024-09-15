{
  inputs,
  system,
  ...
}:
inputs.nixpkgs.lib.nixosSystem {
  specialArgs = {
    pkgs = import inputs.nixpkgs {
      inherit system;
      config.allowUnfree = true;
      overlays = [
        (import (builtins.fetchTarball {
          url = "https://github.com/nix-community/emacs-overlay/archive/master.tar.gz";
        }))
      ];
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
