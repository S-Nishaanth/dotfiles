# Dotfiles

Lightweight X11 desktop configuration for i3, Polybar, Picom, Rofi, Alacritty,
and Bash.

## Install

Review the existing files in `~/.config` first, then run:

```sh
./install.sh
```

The installer only replaces existing symbolic links; it skips existing regular
files. The X11 touchpad configuration requires the displayed `sudo install`
command because it belongs in `/etc`.

## Requirements

Install the programs referenced by the configuration: i3, polybar, picom,
rofi, alacritty, dunst (if used by your system), dex, xss-lock, i3lock,
NetworkManager, blueman, autotiling, feh, xrdb, brightnessctl, playerctl,
scrot, xclip, and Starship (optional).

The configuration expects a wallpaper at
`~/Pictures/wallpapers/1.jpg`. `~/.Xresources` is optional and is loaded only
when present.
