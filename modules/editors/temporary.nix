{
  pkgs,
  pkgs-unstable,
  ...
}: {
  home.packages =
    (with pkgs; [
      jetbrains.idea-community-bin
      jetbrains.clion
    ])
    ++ (with pkgs-unstable; [
      android-studio
    ]);
}
