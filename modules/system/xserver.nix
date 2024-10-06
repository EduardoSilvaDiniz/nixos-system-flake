{
  services.xserver = {
    enable = true;

    displayManager = {
      autoLogin.enable = true;
      autoLogin.user = "edu";
      lightdm.enable = true;
    };

    xkb = {
      variant = "";
      layout = "br";
    };

    libinput = {
      enable = true;
      mouse.accelProfile = "flat";
      touchpad.accelProfile = "flat";
    };

    videoDrivers = ["amdgpu"];
    deviceSection = ''Option "TearFree" "True"'';
    #displayManager.gdm.enable = true;
    #desktopManager.gnome.enable = true;
    #displayManager.sddm.wayland.enable = true;
    #desktopManager.plasma6.enable = true;
  };
  programs.hyprland.enable = true;
}
