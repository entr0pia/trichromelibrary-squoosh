# TrichromeLibrary-Squoosh

[English](https://github.com/entr0pia/trichromelibrary-squoosh#readme) | [中文](https://github.com/entr0pia/trichromelibrary-squoosh/blob/master/README_ZH.md)

移除过时的 TrichromeLibrary. **需要 root 权限**

## 描述

众所周知, Google 使用 TrichromeLibrary 在 Android Q+ 设备上的 Chrome 和 Webview 中共享相同的代码, 以节省设备空间. Play 商店在安装和升级 Chrome 和 Webview 时会自动安装相应的 TrichromeLibrary 版本, **但是, 旧版本不会自动卸载**, 这占用了大量的存储空间. 

已知可以通过 ```pm uninstall com.google.android.trichromelibrary_$version``` 命令卸载对应版本的 TrichromeLibrary, 所以获取到 TrichromeLibrary 的版本号就可以手动卸载了. 不幸的是, Android 在共享库管理方面做得很差. TrichromeLibrary 不能像普通应用程序一样显示在应用程序列表中 (因为它是共享库), 也不能用 ```adb shell pm list libraries``` 查询设备上已安装的库版本.

感谢 issue#1，*TrichromeLibrary-Squoosh* 现在使用不需要 root 权限的方法。 `dumpsys package|grep name:c` 命令只需要 shell 权限即可运行，并能获得 TrichromeLibrary 的版本。

> **旧方法:** <br> 由于每个 Android App 都会在 ```/data/app``` 下面拥有一个自己的目录, 而且 TrichromeLibrary 的文件夹名还会追加版本号, 如下图. 所以我们可以查找关键字, 然后从结果中提取版本号. 不过, 访问 ```/data/app``` 需要 root 权限.
![TrichromeLibrary 目录](https://tvax2.sinaimg.cn/large/007uv4aMgy1h0k41g844cj30rs0eqgsx.jpg)

## 使用方法

1. 就是一个普通的 Magisk 模块. 从 [release](https://github.com/entr0pia/trichromelibrary-squoosh/releases/latest) 页面下载并安装.
2. 如果你没有 Magisk, 在电脑上运行以下 adb 命令:
    ```shell
    adb shell sh -c "$(curl -sLf https://cdn.jsdelivr.net/gh/entr0pia/trichromelibrary-squoosh@master/service.sh)"
    ```
