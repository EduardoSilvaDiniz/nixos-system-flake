{
  programs.dconf.profiles.user = {
    databases = [
      {
        settings = {
          "org/gnome/desktop/interface" = {
            color-scheme = "prefer-dark";
            clock-format = "12h";
            clock-show-weekday = true;
          };
        };
      }
    ];
  };
}
