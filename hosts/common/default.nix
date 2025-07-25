{ inputs, lib, config, pkgs, ... }:{
  imports = [
    ./boot.nix
    ./windowManager.nix
    ./systemApps.nix
    ./userApps.nix
    ./themesFonts.nix
    ./testApps.nix
  ];
  nixpkgs.config.allowUnfree = lib.mkForce true;
}
