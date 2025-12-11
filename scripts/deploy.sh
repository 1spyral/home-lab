#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $0 <kustomize_path>"
  echo "Example: $0 apps/whoami"
  exit 1
fi

TARGET="$1"

echo "Building with kustomize (plugins enabled) → $TARGET"
kustomize build --enable-alpha-plugins "$TARGET" | kubectl apply -f -