{
  fileSystems = {
    "/" = {
      device = "/dev/disk/by-uuid/550f88b6-aafb-4923-a14d-a94f28279425";
      fsType = "xfs";
    };

    "/boot" = {
      device = "/dev/disk/by-uuid/3222-5B90";
      fsType = "vfat";
      options = ["fmask=0077" "dmask=0077"];
    };

    "/media/nvme" = {
      device = "/dev/disk/by-label/nvme";
      fsType = "xfs";
      options = ["defaults" "noauto" "nofail" "noatime" "nodev" "exec" "umask=000" "uid=1000" "gid=1000" "x-systemd.automount"];
    };
  };

  swapDevices = [];
}
