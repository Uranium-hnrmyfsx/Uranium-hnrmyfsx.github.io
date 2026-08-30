#!/bin/bash

echo "🚀 开始备份源码到 GitHub..."

# 1. 添加所有修改
git add .

# 2. 提交并自动带上当前时间作为备注
git commit -m "backup: auto backup at $(date '+%Y-%m-%d %H:%M:%S')"

# 3. 推送到 hexo-source 分支
git push origin hexo-source

# 4. 提示完成
if [ $? -eq 0 ]; then
    echo "备份成功: 源码已经备份在 GitHub 上"
else
    echo "备份失败: 检查网络连接/ Git 配置"
fi
