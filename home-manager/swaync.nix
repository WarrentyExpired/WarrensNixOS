{ config, pkgs, lib, ... }:
{
  xdg.configFile."swaync/config.json" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/swaync/config.json";
    force = true;
  };
  xdg.configFile."swaync/configSchema.json" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/swaync/configSchema.json";
    force = true;
  };
  xdg.configFile."swaync/style.css" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/swaync/style.css";
    force = true;
  };
}
