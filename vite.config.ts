import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

export default defineConfig({
  plugins: [vue()],
  // GitHub Pages 需要 base 路径
  base: '/fancore-brief/',
  server: { host: '0.0.0.0', port: 5173 },
  build: { outDir: 'dist', emptyOutDir: true },
})
