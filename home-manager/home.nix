{ config, pkgs, lib, ... }:
{
  imports = [
    ./bash.nix
    ./fastfetch.nix
    ./helix.nix
    ./micro.nix
    ./niri.nix
    ./swaylock.nix
    ./swaync.nix
    ./terminator.nix
    ./tofi.nix
    ./waybar.nix
    ./wlogout.nix
    ./yazi.nix
  ];

  home.username = "warrentyexpired";
  home.homeDirectory = "/home/warrentyexpired";
  home.stateVersion = "25.05";
  home.packages = with pkgs; 
  [
  ];
}
