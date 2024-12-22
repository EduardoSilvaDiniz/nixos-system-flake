{pkgs, ...}: let
  patchelfFixes = pkgs.patchelfUnstable.overrideAttrs (_finalAttrs: _previousAttrs: {
    src = pkgs.fetchFromGitHub {
      owner = "Patryk27";
      repo = "patchelf";
      rev = "527926dd9d7f1468aa12f56afe6dcc976941fedb";
      sha256 = "sha256-3I089F2kgGMidR4hntxz5CKzZh5xoiUwUsUwLFUEXqE=";
    };
  });
  pcloudFixes = pkgs.pcloud.overrideAttrs (_finalAttrs:previousAttrs: {
    nativeBuildInputs = previousAttrs.nativeBuildInputs ++ [patchelfFixes];
  });
in {
  home.packages = with pkgs; [
    ## Aplications
    (retroarch.override {cores = with libretro; [parallel-n64];}) ## só funciona aqui
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
    stremio
    just
    pcloudFixes
    qbittorrent
    # gcc
    # binutils
    clang-tools

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

    ## Removido do system
    # clang
    #TODO resolver as colições
    # gcc # colisão com binutils
    # binutils ## colisão com gcc
    # jdk ## colisão com graalvm-ce
    # jdk8
    # php83Packages.composer # colisão com flutter
    # php83Packages.composer
  ];
}
