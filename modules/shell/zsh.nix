{
  config,
  pkgs,
  ...
}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = let
      flakeDir = "~/Projetos/nixos";
    in {
      rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
      rbi = "sudo nixos-rebuild boot --flake ${flakeDir}";
      upd = "nix flake update --flake ${flakeDir} && sudo nixos-rebuild boot --upgrade --flake ${flakeDir} && home-manager boot --flake ${flakeDir}";
      hms = "home-manager switch --flake ${flakeDir}";
      conf = "nvim ${flakeDir}/nixos/configuration.nix";
      pkgs = "nvim ${flakeDir}/nixos/packages.nix";
      se = "sudoedit";
      ff = "fastfetch";
      vi = "nvim";
      ll = "exa -lh --group-directories-first";
      la = "exa -lha --group-directories-first";
      l = "exa -lha --group-directories-first";
      nlg = "nix-env --list-generations";
      nixListGen = "nix-env --list-generations";
      ndog = "nix-collect-garbage  --delete-old && sudo nix-collect-garbage -d && sudo /run/current-system/bin/switch-to-configuration boot";
      nixDeleteOldGen = "nix-collect-garbage  --delete-old && sudo nix-collect-garbage -d && sudo /run/current-system/bin/switch-to-configuration boot";
    };

    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };

    oh-my-zsh = {
      enable = true;
      plugins = ["sudo" "golang" "docker" "git" "git-commit"];
      theme = "gallois";
    };
  };
  home.packages = with pkgs; [
    file
    libtool
    bc
    viu
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
    ffmpeg
    fzf
    tesseract4
    imagemagick
    taskwarrior3
    e2fsprogs
		yt-dlp
		sdcv
		tmux
  ];
}
