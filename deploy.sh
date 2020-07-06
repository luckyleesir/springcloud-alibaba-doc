#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:luckyleesir/springcloud-alibaba-doc.git master:gh-pages

# 如果使用 travis 持续集成
# git push -f https://ca99953b9d2fbc8558991f8d423a21e3317114d1@github.com/springcloud-alibaba-doc/docs.git master:gh-pages

cd -