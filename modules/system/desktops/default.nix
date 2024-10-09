{pkgs}: let
  makeDE = name: config:
    pkgs.mkDerivation {
      name = "my-de-${name}";
    };

  gnome = makeDE "gnome" {
    import = ./gnome.nix;
  };

  plasma = makeDE "plasma" {
    import = ./plasma.nix;
  };

  hyprland = makeDE "hyprland" {
    import = ./hyprland.nix;
  };
in
  gnome
