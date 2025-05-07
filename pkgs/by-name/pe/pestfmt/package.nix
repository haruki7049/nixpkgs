{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "pestfmt";
  version = "0.2.5";

  src = fetchFromGitHub {
    owner = "pest-parser";
    repo = "pest-fmt";
    rev = "v0.2.5";
    hash = "sha256-Nm6Ee+hmV0IT+GNeXt3vDSoSQ0UKMsimgXya68YATEY=";
  };

  # FIXME: Cargo.lock not found on pest-fmt repo
  useFetchCargoVendor = true;
  cargoHash = "";

  # require running database
  doCheck = true;

  meta = {
    description = "Format Pest grammar files";
    homepage = "https://github.com/pest-parser/pest-fmt";
    license = lib.licenses.mpl20;
    maintainers = with lib.maintainers; [ haruki7049 ];
    mainProgram = "pestfmt";
  };
}
