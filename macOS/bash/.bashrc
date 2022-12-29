# source bash_prompt
source ~/.bash_prompt;

export ZSH=$HOME/.zsh

# init cargo
. "${HOME}/.cargo/env"

# homebrew path
HB="$(brew --prefix)/opt"

# user exports
export JAVA_HOME="${HOME}/Library/Java/JavaVirtualMachines/openjdk-19.0.1/Contents/Home"
export PATH="${HOME}/Downloads/platform-tools:${PATH}"
export PATH="${HOME}/.spicetify:${PATH}"
export PATH="/usr/local/bin:${HOME}/.local/bin:${PATH}"
export PATH="${HB}/php/bin:${PATH}"
export PATH="${HB}/php/sbin:${PATH}"
export PATH="${HB}/ruby/bin:${PATH}"
export PATH="${HB}/lib/ruby/gems/3.1.0/gems/completely-0.4.2/bin:${PATH}"
export PATH="${HB}/curl/bin:${PATH}"
export PATH="${HB}/llvm/bin:${PATH}"
export PKG_CONFIG_PATH="${HB}/libxcrypt/lib/pkgconfig"

# /usr/include
export CPATH=`xcrun --show-sdk-path`/usr/include

# user variables
#
# homebrew security options
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha

# user aliases
alias ls="lsd"
alias ll="lsd -a"
alias l="lsd -l"
alias clear="clear;pfetch"
alias python="python3"
alias openssl="${HB}/openssl/bin/openssl"
alias clang="${HB}/llvm/bin/clang"
alias lld="${HB}/llvm/bin/lld"
alias zsh="zsh;source $HOME/.zsh/.zshrc"

# fetch tool
pfetch
