{ config, pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    nordic
    cascadia-code
    nerd-fonts.caskaydia-cove
    font-awesome
  ];
}
