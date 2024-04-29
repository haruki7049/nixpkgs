{ pkgs
, stdenv
, fetchzip
}:

stdenv.mkDerivation rec {
  pname = "tsurugidb";
  version = "1.0.0-BETA4";

  src = fetchzip {
    url = "https://github.com/project-tsurugi/tsurugidb/releases/download/1.0.0-BETA4/tsurugidb-1.0.0-BETA4.tar.gz";
    hash = "sha256-EuuRUl1h11YO/wgE/QrGs4UZY/QKgzpgVwXF4jwMuHk=";
    stripRoot = false;
  };

  installPhase = ''
    ${src}/install.sh --prefix=$out
  '';

  patches = map (rp: ./patches + rp) [
    /installer/installer-shebang.patch
  ];
}
