
{
  services = {
    xserver = {
      enable = true;
      videoDrivers = ["amdgpu"];
      displayManager.sddm.wayland.enable = true;
desktopManager.plasma6.enable = true;

      xkb = {
        variant = "";
        layout = "br";
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
