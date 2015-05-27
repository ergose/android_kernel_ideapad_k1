# Had to export these for it to compile
export ARCH="arm"
export CROSS_COMPILE="arm-linux-gnueabihf-"

# Found under arm; creates config
make cm10_k1_defconfig
# Compile
make

# Moving these to parent directory to use with AOSP
### cp drivers/scsi/scsi_wait_scan.ko ~/android/system2/device/lenovo/k1/prebuilt/modules/scsi_wait_scan.ko
cp drivers/scsi/scsi_wait_scan.ko ../k1_out/kernel/modules
### cp drivers/net/wireless/bcm4329/bcm4329.ko ~/android/system2/device/lenovo/k1/prebuilt/modules/bcm4329.ko
cp drivers/net/wireless/bcm4329/bcm4329.ko ../k1_out/kernel/modules
### cp arch/arm/boot/zImage ~/android/system2/device/lenovo/k1/kernel
cp arch/arm/boot/zImage ../k1_out/kernel

# Clean everything up
make mrproper
