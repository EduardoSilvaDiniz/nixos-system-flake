{pkgs, ...}: {
  home.packages = with pkgs; [
  vscode-langservers-extracted
  html-tidy # diagnostics
  ### Format
  djlint
  prettierd
  rustywind
  ];
}
