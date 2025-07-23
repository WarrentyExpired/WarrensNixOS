{ config, pkgs, inputs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    wget
    git
    unzip
    gh
    gparted
    pavucontrol
    libnotify
    unrar
    btop
    lm_sensors
  ];
}
