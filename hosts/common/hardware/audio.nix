{lib, ...}: {
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  security.rtkit.enable = true;
  users.users.edu.extraGroups = ["audio"];
  hardware.pulseaudio.enable = lib.mkForce false;
  services.pipewire.wireplumber.enable = true;
}
