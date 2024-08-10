programs.firefox.enable = false;

environment.systemPackages = with pkgs; [
	prismlauncher
	google-chrome  
	keepassxc
	thunderbird
	wget
	curl
	# i'm commenting because i want to make some settings before installing
	#git,
	#mpv
	#kitty
	#gcc
	#golang
	#duckstation
	#nvim, i want all plugins to be installed by nix
	#cargo npm pip, i want to replace these packages managers with nix
	#zsh, add oh-my-zsh and plugins
];

