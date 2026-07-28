<template>
  <div class="home">
    <!-- Hero -->
    <section class="hero">
      <div class="hero-content">
        <h1 class="hero-title">2.5次元</h1>
        <h2 class="hero-subtitle">#fancore 穿搭暗号</h2>
        <p class="hero-desc">从追的番 / 玩的游戏 / 关注的IP中汲取灵感，创作属于你的穿搭风格</p>
        <span class="deadline">⏰ 活动截止：9月15日</span>
      </div>
    </section>

    <!-- 1. 穿搭暗号 -->
    <section class="section">
      <h2 class="section-title">🎨 穿搭暗号</h2>
      <p class="intro-text">
        我追的番玩的游戏关注的IP，会？从 <strong>追的番 / 玩的游戏 / 关注的IP</strong> 中人物角色的标志性
        <strong>穿搭颜色 / 元素</strong>汲取灵感，以喜欢的 ta 为灵感，创作属于你的日常穿搭风格。
      </p>
    </section>

    <!-- 2. 参与方式 -->
    <section class="section">
      <h2 class="section-title">📝 参与方式</h2>
      <ul class="participate-list">
        <li><b>必带话题：</b><span class="hashtags">#穿搭暗号对一下 #fancore</span></li>
        <li><b>活动征稿：</b>即日起 - 9.15，带话题发布时尚穿搭笔记，瓜分上亿流量</li>
        <li><b>笔记正文：</b>与「fancore 穿搭」相关，分享如何根据喜欢的 ta 发散灵感演绎穿搭</li>
      </ul>
      <div class="publish-wrap">
        <a href="https://www.xiaohongshu.com/publish/publish" target="_blank" class="btn-publish">去发布 →</a>
      </div>
    </section>

    <!-- 3. 主推方向 -->
    <section class="section">
      <h2 class="section-title">🌟 主推方向 #fancore</h2>

      <h3 class="sub-title">#fancore 是什么？</h3>
      <p class="desc-text">
        <strong>fan</strong> 的位置可以引申替换为任何角色名 / 作品名，例如 JOJOcore、NANAcore、鬼灭core……
        从人物角色的标志性穿搭颜色 / 元素汲取灵感，创作属于你的 fancore 穿搭风格。
      </p>

      <h3 class="sub-title">#fancore 的呈现形式？</h3>
      <p class="desc-text">
        🌟 推荐身着 fancore 和「二次元人物形象」同框<br/>
        🌟 图文笔记同框展示，视频笔记做封面展示和开头片段同框
      </p>
      <NotesGrid :notes="notes.presentation" />
    </section>

    <!-- 4. 各种 core 详细介绍 -->
    <section class="section">
      <h2 class="section-title">✨ #fancore 可以变成？</h2>
      <div v-for="core in coreList" :key="core.name" class="core-block">
        <div class="core-tag" :style="{ background: core.gradient }">
          <span class="core-tag-name">{{ core.name }}</span>
          <span v-if="core.desc" class="core-tag-desc">{{ core.desc }}</span>
        </div>
        <NotesGrid :notes="notes[core.key]" />
      </div>
    </section>

    <!-- 5. 你的 fancore -->
    <section class="section">
      <h2 class="section-title">💫 你的 #fancore？</h2>
      <p class="desc-text">
        期待发布属于你的 fancore，给到只有同推才能认出的穿搭暗号。
        <br/><em>*标题正文推荐出现人物角色 / 动漫名 + 穿搭相关关键词</em>
      </p>
      <div class="publish-wrap">
        <a href="https://www.xiaohongshu.com/publish/publish" target="_blank" class="btn-publish">点击发布 →</a>
      </div>
    </section>

    <!-- 6. 其他内容方向 -->
    <section class="section">
      <h2 class="section-title">🎬 其他内容方向</h2>
      <ul class="other-list">
        <li>影响穿搭审美的动画</li>
        <li>阿宅现生怎么穿</li>
        <li>痛衣穿出门</li>
        <li>从动漫中走出来之人</li>
      </ul>
      <NotesGrid :notes="notes.other" />
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

const notes = notesMeta as Record<string, Array<{ id: string; title: string; cover: string }>>

const coreList = [
  { key: 'JOJOcore',    name: 'JOJOcore',    desc: 'JOJO 的奇妙冒险风格',                   gradient: 'linear-gradient(135deg,#667eea,#764ba2)' },
  { key: '奈奈core',    name: '奈奈core',    desc: '蕾丝背心 + 蕾丝吊带 + 泡泡短裤 + 小腿袜', gradient: 'linear-gradient(135deg,#f093fb,#f5576c)' },
  { key: 'NANAcore',    name: 'NANAcore',    desc: '红色格纹裙 + 黑色主色 + 朋克铆钉 choker', gradient: 'linear-gradient(135deg,#ffecd2,#fcb69f)' },
  { key: '迪士尼core',  name: '迪士尼core',  desc: '迪士尼公主 / 反派风格',                    gradient: 'linear-gradient(135deg,#a8edea,#fed6e3)' },
  { key: '飞天小女警core', name: '飞天小女警core', desc: '毛毛 / 花花 / 泡泡三色配',            gradient: 'linear-gradient(135deg,#96e6a1,#d4fc79)' },
  { key: '鬼灭core',    name: '鬼灭core',    desc: '鬼灭之刃角色配色 / 元素',                   gradient: 'linear-gradient(135deg,#ff9a9e,#fecfef)' },
  { key: 'HxHcore',     name: 'HxHcore',     desc: '全职猎人幻影旅团风格',                     gradient: 'linear-gradient(135deg,#89f7fe,#66a6ff)' },
  { key: 'Kittycore',   name: 'Kittycore',   desc: 'Hello Kitty 元素',                          gradient: 'linear-gradient(135deg,#fbc2eb,#a6c1ee)' },
  { key: 'TOYcore',     name: 'TOYcore',     desc: '玩具总动员 IP，颜色提取',                   gradient: 'linear-gradient(135deg,#ffecd2,#fcb69f)' },
]
</script>

<style scoped>
.home { min-height: 100vh; background: #f8f9ff; }

/* Hero */
.hero {
  min-height: 240px;
  padding: 40px 20px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 50%, #f093fb 100%);
  color: #fff;
  display: flex; align-items: center; justify-content: center;
  text-align: center;
}
.hero-content { max-width: 800px; }
.hero-title    { font-size: 2.6rem; font-weight: 900; margin: 0 0 6px; letter-spacing: .08em; text-shadow: 2px 2px 10px rgba(0,0,0,.2); }
.hero-subtitle { font-size: 1.7rem; font-weight: 700; margin: 0 0 10px; text-shadow: 2px 2px 10px rgba(0,0,0,.2); }
.hero-desc     { font-size: 1rem; line-height: 1.5; margin: 0 0 14px; opacity: .95; }
.deadline {
  display: inline-block; padding: 6px 20px;
  background: rgba(255,255,255,.2); backdrop-filter: blur(8px);
  border: 2px solid rgba(255,255,255,.3);
  border-radius: 30px; font-size: .9rem; font-weight: 600;
}

/* Sections */
.section {
  max-width: 1100px; margin: 0 auto;
  padding: 32px 20px 20px;
}
.section-title {
  font-size: 1.5rem; font-weight: 800; margin: 0 0 12px;
  background: linear-gradient(135deg, #667eea, #764ba2);
  -webkit-background-clip: text; -webkit-text-fill-color: transparent;
  background-clip: text;
}
.sub-title { font-size: 1.1rem; font-weight: 700; margin: 14px 0 6px; color: #333; }
.intro-text, .desc-text {
  font-size: 1rem; line-height: 1.7; color: #444; margin: 0 0 10px;
}
.intro-text strong, .desc-text strong { color: #667eea; }
em { color: #888; font-style: italic; }

/* Participate */
.participate-list, .other-list {
  margin: 8px 0 12px; padding: 0 0 0 20px;
  font-size: 1rem; line-height: 1.9; color: #444;
}
.participate-list b { color: #667eea; margin-right: 4px; }
.hashtags { color: #f5576c; font-weight: 700; }

.publish-wrap { text-align: center; margin: 14px 0 4px; }
.btn-publish {
  display: inline-block; padding: 10px 30px;
  background: linear-gradient(135deg, #667eea, #764ba2);
  color: #fff !important; text-decoration: none;
  border-radius: 30px; font-size: 1rem; font-weight: 600;
  box-shadow: 0 3px 10px rgba(102,126,234,.3);
  transition: all .2s;
}
.btn-publish:hover { transform: translateY(-2px); box-shadow: 0 6px 18px rgba(102,126,234,.4); }

/* Core */
.core-block { margin: 10px 0 20px; }
.core-tag {
  display: inline-flex; align-items: baseline; gap: 10px;
  padding: 6px 16px; border-radius: 20px;
  color: #fff; margin-bottom: 10px;
  box-shadow: 0 2px 8px rgba(0,0,0,.08);
}
.core-tag-name { font-size: 1.05rem; font-weight: 700; }
.core-tag-desc { font-size: .85rem; opacity: .95; }

/* Footer */
.footer {
  text-align: center; padding: 26px 20px; margin-top: 30px;
  background: linear-gradient(135deg, #667eea, #764ba2); color: #fff;
}
.footer p { margin: 4px 0; font-size: .95rem; }
.footer-hashtags { font-size: 1.05rem; font-weight: 600; opacity: .95; }

/* Mobile */
@media (max-width: 640px) {
  .hero-title    { font-size: 1.9rem; }
  .hero-subtitle { font-size: 1.3rem; }
  .section-title { font-size: 1.25rem; }
  .core-tag { flex-direction: column; align-items: flex-start; gap: 2px; }
}
</style>
