{pkgs, ...}: {
  home.packages = with pkgs; [
    python312Packages.sqlparse # SQL
    nodePackages_latest.sql-formatter # SQL
    sqlfluff # SQL
    editorconfig-checker # EditorConfig
    hadolint # Docker
		prettierd
  ];
}
