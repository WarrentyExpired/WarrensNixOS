{ config, pkgs, ... }:
{
  imports = [
    ./mako.nix
    ./waybar.nix
    ./terminator.nix
    ./yazi.nix
  ];

  home.username = "warrentyexpired";
  home.homeDirectory = "/home/warrentyexpired";
  home.stateVersion = "25.05";
  home.packages = with pkgs; 
  [
  ];
}
