{config,lib, pkgs, inputs, stable, hyprland, ... }:
{
  home.username = "musa";
  home.homeDirectory = "/home/musa";
  home.stateVersion = "25.11";
  programs.firefox.enable = true;

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "ImBored7820";
	email = "mohammedmusaali549@gmail.com";
      };
    };
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
      tab_powerline_style = "round";
      tab_title_template = "{layout_name[:2].upper()}";

      # Miscellaneous
      editor = "neovim";
    };

    keybindings = {
      "ctrl+t" = "new_tab";
      "ctrl+w" = "close_tab"; 
    };  
  };

  # Packages
  home.packages = with pkgs; [
    # Main
    discord
    spotify
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
}
