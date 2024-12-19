{
  lib,
  config,
  ...
}: {
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
  #hardware.xpadneo.enable = true; 30/11/2024 erro na atualização, como não estou usando, vou desativar por enquanto.
  networking.useDHCP = lib.mkDefault true;
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.bluetooth.enable = true;
  hardware.bluetooth.settings = {
    General = {
      MinConnectionInterval = 7;
      MaxConnectionInterval = 9;
      ConnectionLatency = 0;
    };
  };
}

