# packages.nix
{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		jetbrains-mono
		zoxide
		fzf
		starship
		thefuck
		zsh
		tmux
		killall
		python312Packages.humanize
		python312Packages.psutil
		unzip
		neovim
		nodejs
		cargo
		python3
		xclip
		vim
		git
		htop
		hyprland
		kitty
		wofi
		waybar
		swww
		# Add more packages as needed
	];
}
