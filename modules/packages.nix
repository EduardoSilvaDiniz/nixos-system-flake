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

    ## Project managers
    cmake
    gnumake
    meson
    ninja
    gradle
  ];
}
