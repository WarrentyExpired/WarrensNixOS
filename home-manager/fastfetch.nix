{ config, pkgs, lib, ... }:
{
  xdg.configFile."fastfetch/config.jsonc" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/fastfetch/config.jsonc";
    force = true;
  };
}
