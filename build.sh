#/bin/bash
git submodule init
git submodule update #skynetwiki/FAQ.md 格式有问题

rm -rf ./_book

gitbook init
gitbook build

DATA_SECOND=`date +%Y-%m-%d-%H-%M-%S`
cd ./_book || exit 1
rm -rf ./.gitmodules || exit 2
rm -rf ./skynetwiki/.git || exit 3
rm -rf ./build.sh || exit 4
git init
git add .
git commit -a -m "update ${DATA_SECOND}"
git remote add origin git@github.com:skynetclub/book.git
git push --force origin master:gh-pages
cd -
