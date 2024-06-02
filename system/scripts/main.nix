{ config, pkgs, ... }:
{
    environment.systemPackages = [
        (import ./my-awesome-script.nix { inherit pkgs; })
    ];
}
