{ sources ? import ./nix/sources.nix, 
  pkgs ? import sources.nixpkgs {}
}:
pkgs.stdenv.mkDerivation {
  name = "my-app";
  src = ./.;

  buildInputs = [pkgs.cmake pkgs.gcc pkgs.boost pkgs.poco];

  buildPhase = "g++ -o main main.cpp -lPocoFoundation -lboost_system";

  installPhase = ''
    mkdir -p $out/bin
    cp main $out/bin/
  '';
}
