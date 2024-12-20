{pkgs, ...}: {
  services.udev.packages = [pkgs.android-udev-rules];
  programs.adb.enable = true;
  users.users.edu.extraGroups = ["adbusers"];
}
