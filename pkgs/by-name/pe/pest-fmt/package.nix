{ lib
, fetchCrate
, rustPlatform
}:

rustPlatform.buildRustPackage rec {
  pname = "pest-fmt";
  version = "0.2.4";

  src = fetchCrate {
    inherit version;
    pname = "pest_fmt";
    sha256 = "sha256-xWDAH5MouNmozw9XMMlIZPl4HrVRudic/8A7roPXrEQ=";
  };

  cargoHash = "sha256-l4TtaOQ2eLFvV8Ig5R6cJezshg1dhtrtScnaqA+gfN4=";
}
