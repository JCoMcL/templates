{ lib
, stdenv
, buildPythonPackage
, fetchFromGithub
, fetchPypi
, fetchurl
}:

stdenv.mkderivation rec {
  pname = "TEMP";
  version = "0.0";

  src = fetchFromGithub {
    inherit pname version;
    sha256 = "03a6b58ad52ecf16823b1cf1acf6ef382aa5c0fc1152379f464e284a4f81304b";
  };

  buildInputs = [];

  doCheck = false;

  meta = with lib; {
    description = "TEMP";
    homepage = "TEMP.com";
    license = licenses.mit;
    maintainers = with maintainers; [ jcomcl ];
  };
}
