{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    google-chrome
    vscode
    wofi
    kitty
    wget
    git
    neovim
    home-manager
    gcc
    python3
    fastfetch
    adwaita-qt
    bibata-cursors
    hashcat
    insync
    killall
    starship
    wl-clipboard
    xclip
  ];
}
