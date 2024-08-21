{ inputs, outputs, system, ... }:
inputs.home-manager.lib.homeManagerConfiguration {
  pkgs = inputs.nixpkgs.legacyPackages.${system};
  extraSpecialArgs = { inherit inputs outputs; };
  modules = [ ./home.nix ];
}
