{pkgs, ...}: {
  home.packages = with pkgs; [
  vscode-langservers-extracted # LSP
  html-tidy # diagnostics
  ### Format
  djlint
  prettierd
  rustywind
  ];
}
