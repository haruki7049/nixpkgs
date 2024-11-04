{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "steel";
  version = "0-unstable-2024-11-04";

  src = fetchFromGitHub {
    owner = "mattwparas";
    repo = pname;
    rev = "cf7a3df2c1cf0b0e1df53e127512f9fbde48476a";
    hash = "sha256-7rwXjcnUG7W6oXVVCmaLWnNODoLEk3RsMcyjNpQ9zSQ=";
  };

  cargoHash = "sha256-KVg5XVR6CR1qYcVAR23cfmKdlXuT26eWZBtzUlTnBSo=";

  meta = {
    description = "An embedded scheme interpreter in Rust";
    homepage = "https://github.com/mattwparas/steel";
    license = with lib.licenses; [
      mit
      asl20
    ];
    maintainers = with lib.maintainers; [ haruki7049 ];
  };
}
