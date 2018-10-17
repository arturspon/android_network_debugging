@echo off
color 0b
goto printIntro

:menu
echo Menu
echo.
echo 1) Tutorial
echo 2) Initiate program
echo 3) Terminate
echo.
choice /C 123 /N /M "Select an option > " 
if "%ERRORLEVEL%" == "1" goto tutorial
if "%ERRORLEVEL%" == "2" goto runProgram
if "%ERRORLEVEL%" == "3" goto exitWithDelay

:tutorial
cls
echo === Network ADB Utility ===
echo === By Artur Sponchiado ===
echo.
echo --------------------
echo.
echo TUTORIAL 
echo.
echo 1) Enable USB debugging in Developer Options in your device settings.
echo 2) Plug your device in your PC and click Accept in the dialog that will appear in your phone.
echo 3) Place this program inside the folder that contains adb.exe, usually in C:\Users\YOUR_USER\AppData\Local\Android\Sdk\platform-tools
echo 4) Run this program.
echo.
echo Press any key to go back to menu...
pause >nul
cls
goto printIntro

:runProgram
cls
echo === Network ADB Utility ===
echo === By Artur Sponchiado ===
echo https://github.com/arturspon
echo.
echo --------------------
echo.
echo Follow the steps below to run ADB over your WiFi
echo ATTENTION: Make sure this program is in the same folder as adb.exe, otherwise this program will not work!
echo.
set /P ip="Enter device's IP > "
echo.
echo Working...
echo.
adb.exe tcpip 5555
adb.exe connect %ip%:5555
echo.
echo Your device is ready to use over WiFi.
echo You can disconnect the USB now.
echo Thanks for using this utility.
echo.
echo Press any key to go back to menu...
pause >nul
cls
echo === Network ADB Utility ===
echo === By Artur Sponchiado ===
echo https://github.com/arturspon
echo.
echo --------------------
echo.
goto menu

:printIntro
cls
echo === Network ADB Utility ===
echo === By Artur Sponchiado ===
echo https://github.com/arturspon
echo.
echo --------------------
echo.
goto menu

:exitWithDelay
echo.
echo.
echo Bye...
ping >nul 127.0.0.1 -n 2
