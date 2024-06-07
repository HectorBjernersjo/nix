{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = [
    (pkgs.python310.withPackages (p: [
      p.opencv4
      p.tensorflow
      p.numpy
    ]))
  ];
}
