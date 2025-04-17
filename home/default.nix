{
  programs.home-manager.enable = true;

  home = {
    username = "edu";
    homeDirectory = "/home/edu";
    stateVersion = "24.11";
  };

  imports = [
    ## browsers
    # ./browsers/chrome.nix
    ./browsers/edge.nix
    # ./browsers/firefox.nix
    ## Dev
    ./dev/git.nix
    #### db-admin
    # ./dev/db-admin/mongocompass.nix
    # ./dev/db-admin/pgadmin.nix
    #### editor
    # ./dev/editor/emacs.nix
    ./dev/editor/neovim.nix
    # ./dev/editor/jetbrains.nix
    ./dev/editor/vscode.nix
    #### language
    # ./dev/language/cc.nix
    # ./dev/language/clojure.nix
    # ./dev/language/docker.nix
    # ./dev/language/editorconfig.nix
    ./dev/language/go.nix
    # ./dev/language/html.nix
    ./dev/language/java.nix
    ./dev/language/javascript.nix
    ./dev/language/lua.nix
    ./dev/language/markdown.nix
    ./dev/language/nix.nix
    # ./dev/language/php.nix
    # ./dev/language/python.nix
    # ./dev/language/rust.nix
    ./dev/language/shell.nix
    ./dev/language/sql.nix
    ## Games
    # ./games/performace-monitor.nix
    #### emulador
    # ./games/emulador/dolphin.nix
    # ./games/emulador/retroarch.nix
    # ./games/emulador/pcsx2.nix
    # ./games/emulador/rpcs3.nix
    # ./games/emulador/duckstation.nix
    #### launcher
    # ./games/launcher/bottles.nix
    # ./games/launcher/heroic.nix
    # ./games/launcher/lutris.nix
    ./games/launcher/prism.nix
    ## Generic
    # ./generic/discord.nix
    # ./generic/gimp.nix
    ./generic/keepassxc.nix
    # ./generic/obs.nix
    ./generic/obsidian.nix
    ./generic/pcloud.nix
    ./generic/qbittorrent.nix
		./generic/study.nix
    ./generic/thunderbird.nix
    ## media
    # ./media/mpd.nix
    ./media/mpv.nix
    # ./media/stremio.nix
    # ./media/vlc.nix
    ## Services
    ./services/jellyfin.nix
    # ./services/syncthing.nix
    ## Shell
    # ./shell/gpg-agent.nix
    ./shell/zsh.nix
    ## Term
    # ./term/foot.nix
    # ./term/kitty.nix
    # ./term/wezterm.nix
		./term/ghostty.nix
  ];
}
