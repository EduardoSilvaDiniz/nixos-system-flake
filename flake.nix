{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05"; 

    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable"; 

    flake-utils.url = "github:numtide/flake-utils";

    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
   outputs = inputs @ { self, flake-utils, nixpkgs, nixpkgs-unstable, neovim-nightly-overlay, home-manager, ... }: let
    inherit (self) outputs;

     forAllSystems = nixpkgs.lib.genAttrs flake-utils.lib.defaultSystems; # change this if i need some weird systems
    in {
      defaultPackage =
        forAllSystems (system: home-manager.defaultPackage.${system});

      devShells = forAllSystems (system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in
        import ./shell.nix {inherit pkgs;});

      overlays = import ./overlays {inherit inputs;};

      nixosConfigurations = {
        nixos = import ./hosts/nixos {inherit inputs outputs;};
      };
      homeConfigurations = {
        "edu" =
          import ./hosts/edu {inherit inputs outputs;};
      };
  };
}
