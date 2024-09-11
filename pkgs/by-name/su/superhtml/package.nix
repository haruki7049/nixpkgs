{
  stdenv,
  lib,
  fetchFromGitHub,
  zig_0_13,
  callPackage,
}:

stdenv.mkDerivation rec {
  pname = "superhtml";
  version = "0.4.3";

  src = fetchFromGitHub {
    owner = "kristoff-it";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-jHjj5rP1Dwn1kaLqMkJ7Tna324nNQDzyKYJCIWEgr0o=";
  };

  nativeBuildInputs = [
    zig_0_13.hook
  ];

  postPatch = ''
    cp -a ${callPackage ./deps.nix { }}/. $ZIG_GLOBAL_CACHE_DIR/p
  '';

  patches = [
    ./build-zon.patch
  ];
}
