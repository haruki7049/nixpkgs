{ lib
, buildDartApplication
, fetchFromGitHub
}:

buildDartApplication rec {
  pname = "songtube";
  version = "7.2.0+4000";
  src = fetchFromGitHub {
    owner = "SongTube";
    repo = "SongTube-App";
    rev = version;
    hash = "sha256-4LJiwwt5EHv5F/jI1GvsMceKopjqGwp1Ny2sxh6WLds=";
  };

  pubspecLock = {
    packages = {
    };
  };
  vendorHash = lib.fakeHash;
}
