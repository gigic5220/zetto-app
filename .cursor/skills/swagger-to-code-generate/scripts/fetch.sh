#!/usr/bin/env bash
set -euo pipefail

ENV_FILE="${ENV_FILE:-.env}"
if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck source=/dev/null
  . "$ENV_FILE"
  set +a
fi

AUTH_URL="${AUTH_URL:-}"
SCHEMA_URL="${SCHEMA_URL:-}"
SCHEMA_FILE="${SCHEMA_FILE:-api.json}"
COOKIE_JAR="${COOKIE_JAR:-cookies.txt}"
USERNAME="${USERNAME:-${SWAGGER_USERNAME:-}}"
PASSWORD="${PASSWORD:-${SWAGGER_PASSWORD:-}}"

usage() {
  cat >&2 <<'EOF'
Usage:
  bash .cursor/skills/swagger-to-code-generate/scripts/fetch.sh

Required variables (.env or environment):
  SCHEMA_URL

Optional variables:
  AUTH_URL (required only when login is needed)
  USERNAME (or SWAGGER_USERNAME)
  PASSWORD (or SWAGGER_PASSWORD)
  SCHEMA_FILE (default: api.json)
  COOKIE_JAR (default: cookies.txt)
  ENV_FILE (default: .env)
EOF
}

require_var() {
  local name="$1"
  local value="${!name:-}"
  if [[ -z "$value" ]]; then
    echo "[fetch] Missing required variable: $name" >&2
    usage
    exit 1
  fi
}

require_var SCHEMA_URL

cleanup() {
  rm -f "$COOKIE_JAR"
}
trap cleanup EXIT

mkdir -p "$(dirname "$SCHEMA_FILE")"

if [[ -n "$USERNAME" || -n "$PASSWORD" ]]; then
  require_var AUTH_URL

  if [[ -z "$USERNAME" || -z "$PASSWORD" ]]; then
    echo "[fetch] Both USERNAME and PASSWORD are required when login is enabled" >&2
    usage
    exit 1
  fi

  echo "[fetch] Login request: $AUTH_URL"
  curl -fsS "$AUTH_URL" \
    --data-urlencode "username=$USERNAME" \
    --data-urlencode "password=$PASSWORD" \
    -c "$COOKIE_JAR" >/dev/null
else
  echo "[fetch] USERNAME/PASSWORD not provided, skipping login"
fi

echo "[fetch] Downloading schema: $SCHEMA_URL"
if [[ -s "$COOKIE_JAR" ]]; then
  curl -fsS "$SCHEMA_URL" -b "$COOKIE_JAR" -o "$SCHEMA_FILE"
else
  curl -fsS "$SCHEMA_URL" -o "$SCHEMA_FILE"
fi

if [[ ! -s "$SCHEMA_FILE" ]]; then
  echo "[fetch] Failed: output file is empty: $SCHEMA_FILE" >&2
  exit 1
fi

echo "[fetch] Saved: $SCHEMA_FILE"
