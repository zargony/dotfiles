#export PS1='\u@\h:\w\$ '
export PS1='\[\033[00;32m\]\u\[\033[00m\]@\[\033[00;36m\]\h\[\033[01m\]:\[\033[00;35m\]\w\[\033]0;\u@\h: \w\a\033[01;33m\]$(__git_ps1 " %s")\[\033[00m\]\$ '
export CLICOLOR=1
#export LSCOLORS="gxfxcxdxbxegedabagacad"
export EDITOR='subl -n -w'
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
	#eval "$(docker-machine env Docker-VM)"
	export DOCKER_TLS_VERIFY=1
	export DOCKER_HOST=tcp://192.168.99.100:2376
	export DOCKER_CERT_PATH=$HOME/.docker/machine/machines/Docker-VM
	export DOCKER_MACHINE_NAME=Docker-VM
fi
