{ config, pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    nordic
    papirus-icon-theme
    papirus-nord
    cascadia-code
    nerd-fonts.caskaydia-cove
    font-awesome
  ];
}
