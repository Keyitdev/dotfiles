<!-- PROJECT LOGO -->
<br />
<div align="center">
  <!-- <a href="https://github.com/keyitdev/dotfiles">
    <img src="https://raw.githubusercontent.com/othneildrew/Best-README-Template/master/images/logo.png" alt="Logo" width="80" height="80">
  </a> -->
  <h1 align="center">Key dotfiles</h1>

  <p align="center">
    My personal build of dotfiles.
    <br />
    <a href="https://github.com/deerrorer/dotfiles3#Showcase">Showcase</a>
    ·
    <a href="https://github.com/deerrorer/dotfiles3#Info">Info</a>
    ·
    <a href="https://github.com/deerrorer/dotfiles3#Dependecies">Dependecies</a>
    ·
    <a href="https://github.com/deerrorer/dotfiles3#Installation">Installation</a>
    ·
    <a href="https://github.com/deerrorer/dotfiles3#Keybinds">Keybinds</a>
    .
    <a href="https://github.com/deerrorer/dotfiles3#Troubleshooting">Troubleshooting</a>
  </p>
</div>

<div align="center">

<img src="https://img.shields.io/github/stars/deerrorer/dotfiles3?color=dd864a&labelColor=555555&style=for-the-badge">
<img src="https://img.shields.io/github/forks/deerrorer/dotfiles3?color=82aaff&labelColor=555555&style=for-the-badge">
<img src="https://img.shields.io/github/issues/deerrorer/dotfiles3?color=bf616a&labelColor=555555&style=for-the-badge">
<img src="https://img.shields.io/github/license/deerrorer/dotfiles3?color=c792ea&labelColor=555555&style=for-the-badge">

</div>

## Showcase

![](./showcase.png)

## Info

|Program|Name|
|-|-|
|**Window Manager**|[i3-gaps](https://github.com/Airblader/i3)|
|**Compositor**|[picom](https://github.com/yshui/picom)
|**Terminal emullator**|[kitty](https://github.com/kovidgoyal/kitty)|
|**Shell**|[zsh](https://www.zsh.org/)|
|**Shell theme**|[oh my zsh](https://github.com/ohmyzsh/ohmyzsh)|
|**Bar**|[polybar](https://github.com/polybar/polybar)|
|**Application launcher**|[rofi](https://github.com/davatorium/rofi)|
|**Notifications**|[dunst](https://github.com/dunst-project/dunst)|
|**Music**|[mpd](https://github.com/MusicPlayerDaemon/MPD), [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp)
|**Text editor**|[Visual Studio Code](https://github.com/Microsoft/vscode), [neovim](https://github.com/neovim/neovim)|
|**Vsc theme**|[One Dark Pro](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme)|
|**Neovim theme**|[NvChad](https://github.com/NvChad/NvChad)
|**GTK theme**|[Nordic](https://github.com/EliverLara/Nordic)|
|**GTK icons**|[Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)|
|**Discord Theme**|[My custom theme]()|

## Dependecies

### Packaged used
wget git i3-gaps i3blocks i3lock kitty zsh rofi dunst feh mpd ncmpcpp light xclip scrot picom imagemagick curl neovim ranger papirus-icon-theme pulseaudio pulseaudio-alsa pulsemixer alsa-utils xorg xorg-xinit xorg-server libnotify acpi polybar ffcast slop

### Fonts used
* [Feather](https://github.com/AT-UI/feather-font/blob/master/src/fonts/feather.ttf)
* [Isovaka Nerd Font](https://www.nerdfonts.com/)
* [Open sans](https://fonts.google.com/specimen/Open+Sans#standard-styles)
* [Source Code Pro](https://fonts.google.com/specimen/Source+Code+Pro)

## Instalation

### Arch

Clone dotfiles
```
git clone https://www.github.com/derrorer/dotfiles3
cd dotfiles3
chmod +x install-on-arch.sh
./install-on-arch.sh
```
Install oh my zsh
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Set zsh as default shell
```sh
chsh -s /bin/zsh
sudo chsh -s /bin/zsh
```
Install NvChad
```sh
git clone https://github.com/NvChad/NvChad.git ~/.config/nvim --depth 10 && nvim +PackerSync
```
Install gtk3 theme
```sh
git clone https://github.com/EliverLara/Nordic.git
sudo mv ./Nordic /usr/share/themes
```
Install GRUB2 theme
```sh
git clone https://github.com/vinceliuice/grub2-themes.git
sudo ./grub2-themes/install.sh -b -t tela -s 1080p
```
Install Firefox theme

[Blue theme](https://color.firefox.com/?theme=XQAAAAKGAQAAAAAAAABBqYhm849SCia73laEGccwS-xMDPr5iE6kjVUHIsGRvs0-q94VqJzDmLds0B4GdTFd2KORmhozpED9fKKY97YpmeSVCJcSVB9rwzacQGHhaYG0HJIDBXLbAYUnjpkVXo5LFBoIgdJ4P7MSUoS9tEpFY9l-n8P03V91Kq7BmmKKrjKq9Hi2Jvfl7wBEWz3nWVxnwd4XKskPQ2G_JFlEZFH-xMtfBJ5OSQmfzox2bvycbCOGiDW99yOqfX2u-cPiqZwcshaSPxDSqShJ5_7OhZzPbP5x-BM)

## Uninstallation

## Keybinds

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
| `Win + arrows (jkl;)`  | Resizing, moving windows                 |
| `Win + Shift + E`      | Exit i3                                  |
| `Win + Shift + R`      | Restart i3                               |

Note: `Win` refers to the `Super/Mod` key.

## Big thanks to

These dotfiles includes some files from others rices. Original sources:
* [Totoro](https://github.com/deerrorer) for [polybar frontend](https://github.com/deerrorer/dotfiles/tree/master/.config/polybar),
* [Adi1090x](https://github.com/adi1090x) for [rofi backend](https://github.com/adi1090x/rofi),
* [Alexander-Miller]() for [ncmpcpp config](https://github.com/Alexander-Miller/dotfiles/blob/master/.config/ncmpcpp/config),
* [Ceuk](https://github.com/ceuk/) for [rofi screenshot script](https://github.com/ceuk/rofi-screenshot),
* [Quethu](https://www.deviantart.com/quethu) for [wallpaper](https://www.deviantart.com/quethu/art/Sci-Fi-Landscape-879969633),
* [Vinceliuice](https://github.com/vinceliuice) for [grub2 theme](https://github.com/vinceliuice/grub2-themes).
* [MarianArlt](https://github.com/MarianArlt) for [sddm theme](https://github.com/MarianArlt/sddm-sugar-dark),

## Troubleshooting

## License

Distributed under the *link* License.



## To do
* dark theme to darker
* polybar themes
* dunst themes
* dark and light theme
* patch
* wget -qO- https://git.io/papirus-icon-theme-uninstall | sh
* https://feathericons.com/ 56px 1px