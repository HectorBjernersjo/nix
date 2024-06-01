{ config, pkgs, ... }:
{
	home.file."Programs/z.sh".source = ./z.sh;
}
