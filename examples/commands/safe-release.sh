#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "usage: $0 <environment>" >&2
  exit 64
fi

environment="$1"

if [[ "$environment" == "production" && "${APPROVED_BY_HUMAN:-0}" != "1" ]]; then
  echo "production release blocked: set APPROVED_BY_HUMAN=1 after explicit human approval" >&2
  exit 1
fi

echo "release plan accepted for ${environment}"
echo "1. run focused verification"
echo "2. publish the artifact"
echo "3. confirm post-release health checks"

