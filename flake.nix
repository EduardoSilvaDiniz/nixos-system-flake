{

	description = "My system configuration";
	
	inputs = {
		nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";

		nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
		
		home-manager = {
			url = "github:nix-community/home-manager/release-24.05";
			inputs.nixpkgs.follows = "nixpkgs-stable";
		};
		nixvim = {
    		  url = "github:nix-community/nixvim";
    		  inputs.nixpkgs.follows = "nixpkgs-unstable";
    		};

    	};
    	outputs = { self, nixpkgs-stable, nixpkgs-unstable, home-manager, ... }@inputs: 
    		let
    			system = "x86_64-linux";
    		in {
    		nixosConfigurations.nixos = nixpkgs-stable.lib.nixosSystem {
    		  specialArgs = {
    		    pkgs-stable = import nixpkgs-stable {
    		      inherit system;
    		      config.allowUnfree = true;
    		    };
    		    inherit inputs system;
    		  };
    		  modules = [
    		    ./nixos/configuration.nix
    		    inputs.nixvim.nixosModules.nixvim
    		  ];
    		};

		homeConfigurations.edu = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs-stable.legacyPackages.${system};
			modules = [ ./home-manager/home.nix ];
		};
	};
}
