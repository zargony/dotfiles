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

# Point docker client to boot2docker VM (boot2docker shellinit)
export DOCKER_CERT_PATH=$HOME/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376

# Useful aliases
alias l='ls -la'
alias ri='ri -f ansi'
alias pwdc='pwd |pbcopy'

# Homebrew - http://brew.sh/
BREW=$(PATH=~/.homebrew/bin:/usr/local/bin:/opt/homebrew /usr/bin/which brew)
if [ -n "$BREW" ]; then
	HOMEBREW=$($BREW --prefix)
	export PATH=$HOMEBREW/bin:$HOMEBREW/sbin:$PATH

	# Bash-completion
	. $HOMEBREW/etc/bash_completion

	# Node.js
	export PATH=$HOMEBREW/share/npm/bin:$PATH

	# Rbenv and ruby-build
	export RBENV_ROOT=$HOMEBREW/var/rbenv
	which rbenv >/dev/null && eval "$(rbenv init -)"
fi
unset BREW HOMEBREW
