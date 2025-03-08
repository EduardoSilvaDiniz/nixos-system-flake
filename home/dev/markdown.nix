{pkgs, ...}: {
  home.packages = with pkgs; [
    markdown-oxide # LSP
    ### Format
    cbfmt
    textlint
    ### Diagnostics
    markdownlint-cli2
    mdl
    proselint
    vale
    write-good
  ];
}
