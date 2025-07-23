{ pkgs, ... }:
{
  imports = [
  ];
  programs.yazi = {
    enable = true;
  };
  xdg.configFile."yazi/yazi.toml" = {
    source = ./configFiles/yazi/yazi.toml;
    force = true;
  };
}
