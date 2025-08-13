{ config, pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
  swaylock-effects
  swaybg
  swayidle
  xwayland-satellite
  terminator
  wlogout
  wl-clipboard
  slurp
  swappy
  grim
  xdg-desktop-portal-gtk
  xdg-desktop-portal-gnome
  gnome-keyring
  nautilus
  tofi
  swaynotificationcenter
  quickshell
  cliphist
  matugen
  mate.mate-polkit
  ];
  programs.niri.enable = true;
  services.xserver.enable = true;
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.desktopManager.cinnamon.enable = true;
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
}
  
