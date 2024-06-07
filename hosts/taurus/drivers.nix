{ config, pkgs, ... }:

{
    boot.initrd.kernelModules = [ "amdgpu" ];
    services.xserver.videoDrivers = [ "amdgpu" ];
    hardware.opengl = {
        # Mesa
        enable = true;

        # Vulkan
        driSupport = true;
    };
}

