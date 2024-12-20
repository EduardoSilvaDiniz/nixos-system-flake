{
  imports = [
    ./editors
    ./shell
    ./games
    # ./window-manager
    ./desktop/term
    ./packages.nix
    ./sway.nix
  ];
  home = {
    username = "edu";
    homeDirectory = "/home/edu";
    stateVersion = "24.05";
    sessionPath = ["/home/edu/.config/emacs/bin" "/home/edu/.yarn/bin"];
  };

  programs.home-manager.enable = true;

}
