# source bash_prompt
source ~/.bash_prompt;

# init cargo
. "${HOME}/.cargo/env"

# user exports
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-17.0.1.jdk/Contents/Home"
export PATH="${HOME}/Downloads/platform-tools:${PATH}"
export PATH="${HOME}/.spicetify:${PATH}"
export PATH="/opt/homebrew/opt/llvm@13/bin:/opt/homebrew/Cellar/llvm/13.0.1_1/bin:${PATH}"
export PATH="/usr/local/bin:${HOME}/.local/bin/:${PATH}"
export PATH="/opt/homebrew/opt/php@8.2/bin:${PATH}"
export PATH="/opt/homebrew/opt/php@8.2/sbin:${PATH}"

# user aliases
alias arigram="python3 -m arigram"
alias ls="lsd"
alias ll="lsd -a"
alias l="lsd -l"

# symlink nvim to vim
if [ ! -f /usr/local/bin/vim ]; then
	kos ln -s $(which nvim) /usr/local/bin/vim
fi
