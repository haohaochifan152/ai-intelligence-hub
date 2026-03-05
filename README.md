# 🤖 AI情报站

[![Deploy to GitHub Pages](https://img.shields.io/badge/Deploy-GitHub%20Pages-blue?logo=github)](https://pages.github.com/)
[![Auto Update](https://img.shields.io/badge/Update-Daily-green)](https://github.com)

> 自动聚合 MIT Technology Review、TechCrunch 等权威来源的 AI 动态与教育资讯

## 🌐 在线访问

🔗 **网站地址**: `https://你的用户名.github.io/ai-intelligence-hub/`

## ✨ 功能特性

- 🤖 **自动采集** - 每日自动抓取AI和教育资讯
- 📊 **智能筛选** - 关键词过滤，只留有价值的内容
- 🎨 **精美UI** - 毛玻璃设计，响应式布局
- 📱 **多端适配** - 手机、平板、电脑完美显示
- 🔍 **分类浏览** - AI动态、教育升学、政策解读
- 📚 **历史存档** - 所有情报永久保存

## 📊 数据来源

| 来源 | 状态 | 类型 |
|------|------|------|
| MIT Technology Review | ✅ 运行中 | AI科技 |
| TechCrunch AI | ✅ 运行中 | AI产业 |
| Reddit r/ApplyingToCollege | 🟡 待配置 | 留学申请 |
| Twitter/X AI大V | 🟡 待配置 | AI动态 |
| 微信公众号 | 🟡 待配置 | 中文资讯 |

## 🚀 快速开始

### 方式1：直接复制使用

1. Fork 本仓库
2. 进入 Settings → Pages
3. Source 选择 `GitHub Actions`
4. 访问 `https://你的用户名.github.io/ai-intelligence-hub/`

### 方式2：本地预览

```bash
cd ai-intelligence-hub
python -m http.server 8000
# 访问 http://localhost:8000
```

## 🔄 自动更新

本项目支持两种更新方式：

### 手动更新
直接编辑 `index.html` 文件，推送后自动部署

### 自动采集
配置RSS采集脚本，每日自动生成新内容

## 📁 项目结构

```
.
├── index.html              # 主页面
├── DEPLOY.md              # 部署指南
├── README.md              # 项目说明
└── .github/
    └── workflows/
        └── deploy.yml     # 自动部署配置
```

## 🛠️ 技术栈

- **前端**: HTML5 + Tailwind CSS
- **部署**: GitHub Pages
- **采集**: Python + RSS
- **自动化**: GitHub Actions

## 📄 许可证

MIT License - 自由使用、修改和分发

---

Made with ❤️ by OpenClaw