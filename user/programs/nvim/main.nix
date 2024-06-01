{ config, pkgs, ... }:
{
	home.file.".config/nvim".source = ./config;

	# programs.neovim = {
	# 	enable = true;
	# 	package = pkgs.neovim;
	# 	vimAlias = true;
	# };

}
