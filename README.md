## TWRP Treble device tree for LS-5002


1) Create {source-dir} and initialize Omni sources (we need make_ext4fs from Oreo tree): 

```
repo init -u git://github.com/omnirom/android.git -b android-8.1
repo sync
```

2) Replace '{source-dir}/bootable/recovery/' on this tree: https://github.com/omnirom/android_bootable_recovery/tree/android-9.0

3) Place this device tree files to {source-dir}/device/LYF/mirage01a


To build:

```
cd {source-dir}
. build/envsetup.sh
lunch omni_mirage01a-userdebug
mka recoveryimage
```
