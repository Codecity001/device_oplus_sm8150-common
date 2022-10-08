#
# Copyright (C) 2022 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=erofs \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=erofs \
    POSTINSTALL_OPTIONAL_vendor=true

# Boot
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl-qti \
    android.hardware.boot@1.1-impl-qti.recovery \
    android.hardware.boot@1.1-service

# Charging
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    ro.charger.enable_suspend=1

# Fastboot
PRODUCT_PACKAGES += \
    fastbootd

# Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Platform
TARGET_BOARD_PLATFORM := msmnile

# QTI
TARGET_COMMON_QTI_COMPONENTS := all
