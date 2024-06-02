{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell
{
  nativeBuildInputs = with pkgs; [
    python310
    python310Packages.requests
  ];

  shellHook = ''
    echo "weclome"
    # source ./something.sh
    echo "to my shell!" | ${pkgs.lolcat}/bin/lolcat 
  '';

  COLOR = "blue";
}
