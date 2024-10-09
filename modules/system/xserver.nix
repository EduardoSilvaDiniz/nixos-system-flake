{
  services = {
    libinput = {
      enable = true;
      mouse.accelProfile = "flat";
      touchpad.accelProfile = "flat";
    };

    xserver = {
      enable = true;

      xkb = {
        variant = "";
        layout = "br";
      };

      videoDrivers = ["amdgpu"];
      deviceSection = ''Option "TearFree" "True"'';
    };
  };
}
