#!/usr/bin/env bash

MIN_WORKSPACE=11

minimize_window() {
    WIN_ID=$(hyprctl activewindow -j | jq -r '.id')
    hyprctl dispatch movetoworkspacespecial "$WIN_ID" "$MIN_WORKSPACE"
}

restore_window() {
    WINDOWS=$(hyprctl clients -j | jq -r ".[] | select(.workspace==$MIN_WORKSPACE) | \"\(.title) - \(.class) - \(.id)\"")
    
    if [ -z "$WINDOWS" ]; then
        notify-send "Keine minimierten Fenster"
        exit 0
    fi

    SELECTED=$(echo "$WINDOWS" | rofi -dmenu -i -p "Restore window")
    
    if [ -n "$SELECTED" ]; then
        WIN_ID=$(echo "$SELECTED" | awk -F ' - ' '{print $3}')
        CURRENT_WS=$(hyprctl activewindow -j | jq -r '.workspace.id')
        hyprctl dispatch movetoworkspacespecial "$WIN_ID" "$CURRENT_WS"
        hyprctl dispatch focuswindow "$WIN_ID"
    fi
}

case "$1" in
    minimize)
        minimize_window
        ;;
    restore)
        restore_window
        ;;
    *)
        echo "Usage: $0 {minimize|restore}"
        ;;
esac

