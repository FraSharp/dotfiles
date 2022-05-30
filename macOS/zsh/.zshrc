# source .bashrc
source "${HOME}/.bashrc"

# Oh My Zsh path
export ZSH="/Users/francescoduca/.oh-my-zsh"

# zsh theme
ZSH_THEME="aub/aub"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Oh My Zsh plugins
plugins=(zsh-autosuggestions)

# source Oh My Zsh
source ${ZSH}/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
