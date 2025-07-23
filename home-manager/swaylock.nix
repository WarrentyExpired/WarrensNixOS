{ ... }:
{
  xdg.configFile."swaylock/config" = {
    source = ./configFiles/swaylock/config;
    force = true;
  };
}
