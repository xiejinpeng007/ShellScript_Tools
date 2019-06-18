
## 一些 Android 测试脚本/工具集合


#### 运行环境 ( 必须 )

所有的工具都需要 adb 的运行环境，所以需要在电脑上配置。

检查你电脑上是否有安装 adb

```
adb devices
```
如果提示 adb command not found 那么就没有,两种方式安装。
* 运行 install_adb.sh

* 按照以下步骤安装

   1. 安装 homebrew

   ```
   ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   ```

   2. 安装 adb (根据提示输入相关信息)

   ```
   brew install homebrew/cask/android-platform-tools
   ```

   3. 检查是否安装好

   ```
   adb devices
   ```

#### 说明：
* 工具通过`自动操作`实现智能在 Mac 端使用

* .sh 为 shell脚本

* 使用时确保 Mac 只连接了一台 Android 设备，否则无法使用。


### 工具介绍( 对应.sh后缀为脚本 )：
* **install_apk** ：安装 apk 的工具，强制覆盖已安装的。
* **screen_capture** ：截图工具，保存到 Mac 桌面。
* **screen_record** ：录屏工具，输入时间（小于180秒），保存到 Mac 桌面。
* **open_url_scheme** ：测试打开 url scheme 工具。
* **adb_wifi** ：手机无线连接电脑，
        1. 连接手机点击下一步
        2. 输入手机 IP（ 手机端 wifi 设置中查询 ），断开手机点击下一步
        3. 完成
