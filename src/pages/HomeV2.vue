<template>
  <div class="page-v2">
    <nav class="topnav">
      <div class="brand">
        <span class="brand-badge">🎨</span>
        <span class="brand-name">2.5次元圈层</span>
      </div>
      <a href="#intro">圈层简介</a>
      <a href="#join">参与方式</a>
      <a href="#agccore">Fancore</a>
      <a href="#others">其他方向</a>
    </nav>

    <div class="deco-line">
      <span class="dot"></span><span class="line"></span><span class="dot big"></span><span class="line"></span><span class="dot"></span>
    </div>

    <!-- Hero -->
    <section class="hero-split">
      <div class="hero-left">
        <span class="hero-tag">#穿搭暗号对一下 · #自搭出街</span>
        <h1 class="hero-title">穿搭暗号<span class="accent">对一下</span></h1>
        <p class="hero-desc">
          从追的番 / 玩的游戏 / 关注的 IP 中人物角色的
          <strong>标志性穿搭颜色 / 元素</strong>汲取灵感，
          以喜欢的 ta 为灵感，创作属于你的日常穿搭风格。
        </p>
        <div class="hero-cta-row">
          <a class="btn btn-ghost"
             href="https://doc.weixin.qq.com/forms/ANAAyQcbAAgAaYAdwYSAHcCNxjY7m1yFf?page=1"
             target="_blank">填写返稿投流表</a>
        </div>
        <!-- 官宣笔记——移到投流表下方 -->
        <a class="official-inline"
           href="https://www.xiaohongshu.com/explore/6a5624c8000000001101e173" target="_blank">
          <div class="official-inline-cover"><img :src="officialCover" alt="官宣笔记"/></div>
          <div class="official-inline-info">
            <span class="official-tag">📌 官宣笔记</span>
            <span class="official-inline-title">穿搭暗号对一下｜用一件衣服认出自己人</span>
          </div>
          <span class="official-inline-cta">查看 →</span>
        </a>
      </div>
      <div class="hero-right">
        <div class="phone-mock">
          <div class="phone-notch"></div>
          <img :src="fancore1" alt="自搭出街 穿搭" class="phone-cover"/>
          <span class="phone-badge">#自搭出街</span>
        </div>
      </div>
    </section>

    <!-- 官宣笔记已移至 Hero 内部 CTA 下方，这里不重复放 -->

    <!-- ────── 一、圈层简介 ────── -->
    <section id="intro" class="section">
      <header class="section-head">
        <div class="head-badge"><span class="badge-num">一</span></div>
        <div class="head-title-wrap">
          <h2 class="section-title">圈层简介</h2>
          <span class="section-en">CHAPTER 1 · INTRO</span>
        </div>
      </header>

      <div class="intro-card">
        <div class="intro-badge">「2.5 次元圈层」</div>
        <p class="intro-text">
          从<b>追的番 / 玩的游戏 / 关注的 IP</b> 中人物角色的标志性
          <b>穿搭颜色 / 元素</b>汲取灵感，以喜欢的 ta 为灵感，
          创作属于你的日常穿搭风格。
        </p>
      </div>
    </section>

    <!-- ────── 二、参与方式 ────── -->
    <section id="join" class="section">
      <header class="section-head">
        <div class="head-badge"><span class="badge-num">二</span></div>
        <div class="head-title-wrap">
          <h2 class="section-title">参与方式</h2>
          <span class="section-en">CHAPTER 2 · HOW TO JOIN</span>
        </div>
        <p class="section-sub">发布前必读，投流规则一次讲清</p>
      </header>

      <div class="rule-list">
        <div class="rule-item"><span class="rule-num">1</span><div class="rule-body">
          <h4>📮 返稿投流</h4>
          <p>发布后<b>务必填写</b>返稿投流链接，薯薯会定期回扫，持续投流。</p>
          <a class="pill-btn"
             href="https://doc.weixin.qq.com/forms/ANAAyQcbAAgAaYAdwYSAHcCNxjY7m1yFf?page=1"
             target="_blank">📋 前往填写收集表 →</a>
        </div></div>
        <div class="rule-item"><span class="rule-num">2</span><div class="rule-body">
          <h4>活动征稿</h4>
          <p>即日起 — <b>9 月 15 日</b>，带话题发布笔记，瓜分上亿流量。</p>
        </div></div>
        <div class="rule-item"><span class="rule-num">3</span><div class="rule-body">
          <h4>笔记正文</h4>
          <p>与<b>2.5 次元灵感穿搭</b>相关，分享如何根据喜欢的 <b>ta</b> 发散灵感演绎穿搭。</p>
        </div></div>
        <div class="rule-item"><span class="rule-num">4</span><div class="rule-body">
          <h4>必带话题</h4>
          <div class="copy-hashtags-wrap">
            <button class="copy-hashtags" type="button" @click="copyHashtags">
              <template v-if="copyState === 'copied'">
                <span class="copy-check">✅</span>
                <span>已复制！去发布粘上吧</span>
              </template>
              <template v-else>
                <span class="copy-icon">📋</span>
                <span class="copy-tag">#穿搭暗号对一下</span>
                <span class="copy-tag">#自搭出街</span>
                <span class="copy-hint">点击复制</span>
              </template>
            </button>
          </div>
        </div></div>
      </div>
    </section>

    <!-- ────── 三、主推内容方向 #fancore ────── -->
    <section id="agccore" class="section">
      <header class="section-head">
        <div class="head-badge"><span class="badge-num">三</span></div>
        <div class="head-title-wrap">
          <h2 class="section-title">主推内容方向 <span class="hash-accent">#fancore</span></h2>
          <span class="section-en">CHAPTER 3 · FANCORE</span>
        </div>
      </header>

      <!-- 🚨 hot banner - 章三内部 -->
      <div class="hot-banner hot-banner-inline">
        <span class="hot-icon">🚨</span>
        <span class="hot-text">主推方向：动漫人物 × 真人同框！投稿即得大量流量！</span>
      </div>

      <!-- 什么是 fancore -->
      <div class="what-is-card">
        <div class="what-is-title">💡 什么是 fancore？</div>
        <p class="what-is-text">
          <b>fan</b> 的位置可以引申替换为任何角色名 / 作品名，
          例如 <b>JOJOcore</b>、<b>NANAcore</b>……从人物角色的
          标志性 <b>穿搭颜色 / 元素</b>汲取灵感，
          创作属于你的 <b>fancore 穿搭风格</b>。
        </p>
      </div>

      <!-- 3.1 内容范式 -->
      <h3 class="sub-heading">
        <span class="sub-heading-num">3.1</span> #fancore 的呈现形式？
      </h3>

      <p class="pattern-lead">
        🌟 推荐身着 fancore 灵感穿搭 和「二次元人物形象」同框<br/>
        🌟 图文笔记同框展示，视频笔记做封面展示和开头片段同框，示例如下 👇
      </p>

      <div class="pattern-card">
        <div class="pattern-visual-grid">
          <div class="pattern-visual-item"><img :src="patternA" alt="同框示例 A" loading="lazy"/></div>
          <div class="pattern-visual-item"><img :src="patternB" alt="同框示例 B" loading="lazy"/></div>
          <div class="pattern-visual-item"><img :src="patternC" alt="同框示例 C" loading="lazy"/></div>
        </div>
        <ol class="pattern-steps">
          <li><span class="step-num">1</span><div>
            <h5>封面动漫真人同框</h5>
            <p>将灵感来源的动漫人物贴在封面上</p>
          </div></li>
          <li><span class="step-num">2</span><div>
            <h5>2.5 次元灵感穿搭</h5>
            <p>提取角色人物的<b>标志性配色 / 单品 / 整体造型风格</b>，搭配你的穿搭</p>
          </div></li>
        </ol>
      </div>

      <h3 class="sub-heading" style="margin-top: 26px">
        同框参考笔记
      </h3>
      <div class="notes-row-5">
        <a v-for="n in notes.presentation" :key="n.id"
           :href="buildNoteUrl(n)" target="_blank" class="mini-note">
          <div class="mini-cover">
            <img v-if="n.localCover || n.cover" :src="n.localCover || proxied(n.cover)" :alt="clean(n.title)" loading="lazy"/>
            <span v-else class="fallback">📖</span>
          </div>
          <p class="mini-title">{{ clean(n.title) }}</p>
        </a>
      </div>

      <!-- 3.3 主推 core -->
      <h3 class="sub-heading" style="margin-top: 30px">
        <span class="sub-heading-num">3.2</span> #fancore 可以变成？
      </h3>
      <div class="core-row-2">
        <div v-for="core in row1Cores" :key="core.key" class="core-block">
          <div class="core-tag" :style="{background: core.gradient, color: core.color || '#fff'}">
            <span class="core-tag-name">{{ core.name }}</span>
            <span class="core-tag-desc">{{ core.desc }}</span>
          </div>
          <div class="core-notes-2col">
            <a v-for="n in (notes[core.key] || [])" :key="n.id"
               :href="buildNoteUrl(n)" target="_blank" class="mini-note">
              <div class="mini-cover">
                <img v-if="n.localCover" :src="n.localCover" :alt="clean(n.title)" loading="lazy"/>
                <img v-else-if="n.cover" :src="proxied(n.cover)" :alt="clean(n.title)" loading="lazy"/>
                <span v-else class="fallback">📖</span>
              </div>
              <p class="mini-title">{{ clean(n.title) }}</p>
            </a>
          </div>
        </div>
      </div>

      <div class="core-row-2" style="margin-top: 20px">
        <div v-for="core in row1bCores" :key="core.key" class="core-block">
          <div class="core-tag" :style="{background: core.gradient, color: core.color || '#fff'}">
            <span class="core-tag-name">{{ core.name }}</span>
            <span class="core-tag-desc">{{ core.desc }}</span>
          </div>
          <div class="core-notes-2col">
            <a v-for="n in (notes[core.key] || [])" :key="n.id"
               :href="buildNoteUrl(n)" target="_blank" class="mini-note">
              <div class="mini-cover">
                <img v-if="n.cover" :src="proxied(n.cover)" :alt="clean(n.title)" loading="lazy"/>
                <span v-else class="fallback">📖</span>
              </div>
              <p class="mini-title">{{ clean(n.title) }}</p>
            </a>
          </div>
        </div>
      </div>

      <div class="core-row-4" style="margin-top: 20px">
        <div v-for="core in row2Cores" :key="core.key" class="core-mini-block">
          <div class="core-tag mini" :style="{background: core.gradient, color: core.color || '#fff'}">
            <span class="core-tag-name">{{ core.name }}</span>
          </div>
          <a v-for="n in (notes[core.key] || [])" :key="n.id"
             :href="buildNoteUrl(n)" target="_blank" class="mini-note">
            <div class="mini-cover">
              <img v-if="n.cover" :src="proxied(n.cover)" :alt="clean(n.title)" loading="lazy"/>
              <span v-else class="fallback">📖</span>
            </div>
            <p class="mini-title">{{ clean(n.title) }}</p>
          </a>
        </div>
      </div>

      <!-- 3.3 你的 fancore 是什么？——纯文字标语 -->
      <p class="your-fancore-plain">
        你的 fancore 是什么？去发布属于你的 fancore！
      </p>
    </section>

    <!-- ────── 四、其他内容方向 ────── -->
    <section id="others" class="section">
      <header class="section-head">
        <div class="head-badge"><span class="badge-num">四</span></div>
        <div class="head-title-wrap">
          <h2 class="section-title">其他内容方向</h2>
          <span class="section-en">CHAPTER 4 · MORE IDEAS</span>
        </div>
      </header>

      <!-- 每条方向 tag + 示范笔记 -->
      <div v-for="dir in otherDirections" :key="dir.key" class="direction-block">
        <div class="direction-tag">
          <span class="direction-icon">{{ dir.icon }}</span>
          <span class="direction-name">{{ dir.name }}</span>
        </div>
        <a v-if="notes[dir.key] && notes[dir.key][0]"
           :href="buildNoteUrl(notes[dir.key][0])" target="_blank" class="direction-note">
          <div class="direction-note-cover">
            <img v-if="notes[dir.key][0].cover" :src="proxied(notes[dir.key][0].cover)"
                 :alt="clean(notes[dir.key][0].title)" loading="lazy"/>
            <span v-else class="fallback">📖</span>
          </div>
          <div class="direction-note-body">
            <p class="direction-note-title">{{ clean(notes[dir.key][0].title) }}</p>
            <span class="direction-note-cta">点击查看示范 →</span>
          </div>
        </a>
      </div>
    </section>

    <!-- CTA banner -->
    <section class="cta-banner">
      <div class="cta-banner-head">
        <span class="cta-arrow">→</span>
        <h3>现在就出稿，别错过流量池</h3>
      </div>
      <p class="cta-banner-desc">发布完成后请填收集表，薯薯会定期回扫并持续投流。</p>
      <div class="cta-banner-actions">
        <a class="cta-btn cta-btn-primary"
           href="https://doc.weixin.qq.com/forms/ANAAyQcbAAgAaYAdwYSAHcCNxjY7m1yFf?page=1"
           target="_blank">📋 前往填写收集表 →</a>
        <a class="cta-btn cta-btn-ghost"
           href="https://www.xiaohongshu.com/explore/6a5624c8000000001101e173"
           target="_blank">查看官宣笔记 →</a>
      </div>
    </section>

    <div class="deco-line bottom">
      <span class="dot"></span><span class="line"></span><span class="dot big red"></span><span class="line"></span><span class="dot"></span>
    </div>
    <footer class="footer-v2">
      <p>#穿搭暗号对一下 · #自搭出街</p>
      <p class="footer-sub">小红书 2.5 次元圈层 · 活动 brief · 2026.09</p>
    </footer>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'
import notesMeta from '../notes-meta.json'
import fancore1 from '../assets/fancore-1.webp'
import jojocoreFeatured from '../assets/jojocore-featured.webp'
import patternA from '../assets/pattern-a.webp'
import patternB from '../assets/pattern-b.webp'
import patternC from '../assets/pattern-c.webp'

const raw = notesMeta as Record<string, any[]>
const notes: Record<string, any[]> = JSON.parse(JSON.stringify(raw))
if (notes.presentation && notes.presentation[0] && !notes.presentation[0].cover) {
  notes.presentation[0].localCover = jojocoreFeatured
}
// JOJOcore 里那条 6a5cecc5（无 cover）也用同一张
if (notes.JOJOcore) {
  for (const n of notes.JOJOcore) {
    if (n.useLocalCover === 'fancore1' || !n.cover) {
      n.localCover = jojocoreFeatured
    }
  }
}

// other 里的 3 篇按顺序：阿宅现生 / 痛衣 / 动漫走出来
// 我们只用前 2 条（阿宅 + 痛衣），并从 other 里映射为「影响穿搭审美的动画」和「阿宅现生怎么穿」两组示范
// 简化处理：直接给两条方向各绑一篇笔记（示范）
if (notes.other && notes.other.length >= 2) {
  // dir1 = 影响穿搭审美的动画 → 新 note（分享人生中最影响我穿搭审美的四部动画）
  notes['dir-animation'] = [{
    id: '682ab1e5000000000c03866b',
    token: 'ABJyuUsArlPnJiEVD6f-cHT9PgpaLL0h0rRFc4zzruW0A=',
    source: 'pc_search',
    title: '分享人生中最影响我穿搭审美的四部动画',
    cover: 'http://sns-webpic-qc.xhscdn.com/202607281957/7bebd492086e8e3d05ca8b1abb691ee3/1040g00831hlcdsa9jo005nlp4kag8htrv1p3tv0!nd_dft_wlteh_jpg_3',
  }]
  // dir2 = 阿宅现生怎么穿 → 用第 1 条「阿宅和现生朋友出门 belike」示范
  notes['dir-otaku']     = [notes.other[0]]
}

const otherDirections = [
  { key: 'dir-animation', icon: '🎬', name: '影响穿搭审美的动画' },
  { key: 'dir-otaku',     icon: '🎧', name: '阿宅现生怎么穿' },
]

const officialCover = 'https://wsrv.nl/?url=' +
  encodeURIComponent('sns-webpic-qc.xhscdn.com/202607281333/7892aa9f579912de224e697962759ca4/spectrum/1040g34o32348rpj4n01g44n3shqsuc7rlj3ojv0!nd_dft_wlteh_jpg_3') +
  '&w=400&we&output=webp'

const clean = (t: string) => (t || '').replace(/\s*-\s*小红书\s*$/, '').trim() || '查看笔记'
const proxied = (url: string) => url
  ? `https://wsrv.nl/?url=${encodeURIComponent(url.replace(/^https?:\/\//, ''))}&w=500&we&output=webp`
  : ''
const buildNoteUrl = (n: any) => {
  const base = `https://www.xiaohongshu.com/explore/${n.id}`
  if (n.token) {
    const p = new URLSearchParams({ xsec_token: n.token, xsec_source: n.source || 'pc_search' })
    return `${base}?${p.toString()}`
  }
  return base
}

const row1Cores = [
  { key: 'JOJOcore', name: 'JOJOcore', desc: 'JOJO 的奇妙冒险风格',       gradient: 'linear-gradient(135deg,#c9b8fc,#8b5cf6)' },
  { key: '奈奈core', name: '奈奈core', desc: '蕾丝 + 泡泡短裤 + 小腿袜',   gradient: 'linear-gradient(135deg,#9d7bff,#7c3aed)' },
]
const row1bCores = [
  { key: '迪士尼core',      name: '迪士尼core',      desc: '迪士尼公主 / 反派风格',   gradient: 'linear-gradient(135deg,#d5c8ff,#b8a4fb)', color: '#5b21b6' },
  { key: '飞天小女警core', name: '飞天小女警core', desc: '毛毛 / 花花 / 泡泡三色配',   gradient: 'linear-gradient(135deg,#c8f7d4,#e5d9ff)', color: '#3a5a2d' },
]
const row2Cores = [
  { key: 'NANAcore',  name: 'NANAcore',  gradient: 'linear-gradient(135deg,#e5d9ff,#b8a4fb)', color: '#5b21b6' },
  { key: '鬼灭core',  name: '鬼灭core',  gradient: 'linear-gradient(135deg,#a78bfa,#c4b5fd)', color: '#663' },
  { key: 'HxHcore',   name: 'HxHcore',   gradient: 'linear-gradient(135deg,#d1c4e9,#f8bbd0)', color: '#5a3a7a' },
  { key: 'Kittycore', name: 'Kittycore', gradient: 'linear-gradient(135deg,#c4b5fd,#b8a4fb)', color: '#5b21b6' },
]

const copyState = ref<'idle' | 'copied'>('idle')
function copyHashtags() {
  const text = '#穿搭暗号对一下 #自搭出街'
  const done = () => { copyState.value = 'copied'; setTimeout(() => (copyState.value = 'idle'), 2000) }
  if (navigator.clipboard && window.isSecureContext) {
    navigator.clipboard.writeText(text).then(done).catch(() => fallback(text, done))
  } else { fallback(text, done) }
}
function fallback(text: string, done: () => void) {
  const ta = document.createElement('textarea')
  ta.value = text; ta.style.position = 'fixed'; ta.style.opacity = '0'
  document.body.appendChild(ta); ta.select()
  try { document.execCommand('copy'); done() } catch { /* noop */ }
  document.body.removeChild(ta)
}
</script>

<style scoped>
.page-v2 {
  min-height: 100vh;
  color: #2a1f45;
  font-family: -apple-system, BlinkMacSystemFont, 'PingFang SC', 'Hiragino Sans GB', 'Microsoft YaHei', sans-serif;
  padding-bottom: 40px;
  background-color: #f8f5ff;
  background-image:
    radial-gradient(circle, rgba(255,255,255,.9) 3px, transparent 3.5px),
    linear-gradient(180deg, #f8f5ff 0%, #e5d9ff 45%, #d9c8ff 100%);
  background-size: 26px 26px, 100% 100%;
}

.topnav {
  max-width: 980px; margin: 20px auto; padding: 10px 20px;
  display: flex; align-items: center; gap: 22px;
  background: rgba(255, 253, 249, .86);
  border: 1px solid rgba(124, 58, 237, .18);
  border-radius: 999px; backdrop-filter: blur(10px);
  box-shadow: 0 4px 20px rgba(124, 58, 237, .08);
  font-size: .92rem; position: sticky; top: 10px; z-index: 10;
  justify-content: center;
}
.topnav .brand { display: flex; align-items: center; gap: 8px; font-weight: 800; color: #7c3aed; margin-right: auto; }
.brand-badge {
  width: 28px; height: 28px;
  background: linear-gradient(135deg, #8b5cf6, #7c3aed);
  color: #fff; border-radius: 50%;
  display: flex; align-items: center; justify-content: center; font-size: .9rem;
}
.topnav a { color: #2a1f45; text-decoration: none; transition: color .2s; }
.topnav a:hover { color: #7c3aed; }
.topnav .cta-nav {
  padding: 5px 16px; background: #7c3aed; color: #fff !important;
  border-radius: 999px; font-weight: 700; margin-left: auto;
}

.deco-line {
  max-width: 980px; margin: 30px auto 20px;
  display: flex; align-items: center; gap: 8px; padding: 0 60px;
}
.deco-line.bottom { margin-top: 30px; }
.deco-line .line { flex: 1; height: 2px; background: repeating-linear-gradient(90deg, #c4b5fd 0 6px, transparent 6px 12px); }
.deco-line .dot { width: 8px; height: 8px; border-radius: 50%; background: #8b5cf6; }
.deco-line .dot.big { width: 14px; height: 14px; background: #7c3aed; }
.deco-line .dot.red { background: #7c3aed; }

.hero-split {
  max-width: 980px; margin: 20px auto 20px;
  padding: 44px 48px;
  background: rgba(255, 253, 249, .82);
  border: 1px solid rgba(124, 58, 237, .15);
  border-radius: 34px;
  box-shadow: 0 12px 40px rgba(124, 58, 237, .1);
  display: grid; grid-template-columns: 1.15fr .85fr;
  gap: 40px; align-items: center;
}
.hero-tag {
  display: inline-block; padding: 5px 14px;
  background: #efe8ff; color: #7c3aed;
  border: 1px solid #c4b5fd; border-radius: 999px;
  font-size: .8rem; font-weight: 700; margin-bottom: 18px;
}
.hero-title { font-size: 2.8rem; font-weight: 900; margin: 0 0 18px; line-height: 1.2; color: #2a1f45; letter-spacing: 0.02em; }
.hero-title .accent { background: linear-gradient(135deg, #8b5cf6, #7c3aed); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }
.hero-desc { font-size: 1rem; line-height: 1.75; color: #4a3f6a; margin: 0 0 24px; }
.hero-desc strong { color: #7c3aed; }
.hero-cta-row { display: flex; gap: 12px; flex-wrap: wrap; }
.btn { display: inline-block; padding: 10px 22px; border-radius: 999px; font-size: .95rem; font-weight: 700; text-decoration: none; transition: all .2s; }
.btn-primary { background: linear-gradient(135deg, #8b5cf6, #7c3aed); color: #fff !important; box-shadow: 0 4px 12px rgba(124, 58, 237, .3); }
.btn-primary:hover { transform: translateY(-2px); box-shadow: 0 6px 18px rgba(124, 58, 237, .4); }
.btn-ghost { background: #fff; color: #7c3aed !important; border: 1.5px solid #c4b5fd; }
.btn-ghost:hover { background: #efe8ff; }

.hero-right { display: flex; align-items: center; justify-content: center; }
.phone-mock {
  position: relative; width: 220px; height: 400px;
  background: #2a1f45; border: 5px solid #2a1f45;
  border-radius: 32px; overflow: hidden;
  box-shadow: 0 15px 40px rgba(42, 26, 32, .35), 0 0 0 3px rgba(139, 92, 246, .35);
}
.phone-notch { position: absolute; top: 0; left: 50%; transform: translateX(-50%); width: 80px; height: 20px; background: #2a1f45; border-radius: 0 0 12px 12px; z-index: 2; }
.phone-cover { width: 100%; height: 100%; object-fit: cover; display: block; }
.phone-badge { position: absolute; top: 30px; right: 8px; padding: 4px 10px; background: rgba(139, 92, 246, .95); color: #fff; border-radius: 999px; font-size: .7rem; font-weight: 700; z-index: 3; }

/* Hero 内嵌官宣笔记 (CTA 下方) */
.official-inline {
  display: flex; align-items: center;
  gap: 12px;
  margin-top: 14px;
  padding: 10px 14px;
  background: linear-gradient(135deg, #f8f5ff, #d9c8ff);
  border: 1.5px solid #8b5cf6;
  border-radius: 14px;
  text-decoration: none; color: inherit;
  transition: all .2s;
}
.official-inline:hover { transform: translateY(-1px); box-shadow: 0 6px 16px rgba(139, 92, 246, .3); }
.official-inline-cover {
  flex: 0 0 42px; aspect-ratio: 3 / 4;
  border-radius: 6px; overflow: hidden; background: #e5d9ff;
}
.official-inline-cover img { width: 100%; height: 100%; object-fit: cover; display: block; }
.official-inline-info { flex: 1; min-width: 0; display: flex; flex-direction: column; gap: 2px; }
.official-inline-title { font-size: .88rem; font-weight: 700; color: #2a1f45; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; }
.official-inline-cta { color: #7c3aed; font-weight: 700; font-size: .82rem; white-space: nowrap; }

/* 官宣笔记 strip （旧、不在页面使用） */
.official-strip {
  max-width: 980px;
  margin: 0 auto 20px;
  display: flex; align-items: center;
  gap: 14px;
  padding: 14px 18px;
  background: linear-gradient(135deg, #f8f5ff 0%, #d9c8ff 100%);
  border: 2px solid #8b5cf6;
  border-radius: 16px;
  box-shadow: 0 6px 20px rgba(139, 92, 246, .3);
  text-decoration: none; color: inherit;
  transition: all .2s;
}
.official-strip:hover { transform: translateY(-2px); box-shadow: 0 10px 28px rgba(139, 92, 246, .5); }
.official-strip-cover {
  flex: 0 0 60px; aspect-ratio: 3 / 4;
  border-radius: 8px; overflow: hidden; background: #e5d9ff;
}
.official-strip-cover img { width: 100%; height: 100%; object-fit: cover; display: block; }
.official-strip-info { flex: 1; display: flex; flex-direction: column; gap: 4px; min-width: 0; }
.official-tag {
  align-self: flex-start;
  padding: 3px 10px; background: #fff; color: #7c3aed;
  border: 1px solid #8b5cf6; border-radius: 999px;
  font-size: .78rem; font-weight: 700;
}
.official-strip-title { font-size: 1rem; font-weight: 700; color: #1a1a1a; margin: 0; }
.official-strip-cta { color: #7c3aed; font-weight: 700; font-size: .9rem; white-space: nowrap; }

/* Section */
.section {
  max-width: 980px; margin: 30px auto; padding: 36px 34px;
  background: rgba(255, 253, 249, .82);
  border: 1px solid rgba(124, 58, 237, .12);
  border-radius: 34px;
  box-shadow: 0 4px 18px rgba(124, 58, 237, .06);
}
.section-head {
  display: grid; grid-template-columns: auto 1fr auto;
  gap: 18px; align-items: center; margin-bottom: 28px;
  padding-bottom: 20px; border-bottom: 2px solid rgba(124, 58, 237, .18);
}
.head-badge { display: flex; }
.badge-num {
  width: 52px; height: 52px;
  background: linear-gradient(135deg, #8b5cf6, #7c3aed);
  color: #fff; border-radius: 50%;
  display: flex; align-items: center; justify-content: center;
  font-weight: 900; font-size: 1.4rem;
  box-shadow: 0 5px 14px rgba(124, 58, 237, .4);
  border: 3px solid #fff;
  outline: 3px solid rgba(124, 58, 237, .2);
}
.head-title-wrap { display: flex; flex-direction: column; }
.section-title { font-size: 1.75rem; font-weight: 900; margin: 0; color: #2a1f45; letter-spacing: 0.02em; }
.hash-accent { color: #7c3aed; font-size: 1.5rem; margin-left: 4px; }
.section-en { font-size: .72rem; color: #a08fbf; letter-spacing: .18em; margin-top: 3px; font-weight: 700; }
.section-sub { font-size: .9rem; color: #6a5a88; margin: 0; text-align: right; grid-column: 3; }

/* Intro */
.what-is-card {
  padding: 20px 24px;
  margin: 4px 0 12px;
  background: linear-gradient(135deg, #efe8ff, #ebe0ff);
  border: 1.5px solid #b8a4fb;
  border-radius: 18px;
  box-shadow: 0 4px 14px rgba(124, 58, 237, .12);
}
.what-is-title {
  font-size: 1.1rem;
  font-weight: 800;
  color: #7c3aed;
  margin-bottom: 8px;
}
.what-is-text {
  margin: 0;
  font-size: .98rem;
  line-height: 1.8;
  color: #2a1f45;
}
.what-is-text b { color: #7c3aed; }

.intro-card {
  padding: 28px 32px;
  background: linear-gradient(135deg, #efe8ff, #ebe0ff);
  border-radius: 20px;
  border: 1px solid rgba(124, 58, 237, .15);
  text-align: left;
}
.intro-badge {
  display: inline-block; padding: 8px 22px;
  background: #7c3aed; color: #fff;
  border-radius: 999px; font-weight: 800; font-size: 1rem;
  margin-bottom: 16px;
  box-shadow: 0 4px 12px rgba(124, 58, 237, .3);
}
.intro-text { font-size: 1.05rem; line-height: 1.85; color: #2a1f45; margin: 0; }
.intro-text b { color: #7c3aed; }

/* Sub heading */
.sub-heading {
  display: flex; align-items: baseline; gap: 10px;
  margin: 26px 0 12px; padding-left: 14px;
  border-left: 4px solid #f5b800;
  font-size: 1.1rem; font-weight: 800; color: #2a1f45; line-height: 1.35;
}
.sub-heading-num { color: #7c3aed; font-weight: 900; }

/* Rules */
.rule-list { display: flex; flex-direction: column; gap: 10px; }
.rule-item {
  display: flex; align-items: flex-start; gap: 16px;
  padding: 16px 20px;
  background: rgba(255, 240, 245, .55); border-radius: 16px;
  border-left: 4px solid #f5b800; transition: all .2s;
}
.rule-item:hover { background: rgba(255, 240, 245, .9); }
.rule-num {
  flex: 0 0 34px; height: 34px; background: #2a1f45; color: #fff; border-radius: 50%;
  display: flex; align-items: center; justify-content: center; font-weight: 800; font-size: 1rem;
  box-shadow: 0 2px 6px rgba(0,0,0,.15);
}
.rule-body { flex: 1; }
.rule-body h4 { margin: 0 0 6px; font-size: 1rem; color: #2a1f45; }
.rule-body p { margin: 0; font-size: .92rem; color: #4a3f6a; line-height: 1.6; }
.rule-body p b { color: #7c3aed; }
.pill-btn {
  display: inline-block; margin-top: 10px;
  padding: 6px 16px;
  background: #7c3aed; color: #fff !important;
  border-radius: 999px; font-size: .85rem; font-weight: 700;
  text-decoration: none;
  box-shadow: 0 3px 8px rgba(124, 58, 237, .3);
  transition: all .2s;
}
.pill-btn:hover { transform: translateY(-1px); box-shadow: 0 5px 12px rgba(124, 58, 237, .45); }

.copy-hashtags {
  display: inline-flex; align-items: center; gap: 8px;
  margin-top: 6px;
  padding: 8px 14px;
  background: linear-gradient(90deg, #f8f5ff, #efe8ff);
  color: #2a1f45; font-size: .92rem; font-weight: 700;
  border: 1.5px dashed #8b5cf6; border-radius: 12px;
  cursor: pointer; transition: all .2s;
}
.copy-hashtags .copy-icon { font-size: 1rem; }
.copy-hashtags .copy-check { font-size: 1rem; }
.copy-hashtags .copy-tag {
  display: inline-block;
  padding: 3px 12px;
  background: #ebe0ff;
  color: #7c3aed;
  border-radius: 999px;
  font-size: .82rem; font-weight: 700;
  border: 1px solid #c4b5fd;
}
.copy-hashtags .copy-hint {
  color: #7c3aed; font-size: .85rem; font-weight: 700;
  margin-left: 2px;
}
.copy-hashtags-wrap {
  display: flex; justify-content: flex-start;
  margin-top: 6px;
}
.copy-hashtags:hover {
  background: linear-gradient(90deg, #ebe0ff, #d9c8ff); border-color: #7c3aed;
  transform: translateY(-1px); box-shadow: 0 4px 12px rgba(139, 92, 246, .25);
}

.hot-banner {
  max-width: 980px; margin: 16px auto; padding: 16px 22px;
  display: flex; align-items: center; gap: 12px;
  background: #ffffff; color: #2a1f45;
  border: 2px solid #8b5cf6; border-radius: 14px;
  font-weight: 700; font-size: 1rem;
  box-shadow: 0 6px 24px rgba(109, 40, 217, .5), 0 0 0 4px rgba(109, 40, 217, .12);
}
.hot-banner.hot-banner-inline {
  max-width: none; margin: 0 0 22px;
}
.hot-icon { font-size: 1.5rem; filter: drop-shadow(0 2px 4px rgba(109, 40, 217, .55)); }
.hot-text { flex: 1; }

/* Rec strip 白高亮 + 玫红阴影 */
.rec-strip {
  display: block;
  padding: 12px 22px;
  margin: 8px 0 8px;
  background: #ffffff;
  color: #1a1a1a;
  font-weight: 800; font-size: 1.02rem;
  border-radius: 12px;
  border: 2px solid #6d28d9;
  box-shadow: 0 6px 24px rgba(109, 40, 217, .55), 0 0 0 4px rgba(109, 40, 217, .12);
  text-align: center;
}
.pattern-lead { font-size: .95rem; color: #4a3f6a; margin: 8px 0 14px; line-height: 1.7; }

.pattern-card {
  display: block;
  padding: 20px; background: rgba(255, 250, 253, .65);
  border-radius: 20px; border: 1px solid rgba(124, 58, 237, .1);
}
.pattern-visual-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 12px;
  margin-bottom: 20px;
}
.pattern-visual-item {
  aspect-ratio: 3 / 4;
  border-radius: 14px;
  overflow: hidden;
  background: #efe8ff;
  box-shadow: 0 4px 14px rgba(124, 58, 237, .15);
  transition: transform .2s;
}
.pattern-visual-item:hover { transform: translateY(-3px); box-shadow: 0 8px 20px rgba(124, 58, 237, .25); }
.pattern-visual-item img { width: 100%; height: 100%; object-fit: cover; display: block; }
.pattern-steps {
  display: grid; grid-template-columns: 1fr 1fr; gap: 14px;
  list-style: none; padding: 0; margin: 0;
}
.pattern-steps li {
  display: flex; gap: 12px; padding: 14px;
  background: #fff;
  border-radius: 14px;
  border: 1px solid rgba(124, 58, 237, .1);
  align-items: flex-start;
}
.pattern-steps li:last-child { border-bottom: none; }
.step-num {
  flex: 0 0 28px; height: 28px; background: #2a1f45; color: #fff; border-radius: 50%;
  display: flex; align-items: center; justify-content: center; font-weight: 800; font-size: .82rem;
}
.pattern-steps h5 { margin: 0 0 4px; font-size: 1rem; color: #2a1f45; font-weight: 700; }
.pattern-steps p { margin: 0; font-size: .88rem; color: #4a3f6a; line-height: 1.6; }
.pattern-steps b { color: #7c3aed; }

.notes-row-5 { display: grid; grid-template-columns: repeat(5, 1fr); gap: 10px; }
.mini-note {
  display: block; text-decoration: none; color: inherit;
  background: #fff; border-radius: 12px; overflow: hidden;
  border: 1px solid rgba(124, 58, 237, .1); transition: all .2s;
}
.mini-note:hover { transform: translateY(-3px); box-shadow: 0 6px 16px rgba(124, 58, 237, .2); border-color: #8b5cf6; }
.mini-cover { position: relative; aspect-ratio: 3 / 4; background: #e5d9ff; overflow: hidden; }
.mini-cover img { width: 100%; height: 100%; object-fit: cover; display: block; }
.fallback { position: absolute; inset: 0; display: flex; align-items: center; justify-content: center; font-size: 2rem; color: #bbb; }
.mini-title { margin: 0; padding: 8px 10px 10px; font-size: .82rem; line-height: 1.35; color: #2a1f45; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden; min-height: 40px; }

.core-row-2 { display: grid; grid-template-columns: repeat(2, 1fr); gap: 20px; }
.core-block {
  background: rgba(255, 240, 245, .35);
  border-radius: 16px; padding: 16px;
  border: 1px solid rgba(124, 58, 237, .1);
}
.core-tag {
  display: inline-flex; align-items: baseline; gap: 8px;
  padding: 5px 14px; border-radius: 18px;
  color: #fff; margin-bottom: 12px;
  box-shadow: 0 2px 6px rgba(0,0,0,.08);
}
.core-tag-name { font-weight: 700; font-size: 1rem; }
.core-tag-desc { font-size: .78rem; opacity: .95; }
.core-notes-2col { display: grid; grid-template-columns: repeat(2, 1fr); gap: 10px; }

.core-row-4 { display: grid; grid-template-columns: repeat(4, 1fr); gap: 14px; }
.core-mini-block {
  display: flex; flex-direction: column; gap: 10px;
  background: rgba(255, 240, 245, .35);
  border-radius: 14px; padding: 12px;
  border: 1px solid rgba(124, 58, 237, .1);
}
.core-tag.mini { padding: 4px 10px; gap: 4px; align-self: flex-start; }
.core-tag.mini .core-tag-name { font-size: .88rem; }

/* 你的 fancore 是什么？ - 纯文字 */
.your-fancore-plain {
  margin: 26px 0 6px;
  padding: 0;
  font-size: 1.15rem;
  font-weight: 800;
  color: #7c3aed;
  text-align: center;
  line-height: 1.6;
}

/* Direction block (四) */
.direction-block {
  display: grid;
  grid-template-columns: 200px 1fr;
  gap: 20px;
  padding: 16px;
  margin-bottom: 16px;
  background: rgba(255, 240, 245, .35);
  border-radius: 16px;
  border: 1px solid rgba(124, 58, 237, .12);
  align-items: center;
}
.direction-tag {
  display: flex; flex-direction: column; align-items: flex-start; gap: 8px;
  padding: 14px 18px;
  background: #7c3aed;
  color: #fff;
  border-radius: 14px;
  box-shadow: 0 4px 12px rgba(124, 58, 237, .3);
}
.direction-icon { font-size: 1.6rem; }
.direction-name { font-weight: 800; font-size: 1rem; line-height: 1.3; }
.direction-note {
  display: flex; gap: 14px; align-items: center;
  padding: 12px;
  background: #fff;
  border-radius: 12px;
  text-decoration: none; color: inherit;
  border: 1px solid rgba(124, 58, 237, .1);
  transition: all .2s;
}
.direction-note:hover { transform: translateY(-2px); box-shadow: 0 5px 14px rgba(124, 58, 237, .2); }
.direction-note-cover {
  flex: 0 0 90px; aspect-ratio: 3 / 4;
  border-radius: 8px; overflow: hidden; background: #e5d9ff;
  position: relative;
}
.direction-note-cover img { width: 100%; height: 100%; object-fit: cover; display: block; }
.direction-note-body { flex: 1; display: flex; flex-direction: column; gap: 6px; }
.direction-note-title { margin: 0; font-size: .95rem; font-weight: 700; color: #2a1f45; line-height: 1.4; }
.direction-note-cta { color: #7c3aed; font-size: .82rem; font-weight: 600; }

/* CTA banner 底部大蓝→改成粉色酒红 */
.cta-banner {
  max-width: 980px;
  margin: 30px auto 20px;
  padding: 28px 32px;
  background: linear-gradient(135deg, #7c3aed, #5b21b6);
  border-radius: 24px;
  color: #fff;
  box-shadow: 0 12px 32px rgba(124, 58, 237, .35);
}
.cta-banner-head { display: flex; align-items: center; gap: 14px; margin-bottom: 8px; }
.cta-arrow {
  flex: 0 0 40px; height: 40px;
  background: #f5b800; color: #2a1f45;
  border-radius: 50%;
  display: flex; align-items: center; justify-content: center;
  font-weight: 900; font-size: 1.2rem;
}
.cta-banner-head h3 { margin: 0; font-size: 1.35rem; font-weight: 800; color: #fff; }
.cta-banner-desc { margin: 0 0 18px; font-size: .95rem; opacity: .9; }
.cta-banner-actions { display: flex; gap: 12px; flex-wrap: wrap; }
.cta-btn { display: inline-block; padding: 10px 24px; border-radius: 999px; font-weight: 700; font-size: .95rem; text-decoration: none; transition: all .2s; }
.cta-btn-primary { background: #f5b800; color: #2a1f45 !important; box-shadow: 0 3px 10px rgba(245, 184, 0, .4); }
.cta-btn-primary:hover { transform: translateY(-2px); box-shadow: 0 5px 16px rgba(245, 184, 0, .6); }
.cta-btn-ghost { background: rgba(255, 255, 255, .95); color: #7c3aed !important; }
.cta-btn-ghost:hover { background: #fff; transform: translateY(-2px); }

.footer-v2 { text-align: center; padding: 20px 20px; color: #6a5a88; }
.footer-v2 p { margin: 4px 0; font-size: 1rem; font-weight: 700; }
.footer-v2 .footer-sub { font-size: .82rem; color: #a08fbf; font-weight: 400; }

@media (max-width: 900px) {
  .topnav { gap: 12px; font-size: .82rem; }
  .hero-split { grid-template-columns: 1fr; padding: 30px 24px; }
  .hero-title { font-size: 2rem; }
  .pattern-card { padding: 16px; }
  .pattern-visual-grid { grid-template-columns: 1fr; }
  .pattern-steps { grid-template-columns: 1fr; }
  .core-row-2 { grid-template-columns: 1fr; }
  .core-row-4 { grid-template-columns: repeat(2, 1fr); }
  .notes-row-5 { grid-template-columns: repeat(2, 1fr); }
  .section-head { grid-template-columns: auto 1fr; }
  .section-sub { grid-column: 1 / -1; text-align: left; }
  .section-title { font-size: 1.35rem; }
  .badge-num { width: 44px; height: 44px; font-size: 1.15rem; }
  .direction-block { grid-template-columns: 1fr; }
  .cta-banner-actions { flex-direction: column; }
  .cta-btn { text-align: center; }
}
</style>
