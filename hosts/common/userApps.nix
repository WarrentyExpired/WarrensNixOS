{ config, pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    discord
    helix
    zoxide
    ncdu
    pokeget-rs
    fastfetch
    eza
    terminator
    ffmpeg
    p7zip
    jq
    poppler
    fd
    ripgrep
    fzf
    resvg
    mpv
    vscode-fhs
    gimp
    micro-full
  ];
  programs.firefox.enable = true;
}
