{config, pkgs, ...}:

{
  services.hyprpaper = {
      enable = true;
      settings = {
        splash = true;

        preload = [
          "/home/musa/Pictures/Wallpapers/windows.jpg"
        ];

        wallpaper = [
          "eDP-1,/home/musa/Pictures/Wallpapers/windows.jpg"
        ];
      };
    };
}
