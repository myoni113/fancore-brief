<template>
  <div class="home">
    <!-- Hero - 30% 高度 -->
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
      <div class="content-box">
        <p class="intro-text">
          我追的番玩的游戏关注的IP，会？<br/><br/>
          从 <strong>追的番 / 玩的游戏 / 关注的IP</strong> 中人物角色的标志性<br/>
          <strong>穿搭颜色/元素</strong> 汲取灵感，以喜欢的ta为灵感，<br/>
          创作属于你的日常穿搭风格
        </p>
      </div>
    </section>

    <!-- 2. 参与方式 -->
    <section class="section alt-bg">
      <h2 class="section-title">📝 参与方式</h2>
      <div class="participate-item">
        <span class="label">必带话题</span>
        <p class="hashtags">#穿搭暗号对一下 #fancore</p>
      </div>
      <div class="participate-item">
        <span class="label">活动征稿</span>
        <p>即日起-9.15，带话题发布时尚穿搭笔记，瓜分上亿流量</p>
      </div>
      <div class="participate-item">
        <span class="label">笔记正文</span>
        <p>与「fancore穿搭」相关，分享如何根据喜欢的ta发散灵感演绎穿搭</p>
      </div>
      <div class="publish-wrap">
        <a href="https://www.xiaohongshu.com/publish/publish" target="_blank" class="btn-publish">去发布 →</a>
      </div>
    </section>

    <!-- 3. 主推方向 #fancore -->
    <section class="section">
      <h2 class="section-title">🌟 主推方向 #fancore</h2>
      
      <!-- #fancore 是什么 -->
      <div class="content-box">
        <h3 class="sub-title">#fancore 是什么？</h3>
        <p class="desc-text">
          <strong>fan</strong> 的位置可以引申替换为任何角色名/作品名<br/>
          例如：JOJOcore、NANAcore、鬼灭core...<br/><br/>
          从人物角色的标志性穿搭颜色/元素汲取灵感，创作属于你的 fancore 穿搭风格
        </p>
      </div>

      <!-- #fancore 的呈现形式 -->
      <div class="content-box">
        <h3 class="sub-title">#fancore 的呈现形式？</h3>
        <p class="desc-text">
          🌟 推荐身着fancore和「二次元人物形象」同框<br/>
          🌟 图文笔记同框展示，视频笔记做封面展示和开头片段同框
        </p>
        <div class="notes-grid">
          <a v-for="note in presentationNotes" :key="note.id" :href="getNoteUrl(note.id)" target="_blank" class="note-card">
            <span class="note-icon">📖</span>
            <span class="note-title">{{ note.title }}</span>
            <span class="note-hint">点击跳转小红书 ↗</span>
          </a>
        </div>
      </div>
    </section>

    <!-- 4. 各种 core 详细介绍 -->
    <section class="section alt-bg">
      <h2 class="section-title">✨ 各种 Core 详细介绍</h2>

      <div v-for="core in cores" :key="core.name" class="core-detail">
        <div class="core-header" :style="{ background: core.gradient }">
          <h3>{{ core.name }}</h3>
          <p v-if="core.desc">{{ core.desc }}</p>
        </div>
        <div class="core-notes">
          <a v-for="note in core.notes" :key="note.id" :href="getNoteUrl(note.id)" target="_blank" class="note-card">
            <span class="note-icon">📖</span>
            <span class="note-title">{{ note.title }}</span>
            <span class="note-hint">点击跳转小红书 ↗</span>
          </a>
        </div>
      </div>
    </section>

    <!-- 5. 你的 #fancore -->
    <section class="section">
      <h2 class="section-title">💫 你的 #fancore？</h2>
      <div class="content-box center">
        <p class="desc-text">
          期待发布属于你的fancore，给到只有同推才能认出的穿搭暗号
        </p>
        <p class="tip-text">
          *标题正文推荐出现人物角色/动漫名+穿搭相关关键词
        </p>
        <a href="https://www.xiaohongshu.com/publish/publish" target="_blank" class="btn-publish">
          点击发布 →
        </a>
      </div>
    </section>

    <!-- 6. 其他内容方向 -->
    <section class="section alt-bg">
      <h2 class="section-title">🎬 其他内容方向</h2>
      <div class="other-directions">
        <div class="direction-card">
          <h4>影响穿搭审美的动画</h4>
        </div>
        <div class="direction-card">
          <h4>阿宅现生怎么穿</h4>
          <div class="core-notes">
            <a href="https://www.xiaohongshu.com/explore/697ed2d7000000000a0331b7" target="_blank" class="note-card">
              <span class="note-icon">📖</span>
              <span class="note-title">阿宅现生穿搭</span>
              <span class="note-hint">点击跳转小红书 ↗</span>
            </a>
          </div>
        </div>
        <div class="direction-card">
          <h4>痛衣穿出门</h4>
          <div class="core-notes">
            <a href="https://www.xiaohongshu.com/explore/69c148fb0000000023004de3" target="_blank" class="note-card">
              <span class="note-icon">📖</span>
              <span class="note-title">谁说这优衣库集英社联名穿不出去的……</span>
              <span class="note-hint">点击跳转小红书 ↗</span>
            </a>
          </div>
        </div>
        <div class="direction-card">
          <h4>从动漫中走出来之人</h4>
          <div class="core-notes">
            <a href="https://www.xiaohongshu.com/explore/66155efc000000001a014cef" target="_blank" class="note-card">
              <span class="note-icon">📖</span>
              <span class="note-title">从动漫中走出来之人</span>
              <span class="note-hint">点击跳转小红书 ↗</span>
            </a>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
      <p>小红书 2.5次元圈层活动</p>
      <p class="footer-hashtags">#穿搭暗号对一下 #fancore</p>
    </footer>
  </div>
</template>

<script setup lang="ts">
const getNoteUrl = (id: string) => `https://www.xiaohongshu.com/explore/${id}`

const presentationNotes = [
  { id: '6a5cecc5000000000e03600f', title: 'fancore 穿搭示例 1' },
  { id: '6a4919f50000000017008dd1', title: 'fancore 穿搭示例 2' },
  { id: '6a42815a0000000017028f5d', title: 'fancore 穿搭示例 3' },
  { id: '66a21a8e000000000d00d790', title: '飞天小女警 fancore' },
  { id: '6a5209ce000000001c0246d2', title: 'fancore 穿搭示例 5' },
  { id: '69cba614000000002301124d', title: 'fancore 穿搭示例 6' },
]

const cores = [
  {
    name: 'JOJOcore',
    gradient: 'linear-gradient(135deg, #667eea 0%, #764ba2 100%)',
    desc: 'JOJO的奇妙冒险风格穿搭',
    notes: [
      { id: '6a63776d000000000f011804', title: 'JOJOcore 穿搭 1' },
      { id: '686324d0000000002400ba7b', title: 'JOJOcore 穿搭 2' },
      { id: '68cbe088000000001302bb22', title: 'JOJOcore 穿搭 3' },
      { id: '6a4903b6000000001702f22f', title: 'JOJOcore 穿搭 4' },
    ]
  },
  {
    name: '奈奈core',
    gradient: 'linear-gradient(135deg, #f093fb 0%, #f5576c 100%)',
    desc: '蕾丝背心内搭 + 蕾丝吊带 + 泡泡短裤 + 小腿袜',
    notes: [
      { id: '6a5209ce000000001c0246d2', title: '奈奈core 穿搭 1' },
      { id: '6a606c1f000000000301e3a9', title: '奈奈core 穿搭 2' },
    ]
  },
  {
    name: 'NANAcore',
    gradient: 'linear-gradient(135deg, #ffecd2 0%, #fcb69f 100%)',
    desc: '红色格纹裙 + 黑色主色调 + 朋克铆钉choker',
    notes: [
      { id: '699c2b5f000000000b010118', title: 'NANAcore 穿搭' },
    ]
  },
  {
    name: '迪士尼core',
    gradient: 'linear-gradient(135deg, #a8edea 0%, #fed6e3 100%)',
    desc: '迪士尼公主风格穿搭',
    notes: [
      { id: '6a144312000000000702c5dd', title: '迪士尼core 穿搭 1' },
      { id: '6905f016000000000700ef7d', title: '迪士尼core 穿搭 2' },
      { id: '690f8c7f0000000007009153', title: '迪士尼core 穿搭 3' },
      { id: '6a57b835000000000f005ff0', title: '迪士尼core 穿搭 4' },
    ]
  },
  {
    name: '飞天小女警core',
    gradient: 'linear-gradient(135deg, #96e6a1 0%, #d4fc79 100%)',
    desc: '飞天小女警风格穿搭',
    notes: [
      { id: '66a21a8e000000000d00d790', title: '飞天小女警 1' },
      { id: '69ef6af00000000036018fc7', title: '飞天小女警 2' },
      { id: '6a2cb6b30000000035032d91', title: '飞天小女警 3' },
    ]
  },
  {
    name: '鬼灭core',
    gradient: 'linear-gradient(135deg, #ff9a9e 0%, #fecfef 100%)',
    desc: '鬼灭之刃风格穿搭',
    notes: [
      { id: '68d486eb000000001101c0fe', title: '鬼灭core 穿搭 1' },
      { id: '6930124b000000001e004eae', title: '鬼灭core 穿搭 2' },
    ]
  },
  {
    name: 'HxHcore',
    gradient: 'linear-gradient(135deg, #89f7fe 0%, #66a6ff 100%)',
    desc: '全职猎人风格穿搭',
    notes: [
      { id: '6a2892550000000022017706', title: 'HxHcore 穿搭' },
    ]
  },
  {
    name: 'Kittycore',
    gradient: 'linear-gradient(135deg, #fbc2eb 0%, #a6c1ee 100%)',
    desc: 'Hello Kitty 风格穿搭',
    notes: [
      { id: '68ff906c0000000003038fc5', title: 'Kittycore 穿搭' },
    ]
  },
  {
    name: 'TOYcore',
    gradient: 'linear-gradient(135deg, #ffecd2 0%, #fcb69f 100%)',
    desc: '玩具总动员风格穿搭（重做颜色提取）',
    notes: [
      { id: '6a04488900000000370364b5', title: 'TOYcore 穿搭' },
    ]
  },
]
</script>

<style scoped>
.home {
  min-height: 100vh;
  background: #f8f9ff;
}

/* Hero - 30% */
.hero {
  height: 30vh;
  min-height: 260px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 50%, #f093fb 100%);
  color: white;
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
  padding: 20px;
}

.hero-content { max-width: 800px; }

.hero-title {
  font-size: 2.8rem;
  font-weight: 900;
  margin: 0 0 8px;
  text-shadow: 2px 2px 10px rgba(0,0,0,.2);
  letter-spacing: .1em;
}

.hero-subtitle {
  font-size: 1.8rem;
  font-weight: 700;
  margin: 0 0 12px;
  text-shadow: 2px 2px 10px rgba(0,0,0,.2);
}

.hero-desc {
  font-size: 1.05rem;
  line-height: 1.6;
  margin: 0 0 16px;
  opacity: .95;
}

.deadline {
  display: inline-block;
  padding: 8px 22px;
  background: rgba(255,255,255,.2);
  backdrop-filter: blur(10px);
  border-radius: 30px;
  font-size: .95rem;
  font-weight: 600;
  border: 2px solid rgba(255,255,255,.3);
}

/* Sections */
.section {
  max-width: 1200px;
  margin: 0 auto;
  padding: 50px 20px;
}

.alt-bg {
  background: white;
  border-radius: 20px;
  margin: 30px auto;
  box-shadow: 0 5px 20px rgba(0,0,0,.05);
}

.section-title {
  font-size: 1.9rem;
  font-weight: 800;
  margin: 0 0 25px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.sub-title {
  font-size: 1.4rem;
  font-weight: 700;
  margin: 0 0 12px;
  color: #333;
}

/* Content */
.content-box {
  background: white;
  border-radius: 15px;
  padding: 25px;
  margin-bottom: 25px;
  box-shadow: 0 2px 10px rgba(0,0,0,.05);
}

.alt-bg .content-box {
  background: #f8f9ff;
}

.intro-text {
  font-size: 1.15rem;
  line-height: 1.9;
  text-align: center;
  color: #333;
}

.intro-text strong {
  color: #667eea;
  font-weight: 700;
}

.desc-text {
  font-size: 1.05rem;
  line-height: 1.8;
  color: #555;
  margin: 0 0 15px;
}

.tip-text {
  font-size: .95rem;
  color: #888;
  font-style: italic;
  margin: 12px 0;
}

.center { text-align: center; }

/* Participate */
.participate-item {
  margin-bottom: 20px;
  padding: 18px;
  background: linear-gradient(135deg, #f8f9ff 0%, #fff 100%);
  border-radius: 12px;
  border-left: 4px solid #667eea;
}

.label {
  display: inline-block;
  padding: 4px 14px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  border-radius: 20px;
  font-size: .85rem;
  font-weight: 600;
  margin-bottom: 8px;
}

.hashtags {
  font-size: 1.2rem;
  font-weight: 700;
  color: #667eea;
  margin: 8px 0;
}

.participate-item p {
  font-size: 1rem;
  line-height: 1.6;
  color: #555;
  margin: 0;
}

.publish-wrap {
  text-align: center;
  margin-top: 20px;
}

/* Notes */
.notes-grid, .core-notes {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
  gap: 12px;
  margin-top: 15px;
}

.core-notes {
  padding: 18px;
}

.note-card {
  display: flex;
  align-items: center;
  padding: 12px 15px;
  background: white;
  border-radius: 12px;
  text-decoration: none;
  color: inherit;
  transition: all .3s ease;
  border: 2px solid transparent;
  gap: 10px;
}

.alt-bg .note-card {
  background: #f8f9ff;
}

.note-card:hover {
  transform: translateY(-2px);
  box-shadow: 0 5px 15px rgba(102,126,234,.2);
  border-color: #667eea;
}

.note-icon {
  font-size: 1.5rem;
  flex-shrink: 0;
}

.note-title {
  font-size: .95rem;
  font-weight: 600;
  color: #333;
}

.note-hint {
  font-size: .8rem;
  color: #999;
}

/* Core Detail */
.core-detail {
  background: white;
  border-radius: 15px;
  overflow: hidden;
  margin-bottom: 25px;
  box-shadow: 0 2px 10px rgba(0,0,0,.05);
}

.core-header {
  padding: 22px;
  color: white;
}

.core-header h3 {
  font-size: 1.6rem;
  font-weight: 700;
  margin: 0 0 8px;
  text-shadow: 2px 2px 10px rgba(0,0,0,.2);
}

.core-header p {
  font-size: 1rem;
  margin: 0;
  opacity: .95;
}

/* Other Directions */
.other-directions {
  display: grid;
  gap: 15px;
}

.direction-card {
  background: white;
  border-radius: 15px;
  padding: 22px;
  box-shadow: 0 2px 10px rgba(0,0,0,.05);
}

.alt-bg .direction-card {
  background: #f8f9ff;
}

.direction-card h4 {
  font-size: 1.2rem;
  font-weight: 700;
  margin: 0 0 12px;
  color: #333;
}

/* Publish Button */
.btn-publish {
  display: inline-block;
  padding: 12px 35px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white !important;
  text-decoration: none;
  border-radius: 30px;
  font-size: 1.05rem;
  font-weight: 600;
  margin-top: 15px;
  transition: all .3s ease;
}

.btn-publish:hover {
  transform: translateY(-3px);
  box-shadow: 0 5px 20px rgba(102,126,234,.4);
}

/* Footer */
.footer {
  text-align: center;
  padding: 35px 20px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  margin-top: 50px;
}

.footer p { margin: 8px 0; font-size: 1rem; }

.footer-hashtags {
  font-size: 1.2rem;
  font-weight: 600;
  opacity: .9;
}

/* Responsive */
@media (max-width: 768px) {
  .hero-title { font-size: 2rem; }
  .hero-subtitle { font-size: 1.4rem; }
  .section-title { font-size: 1.5rem; }
  .notes-grid, .core-notes { grid-template-columns: 1fr; }
}
</style>
