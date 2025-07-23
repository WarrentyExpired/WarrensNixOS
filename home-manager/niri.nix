{ ... }:
{
  xdg.configFile."niri/config.kdl" = {
    source = ./niri/config.kdl;
    force = true;
  };
  xdg.configFile."niri/background.sh" = {
    source = ./niri/background.sh;
    force = true;
  };
  xdg.configFile."niri/screenshot.sh" = {
    source = ./niri/screenshot.sh;
    force = true;
  };
}
