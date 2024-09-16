{pkgs, ...}: {
  boot = {
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
    kernelModules = ["kvm-amd"];
    kernelPackages = pkgs.linuxPackages_xanmod_stable;
    extraModulePackages = [];
  };
}
