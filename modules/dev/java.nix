{pkgs, ...}: {
  home.packages = with pkgs; [
    gradle # project manager
    jdk # compiler 
    jdt-language-server # LSP
    vscode-extensions.vscjava.vscode-java-test
    vscode-extensions.vscjava.vscode-java-debug
    vscode-extensions.vscjava.vscode-gradle
    google-java-format # format
    ### Diagnostics
    checkstyle
    pmd
    lombok
  ];
}
