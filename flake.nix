{
  description = "My system configuration";

  inputs = {
    nixpkgs = { url = "github:nixos/nixpkgs/nixos-24.05"; };

    nixpkgs-unstable = { url = "github:nixos/nixpkgs/nixos-unstable"; };

    nixos-hardware = { url = "github:NixOS/nixos-hardware/master"; };

    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };
  };
  outputs = inputs @ { self, nixpkgs, home-manager, nixvim, ... }: let
    inherit (self) outputs;
      system = "x86_64-linux";
    in
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        specialArgs = {
          pkgs-stable = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
          };
          inherit system;
        };
        modules = [
          ./nixos/configuration.nix
        ];
      };

      homeConfigurations = {
        "edu" = import ./hosts/edu {inherit inputs outputs;};
      };
    };
}
