{
  pkgs,
  pkgs-unstable,
  ...
}: {
  home.packages =
    (with pkgs; [
      jetbrains.idea-community-bin
      android-studio
    ])
    ++ (with pkgs-unstable; [
      ]);
}
