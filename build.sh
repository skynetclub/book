#!/bin/bash
git submodule init
git submodule update #skynetwiki/FAQ.md 格式有问题

gitbook init
gitbook build

DATA_SECOND=`date +%Y-%m-%d-%H-%M-%S`
cd ./_book || exit 0
rm -rf ./skynetwiki/.git
rm -rf ./build.sh
git init
git add .
git commit -a -m "update ${DATA_SECOND}"
git remote add origin git@github.com:skynetclub/book.git
git push --force origin master:gh-pages
cd -
