{ pkgs, ... }:

let
  pythonPackages = pkgs.python311.withPackages (ps: with ps; [
    numpy
    pandas
    matplotlib
    scipy
    jupyter
    humanize
  ]);
in
{
  home.packages = [
    pythonPackages
  ];
}

