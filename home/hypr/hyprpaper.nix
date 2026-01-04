{config, pkgs, ...}:

{
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