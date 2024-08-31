{ config, lib, modulesPath, pkgs, ... }: {
  hardware = {
    cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
    xpadneo.enable = true;
    opengl = {
      driSupport = true;
      driSupport32Bit = true;
      extraPackages = [ pkgs.amdvlk ];
      extraPackages32 = [ pkgs.driversi686Linux.amdvlk ];
    };
  };
}
