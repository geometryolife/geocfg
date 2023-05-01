# Add the domain name resolution of raw.githubusercontent.com to /etc/hosts.
# Find the server through this website: https://www.ip138.com/
# wget https://raw.githubusercontent.com/geometryolife/geocfg/main/misc/arch_install.sh

# Backup mirrorlist
# cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak

# Connect to the internet
# iwctl

# Retrieve and filter a list of the latest Arch Linux mirrors
# reflector --country China --age 24 --sort rate --protocol https --save /etc/pacman.d/mirrorlist

# Enable network time synchronization
timedatectl set-ntp true

# Show current time settings
# timedatectl status

# Partition the disk
fdisk /dev/nvme0n1

# Format the partitions
mkfs.fat -F 32 /dev/nvme0n1p1
mkswap /dev/nvme0n1p2
mkfs.ext4 /dev/nvme0n1p3

# Enable the swap
swapon /dev/nvme0n1p2

# Mount the filesystem
mount /dev/nvme0n1p3 /mnt

mkdir /mnt/boot
mount /dev/nvme0n1p1 /mnt/boot

# Install essential packages
pacman -Sy
pacstrap -K /mnt base base-devel linux linux-firmware vim neovim grub efibootmgr networkmanager iwd dhcpcd sof-firmware alsa-utils pulseaudio pulseaudio-bluetooth cups man bash-completion git wget lazygit git-delta ranger neofetch htop zip unzip cmake ripgrep
pacstrap -K /mnt xorg xorg-xinit feh udisks2 udiskie pcmanfm wqy-microhei wqy-zenhei firefox archlinux-wallpaper fcitx5-im fcitx5-chinese-addons fcitx5-nord fcitx5-pinyin-zhwiki python-pip xclip pandoc-cli
pacstrap -K /mnt libev uthash libconfig screenkey lxappearance variety acpid
# pacstrap -K /mnt linux-headers efivar

# For Intel
pacstrap -K /mnt intel-ucode vulkan-intel mesa
# xf86-video-intel NOT suitable for new machines
# See https://wiki.archlinux.org/title/Intel_graphics

# Configure the system
# Generate an fstab file
genfstab -U /mnt >> /mnt/etc/fstab

# Chroot
# arch-chroot /mnt bash -c "timedatectl set-timezone Asia/Shanghai && timedatectl set-ntp true && exit"
arch-chroot /mnt bash -c "ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && hwclock --systohc && sed -i 's/#en_US.UTF-8/en_US.UTF-8/' /etc/locale.gen && locale-gen && echo 'LANG=en_US.UTF-8' > /etc/locale.conf && exit"

# arch-chroot /mnt bash -c "echo 'mx' > /etc/hostname && echo '127.0.0.1 localhost' >> /etc/hosts && echo '::1 localhost' >> /etc/hosts && echo '127.0.1.1 mx.localdomain mx' >> /etc/hosts && exit"
arch-chroot /mnt bash -c "echo 'mx' > /etc/hostname && echo -e '127.0.0.1\tlocalhost\n::1\t\tlocalhost\n127.0.1.1\tmx.localdomain\tmx' >> /etc/hosts && exit"

arch-chroot /mnt bash -c "echo 'set root password' && passwd && useradd -m -G wheel joe && echo 'set joe password' && passwd joe && EDITOR=vim visudo && exit"

arch-chroot /mnt bash -c "grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=ARCH && vim /etc/default/grub && grub-mkconfig -o /boot/grub/grub.cfg && exit"

arch-chroot /mnt bash -c "echo '# Laptop' >> /etc/udev/hwdb.d/99-personal-kbd.hwdb && echo 'evdev:atkbd:dmi:*' >> /etc/udev/hwdb.d/99-personal-kbd.hwdb && echo ' KEYBOARD_KEY_3a=leftctrl' >> /etc/udev/hwdb.d/99-personal-kbd.hwdb && echo ' KEYBOARD_KEY_1d=capslock' >> /etc/udev/hwdb.d/99-personal-kbd.hwdb && systemd-hwdb update && udevadm trigger && exit"

arch-chroot /mnt bash -c "systemctl enable NetworkManager && systemctl enable iwd && systemctl enable dhcpcd && systemctl enable udisks2 && exit"

# arch-chroot /mnt bash -c "echo 'export EDITOR=vim' >> /etc/skel/.bashrc && echo alias ls='ls --color=auto' >> /etc/skel/.bashrc && echo alias grep='grep --color=auto' >> /etc/skel/.bashrc && echo alias egrep='egrep --color=auto' >> /etc/skel/.bashrc && echo alias fgrep='fgrep --color=auto' >> /etc/skel/.bashrc && exit"
# arch-chroot /mnt bash -c "echo '[ ! -e ~/.dircolors ] && eval $(dircolors -p > ~/.dircolors)' >> /etc/skel/.bashrc && echo '[ -e /bin/dircolors ] && eval $(dircolors -b ~/.dircolors)' >> /etc/skel/.bashrc && cp -a /etc/skel/* ~ && exit"
# arch-chroot /mnt bash -c "echo -e \"export EDITOR=vim\n\nalias ls='ls --color=auto'\nalias grep='grep --color=auto'\nalias egrep='egrep --color=auto'\nalias fgrep='fgrep --color=auto'\" >> /etc/skel/.bashrc && exit"

arch-chroot /mnt bash -c "sed -i 's/#export/export/' /etc/profile.d/freetype2.sh && exit"

# umount -R /mnt

echo "Done!"

# Fix the screen flickering. This is due to Panel Self Refresh (a power saving feature of Intel iGPUs).
# vim /etc/default/grub
# Modify => GRUB_CMDLINE_LINUX="i915.enable_psr=0"
# grub-mkconfig -o /boot/grub/grub.cfg

# Clash
# wget https://github.com/Dreamacro/clash/releases/download/v1.13.0/clash-linux-amd64-v1.13.0.gz
# mkdir ~/.config/clash && cd clash && wget -O config.yaml "https://api.sub-100.one/link/gTWyw9hfALzBxzlD?clash=3"

# Normal user
# cp /etc/X11/xinit/xinitrc ~/.xinitrc
# Modify => exec dwm
# vim ~/.Xresources
# Modify => Xft.dpi: 200

# suckless.org
# git clone https://git.suckless.org/dwm
# git clone https://git.suckless.org/st
# git clone https://git.suckless.org/dmenu

# AUR Helpers - paru
# git clone https://aur.archlinux.org/paru.git
# sudo vim /etc/makepkg.conf
# Modify => MAKEFLAGS="-j$(nproc)"
# makepkg -si
# sudo vim /etc/paru.conf
# Modify => BottomUp


#################################
### Package name descriptions ###
#################################

# lxappearance: Linux X appearance.
# screenkey: Screencast your keys.
# variety: Setting wallpapers, it's an automatic wallpaper changer.

# Power management
# acpid: A daemon for delivering ACPI power management events with netlink support.
# openbsd-netcat: TCP/IP swiss army knife. OpenBSD variant. --!##
