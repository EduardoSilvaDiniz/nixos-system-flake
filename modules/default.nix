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
    overlays = [
      (import (builtins.fetchTarball {
        url = "https://github.com/nix-community/emacs-overlay/archive/master.tar.gz";
        sha256 = "1chsz3vzcf5pwm2dn2zq6qi5nh0rnlv823qfis1gm77mpd5mmdik";
      }))
    ];
  };
  extraSpecialArgs = {inherit inputs outputs;};
  modules = [./home.nix];
}
