<template>
  <div class="home">
    <!-- Hero: full width, 圆角大图 -->
    <section class="hero">
      <img :src="heroBg" alt="穿搭暗号对一下" class="hero-img" />
      <span class="deadline">⏰ 活动截止：9月15日</span>
    </section>

    <!-- 官宣笔记 — 浅黄卡片（仿 apruet） -->
    <div class="official-wrap">
      <a class="official-strip"
         href="https://www.xiaohongshu.com/explore/6a5624c8000000001101e173"
         target="_blank" rel="noopener">
        <div class="official-strip-cover">
          <img :src="officialCover" alt="官宣笔记封面" loading="lazy"/>
        </div>
        <div class="official-strip-info">
          <span class="official-tag">📌 官宣笔记</span>
          <span class="official-strip-title">穿搭暗号对一下｜用一件衣服认出自己人</span>
        </div>
        <span class="official-cta">点击查看完整活动 →</span>
      </a>
    </div>

    <!-- 黄色高亮 hot-banner（仿 apruet） -->
    <section class="hot-banner">
      <span class="hot-icon">🚨</span>
      <span class="hot-text">主推方向：动漫人物 × 真人同框！投稿即得大量流量！</span>
    </section>

    <!-- 1. 穿搭暗号 -->
    <section class="card-block">
      <div class="card-title">🎨 穿搭暗号</div>
      <p class="intro-text">
        从 <strong>追的番 / 玩的游戏 / 关注的IP</strong>
        中人物角色的标志性 <strong>穿搭颜色 / 元素</strong> 汲取灵感，以喜欢的 ta 为灵感，
        创作属于你的日常穿搭风格。
      </p>
    </section>

    <!-- 2. 参与方式 -->
    <section class="card-block">
      <div class="card-title">📝 参与方式</div>
      <ul class="participate-list">
        <li><b>必带话题：</b><span class="hashtags">#穿搭暗号对一下 #fancore</span></li>
        <li><b>活动征稿：</b>即日起 - 9.15，带话题发布时尚穿搭笔记，瓜分上亿流量</li>
        <li><b>笔记正文：</b>与「fancore 穿搭」相关，分享如何根据喜欢的 ta 发散灵感演绎穿搭</li>
        <li>
          <b>📮 返稿投流链接（务必填写）：</b>薯薯会定期回扫，持续投流。<br/>
          <a class="link-underline"
             href="https://doc.weixin.qq.com/forms/ANAAyQcbAAgAaYAdwYSAHcCNxjY7m1yFf?page=1"
             target="_blank" rel="noopener">
            https://doc.weixin.qq.com/forms/ANAAyQcbAAgAaYAdwYSAHcCNxjY7m1yFf ↗
          </a>
        </li>
      </ul>
      <div class="publish-wrap">
        <a href="https://www.xiaohongshu.com/publish/publish" target="_blank" class="btn-publish">去发布 →</a>
      </div>
    </section>

    <!-- 3. 主推方向 -->
    <section class="card-block highlight-block">
      <div class="card-title">🌟 主推方向 #fancore</div>

      <h3 class="sub-title">#fancore 是什么？</h3>
      <p class="desc-text">
        <strong>fan</strong> 的位置可以引申替换为任何角色名 / 作品名，例如 JOJOcore、NANAcore、鬼灭core……
        从人物角色的标志性穿搭颜色 / 元素汲取灵感，创作属于你的 fancore 穿搭风格。
      </p>

      <h3 class="sub-title">#fancore 的呈现形式？</h3>
      <div class="rec-strip">🌟 推荐身着动漫 灵感穿搭 和「二次元人物形象」同框</div>
      <p class="desc-text">
        🌟 图文笔记同框展示，视频笔记做封面展示和开头片段同框
      </p>
      <NotesGrid :notes="notes.presentation" :cols="5" />
    </section>

    <!-- 4. 各种 core -->
    <section class="card-block">
      <div class="card-title">✨ #fancore 可以变成？</div>

      <div class="core-row">
        <div class="core-col">
          <div class="core-tag" :style="{ background: 'linear-gradient(135deg,#ffb3d9,#c48bd9)' }">
            <span class="core-tag-name">JOJOcore</span>
            <span class="core-tag-desc">JOJO 的奇妙冒险风格</span>
          </div>
          <NotesGrid :notes="notes.JOJOcore" :cols="2" />
        </div>
        <div class="core-col">
          <div class="core-tag" :style="{ background: 'linear-gradient(135deg,#ff8fb1,#ff5c8a)' }">
            <span class="core-tag-name">奈奈core</span>
            <span class="core-tag-desc">蕾丝 + 泡泡短裤 + 小腿袜</span>
          </div>
          <NotesGrid :notes="notes.奈奈core" :cols="2" />
        </div>
      </div>

      <div class="core-row">
        <div class="core-col">
          <div class="core-tag" :style="{ background: 'linear-gradient(135deg,#ffd6e0,#ffb3c6)', color:'#8a3a5c' }">
            <span class="core-tag-name">迪士尼core</span>
            <span class="core-tag-desc">迪士尼公主 / 反派风格</span>
          </div>
          <NotesGrid :notes="notes.迪士尼core" :cols="2" />
        </div>
        <div class="core-col">
          <div class="core-tag" :style="{ background: 'linear-gradient(135deg,#c8f7d4,#ffe0eb)', color:'#3a5a2d' }">
            <span class="core-tag-name">飞天小女警core</span>
            <span class="core-tag-desc">毛毛 / 花花 / 泡泡三色配</span>
          </div>
          <NotesGrid :notes="notes.飞天小女警core" :cols="2" />
        </div>
      </div>

      <div class="core-row-5">
        <div class="core-col-mini" v-for="c in miniCores" :key="c.key">
          <div class="core-tag mini" :style="{ background: c.gradient, color: c.color }">
            <span class="core-tag-name">{{ c.name }}</span>
          </div>
          <NotesGrid :notes="notes[c.key]" :cols="1" />
        </div>
      </div>
    </section>

    <!-- 5. 你的 fancore -->
    <section class="card-block">
      <div class="card-title">💫 你的 #fancore？</div>
      <p class="desc-text">
        期待发布属于你的 fancore，给到只有同推才能认出的穿搭暗号。
        <br/><em>*标题正文推荐出现人物角色 / 动漫名 + 穿搭相关关键词</em>
      </p>
      <div class="publish-wrap">
        <a href="https://www.xiaohongshu.com/publish/publish" target="_blank" class="btn-publish">点击发布 →</a>
      </div>
    </section>

    <!-- 6. 其他内容方向 -->
    <section class="card-block">
      <div class="card-title">🎬 其他内容方向</div>
      <ul class="other-list">
        <li>影响穿搭审美的动画</li>
        <li>阿宅现生怎么穿</li>
        <li>痛衣穿出门</li>
        <li>从动漫中走出来之人</li>
      </ul>
      <NotesGrid :notes="notes.other" :cols="3" />
    </section>

    <footer class="footer">
      <p>小红书 2.5次元圈层活动</p>
      <p class="footer-hashtags">#穿搭暗号对一下 #fancore</p>
    </footer>
  </div>
</template>

<script setup lang="ts">
import notesMeta from '../notes-meta.json'
import NotesGrid from '../components/NotesGrid.vue'
import heroBg from '../assets/hero-bg.webp'
import fancore1 from '../assets/fancore-1.webp'

const raw = notesMeta as Record<string, any[]>
const notes: Record<string, any[]> = JSON.parse(JSON.stringify(raw))
if (notes.presentation && notes.presentation[0] && !notes.presentation[0].cover) {
  notes.presentation[0].localCover = fancore1
}

const officialCover = 'https://wsrv.nl/?url=' +
  encodeURIComponent('sns-webpic-qc.xhscdn.com/202607281333/7892aa9f579912de224e697962759ca4/spectrum/1040g34o32348rpj4n01g44n3shqsuc7rlj3ojv0!nd_dft_wlteh_jpg_3') +
  '&w=400&we&output=webp'

const miniCores = [
  { key: 'NANAcore',  name: 'NANAcore',  gradient: 'linear-gradient(135deg,#ffe0eb,#ffb3c6)', color: '#8a3a5c' },
  { key: '鬼灭core',  name: '鬼灭core',  gradient: 'linear-gradient(135deg,#ff9a9e,#fecfef)', color: '#663' },
  { key: 'HxHcore',   name: 'HxHcore',   gradient: 'linear-gradient(135deg,#d1c4e9,#f8bbd0)', color: '#5a3a7a' },
  { key: 'Kittycore', name: 'Kittycore', gradient: 'linear-gradient(135deg,#fbc2eb,#ffb6c1)', color: '#8a3a5c' },
  { key: 'TOYcore',   name: 'TOYcore',   gradient: 'linear-gradient(135deg,#ffecd2,#ffb6c1)', color: '#8a3a5c' },
]
</script>

<style scoped>
.home {
  min-height: 100vh;
  background-color: #fffafc;
  background-image:
    radial-gradient(circle, rgba(255,255,255,.85) 3px, transparent 3.5px),
    linear-gradient(180deg, #fffafc 0%, #fff0f5 100%);
  background-size: 28px 28px, 100% 100%;
  background-position: 0 0, 0 0;
}

/* Hero — 圆角大图（仿 apruet） */
.hero {
  position: relative;
  max-width: 1080px;
  margin: 16px auto 20px;
  border-radius: 22px;
  overflow: hidden;
  background: #f5f5f5;
  box-shadow: 0 10px 40px rgba(0, 0, 0, .28);
}
.hero-img {
  display: block;
  width: 100%;
  height: auto;
}
.deadline {
  position: absolute; bottom: 14px; right: 20px;
  padding: 6px 16px;
  background: rgba(255,255,255,.92); color: #222;
  border-radius: 30px; font-size: .85rem; font-weight: 700;
  box-shadow: 0 3px 12px rgba(0,0,0,.15);
  z-index: 2;
}

/* 官宣笔记 wrap — 淡粉卡（淡粉底 + 深粉边） */
.official-wrap {
  max-width: 1080px;
  margin: 0 auto 16px;
}
.official-strip {
  display: flex; align-items: center;
  gap: 14px;
  padding: 14px 18px;
  background: linear-gradient(135deg, #fff5f8 0%, #ffd4e5 100%);
  border: 2px solid #ff6b9d;
  border-radius: 16px;
  box-shadow: 0 6px 20px rgba(255, 107, 157, .35);
  text-decoration: none;
  color: inherit;
  transition: all .2s;
}
.official-strip:hover {
  transform: translateY(-2px);
  box-shadow: 0 10px 28px rgba(255, 107, 157, .55);
}
.official-strip-cover {
  flex: 0 0 60px;
  aspect-ratio: 3 / 4;
  border-radius: 8px;
  overflow: hidden;
  background: #f5eaf0;
}
.official-strip-cover img { width: 100%; height: 100%; object-fit: cover; display: block; }
.official-strip-info {
  flex: 1; display: flex; flex-direction: column; gap: 4px; min-width: 0;
}
.official-tag {
  align-self: flex-start;
  padding: 3px 10px;
  background: #fff;
  color: #d63384;
  border-radius: 12px;
  font-size: .78rem;
  font-weight: 700;
  border: 1px solid #ff6b9d;
}
.official-strip-title {
  font-size: 1rem; font-weight: 700; color: #1a1a1a;
  white-space: nowrap; overflow: hidden; text-overflow: ellipsis;
}
.official-cta {
  flex: 0 0 auto;
  color: #d63384; font-weight: 700; font-size: .9rem;
  white-space: nowrap;
}

/* 黄色告警 hot-banner — 黄渐变 + 黄虚线边（仿 apruet） */
.hot-banner {
  max-width: 1080px;
  margin: 0 auto 16px;
  padding: 16px 20px;
  display: flex; align-items: center; gap: 12px;
  background: linear-gradient(135deg, #fff9dc 0%, #f5d63a 100%);
  color: #1a1a1a;
  border: 2px dashed #dbb81f;
  border-radius: 14px;
  font-weight: 700;
  font-size: 1rem;
}
.hot-icon {
  font-size: 1.5rem;
  filter: drop-shadow(0 2px 4px rgba(219, 184, 31, .5));
}
.hot-text { flex: 1; }

/* Card block */
.card-block {
  max-width: 1080px;
  margin: 16px auto;
  padding: 20px 22px;
  background: #fff;
  border-radius: 18px;
  box-shadow: 0 4px 18px rgba(214, 51, 132, .08);
  border: 1px solid rgba(255, 182, 193, .3);
}
.card-title {
  font-size: 1.35rem; font-weight: 800; margin: 0 0 12px;
  color: #1a1a1a;
  display: flex; align-items: center; gap: 6px;
}

.sub-title { font-size: 1.05rem; font-weight: 700; margin: 12px 0 6px; color: #1a1a1a; }
.intro-text, .desc-text {
  font-size: .98rem; line-height: 1.75; color: #333; margin: 0 0 8px;
}
.intro-text strong, .desc-text strong { color: #d63384; }
em { color: #888; font-style: italic; }

/* 「🌟 推荐同框」白色高亮条 + 玫红阴影（强化） */
.rec-strip {
  display: block;
  padding: 12px 22px;
  margin: 8px 0 14px;
  background: #ffffff;
  color: #1a1a1a;
  font-weight: 800;
  font-size: 1.02rem;
  border-radius: 12px;
  border: 2px solid #ff2d82;
  box-shadow: 0 6px 24px rgba(255, 45, 130, .55),
              0 0 0 4px rgba(255, 45, 130, .12);
  text-align: center;
}

/* 主推 高亮块 — 更淡的粉 */
.highlight-block {
  background: linear-gradient(135deg, #ffe0eb, #ffecf3);
  border: 1px solid #ffc9dc;
  box-shadow: 0 6px 20px rgba(255, 179, 209, .25);
}

/* Participate */
.participate-list, .other-list {
  margin: 8px 0 10px; padding: 0 0 0 20px;
  font-size: .98rem; line-height: 1.85; color: #333;
}
.participate-list li { margin-bottom: 4px; }
.participate-list b { color: #1a1a1a; margin-right: 4px; }

.hashtags {
  color: #1a1a1a;
  font-weight: 700;
  background: #ffe4ec;
  padding: 2px 10px;
  border-radius: 12px;
  margin-left: 4px;
  display: inline-block;
}

.link-underline {
  color: #d63384; text-decoration: underline;
  word-break: break-all; font-size: .9rem;
}

.publish-wrap { text-align: center; margin: 14px 0 4px; }
.btn-publish {
  display: inline-block; padding: 10px 30px;
  background: linear-gradient(135deg, #ff6b9d, #d63384);
  color: #fff !important; text-decoration: none;
  border-radius: 30px; font-size: .98rem; font-weight: 600;
  box-shadow: 0 3px 10px rgba(214, 51, 132, .3);
  transition: all .2s;
}
.btn-publish:hover { transform: translateY(-2px); box-shadow: 0 6px 18px rgba(214, 51, 132, .4); }

/* Core rows */
.core-row {
  display: grid; grid-template-columns: 1fr 1fr;
  gap: 22px; margin: 10px 0 18px;
}
.core-row-5 {
  display: grid; grid-template-columns: repeat(5, 1fr);
  gap: 12px; margin: 10px 0 8px;
}
.core-col, .core-col-mini { min-width: 0; }

.core-tag {
  display: inline-flex; align-items: baseline; gap: 8px;
  padding: 5px 14px; border-radius: 18px;
  color: #fff; margin-bottom: 8px;
  box-shadow: 0 2px 6px rgba(0,0,0,.08);
}
.core-tag.mini { padding: 4px 10px; gap: 4px; }
.core-tag-name { font-size: 1rem; font-weight: 700; }
.core-tag.mini .core-tag-name { font-size: .85rem; }
.core-tag-desc { font-size: .78rem; opacity: .95; }

/* Footer */
.footer {
  text-align: center; padding: 24px 20px; margin-top: 24px;
  background: linear-gradient(135deg, #ff6b9d, #d63384); color: #fff;
}
.footer p { margin: 4px 0; font-size: .92rem; }
.footer-hashtags { font-size: 1.02rem; font-weight: 600; opacity: .95; }

@media (max-width: 720px) {
  .card-title { font-size: 1.15rem; }
  .core-row { grid-template-columns: 1fr; gap: 16px; }
  .core-row-5 { grid-template-columns: repeat(2, 1fr); }
  .official-strip-title { font-size: .85rem; }
  .official-tag { font-size: .72rem; padding: 2px 8px; }
  .official-cta { display: none; }
  .hero { border-radius: 14px; margin: 12px auto 16px; }
  .hot-banner { font-size: .9rem; padding: 12px 14px; }
}
</style>
