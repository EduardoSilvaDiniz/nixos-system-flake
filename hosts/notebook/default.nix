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
          sha256 = "1h59k5anc01x7k147c09kn5fmypv01x1pcmjw99jixxqs150qdig";
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
