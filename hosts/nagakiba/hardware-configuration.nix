{
  pkgs,
  lib,
  config,
  ...
}: {
  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
      extraPackages = with pkgs; [
        vulkan-loader
        vulkan-validation-layers
        vulkan-extension-layer
      ];
    };
    bluetooth.enable = true;
    amdgpu.initrd.enable = true;
    cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
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
    kernelParams = ["amd_pstate=active"];
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
    };
  };

  services.fstrim.enable = true;
}
