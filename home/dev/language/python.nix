{pkgs, ...}: {
  home.packages = with pkgs; [
    python3
    python312Packages.ptpython
    python312Packages.python-lsp-server
    python312Packages.debugpy # DAP
    ### Diagnostics
    pylint
    black
    isort
  ];
}
