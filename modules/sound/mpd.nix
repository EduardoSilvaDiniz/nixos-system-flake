{
  services.mpd = {
    enable = true;
    musicDirectory = "~/Músicas/";

    extraConfig = ''
      audio_output {
        type "pipewire"
        name "My PipeWire Output"
      }
    '';
  };
}
