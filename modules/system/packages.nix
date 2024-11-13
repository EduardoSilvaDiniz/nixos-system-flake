{
  pkgs,
  pkgs-unstable,
  # inputs,
  ...
}: {
  environment.systemPackages =
    (with pkgs; [
      home-manager
      # inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
    ])
    ++ (with pkgs-unstable; [
      clang-tools
      qbittorrent # a compilação estavel esta com uma falha de segurança
    ]);

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
