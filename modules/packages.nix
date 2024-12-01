{pkgs, ...}: {
  home.packages = with pkgs; [
    ## Aplications
    keepassxc
    thunderbird
    vlc
    zoom-us
    dbeaver-bin
    vesktop
    obsidian
    flowtime
    foliate
    tor-browser
    gimp
    pdfarranger
    obs-studio
    google-chrome
    joplin-desktop
    firefox

    ## Compilers/interpreters
    rustc
    cargo
    # Lua está na configuração do neovim
    gdb
    nodejs
    go
    php
    # dart
    python3Full
    glslang
    gh-markdown-preview
    gmp

    ## Project manager
    cmake # C/C++
    gnumake # C/C++
    bear # C/C++
    leiningen # clojure
    gradle # java
    nodejs_22 # javascript
    # Luarocks está na configuração do neovim
    cargo # Rust

    ## REPL
    bashInteractive # bash
    cling # C/C++
    # Clojure vem do leiningen
    # Java vem do openjdk
    # Javascript vem do nodejs_22
    gore # Go
    php83Packages.psysh # Php
    python312Packages.ptpython # Python
    # Rust vem do cargo
    # Lua vem do luarocks

    ## TODO coloca no emacs config
    emacs-lsp-booster
    yarn

    ## Removido do system
    # clang
    ninja # necessario para flutter
    #TODO resolver as colições
    # gcc # colisão com binutils
    # binutils ## colisão com gcc
    flutter ## colisão com dart
    # jdk ## colisão com graalvm-ce
    # jdk8
    # php83Packages.composer # colisão com flutter

    #Test
    python312Packages.matplotlib
  ];
}
