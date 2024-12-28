{pkgs, ...}: let
  patchelfFixes = pkgs.patchelfUnstable.overrideAttrs (_finalAttrs: _previousAttrs: {
    src = pkgs.fetchFromGitHub {
      owner = "Patryk27";
      repo = "patchelf";
      rev = "527926dd9d7f1468aa12f56afe6dcc976941fedb";
      sha256 = "sha256-3I089F2kgGMidR4hntxz5CKzZh5xoiUwUsUwLFUEXqE=";
    };
  });
  pcloudFixes = pkgs.pcloud.overrideAttrs (_finalAttrs:previousAttrs: {
    nativeBuildInputs = previousAttrs.nativeBuildInputs ++ [patchelfFixes];
  });
in {
  home.packages = with pkgs; [
    (retroarch.override {cores = with libretro; [parallel-n64];})
    keepassxc
    thunderbird

    dbeaver-bin

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
