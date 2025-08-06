@echo off
cd /d "%~dp0"

:: Ask for today's file name
set /p filename=Enter today's filename (without extension): 

:: Copy main.html to DayX.html
copy main.html %filename%.html

:: Git commands
git add %filename%.html
git commit -m "Added %filename%.html"
git pull origin master --rebase
git push origin master

:: Delete the copied file locally
del %filename%.html

pause