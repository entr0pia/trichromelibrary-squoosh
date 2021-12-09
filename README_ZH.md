# TrichromeLibrary-Squoosh

[English](https://github.com/entr0pia/TrichromeLibrary-Squoosh#readme) | [中文](https://github.com/entr0pia/TrichromeLibrary-Squoosh/blob/master/README_ZH.md)

移除过时的 TrichromeLibrary. **需要 root 权限**

## 描述

众所周知, Google 使用 TrichromeLibrary 在 Android Q+ 设备上的 Chrome 和 Webview 中共享相同的代码, 以节省设备空间. Play 商店在安装和升级 Chrome 和 Webview 时会自动安装相应的 TrichromeLibrary 版本, 但不会卸载旧版本. 

不幸的是, Android 在共享库管理方面做得很差. TrichromeLibrary 不能像普通应用程序一样显示在应用程序列表中 (因为它是共享库), 也不能用 ```adb shell pm list libraries``` 查询设备上已安装的库版本.

## 使用方法

### (1) 本地终端或 adb shell

- 执行命令

    ```shell
    su -c "$(curl -sLf https://git.io/JDkAY)"
    ```

### (2) 运行脚本

1. 克隆此仓库

    ```shell
    git clone https://ghproxy.com/https://github.com/entr0pia/TrichromeLibrary-Squoosh.git
    ```

2. 连接安卓设备, 并开启 adb 调试.
3. 运行脚本

    - Windows: 双击 ```run.bat```
    - Linux: 执行 ```sh run.bat``` 命令

## 备选方案

如果你的设备没有 root, 那你可以尝试这个仓库: [TrichromeLibrary_Remover](https://github.com/Undefined-User/TrichromeLibrary_Remover). 不过你需要做一些修改以适配新的 TrichromeLibrary 版本.