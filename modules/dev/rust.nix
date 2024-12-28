{pkgs, ...}: {
  home.packages = with pkgs; [
    rustc
    cargo
    cargo # Rust
    rust-analyzer # LSP
    gdb # DAP
    rustfmt # Format
    leptosfmt
  ];
}
