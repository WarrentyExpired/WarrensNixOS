{ inputs, lib, config, pkgs, ... }:{
  imports = [
    ./boot.nix
    ./packages.nix
  ];
}
