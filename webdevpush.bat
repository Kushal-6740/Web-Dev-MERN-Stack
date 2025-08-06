@echo off
cd /d "%~dp0"

echo 🔁 Adding all files...
git add .

echo 💬 Committing with default message...
git commit -am "auto update"

echo 🚀 Pushing to GitHub (branch: master)...
git push origin master

pause
