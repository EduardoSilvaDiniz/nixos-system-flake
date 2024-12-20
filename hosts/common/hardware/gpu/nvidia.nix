{
  lib,
  config,
  pkgs,
  ...
}:
with lib; {
  services.xserver.videoDrivers = mkDefault ["nvidia"];

  boot = {
    extraModulePackages = [config.boot.kernelPackages.nvidia_x11];
    # REVIEW: Remove when NixOS/nixpkgs#324921 is backported to stable
    kernelParams = ["nvidia-drm.fbdev=1"];
    blacklistedKernelModules = [
      "nouveau"
      "rivafb"
      "nvidiafb"
      "rivatv"
      "nv"
      "uvcvideo"
    ];
  };

  hardware = {
    graphics.extraPackages = [pkgs.vaapiVdpau];
    nvidia = {
      open = mkDefault true;
      powerManagement.enable = true;
      modesetting.enable = true;
      package = config.boot.kernelPackages.nvidiaPackages.beta;
    };
  };

  environment = {
    sessionVariables = {
      LIBVA_DRIVER_NAME = "nvidia";
      WLR_NO_HARDWARE_CURSORS = "1";
      GBM_BACKEND = "nvidia-drm";
      __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    };

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
