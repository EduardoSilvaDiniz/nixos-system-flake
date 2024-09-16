{pkgs, ...}: {
  environment.systemPackages = with pkgs.gnomeExtensions; [
    appindicator
    vitals
    gtk4-desktop-icons-ng-ding
  ];
}
