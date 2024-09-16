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
    sessionPath = ["/home/edu/.config/emacs/bin"];
  };

  programs.home-manager.enable = true;

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

  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };
}
