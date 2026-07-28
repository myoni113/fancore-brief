<template>
  <div v-if="notes && notes.length" class="notes-grid" :class="[cols ? `cols-${cols}` : '', theme === 'dark' ? 'dark' : '']">
    <a
      v-for="n in notes"
      :key="n.id"
      :href="buildUrl(n)"
      target="_blank"
      rel="noopener"
      class="note-card"
    >
      <div class="cover-wrap">
        <img
          v-if="n.localCover || n.cover"
          :src="n.localCover || proxied(n.cover)"
          :alt="cleanTitle(n.title)"
          loading="lazy"
          @error="onImgError"
        />
        <span v-else class="fallback">📖</span>
        <span class="overlay">↗</span>
      </div>
      <p class="title">{{ cleanTitle(n.title) }}</p>
    </a>
  </div>
</template>

<script setup lang="ts">
const props = withDefaults(defineProps<{
  notes?: Array<{ id: string; title: string; cover: string; token?: string; source?: string; localCover?: string }>
  cols?: number
  theme?: 'light' | 'dark'
}>(), { cols: 0, theme: 'light' })

function buildUrl(n: { id: string; token?: string; source?: string }): string {
  const base = `https://www.xiaohongshu.com/explore/${n.id}`
  if (n.token) {
    const params = new URLSearchParams({ xsec_token: n.token, xsec_source: n.source || 'pc_search' })
    return `${base}?${params.toString()}`
  }
  return base
}

function cleanTitle(t: string): string {
  if (!t) return '查看笔记'
  return t.replace(/\s*-\s*小红书\s*$/, '').trim() || '查看笔记'
}

// xhscdn 走 wsrv.nl 图片代理
function proxied(url: string): string {
  if (!url) return ''
  const clean = url.replace(/^https?:\/\//, '')
  return `https://wsrv.nl/?url=${encodeURIComponent(clean)}&w=500&we&output=webp`
}

function onImgError(e: Event) {
  const el = e.target as HTMLImageElement
  el.style.display = 'none'
  const parent = el.parentElement
  if (parent && !parent.querySelector('.fallback')) {
    const span = document.createElement('span')
    span.className = 'fallback'
    span.textContent = '📖'
    parent.appendChild(span)
  }
}
</script>

<style scoped>
.notes-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
  gap: 10px;
  margin: 6px 0 4px;
}
.notes-grid.cols-1 { grid-template-columns: 1fr; }
.notes-grid.cols-2 { grid-template-columns: repeat(2, 1fr); }
.notes-grid.cols-3 { grid-template-columns: repeat(3, 1fr); }
.notes-grid.cols-4 { grid-template-columns: repeat(4, 1fr); }
.notes-grid.cols-5 { grid-template-columns: repeat(5, 1fr); }
.notes-grid.dark .note-card {
  background: rgba(255, 255, 255, .12);
  backdrop-filter: blur(4px);
}
.notes-grid.dark .title {
  color: rgba(255, 255, 255, .95);
}
.note-card {
  display: block;
  text-decoration: none;
  color: inherit;
  border-radius: 12px;
  overflow: hidden;
  background: #fff;
  box-shadow: 0 2px 8px rgba(0,0,0,.06);
  transition: transform .2s, box-shadow .2s;
}
.note-card:hover {
  transform: translateY(-3px);
  box-shadow: 0 8px 20px rgba(102,126,234,.2);
}
.cover-wrap {
  position: relative;
  width: 100%;
  aspect-ratio: 3 / 4;
  background: #f0f2fa;
  overflow: hidden;
}
.cover-wrap img {
  width: 100%; height: 100%;
  object-fit: cover;
  display: block;
}
.fallback {
  position: absolute; inset: 0;
  display: flex; align-items: center; justify-content: center;
  font-size: 2.5rem; color: #bbb;
}
.overlay {
  position: absolute; top: 6px; right: 6px;
  width: 24px; height: 24px;
  background: rgba(0,0,0,.55); color: #fff;
  border-radius: 50%;
  display: flex; align-items: center; justify-content: center;
  font-size: .8rem;
  opacity: 0; transition: opacity .2s;
}
.note-card:hover .overlay { opacity: 1; }
.title {
  margin: 0;
  padding: 8px 10px 10px;
  font-size: .85rem;
  line-height: 1.35;
  color: #333;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
  overflow: hidden;
  min-height: 40px;
}
@media (max-width: 640px) {
  .notes-grid { grid-template-columns: repeat(2, 1fr); gap: 10px; }
  .title { font-size: .8rem; padding: 6px 8px 8px; }
}
</style>
