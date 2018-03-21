#! /bin/bash
#usage ./websiteRepoSetup.sh dirName githubUserName
mkdir ~/Desktop/$1
mkdir ~/Desktop/$1/css
mkdir ~/Desktop/$1/img
mkdir ~/Desktop/$1/js
cp ~/Desktop/websiteRepoSetup/index.html ~/Desktop/$1/index.html
cp -R ~/Desktop/websiteRepoSetup/css ~/Desktop/$1/
cp -R ~/Desktop/websiteRepoSetup/js ~/Desktop/$1/
cd ~/Desktop/$1
git init
git add .
git commit -m "create initial css folder, img folder, and index.html"
git remote add origin https://github.com/$2/$1.git
atom .
