<template>
  <div v-if="notes && notes.length" class="notes-grid">
    <a
      v-for="n in notes"
      :key="n.id"
      :href="`https://www.xiaohongshu.com/explore/${n.id}`"
      target="_blank"
      rel="noopener"
      class="note-card"
    >
      <div class="cover-wrap">
        <img
          :src="proxied(n.cover)"
          :alt="cleanTitle(n.title)"
          loading="lazy"
          @error="onImgError"
        />
        <span class="overlay">↗</span>
      </div>
      <p class="title">{{ cleanTitle(n.title) }}</p>
    </a>
  </div>
</template>

<script setup lang="ts">
defineProps<{ notes?: Array<{ id: string; title: string; cover: string }> }>()

function cleanTitle(t: string): string {
  if (!t) return '查看笔记'
  return t.replace(/\s*-\s*小红书\s*$/, '').trim() || '查看笔记'
}

// xhscdn images use http and hotlink checks; we route through wsrv.nl 图片代理来
// 规避混合内容 + 可能的防盗链（GitHub Pages 是 https）
function proxied(url: string): string {
  if (!url) return ''
  // 剥掉协议头，交给 wsrv.nl（免费图床代理，公开可用）
  const clean = url.replace(/^https?:\/\//, '')
  return `https://wsrv.nl/?url=${encodeURIComponent(clean)}&w=600&we&output=webp`
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
  gap: 12px;
  margin: 8px 0 4px;
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
