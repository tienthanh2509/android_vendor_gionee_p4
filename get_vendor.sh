#!/bin/bash

SOURCE=$1
TARGET=.

if [ -z $SOURCE ]; then
  echo $0 /mnt
  exit 1
fi

FILES="/etc/firmware/ /bin/6620_wmt_lpbk /bin/6620_launcher /bin/6620_wmt_concurrency /bin/wmt_loader \
/etc/wifi/ /lib/egl/libGLESv1_CM_mali.so /lib/egl/libGLESv2_mali.so /lib/egl/libEGL_mali.so \
/lib/libm4u.so /lib/hw/hwcomposer.mt6592.so /lib/hw/gralloc.mt6592.so \
/lib/libdpframework.so /lib/libion.so /lib/libMali.so"

for FILE in $FILES; do
  S=$SOURCE/$FILE
  T=$TARGET/$FILE
  mkdir -p $(dirname $T) || exit 1
  rsync -av --delete $S $T || exit 1
done

