{ config, pkgs, ... }:
{
    programs.bash = {
        enable = true;
        shellAliases = {
          ll = "ls -alF";
          la = "ls -A";
          l = "ls -CF";
        };
        promptInit = ''
          PS1='\u@\h:\w\$ '
        '';
    };
    # Initialize z-lua in Bash
    programs.bash.initExtra = ''
        eval "$(lua ${pkgs.z-lua}/share/z.lua --init bash)"
    '';
}
