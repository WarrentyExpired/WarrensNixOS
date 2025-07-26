{ ... }:
{
  xdg.configFile."niri/config.kdl" = {
    source = ./configFiles/niri/config.kdl;
    force = true;
  };
  xdg.configFile."niri/background.sh" = {
    source = ./configFiles/niri/background.sh;
    force = true;
  };
  xdg.configFile."niri/screenshot.sh" = {
    source = ./configFiles/niri/screenshot.sh;
    force = true;
  };
  xdg.configFile."niri/windowList.sh" = {
    source = ./configFiles/niri/windowList.sh;
    force = true;
  };
}
