export HISTCONTROL=erasedups
#export PS1='\u@\h:\w\$ '
export PS1='\[\033[00;32m\]\u\[\033[00m\]@\[\033[00;36m\]\h\[\033[01m\]:\[\033[00;35m\]\w\[\033]0;\u@\h: \w\a\033[01;33m\]$(__git_ps1 " %s")\[\033[00m\]\$ '

export CLICOLOR=1
export EDITOR='vim'
export GREP_OPTIONS='--color=auto'
export LESS='-i -m -R'
#export LSCOLORS="gxfxcxdxbxegedabagacad"

# Private local bin path
export PATH=$HOME/.local/bin:$PATH

# Useful aliases
alias l='ls -la'

# Rust - https://www.rustup.rs/
[[ -f $HOME/.cargo/env ]] && source $HOME/.cargo/env

# Bash-completion
[[ -f /opt/homebrew/etc/bash_completion ]] && source /opt/homebrew/etc/bash_completion
