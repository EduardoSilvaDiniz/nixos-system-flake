{pkgs, ...}: {
  home.packages = with pkgs; [
    wineWowPackages.wayland
    prismlauncher
    duckstation
    heroic
    gogdl
    # gamescope
    # gamemode
    # mangohud
    # goverlay
    lutris
    bottles
    (retroarch.override {cores = with libretro; [parallel-n64];})
  ];
}
