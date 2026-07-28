# Cowork pure-spa-vite scaffold

按 ai-demo-platform-guard-transform-skill / pure-spa-vite profile 规范产物。

## 关键设计

- **生产托管**：用 `server.cjs`（serve-handler lib）托管 `dist/`，**不是** FastAPI 托管
- **/health endpoint**：server.cjs 自带，无需后端
- **SPA history fallback**：自动处理 vue-router / react-router 的 history 模式
- **依赖隔离**：托管层 serve-handler 装在 `.guard-runtime/node_modules/`，不污染业务 package.json

## 开发

```sh
npm install
npm run dev  # vite dev server，热重载
```

## 部署前必须 build

```sh
npm run build          # 出 dist/
bash install.sh        # 装 .guard-runtime/serve-handler
bash start.sh          # node server.cjs
```

`cowork.publish` 自动跑 `prepack.sh`（如果有）或 `npm run build`。
