{ config, pkgs, ... }:
{
  imports = [
    ./bash.nix
    ./fastfetch.nix
    ./helix.nix
    ./mako.nix
    ./niri.nix
    ./swaylock.nix
    ./terminator.nix
    ./tofi.nix
    ./waybar.nix
    ./wezterm.nix
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
