OnePlus OxygenOS 16 Shelf Toggle Tool

Replaces left-swipe Google Discover with Shelf.

Tested:
- OnePlus 11R OxygenOS 16.0.2.400.IN11CB
- OnePlus 13S OxygenOS 16.0.3.501.IN13SB

Options:
1. Disable feed
2. Enable Shelf  
3. Restore default

Setup:
1. Download platform-tools: developer.android.com/tools/releases/platform-tools
2. Put this .bat in platform-tools folder
3. Enable USB debugging on OnePlus
4. Connect USB → Run .bat → Choose option → Reboot

Commands used:
adb shell settings put secure assistant_screen_type 0/1/2
adb shell settings put secure assistant_screen_type_left_enable 0/1

Revert: Option 3.

OxygenOS 16 / Android 16 / No root required.
