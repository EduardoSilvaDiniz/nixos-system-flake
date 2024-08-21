{ pkgs, pkgs-unstable, ... }: {
  environment.systemPackages = [
    pkgs.prismlauncher
    pkgs.google-chrome
    pkgs.keepassxc
    pkgs.thunderbird
    pkgs.home-manager
    pkgs.qbittorrent
    pkgs.vlc
    pkgs.redshift
    pkgs.duckstation
    pkgs.zoom-us
    pkgs.git
    pkgs.wget
    pkgs.curl
    pkgs.zsh
    pkgs.eza
    pkgs.bat
    pkgs.delta

    pkgs.kitty
    pkgs.tmux
    pkgs.unzip
    pkgs.zip
    pkgs.fd
    pkgs.ripgrep
    pkgs.gcc
    pkgs.gnumake
    pkgs.cmake
    pkgs.lazygit
    pkgs.python3
    pkgs.nixfmt
    pkgs.go
    pkgs.unzip
    pkgs.zip
    pkgs.nodejs
    pkgs.gzip
    pkgs.php
    pkgs.php83Packages.composer
    pkgs-unstable.neovim
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
