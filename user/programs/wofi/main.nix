{ config, pkgs, ... }:
{
	home.file.".config/wofi".source = ./config;
}
