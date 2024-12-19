{pkgs, ...}: {
  programs.zsh.enable = true;
  environment.variables.EDITOR = "nvim";
  console.keyMap = "br-abnt2";
  i18n.defaultLocale = "pt_BR.UTF-8";
  time.timeZone = "America/Sao_Paulo";
  users.users.edu = {
    useDefaultShell = pkgs.zsh;
    isNormalUser = true;
    description = "Eduardo Silva";
    extraGroups = [
      "networkmanager"
      "wheel"
      "input"
    ];
  };
}
