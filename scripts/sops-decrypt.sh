#!/usr/bin/env bash
set -euo pipefail

# sops-decrypt.sh <path>
# Decrypt a YAML/JSON file in-place using SOPS.

if [ $# -lt 1 ]; then
  echo "Usage: $(basename "$0") <path-to-file>" >&2
  exit 1
fi

file="$1"

if [ ! -f "$file" ]; then
  echo "File not found: $file" >&2
  exit 1
fi

sops --decrypt --in-place "$file"
