{ ... }:
{
  xdg.configFile."terminator/config" = {
    source = ./terminator/config;
    force = true;
  };
}
