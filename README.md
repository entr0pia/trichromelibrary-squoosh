# TrichromeLibrary-Squoosh

[English](https://github.com/entr0pia/trichromelibrary-squoosh#readme) | [中文](https://github.com/entr0pia/trichromelibrary-squoosh/blob/master/README_ZH.md)

Remove the outdated TrichromeLibrary.

## Description

As we know, Google uses TrichromeLibrary to share the same code in Chrome and Webview on Android Q+ devices to save space on the device. The Play Store will automatically install the corresponding TrichromeLibrary version when installing and upgrading Chrome and Webview, **but will not uninstall the old version**, which takes up a lot of storage space.

It is known that the corresponding version of TrichromeLibrary can be uninstalled through the command ```pm uninstall com.google.android.trichromelibrary_$version```, so you can manually uninstall the version number of TrichromeLibrary. Unfortunately, Android does a poor job of shared library management. TrichromeLibrary cannot be displayed in the application list like a normal application (because it is a shared library), nor can use `adb shell pm list libraries` to query installed libraries version on the device.

Thanks to issue#1, *TrichromeLibrary-Squoosh* now uses a method that does not require root privileges. The command `dumpsys package|grep name:c` only needs shell privileges to run, and can get the version of TrichromeLibrary.


> **Old method:** <br> Since each Android application will have its own directory under ```/data/app```, as shown in the figure below, and the folder name of TrichromeLibrary will also append the version number, so we can search for keywords, and then extract the version number from the results. However, root access is required to access ```/data/app```.
![TrichromeLibrary dirs](https://tvax2.sinaimg.cn/large/007uv4aMgy1h0k41g844cj30rs0eqgsx.jpg)

## Usage

1. Just like a normal Magisk module. Download it from the [release](https://github.com/entr0pia/trichromelibrary-squoosh/releases/latest) page, and install it.
2. If you don't have a Magisk, run the follow commands on PC with adb:
    ```shell
    adb shell
    sh -c "$(curl -sLf https://raw.githubusercontent.com/entr0pia/trichromelibrary-squoosh/master/service.sh)"
    ```
