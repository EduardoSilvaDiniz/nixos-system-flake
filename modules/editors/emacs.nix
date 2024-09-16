{
  pkgs,
  inputs,
  ...
}: {
  services.emacs = {
    enable = true;
    package = pkgs.emacs-unstable;
  };
}
