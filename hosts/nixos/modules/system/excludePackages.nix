{pkgs, ...}: {
  environment.gnome.excludePackages = with pkgs; [
    gnome-tour
    epiphany # web browser
    geary # email reader
  ];
}
