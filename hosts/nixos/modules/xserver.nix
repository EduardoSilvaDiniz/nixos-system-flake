{
  services = {
    xserver = {
      enable = true;

      displayManager.lightdm.enable = true;
      desktopManager.cinnamon.enable = true;

      xkb = {
        variant = "";
        layout = "br";
      };

    };

    displayManager = { 
      autoLogin = {
        enable = true;
        user = "edu";
      };
    };

    libinput = {
      enable = true;
      mouse = {
        accelProfile = "flat";
      };

      touchpad = {
        accelProfile = "flat";
      };
    };
  };
}
