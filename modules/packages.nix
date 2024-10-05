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
