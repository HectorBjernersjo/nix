{ config, pkgs, ... }:
{
    home.file.".config/nvim".source = ./nvim;
    home.file.".config/wofi".source = ./wofi;
    home.file.".config/kitty".source = ./kitty;
    home.file.".config/hypr".source = ./hypr;
    home.file.".config/waybar".source = ./waybar;

    home.file.".config/starship.toml".source = ./starship.toml;

    home.file.".bashrc".source = ./bashrc;
    home.file.".zshrc.local".source = ./zshrc;

    home.file."Programs/z.sh".source = ./z.sh;
}
