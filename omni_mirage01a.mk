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
PRODUCT_MODEL := LS-5002 (TWRP)
PRODUCT_MANUFACTURER := LYF

# Enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=mirage01a_msm8916_64 \
    ro.product.device=mirage01a_msm8939_64 \
    ro.product.model=LS-5002

ALLOW_MISSING_DEPENDENCIES := true
