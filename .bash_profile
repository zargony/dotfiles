#export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export PS1='\[\033[00;32m\]\u\[\033[00m\]@\[\033[00;36m\]\h\[\033[01m\]:\[\033[00;35m\]\w\[\033[00m\]\[\033[01;33m\]$(__git_ps1 " %s")\[\033[00m\]\$ '
export CLICOLOR=1
#export LSCOLORS="gxfxcxdxbxegedabagacad"
export EDITOR='subl -n -w'
export HISTCONTROL=erasedups
export LESS='-i -m -R'
export GREP_OPTIONS='--color=auto'
export PATH=$HOME/bin:$PATH

alias l='ls -la'
alias ri='ri -f ansi'
alias pwdc='pwd |pbcopy'

# Homebrew - http://github.com/mxcl/homebrew
BREW=$(PATH=~/.homebrew/bin:/usr/local/bin:/opt/homebrew /usr/bin/which brew)
if [ -n "$BREW" ]; then
	HOMEBREW=$($BREW --prefix)
	export PATH=$HOMEBREW/bin:$HOMEBREW/sbin:$HOMEBREW/share/npm/bin:$PATH
	. $HOMEBREW/etc/bash_completion
fi
unset BREW HOMEBREW

# Rbenv - https://github.com/sstephenson/rbenv
which rbenv >/dev/null && eval "$(rbenv init -)"
