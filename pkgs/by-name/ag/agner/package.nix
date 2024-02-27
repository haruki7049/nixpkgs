{ lib
, stdenv
, fetchFromGitHub
}:

stdenv.mkDerivation rec {
  pname = "agner";
  version = "0.4.17";

  src = fetchFromGitHub {
    owner = pname;
    repo = pname;
    rev = "v${version}";
    hash = "sha256-E8ckK0Z+99lQmdyi8OjgYcIRA8aLKQyon5ptxU5XnIA=";
  };
}
