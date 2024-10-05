{pkgs, ...}: {
  imports = [
    ./editors/emacs.nix
    ./editors/neovim.nix
    ./editors/kitty.nix
    ./shell
    ./sound
    ./packages.nix
    ./wms/hyprland.nix
    ./wms/eww.nix
  ];
  home = {
    username = "edu";
    homeDirectory = "/home/edu";
    stateVersion = "24.05";
    sessionPath = ["/home/edu/.config/emacs/bin"];
  };

  programs.home-manager.enable = true;


  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };
}
