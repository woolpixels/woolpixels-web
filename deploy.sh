#!/usr/bin/env bash
# 把 website 目录同步到阿里云 ECS（Nginx 默认根目录）。
# 用法：① 改下面的 SERVER_IP；② 在 Mac 终端执行 ./deploy.sh
# 首次需在服务器上先装 Nginx：dnf install -y nginx && systemctl enable --now nginx

set -e

SERVER_IP="你的公网IP"              # ← 改成你 ECS 的公网 IP
REMOTE_DIR="/usr/share/nginx/html"  # Nginx 默认网站根目录
LOCAL_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "同步 $LOCAL_DIR  →  $SERVER_IP:$REMOTE_DIR"

rsync -avz --delete \
  --exclude 'deploy.sh' \
  "$LOCAL_DIR"/ root@"$SERVER_IP":"$REMOTE_DIR"/

echo "✅ 已同步完成，访问 http://$SERVER_IP 查看"
