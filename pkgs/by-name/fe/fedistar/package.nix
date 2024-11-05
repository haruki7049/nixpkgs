{
  lib,
  appimageTools,
  fetchurl,
}:

appimageTools.wrapType2 rec {
  pname = "fedistar";
  version = "1.9.0";

  src = fetchurl {
    url = "https://github.com/h3poteto/fedistar/releases/download/v${version}/fedistar_${version}_amd64.AppImage";
    hash = "sha256-U++TyV8Ik2CmFE31YxDGW03xYayTbcPGIbBalpsrcxw=";
  };

  extraPkgs =
    pkgs: with pkgs; [
      xgboost
      librsvg
      gtk3
      openssl
      webkitgtk
      libappindicator-gtk3
      libsForQt5.applet-window-appmenu
      indicator-application-gtk2
      mesa
      libdrm
      gtk2
      gtk2-x11
      qt6.full
      gst_all_1.gstreamer
    ];

  meta = with lib; {
    description = "Multi-column Fediverse client application for desktop";
    homepage = "https://fedistar.net/";
    license = licenses.gpl3Only;
    platforms = ["x86_64-linux"];
    maintainers = with maintainers; [ haruki7049 ];
  };
}
