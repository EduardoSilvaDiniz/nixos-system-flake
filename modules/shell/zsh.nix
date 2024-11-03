{config, pkgs, ...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = let
      flakeDir = "~/Projetos/nix";
    in {
      rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
      rbi = "sudo nixos-rebuild boot --flake ${flakeDir}";
      upd = "nix flake update ${flakeDir}";
      upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";
      hms = "home-manager switch --flake ${flakeDir}";
      conf = "nvim ${flakeDir}/nixos/configuration.nix";
      pkgs = "nvim ${flakeDir}/nixos/packages.nix";
      se = "sudoedit";
      ff = "fastfetch";
      vi = "nvim";
      ll = "exa -lh --group-directories-first";
      la = "exa -lha --group-directories-first";
      l = "exa -lha --group-directories-first";
    };

    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };

    oh-my-zsh = {
      enable = true;
      plugins = ["sudo" "golang" "tmux" "docker" "git" "git-commit"];
      theme = "gallois";
    };
  };
  home.packages = with pkgs; [
    tmux
    zellij
    file
    libtool
    bc
    taskwarrior
    taskserver
    viu
    chafa
    ueberzugpp
    fzf
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
    fastfetch
    xclip
    ripgrep
    coreutils
    fd
    gradle-completion
    usbutils
  ];
}
