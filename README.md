<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/keyitdev/dotfiles">
    <img src="https://raw.githubusercontent.com/othneildrew/Best-README-Template/master/images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h1 align="center">Key dotfiles</h1>

  <p align="center">
    My personal build of dotfiles.
    <br />
    <a href="https://github.com/othneildrew/Best-README-Template">Showcase</a>
    ·
    <a href="">Info</a>
    ·
    <a href="https://github.com/othneildrew/Best-README-Template/issues">Dependecies</a>
    ·
    <a href="https://github.com/othneildrew/Best-README-Template">Installation</a>
    ·
    <a href="">Keybinds</a>
  </p>
</div>

<div align="center">

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

</div>

## Showcase

![](./showcase.png)

## Info

|Program|Name|
|-|-|
|**Window Manager**|[i3-gaps](https://github.com/Airblader/i3)|
|**Compositor**|[picom](https://github.com/yshui/picom)
|**Terminal emullator**|[kitty](https://github.com/kovidgoyal/kitty)|
|**Shell**|zsh (5.8)|
|**Shell theme**|[oh my zsh](https://github.com/ohmyzsh/ohmyzsh)|
|**Bar**|[polybar](https://github.com/polybar/polybar)|
|**Application launcher**|[rofi](https://github.com/davatorium/rofi)|
|**Notifications**|[dunst](https://github.com/dunst-project/dunst)|
|**Music**|[mpd](https://github.com/MusicPlayerDaemon/MPD), [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp)
|**Text editor**|[Visual Studio Code](https://github.com/Microsoft/vscode), [neovim](https://github.com/neovim/neovim)|
|**Vsc theme**|
|**Neovim theme**|[NvChad](https://github.com/NvChad/NvChad)
|**GTK theme**||
|**GTK icons**|[Papirus](shttps://github.com/PapirusDevelopmentTeam/papirus-icon-theme)|
|**Discord Theme**||

## Dependecies

curl light

### Fonts used
* [Feather](https://github.com/AT-UI/feather-font/blob/master/src/fonts/feather.ttf)
* [Isovaka Nerd Font](https://www.nerdfonts.com/)
* [Open sans](https://fonts.google.com/specimen/Open+Sans#standard-styles)
* Source Code Pro
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
* [Alexander-Miller]() for [ncmpcpp config](https://github.com/Alexander-Miller/dotfiles/blob/master/.config/ncmpcpp/config),
* [Totoro](https://github.com/totoro-ghost) for [polybar frontend](https://github.com/totoro-ghost/dotfiles/tree/master/.config/polybar),
* [Quethu](https://www.deviantart.com/quethu) for [wallpaper](https://www.deviantart.com/quethu/art/Sci-Fi-Landscape-879969633),
* [Adi1090x](https://github.com/adi1090x) for [rofi backend](https://github.com/adi1090x/rofi),
* [MarianArlt](https://github.com/MarianArlt) for [sddm theme](https://github.com/MarianArlt/sddm-sugar-dark),
* [Ceuk](https://github.com/ceuk/) for [rofi screenshot script](https://github.com/ceuk/rofi-screenshot),
* [Vinceliuice](https://github.com/vinceliuice) for [grub2 theme](https://github.com/vinceliuice/grub2-themes).

## Troubleshooting

## License

Distributed under the *link* License.

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png

## To do
* clear rofi config
* icon colors dunst
* dark theme to darker
* polybar themes
* dunst themes
* firefox
* dark and light theme
* patch
* wget -qO- https://git.io/papirus-icon-theme-uninstall | sh