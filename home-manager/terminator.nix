{ ... }:
{
  xdg.configFile."terminator/config" = {
    source = ./configFiles/terminator/config;
    force = true;
  };
}
