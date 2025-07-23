{ ... }:
{
  xdg.configFile."wlogout/layout" = {
    source = ./configFiles/wlogout/layout;
    force = true;
  };
  xdg.configFile."wlogout/style.css" = {
    source = ./configFiles/wlogout/style.css;
    force = true;
  };
  xdg.configFile."wlogout/icons" = {
    source = ./configFiles/wlogout/icons;
    recursive = true;
    force = true;
  };
}
