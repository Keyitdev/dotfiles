ZSH="/usr/share/oh-my-zsh/"
export ZSH="/usr/share/oh-my-zsh/"
ZSH_THEME="keyitdev"
plugins=(git)

ZSH_CACHE_DIR="$HOME/.cache/oh-my-zsh"
if [[ ! -d "$ZSH_CACHE_DIR" ]]; then
  mkdir "$ZSH_CACHE_DIR"
fi

source "$ZSH"/oh-my-zsh.sh

alias yeet="yay -Rn"
alias yeeet="yay -Rns"
alias yeet_useless="yay -Rns $(yay -Qtdq)"

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
alias logout="killall -KILL -u $USER"
alias files="nemo"
alias files.="nemo ."
alias help="cat ~/.zshrc | less"

# cd
alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."
alias ........="cd ../../../.."
