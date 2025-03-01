{pkgs, ...}: {
  home.packages = with pkgs; [
    nodejs
    typescript
    nodePackages.typescript-language-server # LSP
    vscode-js-debug # js DAP
    nodePackages_latest.prettier # format
  ];
}
