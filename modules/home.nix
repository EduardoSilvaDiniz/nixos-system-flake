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
  };

  programs.home-manager = {
    enable = true;
  };

  programs.emacs = {
    enable = true;
    extraPackages = epkgs: [
      epkgs.nix-mode
      epkgs.magit
    ];
  };

  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };
}
