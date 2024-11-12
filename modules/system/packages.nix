{pkgs, inputs, ...}: {
  environment.systemPackages = with pkgs; [
    google-chrome
    gcc # C/C++
    binutils
    flutter # dart/Flutter
    jdk # java stable
    jdk8 # java lts 8
    clang
    php83Packages.composer # php
    home-manager
    inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default

    ## python
    python312Packages.google
    python312Packages.tw
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
