#export PS1='\u@\h:\w\$ '
export PS1='\[\033[00;32m\]\u\[\033[00m\]@\[\033[00;36m\]\h\[\033[01m\]:\[\033[00;35m\]\w\[\033]0;\u@\h: \w\a\033[01;33m\]$(__git_ps1 " %s")\[\033[00m\]\$ '
export CLICOLOR=1
#export LSCOLORS="gxfxcxdxbxegedabagacad"
export EDITOR='atom -n -w'
export HISTCONTROL=erasedups
export LESS='-i -m -R'
export GREP_OPTIONS='--color=auto'

# Add private bin directory to search paths
export PATH=$HOME/bin:$PATH

# Useful aliases
alias l='ls -la'
alias ri='ri -f ansi'
alias pwdc='pwd |pbcopy'

# Homebrew - http://brew.sh/
if [ -n "$(which brew)" ]; then
	HOMEBREW=$(brew --prefix)
	export PATH=$HOMEBREW/bin:$HOMEBREW/sbin:$PATH

	# Bash-completion
	. $HOMEBREW/etc/bash_completion

	# Node.js
	export PATH=$HOMEBREW/share/npm/bin:$PATH

	# Rbenv and ruby-build
	if [ -n "$(which rbenv)" ]; then
		export RBENV_ROOT=$(brew --prefix)/var/rbenv
		eval "$(rbenv init -)"
	fi
fi
unset HOMEBREW

# Point docker client to local vm if present
if [ -n "$(which docker-machine)" ]; then
	eval "$(docker-machine env Docker-VM)"
fi
