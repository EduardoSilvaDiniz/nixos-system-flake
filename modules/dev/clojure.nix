{pkgs, ...}: {
  home.packages = with pkgs; [
    leiningen # clojure
    clojure-lsp # LSP
    clj-kondo # Diagnostics
  ];
}
