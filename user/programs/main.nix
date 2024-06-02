{ config, pkgs, ... }:
{
    home.file.".config/nvim".source = ./nvim;
    home.file.".config/wofi".source = ./wofi;
    home.file.".config/kitty".source = ./kitty;
    home.file.".config/hypr".source = ./hypr;

    home.file."Programs/z.sh".source = ./z.sh;
}
