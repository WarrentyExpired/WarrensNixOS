{ config, pkgs, lib, ... }:
{
  xdg.configFile."niri/" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/niri/";
    force = true;
  };
}
