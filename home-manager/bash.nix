{ config, pkgs, lib, ... }:
{
  home.file = {
    ".bashrc" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/bashrc";
    };
  };
}
