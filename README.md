# Deerrorer dotfiles
 My personal build of dotfiles.
## Required packages and system informations:
|Program|Name|
|-|-|
|**Window Manager**|[i3](https://github.com/i3/i3), (if you want gaps also [i3-gaps](https://github.com/Airblader/i3))|
|**Terminal emullator**|[kitty](https://github.com/kovidgoyal/kitty)|
|**Shell**|zsh (5.8)|
|**Shell theme**|[ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)|
|**Bar**|[polybar](https://github.com/polybar/polybar)|
|**Application launcher**|[rofi](https://github.com/davatorium/rofi)|
|**Notifications**|[dunst](https://github.com/dunst-project/dunst)|
|**Image viewer and "wallpaper setter"**|[feh](https://github.com/derf/feh)|
|**Brightness control**|[light](https://github.com/haikarainen/light)|
|**Music**|Server: [mpd](https://github.com/MusicPlayerDaemon/MPD), client: [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp). Optional control for polybar: [playerctl](https://github.com/altdesktop/playerctl).|
|**Screenshots**|[xclip](https://github.com/astrand/xclip), [scrot](https://github.com/dreamer/scrot)|
|**Text editor**|[VSCode]() (works with [VSCodium]()), [neovim]()|
|**Fonts**|[3270 Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/3270.zip), [Agave Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Agave.zip), [Open sans](https://fonts.google.com/specimen/Open+Sans#standard-styles)|
|**GTK Theme**|Yaru-dark [GTK3]|
|**Discord Theme**|[Better discord](https://github.com/BetterDiscord/BetterDiscord), [betterdiscordctl](https://github.com/bb010g/betterdiscordctl), [ClearVision](https://betterdiscord.app/theme/ClearVision)|

## Installation


<details>
<summary>Debian & Ubuntu (and all based distributions)</summary>
</br>

### Debian & Ubuntu (and all based distributions)
Install required packages.
```sh
sudo apt update -y
sudo apt upgrade -y
sudo apt install rofi polybar dunst i3 kitty feh light playerctl xclip scrot mpd ncmpcpp zsh -y
```
Make light executable.
```sh
sudo chmod +s /usr/bin/light
```
Install oh my zsh
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"uninstall_oh_my_zsh
```
Set zsh as default shell
```sh
chsh -s /bin/zsh
sudo chsh -s /bin/zsh
```
Run install.sh and select option install.
```sh
./install.sh
```
Install bettter discord
```sh
curl -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl
chmod +x betterdiscordctl
mv betterdiscordctl /usr/local/bin
betterdiscordctl --d-install snap install
```
Other way of better dicord installation
Install neovim theme
Install fonts
</details>
<details>
<summary>Other Linux distributions</summary>
</br>

### Other Linux distributions
Install required packages then run install.sh and select option install.
```sh
./install.sh
```
</details>

## Uninstallation

</details>
<details>
<summary>Debian & Ubuntu (and all based distributions)</summary>
</br>

### Debian & Ubuntu (and all based distributions)
Uninstall packages.
```sh
sudo apt remove rofi polybar dunst kitty feh light playerctl xclip scrot mpd ncmpcpp zsh -y
```
Clean packages.
```sh
sudo apt autoremove --purge -y
sudo apt clean -y
```
Uninstall oh my zsh
```sh
uninstall_oh_my_zsh
```
Run install.sh and select option uninstall.
```sh
./install.sh
```
</details>

</details>
<details>
<summary>Other Linux distributions</summary>
</br>

### Other Linux distributions
Uninstall  packages then run install.sh and select option uninstall.
```sh
./install.sh
```
</details>

#### Example