{pkgs, ...}: {
  environment.systemPackages = with pkgs; [qemu];

  boot.kernelModules = ["kvm-amd"];

  programs.virt-manager.enable = true;

  users.groups.libvirtd.members = ["edu"];

  virtualisation.libvirtd.enable = true;

  virtualisation.spiceUSBRedirection.enable = true;
}
