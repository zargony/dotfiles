export EDITOR='vim'
export PATH=$HOME/.local/bin:$PATH

# Homebrew completions
[[ -d /usr/local/Homebrew/completions/zsh ]] && fpath=(/usr/local/Homebrew/completions/zsh $fpath)

# Homebrew OpenSSL
[[ -d /usr/local/opt/openssl/lib ]] && export OPENSSL_LIB_DIR=/usr/local/opt/openssl/lib
[[ -d /usr/local/opt/openssl/include ]] && export OPENSSL_INCLUDE_DIR=/usr/local/opt/openssl/include

# Rust - https://www.rustup.rs/
[[ -f $HOME/.cargo/env ]] && source $HOME/.cargo/env

# Node.js (nvm)
if [[ -f /usr/local/opt/nvm/nvm.sh ]]; then
	export NVM_DIR=$HOME/.nvm
	node() { unfunction node npm && source /usr/local/opt/nvm/nvm.sh && `whence -p node $*` }
	npm() { unfunction node npm && source /usr/local/opt/nvm/nvm.sh && `whence -p npm $*` }
	nvm() { source /usr/local/opt/nvm/nvm.sh && nvm $* }
fi
