{pkgs, ...}: {
  home.packages = with pkgs; [
    hadolint # format
  ];
}
