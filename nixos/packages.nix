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
    kitty
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
