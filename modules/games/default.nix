{pkgs, ...}: {
  home.packages = with pkgs; [
    wineWowPackages.wayland
    prismlauncher
    duckstation
    heroic
    gogdl
    (retroarch.override {cores = with libretro; [parallel-n64];})
  ];
}
