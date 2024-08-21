{
  imports = [
		./zsh.nix
  ];

  #nixpkgs.overlays = builtins.attrValues outputs.overlays;
  #programs.direnv.enable = true;
  #programs.direnv.nix-direnv.enable = true;

	home = {
		username = "edu";
		homeDirectory = "/home/edu";
		stateVersion = "24.05";	
	};

  programs.home-manager.enable = true;

}
