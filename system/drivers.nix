{ config, pkgs, ... }:

{
#   # Enable the amdgpu driver
#   services.xserver.videoDrivers = [ "amdgpu" ];
#
#   # Install ROCm and OpenCL packages
#   environment.systemPackages = with pkgs; [
#     rocm-opencl-runtime
#     rocmPackages.rocm-smi
#     hashcat
#     clinfo
#   ];
#
#   # Enable OpenGL and OpenCL
#   hardware.opengl = {
#     enable = true;
#     extraPackages = [ pkgs.mesa_drivers pkgs.rocm-opencl-runtime ];
#   };
#
#   hardware.opengl.driSupport = true;
# # For 32 bit applications
# hardware.opengl.driSupport32Bit = true;
    boot.initrd.kernelModules = [ "amdgpu" ];
    services.xserver.videoDrivers = [ "amdgpu" ];
    hardware.opengl = {
        # Mesa
        enable = true;

        # Vulkan
        driSupport = true;
    };
    hardware.opengl.extraPackages = with pkgs; [
      rocmPackages.clr.icd
    ];
    hardware.firmware = [ pkgs.firmwareLinuxNonfree ];

    boot.kernelPackages = pkgs.linuxPackages_latest;
    boot.extraModulePackages = [ config.boot.kernelPackages.broadcom_sta ];
    # boot.kernelModules = [ "brcmsmac" "b43" "bcma" "wl" ];

}

