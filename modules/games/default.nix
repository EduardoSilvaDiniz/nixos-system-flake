{pkgs, ...}: {
  home.packages = with pkgs; [
    wineWowPackages.wayland
    steam
    prismlauncher
    duckstation
    heroic
    gogdl
    gamescope
    gamemode
    bottles
    mangohud
    goverlay
    unigine-superposition
    lutris
    (retroarch.override {cores = with libretro; [parallel-n64];})
  ];
}
