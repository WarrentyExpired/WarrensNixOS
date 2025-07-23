{ ... }:
{
  xdg.configFile."fastfetch/config.jsonc" = {
    source = ./configFiles/fastfetch/config.jsonc;
    force = true;
  };
}
