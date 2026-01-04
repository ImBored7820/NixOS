{config, pkgs, ... }:

{

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
}