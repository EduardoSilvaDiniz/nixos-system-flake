{pkgs-unstable, ...}: {
  home.packages = with pkgs-unstable; [
    dolphin-emu
  ];
}
