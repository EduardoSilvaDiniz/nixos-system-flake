{
  description = "My system configuration";

  nixConfig = {
    experimental-features = [
      "flakes"
      "nix-command"
    ];
  };
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    rose-pine-hyprcursor.url = "github:ndom91/rose-pine-hyprcursor";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = {
    self,
    nixpkgs,
    nixpkgs-unstable,
    home-manager,
    ...
  } @ inputs: let
    inherit (self) outputs;
    system = "x86_64-linux";
    user = "edu";
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
    pkgs-unstable = import inputs.nixpkgs-unstable {
      inherit system;
      config.allowUnfree = true;
    };
  in {
    overlays = import ./overlays {inherit inputs;};

    nixosConfigurations.nixos = import ./hosts/notebook {inherit inputs outputs system;};

    homeConfigurations.${user} = import ./modules {inherit inputs outputs pkgs pkgs-unstable;};
  };
}
