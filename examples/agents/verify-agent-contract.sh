#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "usage: $0 <agent-contract.md>" >&2
  exit 64
fi

contract_path="$1"

required_sections=(
  "## Mission"
  "## Inputs"
  "## Constraints"
  "## Escalation"
  "## Definition of done"
)

for section in "${required_sections[@]}"; do
  if ! rg -q "^${section}$" "$contract_path"; then
    echo "missing required section: ${section}" >&2
    exit 1
  fi
done

echo "agent contract looks complete: ${contract_path}"

