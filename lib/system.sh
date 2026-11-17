display_system_info() {
    echo "System Information:"
    echo "-------------------"
    echo "Hostname:"
    cat /proc/sys/kernel/hostname
    echo ""
    
    echo "Uptime:"
    uptime
    echo ""

    echo "CPU Cores:"
    nproc
    echo ""

    echo "Memory:"
    free -h
    echo ""

    echo "Disk Usage:"
    df -h /
    echo ""
}