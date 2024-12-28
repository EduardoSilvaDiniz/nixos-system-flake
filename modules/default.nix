{
  programs.home-manager.enable = true;

  home = {
    username = "edu";
    homeDirectory = "/home/edu";
    stateVersion = "24.11";
    sessionPath = ["/home/edu/.config/emacs/bin" "/home/edu/.yarn/bin"];
  };

  imports = [
    ./desktop/apps/emulatores.nix
    ./desktop/apps/launchers.nix
    ./desktop/apps/minecraft.nix
    ./desktop/apps/wine.nix
    ./desktop/term/wezterm.nix
    ./desktop/browsers/chrome.nix
    ./editors/neovim.nix
    ./shell/zsh.nix
    ./shell/git.nix
    ./packages.nix
  ];
}
