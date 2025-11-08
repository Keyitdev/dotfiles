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
yay -S --needed btop code dunst fastfetch feh i3-wm i3lock-color kitty mate-polkit mpd ncmpcpp papirus-icon-theme picom polybar rofi xss-lock zsh zed ttf-roboto-mono ttf-opensans ttf-iosevka-nerd ffcast inotify-tools jq libnotify rofi-vscode-mode scrot slop upower xclip
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
yay -S --needed 7zip czkawka-gui firefox firefox-beta-bin firefox-developer-edition gimp inkscape gparted libreoffice-fresh mpv vlc nemo nemo-fileroller obs-studio obsidian qalculate-gtk rsync vnstat yt-dlp
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

```sh
tree WIP
```

### Dependencies

#### Base (~190 Mib)
- `archlinux-keyring base base-devel linux linux-firmware`  - base
- `dhcpcd` - DHCP client *(optional)*  
- `git` - version control system
- `iwd`- wireless network daemon *(optional)*  
- `pulseaudio` - sound server for handling audio
- `xorg` - display server
- `xorg-xinit` - script to manually start the X server without a display manager *(optional)*  

#### Programs (~607 Mib)
- `btop` - resource monitor
- `code` - code editor
- `dunst` - notification deamon
- `fastfetch` - system information fetcher
- `feh` - wallpaper setter  
- `i3-wm` - dynamic tiling window manager  
- `kitty` - terminal emulator
- `i3lock-color` - lock screen *(AUR)*
- `mate-polkit` - controlling system-wide privileges
- `mpd` - music playback service
- `ncmpcpp` - MPD client
- `papirus-icon-theme` - modern icon pack
- `picom` - compositor for X11
- `polybar` - status bar
- `rofi` - application launcher
- `xss-lock` - hooks into XScreenSaver events to lock the screen when idle
- `zsh` - shell
- `zed` - code editor

#### Fonts (~1040 Mib)
- `ttf-roboto-mono ttf-opensans ttf-iosevka-nerd`

#### Scripts (~3 Mib)
- `ffcast` - script for recording your screen *(AUR)* 
- `inotify-tools` - command-line utilities for monitoring filesystem events
- `jq` - JSON processor  
- `libnotify` - library for sending desktop notifications  
- `rofi-vscode-mode` - lauch recently used vsc workspace
- `scrot` - screenshot utility  
- `slop` - select a region on screen
- `upower` - power management daemon
- `xclip` - clipboard manager for X

### Additional dependencies
All of these packages are optional, but without them, some things may not work correctly.
I recommend atleast installing basic utilities.
To install all packages, you need approximately 8.4 GiB of free disk space (5 GiB takes cuda package).

#### Basic utilities (optional) (~21 Mib)
`yay -S bc dmenu downgrade fzf mpc nano vim net-tools ntp tree vi wget`
- `bc` - command-line calculator  
- `dmenu` - app launcher  
- `downgrade` - pkg downgrader  
- `fzf` - fuzzy finder  
- `mpc` - comand-line MPD client  
- `nano vim` - text editors  
- `net-tools` - network tools  
- `ntp` - time sync  
- `tree` - directory tree viewer  
- `vi` - basic text editor  
- `wget` - command-line downloader  

#### Basic programs (optional) (~1700Mib)
`yay -S 7zip czkawka-gui firefox firefox-beta-bin firefox-developer-edition gimp inkscape gparted libreoffice-fresh mpv vlc nemo nemo-fileroller obs-studio obsidian rsync vnstat yt-dlp`
- `7zip` - archiver  
- `czkawka-gui` - duplicate finder  
- `firefox firefox-beta-bin firefox-developer-edition`  - web browsers
- `gimp inkscape` - image editors
- `gparted` - partition tool
- `libreoffice-fresh` - office suite  
- `mpv vlc` - media players 
- `nemo nemo-fileroller` - file manager  
- `obs-studio` - screen recorder  
- `obsidian` - notes app  
- `qalculate-gtk` - calculator with advanced functions
- `rsync` - file sync and backup  
- `vnstat` - network monitor 
- `yt-dlp` - video downloader  

#### Drivers (optional) (~4900 Mib)
`yay -S cpupower-gui ntfs-3g nvidia cuda nvtop vulkan-radeon`
- `cpupower-gui` - CPU settings 
- `ntfs-3g` - NTFS filesystem support  
- `nvidia cuda nvtop` - NVIDIA drivers
- `vulkan-radeon` - AMD Vulkan 

#### Programming (optional) (~1000Mib)
`yay -S cloc cronie docker gcc clang make npm python pypy python-numpy python-pandas python-scipy python-matplotlib python-requests tmux`
- `cloc` - counts lines of code  
- `cronie` - task scheduler  
- `docker` - container platform  
- `gcc clang make` - compilers and build tools  
- `npm` - Node.js package manager  
- `python pypy python-numpy python-pandas python-scipy python-matplotlib python-requests` - Python interpreters and libraries  
- `tmux` - terminal multiplexer  

####  Emoji fonts (~750 MiB)
`yay -S noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra`
- `noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra`

## License
  
Distributed under the **[GPLv3+](https://www.gnu.org/licenses/gpl-3.0.html) License**.    
Copyright (C) 2022-2025 Keyitdev.
