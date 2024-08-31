{ pkgs, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.edu = {
      isNormalUser = true;
      description = "Eduardo Silva";
      extraGroups = [ "networkmanager" "wheel" "input" "libvirtd" "docker" ];
    };
  };
}
