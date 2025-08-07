{ config, pkgs, inputs, ... }:
{
  #### These are apps I wanna try before incorperating them in my config
  environment.systemPackages = with pkgs; [
    nushell
    terminator
  ];
}
