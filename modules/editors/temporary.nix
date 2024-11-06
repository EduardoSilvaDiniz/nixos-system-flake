{pkgs, ...}: {
  home.packages = with pkgs; [
    android-studio
    jetbrains.idea-community-bin
    jetbrains.clion
  ];
}
