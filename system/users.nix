{ config, pkgs, ... }:

{
  users.users.hector = {
    isNormalUser = true;
    home = "/home/hector";
    description = "Hector Bjernersjö";
    extraGroups = [ "wheel" "networkmanager" ];
    hashedPassword = "$6$PLbbKco6HIvto47s$jyQzT/cZhlpBU.OaNRzot1o9hiErFG9yrzFXYSRL6JE4doCDnub5rHwNxWC/6iHslYmZg2jIDd27kihTdVPPF1"; # Replace with a hashed password
    shell = pkgs.zsh;
  };
}

