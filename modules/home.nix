{
  imports = [
    ./editors/emacs.nix
    ./editors/neovim.nix
    ./desktop
    ./shell
    ./edu.nix
  ];
  home = {
    username = "edu";
    homeDirectory = "/home/edu";
    stateVersion = "24.05";
  };

  programs.home-manager = {
    enable = true;
    useUserPackages = true;
  };
}
