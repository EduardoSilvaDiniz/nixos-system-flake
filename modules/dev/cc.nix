{pkgs, ...}: {
  home.packages = with pkgs; [
    clang-tools
    cmake
    gnumake
    gdb # DAP
    cppcheck # Diagnostics
    checkmake # format
    cmake-format 
  ];
}
