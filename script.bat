@echo off
adb kill-server
adb start-server
echo Removing Play Store
adb shell pm uninstall -k --user 0 com.android.vending
echo Installing AuroraStore
adb install bin/store.apk

echo SUCCESS!
PAUSE