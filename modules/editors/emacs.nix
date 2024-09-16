{
  pkgs,
  inputs,
  ...
}: {
  services.emacs = {
    enable = true;
  };
}
