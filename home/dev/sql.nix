{pkgs, ...}: {
  home.packages = with pkgs; [
    ### Format
    python312Packages.sqlparse
    nodePackages_latest.sql-formatter
    sqlfluff
  ];
}
