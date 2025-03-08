{
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = false;
    protontricks.enable = true;
  };

  # Better for steam proton games
  systemd.extraConfig = "DefaultLimitNOFILE=1048576";
}
