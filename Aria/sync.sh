#!/bin/bash

# 进入本地仓库目录
cd ~/Desktop/Aria

# 添加所有更改
git add .

# 提交更改，附带时间戳
git commit -m "Auto-sync: $(date)"

# 推送到 GitHub
git push

# 同步完成提示
echo "All files have been synced to GitHub at $(date)"
