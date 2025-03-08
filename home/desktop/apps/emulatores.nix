{pkgs-unstable, ...}: {
  home.packages = with pkgs-unstable; [
    duckstation
    pcsx2
    rpcs3
    dolphin-emu
  ];
}
