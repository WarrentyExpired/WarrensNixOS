{ ... }:
{
  xdg.configFile."tofi/config" = {
    source = ./tofi/config;
    force = true;
  };
}
