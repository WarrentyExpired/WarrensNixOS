{ ... }:
{
  xdg.configFile."wlogout/layout" = {
    source = ./wlogout/layout;
    force = true;
  };
  xdg.configFile."wlogout/style.css" = {
    source = ./wlogout/style.css;
    force = true;
  };
  xdg.configFile."wlogout/icons" = {
    source = ./wlogout/icons;
    recursive = true;
    force = true;
  };
}
