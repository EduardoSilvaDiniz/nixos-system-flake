{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    ## Softwares
    google-chrome
    keepassxc
    thunderbird
    home-manager
    qbittorrent
    vlc
    zoom-us
    kitty
    tmux
    tlp
    dbeaver-bin
    vesktop
    gnucash
    (retroarch.override {cores = with libretro; [parallel-n64];})

    ## Commands utils
    zsh
    zip
    unzip
    unrar
    eza
    bat
    delta
    wget
    curl
    src-cli
    git
    btop
    bintools
    binutils
    fastfetch
    xclip
    ripgrep
    coreutils
    fd
    python312Packages.pynvim
    python312Packages.jupyter-client
    python312Packages.jupyter-c-kernel

    ## Games
    steam
    lutris
    prismlauncher
    duckstation

    ## Compilers/Languages
    gcc # C/C++
    python3 # python
    nodejs # js
    go # golang
    php # php
    dart
    flutter # dart/Flutter
    jdk # java stable
    jdk8 # java lts 8
    rustc
    # clang
    ccls
    cmake
    gnumake
    alejandra

    ## dap
    vscode-extensions.ms-vscode.cpptools

    ## Project managers
    cargo # rust
    php83Packages.composer # php
    gnumake
    meson
    ninja # C/C++
    gradle
    gradle-completion # java/C/C++

    ## gnome
    gnome3.gnome-tweaks
    gnome.gnome-settings-daemon
    gnome.adwaita-icon-theme
    gnomeExtensions.appindicator
    gnomeExtensions.vitals
    gnomeExtensions.gtk4-desktop-icons-ng-ding
  ];

  fonts.packages = with pkgs; [
    fira-code
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override {fonts = ["NerdFontsSymbolsOnly"];})
  ];
}
