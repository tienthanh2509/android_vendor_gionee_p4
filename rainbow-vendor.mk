# Sao chép các file cần thiết từ rom gốc qua cho CM

# BIN
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/wiko/rainbow/bin,system/bin)

# ETC
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/wiko/rainbow/etc,system/etc)

# LIB
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/wiko/rainbow/lib,system/lib)

# VENDOR
#PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/wiko/rainbow/vendor,system/vendor)

# XBIN
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/wiko/rainbow/xbin,system/xbin)

# Gapps
#PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/wiko/rainbow/gapps/system,system)
