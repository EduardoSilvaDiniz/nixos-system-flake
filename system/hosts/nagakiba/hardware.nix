{
  fileSystems = {
    "/" = {
      device = "/dev/disk/by-uuid/4857bb47-537c-4b1f-b812-a7f28c1b1864";
      fsType = "xfs";
    };

    "/boot" = {
      device = "/dev/disk/by-uuid/0498-3849";
      fsType = "vfat";
      options = ["fmask=0077" "dmask=0077"];
    };

    "/mnt/win_linux" = {
      device = "/dev/nvme0n1p6";
      fsType = "ntfs3";
      options = ["defaults" "rw" "noauto" "uid=1000" "gid=100" "umask=0022"];
    };
  };

  swapDevices = [
    {
      device = "/swap/swapfile";
      size = 8 * 1024;
    }
  ];

  imports = [
    ## Hardware
    #### CPU
    ../../core/hardware/cpu/amd.nix
    #### GPU
    ../../core/hardware/gpu/amd.nix
    ../../core/hardware/audio.nix
    ../../core/hardware/bluetooth.nix
    ../../core/hardware/boot.nix
    ../../core/hardware/laptop-lenovo-15alc6.nix
    ../../core/hardware/network.nix
  ];
}
