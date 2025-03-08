{pkgs, ...}: {
  home.packages = with pkgs; [
    pdfarranger
    flowtime
    foliate
    zoom-us
  ];
}
