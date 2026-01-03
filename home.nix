{config,lib, pkgs, inputs, stable, hyprland, ... }:
{
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
    jetbrains.idea-ultimate
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

  # Program Settings

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

  programs.kitty = {
    enable = true;
    settings = {
      # Shell and Cursor
      shell_integration = "no-rc";
      cursor_shape = "beam";

      # Tab Bar Configuration
      tab_bar_edge = "top";
      tab_bar_style = "powerline";
      tab_bar_min_tabs = 1;

      # Miscellaneous
      editor = "neovim";
    };

    keybindings = {
      "ctrl+t" = "new_tab_with_cwd";
      "ctrl+w" = "close_tab"; 
    };  
  };

  programs.waybar = {
    enable = true;
    settings = {};
    style = '' 
      * {
        border: none;
	font-family: "JetBrainsMono Nerd Font";
        font-size: 13px;
      }
    '';
  };

  # Service Settings

  services.hyprpaper = {
    enable = true;
    settings = {
      splash = true;

      preload = [
        "/home/musa/Pictures/Wallpapers/wp7427278-2256x1504-wallpapers.jpg"
      ];   

      wallpaper = [
        "eDP-1,/home/musa/Pictures/Wallpapers/wp7427278-2256x1504-wallpapers.jpg"
      ];
    };  
  };


}
