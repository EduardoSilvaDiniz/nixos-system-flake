{ config, lib, modulesPath, pkgs, ... }: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
    ./modules/hardware/boot.nix
    ./modules/hardware/gpu.nix
    ./modules/hardware/filesystems.nix
    ./modules/hardware/tlp.nix
  ];

  networking.useDHCP = lib.mkDefault true;
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
}
