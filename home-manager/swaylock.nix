{ config, pkgs, lib, ... }:
{
  xdg.configFile."swaylock/config" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/swaylock/config";
    force = true;
  };
}
