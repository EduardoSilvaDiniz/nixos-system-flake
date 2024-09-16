{pkgs, ...}: {
  imports = [
    ./editors/emacs.nix
    ./editors/neovim.nix
    ./editors/kitty.nix
    ./shell
    ./packages.nix
  ];
  home = {
    username = "edu";
    homeDirectory = "/home/edu";
    stateVersion = "24.05";
    file.".emacs.d" = {
      source = ../config/.emacs.d;
      recursive = true;
    };
  };

  programs.home-manager.enable = true;

  # services.emacs.package = pkgs.emacs-unstable;

  programs.emacs = {
    enable = true;
    package = pkgs.emacs-git;
    extraPackages = epkgs:
      with epkgs; [
        nix-mode
        magit
        org-contrib
        evil
        evil-collection
        company
        eglot
        format-all
        flycheck
      ];
  };

  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };
}
