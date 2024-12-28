{pkgs, ...}: {
  home.packages = with pkgs; [
    bashInteractive # bash
    nodePackages_latest.bash-language-server # LSP
    # DAP não existe, talvez seja outro nome...
    ### Format
    shellharden
    shfmt
    dotenv-linter # Diagnostics
  ];
}
