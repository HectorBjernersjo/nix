{ config, pkgs, ... }:

{

imports = [ 
    ./programs/main.nix
    ./wms/main.nix
    ];

home.username = "hector";
home.homeDirectory = "/home/hector";
  home.stateVersion = "23.11";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
  ];

  programs.git = {
  	enable = true;
	userName = "Hector";
	userEmail = "hector@bjernersjo.se";
	extraConfig = {
		init.defaultBranch = "main";
	};
  };

  # programs.zsh.enable = true;
  programs.starship.enable = true;

  services.gpg-agent.enable = true;
  programs.ssh.enable = true;
}
