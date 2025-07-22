{
  description = "No direnv. No Home Manager. Only simplicity.";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };
  outputs =
    { self, nixpkgs, ... }:
    {
      packages =
        nixpkgs.lib.genAttrs
          [
            "x86_64-linux"
            "aarch64-linux"
            "x86_64-darwin"
            "aarch64-darwin"
          ]
          (
            system:
            let
              pkgs = nixpkgs.legacyPackages.${system};
            in
            {
              noMagic = pkgs.buildEnv {
                name = "emilio-declarative-profile";
                paths = with pkgs; [
                  stow
                  helix
                  jujutsu
                ];
              };
            }
          );
    };
}
