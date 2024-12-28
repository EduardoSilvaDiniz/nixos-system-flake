{pkgs, ...}: {
  home.packages = with pkgs; [
    stremio
    mpv
    vlc
  ];
}
