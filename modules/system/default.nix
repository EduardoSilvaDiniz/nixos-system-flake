{
  imports = [
    #TODO remova o maximo possivel de arquivos vinculado
    # ao nixos e passe para o home-manager
    ./docker.nix
    ./env.nix
    ./excludePackages.nix
    ./extensions.nix
    ./languages.nix
    ./packages-unstable.nix
    ./packages.nix
    ./pcloud.nix
    ./user.nix
    ./xserver.nix
    ./tlp.nix
  ];
}
