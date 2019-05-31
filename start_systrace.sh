# see
# https://source.android.com/devices/tech/debug/systrace
# https://zhuanlan.zhihu.com/p/27331842?refer=weishu
cd $ANDROID_HOME/platform-tools/systrace
./systrace.py sched freq idle am wm gfx view sync binder_driver irq workq input -b 96000 -o ~/Desktop/trace.html
