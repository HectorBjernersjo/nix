#!/bin/bash

THEME = 'Arc-Dark'
ICONS = 'Surfn-Arc'

SCHEMA = 'gsettings set org.gnome.desktop.interface'

apply_themes(){
    ${SCHEMA} gtk-theme "$THEME"
    ${SCHEMA} icon-theme "$ICONS"
}

apply_themes
