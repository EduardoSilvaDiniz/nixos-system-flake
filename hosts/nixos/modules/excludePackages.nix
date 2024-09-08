{ pkgs, ... }:
{
  environment.gnome.excludePackages =
    (with pkgs; [
      # for packages that are pkgs.*
      gnome-tour
    ])
    ++ (with pkgs.gnome; [
      # for packages that are pkgs.gnome.*
      epiphany # web browser
      geary # email reader
    ]);
}
