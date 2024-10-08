{ config, pkgs, ... }:

{
  imports = [ 
  	./hardware-configuration.nix
	./packages.nix
	./fonts.nix
    # ./drivers.nix
    ./users.nix
    ./scripts/main.nix
    # ./shell.nix
	];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;


  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # networking.networkmanager.enable = true;

  time.timeZone = "Europe/Stockholm";

  i18n.defaultLocale = "en_US.UTF-8";

  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  # services.xserver.desktopManager.gnome.enable = false;

  programs.hyprland.enable = true;
  programs.zsh.enable = true;

  console.keyMap = "sv-latin1";

  services.printing.enable = true;

  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
  };

  security.sudo = {
    enable = true;
    extraConfig = ''
      hector ALL=(ALL) NOPASSWD: ALL
    '';
  };

  users.users.hector = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" ];
  };

  services.displayManager.autoLogin.enable = true;
  services.displayManager.autoLogin.user = "hector";

  programs.firefox.enable = true;

  nixpkgs.config.allowUnfree = true;


  system.stateVersion = "24.05";

  # Add the logind configuration to manage sleep settings
  services.logind.extraConfig = ''
    IdleAction=suspend
    IdleActionSec=30min
    HandleLidSwitch=suspend
    HandleLidSwitchExternalPower=suspend
    HandleLidSwitchDocked=ignore
    HandlePowerKey=suspend
    HandleSuspendKey=suspend
    HandleHibernateKey=suspend
  '';
}
