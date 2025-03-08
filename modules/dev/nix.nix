{pkgs, ...}: {
  home.packages = with pkgs; [
    nil
    alejandra # format
    deadnix # diagnostics
    statix # code action
  ];
}
