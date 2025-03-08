{pkgs, ...}: {
  home.packages = with pkgs; [
    leiningen
    clojure-lsp
    clj-kondo # Diagnostics
  ];
}
