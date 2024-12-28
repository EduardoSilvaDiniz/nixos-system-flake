{pkgs, ...}: {
  home.packages = with pkgs; [
    go
    gore # Go
    gopls # LSP
    delve # DAP
    gotests # Test
    ### Formats
    gofumpt # Enforce a stricter format than gofmt, while being backwards compatible.
    golines # long lines
    gotools # adds several tools (goimports)
    goimports-reviser
    golangci-lint # diagnostics
    gomodifytags # code actions
  ];
}
