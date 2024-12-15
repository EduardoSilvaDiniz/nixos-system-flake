{
  description = "My system configuration";

  nixConfig = {
    experimental-features = [
      "flakes"
      "nix-command"
    ];
  };
  inputs = {
    # nixcats.url = "github:EduardoSilvaDiniz/nixCats-flake";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
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
    };
    pkgs-unstable = import inputs.nixpkgs-unstable {
      inherit system;
      config.allowUnfree = true;
    };

  in {
    overlays = import ./overlays {inherit inputs;};

    nixosConfigurations.nixos = import ./hosts/desktop {inherit inputs outputs system;};

    homeConfigurations.${user} = import ./modules {inherit inputs outputs pkgs pkgs-unstable ;};
  };
}
