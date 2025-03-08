{pkgs, ...}: {
  home.packages = with pkgs; [
    flowtime
  ];
}
