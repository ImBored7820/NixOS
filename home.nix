{config,lib, pkgs, inputs, stable, hyprland, ... }:
{
  imports = [
    ./home/waybar/waybar.nix
    ./home/kitty.nix
    ./home/hypr/hyprpaper.nix
  ];
  home.username = "musa";
  home.homeDirectory = "/home/musa";
  home.stateVersion = "25.11";
  
  # Packages
  home.packages = with pkgs; [
    # Main
    discord
    spotify
    brave
    nautilus
    jetbrains.idea
    pkgs.jdk25
    waybar
    dunst
    hyprpaper
    hyprcursor
    hyprlauncher
    hyprlock
    hypridle
    hyprpicker
    hyprsunset
    hyprsysteminfo
    hyprpolkitagent
    hyprland-protocols
    hyprland-qtutils
    #hyprqt6engine
  ];

  # Settings

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "ImBored7820";
	email = "mohammedmusaali549@gmail.com";
      };
    };
  };

  home.sessionVariables = {
    _JAVA_AWT_WM_NONREPARENTING = "1";
    "-Dwayland.enabled" = "true";
    GDK_SCALE = "1.5";
    "_JAVA_OPTIONS" = "-Dsun.java2d.uiScale=1.5";
  };
}
