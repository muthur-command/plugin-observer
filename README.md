# plugin-observer

中文文档: [`README.zh-CN.md`](./README.zh-CN.md)

Supervisor plugin observer for **Muthur Command OS** host-side monitoring on port `4357`.

## API endpoints

- GET `/logs`
- GET `/ping`

## Notes

- Published image name follows P0: `ghcr.io/muthur-command/{arch}-mcio-observer` (manifest `mcio-observer`).
- UI and image metadata use **Muthur Command** / **Muthur Command OS** branding.

## Origin

- **Upstream:** [home-assistant/plugin-observer](https://github.com/home-assistant/plugin-observer) — Home Assistant Supervisor observer plugin, from which this tree was ported.
- **In this repo:** **Muthur Command** keeps this fork for **Muthur Command OS**; behavior may diverge from upstream over time.
- **License:** Code inherited from upstream remains **Apache-2.0**; see [`LICENSE`](./LICENSE).
