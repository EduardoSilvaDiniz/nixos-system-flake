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
    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay";
    };
  };
  outputs = { nixpkgs, home-manager, ... }@inputs:

    let
      system = "x86_64-linux";
      user = "edu";
      overlays = [
        inputs.neovim-nightly-overlay.overlays.default
      ];
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

      homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        modules = [ 
          ./home-manager/home.nix 
          {
            nixpkgs.overlays = overlays;
          }
        ];
      };
    };
}
