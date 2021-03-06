# Copyright (c) 2019-2020, see AUTHORS. Licensed under MIT License, see LICENSE.

{ stdenv }:

stdenv.mkDerivation {
  name = "qemu-aarch64-static";

  src = builtins.fetchurl {
    url = "https://github.com/multiarch/qemu-user-static/releases/download/v4.1.0-1/qemu-aarch64-static";
    sha256 = "06491ivqjz1n4c391dvl8fzgkc82ijcgg7qz1fnjh0hks12fd85s";
  };

  unpackPhase = "true";

  installPhase = ''
    install -D -m 0755 $src $out/bin/qemu-aarch64-static
  '';
}
