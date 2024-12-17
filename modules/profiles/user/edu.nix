{
  pkgs,
  lib,
  config,
  ...
}:
with lib; let
  cfg = config.modules.profiles;
  username = cfg.user;
in
  mkIf (username == "edu") (mkMerge [
    {
      users = {
        name = username;
        description = "Eduardo Silva";
        defaultUserShell = pkgs.zsh;
        i18n.defaultLocale = "pt_BR.UTF-8";
        extraGroups = [
          "wheel"
          "input"
        ];
      };
      console.keyMap = "br-abnt2";
      environment.variables = {
        EDITOR = "nvim";
      };
    }
  ])
