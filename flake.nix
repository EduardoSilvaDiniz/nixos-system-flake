{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, nixpkgs-unstable, neovim-nightly-overlay, home-manager, ... }@inputs:
    let
      inherit (self) outputs;
      system = "x86_64-linux";
    in
    {
      overlays = import ./overlays {inherit inputs;};

      nixosConfigurations = {
        nixos = import ./hosts/nixos { inherit inputs outputs system; };
      };

      homeConfigurations = {
        edu = import ./home/edu { inherit inputs outputs system; };
      };
    };
}
