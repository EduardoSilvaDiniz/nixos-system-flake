{pkgs-unstable, ...}: {
  home.packages = with pkgs-unstable; [
    pcsx2
  ];
}
