{ pkgs }:
with pkgs; stdenv.mkDerivation {
  name = "demo";
  src = ./..;
  outputs = [ "out" ];
  buildInputs = [
    glibc
    glibc.static
  ];
  buildPhase = ''
    make
  '';
  installPhase = ''
    install -Dm755 bin/demo $out/bin/demo
  '';
}
