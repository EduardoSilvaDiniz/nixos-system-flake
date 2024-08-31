{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    ## Softwares
    google-chrome
    keepassxc
    thunderbird
    home-manager
    qbittorrent
    vlc
    redshift
    zoom-us
    kitty
    tmux
    tlp

    ## Commands utils
    zip unzip unrar
    eza bat delta
    wget curl
    src-cli
    git
    zsh
    btop
    bintools binutils

    ## Games
    steam
    lutris
    prismlauncher
    duckstation

    ## Compilers/Languages
    gcc 
    python3
    nodejs
    go
    php
    dart flutter

    ## Project managers
    php83Packages.composer
    gnumake cmake
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
