{
  imports = [
    ./editors
    ./shell
    ./sound
    ./games
    # ./window-manager
    ./terminais
    ./packages.nix
  ];
  home = {
    username = "edu";
    homeDirectory = "/home/edu";
    stateVersion = "24.05";
    sessionPath = ["/home/edu/.config/emacs/bin" "/home/edu/.yarn/bin"];
  };

  programs.home-manager.enable = true;

}
