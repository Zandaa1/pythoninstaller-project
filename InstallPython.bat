echo off

cls
color 2
echo [101;41mScript made by Xander[0m
echo [12 Franklin -  ICT] (16/01/2023)
echo Installs latest version of Python.
pause

cls
color 4
echo Make sure you are running administrator!
echo Running script in 10 seconds.
timeout /t 10 /nobreak

cls
echo Installing (Chocolatey)
start powershell -command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"
echo Adding 45 seconds before installation (Chocolatey)
timeout /t 45 /nobreak

cls
echo Installing Python
choco install python
timeout /t 5 /nobreak
goto exit

:exit
echo off
cls
color 2
echo Python Installed!
echo To check if Python is working, it will run a simple command.

timeout /t 5 /nobreak
cls
echo on
echo print("Hello World!") > test.py
python test.py
echo off
timeout /t 7 /nobreak

cls
echo If it said Hello World, congrats the program is working.
echo The script will close in 10 seconds. Thank you for using the script!
timeout /t 10 /nobreak
