# plugin-observer

用于 MCOS 宿主侧监控的 Supervisor observer 插件，默认端口为 `4357`。

## API 端点

- GET `/logs`
- GET `/ping`

## 说明

- 镜像命名按 P0：`ghcr.io/muthur-command/{arch}-mcio-observer`（manifest 为 `mcio-observer`）。
- 前端页面与镜像元数据均已 MCOS 化。
