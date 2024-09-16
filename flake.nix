{
  description = "My system configuration";

  nixConfig = {
    experimental-features = [
      "flakes"
      "nix-command"
    ];
    extra-substituters = [
      "https://cache.nixos.org"
      "https://nix-community.cachix.org"
      "https://nix-gaming.cachix.org"
      "https://nixpkgs-wayland.cachix.org"
    ];
    extra-trusted-public-keys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "nix-gaming.cachix.org-1:nbjlureqMbRAxR1gJ/f3hxemL9svXaZF/Ees8vCUUs4="
      "nixpkgs-wayland.cachix.org-1:3lwxaILxMRkVhehr5StQprHdEo4IrE8sRho9R9HOLYA="
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
