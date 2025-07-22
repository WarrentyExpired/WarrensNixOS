{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
  ];

  nixpkgs = {
    overlays = [
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  home = {
    username = "warrentyexpired";
    homeDirectory = "/home/warrentyexpired";
  };
  programs.home-manager.enable = true;
  programs.git.enable = true;
  systemd.user.startServices = "sd-switch";
  home.stateVersion = "25.05";
}
