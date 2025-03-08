{pkgs, ...}: {
  home.packages = with pkgs; [
    nodejs
    typescript
    vscode-langservers-extracted
    nodePackages.typescript-language-server
    vscode-js-debug # DAP
    nodePackages_latest.prettier # format
    eslint # diagnostics
  ];
}
