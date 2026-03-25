{
  description = "Orca Slicer package flake (based on nixpkgs orca-slicer)";

  inputs = { nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };

      orcaSrc = {
        version = "2.3.0";
        srcHash = "sha256-ytlBQHvk1zjcDYN751pTeFtSeTfado5rAfivLxEq84o=";
      };

      orca-slicer = pkgs.callPackage ./package.nix {
        orcaVersion = orcaSrc.version;
        orcaSrcHash = orcaSrc.srcHash;
      };
    in {
      packages.${system} = {
        default = orca-slicer;
        orca-slicer = orca-slicer;
      };

      overlays.default = final: prev: { orca-slicer = orca-slicer; };
    };
}
