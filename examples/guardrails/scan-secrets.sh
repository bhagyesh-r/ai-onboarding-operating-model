#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "usage: $0 <path> [more paths...]" >&2
  exit 64
fi

tmp_patterns="$(mktemp)"
trap 'rm -f "$tmp_patterns"' EXIT

cat >"$tmp_patterns" <<'EOF'
AKIA[0-9A-Z]{16}
gh[pousr]_[A-Za-z0-9]{20,}
-----BEGIN [A-Z ]*PRIVATE KEY-----
EOF

if rg -n --hidden --glob '!.git' -f "$tmp_patterns" "$@"; then
  echo "potential secret detected" >&2
  exit 1
fi

echo "no obvious secrets found in: $*"

