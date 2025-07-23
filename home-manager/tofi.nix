{ ... }:
{
  xdg.configFile."tofi/config" = {
    source = ./configFiles/tofi/config;
    force = true;
  };
}
