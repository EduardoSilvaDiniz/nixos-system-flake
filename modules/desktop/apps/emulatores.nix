{
  pkgs,
  pkgs-unstable,
  ...
}: {
  home.packages =
    [
      (with pkgs; [
        dolphin-emu
        (retroarch.override {cores = with libretro; [parallel-n64];})
      ])
    ]
    ++ (with pkgs-unstable; [
      duckstation
      pcsx2
      rpcs3
    ]);
}
