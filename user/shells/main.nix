{ config, pkgs, ... }:
{
    home.file.".bashrc".source = ./bashrc;
}
