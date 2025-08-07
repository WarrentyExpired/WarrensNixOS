{ config, pkgs, lib, ... }:
{
  xdg.configFile."helix/config.toml" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/NixOS/home-manager/configFiles/helix/config.toml";
    force = true;
  };
}
