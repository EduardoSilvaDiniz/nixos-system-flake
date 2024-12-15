{
  config,
  pkgs,
  ...
}: {
  services.xserver.videoDrivers = ["nvidia"];
  boot.extraModulePackages = [
    config.boot.kernelPackages.nvidia_x11
  ];
  boot.blacklistedKernelModules = [
    "nouveau"
    "rivafb"
    "nvidiafb"
    "rivatv"
    "nv"
    "uvcvideo"
  ];

  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
      extraPackages = [pkgs.vaapiVdpau];
    };

    nvidia = {
      modesetting.enable = true;
      powerManagement.enable = true;
      powerManagement.finegrained = false;
      open = true;
      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.beta;
    };
  };
  boot.kernelParams = ["nvidia-drm.fbdev=1"];
  environment.sessionVariables = {
    LIBVA_DRIVER_NAME = "nvidia";
    WLR_NO_HARDWARE_CURSORS = "1";

    # May cause Firefox crashes
    GBM_BACKEND = "nvidia-drm";

    # If you face problems with Discord windows not displaying or screen
    # sharing not working in Zoom, remove or comment this:
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
  };
  environment = {
    systemPackages = with pkgs; [
      cudaPackages.cudatoolkit # required for CUDA support
    ];
    variables = {
      CUDA_PATH = "${pkgs.cudaPackages.cudatoolkit}";
      CUDA_CACHE_PATH = "$XDG_CACHE_HOME/nv";

      # $EXTRA_LDFLAGS and $EXTRA_CCFLAGS are sometimes necessary too, but I
      # set those in nix-shells instead.
    };
  };
}
