{pkgs, ...}: {
  home.packages = with pkgs; [
    ## Aplications
    google-chrome
    keepassxc
    thunderbird
    qbittorrent
    vlc
    zoom-us
    dbeaver-bin
    vesktop
    gnucash

    ## DBs
    sqlite

    ## Commands utils
    file
    libtool
    bc
    taskwarrior
    taskserver
    viu
    chafa
    ueberzugpp
    fzf
    zsh
    zip
    unzip
    unrar
    eza
    bat
    delta
    wget
    curl
    src-cli
    git
    btop
    bintools
    fastfetch
    xclip
    ripgrep
    coreutils
    fd
    gradle-completion

    ## Compilers/interpreters
    rustc
    cargo
    lua
    lua51Packages.luarocks
    gdb
    nodejs
    go
    php
    dart
    python3Full
    glslang
    gh-markdown-preview

    ## Project managers
    cmake
    gnumake
    meson
    ninja
    gradle
  ];
}
