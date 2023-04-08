{ ghcBuild ? "ghc92" }:
let
  pkgs = import <nixpkgs> {};
  inherit (pkgs.lib.trivial)
    flip
    pipe
  ;
  haskellPackages = pkgs.haskell.packages."${ghcBuild}";
  pkg = haskellPackages.developPackage {
    root = ./.;
    source-overrides = {};
    modifier = drv:
      pipe drv [
        pkgs.haskell.lib.dontHaddock
        (flip pkgs.haskell.lib.addBuildTools (with haskellPackages;
          [cabal-install]))
      ];
  };
in pkg
