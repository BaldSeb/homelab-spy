#!/usr/bin/env bash

main() {
    if ! command -v gum >/dev/null 2>&1; then
        echo "gum is not installed. Please install gum to use this script."
        exit 1
    fi

    gum style --foreground 212 --border normal --padding "1" --margin "1" "Welcome to Homelab Spy!"

    choice=$(
        gum choose \
            "System Info" \
            "Docker Info" \
            "exit"
    )

    case "$choice" in
        "System Info")
            echo "System info selected"
            ;;
        "Docker Info")
            echo "Docker info selected"
            ;;
        "exit")
            echo "Exiting..."
            exit 0
            ;;
        *)
            exit 0
            ;;
    esac
}

main