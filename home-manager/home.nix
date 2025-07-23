{ config, pkgs, ... }:
{
  imports = [
    ./mako.nix
    ./waybar.nix
    ./terminator.nix
    ./yazi.nix
    ./tofi.nix
    ./niri.nix
  ];

  home.username = "warrentyexpired";
  home.homeDirectory = "/home/warrentyexpired";
  home.stateVersion = "25.05";
  home.packages = with pkgs; 
  [
  ];
}
