{ pkgs, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.edu = {
    isNormalUser = true;
    description = "Eduardo Silva";
    extraGroups = [ "networkmanager" "wheel" "input" "libvirtd" ];
    };
  };

  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "edu";
}
