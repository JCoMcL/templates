{ pkgs ? import <nixpkgs> {} }:

(pkgs.buildFHSUserEnv {
  name = "TEMP-fhs-env";
  targetPkgs = pkgs: with pkgs; [ 

  ];
  profile = '' export SHELL=zsh '';
  extraOutputsToInstall = [ "dev" ];
  runScript = ''$SHELL'';
}).env
