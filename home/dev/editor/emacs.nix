{pkgs, ...}: {
  home.sessionPath = ["/home/edu/.config/emacs/bin" "/home/edu/.yarn/bin"];
  programs.emacs = {
    enable = true;
    # package = pkgs.emacs-git;
    extraPackages = epkgs:
      with epkgs; [
        treesit-grammars.with-all-grammars
        vterm
        mu4e
      ];
  };
  home.packages = with pkgs; [
    git
    ripgrep
    coreutils
    fd
    clang
  ];
}
