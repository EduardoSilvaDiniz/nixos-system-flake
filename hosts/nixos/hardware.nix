{pkgs, ...}: {
  boot = {
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
    kernelPackages = pkgs.linuxPackages_latest;
    kernelModules = [];
    extraModulePackages = [];
    initrd = {
      availableKernelModules = [
        "nvme"
        "xhci_pci"
        "ahci"
        "usb_storage"
        "sd_mod"
      ];
      kernelModules = [];
    };
  };
  hardware = {
    enableAllFirmware = true; # necessario para amdgpu wifi e bluetooth
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


  imports = [
    ../common/graphics.nix
    ../common/bluetooth.nix
    ../common/cpu-amd.nix
    ../common/audio.nix
    ../common/network.nix
  ];
}
