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
    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    rose-pine-hyprcursor.url = "github:ndom91/rose-pine-hyprcursor";
  };
  outputs = {
    self,
    nixpkgs,
    nixpkgs-unstable,
    neovim-nightly-overlay,
    home-manager,
    ...
  } @ inputs: let
    inherit (self) outputs;
    system = "x86_64-linux";
  in {
    overlays = import ./overlays {inherit inputs;};

    nixosConfigurations = {
      nixos = import ./hosts/notebook {inherit inputs outputs system;};
    };

    homeConfigurations = {
      edu = import ./modules {inherit inputs outputs system;};
    };
  };
}
