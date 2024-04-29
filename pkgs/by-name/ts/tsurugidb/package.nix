{ pkgs
, lib
, stdenv
, fetchzip
, curl
, glibc
}:

stdenv.mkDerivation rec {
  pname = "tsurugidb";
  version = "1.0.0-BETA4";

  src = fetchzip {
    url = "https://github.com/project-tsurugi/tsurugidb/releases/download/1.0.0-BETA4/tsurugidb-1.0.0-BETA4.tar.gz";
    hash = "sha256-EuuRUl1h11YO/wgE/QrGs4UZY/QKgzpgVwXF4jwMuHk=";
    stripRoot = false;
  };

  buildInputs = [
    curl
  ];

  nativeBuildInputs = [
    glibc
  ];

  env = {
    LD_LIBRARY_PATH = lib.makeLibraryPath nativeBuildInputs;
  };

  buildPhase = ''
    patchShebangs install.sh dist/install/{install.sh,generate-buildinfo.sh,install-server.sh,generate-tsurugi-info.sh,install-tanzawa-cli.sh,install-harinoki.sh}
  '';

  installPhase = ''
    mkdir $out
    sh install.sh --prefix=$out
  '';
}
