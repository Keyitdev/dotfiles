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

# install xorg if not installed
sudo pacman -S --noconfirm --needed kitty zsh rofi dunst feh mpd ncmpcpp light xclip scrot picom imagemagick curl neovim $DRI

# Make light executable
sudo chmod +s /usr/bin/light

# install fonts
mkdir -p ~/.local/share/fonts
mkdir -p ~/.srcs

cp -r ./fonts/* ~/.local/share/fonts/
fc-cache -f
clear 

mkdir -p /usr/local/bin
sudo cp -r ./scripts/* /usr/local/bin

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
	   playerctl         \
	   scrot             \
	   xclip             

#install custom picom config file 
mkdir -p ~/.config/
# cd .config/
    if [ -d ~/.config/dunst ]; then
        echo "Dunst configs detected, backing up..."
        mkdir ~/.config/dunst.old && mv ~/.config/dunst/* ~/.config/dunst.old/
        cp -r ./config/dunst/ ~/.config/old;
    else
        echo "Installing dunst configs..."
        mkdir ~/.config/dunst && cp -r ./config/dunst/* ~/.config/dunst;
    fi
    if [ -d ~/.config/gtk-3.0 ]; then
        echo "Gtk-3.0 configs detected, backing up..."
        mkdir ~/.config/gtk-3.0.old && mv ~/.config/gtk-3.0/* ~/.config/gtk-3.0.old/
        cp -r ./config/gtk-3.0/ ~/.config/old;
    else
        echo "Installing gtk-3.0 configs..."
        mkdir ~/.config/gtk-3.0 && cp -r ./config/gtk-3.0/* ~/.config/gtk-3.0;
    fi
    if [ -d ~/.config/i3 ]; then
        echo "I3 configs detected, backing up..."
        mkdir ~/.config/i3.old && mv ~/.config/i3/* ~/.config/i3.old/
        cp -r ./config/i3/ ~/.config/old;
    else
        echo "Installing i3 configs..."
        mkdir ~/.config/i3 && cp -r ./config/i3/* ~/.config/i3;
    fi
    if [ -d ~/.config/kitty ]; then
        echo "Kitty configs detected, backing up..."
        mkdir ~/.config/kitty.old && mv ~/.config/kitty/* ~/.config/kitty.old/
        cp -r ./config/kitty/ ~/.config/old;
    else
        echo "Installing kitty configs..."
        mkdir ~/.config/kitty && cp -r ./config/kitty/* ~/.config/kitty;
    fi
    if [ -d ~/.config/mpd ]; then
        echo "MPD configs detected, backing up..."
        mkdir ~/.config/mpd.old && mv ~/.config/mpd/* ~/.config/mpd.old/
        cp -r ./config/mpd/ ~/.config/old;
    else
        echo "Installing mpd configs..."
        mkdir ~/.config/mpd && cp -r ./config/mpd/* ~/.config/mpd;
    fi
        if [ -d ~/.config/ncmpcpp ]; then
        echo "Ncmpcpp configs detected, backing up..."
        mkdir ~/.config/ncmpcpp.old && mv ~/.config/ncmpcpp/* ~/.config/ncmpcpp.old/
        cp -r ./config/ncmpcpp/ ~/.config/old;
    else
        echo "Installing ncmpcpp configs..."
        mkdir ~/.config/ncmpcpp && cp -r ./config/ncmpcpp/* ~/.config/ncmpcpp;
    fi
        if [ -d ~/.config/picom ]; then
        echo "Picom configs detected, backing up..."
        mkdir ~/.config/picom.old && mv ~/.config/picom/* ~/.config/picom.old/
        cp -r ./config/picom/ ~/.config/old;
    else
        echo "Installing picom configs..."
        mkdir ~/.config/picom && cp -r ./config/picom/* ~/.config/picom;
    fi
        if [ -d ~/.config/polybar ]; then
        echo "Polybar configs detected, backing up..."
        mkdir ~/.config/polybar.old && mv ~/.config/polybar/* ~/.config/polybar.old/
        cp -r ./config/polybar/ ~/.config/old;
    else
        echo "Installing polybar configs..."
        mkdir ~/.config/polybar && cp -r ./config/polybar/* ~/.config/polybar;
    fi
        if [ -d ~/.config/ranger ]; then
        echo "Ranger configs detected, backing up..."
        mkdir ~/.config/ranger.old && mv ~/.config/ranger/* ~/.config/ranger.old/
        cp -r ./config/ranger/ ~/.config/old;
    else
        echo "Installing ranger configs..."
        mkdir ~/.config/ranger && cp -r ./config/ranger/* ~/.config/ranger;
    fi
        if [ -d ~/.config/rofi ]; then
        echo "Rofi configs detected, backing up..."
        mkdir ~/.config/rofi.old && mv ~/.config/rofi/* ~/.config/rofi.old/
        cp -r ./config/rofi/ ~/.config/old;
    else
        echo "Installing rofi configs..."
        mkdir ~/.config/rofi && cp -r ./config/rofi/* ~/.config/rofi;
    fi
    # if [ -d ~/bin ]; then
    #     echo "~/bin detected, backing up..."
    #     mkdir ~/bin.old && mv ~/bin/* ~/bin.old/
    #     cp -r ./bin/* ~/bin;
	# clear
    # else
    #     echo "Installing bin scripts..."
    #     mkdir ~/bin && cp -r ./bin/* ~/bin/;
	# clear
    #     SHELLNAME=$(echo $SHELL | grep -o '[^/]*$')
    #     case $SHELLNAME in
    #         bash)
    #             if [[ ":$PATH:" == *":$HOME/bin:"* ]]; then
    #                 echo "Looks like $HOME/bin is not on your PATH, adding it now."
    #                 echo "export PATH=\$PATH:\$HOME/bin" >> $HOME/.bashrc
    #             else
    #                 echo "$HOME/bin is already in your PATH. Proceeding."
    #             fi
    #             ;;

    #         zsh)
    #             if [[ ":$PATH:" == *":$HOME/bin:"* ]]; then
    #                 echo "Looks like $HOME/bin is not on your PATH, adding it now."
    #                 echo "export PATH=\$PATH:\$HOME/bin" >> $HOME/.zshrc
    #             else
    #                 echo "$HOME/bin is already in your PATH. Proceeding."
    #             fi
    #             ;;

    #         fish)
    #             echo "I see you use fish. shahab96 likes your choice."
    #             fish -c fish_add_path -P $HOME/bin
    #             ;;

    #         *)
    #             echo "Please add: export PATH='\$PATH:$HOME/bin' to your .bashrc or whatever shell you use."
    #             echo "If you know how to add stuff to shells other than bash, zsh and fish please help out here!"
    #     esac
    # fi
    

# # done 
# echo "PLEASE MAKE .xinitrc TO LAUNCH, or just use your Display Manager (ie. lightdm or sddm, etc.)" | tee ~/Note.txt
# printf "\n" >> ~/Note.txt
# echo "For startpage, copy the startpage directory into wherever you want, and set it as new tab in firefox settings." | tee -a ~/Note.txt
# echo "For more info on startpage (Which is a fork of Prismatic Night), visit https://github.com/dbuxy218/Prismatic-Night#Firefoxtheme" | tee -a ~/Note.txt
# echo "ALL DONE! Reboot for all changes to take place!" | tee -a ~/Note.txt
# echo "Open issues on github or ask me on discord or whatever if you face issues." | tee -a ~/Note.txt
# echo "Install Museo Sans as well. Frome Adobe I believe." | tee -a ~/Note.txt
# echo "If the bar doesn't work, use tint2conf and set stuff up, if you're hopelessly lost, open an issue." | tee -a ~/Note.txt
# echo "These instructions have been saved to ~/Note.txt. Make sure to go through them."
# echo "For instructions regarding usage on VirtualMachines, please refer to the VM folder of the repo." | tee -a ~/Note.txt
# sleep 5
# xmonad --recompile
