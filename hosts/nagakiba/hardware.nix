{
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

    "/swap" = {
      device = "/dev/disk/by-uuid/f97f3305-0d77-4842-a8c5-05323b75e5fd";
      fsType = "ext4";
      options = ["nofail" "defaults" "noatime"];
    };
  };

  swapDevices = [
    {
      device = "/swap/swapfile";
      size = 23 * 1024;
    }
  ];

  # hibernate not work
  boot.kernelParams = ["resume_offset=4161536"];
  boot.resumeDevice = "/dev/disk/by-uuid/b71e7e70-af18-4de2-bc98-bf4954832d9e";

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
