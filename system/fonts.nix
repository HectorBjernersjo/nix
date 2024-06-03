{ config, pkgs, ... }:

{
  fonts.packages = with pkgs; [
    montserrat
    (nerdfonts.override { fonts = ["Meslo"]; })
  ];
}
