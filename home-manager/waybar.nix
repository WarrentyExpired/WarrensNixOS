{ config, pkgs, lib, ... }:
{
  programs.waybar = {
    enable = true;
  };
  imports = [
  ];
  xdg.configFile."waybar/top.jsonc" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/waybar/top.jsonc";
    force = true;
  };
  xdg.configFile."waybar/bottom.jsonc" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/waybar/bottom.jsonc";
    force = true;
  };
  xdg.configFile."waybar/style.css" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/waybar/style.css";
    force = true;
  };
  xdg.configFile."waybar/mocha.css" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/waybar/mocha.css";
    force = true;
  };
  xdg.configFile."waybar/start.sh" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/waybar/start.sh";
    force = true;
  };
}
