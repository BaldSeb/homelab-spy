#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/../lib/menu.sh"
source "${SCRIPT_DIR}/../lib/system.sh"
source "${SCRIPT_DIR}/../lib/docker.sh"
source "${SCRIPT_DIR}/../lib/service.sh"
source "${SCRIPT_DIR}/../lib/network.sh"

main() {
    if ! command -v gum >/dev/null 2>&1; then
        echo "gum is not installed. Please install gum to use this script."
        exit 1
    fi

    gum style --foreground 212 --border normal --padding "1" --margin "1" "Welcome to Homelab Spy!"

    choice=$(show_main_menu)

    case "$choice" in
        "System Info")
            echo "System info selected"
            display_system_info
            ;;
        "Docker Info")
            echo "Docker info selected"
            display_docker_containers
            ;;
        "Service Check")
            url="$(gum input --placeholder "https://example.com")"
            if [ -z "$url" ]; then
                exit 0
            fi
            check_service "$url"
            ;;
        "Network Info")
            display_network_info
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

# aIf you can read this, my brain is going crazy from all this bash code...
