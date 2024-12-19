{pkgs, ...}: {
  users.users.edu = {
    isNormalUser = true;
    description = "Eduardo Silva";
    # defaultUserShell = pkgs.zsh; # apenas em home-manager
    extraGroups = [
      "networkmanager"
      "wheel"
      "input"
    ];
  };
  environment.variables.EDITOR = "nvim";
  console.keyMap = "br-abnt2";
  i18n.defaultLocale = "pt_BR.UTF-8";
  time.timeZone = "America/Sao_Paulo";
}
