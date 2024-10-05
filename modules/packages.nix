{pkgs, ...}: {
  #TODO arrume um quarto para cada um dos meus filhos!
  home.packages = with pkgs; [
    ## vimwiki + taskwiki
    taskwarrior
    taskserver
    gdb
    file
    libtool

    ## depedencias do doomemcas
    glslang
    gopls
    gomodifytags
    gotests
    gore
    gh-markdown-preview
    nixfmt-rfc-style
    graphviz
    pipenv
    python311Packages.pynose
    python311Packages.pytest
    shellcheck
    html-tidy
    stylelint
    jsbeautifier
    semgrep

    sqlite
    wezterm

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
    bc
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
    python3Full

    ## Project managers
    gnumake
    meson
    ninja # C/C++
    gradle
    gradle-completion # java/C/C++
  ];
}
