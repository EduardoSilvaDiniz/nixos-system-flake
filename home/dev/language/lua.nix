{pkgs, ...}: {
  home.packages = with pkgs; [
    # lua # error: collision between `/nix/store/7gz33l0lmh3xjhm2q4rsiizd5rnywp9g-lua-5.1.5/bin/lua' and `/nix/store/mrj2sj4mrrh7bdg65q8ijzdd1mkg7iii-lua-5.2.4/bin/lua'
    lua-language-server
    stylua
  ];
}
