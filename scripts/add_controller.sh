#!/usr/bin/env bash
set -euo pipefail

usage() {
  echo "Usage: $0 <path/to/~~_page.dart>" 1>&2
}

if [[ ${1-} == "" ]]; then
  usage
  exit 64
fi

PAGE_PATH="$1"

dart run packages/develop_macro/bin/develop_macro.dart add_controller -p "$PAGE_PATH"


