{pkgs, ...}: {
  programs.emacs = {
    enable = true;
    package = pkgs.emacs-git;
    extraPackages = [
      (epkgs:
        with epkgs; [
          treesit-grammars.with-all-grammars
          vterm
          mu4e
        ])

      (import ./lsps.nix {inherit pkgs;})
    ];
  };
}
