{
  sound.enable = true;
  security.rtkit.enable = true;

  hardware = {
    pulseaudio = {
      enable = true;
      support32Bit = true;
    };
    enableAllFirmware = true;
  };

  # services.pipewire = {
  #   enable = true;
  #   alsa.enable = true;
  #   alsa.support32Bit = true;
  #   pulse.enable = true;
  #   jack.enable = true;
  #   wireplumber.enable = true;
  # };
}
