{pkgs, ...}: {
  home.packages = with pkgs; [
    heroic
    gogdl
    lutris
    bottles
  ];
}
