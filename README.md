# Keyitdev Dotfiles  

The **Arch Linux** & **i3wm** dotfiles! 

[Showcase](#showcase) ·
[Information](#information) ·
[Installation](#installation) ·
[Cheat sheet](#cheat-sheet) ·
[Support and Thankies](#support-and-thankies)

**i3wm** is very simple, old tiling window manager, but it is still powerful and highly configurable. Although it takes time and effort to configure it, but I'm very satisfied with the result.

This is the third version of my dotfiles, as I gain more experience I am able to create more profesional dotfiles.

**However, if you want to check older version see [v2 branch](https://github.com/Keyitdev/dotfiles/tree/v2).**

![](https://github.com/Keyitdev/screenshots/blob/master/dotfiles/v3/screenshots/1.png?raw=true)

### [Watch viedo demo here](https://youtu.be/tSreyGcCMB4)

[![](https://img.shields.io/github/stars/keyitdev/dotfiles?color=dd864a&labelColor=1b1b25&style=for-the-badge)](https://github.com/Keyitdev/dotfiles/stargazers)
[![](https://img.shields.io/github/forks/keyitdev/dotfiles?color=bf616a&labelColor=1b1b25&style=for-the-badge)](https://github.com/Keyitdev/dotfiles/network/members)
[![](https://img.shields.io/github/license/keyitdev/dotfiles?color=999f63&labelColor=1b1b25&style=for-the-badge)](https://www.gnu.org/licenses/gpl-3.0.html)
## Information

- **OS:** [Arch Linux](https://archlinux.org)
- **WM:** [i3-gaps](https://github.com/Airblader/i3)
- **Terminal:** [alacritty](https://github.com/alacritty/alacritty)
- **Bar:** [polybar](https://github.com/polybar/polybar)
- **Shell:** [zsh](https://www.zsh.org/)
- **Compositor:** [picom](https://github.com/yshui/picom)
- **Application Launcher:** [rofi](https://github.com/davatorium/rofi)
- **Notification Deamon:** [dunst](https://github.com/dunst-project/dunst)

<details>
<summary><b>
Detailed information and dependencies
</b></summary>

### Info

**Music Player:** [mpd](https://github.com/MusicPlayerDaemon/MPD) & [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp)    
**Editor:** [neovim](https://github.com/neovim/neovim) / [vscode](https://github.com/microsoft/vscode)    
**Lockscreen:** [i3lock-color](https://github.com/Raymo111/i3lock-color)    
**Display Manager:** [sddm](https://github.com/sddm/sddm)    
**File manager:** [ranger](https://github.com/ranger/ranger) / [nemo](https://github.com/linuxmint/nemo)    
**Pdf reader:** [zathura](https://github.com/pwmt/zathura)    
**Monitor of Resources:** [btop](https://github.com/aristocratos/btop)    

### Used themes

**Shell Framework:** [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh)    
**Vscode Theme:** [One dark pro](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme)    
**Neovim Theme:** [AstroNvim](https://github.com/kabinspace/AstroVim)    
**Icons:** [Papirus dark](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)    
**GTK Theme:** [Tokyo night](https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme)    
**Display Manager Theme:** [Sddm-flower-theme](https://github.com/Keyitdev/sddm-flower-theme)    
	
### Fonts
	
**Icons:** [Feather](https://github.com/AT-UI/feather-font/blob/master/src/fonts/feather.ttf)    
**Interface Font:** [Open sans](https://fonts.google.com/specimen/Open+Sans#standard-styles)    
**Monospace Font:** [Roboto mono](https://fonts.google.com/specimen/Roboto+Mono#standard-styles)    
**Polybar Font:** [Iosevka nerd font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Iosevka)

### Dependencies

**Base:** acpi alsa-utils base-devel curl git pulseaudio pulseaudio-alsa xorg xorg-xinit 

**Required:** alacritty btop code dunst feh ffcast firefox i3-gaps i3lock-color i3-resurrect libnotify light mpc mpd ncmpcpp nemo neofetch neovim oh-my-zsh-git pacman-contrib papirus-icon-theme picom polybar ranger rofi scrot slop xclip zathura zathura-pdf-mupdf zsh

**Sddm:** qt5-graphicaleffects qt5-quickcontrols2 qt5-svg sddm

**Emoji:** fonts: noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra

</details>

## Showcase

|neofetch|vsc & ncmpcpp & cava|
|-|-|
|![](https://github.com/Keyitdev/screenshots/blob/master/dotfiles/v3/screenshots/1.png?raw=true)|![](https://github.com/Keyitdev/screenshots/blob/master/dotfiles/v3/screenshots/2.png?raw=true)|
|rofi & dunst|nemo & nvim & ranger|
|![](https://github.com/Keyitdev/screenshots/blob/master/dotfiles/v3/screenshots/3.png?raw=true)|![](https://github.com/Keyitdev/screenshots/blob/master/dotfiles/v3/screenshots/4.png?raw=true)|
|i3lock-color|sddm|
|![](https://github.com/Keyitdev/screenshots/blob/master/dotfiles/v3/screenshots/5.png?raw=true)|![](https://github.com/Keyitdev/screenshots/blob/master/dotfiles/v3/screenshots/6.png?raw=true)|

## Installation

### Using install script 

Clone the repository.
```sh
git clone -b v3 --depth 1 https://www.github.com/keyitdev/dotfiles.git
cd dotfiles
chmod +x install-on-arch.sh
./install-on-arch.sh
```

### Manual Installation

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

5. Copy configs, scripts, fonts, gtk theme, wallpaper, vsc configs, zsh config.
    ```sh
    cp -r ./config/* "$HOME"/.config
    sudo cp -r ./scripts/* /usr/local/bin
    sudo cp -r ./fonts/* /usr/share/fonts
    sudo cp -r ./tokyonight_gtk /usr/share/themes
    cp -r ./wallpapers/* "$HOME"/Pictures/wallpapers
    cp -r ./vsc/* "$HOME"/.vscode-oss/extensions
    cp ./vsc/settings.json "$HOME"/.config/Code\ -\ OSS/User
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

8. Install sddm flower theme.
    ```sh
    sudo git clone https://github.com/keyitdev/sddm-flower-theme.git /usr/share/sddm/themes/sddm-flower-theme
    sudo cp /usr/share/sddm/themes/sddm-flower-theme/Fonts/* /usr/share/fonts/
    echo "[Theme]
    Current=sddm-flower-theme" | sudo tee /etc/sddm.conf
    ```

## Cheat sheet


<details>
<summary>Keybinds</summary>

These are the basic keybinds. Read through the [i3](./config/i3/config) config for more keybinds.

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

Note: `Win` refers to the `Super/Mod` key.

</details>

<details>
<summary>Colors</summary>

|        Color           |                 Hex code                 |
| ---------------------- | ---------------------------------------- |
|  background            | #1b1b25                                  |
|  background 2          | #282A36                                  |
|  background 3          | #16161e                                  |
|  border                | #343746                                  |
|  foreground            | #dedede                                  |
|  white                 | #eeffff                                  |
|  black                 | #15121c                                  |
|  red                   | #cb5760                                  |
|  green                 | #999f63                                  |
|  yellow                | #d4a067                                  |
|  blue                  | #6c90a8                                  |
|  purple                | #776690                                  |
|  cyan                  | #528a9b                                  |
|  pink                  | #ffa8c5                                  |
|  orange                | #c87c3e                                  |

</details>

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