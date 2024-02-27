{ lib
, buildDartApplication
, fetchFromGitHub
}:

buildDartApplication rec {
  pname = "miria";
  version = "1.0.16+100";

  src = fetchFromGitHub {
    owner = "shiosyakeyakini-info";
    repo = "miria";
    rev = "v${version}";
    hash = "sha256-xLQuJn8rbgAxRjveexqpYK72g4z2qHpFqV8rMQZCe54=";
  };

  vendorHash = "";
  autoPubspecLock = "${src}/pubspec.lock";

  meta = with lib; {
    description = "Misskey client application for iOS, Android (and other platforms)";
    homepage = "https://github.com/shiosyakeyakini-info/miria";
    maintainers = [ maintainers.haruki7049 ];
    platforms = [ "x86_64-linux" ];
    license = licenses.agpl3;
  };
}
