{pkgs, ...}: {
  home.package = with pkgs; [
    microsoft-edge
  ];
}
