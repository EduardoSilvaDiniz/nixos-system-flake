{pkgs, ...}: {
  home.packages = with pkgs; [
    wineWowPackages.wayland
    steam
    prismlauncher
    duckstation
    (retroarch.override {cores = with libretro; [parallel-n64];})
  ];
}
