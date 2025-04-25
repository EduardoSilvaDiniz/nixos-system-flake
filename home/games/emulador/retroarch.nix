{pkgs-unstable, ...}: {
  home.packages = with pkgs-unstable; [
		(retroarch.withCores (cores: with cores; [
		parallel-n64
  ]))
  ];
}
