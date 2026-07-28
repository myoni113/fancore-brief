#!/usr/bin/env bash
# install.sh - Pod 解压后跑一次
set -eo pipefail
cd "$(dirname "$0")"

echo "[install] step: start"

# ── 纯前端 SPA 托管 runtime（仅 server.cjs 依赖的 serve-handler）─────────────
echo "[install] step: setup .guard-runtime/ for static serving (serve-handler)"
mkdir -p .guard-runtime

if [ ! -f .guard-runtime/package.json ]; then
  cat > .guard-runtime/package.json <<'JSON'
{
  "name": "guard-static-runtime",
  "version": "1.0.0",
  "private": true,
  "description": "guard-transform 渲染的纯前端托管 runtime，仅含 server.cjs 所需依赖",
  "dependencies": {
    "serve-handler": "^6.1.5"
  }
}
JSON
fi

(
  cd .guard-runtime
  if [ -f package-lock.json ]; then
    npm ci --omit=dev 2>&1
  else
    npm install --no-audit --prefer-offline --omit=dev 2>&1
  fi
)

echo "[install] done"
