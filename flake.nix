{
  description = "My system configuration";


  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = inputs @ {
    self,
    nixpkgs,
    nixpkgs-unstable,
    ...
  }: let
    system = "x86_64-linux";
    user = "edu";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    pkgs-unstable = import nixpkgs-unstable {
      inherit system;
      config.allowUnfree = true;
    };
    lib = nixpkgs.lib;
  in {
    nixosConfigurations.nagakiba = import ./hosts/nixos {inherit inputs system pkgs pkgs-unstable lib;};
    # nixosConfigurations.nixos = import ./hosts/nagakiba {inherit inputs system pkgs pkgs-unstable lib;};
    # nixosConfigurations.nagakiba = import ./hosts/nagakiba {inherit inputs system pkgs pkgs-unstable lib;};
    # nixosConfigurations.zweihander = import ./hosts/zweihander {inherit inputs system pkgs pkgs-unstable lib;};
    homeConfigurations.${user} = import ./modules {inherit pkgs pkgs-unstable lib;};
  };
}
