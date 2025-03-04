{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    grim
    slurp
    wl-clipboard
    mako
  ];
  services.gnome.gnome-keyring.enable = true;
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };
}
