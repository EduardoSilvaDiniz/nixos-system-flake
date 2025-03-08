{pkgs, ...}: {
  home.packages = with pkgs; [
    rustc
    cargo
    rust-analyzer # LSP
    gdb # DAP
    rustfmt # Format
    leptosfmt
  ];
}
