{ lib
, appimageTools
, fetchurl
}:

appimageTools.wrapType2 {
  pname = "fedistar";
  version = "1.9.0";

  src = fetchurl {
    url = "https://github.com/h3poteto/fedistar/releases/download/v1.9.0/fedistar_1.9.0_amd64.AppImage";
    hash = "sha256-U++TyV8Ik2CmFE31YxDGW03xYayTbcPGIbBalpsrcxw=";
  };

  extraPkgs = pkgs: with pkgs; [
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
    maintainers = with maintainers; [ haruki7049 ];
  };
}
