<template>
  <div class="page-v2">
    <!-- 顶部胶囊导航 -->
    <nav class="topnav">
      <div class="brand">
        <span class="brand-badge">🎨</span>
        <span class="brand-name">2.5次元 brief</span>
      </div>
      <a href="#intro">Intro</a>
      <a href="#rules">参与方式</a>
      <a href="#patterns">主推方向</a>
      <a href="#outfits">Fancore</a>
      <a href="#others">其他方向</a>
      <a href="#submit" class="cta-nav">发布征稿</a>
    </nav>

    <!-- 装饰分隔线 -->
    <div class="deco-line">
      <span class="dot"></span><span class="line"></span><span class="dot big"></span><span class="line"></span><span class="dot"></span>
    </div>

    <!-- Hero: 左右分栏 -->
    <section id="intro" class="hero-split">
      <div class="hero-left">
        <span class="hero-tag">#穿搭暗号对一下 · #fancore</span>
        <h1 class="hero-title">穿搭暗号<span class="accent">对一下</span></h1>
        <p class="hero-desc">
          从追的番 / 玩的游戏 / 关注的 IP 中人物角色的
          <strong>标志性穿搭颜色 / 元素</strong>汲取灵感，
          以喜欢的 ta 为灵感，创作属于你的二次元 × 现实穿搭风格。
        </p>
        <div class="hero-cta-row">
          <a class="btn btn-primary" href="https://www.xiaohongshu.com/publish/publish" target="_blank">
            进入活动页发布
          </a>
          <a class="btn btn-ghost"
             href="https://doc.weixin.qq.com/forms/ANAAyQcbAAgAaYAdwYSAHcCNxjY7m1yFf?page=1"
             target="_blank">
            填写返稿投流表
          </a>
        </div>
      </div>
      <div class="hero-right">
        <div class="phone-mock">
          <div class="phone-notch"></div>
          <img :src="fancore1" alt="穿搭暗号对一下" class="phone-cover"/>
          <span class="phone-badge">#fancore</span>
        </div>
      </div>
    </section>

    <!-- Section 01: 活动规则 -->
    <section id="rules" class="section">
      <header class="section-head">
        <div class="head-badge"><span class="badge-num">01</span></div>
        <div class="head-title-wrap">
          <h2 class="section-title">活动规则</h2>
          <span class="section-en">01 · RULES</span>
        </div>
        <p class="section-sub">发布须遵循以下 5 条，站内加权投流的必备清单</p>
      </header>

      <div class="rule-list">
        <div class="rule-item">
          <span class="rule-num">1</span>
          <div class="rule-body">
            <h4>📮 返稿投流</h4>
            <p>发布后<b>务必填写</b>返稿投流链接，薯薯会定期回扫，持续投流。</p>
          </div>
        </div>
        <div class="rule-item">
          <span class="rule-num">2</span>
          <div class="rule-body">
            <h4>活动主题</h4>
            <p>与「fancore 穿搭」相关，分享如何根据喜欢的 ta 发散灵感演绎穿搭。</p>
          </div>
        </div>
        <div class="rule-item">
          <span class="rule-num">3</span>
          <div class="rule-body">
            <h4>活动时间</h4>
            <p>即日起 — <b>9 月 15 日</b></p>
          </div>
        </div>
        <div class="rule-item">
          <span class="rule-num">4</span>
          <div class="rule-body">
            <h4>标题正文</h4>
            <p>推荐出现<b>人物角色 / 动漫名 + 穿搭相关关键词</b>。</p>
          </div>
        </div>
        <div class="rule-item">
          <span class="rule-num">5</span>
          <div class="rule-body">
            <h4>必带话题</h4>
            <div class="tags-inline">
              <span class="tag-pill">#穿搭暗号对一下</span>
              <span class="tag-pill">#fancore</span>
            </div>
            <button class="copy-hashtags" type="button" @click="copyHashtags">
              <span v-if="copyState === 'copied'">✅ 已复制！去发布粘上吧</span>
              <span v-else>📋 #穿搭暗号对一下 #fancore　点击复制</span>
            </button>
          </div>
        </div>
      </div>
    </section>

    <!-- 官宣笔记 -->
    <a class="official-hero"
       href="https://www.xiaohongshu.com/explore/6a5624c8000000001101e173" target="_blank">
      <div class="official-cover"><img :src="officialCover" alt="官宣笔记"/></div>
      <div class="official-info">
        <span class="official-tag">📌 官宣笔记</span>
        <p class="official-title">穿搭暗号对一下｜用一件衣服认出自己人</p>
        <span class="official-cta">点击查看完整活动 →</span>
      </div>
    </a>

    <!-- 🚨 -->
    <section class="hot-banner">
      <span class="hot-icon">🚨</span>
      <span class="hot-text">主推方向：动漫人物 × 真人同框！投稿即得大量流量！</span>
    </section>

    <!-- Section 02: 内容范式 -->
    <section id="patterns" class="section">
      <header class="section-head">
        <div class="head-badge"><span class="badge-num">02</span></div>
        <div class="head-title-wrap">
          <h2 class="section-title">内容范式</h2>
          <span class="section-en">02 · CONTENT PATTERNS</span>
        </div>
      </header>

      <h3 class="sub-heading">
        <span class="sub-heading-num">1.</span> 推荐框架 · 二次元 × 真人 同框
      </h3>
      <div class="pattern-tabs">
        <span class="pattern-tab active">推荐: 二次元 × 真人 同框</span>
      </div>

      <h3 class="sub-heading" style="margin-top: 26px">
        <span class="sub-heading-num">2.</span> 动漫真人同框
      </h3>
      <div class="pattern-card">
        <div class="pattern-visual">
          <img :src="patternVisual" alt="同框结构示例" class="pattern-visual-img"/>
        </div>
        <ol class="pattern-steps">
          <li>
            <span class="step-num">1</span>
            <div>
              <h5>封面动漫真人同框</h5>
              <p>将灵感来源的动漫人物贴在封面上</p>
            </div>
          </li>
          <li>
            <span class="step-num">2</span>
            <div>
              <h5>2.5 次元灵感穿搭</h5>
              <p>提取动漫角色的<b>标志性配色 / 单品</b>，是灵感锚点</p>
            </div>
          </li>
        </ol>
      </div>

      <h3 class="sub-heading" style="margin-top: 26px">
        <span class="sub-heading-num">3.</span> 参考笔记
      </h3>
      <div class="pattern-footer">
        <span class="footer-hint">👇 同款布局灵感笔记 ↓</span>
      </div>
      <div class="notes-row-5">
        <a v-for="n in notes.presentation" :key="n.id"
           :href="`https://www.xiaohongshu.com/explore/${n.id}`" target="_blank"
           class="mini-note">
          <div class="mini-cover">
            <img v-if="n.localCover || n.cover" :src="n.localCover || proxied(n.cover)" :alt="clean(n.title)" loading="lazy"/>
            <span v-else class="fallback">📖</span>
          </div>
          <p class="mini-title">{{ clean(n.title) }}</p>
        </a>
      </div>
    </section>

    <!-- Section 03: 穿搭思路 -->
    <section id="outfits" class="section">
      <header class="section-head">
        <div class="head-badge"><span class="badge-num">03</span></div>
        <div class="head-title-wrap">
          <h2 class="section-title">穿搭思路</h2>
          <span class="section-en">03 · OUTFIT IDEAS</span>
        </div>
        <p class="section-sub">从九大 IP 灵感出发，你的 fancore 可以变成——</p>
      </header>

      <h3 class="sub-heading">
        <span class="sub-heading-num">1.</span> 主推 core · 焦点展示
      </h3>
      <!-- Core 切换 tabs — 挑一个看对应笔记 -->
      <div class="core-tabs">
        <button v-for="c in allCores" :key="c.key"
                class="core-tab"
                :class="{active: activeCore === c.key}"
                :style="activeCore === c.key ? {background: c.gradient, color: c.color || '#fff'} : {}"
                @click="activeCore = c.key">
          {{ c.name }}
        </button>
      </div>
      <!-- 左：JOJOcore 焦点大封面  右：选中 core 的笔记 grid -->
      <div class="outfit-hero-grid">
        <a class="outfit-hero-card"
           :href="`https://www.xiaohongshu.com/explore/${jojoFeatured.id}`"
           target="_blank">
          <div class="hero-card-cover">
            <img :src="jojocoreFeatured" :alt="jojoFeatured.title" loading="lazy"/>
            <div class="hero-card-overlay">
              <div class="hero-card-badge">FEATURED · JOJOcore</div>
              <div class="hero-card-content">
                <h3>{{ clean(jojoFeatured.title) }}</h3>
                <p>JOJO 的奇妙冒险风格 · 立式扭胯 + 亮色搭配</p>
              </div>
            </div>
          </div>
        </a>
        <div class="outfit-notes-panel">
          <div class="panel-header">
            <div class="core-tag" :style="{background: activeCoreDef.gradient, color: activeCoreDef.color || '#fff'}">
              <span class="core-tag-name">{{ activeCoreDef.name }}</span>
              <span class="core-tag-desc">{{ activeCoreDef.desc }}</span>
            </div>
          </div>
          <div class="panel-notes-grid">
            <a v-for="n in (notes[activeCore] || [])" :key="n.id"
               :href="`https://www.xiaohongshu.com/explore/${n.id}`" target="_blank"
               class="mini-note">
              <div class="mini-cover">
                <img v-if="n.cover" :src="proxied(n.cover)" :alt="clean(n.title)" loading="lazy"/>
                <span v-else class="fallback">📖</span>
              </div>
              <p class="mini-title">{{ clean(n.title) }}</p>
            </a>
          </div>
        </div>
      </div>
    </section>

    <!-- Section 04: 其他 -->
    <section id="others" class="section">
      <header class="section-head">
        <div class="head-badge"><span class="badge-num">04</span></div>
        <div class="head-title-wrap">
          <h2 class="section-title">其他内容方向</h2>
          <span class="section-en">04 · MORE IDEAS</span>
        </div>
        <p class="section-sub">切题延伸，参考实录笔记入门</p>
      </header>

      <ul class="other-list-v2">
        <li>影响穿搭审美的动画</li>
        <li>阿宅现生怎么穿</li>
        <li>痛衣穿出门</li>
        <li>从动漫中走出来之人</li>
      </ul>

      <div class="notes-row-3">
        <a v-for="n in notes.other" :key="n.id"
           :href="`https://www.xiaohongshu.com/explore/${n.id}`" target="_blank"
           class="mini-note">
          <div class="mini-cover">
            <img v-if="n.cover" :src="proxied(n.cover)" :alt="clean(n.title)" loading="lazy"/>
            <span v-else class="fallback">📖</span>
          </div>
          <p class="mini-title">{{ clean(n.title) }}</p>
        </a>
      </div>
    </section>

    <div id="submit" class="deco-line bottom">
      <span class="dot"></span><span class="line"></span><span class="dot big red"></span><span class="line"></span><span class="dot"></span>
    </div>
    <footer class="footer-v2">
      <p>#穿搭暗号对一下 · #fancore</p>
      <p class="footer-sub">小红书 2.5 次元圈层 · 活动 brief</p>
    </footer>
  </div>
</template>

<script setup lang="ts">
import { ref, computed } from 'vue'
import notesMeta from '../notes-meta.json'
import heroBg from '../assets/hero-bg.webp'
import fancore1 from '../assets/fancore-1.webp'
import patternVisual from '../assets/pattern-visual.webp'
import jojocoreFeatured from '../assets/jojocore-featured.webp'

const raw = notesMeta as Record<string, any[]>
const notes: Record<string, any[]> = JSON.parse(JSON.stringify(raw))
if (notes.presentation && notes.presentation[0] && !notes.presentation[0].cover) {
  notes.presentation[0].localCover = fancore1
}

// JOJOcore 焦点笔记
const jojoFeatured = notes.JOJOcore.find((n: any) => n.id === '6a63776d000000000f011804') || notes.JOJOcore[0]

const officialCover = 'https://wsrv.nl/?url=' +
  encodeURIComponent('sns-webpic-qc.xhscdn.com/202607281333/7892aa9f579912de224e697962759ca4/spectrum/1040g34o32348rpj4n01g44n3shqsuc7rlj3ojv0!nd_dft_wlteh_jpg_3') +
  '&w=400&we&output=webp'

const clean = (t: string) => (t || '').replace(/\s*-\s*小红书\s*$/, '').trim() || '查看笔记'
const proxied = (url: string) => url
  ? `https://wsrv.nl/?url=${encodeURIComponent(url.replace(/^https?:\/\//, ''))}&w=500&we&output=webp`
  : ''

const featuredCores = [
  { key: '奈奈core',    name: '奈奈core',    desc: '蕾丝 + 泡泡短裤',     gradient: 'linear-gradient(135deg,#ff8fb1,#ff5c8a)' },
  { key: '迪士尼core',  name: '迪士尼core',  desc: '公主 / 反派风格',      gradient: 'linear-gradient(135deg,#ffd6e0,#ffb3c6)', color: '#8a3a5c' },
  { key: '飞天小女警core', name: '飞天小女警core', desc: '毛毛 / 花花 / 泡泡', gradient: 'linear-gradient(135deg,#c8f7d4,#ffe0eb)', color: '#3a5a2d' },
]

const allCores = [
  { key: '奈奈core',       name: '奈奈core',       desc: '蕾丝 + 泡泡短裤 + 小腿袜', gradient: 'linear-gradient(135deg,#ff8fb1,#ff5c8a)' },
  { key: 'NANAcore',       name: 'NANAcore',       desc: '红色格纹裙 + 朋克',       gradient: 'linear-gradient(135deg,#ffe0eb,#ffb3c6)', color: '#8a3a5c' },
  { key: '迪士尼core',     name: '迪士尼core',     desc: '迪士尼公主 / 反派风格',    gradient: 'linear-gradient(135deg,#ffd6e0,#ffb3c6)', color: '#8a3a5c' },
  { key: '飞天小女警core', name: '飞天小女警core', desc: '毛毛 / 花花 / 泡泡',        gradient: 'linear-gradient(135deg,#c8f7d4,#ffe0eb)', color: '#3a5a2d' },
  { key: '鬼灭core',       name: '鬼灭core',       desc: '鬼灭之刃角色配色',        gradient: 'linear-gradient(135deg,#ff9a9e,#fecfef)', color: '#663' },
  { key: 'HxHcore',        name: 'HxHcore',        desc: '全职猎人幻影旅团',        gradient: 'linear-gradient(135deg,#d1c4e9,#f8bbd0)', color: '#5a3a7a' },
  { key: 'Kittycore',      name: 'Kittycore',      desc: 'Hello Kitty 元素',       gradient: 'linear-gradient(135deg,#fbc2eb,#ffb6c1)', color: '#8a3a5c' },
  { key: 'TOYcore',        name: 'TOYcore',        desc: '玩具总动员风格',          gradient: 'linear-gradient(135deg,#ffecd2,#ffb6c1)', color: '#8a3a5c' },
]
const activeCore = ref('奈奈core')
const activeCoreDef = computed(() => allCores.find(c => c.key === activeCore.value) || allCores[0])

// 复制话题到剪贴板
const copyState = ref<'idle' | 'copied'>('idle')
function copyHashtags() {
  const text = '#穿搭暗号对一下 #fancore'
  const done = () => {
    copyState.value = 'copied'
    setTimeout(() => (copyState.value = 'idle'), 2000)
  }
  if (navigator.clipboard && window.isSecureContext) {
    navigator.clipboard.writeText(text).then(done).catch(() => fallback(text, done))
  } else {
    fallback(text, done)
  }
}
function fallback(text: string, done: () => void) {
  const ta = document.createElement('textarea')
  ta.value = text
  ta.style.position = 'fixed'
  ta.style.opacity = '0'
  document.body.appendChild(ta)
  ta.select()
  try { document.execCommand('copy'); done() } catch { /* noop */ }
  document.body.removeChild(ta)
}
</script>

<style scoped>
/* ================================
   Fancore V2 · 淡粉波点主题
   ================================ */

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

/* 顶部胶囊导航 */
.topnav {
  max-width: 980px;
  margin: 20px auto;
  padding: 10px 20px;
  display: flex; align-items: center; gap: 22px;
  background: rgba(255, 253, 249, .86);
  border: 1px solid rgba(214, 51, 132, .18);
  border-radius: 999px;
  backdrop-filter: blur(10px);
  box-shadow: 0 4px 20px rgba(214, 51, 132, .08);
  font-size: .92rem;
  position: sticky; top: 10px; z-index: 10;
  justify-content: center;
}
.topnav .brand { display: flex; align-items: center; gap: 8px; font-weight: 800; color: #d63384; margin-right: auto; }
.topnav .cta-nav {
  padding: 5px 16px; background: #d63384; color: #fff !important;
  border-radius: 999px; font-weight: 700;
  margin-left: auto;
}
.brand-badge {
  width: 28px; height: 28px;
  background: linear-gradient(135deg, #ff6b9d, #d63384);
  color: #fff; border-radius: 50%;
  display: flex; align-items: center; justify-content: center;
  font-size: .9rem;
}
.topnav a { color: #2a1a20; text-decoration: none; transition: color .2s; }
.topnav a:hover { color: #d63384; }

/* 装饰分隔线 */
.deco-line {
  max-width: 980px; margin: 30px auto 20px;
  display: flex; align-items: center; gap: 8px;
  padding: 0 60px;
}
.deco-line.bottom { margin-top: 50px; }
.deco-line .line { flex: 1; height: 2px; background: repeating-linear-gradient(90deg, #ffc9dc 0 6px, transparent 6px 12px); }
.deco-line .dot { width: 8px; height: 8px; border-radius: 50%; background: #ff6b9d; }
.deco-line .dot.big { width: 14px; height: 14px; background: #d63384; }
.deco-line .dot.red { background: #d63384; }

/* Hero */
.hero-split {
  max-width: 980px; margin: 20px auto 40px;
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

/* Section */
.section {
  max-width: 980px; margin: 44px auto; padding: 32px 30px;
  background: rgba(255, 253, 249, .82);
  border: 1px solid rgba(214, 51, 132, .12);
  border-radius: 34px;
  box-shadow: 0 4px 18px rgba(214, 51, 132, .06);
}
.section-head {
  display: grid; grid-template-columns: auto 1fr auto;
  gap: 16px; align-items: center; margin-bottom: 24px;
  padding-bottom: 18px; border-bottom: 1px dashed rgba(214, 51, 132, .18);
}
.head-badge { display: flex; }
.badge-num {
  width: 44px; height: 44px;
  background: #d63384; color: #fff; border-radius: 50%;
  display: flex; align-items: center; justify-content: center;
  font-weight: 800; font-size: 1.15rem;
  box-shadow: 0 4px 12px rgba(214, 51, 132, .35);
  border: 2px solid #fff;
  outline: 3px solid rgba(214, 51, 132, .18);
}
.head-title-wrap { display: flex; flex-direction: column; }
.section-title { font-size: 1.6rem; font-weight: 800; margin: 0; color: #2a1a20; letter-spacing: 0.02em; }
.section-en { font-size: .72rem; color: #b48090; letter-spacing: .18em; margin-top: 2px; }
.section-sub { font-size: .9rem; color: #7a5a68; margin: 0; text-align: right; grid-column: 3; }

/* 子小标题：黄竖线 */
.sub-heading {
  display: flex; align-items: baseline; gap: 8px;
  margin: 22px 0 10px; padding-left: 12px;
  border-left: 4px solid #f5b800;
  font-size: 1.05rem; font-weight: 800; color: #2a1a20; line-height: 1.35;
}
.sub-heading-num { color: #d63384; font-weight: 900; }

/* rules */
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
.tags-inline { display: inline-flex; gap: 8px; margin-right: 12px; }
.tag-pill { padding: 3px 12px; background: #ffe4ec; color: #d63384; border-radius: 999px; font-size: .82rem; font-weight: 700; }

/* 点击复制话题按钮 */
.copy-hashtags {
  display: block;
  margin-top: 10px;
  padding: 10px 16px;
  background: linear-gradient(90deg, #fff0f5, #ffe4ec);
  color: #2a1a20;
  font-size: .92rem;
  font-weight: 700;
  border: 1.5px dashed #ff6b9d;
  border-radius: 12px;
  cursor: pointer;
  transition: all .2s;
  width: 100%;
  text-align: center;
}
.copy-hashtags:hover {
  background: linear-gradient(90deg, #ffe4ec, #ffd4e5);
  border-color: #d63384;
  transform: translateY(-1px);
  box-shadow: 0 4px 12px rgba(255, 107, 157, .25);
}
.copy-hashtags:active { transform: translateY(0); }

/* 官宣 */
.official-hero {
  max-width: 980px; margin: 24px auto;
  display: grid; grid-template-columns: 90px 1fr; gap: 20px;
  padding: 16px 22px;
  background: linear-gradient(135deg, #fff5f8, #ffd4e5);
  border: 2px solid #ff6b9d; border-radius: 20px;
  box-shadow: 0 8px 24px rgba(255, 107, 157, .3);
  text-decoration: none; color: inherit; align-items: center; transition: all .2s;
}
.official-hero:hover { transform: translateY(-2px); box-shadow: 0 12px 32px rgba(255, 107, 157, .45); }
.official-cover { aspect-ratio: 3 / 4; border-radius: 10px; overflow: hidden; }
.official-cover img { width: 100%; height: 100%; object-fit: cover; display: block; }
.official-info { display: flex; flex-direction: column; gap: 4px; }
.official-tag { align-self: flex-start; padding: 3px 10px; background: #fff; color: #d63384; border: 1px solid #ff6b9d; border-radius: 999px; font-size: .78rem; font-weight: 700; }
.official-title { font-size: 1.05rem; font-weight: 700; margin: 4px 0; color: #2a1a20; }
.official-cta { font-size: .88rem; color: #d63384; font-weight: 600; }

.hot-banner {
  max-width: 980px; margin: 16px auto; padding: 16px 22px;
  display: flex; align-items: center; gap: 12px;
  background: linear-gradient(135deg, #fff9dc, #f5d63a);
  color: #2a1a20; border: 2px dashed #dbb81f; border-radius: 14px;
  font-weight: 700; font-size: 1rem;
}
.hot-icon { font-size: 1.5rem; filter: drop-shadow(0 2px 4px rgba(219, 184, 31, .5)); }
.hot-text { flex: 1; }

/* pattern */
.pattern-tabs { display: flex; gap: 10px; margin-bottom: 16px; }
.pattern-tab { padding: 6px 16px; background: rgba(255, 107, 157, .12); color: #d63384; border: 1px solid #ffc9dc; border-radius: 999px; font-size: .85rem; font-weight: 700; }
.pattern-tab.active { background: #d63384; color: #fff; border-color: transparent; }

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

.pattern-footer { margin: 16px 0 8px; text-align: center; }
.footer-hint { font-size: .82rem; color: #7a5a68; }

/* notes grids */
.notes-row-5 { display: grid; grid-template-columns: repeat(5, 1fr); gap: 10px; }
.notes-row-3 { display: grid; grid-template-columns: repeat(3, 1fr); gap: 12px; margin-top: 16px; }
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

/* outfit hero (JOJOcore 焦点用真图) */
.outfit-hero-grid { display: grid; grid-template-columns: 1.3fr 1fr; gap: 16px; margin-bottom: 22px; }
.outfit-hero-card {
  position: relative; border-radius: 18px; overflow: hidden;
  text-decoration: none; color: inherit;
  box-shadow: 0 8px 24px rgba(196, 139, 217, .25);
  transition: all .2s;
}
.outfit-hero-card:hover { transform: translateY(-3px); box-shadow: 0 14px 32px rgba(196, 139, 217, .4); }
.hero-card-cover { position: relative; aspect-ratio: 4 / 3; overflow: hidden; }
.hero-card-cover img { width: 100%; height: 100%; object-fit: cover; display: block; }
.hero-card-overlay {
  position: absolute; inset: 0;
  background: linear-gradient(180deg, rgba(0,0,0,0) 40%, rgba(0,0,0,.65) 100%);
  padding: 22px; color: #fff;
  display: flex; flex-direction: column; justify-content: space-between;
}
.hero-card-badge {
  align-self: flex-start; padding: 4px 12px;
  background: rgba(255, 255, 255, .3); backdrop-filter: blur(8px);
  border-radius: 999px; font-size: .72rem; font-weight: 800; letter-spacing: .1em;
}
.hero-card-content h3 { font-size: 1.35rem; font-weight: 900; margin: 0 0 6px; text-shadow: 0 2px 8px rgba(0,0,0,.4); line-height: 1.35; }
.hero-card-content p { margin: 0; font-size: .88rem; opacity: .95; }

/* Outfit 右侧面板：选中 core 的笔记 grid（取代旧的 outfit-mini-list） */
.outfit-notes-panel {
  display: flex; flex-direction: column; gap: 10px;
  padding: 16px;
  background: rgba(255, 240, 245, .35);
  border-radius: 16px;
  border: 1px solid rgba(214, 51, 132, .1);
}
.panel-header { margin-bottom: 4px; }
.panel-notes-grid {
  display: grid; grid-template-columns: repeat(2, 1fr); gap: 10px;
}

.outfit-mini-list { display: flex; flex-direction: column; gap: 10px; }
.outfit-mini-item { padding: 14px 18px; border-radius: 14px; box-shadow: 0 3px 10px rgba(0,0,0,.06); }
.mini-item-inner { display: flex; flex-direction: column; gap: 3px; }
.mini-item-name { font-weight: 800; font-size: 1rem; }
.mini-item-desc { font-size: .82rem; opacity: .95; }

/* core 切换 tabs */
.core-tabs {
  display: flex; flex-wrap: wrap; gap: 8px;
  margin: 12px 0 16px;
}
.core-tab {
  padding: 7px 16px;
  background: #fff;
  color: #4a3540;
  border: 1.5px solid #ffc9dc;
  border-radius: 999px;
  font-size: .88rem; font-weight: 700;
  cursor: pointer;
  transition: all .2s;
}
.core-tab:hover { border-color: #ff6b9d; color: #d63384; }
.core-tab.active { border-color: transparent; box-shadow: 0 4px 12px rgba(214, 51, 132, .25); transform: translateY(-1px); }

.core-tab-panel {
  padding: 18px;
  background: rgba(255, 240, 245, .35);
  border-radius: 16px;
  border: 1px solid rgba(214, 51, 132, .1);
}
.tab-panel-head { margin-bottom: 12px; }
.core-tag {
  display: inline-flex; align-items: baseline; gap: 8px;
  padding: 5px 14px; border-radius: 18px;
  color: #fff; box-shadow: 0 2px 6px rgba(0,0,0,.08);
}
.core-tag-name { font-weight: 700; font-size: 1rem; }
.core-tag-desc { font-size: .78rem; opacity: .95; }
.tab-panel-notes {
  display: grid; grid-template-columns: repeat(4, 1fr); gap: 10px;
}

/* 其他 */
.other-list-v2 { margin: 12px 0; padding: 0 0 0 20px; font-size: .95rem; line-height: 1.9; color: #4a3540; }

.footer-v2 { text-align: center; padding: 24px 20px; color: #7a5a68; }
.footer-v2 p { margin: 4px 0; font-size: 1rem; font-weight: 700; }
.footer-v2 .footer-sub { font-size: .82rem; color: #b48090; font-weight: 400; }

@media (max-width: 900px) {
  .topnav { gap: 12px; font-size: .82rem; }
  .hero-split { grid-template-columns: 1fr; padding: 30px 24px; }
  .hero-title { font-size: 2rem; }
  .pattern-card { grid-template-columns: 1fr; }
  .outfit-hero-grid { grid-template-columns: 1fr; }
  .panel-notes-grid { grid-template-columns: repeat(2, 1fr); }
  .tab-panel-notes { grid-template-columns: repeat(2, 1fr); }
  .notes-row-5 { grid-template-columns: repeat(2, 1fr); }
  .notes-row-3 { grid-template-columns: 1fr; }
  .section-head { grid-template-columns: auto 1fr; }
  .section-sub { grid-column: 1 / -1; text-align: left; }
  .official-hero { grid-template-columns: 70px 1fr; }
}
</style>
