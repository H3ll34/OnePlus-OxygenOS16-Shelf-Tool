# OnePlus-OxygenOS16-Shelf-Tool
OxygenOS 16 Shelf Toggle Tool | No Root ADB script for OnePlus 11R/13S | Replace Google Discover with Shelf

# OnePlus Shelf Toggle Tool
**OxygenOS 16 (Android 16) • No Root • Windows**

**Replace Google Discover with Shelf on left swipe!**

✅ **Tested on OnePlus 11R + OnePlus 13S**  
✅ **OxygenOS 16.0.2+ (Android 16)**  
✅ **India Stable Builds**

## Options:
1. **Disable** Google feed (blank swipe)
2. **Enable Shelf** (widgets/weather)  
3. **Restore** default Google feed

## Setup for OnePlus:
Download ADB: developer.android.com/tools/releases/platform-tools

Extract to C:\OnePlus-Tools

Copy this .bat to C:\OnePlus-Tools

OnePlus Settings → About phone → Tap Build number 7x

Developer options → USB debugging + OEM unlocking ON

USB cable → Run .bat → Choose 1/2/3 → Reboot

## OnePlus OxygenOS 16 Commands (Safe):
adb shell settings put secure assistant_screen_type 0/1/2

adb shell settings put secure assistant_screen_type_left_enable 0/1

**0=none | 1=Shelf | 2=Google feed**

**Revert:** Choose option 3 anytime.

**Feb 2026 • Made for OnePlus OxygenOS 16 users**
