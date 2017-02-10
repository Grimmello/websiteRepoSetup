#! /bin/bash
#usage ./websiteRepoSetup.sh dirName pairInitial1 pairInitial2
mkdir ~/Desktop/$1
mkdir ~/Desktop/$1/css
mkdir ~/Desktop/$1/img
touch ~/Desktop/$1/css/styles.css
cp ~/Desktop/websiteRepoSetup/index.html ~/Desktop/$1/index.html
cp ~/Desktop/websiteRepoSetup/css/bootstrap.css ~/Desktop/$1/css/bootstrap.css
cd ~/Desktop/$1
git init
git pair $2 $3
git add .
git-pair-commit -m "create initial css folder, img folder, and index.html"
atom .
