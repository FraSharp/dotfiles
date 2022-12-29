# source .bashrc
source "${HOME}/.bashrc"

# zsh path
export ZSH=$HOME/.zsh

# load compinit
autoload -Uz compinit

# plugins
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=($ZSH/plugins/zsh-completions/src $fpath)
rm -f ~/.zcompdump; compinit
# end plugins

# history
export HISTFILE=$ZSH/.zsh_history
export HISTSIZE=20000
export SAVEHIST=20000
setopt APPENDHISTORY
setopt SHAREHISTORY
setopt INCAPPENDHISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
# end history

# zsh prompt
PROMPT="ariel @ %1~/ %# "

# language
export LANG=en_US.UTF-8

# pfetch
export PF_INFO="ascii title os host kernel wm pkgs memory"

# for colors
export COLORTERM=truecolor
