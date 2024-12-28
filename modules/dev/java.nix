{pkgs, ...}: {
  home.packages = with pkgs; [
    gradle # java
    jdk
    jdk8
    jdt-language-server # LSP
    # vscode-extensions.vscjava.vscode-java-test
    # vscode-extensions.vscjava.vscode-java-debug
    # vscode-extensions.vscjava.vscode-gradle
    lombok
    google-java-format # format
    ### Diagnostics
    checkstyle
    pmd
    # graalvm-ce # Extra
  ];
}
