# function to show current git branch and status in the prompt
git_info() {
  if git rev-parse --is-inside-work-tree &>/dev/null; then
    local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if ! git diff --quiet 2>/dev/null || ! git diff --cached --quiet 2>/dev/null; then
      echo " %F{green}‹${branch}%f %F{red}|!|%f%F{green}›%f"
    else
      echo " %F{green}‹${branch}›%f"
    fi
  fi
}

# enable command output inside prompt
setopt PROMPT_SUBST

# prompt
PROMPT='%F{blue}%B%~%b%f$(git_info) [%*]
%B%(!.#.$)%b '

# completion
autoload -Uz compinit
compinit

# colors
autoload -U colors && colors
export LS_COLORS="di=1;34"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select=1

# history
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

# aliases
export GPG_TTY=$(tty)

# yay
alias yeet="yay -Rn"
alias yeeet="yay -Rns"
alias yeet_useless="yay -Rns $(yay -Qtdq)"

# archives
alias tar_archive='tar -cvf'
alias untar_archive='tar -xvf'
alias targz_archive='tar -czvf'
alias untargz_archive='tar -xzvf'
alias tarbz2_archive='tar -cjvf'
alias untarbz2_archive='tar -xjvf'

# rsync
alias rsync_cp='rsync -ah --info=progress2'
alias rsync_cp_checksum='rsync -ahc --info=progress2'

# ls
alias ls='ls -h --color=auto'
alias la='ls -lA '
alias ll='ls -lA'

# cd
alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."
alias ........="cd ../../../.."

# lazy
alias nemo="nemo ."
alias files="nemo ."
alias c="clear" # I know about ctrl l etc.
alias g="git"
alias py="python3"
alias nv="nvim"
alias h="history|grep"

alias help="cat ~/.zshrc | less"
alias battery="upower -i $(upower -e | grep BAT)"
alias disk_usage="du -sh ./* | sort -hr"
alias logout="killall -KILL -u $USER"

# common mistakes
alias nemo.="nemo ."
alias files.="files ."
alias code.="code ."
