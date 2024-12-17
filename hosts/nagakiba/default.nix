{lib, ...}:
with lib;
with builtins; {
  system = "x86_64-linux";

  networking.hostName = "nagakiba";

  config = {
    pkgs,
    lib,
    ...
  }: {
    services.fstrim.enable = lib.mkDefault true;
    hardware.amdgpu.initrd.enable = lib.mkDefault true;
    hardware.graphics = {
      enable = lib.mkDefault true;
      enable32Bit = lib.mkDefault true;
      extraPackages = with pkgs; [
        vulkan-loader
        vulkan-validation-layers
        vulkan-extension-layer
      ];
    };

    fileSystems = {
      "/" = {
        device = "/dev/disk/by-uuid/b71e7e70-af18-4de2-bc98-bf4954832d9e";
        fsType = "btrfs";
        options = ["subvol=@"];
      };

      "/boot" = {
        device = "/dev/disk/by-uuid/9047-DC7B";
        fsType = "vfat";
        options = ["fmask=0022" "dmask=0022"];
      };
    };

    swapDevices = [
      {
        device = "/dev/nvme0n1p3";
        randomEncryption.enable = true;
      }
    ];

    boot = {
      loader.systemd-boot.enable = true;
      loader.efi.canTouchEfiVariables = true;
      kernelPackages = pkgs.linuxPackages_latest;
      kernelModules = ["kvm-amd"];
      extraModulePackages = [];
      initrd = {
        availableKernelModules = [
          "nvme"
          "xhci_pci"
          "ahci"
          "usb_storage"
          "sd_mod"
        ];
        kernelModules = ["amdgpu"];
      };
      extraModprobeConfig = ''
        drm_kms_helper
        options drm_kms_helper poll=N
      '';
    };
  };
}
