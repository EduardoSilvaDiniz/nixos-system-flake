{ inputs, outputs, pkgs, ... }:
let cust_pkgs = import ../../pkgs { inherit pkgs; };
in {
  imports = [
    ../../programs/neovim
  ];

  nixpkgs.overlays = builtins.attrValues outputs.overlays;

  home.packages = with pkgs; [ openvpn mesa ] ++ builtins.attrValues cust_pkgs;

  programs.direnv.enable = true;
  programs.direnv.nix-direnv.enable = true;

	home = {
		username = "edu";
		homeDirectory = "/home/edu";
		stateVersion = "24.05";	
	};

  programs.home-manager.enable = true;

}
