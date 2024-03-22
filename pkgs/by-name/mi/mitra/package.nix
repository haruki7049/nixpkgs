{ lib
, rustPlatform
, fetchgit
}:

rustPlatform.buildRustPackage rec {
  pname = "mitra";
  version = "2.13.0";

  src = fetchgit {
    url = "https://codeberg.org/silverpill/${pname}";
    rev = "v${version}";
    outputHashes = {
      "monero-rpc-0.4.0" = "";
    };
    hash = "sha256-LFdlru2mcAr9+ufzb9rLuhUTnAlcR0m77KNWJDWP5N0=";
  };

  cargoLock.lockFile = "${src}/Cargo.lock";
}
