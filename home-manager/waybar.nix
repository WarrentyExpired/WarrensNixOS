{ config, pkgs, lib, ... }:
{
  programs.waybar = {
    enable = true;
  };
  imports = [
  ];
  xdg.configFile."waybar/" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/waybar/";
    force = true;
  };
}
