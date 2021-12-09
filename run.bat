adb wait-for-device
adb push squoo.sh /data/local/tmp
adb shell su -c 'sh /data/local/tmp/squoo.sh'