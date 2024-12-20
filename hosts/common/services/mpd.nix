{pkgs, ...}: {
  services.mpd = {
    enable = true;
    musicDirectory = "/home/edu/Músicas/";
    extraConfig = ''
      audio_output {
        type "pipewire"
        name "My PipeWire Output"
      }
    '';
  };
  environment.systemPackages = with pkgs; [
    ncmpcpp
    mpc-cli
    mpd
  ];
}
