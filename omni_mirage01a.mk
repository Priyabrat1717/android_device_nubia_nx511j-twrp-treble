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
PRODUCT_NAME := omni_mirage01a
PRODUCT_BRAND := LYF
PRODUCT_MODEL := LYF Water 1 (TWRP)
PRODUCT_MANUFACTURER := LYF

# Enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=LS-5015 \
    ro.product.device=LS-5002 \
    ro.product.model=LYF Water 1

ALLOW_MISSING_DEPENDENCIES := true
