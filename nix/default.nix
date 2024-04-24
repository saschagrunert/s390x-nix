(import ./nixpkgs.nix {
  crossSystem = {
    config = "s390x-unknown-linux-gnu";
  };
}).callPackage ./derivation.nix
{ }
