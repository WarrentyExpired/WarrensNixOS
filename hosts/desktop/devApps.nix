{ config, pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    direnv
    gnumake
    gcc
    squashfsTools
  ];
}
