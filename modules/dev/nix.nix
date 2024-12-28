{pkgs, ...}: {
  home.packages = with pkgs; [
    nil # LSP
    alejandra # format
    deadnix # diagnostics
    statix # code action
  ];
}
