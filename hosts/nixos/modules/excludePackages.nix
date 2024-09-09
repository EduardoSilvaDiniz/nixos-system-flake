{ pkgs, ... }:
{
  environment.gnome.excludePackages =
    (with pkgs; [ gnome-tour ])
    ++ (with pkgs.gnome; [
      epiphany # web browser
      geary # email reader
    ]);
}
