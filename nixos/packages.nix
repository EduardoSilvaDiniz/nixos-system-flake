{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    prismlauncher
    google-chrome
    keepassxc
    thunderbird
    home-manager
    qbittorrent
    vlc
    redshift
    duckstation
    zoom-us
    git
    wget
    curl
    zsh
    eza
    bat
    delta

    ## neovim
    kitty
    tmux
    unzip
    zip
    fd
    ripgrep
    gcc
    gnumake
    cmake
    lazygit
    python3
    nixfmt
    go
    unzip
    zip
    nodejs
    gzip 
    php
    php83Packages.composer
  ];

  fonts.packages = with pkgs; [
    fira-code
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];
}
