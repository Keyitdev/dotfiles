# Keyitdev Dotfiles 

## [Watch on Youtube](https://youtu.be/tSreyGcCMB4) <img alt="" align="right" src="https://img.shields.io/github/forks/keyitdev/dotfiles?color=bf616a&labelColor=1b1b25&style=for-the-badge"/> <img alt="" align="right" src="https://img.shields.io/github/stars/keyitdev/dotfiles?color=dd864a&labelColor=1b1b25&style=for-the-badge"/>

### [Showcase](#showcase) · [Manual installation](#manual-installation) · [Detailed info](#detailed-information) · [Troubleshooting](#troubleshooting) · [Contributions](#contributions)

The **Arch Linux** & **i3wm** dotfiles! 

This is the third version of my dotfiles, as I gain more experience I am able to create more profesional dotfiles.

**However, if you want to check older version see [v2 branch](https://github.com/Keyitdev/dotfiles/tree/v2).**

## Information

<img src="https://github.com/Keyitdev/screenshots/blob/master/dotfiles/v3/screenshots/1.png?raw=true" alt="Rice Showcase" align="right" width="400px">

- **OS:** [Arch Linux](https://archlinux.org)
- **WM:** [i3-gaps](https://github.com/Airblader/i3)
- **Terminal:** [alacritty](https://github.com/alacritty/alacritty)
- **Bar:** [polybar](https://github.com/polybar/polybar)
- **Shell:** [zsh](https://www.zsh.org/)
- **Compositor:** [picom](https://github.com/yshui/picom)
- **Application Launcher:** [rofi](https://github.com/davatorium/rofi)
- **Notification Deamon:** [dunst](https://github.com/dunst-project/dunst)

## Automatic installation

```sh
git clone -b v3 --depth 1 https://www.github.com/keyitdev/dotfiles.git
cd dotfiles
chmod +x install-on-arch.sh
./install-on-arch.sh
```
> Warning: Remember to always read the scripts you run from the internet first.

> Note: Last time I tested the installation script on 31 July 2023, Everything worked fine.

## Showcase

### neofetch 

![](https://github.com/Keyitdev/screenshots/blob/master/dotfiles/v3/screenshots/1.png?raw=true)

### vsc & ncmpcpp & cava

![](https://github.com/Keyitdev/screenshots/blob/master/dotfiles/v3/screenshots/2.png?raw=true)

### rofi & dunst

![](https://github.com/Keyitdev/screenshots/blob/master/dotfiles/v3/screenshots/3.png?raw=true)

<details>
<summary><h3>More screenshots</h3></summary>

### nemo & nvim & ranger

![](https://github.com/Keyitdev/screenshots/blob/master/dotfiles/v3/screenshots/4.png?raw=true)

### i3lock-color

![](https://github.com/Keyitdev/screenshots/blob/master/dotfiles/v3/screenshots/5.png?raw=true)

### sddm

![](https://github.com/Keyitdev/screenshots/blob/master/dotfiles/v3/screenshots/6.png?raw=true)

</details>

## Manual Installation

1. Clone this repository.
    ```sh
    git clone -b v3 --depth 1 https://www.github.com/keyitdev/dotfiles.git
    ```

2. Install an AUR helper (for example, `yay` in `"$HOME"/.srcs`).
    ```sh
    git clone https://aur.archlinux.org/yay.git "$HOME"/.srcs/yay
	cd "$HOME"/.srcs/yay/ && makepkg -si
    ```

3. Install dependencies.
    ```sh
    yay -S --needed acpi alsa-utils base-devel curl git pulseaudio pulseaudio-alsa xorg xorg-xinit alacritty btop code dunst feh ffcast firefox i3-gaps i3lock-color i3-resurrect libnotify light mpc mpd ncmpcpp nemo neofetch neovim oh-my-zsh-git pacman-contrib papirus-icon-theme picom polybar ranger rofi scrot slop xclip zathura zathura-pdf-mupdf zsh   
    ```

4. Create default directories.
    ```sh
    mkdir -p "$HOME"/.config
    mkdir -p  /usr/local/bin
    mkdir -p  /usr/share/themes
    mkdir -p "$HOME"/Pictures/wallpapers
    ```

5. Copy configs, scripts, fonts, wallpaper, vsc configs, zsh config.
    ```sh
    cp -r ./config/* "$HOME"/.config
    sudo cp -r ./scripts/* /usr/local/bin
    sudo cp -r ./fonts/* /usr/share/fonts
    cp -r ./wallpapers/* "$HOME"/Pictures/wallpapers
    sudo cp ./keyitdev.zsh-theme /usr/share/oh-my-zsh/custom/themes
    cp ./.zshrc "$HOME"
    ```

6. Make Light executable, set zsh as default shell, update nvim extensions, refresh font cache.
    ```sh
    sudo chmod +s /usr/bin/light
    chsh -s /bin/zsh
    sudo chsh -s /bin/zsh
    nvim +PackerSync
    fc-cache -fv
    ```

7. Install vsc theme.
    ```sh
    code --install-extension zhuangtongfa.Material-theme
    cp ./vsc/settings.json "$HOME"/.config/Code\ -\ OSS/User
    ```

8. Install gtk theme.
    ```sh
    mkdir -p "$HOME"/.config/gtk-4.0
    git clone https://github.com/Fausto-Korpsvart/Rose-Pine-GTK-Theme
    sudo cp -r ./Rose-Pine-GTK-Theme/themes/RosePine-Main-BL  /usr/share/themes/RosePine-Main
    sudo cp -r ./Rose-Pine-GTK-Theme/themes/RosePine-Main-BL/gtk-4.0/* "$HOME"/.config/gtk-4.0
    ```
    
9. Install sddm and sddm flower theme.
    ```sh
    yay -S --needed qt5-graphicaleffects qt5-quickcontrols2 qt5-svg sddm
    sudo git clone https://github.com/keyitdev/sddm-flower-theme.git /usr/share/sddm/themes/sddm-flower-theme
    sudo cp /usr/share/sddm/themes/sddm-flower-theme/Fonts/* /usr/share/fonts/
    echo "[Theme]
    Current=sddm-flower-theme" | sudo tee /etc/sddm.conf
    ```

    
## Detailed information

### Dependencies

**Base:** acpi alsa-utils base-devel curl git pulseaudio pulseaudio-alsa xorg xorg-xinit 

**Required:** alacritty btop code dunst feh ffcast firefox i3-gaps i3lock-color i3-resurrect libnotify light mpc mpd ncmpcpp nemo neofetch neovim oh-my-zsh-git pacman-contrib papirus-icon-theme picom polybar ranger rofi scrot slop xclip zathura zathura-pdf-mupdf zsh

**Sddm:** qt5-graphicaleffects qt5-quickcontrols2 qt5-svg sddm

**Emoji:** fonts: noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra

### Used programs

- **Music Player:** [mpd](https://github.com/MusicPlayerDaemon/MPD) & [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp)
- **Editor:** [neovim](https://github.com/neovim/neovim) / [vscode](https://github.com/microsoft/vscode)
- **Lockscreen:** [i3lock-color](https://github.com/Raymo111/i3lock-color)
- **Display Manager:** [sddm](https://github.com/sddm/sddm)
- **File manager:** [ranger](https://github.com/ranger/ranger) / [nemo](https://github.com/linuxmint/nemo)
- **Pdf reader:** [zathura](https://github.com/pwmt/zathura)
- **Monitor of Resources:** [btop](https://github.com/aristocratos/btop)

### Used themes

- **Shell Framework:** [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh)
- **Vscode Theme:** [One dark pro](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme)
- **Neovim Theme:** [AstroNvim](https://github.com/kabinspace/AstroVim)
- **Icons:** [Papirus dark](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- **GTK Theme:** [Rose Pine](https://github.com/Fausto-Korpsvart/Rose-Pine-GTK-Theme)
- **Display Manager Theme:** [Sddm-flower-theme](https://github.com/Keyitdev/sddm-flower-theme)
	
### Fonts
	
- **Icons:** [Feather](https://github.com/AT-UI/feather-font/blob/master/src/fonts/feather.ttf)
- **Interface Font:** [Open sans](https://fonts.google.com/specimen/Open+Sans#standard-styles)
- **Monospace Font:** [Roboto mono](https://fonts.google.com/specimen/Roboto+Mono#standard-styles)
- **Polybar Font:** [Iosevka nerd font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Iosevka)
  
### Keybinds

These are the basic keybinds. Read through the [i3](./config/i3/config) config for more keybinds.

Note: `Win` refers to the `Super/Mod` key.

|        Keybind         |                 Function                 |
| ---------------------- | ---------------------------------------- |
| `Win + Enter`          | Launch terminal (alacritty)              |
| `Win + Shift + Q`      | Close window                             |
| `Win + Q`              | Stacking layout                          |
| `Win + W`              | Tabbed layout                            |
| `Win + E`              | Default layout                           |
| `Win + R`              | Resize mode                              |
| `Win + T`              | Restore layout                           |
| `Win + Y`              | Save layout                              |
| `Win + A`              | Rofi open windows menu                   |
| `Win + S`              | Rofi full menu                           |
| `Win + D`              | Rofi menu                                |
| `Win + Z`              | Rofi bookmarks                           |
| `Win + X`              | Rofi powermenu                           |
| `Win + C`              | Rofi screenshot script                   |
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

### Colors

|        Color           | Hex code |PNG |        Color           | Hex code |PNG|
| ---------------------- | -------- |- | ---------------------- | -------- |-|
|  background            | #1b1b25  |![#1b1b25](https://placehold.co/15x15/1b1b25/1b1b25.png) |  red                   | #cb5760  |![#cb5760](https://placehold.co/15x15/cb5760/cb5760.png)|
|  background 2          | #282A36  |![#282A36](https://placehold.co/15x15/282A36/282A36.png) |  green                 | #999f63  |![#999f63](https://placehold.co/15x15/999f63/999f63.png)|
|  background 3          | #16161e  |![#16161e](https://placehold.co/15x15/16161e/16161e.png) |  yellow                | #d4a067  |![#d4a067](https://placehold.co/15x15/d4a067/d4a067.png)|
|  border                | #343746  |![#343746](https://placehold.co/15x15/343746/343746.png) |  blue                  | #6c90a8  |![#6c90a8](https://placehold.co/15x15/6c90a8/6c90a8.png)|
|  foreground            | #dedede  |![#dedede](https://placehold.co/15x15/dedede/dedede.png) |  purple                | #776690  |![#776690](https://placehold.co/15x15/776690/776690.png)|
|  white                 | #eeffff  |![#eeffff](https://placehold.co/15x15/eeffff/eeffff.png) |  cyan                  | #528a9b  |![#528a9b](https://placehold.co/15x15/528a9b/528a9b.png)|
|  gray                  | #727480  |![#727480](https://placehold.co/15x15/727480/727480.png) |   pink                  | #ffa8c5  |![#ffa8c5](https://placehold.co/15x15/ffa8c5/ffa8c5.png)|
|  black                 | #15121c  |![#15121c](https://placehold.co/15x15/15121c/15121c.png) |  orange                | #c87c3e  |![#c87c3e](https://placehold.co/15x15/c87c3e/c87c3e.png)|

## Troubleshooting

1. Some polybar modules are not working?

    - Try changing the variables. 
    - Open the polybar configuration `"$HOME"/.config/polybar/config.ini`. 
    - Found `; Change it for yourself` line. 
    - Follow the commands that are written below the `; Change it for yourself` line.

2. MPD not working?
    
    - Check if any other program is using port 6600 (http://127.0.0.1:6600/).

3. Everything is lagging? Screen is tearing?

    - Edit picom config.
    - This can be hard to solve, because if picom does not work, the whole screen may be frozen or even dark. So first try to kill the picom process.
    - (Blindly) click `Win+Enter`.
    - (Blindly) type `killall picom`.
    - (Blindly) press `Enter`.
    - (Blindly) click `Win+Shift+R`.
    - Open picom configuration `"$HOME"/.config/picom/picom.conf`. 
    - Change picom backend from `backend = "glx";` to `backend = "xrender";`.

## Support and Thankies

You can support me simply by dropping a **star** on **[github](https://github.com/Keyitdev/dotfiles/tree/v3)** or giving a **subscription** on **[YouTube](http://www.youtube.com/channel/UCVoGVyAP2sHPQyegwBMJKyQ?sub_confirmation=1)**.

<!-- If you enjoyed it and would like to show your appreciation, you can **tip** using **[kofi]()** or **[paypal]()**. -->

**Big thanks to:**
[adi1090x](https://github.com/adi1090x),
[Totoro](https://github.com/totoro-ghost).

Thanks to all contributors! :D

## Contributions

Feel free to create issue or pull request.    
If you need any help, you can ask questions here on **[discussions](https://github.com/Keyitdev/dotfiles/discussions/categories/q-a)** or contact me on **[discord](https://discord.com/users/908702082578665474)** / **[reddit](https://www.reddit.com/user/Keyitdev)**.

Distributed under the **[GPLv3+](https://www.gnu.org/licenses/gpl-3.0.html) License**.    
Copyright (C) 2022 Keyitdev.