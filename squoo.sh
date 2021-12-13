#!/system/bin/sh

# trib_vers=`cat trilibs.txt | grep -oP '\d{9}' | sort -n`
trib_vers=`find /data/app -name  'com.google.android.trichromelibrary*' | grep -oE '[0-9]{9}' | sort -n`

echo find trichromelibrary versions: $trib_vers

trib_vers=`echo "$trib_vers" | sed '$d'`

for version in $trib_vers; do
    echo "uninstalling: com.google.android.trichromelibrary_$version"
    pm uninstall com.google.android.trichromelibrary_$version
done
