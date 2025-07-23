{ ... }:
{
  xdg.configFile."helix/config.toml" = {
    source = ./configFiles/helix/config.toml;
    force = true;
  };
}
