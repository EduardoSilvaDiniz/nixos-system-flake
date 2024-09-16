{
  imports = [
    ./modules/kernel.nix
    ./modules/bootloader.nix
    ./modules/gpu.nix
    ./modules/filesystems.nix
    ../../modules/system/hardware/all.nix
  ];
}
