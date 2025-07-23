{ config, pkgs, lib, ... }:
{
  home.file = {
    ".bashrc" = {
      source = ./configFiles/bashrc;
    };
  };
}
