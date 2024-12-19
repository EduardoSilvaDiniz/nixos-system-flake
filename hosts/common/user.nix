{pkgs, ...}: {
  #TODO oque voces estão fazendo aqui?
  programs.zsh.enable = true;
  programs.adb.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.edu = {
      isNormalUser = true;
      description = "Eduardo Silva";
      extraGroups = [
        "adbusers"
        "audio"
        "networkmanager"
        "wheel"
        "input"
        "libvirtd"
        "docker"
      ];
    };
  };
}
