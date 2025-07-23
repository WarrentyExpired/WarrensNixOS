{ pkgs, ... }:
{
  imports = [
  ];
  programs.yazi = {
    enable = true;
  };
  xdg.configFile."yazi/yazi.toml" = {
    source = ./yazi/yazi.toml;
    force = true;
  };
}
