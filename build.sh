#/bin/bash
rm -rf ./_book

gitbook init
gitbook build

DATA_SECOND=`date +%Y-%m-%d-%H-%M-%S`
cd ./_book || exit 1
rm -rf ./build.sh || exit 2
git init
git add .
git commit -a -m "update ${DATA_SECOND}"
git remote add origin git@github.com:skynetclub/book.git
git push --force origin master:gh-pages
cd -
