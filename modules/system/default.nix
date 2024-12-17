{
  imports = [
    #TODO remova o maximo possivel de arquivos vinculado
    # ao nixos e passe para o home-manager
    ./env.nix
    ./languages.nix
    ./packages.nix
    ./user.nix
  ];
}
