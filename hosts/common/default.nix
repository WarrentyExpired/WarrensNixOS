{ inputs, lib, config, pkgs, ... }:{
  imports = [
    ./boot.nix
    ./packages.nix
  ];
  nixpkgs.config.allowUnfree = lib.mkForce true;
}
