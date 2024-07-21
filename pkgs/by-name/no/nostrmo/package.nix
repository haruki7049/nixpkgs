{ pkgs
, lib
, flutterPackages-source
, fetchFromGitHub
}:

flutterPackages-source.v3_22.buildFlutterApplication rec {
  pname = "nostrmo";
  version = "2.6.0";

  src = fetchFromGitHub {
    owner = "haorendashu";
    repo = pname;
    rev = version;
    hash = "sha256-T+X2Kfa6GVruFU1bsw1ocngCLECaA7SARUcPOJtzHHI=";
  };

  nativeBuildInputs = [ pkgs.pkg-config ];

  buildInputs = [
    pkgs.sqlite
    pkgs.sqlite.dev
    pkgs.mpv-unwrapped
    pkgs.libass
    pkgs.ffmpeg
    pkgs.libplacebo
    pkgs.libunwind
    pkgs.shaderc
    pkgs.vulkan-loader
    pkgs.lcms
    pkgs.libdovi
    pkgs.libdvdnav
    pkgs.libdvdread
    pkgs.mujs
    pkgs.libbluray
    pkgs.lua
    pkgs.rubberband
    pkgs.SDL2
    pkgs.libuchardet
    pkgs.zimg
    pkgs.alsa-lib
    pkgs.openal
    pkgs.pipewire
    pkgs.libpulseaudio
    pkgs.libcaca
    pkgs.libdrm
    pkgs.mesa
    pkgs.xorg.libXScrnSaver
    pkgs.xorg.libXpresent
    pkgs.xorg.libXv
    pkgs.nv-codec-headers-12
    pkgs.libva
    pkgs.libvdpau
  ];

  PKG_CONFIG_PATH = lib.makeLibraryPath buildInputs;

  autoPubspecLock = src + "/pubspec.lock";
}
