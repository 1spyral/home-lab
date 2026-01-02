#!/usr/bin/env bash
set -euo pipefail

# kube-tunnel.sh
# Create an SSH tunnel for Kubernetes API access.

show_help() {
	cat <<EOF
Usage: $(basename "$0") [options]

Arguments (required unless set via environment variables):
  --target, -t        SSH destination (or set \$KUBE_TARGET)

Options:
	--port, -p          SSH port (optional; or set \$KUBE_SSH_PORT)
  --identity, -i      Path to SSH identity file (optional)
  --local-port, -l    Local port to bind (default: 6443)
  --remote-port, -r   Remote API port on the server (default: 6443)
  --help, -h          Show this help message

Examples:
  # Using environment variables
  export KUBE_TARGET=gloo
	# Optional: override port (otherwise uses SSH config / default)
	export KUBE_SSH_PORT=2222
  $(basename "$0")

  # Using command-line arguments
  $(basename "$0") --target gloo
  $(basename "$0") --target ubuntu@203.0.113.10 -i ~/.ssh/id_rsa

  # Then point kubectl to https://127.0.0.1:6443
EOF
}

# Defaults (can be overridden by environment variables or command-line args)
TARGET="${KUBE_TARGET:-}"
PORT="${KUBE_SSH_PORT:-}"
LOCAL_PORT=6443
REMOTE_PORT=6443
IDENTITY=""

# Parse args (simple, supports long and short forms)
while [ "$#" -gt 0 ]; do
	case "$1" in
		--target|-t)
			TARGET="$2"; shift 2;;
		--port|-p)
			PORT="$2"; shift 2;;
		--identity|-i)
			IDENTITY="$2"; shift 2;;
		--local-port|--local|-l)
			LOCAL_PORT="$2"; shift 2;;
		--remote-port|--remote|-r)
			REMOTE_PORT="$2"; shift 2;;
		--help|-h)
			show_help; exit 0;;
		*)
			echo "Unknown argument: $1" >&2
			show_help; exit 1;;
	esac
done

# Validate required args
if [ -z "${TARGET:-}" ]; then
	echo "Error: --target is required (or set \$KUBE_TARGET)." >&2
	show_help
	exit 2
fi

# Ensure ssh exists
if ! command -v ssh >/dev/null 2>&1; then
	echo "ssh not found. Please install it." >&2
	exit 3
fi

# Build ssh arguments
ssh_args=(
	-vv
	-N
	-L "${LOCAL_PORT}:127.0.0.1:${REMOTE_PORT}"
	-o ExitOnForwardFailure=yes
	-o ServerAliveInterval=60
	-o ServerAliveCountMax=3
)

if [ -n "${PORT}" ]; then
	ssh_args+=(-p "${PORT}")
fi

if [ -n "${IDENTITY}" ]; then
	ssh_args+=(-i "${IDENTITY}")
fi

target="${TARGET}"

cat <<MSG
Starting SSH tunnel to ${target} ...
Forwarding https://127.0.0.1:${LOCAL_PORT} via SSH (${target})
Press Ctrl+C to stop.
MSG

# Exec ssh so it replaces the shell process (Ctrl+C works naturally)
exec ssh "${ssh_args[@]}" "${target}"

