#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "usage: $0 \"<command>\"" >&2
  exit 64
fi

command_text="$1"
blocked_patterns=(
  "terraform apply -auto-approve"
  "rm -rf /"
  "gh repo delete"
  "npm publish"
)

for pattern in "${blocked_patterns[@]}"; do
  if [[ "$command_text" == *"$pattern"* ]]; then
    echo "blocked by pre-command hook: ${pattern}" >&2
    exit 1
  fi
done

echo "command allowed: ${command_text}"

