{ lib
, rustPlatform
, fetchFromGitHub
}:

rustPlatform.buildRustPackage rec {
  pname = "steel";
  version = "0-unstable-2024-09-03";

  src = fetchFromGitHub {
    owner = "mattwparas";
    repo = pname;
    rev = "2004e3ae589c3616c5869c5e50f5d5d08d77355d";
    hash = "sha256-jcTbSOub6DzBeA9ECdV46e01tlyKwwTToB+XG93OkaI=";
  };

  cargoHash = "sha256-IN0XNgov/v55I2pSAMXosV2KXzIcVi9LXJv8VBr4EOc=";

  meta = {
    description = "An embedded scheme interpreter in Rust";
    homepage = "https://github.com/mattwparas/steel";
    license = with lib.licenses; [ mit asl20 ];
    maintainers = with lib.maintainers; [ haruki7049 ];
  };
}
