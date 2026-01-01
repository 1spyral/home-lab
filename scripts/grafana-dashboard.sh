#!/bin/bash

# Grafana Dashboard Port Forward Script
# Forwards the Grafana service into localhost and opens it in the browser.

# Default values
PORT=3000
HOST="127.0.0.1"
NAMESPACE="monitoring"
SERVICE="kube-prometheus-stack-grafana"
REMOTE_PORT=80

print_usage() {
    echo "Usage: $0 [-p port] [-a address] [-h]"
    echo "  -p port     Local port to use for port-forwarding (default: 8080)"
    echo "  -a address  Local address to bind (default: 127.0.0.1)"
    echo "  -h          Show this help message"
}

# Parse command line arguments
while getopts "p:a:h" opt; do
    case $opt in
        p)
            PORT="$OPTARG"
            ;;
        a)
            HOST="$OPTARG"
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

echo "Starting port-forward for Grafana dashboard on $HOST:$PORT... (remote port $REMOTE_PORT)"

# Start port-forward in the background
kubectl -n "$NAMESPACE" port-forward --address "$HOST" svc/"$SERVICE" "$PORT":"$REMOTE_PORT" &
PORT_FORWARD_PID=$!

# Wait a moment for port-forward to establish
sleep 2

# Check if port-forward is running
if kill -0 "$PORT_FORWARD_PID" 2>/dev/null; then
    echo "Port-forward established (PID: $PORT_FORWARD_PID)"
    echo "Opening Grafana dashboard at http://$HOST:$PORT"

    # Open browser (works on macOS)
    open "http://$HOST:$PORT"

    echo "Press Ctrl+C to stop port-forwarding and exit"

    # Wait for the port-forward process or user interrupt
    wait "$PORT_FORWARD_PID"
else
    echo "Failed to establish port-forward"
    exit 1
fi
