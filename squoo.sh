#!/system/bin/sh

# t=`cat trilibs.txt | grep -oP '\d{9}' | sort -n | sed '$d'`
t=`find /data/app -name  'com.google.android.trichromelibrary*' | grep -oE '[0-9]{9}' | sort -n | sed '$d'`

for i in $t; do
	echo "uninstalling: com.google.android.trichromelibrary_$i"
    pm uninstall com.google.android.trichromelibrary_$i
done