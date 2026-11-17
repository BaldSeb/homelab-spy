check_service() {
    local url="$1"

    echo "Checking the URL: $url"

    if curl --fail --silent --show-error --location --max-time 15 \
        --output /dev/null "$url"; then
        echo "Status: reachable"
        return 0
    else
        echo "Status: offline"
        return 1
    fi

    gum input --placeholder "https://exaple.com"
    
}