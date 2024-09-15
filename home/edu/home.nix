{
  imports = [
    ./zsh.nix
    ./modules/bundle.nix
    ../../programs/neovim
    ../../programs/emacs
  ];
  home = {
    username = "edu";
    homeDirectory = "/home/edu";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
