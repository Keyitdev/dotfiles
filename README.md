# Keyitdev Dotfiles
Arch dotfiles. i3 dotfiles.

![Stars](https://img.shields.io/github/stars/keyitdev/dotfiles?color=dd864a&labelColor=1b1b25&style=for-the-badge)
![Forks](https://img.shields.io/github/forks/keyitdev/dotfiles?color=bf616a&labelColor=1b1b25&style=for-the-badge)
[![Ko-fi](https://img.shields.io/badge/support_me_on_ko--fi-F16061?style=for-the-badge&logo=kofi&logoColor=f5f5f5)](https://ko-fi.com/keyitdev)


These dotfiles are built for a simple and efficient **Arch Linux** environment using **i3** (X11) as the window manager.

This repository mirrors the directory structure of the operating system, so to apply the configurations, simply copy the files into your system.
It also includes many optional packages and tools that I personally use - you don't need to install all of them. For more details, refer to the [detailed information](#detailed-information). Also if you're looking for older versions, check out the [other branches](https://github.com/Keyitdev/dotfiles/branches/all).

### [Installation](#installation) · [Contributions](#support-and-contributions) · [Detailed information](#detailed-information)

## Showcase

![](https://github.com/Keyitdev/screenshots/blob/master/dotfiles/v3/screenshots/2.png?raw=true)

## Installation
Install base system.
```sh
sudo pacman -S --needed archlinux-keyring base base-devel linux linux-firmware git pulseaudio xorg xorg-xinit 
```
Install yay.
```sh
git clone https://aur.archlinux.org/yay-bin.git "$HOME"/.srcs/yay && cd "$HOME"/.srcs/yay/ && makepkg -si
```
Install dependencies.
```sh
yay -S --needed btop code dunst fastfetch feh i3-wm i3lock-color kitty mate-polkit mpd ncmpcpp papirus-icon-theme picom polybar rofi xss-lock zsh zed ttf-roboto-mono ttf-opensans ttf-iosevka-nerd ffcast inotify-tools jq libnotify scrot slop upower xclip
```

Clone this repository and copy files.
```sh
git clone -b v4 --depth 1 https://www.github.com/keyitdev/dotfiles.git "$HOME"/dotfiles
cp -ri "$HOME"/dotfiles/home/. "$HOME"/
sudo cp -ri "$HOME"/dotfiles/usr/.  /usr/
```
Set zsh as default shell.
```sh
chsh -s /bin/zsh
```
> [!NOTE]
And that’s it! You’ve successfully installed the base system and riced programs. However, your system may still be missing some important programs such as a media player or even a web browser. Steps below are optional, but I highly recommend checking them out.

Set up networking.
```sh
yay -S dhcpcd iwd
sudo systemctl enable --now dhcpcd.service iwd.service
```

Install optional dependencies.
```sh
yay -S --needed bc dmenu downgrade fzf mpc nano vim net-tools ntp tree vi wget
```
```sh
yay -S --needed 7zip czkawka-gui firefox firefox-beta-bin firefox-developer-edition gimp inkscape gparted libreoffice-fresh mpv vlc nemo nemo-fileroller obs-studio obsidian rsync vnstat yt-dlp
```
```sh
yay -S --needed cpupower-gui ntfs-3g nvidia cuda nvtop vulkan-radeon
```
```sh
yay -S --needed cloc cronie docker gcc clang make npm python pypy python-numpy python-pandas python-scipy python-matplotlib python-requests tmux
```
```sh
yay -S --needed noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra
```

Enable optional services.
```sh
sudo systemctl enable ntpd.service
sudo systemctl enable vnstat.service
```

## Support and Contributions

You can support me simply by dropping a **star** on **[github](https://github.com/Keyitdev/dotfiles/)**.
If you enjoyed it and would like to show your appreciation, you can **tip me** using **[kofi]()**. 
[![Ko-fi](https://img.shields.io/badge/Support_me_on_ko--fi-F16061?style=flat-square&logo=kofi&logoColor=f5f5f5)](https://ko-fi.com/keyitdev)


Feel free to create an issue or pull request. 
- However, check the issues tab first to **avoid creating duplicates**.
- When opening an issue, please **provide detailed information** about the problem. I can't help if you just write something like "this thing is not working" - include as much relevant information as possible.
- Before starting to work on a pull request for a new feature, please **open an issue first** so we can discuss about it.
- **Avoid overusing AI**. We don't need 500 emojis. More lines of code doesn't mean better code - focus on simplicity and quality.

If you need any help, you can ask questions here on **[discussions](https://github.com/Keyitdev/dotfiles/discussions/categories/q-a)** or contact me on **[discord](https://discord.com/users/908702082578665474)** / **[reddit](https://www.reddit.com/user/Keyitdev)**.

Thanks to all contributors! :D

## Detailed information
## WIP
