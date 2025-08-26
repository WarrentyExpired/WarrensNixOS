{ config, pkgs, lib, ... }:
{
  xdg.configFile."micro/" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/micro/";
    force = true;
  };
}
