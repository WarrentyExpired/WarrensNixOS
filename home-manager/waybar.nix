{ ... }:
{
  programs.waybar = {
    enable = true;
  };
  imports = [
  ];
  xdg.configFile."waybar/top.jsonc" = {
    source = ./waybar/top.jsonc;
    force = true;
  };
  xdg.configFile."waybar/bottom.jsonc" = {
    source = ./waybar/bottom.jsonc;
    force = true;
  };
  xdg.configFile."waybar/style.css" = {
    source = ./waybar/style.css;
    force = true;
  };
  xdg.configFile."waybar/mocha.css" = {
    source = ./waybar/mocha.css;
    force = true;
  };
  xdg.configFile."waybar/start.sh" = {
    source = ./waybar/start.sh;
    force = true;
  };
}
