{pkgs-unstable, ...}: {
  home.packages = with pkgs-unstable; [
    rpcs3
  ];
}
