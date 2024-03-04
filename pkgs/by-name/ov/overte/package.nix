{ lib
, appimageTools
, fetchurl
}:

appimageTools.wrapType2 rec {
  pname = "overte";
  version = "2023.11.1";

  src = fetchurl {
    url = "https://github.com/overte-org/overte/releases/download/${version}/Overte-${version}-x86_64.AppImage";
    hash = "sha256-IfLlvAAE3b8OKXOVC4T2cvRkz5MueEaOtTXGWXMOvrw=";
  };

  extraPkgs = pkgs: with pkgs; [
  ];
}
