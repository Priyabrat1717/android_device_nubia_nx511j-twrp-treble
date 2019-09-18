# Release name
PRODUCT_RELEASE_NAME := LS-5002

# Inherit from the common Open Source product configuration

$(call inherit-product, device/LYF/mirage01a/full_mirage01a.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mirage01a
PRODUCT_NAME := full_mirage01a
PRODUCT_BRAND := LYF
PRODUCT_MODEL := LYF Water 1 (TWRP)
PRODUCT_MANUFACTURER := LYF


ALLOW_MISSING_DEPENDENCIES := true
