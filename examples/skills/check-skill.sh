#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "usage: $0 <SKILL.md>" >&2
  exit 64
fi

skill_path="$1"

required_sections=(
  "## When to use"
  "## Inputs"
  "## Workflow"
  "## Guardrails"
)

for section in "${required_sections[@]}"; do
  if ! rg -q "^${section}$" "$skill_path"; then
    echo "missing required section: ${section}" >&2
    exit 1
  fi
done

echo "skill definition looks complete: ${skill_path}"

