{
  programs.home-manager.enable = true;

  home = {
    username = "edu";
    homeDirectory = "/home/edu";
    stateVersion = "24.11";
    sessionPath = ["/home/edu/.config/emacs/bin" "/home/edu/.yarn/bin"];
  };

  imports = [
    ./editors
    ./shell
    ./desktop/apps/emulatores.nix
    ./desktop/apps/launchers.nix
    ./desktop/apps/minecraft.nix
    ./desktop/apps/steam.nix
    ./desktop/apps/wine.nix
    ./desktop/term
    ./packages.nix
    ./desktop/term/wezterm.nix
  ];
}
