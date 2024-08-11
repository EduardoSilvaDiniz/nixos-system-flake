{
	imports = [
		./zsh.nix
    ./modules/bundle.nix
	];

	home = {
		username = "edu";
		homeDirectory = "/home/edu";
		stateVersion = "24.05";	
	};
}
