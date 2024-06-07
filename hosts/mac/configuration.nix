{ config, pkgs, ... }:

{
  imports = [ 
  	./hardware-configuration.nix
    ./drivers.nix
    ../../system/configuration.nix
	];
  networking.hostName = "mac";
}
