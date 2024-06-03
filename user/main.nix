{ config, pkgs, ... }:

{
imports = [ 
    ./configs/main.nix
    # ./theme.nix
    # ./shell.nix
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

  programs.starship.enable = true;

  services.gpg-agent.enable = true;
  programs.ssh.enable = true;

  programs.zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;

      history = {
        size = 10000;
        path = "${config.xdg.dataHome}/zsh/history";
      };

      # This appends a line to source your personal .zshrc file
      initExtra = ''
        if [ -f ~/.zshrc.local ]; then
          source ~/.zshrc.local
        fi
      '';
  };
}
