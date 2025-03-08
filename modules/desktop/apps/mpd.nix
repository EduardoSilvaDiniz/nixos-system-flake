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
  home.packages = with pkgs; [
    ncmpcpp
    mpc-cli
  ];
}
