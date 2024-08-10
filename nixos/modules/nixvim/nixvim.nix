{

  imports = [
  #  ./opts.nix
  #  ./keymaps.nix
  #  ./autocmds.nix
  #  ./plugins/plugins-bundle.nix
	./plugins/cmp.nix
  ];

  programs.nixvim = {
    enable = true;

    #defaultEditor = true;
    #colorschemes.gruvbox.enable = true;
  };
}
