{
  imports = [
    ./editors/emacs.nix
    ./editors/neovim.nix
    ./editors/kitty.nix
    ./shell
  ];
  home = {
    username = "edu";
    homeDirectory = "/home/edu";
    stateVersion = "24.05";
  };

  programs.home-manager = {
    enable = true;
    useUserPackages = true;
  };
}
