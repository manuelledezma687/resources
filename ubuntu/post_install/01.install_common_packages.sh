#!/bin/bash

# fail if any commands fails
set -e
# debug log
#set -x

# Set superuser privileges command if not set
if [[ -z $su ]]; then
  export su="sudo"
fi

$su apt update
$su apt full-upgrade -y

cd || return
# system
$su apt-get -y --fix-missing install build-essential tmux vim nano udisks2 suckless-tools brightnessctl brightness-udev dos2unix exfatprogs xclip autocutsel xosd-bin picom renameutils bsdmainutils firejail manpages
$su apt-get -y --fix-missing install ttf-bitstream-vera fonts-dejavu fonts-inconsolata fonts-liberation
$su apt-get -y --fix-missing install usbutils udftools bash-completion htop findutils acpi lm-sensors ntp alsa-tools alsa-utils xdotool tree

# devel
$su apt-get -y --fix-missing install cmake openjdk-17-jdk openjdk-11-jdk openjdk-11-jdk-headless openjdk-11-jre maven gradle npm python python-pip meson ninja-build python3 python3-pip
$su apt-get -y --fix-missing install jq git subversion groovy podman mariadb-server mariadb-client geany geany-plugins

# multimedia
$su apt-get -y --fix-missing install flac opus-tools vorbis-tools wavpack mpv ffmpeg sox shntool lsdvd

# extra tools
$su apt-get -y --fix-missing install moc lynx newsboat rtorrent amule youtube-dl
$su apt-get -y --fix-missing install pcmanfm detox scrot mc hdparm lshw
$su apt-get -y --fix-missing install mcomix qpdf zathura zathura-pdf-poppler zathura-djvu zathura-ps zathura-cb mupdf mupdf-tools

# forensic tools
$su apt-get -y --fix-missing install foremost testdisk sleuthkit scalpel guymager

# images
$su apt-get -y --fix-missing install feh geeqie gimp imagemagick

# net
$su apt-get -y --fix-missing install curl axel tigervnc-viewer openconnect network-manager network-manager-openconnect network-manager-openconnect-gnome x11vnc

# tools
$su apt-get -y --fix-missing install ntfs-3g rsync clamav gparted rdesktop libreoffice keepassxc zbar-tools cabextract arj unrar-free p7zip-full unace unzip zip tar xarchiver galculator libxml2-utils aapt

# emulators
$su apt-get -y --fix-missing install qemu qemu-kvm qemu-system-x86 qemu-utils
