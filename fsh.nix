{ pkgs ? import <nixpkgs> {} }:

(pkgs.buildFHSUserEnv {
  name = "TEMP-env";
  targetPkgs = pkgs: with pkgs; [ 
  ];
  runScript = "zsh"; #TODO get this from global config
  #extraOutputsToInstall = [ "dev" ];
  #profile = '' export BROWSER=${pkgs.elinks} '';
}).env
