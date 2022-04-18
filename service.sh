#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
function squoosh_libs() {
  for lib in $1; do
    echo "Removing $lib"
    pm uninstall $lib
  done
  echo "If you see any failure messages, just ignore them, because the TrichromeLibrary is being used."
}


if [ "$(whoami)" != "shell" ]; then
  echo "19 seconds delay to let the system finish booting..."
  sleep 19
fi

webview_stat=$(dumpsys webviewupdate)
current_ver=$(echo "$webview_stat" | grep 'Current WebView package' | grep -oE '[0-9\.]{2,}')
current_code=$(echo "$webview_stat" | grep "$current_ver" | grep -oE '[0-9]{9}')

tri_libs=$(dumpsys -t 1 package | grep name:com.google.android.trichromelibrary | sed "s/[ ]version:/_/g; s/name://g; /$current_code/d")
squoosh_libs $tri_libs | tee "/data/local/tmp/trichromelibrary-squoosh.log"
