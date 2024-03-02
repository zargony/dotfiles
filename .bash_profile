export CLICOLOR=1
export HISTCONTROL=erasedups
#export PS1='\u@\h:\w\$ '
export PS1='\[\033[00;32m\]\u\[\033[00m\]@\[\033[00;36m\]\h\[\033[01m\]:\[\033[00;35m\]\w\[\033]0;\u@\h: \w\a\033[01;33m\]$(__git_ps1 " %s")\[\033[00m\]\$ '

export EDITOR='vim'
export GREP_OPTIONS='--color=auto'
export LANG='en_US.UTF-8'
export LESS='-i -R'

# Useful aliases
alias k='kubectl'
alias ksh='kubectl run -i -t --rm --image=alpine --restart=Never shell'
alias l='eza --color=auto --color-scale -la'

# Homebrew
[[ -d /opt/homebrew/bin ]] && export PATH=/opt/homebrew/sbin:/opt/homebrew/bin:$PATH

# Rust - https://www.rustup.rs/
[[ -d $HOME/.cargo/bin ]] && export PATH=$HOME/.cargo/bin:$PATH
