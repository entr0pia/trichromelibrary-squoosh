# TrichromeLibrary-Squoosh

[English](https://github.com/entr0pia/trichromelibrary-squoosh#readme) | [中文](https://github.com/entr0pia/trichromelibrary-squoosh/blob/master/README_ZH.md)

移除过时的 TrichromeLibrary. **需要 root 权限**

## 描述

众所周知, Google 使用 TrichromeLibrary 在 Android Q+ 设备上的 Chrome 和 Webview 中共享相同的代码, 以节省设备空间. Play 商店在安装和升级 Chrome 和 Webview 时会自动安装相应的 TrichromeLibrary 版本, 但不会卸载旧版本. 

已知可以通过 ```pm uninstall com.google.android.trichromelibrary_$version``` 命令卸载对应版本的 TrichromeLibrary, 所以获取到 TrichromeLibrary 的版本号就可以手动卸载了. 不幸的是, Android 在共享库管理方面做得很差. TrichromeLibrary 不能像普通应用程序一样显示在应用程序列表中 (因为它是共享库), 也不能用 ```adb shell pm list libraries``` 查询设备上已安装的库版本.

由于每个 Android App 都会在 ```/data/app``` 下面拥有一个自己的目录, 而且 TrichromeLibrary 的文件夹名还会追加版本号, 如下图. 所以我们可以查找关键字, 然后从结果中提取版本号. 不过, 访问 ```/data/app``` 需要 root 权限.

![TrichromeLibrary 目录](https://tvax2.sinaimg.cn/large/007uv4aMgy1h0k41g844cj30rs0eqgsx.jpg)

## 备选方案

如果你的设备没有 root, 那你可以尝试这个仓库: [TrichromeLibrary_Remover](https://github.com/Undefined-User/TrichromeLibrary_Remover). 不过你需要做一些修改以适配新的 TrichromeLibrary 版本.