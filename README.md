# TrichromeLibrary-Squoosh

Remove the outdated TrichromeLibrary. **Root Privilege Required**

## Description

As we know, Google uses TrichromeLibrary to share the same code in Chrome and Webview on Android Q+ devices to save space on the device. The Play Store will automatically install the corresponding TrichromeLibrary version when installing and upgrading Chrome and Webview, but will not uninstall the old version.

Unfortunately, Android does a poor job of shared library management. TrichromeLibrary cannot be displayed in the application list like a normal application (because it is a shared library), nor can use `adb shell pm list libraries` to query installed libraries version on the device.

The good news is we can use `adb shell pm uninstall com.google.android.trichromelibrary*_version_code` to uninstall it completely. For root users, they can find installed TrichromeLibrary in `/data/system/packages.*` or `/data/app/*/*trichromelibrary*`. For non-root users, I didn't find a good way to query the version of the shared library.

So I wrote this python script, which enumerates the version codes of all stable and beta versions to ensure TrichromeLibrary can be completely uninstalled.

## Instructions

1. Clone this repo \
```git clone https://github.com/entr0pia/TrichromeLibrary-Squoosh.git```

2. Connect Android device with adb enabled
3. Run the script 
    - Windows: Double click ```run.bat```
    - Linux: Run command ```sh run.bat```

## Fallback

If your device is not rooted, you can use this repo: [TrichromeLibrary_Remover](https://github.com/Undefined-User/TrichromeLibrary_Remover). But you need to make some changes to adapt to the new version of TrichromeLibrary.