# Backup mirrorlist
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak

# Connect to the internet

# Enable network time synchronization
timedatectl set-ntp true

# Show current time settings
# timedatectl status

# Partition the disk
fdisk /dev/nvme0n1

# Format the partitions
mkfs.fat -F 32 /dev/nvme0n1p1
mkfs.ext4 /dev/nvme0n1p2
mkswap /dev/nvme0n1p3

# Enable the swap
swapon /dev/nvme0n1p3

# Mount the filesystem
mount /dev/nvme0n1p2 /min

mkdir /mnt/boot
mount /dev/nvme0n1p1 /mnt/boot

# Install essential packages
pacman -Sy
pacstrap -K /mnt base base-devel linux linux-firmware vim grub efibootmgr networkmanager iwd dhcpcd intel-ucode sof-firmware man

# Configure the system
# Generate an fstab file
genfstab -U /mnt >> /mnt/etc/fstab

# Chroot
arch-chroot /mnt bash -c "ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && hwclock --systohc && sed -i 's/#en_US.UTF-8/en_US.UTF-8/' /etc/locale.gen && locale-gen && echo 'LANG=en_US.UTF-8' > /etc/locale.conf && exit"

arch-chroot /mnt bash -c "echo 'mx' > /etc/hostname && echo '127.0.0.1 localhost' >> /etc/hosts && echo '::1 localhost' >> /etc/hosts && echo '127.0.1.1 mx.localdomain mx' >> /etc/hosts && exit"

arch-chroot /mnt bash -c "echo 'set root password' && passwd && useradd -m -G wheel joe && echo 'set joe password' && passwd joe && EDITOR=vim visudo && exit"

arch-chroot /mnt bash -c "grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=ARCH && grub-mkconfig -o /boot/grub/grub.cfg && exit"

arch-chroot /mnt bash -c "systemctl enable NetworkManager && exit"

umount -R /mnt

echo "Done!"
