#!/usr/bin/env sh
echo "Getting ready for deployment"

yarn build
cd build || exit
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:raul-vidal/raul-vidal.github.io.git master:gh-pages