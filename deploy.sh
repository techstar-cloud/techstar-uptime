#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build:docs

# navigate into the build output directory
cd docs/.vuepress/dist

# if you are deploying to a custom domain
echo 'uptime.js.org' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -
