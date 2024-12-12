{pkgs, ...}: {
  home.packages = with pkgs; [
    wineWowPackages.wayland
    steam
    prismlauncher
    duckstation
    heroic
    gogdl
    gamescope
    (retroarch.override {cores = with libretro; [parallel-n64];})
  ];
}
