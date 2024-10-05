{pkgs, ...}: {
  imports = [
    ./editors
    ./shell
    ./sound
    ./games
    ./window-manager
    ./packages.nix
  ];
  home = {
    username = "edu";
    homeDirectory = "/home/edu";
    stateVersion = "24.05";
    sessionPath = ["/home/edu/.config/emacs/bin"];
  };

  programs.home-manager.enable = true;

}
