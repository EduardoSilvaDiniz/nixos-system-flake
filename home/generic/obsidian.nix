{pkgs, ...}: {
  home.packages = with pkgs; [
    keepassxc
    thunderbird
    zoom-us
    discord
    obsidian
    flowtime
    foliate
    gimp
    pdfarranger
    obs-studio
    pcloudFixes
    qbittorrent
  ];
}
