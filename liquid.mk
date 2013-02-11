# Inherit device configuration for VZW Droid 4.
$(call inherit-product, device/motorola/maserati/full_maserati.mk)

# Inherit some common liquid stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# Inherit some common CDMA stuff.
$(call inherit-product, vendor/liquid/config/common_cdma.mk)

# CM-specific init file for SafeStrap
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/init.liquid.rc:system/etc/rootfs/init.liquid.rc

#
# Setup device specific product configuration.
#
PRODUCT_NAME := liquid_maserati
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := maserati
PRODUCT_DEVICE_PREFIX := cdma
PRODUCT_MODEL := XT894
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := Droid4
PRODUCT_SFX := vzw

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=${PRODUCT_DEVICE}_${PRODUCT_SFX} \
   BUILD_NUMBER=${DATE} \
   TARGET_DEVICE=${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE} \
   BUILD_FINGERPRINT=${PRODUCT_BRAND}/${PRODUCT_DEVICE}_${PRODUCT_SFX}/${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}:${PLATFORM_VERSION}/${BUILD_ID}/${DATE}:user/release-keys \
   PRIVATE_BUILD_DESC="${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}-user ${PLATFORM_VERSION} ${BUILD_ID} ${DATE} release-keys" \
   PRODUCT_BRAND=${PRODUCT_BRAND} \
   BUILD_UTC_DATE= \
   PRODUCT_DEFAULT_LANGUAGE=en \
   PRODUCT_DEFAULT_REGION=US \