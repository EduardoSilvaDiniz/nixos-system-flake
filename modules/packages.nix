{pkgs, ...}: {
  home.packages = with pkgs; [
    ## Aplications
    keepassxc
    thunderbird
    vlc
    zoom-us
    dbeaver-bin
    discord
    obsidian
    flowtime
    foliate
    tor-browser
    gimp
    pdfarranger
    obs-studio
    google-chrome
    syncthing
    stremio

    ## Compilers/interpreters
    rustc
    cargo
    # Lua está na configuração do neovim
    gdb
    nodejs
    go
    # php
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
    # php83Packages.psysh # Php
    python312Packages.ptpython # Python
    # Rust vem do cargo
    # Lua vem do luarocks

    ## TODO coloca no emacs config
    #emacs-lsp-booster
    #yarn

    ## Removido do system
    # clang
    #TODO resolver as colições
    # gcc # colisão com binutils
    # binutils ## colisão com gcc
    # jdk ## colisão com graalvm-ce
    # jdk8
    # php83Packages.composer
  ];
}
