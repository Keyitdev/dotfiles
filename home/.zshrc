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

zmodload zsh/datetime
preexec() {
  TIMER_START=$EPOCHREALTIME
}

precmd() {
  if [[ -n $TIMER_START ]]; then
    local elapsed=$(printf "%.4f" "$(echo "$EPOCHREALTIME - $TIMER_START" | bc)")

    if (( $(echo "$elapsed > 0.0001" | bc -l) )); then
      if (( $(echo "$elapsed < 1" | bc -l) )); then
        CMD_TIME="$(printf '%.2f' "$(echo "$elapsed * 1000" | bc)")ms"
      else
        CMD_TIME="$(printf '%.2f' "$elapsed")s"
      fi
    else
      CMD_TIME=""
    fi

    unset TIMER_START
  fi
}

# prompt
# PROMPT='%F{blue}%B%~%b%f$(git_info) [%*]
# %B%(!.#.$)%b '

PROMPT='%F{green}%B%n@%m%f%b %F{blue}%B%~%b%f$(git_info) [%*]
%B%(!.#.$)%b '

RPROMPT='%F{yellow}${CMD_TIME}%f'

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
export TERM=xterm-256color # helps with ssh connections
export TERMINAL=kitty

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
alias ff="fastfetch"
alias h="history|grep"
alias sudoo="sudo DISPLAY=$DISPLAY WAYLAND_DISPLAY=$WAYLAND_DISPLAY XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR GTK_THEME=gtk-dark-keyitdev:dark"

alias help="cat ~/.zshrc | less"
alias battery="upower -i $(upower -e | grep BAT)"
alias disk_usage="du -sh ./* | sort -hr"
alias logout="killall -KILL -u $USER"

# common mistakes
bindkey "^[[3~" delete-char
alias nemo.="nemo ."
alias files.="files ."
alias code.="code ."
alias kilall="killall"