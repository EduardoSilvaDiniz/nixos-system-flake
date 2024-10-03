{pkgs, ...}: {
  #TODO Refatore-me Porfavor!!!
  imports = [
    ../../config/cachix.nix
    ../../modules/system
    ../../modules/system/hardware
    ./hardware.nix
  ];

  services.udev.packages = [pkgs.android-udev-rules];

  networking.networkmanager.enable = true;
  security.polkit = {
    enable = true;
    extraConfig = ''
      polkit.addRule(function(action, subject) {
        if (
          subject.isInGroup("users")
            && (
              action.id == "org.freedesktop.login1.reboot" ||
              action.id == "org.freedesktop.login1.reboot-multiple-sessions" ||
              action.id == "org.freedesktop.login1.power-off" ||
              action.id == "org.freedesktop.login1.power-off-multiple-sessions"
            )
          )
        {
          return polkit.Result.YES;
        }
      });
    '';
  };
  systemd = {
    user.services.polkit-gnome-authentication-agent-1 = {
      description = "polkit-gnome-authentication-agent-1";
      wantedBy = ["graphical-session.target"];
      wants = ["graphical-session.target"];
      after = ["graphical-session.target"];
      serviceConfig = {
        Type = "simple";
        ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
        Restart = "on-failure";
        RestartSec = 1;
        TimeoutStopSec = 10;
      };
    };
  };
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  systemd.tmpfiles.rules = ["L+    /opt/rocm/hip   -    -    -     -    ${pkgs.rocmPackages.clr}"];

  networking.hostName = "nixos";

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "pt_BR.UTF-8";

  nix.settings = {
    experimental-features = [
      "nix-command"
      "flakes"
    ];
    substituters = ["https://aseipp-nix-cache.freetls.fastly.net"];
    auto-optimise-store = true;
  };

  system.stateVersion = "24.05";
}
