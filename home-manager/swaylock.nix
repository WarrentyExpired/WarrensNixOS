{ ... }:
{
  xdg.configFile."swaylock/config" = {
    source = ./swaylock/config;
    force = true;
  };
}
