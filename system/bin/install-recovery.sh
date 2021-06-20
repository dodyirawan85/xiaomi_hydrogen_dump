#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:16373070:2c3aac80ae2d6a48596d21d4425e9c7f152f0d8e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:13370698:a39bb87b3d8e4d7885b3d8ef1b81a3a03e2e74bc EMMC:/dev/block/bootdevice/by-name/recovery 2c3aac80ae2d6a48596d21d4425e9c7f152f0d8e 16373070 a39bb87b3d8e4d7885b3d8ef1b81a3a03e2e74bc:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
