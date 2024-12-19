# comentado porque não esta sendo usando
# {
#   lib,
#   pkgs,
#   config,
#   ...
# }:
# with lib; {
{
  imports = [
    ./hardware-configuration.nix
    ./opts.nix
    ./xserver.nix
    ./audio.nix
  ];
  nix.settings = {
    experimental-features = [
      "nix-command"
      "flakes"
    ];
    substituters = ["https://aseipp-nix-cache.freetls.fastly.net"];
    auto-optimise-store = true;
  };
  networking.hostName = "nagakiba";
  system.stateVersion = "24.11";

  ## TODO
  ## ISSO SÓ ESTA SENDO ADICIONADO PORQUE AINDA NÃO ESTA SENDO UTILIZANDO AS CONFIGURAÇÕES
  ## DISPONIVEL EM 'MODULES'
  services.syncthing = {
    enable = true;
    user = "edu";
    dataDir = "/home/edu/Sync/";
    openDefaultPorts = true;
  };

  users.users.edu = {
    isNormalUser = true;
    description = "Eduardo Silva";
    extraGroups = [
      "networkmanager"
      "wheel"
      "audio"
      "input"
      "audio"
    ];
    # packages = with pkgs; [
    #   thunderbird
    #   obsidian
    #   google-chrome
    #   prismlauncher
    #   duckstation
    #   heroic
    #   gogdl
    #   (retroarch.override {cores = with libretro; [parallel-n64];})
    #
    #   file
    #   libtool
    #   bc
    #   viu
    #   zsh
    #   zip
    #   unzip
    #   unrar
    #   eza
    #   bat
    #   delta
    #   wget
    #   curl
    #   src-cli
    #   git
    #   btop
    #   bintools
    #   fastfetch
    #   xclip
    #   ripgrep
    #   coreutils
    #   fd
    #   gradle-completion
    #   usbutils
    #   ffmpeg
    #   fzf
    #   tesseract4
    #   imagemagick
    #   taskwarrior3
    #
    #   lazygit
    #   lua51Packages.lua
    #   lua51Packages.luarocks
    #   steam
    #
    #   nil # LSP
    #   alejandra # Format
    #   deadnix # diagnostics
    #   statix # code action
    #   neovim
    #   zsh
    # ];
  };

  services.xserver = {
    enable = true;
    layout = "br";
    xkbVariant = "";
    libinput.enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };

  networking.networkmanager.enable = true;

  time.timeZone = "America/Sao_Paulo";
  i18n.defaultLocale = "pt_BR.UTF-8";
  console.keyMap = "br-abnt2";
}
