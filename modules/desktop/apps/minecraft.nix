{pkgs, ...}: {
  home.packages = with pkgs; [
    prismlauncher
    jre8
    jre_minimal
  ];
}
