{ config, pkgs, ... }: {

	home = {
		username = "edu";
		homeDirectory = "/home/edu";
		stateVersion = "24.05";	
		packages = with pkgs; [
			neofetch
			btop
			vim
		];
	};
	imports = [
		./zsh.nix
		#./steam.nix
	];

}
