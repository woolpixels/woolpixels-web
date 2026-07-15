# Woolpixels Web

Woolpixels 的静态官网，用于展示个人独立开发者产品与追追追 App 信息。

## 页面结构

- `index.html`: Woolpixels 首页，展示产品入口与网站备案号。
- `Odyssey/index.html`: 追追追产品页，包含 App Store 下载入口。
- `Odyssey/privacy.html`: 追追追隐私政策页。
- `assets/mps-beian.png`: 公安联网备案图标。
- `Odyssey/assets/odyssey-logo.png`: 追追追图标资源。

## 当前产品

### 追追追

追追追是一款个人观影收藏 App，围绕海报墙、片刻、我超爱和追剧日历构建。

- App Store: https://apps.apple.com/cn/app/id6772548326
- 隐私政策: `Odyssey/privacy.html`

## 备案信息

网站页脚展示网站备案号：

- 鲁ICP备2026036710号-1
- 鲁公网安备37011602000405号

App 备案号不在网站页脚展示。

## 页面交互

- 页面文字禁用鼠标选择，链接仍保持可点击。
- 首页产品卡片默认白底，悬停仅改变填充背景色，不使用投影或上移效果。
- 追追追功能卡片默认白底，不使用悬停投影或上移效果。

## 发布方式

当前项目是纯静态站点，线上部署在阿里云 ECS。

- ECS 公网 IP: `8.149.132.142`
- 静态文件目录: `/opt/woolpixels-web`
- 本机静态服务: `woolpixels-web.service`，监听 `8088`
- 外层代理: Nginx Proxy Manager，负责 `woolpixels.cc` 的 `80/443`

仓库内提供 `deploy.sh`，用于将当前目录同步到线上静态文件目录：

```bash
./deploy.sh
```

## GitHub

远端仓库：

https://github.com/woolpixels/woolpixels-web
