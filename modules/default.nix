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
    ./desktop/browsers/edge.nix

    ./editors/neovim.nix
    ./editors/jetbrains.nix

    ./shell/zsh.nix
    ./shell/git.nix

     ./dev/cc.nix
    # ./dev/clojure.nix
    # ./dev/docker.nix
     ./dev/editorconfig.nix
    # ./dev/go.nix
    # ./dev/html.nix
     ./dev/java.nix
    # ./dev/javascript.nix
     ./dev/lua.nix
    # ./dev/markdown.nix
     ./dev/nix.nix
    # ./dev/php.nix
    # ./dev/python.nix
    # ./dev/rust.nix
    # ./dev/shell.nix
    # ./dev/sql.nix

    ./packages.nix
  ];
}
