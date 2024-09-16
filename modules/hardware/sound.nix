{
  hardware = {
    pulseaudio = {
      enable = false;
      support32Bit = true;
    };
    enableAllFirmware = true;
  };
  sound.enable = true;
  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
    wireplumber.enable = true;
  };
}
