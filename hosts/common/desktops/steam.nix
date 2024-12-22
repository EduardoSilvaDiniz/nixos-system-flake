{pkgs, ...}: {
  programs = {
    steam = {
      enable = true;
      remotePlay.openFirewall = false;
      protontricks.enable = true;
    };
    gamemode = {
      enable = true;
      settings = {
        general = {
          inhibit_screensaver = 0;
          renice = 10;
        };
      };
    };
    gamescope = {
      enable = true;
    };
  };
  users.users.edu.extraGroups = ["gamemode"];
  environment.systemPackages = with pkgs; [
    mangohud
    goverlay
  ];

  # Better for steam proton games
  systemd.extraConfig = "DefaultLimitNOFILE=1048576";
}
