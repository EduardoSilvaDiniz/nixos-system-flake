{pkgs, ...}: {
  virtualisation = {
    podman = {
      enable = true;
      dockerCompat = true;
      defaultNetwork.settings.dns_enabled = true;
    };
		containers.enable = true;
  };

  environment.systemPackages = with pkgs; [
    podman-desktop
    dive
    podman-tui
		podman-docker
    podman-compose
  ];
}
