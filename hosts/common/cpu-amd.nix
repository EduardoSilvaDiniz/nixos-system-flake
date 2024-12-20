{
  lib,
  config,
  ...
}: {
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
  boot.kernelParams = ["amd_pstate=active"]; # For Linux 6.3+
}
