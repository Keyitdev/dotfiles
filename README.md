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
|**X11 walpaper**|[feh](https://github.com/derf/feh)|
|**Brightness control**|[light](https://github.com/haikarainen/light)|
|**Music**|Server: [mpd](https://github.com/MusicPlayerDaemon/MPD), client: [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp), [spotify](https://www.spotify.com). Optional control for polybar : [playerctl](https://github.com/altdesktop/playerctl).|
|**Spotify theme**|
|**Screenshots**|[xclip](https://github.com/astrand/xclip), [scrot](https://github.com/dreamer/scrot)|
|**Text editor**|[VSCode](https://github.com/Microsoft/vscode) (works with [VSCodium](https://vscodium.com/)), [neovim](https://github.com/neovim/neovim)|
|**VSC theme**|
|**Neovim theme**|[NvChad](https://github.com/NvChad/NvChad)
|**Fonts**|[Feather](https://github.com/AT-UI/feather-font/blob/master/src/fonts/feather.ttf), [Isovaka Nerd Font](https://www.nerdfonts.com/), [Open sans](https://fonts.google.com/specimen/Open+Sans#standard-styles)|
|**GTK icons**|[Papirus](shttps://github.com/PapirusDevelopmentTeam/papirus-icon-theme)|
|**Discord Theme**|[Better discord](https://github.com/BetterDiscord/BetterDiscord), [betterdiscordctl](https://github.com/bb010g/betterdiscordctl), [Nord-Glasscord](https://github.com/YottaGitHub/Nord-Glasscord)|

## Installation


<details>
<summary>Debian & Ubuntu (and all based distributions)</summary>
</br>

### Debian & Ubuntu (and all based distributions)
Install required packages.
```sh
sudo apt update -y
sudo apt upgrade -y
sudo apt install i3 i3-gaps kitty zsh polybar rofi dunst feh mpd ncmpcpp light playerctl xclip scrot papirus-icon-theme -y
sudo apt-get install neovim -y
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
Install NvChad
```sh
git clone git@github.com:NvChad/NvChad.git ~/.config/nvim --depth 10 && nvim +PackerSync
```
Install bettter discord
```sh
curl -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl
chmod +x betterdiscordctl
mv betterdiscordctl /usr/local/bin
betterdiscordctl --d-install snap install
```
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

spotify theme isntall
config folder
big thanks
screenshots script
battery low
vol and other notifigations
Install fonts
wallpapers
firefox


polybar toroto
adi
wallpaper

https://github.com/Alexander-Miller/dotfiles/blob/master/.config/ncmpcpp/config