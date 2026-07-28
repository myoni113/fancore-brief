#!/usr/bin/env bash
# start.sh - 由 Guard 应用拉起业务主进程；末行必须 exec
set -eo pipefail
cd "$(dirname "$0")"

export APP_PORT="${APP_PORT:-3000}"
export NODE_ENV=production

# server.cjs 绑定 0.0.0.0:${APP_PORT}
exec node server.cjs 2>&1
