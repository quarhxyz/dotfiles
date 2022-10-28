export PATH=$HOME/bin:/usr/local/bin:/snap/bin:/opt/bin:$HOME/.local/bin:$PATH
export ZSH=$HOME/.zsh
export HISTFILE=$ZSH/zsh_history
export HISTSIZE=1000
export SAVEHIST=1000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=($ZSH/plugins/zsh-completions/src $fpath)

alias v='nvim'
alias ls='ls --color=auto -F'
alias ll='ls --color=auto -Flah --group-directories-first'

PROMPT='%F{208}%n%f in %F{226}%~%f -> '

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
