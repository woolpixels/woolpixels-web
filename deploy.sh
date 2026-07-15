#!/usr/bin/env bash
# 把当前静态站同步到阿里云 ECS。
# 服务器通过 woolpixels-web systemd 服务在 8088 端口提供静态文件，
# Nginx Proxy Manager 负责 woolpixels.cc 的 80/443 反向代理。

set -e

SERVER_IP="8.149.132.142"
REMOTE_DIR="/opt/woolpixels-web"
LOCAL_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "同步 $LOCAL_DIR  →  $SERVER_IP:$REMOTE_DIR"

rsync -avz --delete \
  --exclude '.git' \
  --exclude '.DS_Store' \
  --exclude 'deploy.sh' \
  "$LOCAL_DIR"/ root@"$SERVER_IP":"$REMOTE_DIR"/

echo "已同步完成，访问 https://woolpixels.cc 查看"
