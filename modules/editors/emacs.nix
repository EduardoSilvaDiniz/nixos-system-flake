{
  pkgs,
  pkgs-unstable,
  ...
}: {
  programs.emacs = {
    enable = true;
    package = pkgs.emacs-git;
    extraPackages = epkgs:
      with epkgs; [
        treesit-grammars.with-all-grammars
        vterm
        mu4e
      ];
  };
  home.packages = import ./coding-tools.nix {inherit pkgs pkgs-unstable;};
}
