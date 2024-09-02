{ pkgs-unstable, ... }: {
  environment.systemPackages = with pkgs-unstable; [
    clang-tools
  ];
}
