read -p "输入要录屏的时间(单位:秒) " second
adb devices
DATE=`date '+%Y%m%d.%H%M%S'`
local=/sdcard/ScreenRecord_${DATE}.mp4
remote=~/Desktop/ScreenRecord_${DATE}.mp4
echo ========== 开始录制 ===========
adb shell screenrecord --time-limit ${second} ${local}
echo ========== 录制完成 ===========
adb pull ${local} ${remote}
echo 录屏已输出到 ${remote}
adb shell rm -f ${local}