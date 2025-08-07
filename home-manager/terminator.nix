{ config, pkgs, lib, ... }:
{
  xdg.configFile."terminator/config" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/terminator/config";
    force = true;
  };
}
