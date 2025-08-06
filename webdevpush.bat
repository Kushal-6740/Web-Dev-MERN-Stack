@echo off
cd /d "%~dp0"

:: Ask for today's file name
set /p filename=Enter today's filename (without extension): 

:: Copy main.html to <your filename>.html
copy main.html %filename%.html

:: Git commands
git add .
git commit -am "Added %filename%.html"
git push origin master

pause
