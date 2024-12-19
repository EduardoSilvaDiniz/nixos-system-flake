{lib, ...}: {
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  security.rtkit.enable = true;
  #TODO não home
  # user.extraGroups = ["audio"];
  hardware.pulseaudio.enable = lib.mkForce false;
  services.pipewire.wireplumber.enable = true;
}
