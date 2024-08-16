{ inputs, overlays }: {
  mkSystem = { hostname, system, users ? [ ] }:
    inputs.nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = { inherit inputs system hostname; };
      modules = [
        ../hosts/${hostname}
        {
          networking.hostName = hostname;

          nixpkgs = {
            inherit overlays;
            config.allowUnfree = true;
          };
        }
      ];
    };
}
