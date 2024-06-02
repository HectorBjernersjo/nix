{
  description = "My first flake with Home Manager!";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./system/configuration.nix
          home-manager.nixosModules.home-manager
        ];
        specialArgs = { inherit home-manager; };
      };
    };

    homeConfigurations = {
      hector = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./user/main.nix
        ];
      };
    };
  };
}

