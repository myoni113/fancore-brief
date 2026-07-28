import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

// GitHub Pages 构建时设置 GITHUB_PAGES=true
const isGitHubPages = process.env.GITHUB_PAGES === 'true'

export default defineConfig({
  plugins: [vue()],
  base: isGitHubPages ? '/fancore-brief/' : '/',
  server: { host: '0.0.0.0', port: 5173 },
  build: { outDir: 'dist', emptyOutDir: true },
})
