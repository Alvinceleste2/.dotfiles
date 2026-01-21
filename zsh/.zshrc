PROMPT="%B%F{red}%(?..%? )%f%b%B%F{blue}%n%f%b@%m %B%40<..<%~%<< %b%# "

## Completion settings

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' completer _expand_alias _complete _approximate
zstyle ':completion:*' special-dirs true
zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit
compinit

autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "$terminfo[kcuu1]" history-beginning-search-backward-end
bindkey "$terminfo[kcud1]" history-beginning-search-forward-end

## Misc settings

HISTFILE="$HOME/.histfile"
HISTSIZE=16000
SAVEHIST=16000

setopt autocd extendedglob
unsetopt beep

WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>'
WORDCHARS='${WORDCHARS:s@/@}'

## Aliases

alias ls='ls -lah --color'
alias l='ls -lah --color'
alias mosh='mosh --no-init'
alias cd..='cd ..'
#alias temp="cd $(mktemp -d -p $HOME/Temporary XXXXX)"

# Neovim config env

# alias nvim-new='NVIM_APPNAME=nvim-new nvim'
