#!/bin/env bash
set -e

echo "Welcome!" && sleep 2

#Default vars
HELPER="paru"

# does full system update
echo "Doing a system update, cause stuff may break if it's not the latest version..."
sudo pacman --noconfirm -Syu

echo "###########################################################################"
echo "Will do stuff, get ready"
echo "###########################################################################"

# install base-devel if not installed
sudo pacman -S --noconfirm --needed base-devel wget git

# choose video driver
echo "1) xf86-video-intel 2) xf86-video-amdgpu 3) nvidia 4) xf86-video-amdgpu and nvidia 5) xf86-video-amdgpu and xf86-video-intel 6) skip"
read -r -p "Choose you video card driver(default 1)(will not re-install): " vid

case $vid in 
[1])
	DRI='xf86-video-intel'
	;;
[2])
	DRI='xf86-video-amdgpu'
	;;

[3])
    DRI='nvidia nvidia-settings nvidia-utils'
    ;;

[4])
	DRI="xf86-video-amdgpu nvidia nvidia-settings nvidia-utils"
	;;
[5])
	DRI="xf86-video-amdgpu xf86-video-intel"
	;;
[6])
	DRI=""
	;;
[*])
	DRI='xf86-video-intel'
	;;
esac

# install basics packages
sudo pacman -S --noconfirm --needed i3-gaps i3blocks i3lock kitty zsh rofi dunst feh mpd ncmpcpp light xclip scrot picom imagemagick curl neovim ranger papirus-icon-theme pulseaudio pulseaudio-alsa pulsemixer alsa-utils xorg xorg-xinit xorg-server libnotify sddm btop $DRI

# choose video driver
echo "Install no required but usefull programs? (Code, iwd, libreoffice, firefox etc."
read -r -p "1) Yes 2) Nope" upro

if [ $upro -eq 1 ]
then
   sudo pacman -S --noconfirm --needed code iwd dhcpcd ntfs-3g libreoffice firefox nautilus gimp
fi

# make light executable
sudo chmod +s /usr/bin/light

# install fonts
mkdir -p ~/.local/share/fonts
cp -r ./fonts/* ~/.local/share/fonts/
fc-cache -f
clear 

# install scripts
sudo mkdir -p /usr/local/bin
sudo cp -r ./scripts/* /usr/local/bin

# create default folders
mkdir -p ~/.srcs
mkdir -p ~/Pictures/screenshots/rofi
mkdir -p ~/Videos/rofi
mkdir -p ~/Music/rofi

# copy wallpapers
mkdir -p ~/Pictures/wallpapers
cp -r ./wallpapers/* ~/Pictures/wallpapers

echo "We need an AUR helper. It is essential. 1) paru       2) yay"
read -r -p "What is the AUR helper of your choice? (Default is paru): " num

if [ $num -eq 2 ]
then
    HELPER="yay"
fi

if ! command -v $HELPER &> /dev/null
then
    echo "It seems that you don't have $HELPER installed, I'll install that for you before continuing."
	git clone https://aur.archlinux.org/$HELPER.git ~/.srcs/$HELPER
	(cd ~/.srcs/$HELPER/ && makepkg -si )
fi

$HELPER -S acpi          \
	   polybar           \
       ffcast            \
       slop

mkdir -p ~/.config/
    if [ -d ~/.config/dunst ]; then
        echo "Dunst configs detected, backing up..."
        mkdir -p ~/.config/dunst.old && mv ~/.config/dunst/* ~/.config/dunst.old/
        cp -r ./config/dunst/* ~/.config/dunst;
    else
        echo "Installing dunst configs..."
        mkdir ~/.config/dunst && cp -r ./config/dunst/* ~/.config/dunst;
    fi
    if [ -d ~/.config/gtk-3.0 ]; then
        echo "Gtk-3.0 configs detected, backing up..."
        mkdir -p ~/.config/gtk-3.0.old && mv ~/.config/gtk-3.0/* ~/.config/gtk-3.0.old/
        cp -r ./config/gtk-3.0/* ~/.config/gtk-3.0;
    else
        echo "Installing gtk-3.0 configs..."
        mkdir ~/.config/gtk-3.0 && cp -r ./config/gtk-3.0/* ~/.config/gtk-3.0;
    fi
    if [ -d ~/.config/i3 ]; then
        echo "I3 configs detected, backing up..."
        mkdir -p ~/.config/i3.old && mv ~/.config/i3/* ~/.config/i3.old/
        cp -r ./config/i3/* ~/.config/i3;
    else
        echo "Installing i3 configs..."
        mkdir ~/.config/i3 && cp -r ./config/i3/* ~/.config/i3;
    fi
    if [ -d ~/.config/mpd ]; then
        echo "MPD configs detected, backing up..."
        mkdir -p ~/.config/mpd.old && mv ~/.config/mpd/* ~/.config/mpd.old/
        cp -r ./config/mpd/* ~/.config/mpd;
    else
        echo "Installing mpd configs..."
        mkdir ~/.config/mpd && cp -r ./config/mpd/* ~/.config/mpd;
    fi
        if [ -d ~/.config/ncmpcpp ]; then
        echo "Ncmpcpp configs detected, backing up..."
        mkdir -p ~/.config/ncmpcpp.old && mv ~/.config/ncmpcpp/* ~/.config/ncmpcpp.old/
        cp -r ./config/ncmpcpp/* ~/.config/ncmpcpp;
    else
        echo "Installing ncmpcpp configs..."
        mkdir ~/.config/ncmpcpp && cp -r ./config/ncmpcpp/* ~/.config/ncmpcpp;
    fi
        if [ -d ~/.config/picom ]; then
        echo "Picom configs detected, backing up..."
        mkdir -p ~/.config/picom.old && mv ~/.config/picom/* ~/.config/picom.old/
        cp -r ./config/picom/* ~/.config/picom;
    else
        echo "Installing picom configs..."
        mkdir ~/.config/picom && cp -r ./config/picom/* ~/.config/picom;
    fi
        if [ -d ~/.config/polybar ]; then
        echo "Polybar configs detected, backing up..."
        mkdir -p ~/.config/polybar.old && mv ~/.config/polybar/* ~/.config/polybar.old/
        cp -r ./config/polybar/* ~/.config/polybar;
    else
        echo "Installing polybar configs..."
        mkdir ~/.config/polybar && cp -r ./config/polybar/* ~/.config/polybar;
    fi
        if [ -d ~/.config/ranger ]; then
        echo "Ranger configs detected, backing up..."
        mkdir -p ~/.config/ranger.old && mv ~/.config/ranger/* ~/.config/ranger.old/
        cp -r ./config/ranger/* ~/.config/ranger;
    else
        echo "Installing ranger configs..."
        mkdir ~/.config/ranger && cp -r ./config/ranger/* ~/.config/ranger;
    fi
    if [ -d ~/.config/btop ]; then
        echo "Btop configs detected, backing up..."
        mkdir -p ~/.config/btop.old && mv ~/.config/btop/* ~/.config/btop.old/
        cp -r ./config/btop/* ~/.config/btop;
    else
        echo "Installing btop configs..."
        mkdir ~/.config/btop && cp -r ./config/btop/* ~/.config/btop;
    fi
    if [ -d ~/.config/neofetch ]; then
        echo "Neofetch configs detected, backing up..."
        mkdir -p ~/.config/neofetch.old && mv ~/.config/neofetch/* ~/.config/neofetch.old/
        cp -r ./config/neofetch/* ~/.config/neofetch;
    else
        echo "Installing neofetch configs..."
        mkdir ~/.config/neofetch && cp -r ./config/neofetch/* ~/.config/neofetch;
    fi
    if [ -d ~/.config/kitty ]; then
        echo "Kitty configs detected, backing up..."
        mkdir -p ~/.config/kitty.old && mv ~/.config/kitty/* ~/.config/kitty.old/
        cp -r ./config/kitty/* ~/.config/kitty;
    else
        echo "Installing kitty configs..."
        mkdir ~/.config/kitty && cp -r ./config/kitty/* ~/.config/kitty;
    fi
    if [ -d ~/.config/rofi ]; then
        echo "Rofi configs detected, backing up..."
        mkdir -p ~/.config/rofi.old && mv ~/.config/rofi/* ~/.config/rofi.old/
        cp -r ./config/rofi/* ~/.config/rofi;
    else
        echo "Installing rofi configs..."
        mkdir ~/.config/rofi && cp -r ./config/rofi/* ~/.config/rofi;
    fi
    if [ -d ~/.config/Code\ -\ OSS/User ]; then
        echo "Visual Studio Code (OSS) configs detected, backing up..."
        mkdir -p ~/.config/Code\ -\ OSS/User.old && mv ~/.config/Code\ -\ OSS/User/* ~/.config/Code\ -\ OSS/User.old/
        cp -r ./vsc/* ~/.config/Code\ -\ OSS/User;
    else
        echo "Installing Visual Studio Code (OSS) configs..."
        mkdir ~/.config/Code\ -\ OSS/User && cp -r ./vsc/* ~/.config/Code\ -\ OSS/User;
    fi
    if [ -d ~/.config/Code/User ]; then
        echo "Visual Studio Code configs detected, backing up..."
        mkdir -p ~/.config/Code/User.old && mv ~/.config/Code/User/* ~/.config/Code/User.old/
        cp -r ./vsc/* ~/.config/Code/User;
    else
        echo "Installing Visual Studio Code configs..."
        mkdir ~/.config/Code/User && cp -r ./vsc/* ~/.config/Code/User;
    fi
    if [ -f ~/.zshrc ]; then
        echo "Visual Studio Code configs detected, backing up..."
        cp ~/.zshrc ~/zshrc.old
        cp ./.zshrc ~/;
    else
        echo "Installing Visual Studio Code configs..."
        cp ./.zshrc ~/;
    fi
#MANUAL INSTALATION
