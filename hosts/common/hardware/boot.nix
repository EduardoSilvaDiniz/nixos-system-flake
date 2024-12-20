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

  # EXTREMAMENTE IMPORTANTE
  hardware.enableAllFirmware = true; # necessario para amdgpu wifi e bluetooth
}
