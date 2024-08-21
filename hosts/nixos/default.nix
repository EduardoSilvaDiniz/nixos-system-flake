{inputs, outputs, ...}:
inputs.nixpkgs.lib.nixosSystem {
  specialArgs = {inherit inputs outputs;};
  modules = [
    ./configuration.nix
    ./hardware.nix
  inputs.home-manager.nixosModules.home-manager
    {
      home-manager.useGlobalPkgs = true;
      home-manager.useUserPackages = true;
      home-manager.users.vinny = import ./users/vinny/home.nix;
    }
  ];
}
