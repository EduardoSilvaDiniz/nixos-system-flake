## source configuration
# https://github.com/NixOS/nixos-hardware/blob/master/lenovo/ideapad/15alc6/default.nix
{
  lib,
  config,
  ...
}: {
  boot.blacklistedKernelModules = lib.optionals (!config.hardware.enableRedistributableFirmware) [
    "ath3k"
  ];
  services.fstrim.enable = lib.mkDefault true;
}
