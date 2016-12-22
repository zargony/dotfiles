export EDITOR='vim'
export PATH=$HOME/.local/bin:$PATH

# Homebrew completions
[[ -d /usr/local/Homebrew/completions/zsh ]] && fpath=(/usr/local/Homebrew/completions/zsh $fpath)

# Rust - https://www.rustup.rs/
[[ -f $HOME/.cargo/env ]] && source $HOME/.cargo/env

# Ruby (rbenv and ruby-build)
if [[ -n "$(whence -p rbenv)" ]]; then
	export RBENV_ROOT=/usr/local/var/rbenv
	eval "$(rbenv init -)"
fi

# Node.js (nvm)
if [[ -f /usr/local/opt/nvm/nvm.sh ]]; then
	export NVM_DIR=$HOME/.nvm
	node() { unfunction node npm && source /usr/local/opt/nvm/nvm.sh && `whence -p node $*` }
	npm() { unfunction node npm && source /usr/local/opt/nvm/nvm.sh && `whence -p npm $*` }
	nvm() { source /usr/local/opt/nvm/nvm.sh && nvm $* }
fi
