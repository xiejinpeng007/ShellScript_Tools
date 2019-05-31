adb devices
DATE=`date '+%Y%m%d.%H%M%S'`
local=/sdcard/ScreenCapture_${DATE}.png
remote=~/Desktop/ScreenCapture_${DATE}.png
adb shell screencap ${local}
adb pull ${local} ${remote}
echo 截图已输出到 ${remote}
adb shell rm -f ${local}