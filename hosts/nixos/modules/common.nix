{
  config,
  pkgs,
  lib,
  ...
}: let
  enableModule = lib.mkIf;
in {
  # Configurações comuns para todos os hosts.
  users.users.edu = {
    isNormalUser = true;
    home = "/home/edu";
    shell = pkgs.zsh;
  };

  # Configurações de desktop.
  imports = lib.concatLists [
    (enableModule config.desktop.gnome [./system/desktops/gnome.nix])
    (enableModule config.desktop.kde [./system/desktops/plasma.nix])
    (enableModule config.desktop.hyprland [./system/desktops/hyprland.nix])
    # (enableModule config.hardware.amdgpu [./system/hardware/amdgpu.nix])
    # (enableModule config.hardware.nvidia [./system/hardware/nvidia.nix])
    (enableModule config.hardware.graphicApis [./hardware/graphicApis.nix])
  ];
}
