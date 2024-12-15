# {lib, ...}: let
#   name = "gnome";
# in {
#TODO Consertar esta função
# de = lib.mkMerge [
#   (lib.mkIf (name == "gnome") import ./gnome.nix)
#   (lib.mkIf (name == "plasma") import ./plasma.nix)
#   (lib.mkIf (name == "hyprland") import ./hyprland.nix)
# ];

{
  imports = [
    # ./gnome.nix
    ./plasma.nix
  ];
}
