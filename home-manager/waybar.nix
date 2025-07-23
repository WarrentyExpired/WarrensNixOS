{ ... }:
{
  programs.waybar = {
    enable = true;
  };
  imports = [
  ];
  xdg.configFile."waybar/top.jsonc" = {
    source = ./configFiles/waybar/top.jsonc;
    force = true;
  };
  xdg.configFile."waybar/bottom.jsonc" = {
    source = ./configFiles/waybar/bottom.jsonc;
    force = true;
  };
  xdg.configFile."waybar/style.css" = {
    source = ./configFiles/waybar/style.css;
    force = true;
  };
  xdg.configFile."waybar/mocha.css" = {
    source = ./configFiles/waybar/mocha.css;
    force = true;
  };
  xdg.configFile."waybar/start.sh" = {
    source = ./configFiles/waybar/start.sh;
    force = true;
  };
}
