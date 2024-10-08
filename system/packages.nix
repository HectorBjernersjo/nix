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
    fastfetch
    adwaita-qt
    bibata-cursors
    hashcat
    insync
    killall
    starship
    wl-clipboard
    xclip
    qdirstat
    spotify
    obsidian
    feh
    gimp
    unzip
    dolphin
    sway
    swappy
    slurp
    pavucontrol
    discord
    conda
    imagemagick
    starship
    waybar
    nodejs
    swaybg
    swayidle
    cmatrix
    kdiskmark
    p7zip
    gnutar
    zip
    wlsunset
    pciutils
    lshw

    gtk3
    gtk4
    libadwaita
    firmwareLinuxNonfree
  ];
}
