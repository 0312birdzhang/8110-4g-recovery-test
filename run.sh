#!/tmp/busybox sh

# Test script in recovery

# mount /system and /sdcard
/tmp/busybox mount -t ext4 -o rw /dev/block/bootdevice/by-name/system /system
/tmp/busybox mount -t vfat -o rw /dev/block/mmcblk1p1 /sdcard

echo "Start walk /system"
ls -lR /system > /sdcard/system_tree.txt

# unmount /system /sdcard
/tmp/busybox umount /system
/tmp/busybox umount /sdcard
echo "Walk Done"

