{pkgs, ...}: {
  home.packages = with pkgs; [
    python3Full
    python312Packages.ptpython # Python
    python312Packages.python-lsp-server # LSP
    python312Packages.debugpy # DAP
    ### Diagnostics
    pylint
    black
    isort
  ];
}
