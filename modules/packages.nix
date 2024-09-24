{pkgs, ...}: {
  #TODO arrume um quarto para cada um dos meus filhos!
  home.packages = with pkgs; [
    ## vimwiki + taskwiki
    taskwarrior

    kdePackages.plasma-browser-integration

    sqlite

    winetricks
    wineWowPackages.waylandFull

    google-chrome
    keepassxc
    thunderbird
    qbittorrent
    vlc
    zoom-us
    kitty
    tmux
    tlp
    dbeaver-bin
    vesktop
    gnucash
    ncmpcpp
    mpc-cli
    mpd
    (retroarch.override {cores = with libretro; [parallel-n64];})

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

    ## Games
    steam
    lutris
    prismlauncher
    duckstation

    ## Compilers/Languages
    nodejs # js
    go # golang
    php # php
    dart
    cmake
    gnumake
    alejandra

    ## Project managers
    gnumake
    meson
    ninja # C/C++
    gradle
    gradle-completion # java/C/C++
  ];
}
