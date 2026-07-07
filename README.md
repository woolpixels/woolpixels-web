# Woolpixels Web

Woolpixels 的静态官网，用于展示个人独立开发者产品与追追追 App 信息。

## 页面结构

- `index.html`: Woolpixels 首页，展示产品入口与网站备案号。
- `Odyssey/index.html`: 追追追产品页，包含 App Store 下载入口。
- `Odyssey/privacy.html`: 追追追隐私政策页。
- `Odyssey/assets/odyssey-logo.png`: 追追追图标资源。

## 当前产品

### 追追追

追追追是一款个人观影收藏 App，围绕海报墙、片刻、我超爱和追剧日历构建。

- App Store: https://apps.apple.com/cn/app/id6772548326
- 隐私政策: `Odyssey/privacy.html`

## 备案信息

网站页脚展示网站备案号：

- 鲁ICP备2026036710号-1

App 备案号不在网站页脚展示。

## 发布方式

当前项目是纯静态站点，可以直接部署到阿里云 ECS + Nginx。

仓库内提供 `deploy.sh`，默认将当前目录同步到服务器的 Nginx 默认根目录：

```bash
/usr/share/nginx/html
```

首次使用前需要在 `deploy.sh` 中设置：

```bash
SERVER_IP="你的公网IP"
```

然后在本机执行：

```bash
./deploy.sh
```

## GitHub

远端仓库：

https://github.com/woolpixels/woolpixels-web
