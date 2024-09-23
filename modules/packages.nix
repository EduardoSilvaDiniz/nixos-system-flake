{pkgs, ...}: {
  #TODO arrume um quarto para cada um dos meus filhos!
  home.packages = with pkgs; [
    neovide
    gnutls # for TLS connectivity

    imagemagick # for image-dired
    pinentry-emacs # in-emacs gnupg prompts
    zstd # for undo-fu-session/undo-tree compression

    ## Module dependencies
    # :email mu4e
    mu
    # :checkers spell
    (aspellWithDicts (ds: with ds; [en en-computers en-science]))
    # :tools editorconfig
    editorconfig-core-c # per-project style config
    # :tools lookup & :lang org +roam
    sqlite
    # :lang latex & :lang org (latex previews)
    texlive.combined.scheme-medium
    # :lang beancount
    beancount
    fava
    # :lang nix
    age

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
    krita
    ncmpcpp
    mpc-cli
    mpd
    (retroarch.override {cores = with libretro; [parallel-n64];})

    ## Commands utils
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
    python312Packages.pynvim
    python312Packages.jupyter-client
    python312Packages.jupyter-c-kernel

    ## Games
    steam
    lutris
    prismlauncher
    duckstation

    ## Compilers/Languages
    python3 # python
    nodejs # js
    go # golang
    php # php
    dart
    rustc
    ccls
    cmake
    gnumake
    alejandra

    ## dap
    vscode-extensions.ms-vscode.cpptools

    ## Project managers
    cargo # rust
    gnumake
    meson
    ninja # C/C++
    gradle
    gradle-completion # java/C/C++
  ];
}
