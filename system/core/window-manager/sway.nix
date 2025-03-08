{pkgs, ...}: {
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };

  xdg.configFile."sway" = {
    source = "../../../config/sway";
  };

  environment.systemPackages = with pkgs; [
    grim
    slurp
    wl-clipboard
    mako
  ];
}
