{
  lib,
  config,
  pkgs,
  ...
}:
with lib; {
  services.xserver.videoDrivers = mkDefault ["nvidia"];
  hardware = {
    graphics.extraPackages = [pkgs.vaapiVdpau];
    nvidia = {
      open = mkDefault true;
      powerManagement.enable = true;
      modesetting.enable = true;
      package = config.boot.kernelPackages.nvidiaPackages.beta;
    };
  };
  # REVIEW: Remove when NixOS/nixpkgs#324921 is backported to stable
  boot.kernelParams = ["nvidia-drm.fbdev=1"];
  environment = {
    systemPackages = with pkgs; [
      cudaPackages.cudatoolkit
    ];
    variables = {
      CUDA_PATH = "${pkgs.cudaPackages.cudatoolkit}";
      CUDA_CACHE_PATH = "$XDG_CACHE_HOME/nv";
    };
  };
  modules.desktop.browsers.firefox.settings = {
    "media.ffmpeg.vaapi.enabled" = true;
    "gfx.webrender.enabled" = true;
  };
}
## font configuration
# https://github.com/hlissner/dotfiles/blob/master/modules/profiles/hardware/gpu/nvidia.nix
