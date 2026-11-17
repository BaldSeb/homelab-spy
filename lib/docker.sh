docker_is_installed() {
    command -v docker >/dev/null 2>&1
}

docker_is_running() {
    docker info >/dev/null 2>&1
}

display_docker_containers() {
    if ! docker_is_installed; then
        echo "Docker is not installed."
        return 1
    fi

    if ! docker_is_running; then
        echo "Docker is installed, but the Docker daemon is not running."
        return 1
    fi

    docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}"
}