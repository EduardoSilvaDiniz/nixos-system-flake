{pkgs, ...}: {
  home.packages = with pkgs; [
    ## Aplications
    firefox-unwrapped
    keepassxc
    thunderbird
    qbittorrent
    vlc
    zoom-us
    dbeaver-bin
    vesktop
    gnucash
    obsidian
    flowtime
    foliate
    tor-browser

    ## Compilers/interpreters
    rustc
    cargo
    lua
    gdb
    nodejs
    go
    php
    dart
    python3Full
    glslang
    gh-markdown-preview
    gmp

    ## Project managers
    cmake # c
    gnumake # c
    meson # java
    ninja # C
    gradle # java
    leiningen # clojure

    ## TODO coloca no emacs config
    emacs-lsp-booster
    yarn
  ];
}
