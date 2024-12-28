{pkgs, ...}: {
  home.packages = with pkgs; [
    lua-language-server # LSP
    stylua # format
  ];
}
