{pkgs, ...}: {
  home.packages = with pkgs; [
    # gcc
    clang-tools
    cmake # C/C++
    gnumake # C/C++
    bear # C/C++
    cling # C/C++
    gdb
    clang
    ccls # LSP
    lldb # DAP
    cppcheck # Diagnostics
    checkmake
    cmake-format
  ];
}
