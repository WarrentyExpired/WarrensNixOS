{ ... }:
{
  xdg.configFile."fuzzel/colors-fuzzel.ini" = {
    source = ./configFiles/fuzzel/colors-fuzzel.ini;
    force = true;
  };
  xdg.configFile."fuzzel/fuzzel.ini" = {
    source = ./configFiles/fuzzel/fuzzel.ini;
    force = true;
  };
  xdg.configFile."fuzzel/launcher.ini" = {
    source = ./configFiles/fuzzel/launcher.ini;
    force = true;
  };
}
