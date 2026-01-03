{ config, pkgs, ... }:

{
    programs.waybar = {
      enable = true;
      settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 24;
        spacing = 8;
        margin-top = 4;
        margin-left = 8;
        margin-right = 8;

        modules-left = ["hyprland/workspaces" "hyprland/window" "tray"];
        modules-center = ["clock"];
        modules-right = ["pulseaudio" "network" "bluetooth" "battery"];

        "hyprland/workspaces" = {
        disable-scroll = true;
        all-outputs = true;
        format = "{id}";
        };

        "hyprland/window" = {
        format = "{}";
        max-length = 50;
        separate-outputs = true;
        };

        tray = {
        icon-size = 14;
        spacing = 8;
        };

        clock = {
        format = " {:%a %b %d %I:%M %p}";
        tooltip-format = "<tt><small>{calendar}</small></tt>";
        };

        bluetooth = {
        format = "󰂯 ";
        format-disabled = "󰂲";
        format-connected = "󰂱 ";
        format-connected-battery = "󰂱 ";
        tooltip-format = "{controller_alias}\t{controller_address}\n\n{num_connections} connected";
        tooltip-format-connected = "{controller_alias}\t{controller_address}\n\n{num_connections} connected\n\n{device_enumerate}";
        on-click = "blueman-manager";
        };

        battery = {
        states = {
        warning = 30;
        critical = 15;
        };
        format = "{icon} {capacity}%";
        format-charging = "󰂄 {capacity}%";
        format-plugged = "󰚥 {capacity}%";
        format-alt = "{icon} {time}";
        format-icons = ["󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹"];
        };

        network = {
        format-wifi = "󰖩 ";
        format-ethernet = "󰈀";
        tooltip-format = "󰖩 {essid}\n󰩠 {ipaddr}/{cidr}\n{signalStrength}%";
        format-linked = "󰈀 No IP";
        format-disconnected = "󰖪";
        format-alt = "󰩠 {ipaddr}";
        };

        pulseaudio = {
        format = "{icon} {volume}%";
        format-bluetooth = "󰂰 {volume}%";
        format-bluetooth-muted = "󰂲";
        format-muted = "󰝟";
        format-icons = {
        headphone = "󰋋";
        hands-free = "󰋎";
        headset = "󰋎";
        phone = "󰄜";
        portable = "󰦧";
        car = "󰄋";
        default = ["󰕿" "󰖀" "󰕾"];
        };
        on-click = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
        on-click-right = "pwvucontrol";
        on-scroll-up = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+";
        on-scroll-down = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-";
        };
        };
        };

    style = builtins.readFile ./style.css;
    };
}