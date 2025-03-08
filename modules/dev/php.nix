{pkgs, ...}: {
  home.packages = with pkgs; [
    php
    phpactor
    # project manager
    php83Packages.psysh 
    php83Packages.composer
    vscode-extensions.xdebug.php-debug # DAP
    # Format
    php83Packages.php-codesniffer
    php83Packages.php-cs-fixer
    # Diagnostics
    php83Packages.phpstan
    php83Packages.phpmd
  ];
}
