{
  fileSystems = {
    "/" = { 
      device = "/dev/disk/by-uuid/4857bb47-537c-4b1f-b812-a7f28c1b1864";
      fsType = "xfs";
    };

    "/boot" = { 
      device = "/dev/disk/by-uuid/0498-3849";
      fsType = "vfat";
      options = [ "fmask=0077" "dmask=0077" ];
    };

  };

   swapDevices = [
     {
       device = "/swap/swapfile";
       size = 8 * 1024;
     }
   ];

  imports = [
    ../common/hardware/boot.nix
    ../common/hardware/laptop-lenovo-15alc6.nix
    ../common/hardware/cpu/amd.nix
    ../common/hardware/gpu/amd.nix
    ../common/hardware/gpu/graphics.nix
    ../common/hardware/bluetooth.nix
    ../common/hardware/audio.nix
    ../common/hardware/network.nix
  ];
}
