#!/bin/sh
set -eu

repo_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
config_dir=${XDG_CONFIG_HOME:-"$HOME/.config"}

link_file() {
    source=$1
    target=$2

    if [ -e "$target" ] && [ ! -L "$target" ]; then
        printf 'Skipping %s: existing non-symlink file\n' "$target" >&2
        return
    fi

    mkdir -p "$(dirname -- "$target")"
    ln -sfn "$source" "$target"
    printf 'Linked %s\n' "$target"
}

link_file "$repo_dir/.bashrc" "$HOME/.bashrc"
link_file "$repo_dir/i3/config" "$config_dir/i3/config"
link_file "$repo_dir/polybar/config.ini" "$config_dir/polybar/config.ini"
link_file "$repo_dir/polybar/launch.sh" "$config_dir/polybar/launch.sh"
link_file "$repo_dir/alacritty/alacritty.toml" "$config_dir/alacritty/alacritty.toml"
link_file "$repo_dir/rofi/config.rasi" "$config_dir/rofi/config.rasi"
link_file "$repo_dir/rofi/alt-tab.sh" "$config_dir/rofi/alt-tab.sh"
link_file "$repo_dir/picom/picom.conf" "$config_dir/picom/picom.conf"

printf '%s\n' 'Touchpad config is not installed automatically; copy it with sudo if desired:'
printf '  sudo install -Dm644 %s %s\n' \
    "$repo_dir/etc/X11/xorg.conf.d/90-touchpad.conf" \
    '/etc/X11/xorg.conf.d/90-touchpad.conf'
