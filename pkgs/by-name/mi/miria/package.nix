{ lib
, flutter
, buildFlutterApplication
, fetchFromGitHub
}:

flutter.buildFlutterApplication {
  pname = "miria";
  version = "1.0.16+100";

  src = fetchFromGitHub {
    owner = "shiosyakeyakini-info";
    repo = "miria";
    rev = "1.0.16+100";
    hash = lib.fakeHash;
  };

  pubspecLockFile = "/pubspec.yaml";

  vendorHash = "";

  meta = with lib; {
    description = "Misskey client application for iOS, Android (and other platforms)";
    homepage = "https://github.com/shiosyakeyakini-info/miria";
    maintainers = [ maintainers.haruki7049 ];
    license = licenses.agpl3;
  };
}
