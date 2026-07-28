<template>
  <div class="page-v2">
    <nav class="topnav">
      <div class="brand">
        <span class="brand-badge">🎨</span>
        <span class="brand-name">2.5次元圈层</span>
      </div>
      <a href="#intro">圈层简介</a>
      <a href="#join">参与方式</a>
      <a href="#agccore">AGCcore</a>
      <a href="#others">其他方向</a>
      <a href="https://www.xiaohongshu.com/publish/publish" target="_blank" class="cta-nav">发布征稿</a>
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
          <a class="btn btn-primary" href="https://www.xiaohongshu.com/explore/6a5624c8000000001101e173" target="_blank">查看官宣笔记</a>
          <a class="btn btn-ghost"
             href="https://doc.weixin.qq.com/forms/ANAAyQcbAAgAaYAdwYSAHcCNxjY7m1yFf?page=1"
             target="_blank">填写返稿投流表</a>
        </div>
      </div>
      <div class="hero-right">
        <div class="phone-mock">
          <div class="phone-notch"></div>
          <img :src="fancore1" alt="自搭出街 穿搭" class="phone-cover"/>
          <span class="phone-badge">#自搭出街</span>
        </div>
      </div>
    </section>

    <!-- 官宣笔记 独立卡片（挪到 Hero 下） -->
    <a class="official-strip"
       href="https://www.xiaohongshu.com/explore/6a5624c8000000001101e173" target="_blank">
      <div class="official-strip-cover"><img :src="officialCover" alt="官宣笔记"/></div>
      <div class="official-strip-info">
        <span class="official-tag">📌 官宣笔记</span>
        <p class="official-strip-title">穿搭暗号对一下｜用一件衣服认出自己人</p>
      </div>
      <span class="official-strip-cta">点击查看 →</span>
    </a>

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
          <p>与「自搭出街 穿搭」相关，分享如何根据喜欢的 <b>ta</b> 发散灵感演绎穿搭。</p>
        </div></div>
        <div class="rule-item"><span class="rule-num">4</span><div class="rule-body">
          <h4>必带话题</h4>
          <button class="copy-hashtags" type="button" @click="copyHashtags">
            <span v-if="copyState === 'copied'">✅ 已复制！去发布粘上吧</span>
            <span v-else>📋 #穿搭暗号对一下 #自搭出街　点击复制</span>
          </button>
        </div></div>
      </div>
    </section>

    <!-- 🚨 -->
    <section class="hot-banner">
      <span class="hot-icon">🚨</span>
      <span class="hot-text">主推方向：动漫人物 × 真人同框！投稿即得大量流量！</span>
    </section>

    <!-- ────── 三、主推内容方向 #AGCcore ────── -->
    <section id="agccore" class="section">
      <header class="section-head">
        <div class="head-badge"><span class="badge-num">三</span></div>
        <div class="head-title-wrap">
          <h2 class="section-title">主推内容方向 <span class="hash-accent">#AGCcore</span></h2>
          <span class="section-en">CHAPTER 3 · AGCCORE</span>
        </div>
      </header>

      <!-- 什么是 AGCcore -->
      <div class="what-is-card">
        <div class="what-is-title">💡 什么是 AGCcore？</div>
        <p class="what-is-text">
          <b>AGC</b> 的位置可以引申替换为任何角色名 / 作品名，
          例如 <b>JOJOcore</b>、<b>NANAcore</b>……从人物角色的
          标志性 <b>穿搭颜色 / 元素</b>汲取灵感，
          创作属于你的 <b>AGCcore 穿搭风格</b>。
        </p>
      </div>

      <!-- 3.1 内容范式 -->
      <h3 class="sub-heading">
        <span class="sub-heading-num">3.1</span> #fancore 的呈现形式？
      </h3>

      <div class="rec-strip">🌟 推荐身着 fancore 灵感穿搭 和「二次元人物形象」同框</div>
      <p class="pattern-lead">
        🌟 图文笔记同框展示，视频笔记做封面展示和开头片段同框，示例如下 👇
      </p>

      <div class="pattern-card">
        <div class="pattern-visual">
          <img :src="patternVisual" alt="同框结构示例" class="pattern-visual-img"/>
        </div>
        <ol class="pattern-steps">
          <li><span class="step-num">1</span><div>
            <h5>封面动漫真人同框</h5>
            <p>将灵感来源的动漫人物贴在封面上</p>
          </div></li>
          <li><span class="step-num">2</span><div>
            <h5>2.5 次元灵感穿搭</h5>
            <p>提取动漫人物的<b>标志性配色 / 单品</b>，搭配你的灵感穿搭</p>
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
                <img v-if="n.useLocalCover === 'fancore1'" :src="fancore1" :alt="clean(n.title)" loading="lazy"/>
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

      <!-- 3.3 你的 fancore 是？（行动号召） -->
      <div class="your-fancore">
        <span class="your-fancore-arrow">→</span>
        <span class="your-fancore-text">你的 fancore 是？</span>
        <a class="your-fancore-btn"
           href="https://www.xiaohongshu.com/publish/publish" target="_blank">去发布属于你的 →</a>
      </div>
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
import patternVisual from '../assets/pattern-visual.webp'

const raw = notesMeta as Record<string, any[]>
const notes: Record<string, any[]> = JSON.parse(JSON.stringify(raw))
if (notes.presentation && notes.presentation[0] && !notes.presentation[0].cover) {
  notes.presentation[0].localCover = fancore1
}

// other 里的 3 篇按顺序：阿宅现生 / 痛衣 / 动漫走出来
// 我们只用前 2 条（阿宅 + 痛衣），并从 other 里映射为「影响穿搭审美的动画」和「阿宅现生怎么穿」两组示范
// 简化处理：直接给两条方向各绑一篇笔记（示范）
if (notes.other && notes.other.length >= 2) {
  // 拆两条：dir1 = 影响穿搭审美的动画 → 用第 3 条「从动漫中走出来之人」示范
  // dir2 = 阿宅现生怎么穿 → 用第 1 条「阿宅和现生朋友出门 belike」示范
  notes['dir-animation'] = [notes.other[2] || notes.other[0]]
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
  { key: 'JOJOcore', name: 'JOJOcore', desc: 'JOJO 的奇妙冒险风格',       gradient: 'linear-gradient(135deg,#ffb3d9,#c48bd9)' },
  { key: '奈奈core', name: '奈奈core', desc: '蕾丝 + 泡泡短裤 + 小腿袜',   gradient: 'linear-gradient(135deg,#ff8fb1,#ff5c8a)' },
]
const row1bCores = [
  { key: '迪士尼core',      name: '迪士尼core',      desc: '迪士尼公主 / 反派风格',   gradient: 'linear-gradient(135deg,#ffd6e0,#ffb3c6)', color: '#8a3a5c' },
  { key: '飞天小女警core', name: '飞天小女警core', desc: '毛毛 / 花花 / 泡泡三色配',   gradient: 'linear-gradient(135deg,#c8f7d4,#ffe0eb)', color: '#3a5a2d' },
]
const row2Cores = [
  { key: 'NANAcore',  name: 'NANAcore',  gradient: 'linear-gradient(135deg,#ffe0eb,#ffb3c6)', color: '#8a3a5c' },
  { key: '鬼灭core',  name: '鬼灭core',  gradient: 'linear-gradient(135deg,#ff9a9e,#fecfef)', color: '#663' },
  { key: 'HxHcore',   name: 'HxHcore',   gradient: 'linear-gradient(135deg,#d1c4e9,#f8bbd0)', color: '#5a3a7a' },
  { key: 'Kittycore', name: 'Kittycore', gradient: 'linear-gradient(135deg,#fbc2eb,#ffb6c1)', color: '#8a3a5c' },
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
  color: #2a1a20;
  font-family: -apple-system, BlinkMacSystemFont, 'PingFang SC', 'Hiragino Sans GB', 'Microsoft YaHei', sans-serif;
  padding-bottom: 40px;
  background-color: #fff5f8;
  background-image:
    radial-gradient(circle, rgba(255,255,255,.9) 3px, transparent 3.5px),
    linear-gradient(180deg, #fff5f8 0%, #ffe8ef 45%, #ffddea 100%);
  background-size: 26px 26px, 100% 100%;
}

.topnav {
  max-width: 980px; margin: 20px auto; padding: 10px 20px;
  display: flex; align-items: center; gap: 22px;
  background: rgba(255, 253, 249, .86);
  border: 1px solid rgba(214, 51, 132, .18);
  border-radius: 999px; backdrop-filter: blur(10px);
  box-shadow: 0 4px 20px rgba(214, 51, 132, .08);
  font-size: .92rem; position: sticky; top: 10px; z-index: 10;
  justify-content: center;
}
.topnav .brand { display: flex; align-items: center; gap: 8px; font-weight: 800; color: #d63384; margin-right: auto; }
.brand-badge {
  width: 28px; height: 28px;
  background: linear-gradient(135deg, #ff6b9d, #d63384);
  color: #fff; border-radius: 50%;
  display: flex; align-items: center; justify-content: center; font-size: .9rem;
}
.topnav a { color: #2a1a20; text-decoration: none; transition: color .2s; }
.topnav a:hover { color: #d63384; }
.topnav .cta-nav {
  padding: 5px 16px; background: #d63384; color: #fff !important;
  border-radius: 999px; font-weight: 700; margin-left: auto;
}

.deco-line {
  max-width: 980px; margin: 30px auto 20px;
  display: flex; align-items: center; gap: 8px; padding: 0 60px;
}
.deco-line.bottom { margin-top: 30px; }
.deco-line .line { flex: 1; height: 2px; background: repeating-linear-gradient(90deg, #ffc9dc 0 6px, transparent 6px 12px); }
.deco-line .dot { width: 8px; height: 8px; border-radius: 50%; background: #ff6b9d; }
.deco-line .dot.big { width: 14px; height: 14px; background: #d63384; }
.deco-line .dot.red { background: #d63384; }

.hero-split {
  max-width: 980px; margin: 20px auto 20px;
  padding: 44px 48px;
  background: rgba(255, 253, 249, .82);
  border: 1px solid rgba(214, 51, 132, .15);
  border-radius: 34px;
  box-shadow: 0 12px 40px rgba(214, 51, 132, .1);
  display: grid; grid-template-columns: 1.15fr .85fr;
  gap: 40px; align-items: center;
}
.hero-tag {
  display: inline-block; padding: 5px 14px;
  background: #fff0f5; color: #d63384;
  border: 1px solid #ffc9dc; border-radius: 999px;
  font-size: .8rem; font-weight: 700; margin-bottom: 18px;
}
.hero-title { font-size: 2.8rem; font-weight: 900; margin: 0 0 18px; line-height: 1.2; color: #2a1a20; letter-spacing: 0.02em; }
.hero-title .accent { background: linear-gradient(135deg, #ff6b9d, #d63384); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }
.hero-desc { font-size: 1rem; line-height: 1.75; color: #4a3540; margin: 0 0 24px; }
.hero-desc strong { color: #d63384; }
.hero-cta-row { display: flex; gap: 12px; flex-wrap: wrap; }
.btn { display: inline-block; padding: 10px 22px; border-radius: 999px; font-size: .95rem; font-weight: 700; text-decoration: none; transition: all .2s; }
.btn-primary { background: linear-gradient(135deg, #ff6b9d, #d63384); color: #fff !important; box-shadow: 0 4px 12px rgba(214, 51, 132, .3); }
.btn-primary:hover { transform: translateY(-2px); box-shadow: 0 6px 18px rgba(214, 51, 132, .4); }
.btn-ghost { background: #fff; color: #d63384 !important; border: 1.5px solid #ffc9dc; }
.btn-ghost:hover { background: #fff0f5; }

.hero-right { display: flex; align-items: center; justify-content: center; }
.phone-mock {
  position: relative; width: 220px; height: 400px;
  background: #2a1a20; border: 5px solid #2a1a20;
  border-radius: 32px; overflow: hidden;
  box-shadow: 0 15px 40px rgba(42, 26, 32, .35), 0 0 0 3px rgba(255, 107, 157, .35);
}
.phone-notch { position: absolute; top: 0; left: 50%; transform: translateX(-50%); width: 80px; height: 20px; background: #2a1a20; border-radius: 0 0 12px 12px; z-index: 2; }
.phone-cover { width: 100%; height: 100%; object-fit: cover; display: block; }
.phone-badge { position: absolute; top: 30px; right: 8px; padding: 4px 10px; background: rgba(255, 107, 157, .95); color: #fff; border-radius: 999px; font-size: .7rem; font-weight: 700; z-index: 3; }

/* 官宣笔记 strip */
.official-strip {
  max-width: 980px;
  margin: 0 auto 20px;
  display: flex; align-items: center;
  gap: 14px;
  padding: 14px 18px;
  background: linear-gradient(135deg, #fff5f8 0%, #ffd4e5 100%);
  border: 2px solid #ff6b9d;
  border-radius: 16px;
  box-shadow: 0 6px 20px rgba(255, 107, 157, .3);
  text-decoration: none; color: inherit;
  transition: all .2s;
}
.official-strip:hover { transform: translateY(-2px); box-shadow: 0 10px 28px rgba(255, 107, 157, .5); }
.official-strip-cover {
  flex: 0 0 60px; aspect-ratio: 3 / 4;
  border-radius: 8px; overflow: hidden; background: #f0e0e8;
}
.official-strip-cover img { width: 100%; height: 100%; object-fit: cover; display: block; }
.official-strip-info { flex: 1; display: flex; flex-direction: column; gap: 4px; min-width: 0; }
.official-tag {
  align-self: flex-start;
  padding: 3px 10px; background: #fff; color: #d63384;
  border: 1px solid #ff6b9d; border-radius: 999px;
  font-size: .78rem; font-weight: 700;
}
.official-strip-title { font-size: 1rem; font-weight: 700; color: #1a1a1a; margin: 0; }
.official-strip-cta { color: #d63384; font-weight: 700; font-size: .9rem; white-space: nowrap; }

/* Section */
.section {
  max-width: 980px; margin: 30px auto; padding: 36px 34px;
  background: rgba(255, 253, 249, .82);
  border: 1px solid rgba(214, 51, 132, .12);
  border-radius: 34px;
  box-shadow: 0 4px 18px rgba(214, 51, 132, .06);
}
.section-head {
  display: grid; grid-template-columns: auto 1fr auto;
  gap: 18px; align-items: center; margin-bottom: 28px;
  padding-bottom: 20px; border-bottom: 2px solid rgba(214, 51, 132, .18);
}
.head-badge { display: flex; }
.badge-num {
  width: 52px; height: 52px;
  background: linear-gradient(135deg, #ff6b9d, #d63384);
  color: #fff; border-radius: 50%;
  display: flex; align-items: center; justify-content: center;
  font-weight: 900; font-size: 1.4rem;
  box-shadow: 0 5px 14px rgba(214, 51, 132, .4);
  border: 3px solid #fff;
  outline: 3px solid rgba(214, 51, 132, .2);
}
.head-title-wrap { display: flex; flex-direction: column; }
.section-title { font-size: 1.75rem; font-weight: 900; margin: 0; color: #2a1a20; letter-spacing: 0.02em; }
.hash-accent { color: #d63384; font-size: 1.5rem; margin-left: 4px; }
.section-en { font-size: .72rem; color: #b48090; letter-spacing: .18em; margin-top: 3px; font-weight: 700; }
.section-sub { font-size: .9rem; color: #7a5a68; margin: 0; text-align: right; grid-column: 3; }

/* Intro */
.what-is-card {
  padding: 20px 24px;
  margin: 4px 0 12px;
  background: linear-gradient(135deg, #fff0f5, #ffe4ec);
  border: 1.5px solid #ffb3c6;
  border-radius: 18px;
  box-shadow: 0 4px 14px rgba(214, 51, 132, .12);
}
.what-is-title {
  font-size: 1.1rem;
  font-weight: 800;
  color: #d63384;
  margin-bottom: 8px;
}
.what-is-text {
  margin: 0;
  font-size: .98rem;
  line-height: 1.8;
  color: #2a1a20;
}
.what-is-text b { color: #d63384; }

.intro-card {
  padding: 28px 32px;
  background: linear-gradient(135deg, #fff0f5, #ffe4ec);
  border-radius: 20px;
  border: 1px solid rgba(214, 51, 132, .15);
  text-align: center;
}
.intro-badge {
  display: inline-block; padding: 8px 22px;
  background: #d63384; color: #fff;
  border-radius: 999px; font-weight: 800; font-size: 1rem;
  margin-bottom: 16px;
  box-shadow: 0 4px 12px rgba(214, 51, 132, .3);
}
.intro-text { font-size: 1.05rem; line-height: 1.85; color: #2a1a20; margin: 0; }
.intro-text b { color: #d63384; }

/* Sub heading */
.sub-heading {
  display: flex; align-items: baseline; gap: 10px;
  margin: 26px 0 12px; padding-left: 14px;
  border-left: 4px solid #f5b800;
  font-size: 1.1rem; font-weight: 800; color: #2a1a20; line-height: 1.35;
}
.sub-heading-num { color: #d63384; font-weight: 900; }

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
  flex: 0 0 34px; height: 34px; background: #2a1a20; color: #fff; border-radius: 50%;
  display: flex; align-items: center; justify-content: center; font-weight: 800; font-size: 1rem;
  box-shadow: 0 2px 6px rgba(0,0,0,.15);
}
.rule-body { flex: 1; }
.rule-body h4 { margin: 0 0 6px; font-size: 1rem; color: #2a1a20; }
.rule-body p { margin: 0; font-size: .92rem; color: #4a3540; line-height: 1.6; }
.rule-body p b { color: #d63384; }
.pill-btn {
  display: inline-block; margin-top: 10px;
  padding: 6px 16px;
  background: #d63384; color: #fff !important;
  border-radius: 999px; font-size: .85rem; font-weight: 700;
  text-decoration: none;
  box-shadow: 0 3px 8px rgba(214, 51, 132, .3);
  transition: all .2s;
}
.pill-btn:hover { transform: translateY(-1px); box-shadow: 0 5px 12px rgba(214, 51, 132, .45); }

.copy-hashtags {
  display: block; margin-top: 6px;
  padding: 10px 16px;
  background: linear-gradient(90deg, #fff0f5, #ffe4ec);
  color: #2a1a20; font-size: .92rem; font-weight: 700;
  border: 1.5px dashed #ff6b9d; border-radius: 12px;
  cursor: pointer; transition: all .2s; width: 100%; text-align: center;
}
.copy-hashtags:hover {
  background: linear-gradient(90deg, #ffe4ec, #ffd4e5); border-color: #d63384;
  transform: translateY(-1px); box-shadow: 0 4px 12px rgba(255, 107, 157, .25);
}

.hot-banner {
  max-width: 980px; margin: 16px auto; padding: 16px 22px;
  display: flex; align-items: center; gap: 12px;
  background: #ffffff; color: #2a1a20;
  border: 2px solid #ff6b9d; border-radius: 14px;
  font-weight: 700; font-size: 1rem;
  box-shadow: 0 6px 24px rgba(255, 45, 130, .5), 0 0 0 4px rgba(255, 45, 130, .12);
}
.hot-icon { font-size: 1.5rem; filter: drop-shadow(0 2px 4px rgba(255, 45, 130, .55)); }
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
  border: 2px solid #ff2d82;
  box-shadow: 0 6px 24px rgba(255, 45, 130, .55), 0 0 0 4px rgba(255, 45, 130, .12);
  text-align: center;
}
.pattern-lead { font-size: .95rem; color: #4a3540; margin: 8px 0 14px; line-height: 1.7; }

.pattern-card {
  display: grid; grid-template-columns: 1fr 1.1fr; gap: 22px;
  padding: 20px; background: rgba(255, 250, 253, .65);
  border-radius: 20px; border: 1px solid rgba(214, 51, 132, .1);
}
.pattern-visual {
  background: linear-gradient(135deg, #fff, #fff5f8);
  border: 1px dashed #ffb3c6; border-radius: 16px;
  overflow: hidden; min-height: 200px;
  display: flex; align-items: center; justify-content: center;
}
.pattern-visual-img { max-width: 100%; max-height: 320px; display: block; }
.pattern-steps { list-style: none; padding: 0; margin: 0; }
.pattern-steps li { display: flex; gap: 12px; padding: 12px 0; border-bottom: 1px dashed rgba(214, 51, 132, .1); }
.pattern-steps li:last-child { border-bottom: none; }
.step-num {
  flex: 0 0 28px; height: 28px; background: #2a1a20; color: #fff; border-radius: 50%;
  display: flex; align-items: center; justify-content: center; font-weight: 800; font-size: .82rem;
}
.pattern-steps h5 { margin: 0 0 4px; font-size: 1rem; color: #2a1a20; font-weight: 700; }
.pattern-steps p { margin: 0; font-size: .88rem; color: #4a3540; line-height: 1.6; }
.pattern-steps b { color: #d63384; }

.notes-row-5 { display: grid; grid-template-columns: repeat(5, 1fr); gap: 10px; }
.mini-note {
  display: block; text-decoration: none; color: inherit;
  background: #fff; border-radius: 12px; overflow: hidden;
  border: 1px solid rgba(214, 51, 132, .1); transition: all .2s;
}
.mini-note:hover { transform: translateY(-3px); box-shadow: 0 6px 16px rgba(214, 51, 132, .2); border-color: #ff6b9d; }
.mini-cover { position: relative; aspect-ratio: 3 / 4; background: #f0e0e8; overflow: hidden; }
.mini-cover img { width: 100%; height: 100%; object-fit: cover; display: block; }
.fallback { position: absolute; inset: 0; display: flex; align-items: center; justify-content: center; font-size: 2rem; color: #bbb; }
.mini-title { margin: 0; padding: 8px 10px 10px; font-size: .82rem; line-height: 1.35; color: #2a1a20; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden; min-height: 40px; }

.core-row-2 { display: grid; grid-template-columns: repeat(2, 1fr); gap: 20px; }
.core-block {
  background: rgba(255, 240, 245, .35);
  border-radius: 16px; padding: 16px;
  border: 1px solid rgba(214, 51, 132, .1);
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
  border: 1px solid rgba(214, 51, 132, .1);
}
.core-tag.mini { padding: 4px 10px; gap: 4px; align-self: flex-start; }
.core-tag.mini .core-tag-name { font-size: .88rem; }

/* 你的 fancore 是？ - 行动号召 */
.your-fancore {
  display: flex; align-items: center; justify-content: center; gap: 14px;
  margin: 30px 0 10px;
  padding: 22px 28px;
  background: linear-gradient(135deg, #fff0f5, #ffd4e5);
  border: 2px dashed #ff6b9d;
  border-radius: 20px;
  flex-wrap: wrap;
}
.your-fancore-arrow {
  width: 38px; height: 38px;
  background: #d63384; color: #fff;
  border-radius: 50%;
  display: flex; align-items: center; justify-content: center;
  font-weight: 900; font-size: 1.2rem;
  box-shadow: 0 4px 10px rgba(214, 51, 132, .35);
}
.your-fancore-text {
  font-size: 1.3rem; font-weight: 900;
  background: linear-gradient(135deg, #ff6b9d, #d63384);
  -webkit-background-clip: text; -webkit-text-fill-color: transparent;
  background-clip: text;
}
.your-fancore-btn {
  padding: 10px 24px;
  background: #d63384; color: #fff !important;
  border-radius: 999px;
  font-weight: 700; font-size: .95rem;
  text-decoration: none;
  box-shadow: 0 4px 12px rgba(214, 51, 132, .3);
  transition: all .2s;
}
.your-fancore-btn:hover { transform: translateY(-2px); box-shadow: 0 6px 18px rgba(214, 51, 132, .45); }

/* Direction block (四) */
.direction-block {
  display: grid;
  grid-template-columns: 200px 1fr;
  gap: 20px;
  padding: 16px;
  margin-bottom: 16px;
  background: rgba(255, 240, 245, .35);
  border-radius: 16px;
  border: 1px solid rgba(214, 51, 132, .12);
  align-items: center;
}
.direction-tag {
  display: flex; flex-direction: column; align-items: flex-start; gap: 8px;
  padding: 14px 18px;
  background: #d63384;
  color: #fff;
  border-radius: 14px;
  box-shadow: 0 4px 12px rgba(214, 51, 132, .3);
}
.direction-icon { font-size: 1.6rem; }
.direction-name { font-weight: 800; font-size: 1rem; line-height: 1.3; }
.direction-note {
  display: flex; gap: 14px; align-items: center;
  padding: 12px;
  background: #fff;
  border-radius: 12px;
  text-decoration: none; color: inherit;
  border: 1px solid rgba(214, 51, 132, .1);
  transition: all .2s;
}
.direction-note:hover { transform: translateY(-2px); box-shadow: 0 5px 14px rgba(214, 51, 132, .2); }
.direction-note-cover {
  flex: 0 0 90px; aspect-ratio: 3 / 4;
  border-radius: 8px; overflow: hidden; background: #f0e0e8;
  position: relative;
}
.direction-note-cover img { width: 100%; height: 100%; object-fit: cover; display: block; }
.direction-note-body { flex: 1; display: flex; flex-direction: column; gap: 6px; }
.direction-note-title { margin: 0; font-size: .95rem; font-weight: 700; color: #2a1a20; line-height: 1.4; }
.direction-note-cta { color: #d63384; font-size: .82rem; font-weight: 600; }

/* CTA banner 底部大蓝→改成粉色酒红 */
.cta-banner {
  max-width: 980px;
  margin: 30px auto 20px;
  padding: 28px 32px;
  background: linear-gradient(135deg, #d63384, #a02762);
  border-radius: 24px;
  color: #fff;
  box-shadow: 0 12px 32px rgba(214, 51, 132, .35);
}
.cta-banner-head { display: flex; align-items: center; gap: 14px; margin-bottom: 8px; }
.cta-arrow {
  flex: 0 0 40px; height: 40px;
  background: #f5b800; color: #2a1a20;
  border-radius: 50%;
  display: flex; align-items: center; justify-content: center;
  font-weight: 900; font-size: 1.2rem;
}
.cta-banner-head h3 { margin: 0; font-size: 1.35rem; font-weight: 800; color: #fff; }
.cta-banner-desc { margin: 0 0 18px; font-size: .95rem; opacity: .9; }
.cta-banner-actions { display: flex; gap: 12px; flex-wrap: wrap; }
.cta-btn { display: inline-block; padding: 10px 24px; border-radius: 999px; font-weight: 700; font-size: .95rem; text-decoration: none; transition: all .2s; }
.cta-btn-primary { background: #f5b800; color: #2a1a20 !important; box-shadow: 0 3px 10px rgba(245, 184, 0, .4); }
.cta-btn-primary:hover { transform: translateY(-2px); box-shadow: 0 5px 16px rgba(245, 184, 0, .6); }
.cta-btn-ghost { background: rgba(255, 255, 255, .95); color: #d63384 !important; }
.cta-btn-ghost:hover { background: #fff; transform: translateY(-2px); }

.footer-v2 { text-align: center; padding: 20px 20px; color: #7a5a68; }
.footer-v2 p { margin: 4px 0; font-size: 1rem; font-weight: 700; }
.footer-v2 .footer-sub { font-size: .82rem; color: #b48090; font-weight: 400; }

@media (max-width: 900px) {
  .topnav { gap: 12px; font-size: .82rem; }
  .hero-split { grid-template-columns: 1fr; padding: 30px 24px; }
  .hero-title { font-size: 2rem; }
  .pattern-card { grid-template-columns: 1fr; }
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
