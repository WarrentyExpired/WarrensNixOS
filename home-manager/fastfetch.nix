{ config, pkgs, lib, ... }:
{
  xdg.configFile."fastfetch/" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/fastfetch/";
    force = true;
  };
}
