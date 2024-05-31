{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    wget
    google-chrome
    git
    home-manager
    vscode
    kitty
    wofi
  ];
}
