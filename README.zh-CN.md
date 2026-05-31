# plugin-observer

用于 **Muthur Command OS** 宿主侧监控的 Supervisor observer 插件，默认端口为 `4357`。

## API 端点

- GET `/logs`
- GET `/ping`

## 说明

- 镜像命名按 P0：`ghcr.io/muthur-command/{arch}-mcos-observer`（manifest 为 `mcos-observer`）。
- 前端页面与镜像元数据采用 **Muthur Command** / **Muthur Command OS** 品牌表述。

## 来源

- **上游：** [home-assistant/plugin-observer](https://github.com/home-assistant/plugin-observer) — Home Assistant Supervisor 的 observer 插件，本仓库由其移植而来。
- **本仓库：** **Muthur Command** 维护此 fork，供 **Muthur Command OS** 使用；行为可能随时间与上游产生差异。
- **许可：** 自上游继承的代码仍为 **Apache-2.0**；详见 [`LICENSE`](./LICENSE)。
