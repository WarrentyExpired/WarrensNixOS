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
    wezterm
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
  ];
  programs.firefox.enable = true;
}
