{ pkgs,pkgs-unstable, ... }: {
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
    zsh
    zip unzip unrar
    eza bat delta
    wget curl
    src-cli
    git
    btop
    bintools binutils
    fastfetch

    ## Games
    steam
    lutris
    prismlauncher
    duckstation

    ## Compilers/Languages
    gcc #C/C++
    python3 # python
    nodejs # js
    go # golang
    php # php
    dart flutter # dart/Flutter
    jdk jdk8 # java stable and java 8

    ## Project managers
    php83Packages.composer # php
    gnumake meson ninja # C/C++
    gradle gradle-completion # java/C/C++

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
