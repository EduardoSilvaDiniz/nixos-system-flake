{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    home-manager
    gcc
    clang
    binutils
    clang-tools
    qbittorrent
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
    (nerdfonts.override {fonts = ["NerdFontsSymbolsOnly"];})
  ];
}
