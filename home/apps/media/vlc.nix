{pkgs, ...}: {
  home.packages = with pkgs; [
    vlc
		yt-dlp
  ];
}
