# AI情报站 - 部署指南

## 🚀 快速部署到 GitHub Pages（推荐）

### 步骤1：创建 GitHub 仓库

1. 访问 https://github.com/new
2. 仓库名称填写：`ai-intelligence-hub`
3. 选择 **Public**（公开）
4. 勾选 **Add a README file**
5. 点击 **Create repository**

### 步骤2：上传网页文件

在仓库页面点击 **" uploading an existing file "**，然后：

1. 将 `index.html` 文件拖入上传区域
2. 提交信息填写：`Initial commit`
3. 点击 **Commit changes**

### 步骤3：启用 GitHub Pages

1. 进入仓库的 **Settings** 标签
2. 左侧菜单点击 **Pages**
3. **Source** 选择 `Deploy from a branch`
4. **Branch** 选择 `main`，文件夹选择 `/ (root)`
5. 点击 **Save**

### 步骤4：访问您的网站

等待2-3分钟后，访问：
```
https://你的用户名.github.io/ai-intelligence-hub/
```

**示例**：如果GitHub用户名是 `yuanjianguo`，则链接为：
```
https://yuanjianguo.github.io/ai-intelligence-hub/
```

---

## 🔄 自动更新配置

### 方案A：手动更新（简单）
每次生成新报告后，手动上传 `index.html` 到GitHub

### 方案B：自动部署（推荐）

在仓库中创建 `.github/workflows/deploy.yml` 文件：

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]
  schedule:
    # 每天北京时间8:00自动部署
    - cron: '0 0 * * *'

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    
    - name: Setup Python
      uses: actions/setup-python@v4
      with:
        python-version: '3.10'
    
    - name: Install dependencies
      run: |
        pip install requests
    
    - name: Run RSS collector
      run: |
        python ../../scripts/collect_rss.py || true
    
    - name: Copy latest report
      run: |
        cp ../../reports/$(date +%Y-%m-%d)-daily.md ./content/ || true
    
    - name: Deploy
      uses: peaceiris/actions-gh-pages@v3
      with:
        github_token: ${{ secrets.GITHUB_TOKEN }}
        publish_dir: ./
```

---

## 🌐 其他部署选项

### 选项1：Cloudflare Pages（推荐国内访问）
1. 访问 https://dash.cloudflare.com
2. 注册/登录账号
3. 点击 **Pages** → **Create a project**
4. 连接GitHub仓库或上传文件
5. 自动获得 `xxx.pages.dev` 域名

### 选项2：Netlify（简单快捷）
1. 访问 https://www.netlify.com
2. 拖放 `index.html` 到首页
3. 立即获得临时URL
4. 可以绑定自定义域名

### 选项3：Vercel（适合开发者）
1. 访问 https://vercel.com
2. 导入GitHub仓库
3. 自动部署，获得 `.vercel.app` 域名

---

## 📁 文件结构

```
ai-intelligence-hub/
├── index.html          # 主页面（必须）
├── README.md           # 项目说明
├── .github/
│   └── workflows/
│       └── deploy.yml  # 自动部署配置（可选）
└── content/            # 历史存档（可选）
    ├── 2025-03-05.md
    └── 2025-03-06.md
```

---

## 🎨 自定义域名（可选）

### 绑定自己的域名
1. 在仓库创建 `CNAME` 文件，内容填写你的域名，如：`ai.yourdomain.com`
2. 在域名DNS设置中添加 CNAME 记录：
   - 主机记录：`ai`
   - 记录值：`你的用户名.github.io`
3. 在GitHub Pages设置中填入自定义域名

---

## ✅ 部署检查清单

- [ ] 创建 GitHub 账号
- [ ] 创建公开仓库
- [ ] 上传 `index.html`
- [ ] 启用 GitHub Pages
- [ ] 测试访问链接
- [ ] （可选）配置自动更新
- [ ] （可选）绑定自定义域名

---

## 🆘 常见问题

**Q: 网页显示404错误？**
A: 等待2-3分钟再试，GitHub Pages需要时间来部署

**Q: 样式显示不正常？**
A: 检查是否完整上传了 `index.html` 文件

**Q: 如何更新内容？**
A: 重新上传新的 `index.html` 文件到仓库，会自动更新

**Q: 可以设置访问密码吗？**
A: GitHub Pages不支持密码，如需密码保护可使用 Cloudflare Access

---

## 📞 需要帮助？

如果在部署过程中遇到问题，可以：
1. 查看GitHub官方文档：https://docs.github.com/cn/pages
2. 联系飞书上的我获取协助

---

*祝您部署顺利！*