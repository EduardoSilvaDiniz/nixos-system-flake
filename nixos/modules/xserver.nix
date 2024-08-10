{
  services.xserver = {
    enable = true;

    displayManager.lightdm.enable = true;
    desktopManager.cinnamon.enable = true;

    layout = "br";
    xkbVariant = "";

    libinput = { 
      enable = true;
      mouse.accelProfile = "flat";
      touchpad.accelProfile = "flat";
    };
  };
}
