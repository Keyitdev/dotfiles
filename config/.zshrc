export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bira"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# pacman 
alias pacrem="sudo pacman -Rn"
alias pacrema="sudo pacman -Rns"
alias pacupd="sudo pacman -Syyy"
alias pacupg="sudo pacman -Syu"
alias paccl="sudo pacman -Rns $(pacman -Qtdq)"

alias yayrem="yay -Rn"
alias yayrema="yay -Rns"
alias yayupd="yay -Syyy"
alias yayupg="yay -Syu"
alias yaycl="yay -Rns $(yay -Qtdq)"

# git
alias g="git"
alias gad="git add --all"
alias gcm="git commit -m"
alias gcms="git commit -S -m"
alias gph="git push"
alias gpl="git pull"
alias gcl="git clone"
alias gin="git init"

alias gst="git status"
alias glg="git log -n 5"
alias glgr="git reflog"
alias gdf="git diff"

alias gbr="git branch"
alias gsw="git switch"
alias gch="git checkout"
alias gra="git remote add origin git@github.com:"
alias grs="git remote set-url origin git@github.com:"

# other
alias nv="nvim"
alias la="ls -alF"
alias h="history|grep"
alias c="clear" # I know about ctrl l etc.
alias logout="killall -KILL -u key_user"
alias files="nautilus"
alias helpme="cat ~/.zshrc | less"

# cd
alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."
alias ........="cd ../../../.."