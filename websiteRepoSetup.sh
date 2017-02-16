#! /bin/bash
#usage ./websiteRepoSetup.sh dirName pairInitial1 pairInitial2
mkdir ~/Desktop/$1
mkdir ~/Desktop/$1/css
mkdir ~/Desktop/$1/img
mkdir ~/Desktop/$1/js
cp ~/Desktop/websiteRepoSetup/index.html ~/Desktop/$1/index.html
cp -R ~/Desktop/websiteRepoSetup/css ~/Desktop/$1/
cp -R ~/Desktop/websiteRepoSetup/js ~/Desktop/$1/
cd ~/Desktop/$1
git init
git pair $2 $3
git add .
git-pair-commit -m "create initial css folder, img folder, and index.html"
atom .
