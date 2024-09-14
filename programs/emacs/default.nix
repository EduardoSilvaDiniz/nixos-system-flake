{ pkgs, inputs, ... }:
{
  programs.emacs = {
    enable = true;
    defaultEditor = true;
    package = inputs.emacs.packages.${pkgs.system}.default;
  };
}
