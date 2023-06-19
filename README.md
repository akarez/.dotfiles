## Overview

Arch Linux dotfiles for a Lenovo Legion 5 Pro. Most of the settings are optimized for a laptop form factor, including HiDPI and power management.

![](https://github.com/akarez/macintosh/blob/main/screenshot.png)

## Installation

The installation steps below assume you have [these](https://github.com/akarez/travel/blob/main/README.md#finishing-up) packages already installed.

### Essential Packages

Install the YAY AUR helper. This will allow you to install packages from the Arch Linux community repo:

```
~$ git clone https://aur.archlinux.org/yay.git 

~$ cd yay

~$ makepkg -si
```

Install display, audio, and wireless packages:

```
~$ sudo pacman -S   xf86-video-intel xf86-video-amdgpu nvidia nvidia-utils xorg xorg-xinit xorg-xev xorg-xbacklight arandr alsa-utils pulseaudio bluez bluez-utils

~$ yay -S pulseaudio-ctl pavucontrol 
```

Install window management and system utilities:

```
~$ sudo pacman -S bspwm sxhkd alacritty ranger feh rofi picom firefox zip unzip brightnessctl wget upower cron neovim zathura zathura-pdf-mupdf ttf-iosevka-nerd nodejs nmap xsel npm rust rust-src

~$ yay -S polybar ueberzug coreshot xidlehook neofetch apple-fonts ttf-ms-win10-auto redshift 

~$ sudo pacman -S qemu libvirt iptables-nft dnsmasq virt-manager virt-viewer vde2 bridge-utils openbsd-netcat
```

### Programming and Ohter Tools

The following are packages that I use but are not necessary for a working system. I put them here anyway so I can copy paste the command when needed:

```
~$ sudo pacman -S arduino-cli 

```
### Ardiono-CLI Setup
```
~$ arduino-cli core install arduino:mbed_nano  // Arudino IoT RP2040
```

## Configuration

The configuration files are managed with [GNU Stow](https://www.gnu.org/software/stow/). To setup, navigate into the cloned directory and enter the following command:

```
~$ stow alacritty bash bspwm dunst neofetch nvim polybar ranger rofi sxhkd wallpapers x zathura
```
