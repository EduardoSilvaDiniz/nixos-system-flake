{
  services = {
    xserver = {
      enable = true;
      videoDrivers = [ "amdgpu" ];
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;

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
