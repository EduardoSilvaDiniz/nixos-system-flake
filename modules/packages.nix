{pkgs, ...}: {
  #TODO arrume um quarto para cada um dos meus filhos!
  home.packages = with pkgs; [
    taskwarrior
    taskserver
    gdb
    file
    libtool
    sqlite
    wezterm
    google-chrome
    keepassxc
    thunderbird
    qbittorrent
    vlc
    zoom-us
    kitty
    bc
    dbeaver-bin
    vesktop
    gnucash

    ## Commands utils
    lua51Packages.luarocks
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

    ## Compilers/Languages
    nodejs # js
    go # golang
    php # php
    dart
    cmake
    gnumake
    alejandra
    python3Full
    glslang
    gh-markdown-preview

    ## Project managers
    gnumake
    meson
    ninja # C/C++
    gradle
    gradle-completion # java/C/C++
  ];
}
