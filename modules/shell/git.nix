{pkgs, ...}: {
  programs.git = {
    enable = true;
    userName = "Eduardo Silva";
    userEmail = "eduardofox989@protonmail.com";
  };
  home.packages = with pkgs; [
    git-annex
    gh
    git-open
    diff-so-fancy
    git-crypt
    act
  ];
}
