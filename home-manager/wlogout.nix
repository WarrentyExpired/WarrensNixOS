{ config, pkgs, lib, ... }:
{
  xdg.configFile."wlogout/" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/wlogout/";
    force = true;
  };
}
