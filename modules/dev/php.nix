{pkgs, ...}: {
  home.packages = with pkgs; [
    php
    php83Packages.psysh # Php
    php83Packages.composer
    phpactor # LSP
    vscode-extensions.xdebug.php-debug # DAP
    # Format
    php83Packages.php-codesniffer
    php83Packages.php-cs-fixer
    # Diagnostics
    php83Packages.phpstan
    php83Packages.phpmd
  ];
}
