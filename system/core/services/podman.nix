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
    dive
    podman-tui
		docker-compose # start group docker, required to replace docker calls to podman
    podman-compose # start group podman
  ];
}
