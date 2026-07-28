<template>
  <div class="home">
    <!-- Hero Section -->
    <section class="hero">
      <div class="hero-content">
        <h1 class="hero-title">2.5次元</h1>
        <h2 class="hero-subtitle">#fancore 穿搭暗号</h2>
        <p class="hero-desc">从追的番 / 玩的游戏 / 关注的IP中汲取灵感<br/>创作属于你的穿搭风格</p>
        <div class="hero-cta">
          <span class="deadline">活动截止：9月15日</span>
        </div>
      </div>
      <div class="hero-decoration">
        <div class="deco-circle c1"></div>
        <div class="deco-circle c2"></div>
        <div class="deco-circle c3"></div>
      </div>
    </section>

    <!-- What is Fancore -->
    <section class="section what-is">
      <h2 class="section-title">什么是 #fancore？</h2>
      <div class="what-is-content">
        <p class="what-is-text">
          <strong>fan</strong> 的位置可以引申替换为任何角色名/作品名<br/>
          例如：JOJOcore、NANAcore、鬼灭core...<br/><br/>
          从人物角色的标志性穿搭颜色/元素汲取灵感，<br/>
          创作属于你的 fancore 穿搭风格
        </p>
      </div>
    </section>

    <!-- Fancore Examples -->
    <section class="section examples">
      <h2 class="section-title">Fancore 示例</h2>
      <div class="examples-grid">
        <div class="example-card" v-for="example in examples" :key="example.name">
          <div class="example-header" :style="{ background: example.gradient }">
            <h3>{{ example.name }}</h3>
          </div>
          <div class="example-body">
            <p v-if="example.desc">{{ example.desc }}</p>
            <p v-else class="coming-soon">即将揭晓</p>
          </div>
        </div>
      </div>
    </section>

    <!-- How to Participate -->
    <section class="section participate">
      <h2 class="section-title">参与方式</h2>
      <div class="steps">
        <div class="step">
          <div class="step-number">1</div>
          <div class="step-content">
            <h3>选择你的灵感来源</h3>
            <p>从喜欢的动漫/游戏/IP角色中获取穿搭灵感</p>
          </div>
        </div>
        <div class="step">
          <div class="step-number">2</div>
          <div class="step-content">
            <h3>创作你的穿搭</h3>
            <p>根据角色标志性元素，演绎属于你的日常穿搭</p>
          </div>
        </div>
        <div class="step">
          <div class="step-number">3</div>
          <div class="step-content">
            <h3>发布笔记</h3>
            <p>带话题 <strong>#穿搭暗号对一下</strong> <strong>#fancore</strong> 发布时尚穿搭笔记</p>
          </div>
        </div>
        <div class="step">
          <div class="step-number">4</div>
          <div class="step-content">
            <h3>瓜分流量</h3>
            <p>参与瓜分上亿流量，让更多人看到你的创意</p>
          </div>
        </div>
      </div>
      <div class="participate-note">
        <p>💡 <strong>推荐</strong>：身着 fancore 与「二次元人物形象」同框</p>
        <p>💡 笔记正文需与「fancore穿搭」相关</p>
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
const examples = [
  {
    name: 'JOJOcore',
    gradient: 'linear-gradient(135deg, #667eea 0%, #764ba2 100%)',
    desc: 'JOJO的奇妙冒险风格'
  },
  {
    name: 'NANAcore',
    gradient: 'linear-gradient(135deg, #f093fb 0%, #f5576c 100%)',
    desc: '红色格纹裙 + 黑色主色调 + 朋克铆钉choker'
  },
  {
    name: '奈奈core',
    gradient: 'linear-gradient(135deg, #ffecd2 0%, #fcb69f 100%)',
    desc: '蕾丝背心内搭 + 蕾丝吊带 + 泡泡短裤 + 小腿袜'
  },
  {
    name: '鬼灭core',
    gradient: 'linear-gradient(135deg, #a8edea 0%, #fed6e3 100%)',
    desc: '鬼灭之刃风格'
  },
  {
    name: 'HxHcore',
    gradient: 'linear-gradient(135deg, #89f7fe 0%, #66a6ff 100%)',
    desc: '全职猎人风格'
  },
  {
    name: '毛毛core',
    gradient: 'linear-gradient(135deg, #96e6a1 0%, #d4fc79 100%)',
    desc: '绿黑配色风格'
  },
  {
    name: 'Kittycore',
    gradient: 'linear-gradient(135deg, #fbc2eb 0%, #a6c1ee 100%)',
    desc: 'Hello Kitty 风格'
  },
  {
    name: 'TOYcore',
    gradient: 'linear-gradient(135deg, #ffecd2 0%, #fcb69f 100%)',
    desc: '玩具总动员风格'
  }
]
</script>

<style scoped>
.home {
  min-height: 100vh;
  background: linear-gradient(180deg, #f8f9ff 0%, #ffffff 100%);
}

/* Hero Section */
.hero {
  position: relative;
  padding: 80px 20px 120px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 50%, #f093fb 100%);
  color: white;
  overflow: hidden;
}

.hero-content {
  max-width: 800px;
  margin: 0 auto;
  text-align: center;
  position: relative;
  z-index: 2;
}

.hero-title {
  font-size: 4rem;
  font-weight: 900;
  margin: 0 0 20px;
  text-shadow: 2px 2px 20px rgba(0, 0, 0, 0.2);
  letter-spacing: 0.1em;
}

.hero-subtitle {
  font-size: 2.5rem;
  font-weight: 700;
  margin: 0 0 30px;
  text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
}

.hero-desc {
  font-size: 1.3rem;
  line-height: 1.8;
  margin: 0 0 40px;
  opacity: 0.95;
}

.hero-cta {
  margin-top: 40px;
}

.deadline {
  display: inline-block;
  padding: 15px 40px;
  background: rgba(255, 255, 255, 0.2);
  backdrop-filter: blur(10px);
  border-radius: 50px;
  font-size: 1.2rem;
  font-weight: 600;
  border: 2px solid rgba(255, 255, 255, 0.3);
}

.hero-decoration {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  z-index: 1;
}

.deco-circle {
  position: absolute;
  border-radius: 50%;
  background: rgba(255, 255, 255, 0.1);
  animation: float 6s ease-in-out infinite;
}

.deco-circle.c1 {
  width: 300px;
  height: 300px;
  top: -100px;
  left: -100px;
  animation-delay: 0s;
}

.deco-circle.c2 {
  width: 200px;
  height: 200px;
  bottom: -50px;
  right: -50px;
  animation-delay: 2s;
}

.deco-circle.c3 {
  width: 150px;
  height: 150px;
  top: 50%;
  right: 20%;
  animation-delay: 4s;
}

@keyframes float {
  0%, 100% { transform: translateY(0) rotate(0deg); }
  50% { transform: translateY(-20px) rotate(5deg); }
}

/* Section Styles */
.section {
  max-width: 1200px;
  margin: 0 auto;
  padding: 80px 20px;
}

.section-title {
  font-size: 2.5rem;
  font-weight: 800;
  text-align: center;
  margin: 0 0 60px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

/* What is Fancore */
.what-is-content {
  max-width: 800px;
  margin: 0 auto;
}

.what-is-text {
  font-size: 1.3rem;
  line-height: 2;
  text-align: center;
  color: #333;
}

.what-is-text strong {
  color: #667eea;
  font-weight: 700;
}

/* Examples Grid */
.examples-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 30px;
  margin-top: 40px;
}

.example-card {
  background: white;
  border-radius: 20px;
  overflow: hidden;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.example-card:hover {
  transform: translateY(-10px);
  box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
}

.example-header {
  padding: 30px 20px;
  color: white;
  text-align: center;
}

.example-header h3 {
  font-size: 1.8rem;
  font-weight: 700;
  margin: 0;
  text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
}

.example-body {
  padding: 25px 20px;
}

.example-body p {
  font-size: 1.1rem;
  line-height: 1.6;
  color: #555;
  margin: 0;
}

.coming-soon {
  color: #999;
  font-style: italic;
}

/* Participate Section */
.participate {
  background: white;
  border-radius: 30px;
  margin: 80px auto;
  box-shadow: 0 10px 40px rgba(0, 0, 0, 0.08);
}

.steps {
  display: flex;
  flex-direction: column;
  gap: 30px;
  margin-top: 40px;
}

.step {
  display: flex;
  align-items: flex-start;
  gap: 25px;
  padding: 25px;
  background: linear-gradient(135deg, #f8f9ff 0%, #ffffff 100%);
  border-radius: 15px;
  transition: transform 0.3s ease;
}

.step:hover {
  transform: translateX(10px);
}

.step-number {
  flex-shrink: 0;
  width: 50px;
  height: 50px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1.5rem;
  font-weight: 700;
  box-shadow: 0 5px 15px rgba(102, 126, 234, 0.3);
}

.step-content {
  flex: 1;
}

.step-content h3 {
  font-size: 1.4rem;
  font-weight: 700;
  margin: 0 0 10px;
  color: #333;
}

.step-content p {
  font-size: 1.1rem;
  line-height: 1.6;
  color: #666;
  margin: 0;
}

.participate-note {
  margin-top: 50px;
  padding: 30px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  border-radius: 20px;
  color: white;
}

.participate-note p {
  font-size: 1.1rem;
  line-height: 1.8;
  margin: 10px 0;
}

/* Footer */
.footer {
  text-align: center;
  padding: 60px 20px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
}

.footer p {
  margin: 10px 0;
  font-size: 1.1rem;
}

.footer-hashtags {
  font-size: 1.3rem;
  font-weight: 600;
  opacity: 0.9;
}

/* Responsive */
@media (max-width: 768px) {
  .hero-title {
    font-size: 2.5rem;
  }
  
  .hero-subtitle {
    font-size: 1.8rem;
  }
  
  .hero-desc {
    font-size: 1.1rem;
  }
  
  .section-title {
    font-size: 2rem;
  }
  
  .examples-grid {
    grid-template-columns: 1fr;
  }
  
  .step {
    flex-direction: column;
    align-items: center;
    text-align: center;
  }
}
</style>
