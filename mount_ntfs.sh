
function mount_ntfs () {
# Declear Values
idx=$1
disk_name=disk"$idx"s1
volume_name=NTFS_"$idx"

echo $idx $disk_name $volume_name
# unmount if necessary
sudo diskutil unmount /dev/$disk_name
# mount with ntfs-3g
sudo mkdir -p /Volumes/$volume_name
sudo ntfs-3g /dev/$disk_name /Volumes/$volume_name -o local -o allow_other -o auto_xattr -o auto_cache
# alternatively...
# sudo mount_ntfs /dev/$disk_name /Volumes/$volume_name
}

for idx in `diskutil list|grep -A 3 external|grep Windows_NTFS|awk -F ' ' '{print $6}'|cut -b 5,5`; do
    #Do Mount
    mount_ntfs "$idx"
done
