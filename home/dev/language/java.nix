{pkgs, ...}: {
  home.packages = with pkgs; [
	# jdk21
	graalvm-ce
	jdt-language-server
	vscode-extensions.vscjava.vscode-java-debug
	vscode-extensions.vscjava.vscode-java-test
	google-java-format
	checkstyle
	pmd
	spring-boot-cli
	gradle
	maven
	libxml2
	quarkus
  ];
}
