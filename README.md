 <h1 align=center>Keyitdev Dotfiles</h1>

<p align="center">My personal build of dotfiles using i3.  Color palette is based on the Atom One Dark colorscheme. This configuration also works on dual monitors.</p>

<div align="center">
<a href="#-showcase">Showcase</a> · <a href="#%EF%B8%8F-info">Info</a> · <a href="#-dependencies">Dependencies</a> · <a href="#%EF%B8%8F-installation">Installation</a> · <a href="#-keybinds">Keybinds</a> · <a href="#-colors">Colors</a> · <a href="#%EF%B8%8F-troubleshooting">Troubleshooting</a>
</div>

</br>

<p align=center>	  
  <img src="https://img.shields.io/github/stars/keyitdev/dotfiles?color=dd864a&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/forks/keyitdev/dotfiles?color=82aaff&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/issues/keyitdev/dotfiles?color=bf616a&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/issues-pr/keyitdev/dotfiles?color=c792ea&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/license/keyitdev/dotfiles?color=15121C&labelColor=202328&style=for-the-badge">
</p>

<div align="center">

**Check newer version here [v3 branch](https://github.com/Keyitdev/dotfiles/tree/v3).**

</div>

## 🌟 Showcase

![](https://github.com/Keyitdev/screenshots/blob/master/dotfiles/v2/screenshots/main.png?raw=true)

### [More screenshots here](https://github.com/Keyitdev/screenshots/blob/master/dotfiles/v2/README.md)

### [Watch the demo video here](https://www.youtube.com/watch?v=_dMkmf2ugPE)

## 🗒️ Info

|Program|Name|
|-|-|
|**Window Manager**|[i3-gaps](https://github.com/Airblader/i3)|
|**Terminal Emulator**|[Kitty](https://github.com/kovidgoyal/kitty)|
|**Bar**|[Polybar](https://github.com/polybar/polybar)|
|**Application Launcher**|[Rofi](https://github.com/davatorium/rofi)|
|**Notification Daemon**|[Dunst](https://github.com/dunst-project/dunst)|
|**Display Manager**|[SDDM](https://github.com/sddm/sddm)|
|**Display Manager Theme**|[SDDM-Astronaut-Theme](https://github.com/Keyitdev/sddm-astronaut-theme)|
|**Lockscreen**|[BetterLockscreen](https://github.com/betterlockscreen/betterlockscreen)|
|**Compositor**|[Picom](https://github.com/yshui/picom)
|**Shell**|[Zsh](https://www.zsh.org/)|
|**Shell Framework**|[Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh)|
|**Music Player**|[mpd](https://github.com/MusicPlayerDaemon/MPD), [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp)
|**Text Editor**|[Visual Studio Code](https://github.com/Microsoft/vscode), [Neovim](https://github.com/neovim/neovim)|
|**VSC Colorscheme**|[One Dark Pro](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme)|
|**Neovim Theme**|[AstroVim](https://github.com/kabinspace/AstroVim)
|**GTK Theme**|[Ant (Dracula)](https://github.com/EliverLara/ant)|
|**Icons**|[Papirus Dark](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)|
|**Discord Theme**|[Custom](https://github.com/Keyitdev/BetterDiscord-themes)|

## ⚡ Dependencies

### Packages 
* **Base:** base-devel wget curl git gcc make acpi light pulseaudio pulseaudio-alsa alsa-utils pacman-contrib mpc
* **WM/X11:** i3-gaps i3blocks i3lock-color xorg xorg-xinit xorg-server
* **Lockscreen:** i3lock-color betterlockscreen feh imagemagick
* **Programs:** kitty rofi dunst (with libnotify) ranger ncmpcpp mpd polybar papirus-icon-theme btop sddm (with qt5 qt5-quickcontrols2 qt5-svg) zsh (with oh-my-zsh) picom cava code neovim
* **Screenshots:** xclip scrot ffcast slop         
* **Emoji Fonts:** noto-fonts noto-fonts-emoji noto-fonts-extra noto-fonts-cjk

### Fonts 
* **Icons:** [Feather](https://github.com/AT-UI/feather-font/blob/master/src/fonts/feather.ttf)
* **Interface Font:** [Open Sans](https://fonts.google.com/specimen/Open+Sans#standard-styles)
* **Monospace Font:** [Roboto Mono](https://fonts.google.com/specimen/Roboto+Mono#standard-styles)
* **Polybar Font:** [Iosevka Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Iosevka)

## 🛠️ Installation

It's recommended to install the dependencies manually, but if you have any issues with the manual installation, or just want to save time, use the installation script.

### Manual Installation

1. Clone this repository
    ```sh
    git clone -b v2 --depth 1 https://www.github.com/keyitdev/dotfiles.git
    ```

2. Install an AUR helper (for example, yay in $HOME/.srcs)
    ```sh
    mkdir -p $HOME/.srcs
    git clone https://aur.archlinux.org/yay.git $HOME/.srcs/yay
	(cd $HOME/.srcs/yay/ && makepkg -si )
    ```

3. Install packages (see [Dependencies](https://github.com/keyitdev/dotfiles#-dependencies))

4. Make Light executable
    ```sh
    sudo chmod +s /usr/bin/light
    ```

5. Copy the files (Config folder to `$HOME/.config`, scripts folder to `/usr/local/bin` fonts to `/usr/share/fonts/`, wallpaper to `$HOME/Pictures/wallpapers` etc.)

6. Install Oh-My-Zsh
    ```sh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

7. Set Zsh as the default shell
    ```sh
    chsh -s /bin/zsh    #user
    sudo chsh -s /bin/zsh   #root
    ```

8. Install AstroVim
    ```sh
    git clone --depth 10 https://github.com/kabinspace/AstroVim.git $HOME/.config/nvim
    nvim +PackerSync
    ```

9. Install GTK Theme
    ```sh
    git clone https://github.com/EliverLara/ant.git
    sudo mv ./ant /usr/share/themes
    ```

10. Install SDDM Astronaut Theme
    ```sh
    sudo git clone https://github.com/keyitdev/sddm-astronaut-theme.git
    sudo cp -fdr sddm-astronaut-theme /usr/share/sddm/themes/
    sudo cp /usr/share/sddm/themes/sddm-astronaut-theme/Fonts/* /usr/share/fonts/
    ```

11. Edit `/etc/sddm.conf`
    ```
    echo "[Theme]
    Current=sddm-astronaut-theme" | sudo tee /etc/sddm.conf
    ```

12. [Install the Firefox theme](https://color.firefox.com/?theme=XQAAAAKGAQAAAAAAAABBqYhm849SCia73laEGccwS-xMDPr5iE6kjVUHIsGRvs0-q94VqJzDmLds0B4GdTFd2KORmhozpED9fKKY97YpmeSVCJcSVB9rwzacQGHhaYG0HJIDBXLbAYUnjpkVXo5LFBoIgdJ4P7MSUoS9tEpFY9l-n8P03V91Kq7BmmKKrjKq9Hi2Jvfl7wBEWz3nWVxnwd4XKskPQ2G_JFlEZFH-xMtfBJ5OSQmfzox2bvycbCOGiDW99yOqfX2u-cPiqZwcshaSPxDSqShJ5_7OhZzPbP5x-BM)

### Automated Install

1.  Clone the repository
    ```
    git clone -b v2 --depth 1 https://www.github.com/keyitdev/dotfiles.git
    cd dotfiles
    chmod +x install-on-arch.sh
    ./install-on-arch.sh
    ```

2. [Install the Firefox theme](https://color.firefox.com/?theme=XQAAAAKGAQAAAAAAAABBqYhm849SCia73laEGccwS-xMDPr5iE6kjVUHIsGRvs0-q94VqJzDmLds0B4GdTFd2KORmhozpED9fKKY97YpmeSVCJcSVB9rwzacQGHhaYG0HJIDBXLbAYUnjpkVXo5LFBoIgdJ4P7MSUoS9tEpFY9l-n8P03V91Kq7BmmKKrjKq9Hi2Jvfl7wBEWz3nWVxnwd4XKskPQ2G_JFlEZFH-xMtfBJ5OSQmfzox2bvycbCOGiDW99yOqfX2u-cPiqZwcshaSPxDSqShJ5_7OhZzPbP5x-BM)

## 🛠️ Uninstall

1. Remove installed packages (see [Dependencies](https://github.com/keyitdev/dotfiles#-dependencies))
2. Remove the AUR helper ( $HOME/.srcs)
3. Uninstall Oh-My-Zsh ` uninstall_oh_my_zsh`
4. Change the default shell back to bash 
```
chsh -s /bin/bash
sudo chsh -s /bin/bash
```
5. Remove installed fonts ($HOME/.local/share/fonts/ or /usr/share/fonts/)
6. Remove installed scripts (/usr/local/bin)
7. Remove this repository

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

## ⚙️ Troubleshooting

1. Polybar modules not working? : Try changing variables (For example in battery module from BAT1 to BAT0).
3. Screen flashing black : Try changing picom config.
4. Scripts not working : Maybe try to edit shebang.
5. MPD not working : Check if any other program is using port 6600 (http://127.0.0.1:6600/).

## ✨ Big thanks to

These dotfiles includes some files from others rices. Original sources:
* [Totoro](https://github.com/totoro-ghost) for [polybar frontend](https://github.com/totoro-ghost/dotfiles/tree/master/.config/polybar)
* [Adi1090x](https://github.com/adi1090x) for [rofi backend](https://github.com/adi1090x/rofi)
* [Alexander-Miller](https://github.com/Alexander-Miller) for [ncmpcpp config](https://github.com/Alexander-Miller/dotfiles/blob/master/.config/ncmpcpp/config)
* [Axarva](https://github.com/Axarva/) for [arch install script](https://github.com/Axarva/dotfiles-2.0/blob/main/install-on-arch.sh)
* [Ceuk](https://github.com/ceuk/) for [rofi screenshot script](https://github.com/ceuk/rofi-screenshot)
* [Milosz](https://github.com/milosz) for [rofi-bookmarks](https://github.com/milosz/rofi-firefox-bookmarks)
* [Unnat](https://github.com/UnnatShaneshwar) for [wallpaper](https://github.com/UnnatShaneshwar/OneDarkWallpapers/blob/main/11.png)

## 🪪 License

Distributed under the [GPLv3+](https://www.gnu.org/licenses/gpl-3.0.html) License.
