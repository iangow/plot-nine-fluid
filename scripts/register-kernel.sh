#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

if [[ ! -x "$ROOT_DIR/.venv/bin/python" ]]; then
  echo "Expected virtual environment at $ROOT_DIR/.venv" >&2
  echo "Run 'uv sync' first." >&2
  exit 1
fi

"$ROOT_DIR/.venv/bin/python" -m ipykernel install \
  --user \
  --name plotnine-fluid \
  --display-name "plotnine-fluid"

echo "Registered Jupyter kernel 'plotnine-fluid' from $ROOT_DIR/.venv"
