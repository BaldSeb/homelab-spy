display_network_info() {
    echo "Network Info:"
    echo "-------------------"
    echo ""

    echo "Network Interfaces:"
    ip -brief address
    echo ""

    echo "Routing Table:"
    ip route show
    echo ""

    echo "ip address:"
    ip address show
    echo ""
}