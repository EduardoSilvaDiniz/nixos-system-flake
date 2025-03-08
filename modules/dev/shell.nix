{pkgs, ...}: {
  home.packages = with pkgs; [
    bashInteractive
    nodePackages_latest.bash-language-server
    dotenv-linter # Diagnostics
    ### Format
    shellharden
    shfmt
  ];
}
