 <h1 align=center>Keyitdev Dotfiles</h1>

<p align="center">My personal Dotfiles I use in i3. Color palette is based on the Atom One Dark colorscheme. This configuration also works on dual monitors.</p>

<div align="center">
<a href="#-showcase">Showcase</a> · <a href="#%EF%B8%8F-info">Info</a> · <a href="#-dependencies">Dependencies</a> · <a href="#%EF%B8%8F-installation">Installation</a> · <a href="#-keybinds">Keybinds</a> · <a href="#-colors">Colors</a> · <a href="#%EF%B8%8F-troubleshooting">Troubleshooting</a>
</div>

<br />

<p align=center>	  
  <img src="https://img.shields.io/github/stars/keyitdev/dotfiles?color=dd864a&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/forks/keyitdev/dotfiles?color=82aaff&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/issues/keyitdev/dotfiles?color=bf616a&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/issues-pr/keyitdev/dotfiles?color=c792ea&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/license/keyitdev/dotfiles?color=15121C&labelColor=202328&style=for-the-badge">
</p>

<br />

## 🌟 Showcase

![](https://github.com/Keyitdev/dotfiles/blob/screenshots/screenshots/main.png?raw=true)

<br />

### [More screenshots here](https://github.com/Keyitdev/dotfiles/blob/screenshots/README.md)

### [Watch the demo video here](https://www.youtube.com/watch?v=_dMkmf2ugPE)

<br />

## 🗒️ Info

|Program|Name|
|-|-|
|**Window Manager**|[i3-gaps](https://github.com/Airblader/i3)|
|**Terminal Emulator**|[Kitty](https://github.com/kovidgoyal/kitty)|
|**Bar**|[Polybar](https://github.com/polybar/polybar)|
|**Application launcher**|[Rofi](https://github.com/davatorium/rofi)|
|**Notifications**|[Dunst](https://github.com/dunst-project/dunst)|
|**Display Manager**|[SDDM](https://github.com/sddm/sddm)|
|**Display Manager Theme**|[SDDM-Astronaut-Theme](https://github.com/Keyitdev/sddm-astronaut-theme)|
|**Lockscreen**|[BetterLockscreen](https://github.com/betterlockscreen/betterlockscreen)|
|**Compositor**|[Picom](https://github.com/yshui/picom)
|**Shell**|[Zsh](https://www.zsh.org/)|
|**Shell Framework**|[Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh)|
|**Music Player**|[mpd](https://github.com/MusicPlayerDaemon/MPD), [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp)
|**Text Editor**|[Visual Studio Code](https://github.com/Microsoft/vscode), [Neovim](https://github.com/neovim/neovim)|
|**Vsc theme**|[One Dark Pro](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme)|
|**Neovim theme**|[AstroVim](https://github.com/kabinspace/AstroVim)
|**GTK theme**|[Ant (Dracula)](https://github.com/EliverLara/ant)|
|**GTK icons**|[Papirus Dark](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)|
|**Discord Theme**|[Custom](https://github.com/Keyitdev/BetterDiscord-themes)|

<br />

## ⚡ Dependencies

### Packages 
* base: base-devel wget curl git gcc make acpi light pulseaudio pulseaudio-alsa alsa-utils pacman-contrib mpc
* wm and X11: i3-gaps i3blocks i3lock-color xorg xorg-xinit xorg-server
* lockscreen: i3lock-color betterlockscreen feh imagemagick
* programs: kitty rofi dunst (with libnotify) ranger ncmpcpp mpd polybar papirus-icon-theme btop sddm zsh (with oh-my-zsh) picom cava code neovim
* screenshot script: xclip scrot ffcast slop         
* emoji fonts: noto-fonts noto-fonts-emoji noto-fonts-extra noto-fonts-cjk

### Fonts 
* Icons: [Feather](https://github.com/AT-UI/feather-font/blob/master/src/fonts/feather.ttf)
* Main font: [Open sans](https://fonts.google.com/specimen/Open+Sans#standard-styles)
* Main monospace font: [Roboto mono](https://fonts.google.com/specimen/Roboto+Mono#standard-styles)
* Polybar: [Iosevka-Nerd-Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Iosevka)

<br />

## 🛠️ Installation

It's recommended to install the dependencies manually, but if you have any issues with the manual installation, or just want to save time, use the installation script.

### Manual Installation

1. Clone this repository
    ```sh
    git clone -b master --depth 1 https://www.github.com/keyitdev/dotfiles.git
    ```
<br />

2. Install an AUR helper (for example, yay in ~/.srcs)
    ```sh
    mkdir -p ~/.srcs
    git clone https://aur.archlinux.org/yay.git ~/.srcs/yay
	(cd ~/.srcs/yay/ && makepkg -si )
    ```
<br />

3. Install packages (see [Dependencies](https://github.com/keyitdev/dotfiles#Dependencies))
<br />

4. Make Light executable
    ```sh
    sudo chmod +s /usr/bin/light
    ```
<br />

5. Copy the files (Config folder to `$HOME/.config`, scripts folder to `/usr/local/bin` fonts to `/usr/share/fonts/`, wallpaper to `$HOME/Pictures/wallpapers` etc.)
<br />

6. Install Oh-My-Zsh
    ```sh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```
<br />

7. Set Zsh as the default shell
    ```sh
    chsh -s /bin/zsh
    ```
<br />

8. Install AstroVim
    ```sh
    git clone --depth 10 https://github.com/kabinspace/AstroVim.git ~/.config/nvim
    nvim +PackerSync
    ```
<br />

9. Install GTK Theme
    ```sh
    git clone https://github.com/EliverLara/ant.git
    sudo mv ./ant /usr/share/themes
    ```
<br />

10. Install SDDM Astronaut Theme
    ```sh
    sudo git clone https://github.com/keyitdev/sddm-astronaut-theme.git
    sudo cp -fdr sddm-astronaut-theme /usr/share/sddm/themes/
    sudo cp /usr/share/sddm/themes/sddm-astronaut-theme/Fonts/* /usr/share/fonts/
    ```
<br />

11. Edit `/etc/sddm.conf`
    ```
    [Theme]
    Current=sddm-astronaut-theme
    ```
<br />

12. [Install the Firefox theme](https://color.firefox.com/?theme=XQAAAAKGAQAAAAAAAABBqYhm849SCia73laEGccwS-xMDPr5iE6kjVUHIsGRvs0-q94VqJzDmLds0B4GdTFd2KORmhozpED9fKKY97YpmeSVCJcSVB9rwzacQGHhaYG0HJIDBXLbAYUnjpkVXo5LFBoIgdJ4P7MSUoS9tEpFY9l-n8P03V91Kq7BmmKKrjKq9Hi2Jvfl7wBEWz3nWVxnwd4XKskPQ2G_JFlEZFH-xMtfBJ5OSQmfzox2bvycbCOGiDW99yOqfX2u-cPiqZwcshaSPxDSqShJ5_7OhZzPbP5x-BM)
<br />

### Automated Install

1.  Clone the repository
    ```
    git clone -b master --depth 1 https://www.github.com/keyitdev/dotfiles.git
    cd dotfiles
    chmod +x install-on-arch.sh
    ./install-on-arch.sh
    ```
<br />

2. Install Oh-My-Zsh
    ```sh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```
<br />

3. Set Zsh as default shell
    ```sh
    chsh -s /bin/zsh
    sudo chsh -s /bin/zsh
    ```
<br />

1. Install AstroVim
    ```sh
    git clone --depth 10 https://github.com/kabinspace/AstroVim.git ~/.config/nvim
    nvim +PackerSync
    ```
<br />    

1. Install GTK Theme
    ```sh
    git clone https://github.com/EliverLara/ant.git
    sudo mv ./ant /usr/share/themes
    ```
<br />
    
1. Install SDDM Astronaut Theme
    ```sh
    sudo git clone https://github.com/keyitdev/sddm-astronaut-theme.git
    sudo cp -fdr sddm-astronaut-theme /usr/share/sddm/themes/
    sudo cp /usr/share/sddm/themes/sddm-astronaut-theme/Fonts/* /usr/share/fonts/
    ```
<br />
  
1. Edit `/etc/sddm.conf`
    ```
    [Theme]
    Current=sddm-astronaut-theme
    ``` 
<br />

1. [Install the Firefox theme](https://color.firefox.com/?theme=XQAAAAKGAQAAAAAAAABBqYhm849SCia73laEGccwS-xMDPr5iE6kjVUHIsGRvs0-q94VqJzDmLds0B4GdTFd2KORmhozpED9fKKY97YpmeSVCJcSVB9rwzacQGHhaYG0HJIDBXLbAYUnjpkVXo5LFBoIgdJ4P7MSUoS9tEpFY9l-n8P03V91Kq7BmmKKrjKq9Hi2Jvfl7wBEWz3nWVxnwd4XKskPQ2G_JFlEZFH-xMtfBJ5OSQmfzox2bvycbCOGiDW99yOqfX2u-cPiqZwcshaSPxDSqShJ5_7OhZzPbP5x-BM)
<br />

## 🛠️ Uninstall

1. Remove installed packages (see [Dependencies](https://github.com/keyitdev/dotfiles#Dependencies))
2. Remove the AUR helper ( ~/.srcs)
3. Uninstall Oh-My-Zsh ` uninstall_oh_my_zsh`
4. Change the default shell back to bash 
```
chsh -s /bin/bash
sudo chsh -s /bin/bash
```
5. Remove installed fonts (~/.local/share/fonts/ or /usr/share/fonts/)
6. Remove installed scripts (/usr/local/bin)
7. Remove this repository
<br />

## 🔑 Keybinds

These are the basic keybinds. Read through the `i3` config for more keybinds.

|        Keybind         |                 Function                 |
| ---------------------- | ---------------------------------------- |
| `Win + Enter`          | Launch terminal (kitty)                  |
| `Win + Shift + Q`      | Close window                             |
| `Win + Q`              | Stacking layout                          |
| `Win + W`              | Tabbed layout                            |
| `Win + E`              | Default layout                           |
| `Win + A`              | Rofi sidebar menu                        |
| `Win + S`              | Rofi compact menu                        |
| `Win + D`              | Rofi center menu                         |
| `Win + Z`              | Rofi bookmarks                           |
| `Win + X`              | Change theme                             |
| `Win + C`              | Use screenshot script                    |
| `Win + G`              | Gaps settings                            |
| `Win + V`              | Set vertical orientation                 |
| `Win + H`              | Set horizontal orientation               |
| `Win + I`              | Lock screen                              |
| `Win + O`              | Show polybar                             |
| `Win + P`              | Hide polybar                             |
| `Win + B`              | Move workspace to another monitor        |
| `Win + N`              | Dual monitor mode                        |
| `Win + M`              | Single monitor mode                      |
| `Win + arrows (jkl;)`  | Resizing, moving windows                 |
| `Win + Shift + E`      | Exit i3                                  |
| `Win + Shift + R`      | Restart i3                               |

Note: `Win` refers to the `Super/Mod` key.
<br />
<br />

## 🌈 Colors

|        Color           |                 Hex code                 |
| ---------------------- | ---------------------------------------- |
|  background            | #21222C                                  |
|  background 2          | #282A36                                  |
|  background 3          | #343746                                  |
|  foreground            | #F8F8F2                                  |
|  white                 | #FFFFFF                                  |
|  black                 | #15121C                                  |
|  red                   | #f07178                                  |
|  green                 | #c3e88d                                  |
|  yellow                | #ffcb6b                                  |
|  blue                  | #82aaff                                  |
|  purple                | #c792ea                                  |
|  cyan                  | #89ddff                                  |
|  pink                  | #ffa8c5                                  |
|  orange                | #dd864a                                  |
<br />

## ⚙️ Troubleshooting

1. Polybar modules not working? : Try changing variables (For example in battery module from BAT1 to BAT0).
3. Screen flashing black : Try changing picom config.
4. Scripts not working : Maybe try to edit shebang.
5. MPD not working : Check if any other program is using port 6600 (http://127.0.0.1:6600/).
<br />

## ✨ Big thanks to

These dotfiles includes some files from others rices. Original sources:
* [Totoro](https://github.com/totoro-ghost) for [polybar frontend](https://github.com/totoro-ghost/dotfiles/tree/master/.config/polybar)
* [Adi1090x](https://github.com/adi1090x) for [rofi backend](https://github.com/adi1090x/rofi)
* [Alexander-Miller](https://github.com/Alexander-Miller) for [ncmpcpp config](https://github.com/Alexander-Miller/dotfiles/blob/master/.config/ncmpcpp/config)
* [Axarva](https://github.com/Axarva/) for [arch install script](https://github.com/Axarva/dotfiles-2.0/blob/main/install-on-arch.sh)
* [Ceuk](https://github.com/ceuk/) for [rofi screenshot script](https://github.com/ceuk/rofi-screenshot)
* [Milosz](https://github.com/milosz) for [rofi-bookmarks](https://github.com/milosz/rofi-firefox-bookmarks)
* [Unnat](https://github.com/UnnatShaneshwar) for [wallpaper](https://github.com/UnnatShaneshwar/OneDarkWallpapers/blob/main/11.png)
<br />

## 🪪 License

Distributed under the [GPLv3+](https://www.gnu.org/licenses/gpl-3.0.html) License.
