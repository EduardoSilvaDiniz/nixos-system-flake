{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    gcc # C/C++
    binutils
    flutter # dart/Flutter
    jdk # java stable
    jdk8 # java lts 8
    clang
    php83Packages.composer # php
    home-manager
    ## gnome
    #TODO Voces devem ficar com seu pai!
    gnome3.gnome-tweaks
    gnome.gnome-settings-daemon
    gnome.adwaita-icon-theme
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
