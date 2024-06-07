{ config, pkgs, ... }:
{
    boot.extraModulePackages = with config.boot.kernelPackages; [ rtl88xxau-aircrack ];
    hardware.opengl.driSupport = true;
    hardware.opengl.extraPackages = with pkgs; [ intel_drivers ];
    hardware.opengl.enable = true;
    # networking.wireless.enable = true;
    # networking.wireless.iwd.enable = true;
    networking.networkmanager.enable = true;
    # networking.wireless.networks."Bjernersjo".psk = "cr1llekung";
    # hardware.enableAllFirmware = true;
    # networking.networkmanager.enable = true;


    # hardware.opengl.extraPackages = with pkgs; [
    #   rocmPackages.clr.icd
    # ];
    # hardware.firmware = [ pkgs.firmwareLinuxNonfree ];
    #
    # boot.kernelPackages = pkgs.linuxPackages_latest;
    # boot.extraModulePackages = [ config.boot.kernelPackages.broadcom_sta ];
    # boot.kernelModules = [ "brcmsmac" "b43" "bcma" "wl" ];
}
