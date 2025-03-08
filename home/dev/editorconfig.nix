{pkgs, ...}: {
  home.packages = with pkgs; [
    editorconfig-checker # Diagnostics
  ];
}
