#!/bin/bash
# AI情报站部署脚本

echo "🚀 部署到 GitHub..."

# 配置
USERNAME="haohaochifan152"
REPO="ai-intelligence-hub"

cd /Users/yuanjianguo/.openclaw/workspace/intelligence/web

# 初始化git
rm -rf .git
git init

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit: AI情报站"

# 添加远程仓库
git remote add origin "https://github.com/$USERNAME/$REPO.git"

# 推送到main分支
git branch -M main
git push -u origin main --force

echo ""
echo "✅ 部署完成！"
echo "🌐 网站地址: https://$USERNAME.github.io/$REPO/"
echo ""
echo "⚠️  如果提示输入密码，请使用 GitHub Personal Access Token"
