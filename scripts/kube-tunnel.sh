#!/usr/bin/env bash
set -euo pipefail

# kube-tunnel.sh
# Create an SSH tunnel for Kubernetes API access.

show_help() {
	cat <<EOF
Usage: $(basename "$0") --server SERVER --user USER [options]

Required:
  --server, -s, -h    Server IP or DNS
  --user, -u          SSH username

Options:
  --port, -p          SSH port (default: 22)
  --identity, -i      Path to SSH identity file (optional)
  --local-port, -l    Local port to bind (default: 6443)
  --remote-port, -r   Remote API port on the server (default: 6443)
  --help              Show this help message

Example:
  $(basename "$0") --server 203.0.113.10 --user ubuntu -i ~/.ssh/id_rsa
  # Then point kubectl to https://127.0.0.1:6443
EOF
}

# Defaults
PORT=22
LOCAL_PORT=6443
REMOTE_PORT=6443
IDENTITY=""

# Parse args (simple, supports long and short forms)
while [ "$#" -gt 0 ]; do
	case "$1" in
		--server|-s|-h)
			SERVER="$2"; shift 2;;
		--user|-u)
			USER="$2"; shift 2;;
		--port|-p)
			PORT="$2"; shift 2;;
		--identity|-i)
			IDENTITY="$2"; shift 2;;
		--local-port|--local|-l)
			LOCAL_PORT="$2"; shift 2;;
		--remote-port|--remote|-r)
			REMOTE_PORT="$2"; shift 2;;
		--help)
			show_help; exit 0;;
		*)
			echo "Unknown argument: $1" >&2
			show_help; exit 1;;
	esac
done

# Validate required args
if [ -z "${SERVER:-}" ] || [ -z "${USER:-}" ]; then
	echo "Error: --server and --user are required." >&2
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
	-p "${PORT}"
	-o ExitOnForwardFailure=yes
	-o ServerAliveInterval=60
	-o ServerAliveCountMax=3
)

if [ -n "${IDENTITY}" ]; then
	ssh_args+=(-i "${IDENTITY}")
fi

target="${USER}@${SERVER}"

cat <<MSG
Starting SSH tunnel to ${target} ...
Local  https://127.0.0.1:${LOCAL_PORT}  ->  ${SERVER}:${REMOTE_PORT} over SSH port ${PORT}
Press Ctrl+C to stop.
MSG

# Exec ssh so it replaces the shell process (Ctrl+C works naturally)
exec ssh "${ssh_args[@]}" "${target}"

