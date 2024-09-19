{
  services.mpd = {
    enable = true;
    musicDirectory = "~/Músicas/";
    # services.mpd.extraConfig = ''
    #   audio_output {
    #     type "pipewire"
    #     name "My PipeWire Output"
    #   }
    # '';
  };
}
