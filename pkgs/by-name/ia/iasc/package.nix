{ lib
, fetchCrate
, rustPlatform
}:

rustPlatform.buildRustPackage rec {
  pname = "iasc";
  version = "0.1.0";

  src = fetchCrate {
    inherit pname version;
    hash = "sha256-b/TRv2a6xNo3QvJm22XJTeRPe6esg2uUcOa2D/2w8hE=";
  };

  cargoHash = "sha256-oQkVy74mMZ2d/LK4VBEIAH0cU4SlR8W3NM8kLh/EK/o=";

  meta = with lib; {
    description = "an Ip-address And Subnet-mask Calculator";
    homepage = "https://gitlab.com/haruki7049/iasc";
    license = licenses.mit;
    platforms = platforms.linux;
    maintainers = with maintainers; [ haruki7049 ];
  };
}
