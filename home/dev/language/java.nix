{pkgs, ...}: {
  home.packages = with pkgs; [
	graalvm-ce
	jdt-language-server
	vscode-extensions.vscjava.vscode-java-debug
	vscode-extensions.vscjava.vscode-java-test
	google-java-format
	checkstyle
	pmd
	spring-boot-cli
  ];
}
