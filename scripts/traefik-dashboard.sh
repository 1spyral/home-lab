#!/bin/bash

# Traefik Dashboard Port Forward Script
# This script port-forwards the Traefik deployment and opens the dashboard in the browser

# Default port
PORT=8080
REMOTE_PORT=8080

print_usage() {
    echo "Usage: $0 [-p port] [-h]"
    echo "  -p port    Local port to use for port-forwarding (default: 8080)"
    echo "  -h         Show this help message"
}

# Parse command line arguments
while getopts "p:h" opt; do
    case $opt in
        p)
            PORT="$OPTARG"
            ;;
        h)
            print_usage
            exit 0
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            print_usage
            exit 1
            ;;
    esac
done

echo "Starting port-forward for Traefik dashboard on port $PORT (remote port $REMOTE_PORT)..."

# Start port-forward in the background
kubectl -n networking port-forward deploy/traefik $PORT:"$REMOTE_PORT" &
PORT_FORWARD_PID=$!

# Wait a moment for port-forward to establish
sleep 2

# Check if port-forward is running
if kill -0 $PORT_FORWARD_PID 2>/dev/null; then
    echo "Port-forward established successfully (PID: $PORT_FORWARD_PID)"
    echo "Opening Traefik dashboard at http://localhost:$PORT"
    
    # Open browser (works on macOS)
    open http://localhost:$PORT
    
    echo "Press Ctrl+C to stop port-forwarding and exit"
    
    # Wait for the port-forward process or user interrupt
    wait $PORT_FORWARD_PID
else
    echo "Failed to establish port-forward"
    exit 1
fi
