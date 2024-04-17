{
  description = "TEMP";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ]( system:
      with import nixpkgs { inherit system; }; {
        devShell = [
          mkShell { buildinputs = [
              gnumake
              cmake
        ];}];
        defaultPackage = pkgs.python3Packages.buildPythonPackage rec {
            name = "TEMP";
            src = ./.;
        };
      });
}

