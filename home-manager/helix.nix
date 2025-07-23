{ ... }:
{
  xdg.configFile."helix/config.toml" = {
    source = ./helix/config.toml;
    force = true;
  };
}
