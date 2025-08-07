{ config, pkgs, lib, ... }:
{
  xdg.configFile."tofi/config" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/tofi/config";
    force = true;
  };
}
