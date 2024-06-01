{ config, pkgs, ... }:
{
	imports = [ 
        ./nvim/main.nix
        ./wofi/main.nix
        ];
}
