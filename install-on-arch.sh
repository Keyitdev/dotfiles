#!/bin/env bash

echo "Welcome!"
DATE=$(date +%s)

system_update(){
    echo -e "[*1*] Doing a system update, cause stuff may break if it's not the latest version..."
    sudo pacman --noconfirm -Syu
    sudo pacman -S --noconfirm --needed base-devel wget git curl gcc make
}

aur_helper(){
    cat <<- EOF
		[*2*] We need an AUR helper. It is essential.
		
		[*] Choose your AUR helper.
		[1] yay
		[2] paru
	
	EOF

    read -p "[?] Select option: "
    if [[ $REPLY == "1" ]]; then
        HELPER="yay"
        if ! command -v $HELPER &> /dev/null
        then
        echo -e "\n[*] It seems that you don't have $HELPER installed, I'll install that for you before continuing."
	    git clone https://aur.archlinux.org/$HELPER.git $HOME/.srcs/$HELPER
	    (cd $HOME/.srcs/$HELPER/ && makepkg -si )
        else
        echo -e "\n[*] It seems that you already have $HELPER installed, skipping."
        fi
    elif [[ $REPLY == "2" ]]; then
        HELPER="paru"
        if ! command -v $HELPER &> /dev/null
        then
        echo -e "\n[*] It seems that you don't have $HELPER installed, I'll install that for you before continuing."
	    git clone https://aur.archlinux.org/$HELPER.git $HOME/.srcs/$HELPER
	    (cd $HOME/.srcs/$HELPER/ && makepkg -si )
        else
        echo -e "\n[*] It seems that you already have $HELPER installed, skipping."
        fi
    else
		echo -e "\n[!] Invalid option, exiting...\n"
		exit 1
	fi
}

install_packages(){
    echo -e "[*3*] Installng packages with Pacman."
    sudo pacman -S --noconfirm --needed light pulseaudio pulseaudio-alsa pulsemixer alsa-utils pacman-contrib i3-gaps i3blocks xorg xorg-xinit xorg-server feh imagemagick kitty rofi dunst libnotify ranger ncmpcpp mpd papirus-icon-theme btop sddm zsh picom code neovim xclip scrot mpc
    echo -e "\nInstalling other dependencies"
    git clone --depth 10 https://github.com/kabinspace/AstroVim.git ~/.config/nvim
    nvim +PackerSync
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/EliverLara/ant.git ~/ant
    sudo mv ~/ant /usr/share/themes
    git clone https://github.com/keyitdev/sddm-astronaut-theme.git ~/sddm-astronaut-theme
    sudo cp -fdr ~/sddm-astronaut-theme /usr/share/sddm/themes/
    sudo cp /usr/share/sddm/themes/sddm-astronaut-theme/Fonts/* /usr/share/fonts/
    sudo echo "[Theme]
Current=sddm-astronaut-theme" >> /etc/sddm.conf
    echo -e "\n[*] Installing packages with $HELPER."
    $HELPER -S acpi      \
	   polybar           \
       ffcast            \
       betterlockscreen  \
       i3lock-color      \
       cava              \
       slop
    echo -e "\n[*] Chmoding light."
    sudo chmod +s /usr/bin/light
    echo -e "\n[*] Setting Zsh as default shell."
    chsh -s /bin/zsh
    
    cat <<- EOF
		[*3*] Still installing packages.
		
		[*] Do you want to install optional, but useful programs? (VSCode, iwd, Oh-My-Zsh, LibreOffice, Firefox, etc)

		[1] yes
		[2] no
	
	EOF

	read -p "[?] Select option: "

	if [[ $REPLY == "1" ]]; then
		sudo pacman -S --noconfirm --needed code iwd dhcpcd ntfs-3g libreoffice firefox nautilus gimp 
	elif [[ $REPLY == "2" ]]; then
		 echo -e "\n[*] Skipping."
	else
		echo -e "\n[!] Invalid option, exiting...\n"
		exit 1
	fi

    cat <<- EOF
		[*3*] Still installing packages.
		
		[*] Do you want to install emoji fonts?

		[1] yes
		[2] nope
	
	EOF

	read -p "[?] Select option: "

	if [[ $REPLY == "1" ]]; then
		sudo pacman -S --noconfirm --needed noto-fonts noto-fonts-emoji noto-fonts-extra noto-fonts-cjk
        DATE=$(date +%s)
        if [ -f /etc/fonts/local.conf ]; then
        echo "[*] Fonts configs detected, backing up..."
        sudo mv /etc/fonts/local.conf /etc/fonts/local.conf$DATE
        fi
        sudo cp -f ./config/local.conf /etc/fonts;

	elif [[ $REPLY == "2" ]]; then
		 echo -e "\n[*] Skipping."
	else
		echo -e "\n[!] Invalid option, exiting...\n"
		exit 1
	fi

}

copy_flies(){
    DATE=$(date +%s)
    echo -e "[*4*] Coping files."
    if [ -d $HOME/.config/btop ]; then
        echo "[*] btop configs detected, backing up..."
        mv $HOME/.config/btop $HOME/.config/btop$DATE
    fi
    mkdir -p $HOME/.config/btop && cp -r ./config/btop/* $HOME/.config/btop;
    if [ -d $HOME/.config/cava ]; then
        echo "[*] cava configs detected, backing up..."
        mv $HOME/.config/cava $HOME/.config/cava$DATE
    fi
    mkdir -p $HOME/.config/cava && cp -r ./config/cava/* $HOME/.config/cava;
    if [ -d $HOME/.config/dunst ]; then
        echo "[*] dunst configs detected, backing up..."
        mv $HOME/.config/dunst $HOME/.config/dunst$DATE
    fi
    mkdir -p $HOME/.config/dunst && cp -r ./config/dunst/* $HOME/.config/dunst;
    if [ -d $HOME/.config/gtk-3.0 ]; then
        echo "[*] gtk-3.0 configs detected, backing up..."
        mv $HOME/.config/gtk-3.0 $HOME/.config/gtk-3.0$DATE
    fi
    mkdir -p $HOME/.config/gtk-3.0 && cp -r ./config/gtk-3.0/* $HOME/.config/gtk-3.0;
    if [ -d $HOME/.config/i3 ]; then
        echo "[*] i3 configs detected, backing up..."
        mv $HOME/.config/i3 $HOME/.config/i3$DATE
    fi
    mkdir -p $HOME/.config/i3 && cp -r ./config/i3/* $HOME/.config/i3;
    if [ -d $HOME/.config/kitty ]; then
        echo "[*] kitty configs detected, backing up..."
        mv $HOME/.config/kitty $HOME/.config/kitty$DATE
    fi
    mkdir -p $HOME/.config/kitty && cp -r ./config/kitty/* $HOME/.config/kitty;
    if [ -d $HOME/.config/mpd ]; then
        echo "[*] mpd configs detected, backing up..."
        mv $HOME/.config/mpd $HOME/.config/mpd$DATE
    fi
    mkdir -p $HOME/.config/mpd && cp -r ./config/mpd/* $HOME/.config/mpd;
    if [ -d $HOME/.config/ncmpcpp ]; then
        echo "[*] ncmpcpp configs detected, backing up..."
        mv $HOME/.config/ncmpcpp $HOME/.config/ncmpcpp$DATE
    fi
    mkdir -p $HOME/.config/ncmpcpp && cp -r ./config/ncmpcpp/* $HOME/.config/ncmpcpp;
    if [ -d $HOME/.config/neofetch ]; then
        echo "[*] neofetch configs detected, backing up..."
        mv $HOME/.config/neofetch $HOME/.config/neofetch$DATE
    fi
    mkdir -p $HOME/.config/neofetch && cp -r ./config/neofetch/* $HOME/.config/neofetch;
    if [ -d $HOME/.config/picom ]; then
        echo "[*] picom configs detected, backing up..."
        mv $HOME/.config/picom $HOME/.config/picom$DATE
    fi
    mkdir -p $HOME/.config/picom && cp -r ./config/picom/* $HOME/.config/picom;
    if [ -d $HOME/.config/polybar ]; then
        echo "[*] polybar configs detected, backing up..."
        mv $HOME/.config/polybar $HOME/.config/polybar$DATE
    fi
    mkdir -p $HOME/.config/polybar && cp -r ./config/polybar/* $HOME/.config/polybar;
    if [ -d $HOME/.config/ranger ]; then
        echo "[*] ranger configs detected, backing up..."
        mv $HOME/.config/ranger $HOME/.config/ranger$DATE
    fi
    mkdir -p $HOME/.config/ranger && cp -r ./config/ranger/* $HOME/.config/ranger;
    if [ -d $HOME/.config/rofi ]; then
        echo "[*] rofi configs detected, backing up..."
        mv $HOME/.config/rofi $HOME/.config/rofi$DATE
    fi
    mkdir -p $HOME/.config/rofi && cp -r ./config/rofi/* $HOME/.config/rofi;
    # files
    if [ -f $HOME/.config/Code\ -\ OSS/User/settings.json ]; then
        echo "[*] Code - OSS configs detected, backing up..."
        mv $HOME/.config/Code\ -\ OSS/User/settings.json $HOME/.config/Code\ -\ OSS/User/settings.json$DATE
    fi
    cp -f ./config/vsc/* $HOME/.config/Code\ -\ OSS/User;
    if [ -f $HOME/.zshrc ]; then
        echo "[*] ZSH configs detected, backing up..."
        mv $HOME/.zshrc $HOME/.zshrc$DATE
    fi
    cp -f ./config/.zshrc $HOME/.zshrc;
    if [ -f $HOME/.oh-my-zsh/custom/themes/keyitdev.zsh-theme ]; then
        echo "[*] Oh my zsh keyitdev theme detected, backing up..."
        mv $HOME/.oh-my-zsh/custom/themes/keyitdev.zsh-theme $HOME/.oh-my-zsh/custom/themes/keyitdev.zsh-theme$DATE
    fi
    cp -f ./config/keyitdev.zsh-theme $HOME/.oh-my-zsh/custom/themes/;
    echo -e "\n[*4*] Files copied."
}

copy_scripts(){
    echo -e "[*5*] Coping scripts."
    DATE=$(date +%s)
    if [ -d /usr/local/bin ]; then
        echo "[*] /usr/local/bin configs detected, backing up..."
        sudo mv /usr/local/bin/* /usr/local/bin$DATE
    fi
    sudo mkdir -p /usr/local/bin
    sudo cp -frd ./scripts/* /usr/local/bin
     echo -e "\n[*5*] Scripts copied."
}

make_default_directories(){
    echo -e "[*6*] Making default directories."
    mkdir -p $HOME/Pictures/wallpapers
    mkdir -p $HOME/Pictures/screenshots
    mkdir -p $HOME/Videos
    mkdir -p $HOME/Music
    mkdir -p $HOME/Projects
}

system_update
aur_helper
install_packages
copy_flies
copy_scripts
make_default_directories

echo -e "[*7*] Everything is ready, enjoy :D."
