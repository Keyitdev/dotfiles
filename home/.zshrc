autoload -U colors && colors

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

setopt PROMPT_SUBST

PROMPT='%F{blue}%B%~%b%f$(git_info) [%*]
%B%(!.#.$)%b '

autoload -Uz compinit
compinit

export LS_COLORS="di=1;34"
alias ls='ls --color=auto'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select=1

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
