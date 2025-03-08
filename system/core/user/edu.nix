{pkgs, ...}: {
  programs.zsh.enable = true;
  environment.variables.EDITOR = "nvim";

  console.keyMap = "br-abnt2";
  i18n.defaultLocale = "pt_BR.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

  services.xserver.xkb = {
    layout = "br";
    variant = "";
  };

  time.timeZone = "America/Sao_Paulo";
  users.users.edu = {
    shell = pkgs.zsh;
    isNormalUser = true;
    description = "Eduardo Silva";
    extraGroups = [
      "wheel"
      "input"
    ];
  };
}
