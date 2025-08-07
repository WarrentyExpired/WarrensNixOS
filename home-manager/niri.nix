{ config, pkgs, lib, ... }:
{
  xdg.configFile."niri/config.kdl" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/niri/config.kdl";
    force = true;
  };
  xdg.configFile."niri/background.sh" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/niri/background.sh";
    force = true;
  };
  xdg.configFile."niri/screenshot.sh" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/niri/screenshot.sh";
    force = true;
  };
  xdg.configFile."niri/windowList.sh" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/niri/windowList.sh";
    force = true;
  };
}
