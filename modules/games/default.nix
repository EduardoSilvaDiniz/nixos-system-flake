{pkgs, ...}: {
  home.Packages = with pkgs; [
    winetricks
    wineWowPackages.waylandFull
    steam
    lutris
    prismlauncher
    duckstation
    (retroarch.override {cores = with libretro; [parallel-n64];})
  ];
}
