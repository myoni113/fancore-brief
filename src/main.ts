import { createApp } from 'vue'
import { createRouter, createWebHistory, createWebHashHistory } from 'vue-router'
import App from './App.vue'

// GitHub Pages 使用 hash 模式，Cowork 使用 history 模式
const isGitHubPages = window.location.hostname.includes('github.io')
const router = createRouter({
  history: isGitHubPages ? createWebHashHistory() : createWebHistory(import.meta.env.BASE_URL),
  routes: [
    { path: '/', component: () => import('./pages/HomeV2.vue') },
  ],
})

const app = createApp(App)
app.use(router)
app.mount('#app')
