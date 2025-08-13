{ config, pkgs, lib, ... }:
{
  xdg.configFile."swaync/" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/swaync/";
    force = true;
  };
}
