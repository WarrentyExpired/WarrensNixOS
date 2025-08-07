{ config, pkgs, lib, ... }:
{
  imports = [
  ];
  programs.yazi = {
    enable = true;
  };
  xdg.configFile."yazi/yazi.toml" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/yazi/yazi.toml";
    force = true;
  };
}
