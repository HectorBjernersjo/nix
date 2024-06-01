{ config, pkgs, ... }:
{
    environment.variables = {
        GTK_THEME = "Adwaita:dark";
        QT_QPA_PLATFORMTHEME = "qt5ct";
        QT_STYLE_OVERRIDE = "Adwaita-Dark";
    };
}
