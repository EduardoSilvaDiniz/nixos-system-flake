{
  users.users.edu.extraGroups = ["gamemode"];
  programs.gamemode = {
    enable = true;
    settings = {
      general = {
        inhibit_screensaver = 0;
        renice = 10;
      };
    };
  };
}
