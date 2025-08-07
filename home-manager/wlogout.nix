{ config, pkgs, lib, ... }:
{
  xdg.configFile."wlogout/layout" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/wlogout/layout";
    force = true;
  };
  xdg.configFile."wlogout/style.css" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/wlogout/style.css";
    force = true;
  };
  xdg.configFile."wlogout/icons" = {
    source = ./configFiles/wlogout/icons;
    recursive = true;
    force = true;
  };
}
