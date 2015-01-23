#!/bin/bash

SOURCE=$1
TARGET=.

ROOT="/etc/firmware/ /etc/wifi/"

SYSTEM="/bin/6620_wmt_lpbk /bin/6620_launcher /bin/6620_wmt_concurrency /bin/wmt_loader \
/lib/egl/libGLESv1_CM_mali.so /lib/egl/libGLESv2_mali.so /lib/egl/libEGL_mali.so \
/lib/libm4u.so /lib/hw/hwcomposer.mt6592.so /lib/hw/gralloc.mt6592.so \
/lib/libdpframework.so /lib/libion.so /lib/libMali.so"

# get data from a device
if [ -z $SOURCE ]; then
  for FILE in $ROOT ; do
    T=$TARGET/$FILE
    adb pull $FILE $T
  done
  for FILE in $SYSTEM ; do
    T=$TARGET/$FILE
    adb pull /system/$FILE $T
  done
  exit 0
fi

# get data from folder
for FILE in $ROOT $SYTEM ; do
  S=$SOURCE/$FILE
  T=$TARGET/$FILE
  mkdir -p $(dirname $T) || exit 1
  rsync -av --delete $S $T || exit 1
done
exit 0

