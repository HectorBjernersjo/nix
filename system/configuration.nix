{ config, pkgs, ... }:

{
  imports = [ 
  	./hardware-configuration.nix
	./packages.nix
	];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Stockholm";

  i18n.defaultLocale = "en_US.UTF-8";

  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = false;
  programs.hyprland.enable = true;

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

  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "hector";

  programs.firefox.enable = true;

  nixpkgs.config.allowUnfree = true;


  system.stateVersion = "23.11";

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
