{pkgs, ...}: {
  home.packages = with pkgs; [
    pdfarranger
    flowtime
    foliate
    zoom-us
		anki
		libreoffice-qt6
		drawio
  ];
}
