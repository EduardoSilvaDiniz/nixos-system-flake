{pkgs-unstable, ...}: {
  home.packages = with pkgs-unstable; [
    (retroarch.override {cores = with libretro; [parallel-n64];})
  ];
}
