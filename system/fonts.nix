{ config, pkgs, ... }:

{
  fonts.packages = with pkgs; [
    montserrat
  ];
}
