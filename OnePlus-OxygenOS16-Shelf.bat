@echo off
title OxygenOS 16 - Replace Google Feed with OnePlus Shelf (ADB)
echo.
echo ===================================================
echo OnePlus OxygenOS 16 ^| Android 16 ^| No Root Required
echo   Swap Google Discover Feed for OnePlus Shelf
echo   Tested: OnePlus 11R + 13S ^| Rohit Custom ^| Feb 2026
echo ===================================================
echo.
echo Requirements:
echo - USB Debugging ON ^(Developer options^)
echo - Phone connected & authorized
echo - ADB in same folder or PATH
echo.
echo Options:
echo 1 = Enable Shelf ^(replaces feed^)
echo 0 = Blank / Disable feed ^(no panel^)
echo 2 = Restore Google Discover ^(default^)
echo.
set /p choice=Enter choice ^(1, 0, or 2^): 

echo.
echo Checking ADB connection...
adb devices
echo.
echo If no device listed, fix connection and rerun.
echo Press any key to continue...
pause >nul

if "%choice%"=="1" (
    echo [1] Enabling OnePlus Shelf...
    adb shell settings put secure assistant_screen_type 1
    adb shell settings put secure assistant_screen_type_left_enable 1
    echo Shelf enabled! 
    echo Swipe LEFT to test.
    echo.
    choice /c YN /m "Reboot now? ^(Y/N^)"
    if errorlevel 2 echo Skip reboot ^(restart launcher manually^).
    if errorlevel 1 adb reboot
)

if "%choice%"=="0" (
    echo [0] Disabling Google Feed ^(blank panel^)...
    adb shell settings put secure assistant_screen_type 0
    adb shell settings put secure assistant_screen_type_left_enable 0
    echo Feed disabled!
    echo.
    choice /c YN /m "Reboot now? ^(Y/N^)"
    if errorlevel 2 echo Skip reboot ^(restart launcher manually^).
    if errorlevel 1 adb reboot
)

if "%choice%"=="2" (
    echo [2] Restoring Google Discover...
    adb shell settings put secure assistant_screen_type 2
    adb shell settings put secure assistant_screen_type_left_enable 1
    echo Google feed restored!
    echo.
    choice /c YN /m "Reboot now? ^(Y/N^)"
    if errorlevel 2 echo Skip reboot ^(restart launcher manually^).
    if errorlevel 1 adb reboot
)

if not "%choice%"=="1" if not "%choice%"=="0" if not "%choice%"=="2" (
    echo Invalid choice! Run again.
)

echo.
echo ===================================================
echo Manual revert anytime:
echo adb shell settings put secure assistant_screen_type [0/1/2]
echo adb shell settings put secure assistant_screen_type_left_enable [0/1]
echo ===================================================
echo.
pause
