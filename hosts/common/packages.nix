{ config, pkgs, inputs, ... }:
{
  ### Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    ### System Apps ###
    wget
    unzip
    git
    gh
    gparted
    pavucontrol
    libnotify
    unrar
    btop

    ### WM Apps
    swaylock-effects
    waybar
    swaybg
    swayidle
    xwayland-satellite
    terminator
    wlogout
    mako
    tofi
    wl-clipboard
    slurp
    swappy
    grim
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
    gnome-keyring
    nautilus

    ### User Apps ###
    discord
    helix
    zoxide
    ncdu
    helix
    pokeget-rs
    fastfetch
    eza
    wezterm

   #### Software to try out ####
   nushell
   mpv
   vscode-fhs

   ### Stuff for Yazi Terminal File Manager
   yazi
   ffmpeg
   p7zip
   jq
   poppler
   fd
   ripgrep
   fzf
   resvg
   imagemagick

   ### Themes and fonts###
   nordic
   cascadia-code
   nerd-fonts.caskaydia-cove
   font-awesome
  ];
  ### Programs ###
  programs.niri.enable = true;
  programs.firefox.enable = true;
### End ###
}
