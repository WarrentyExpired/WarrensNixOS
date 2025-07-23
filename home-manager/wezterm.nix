{ config, pkgs, lib, ... }:
{
  home.file = {
    ".wezterm.lua" = {
      source = ./configFiles/wezterm.lua;
    };
  };
}
