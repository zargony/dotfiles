export EDITOR='vim'
export PATH=$HOME/.local/bin:$PATH

# Starship prompt - https://starship.rs/
[[ -x /usr/local/bin/starship ]] && eval "$(/usr/local/bin/starship init zsh)"

# Rust - https://www.rustup.rs/
[[ -f $HOME/.cargo/env ]] && source $HOME/.cargo/env

# Rust sccache - https://github.com/mozilla/sccache/
[[ -x /usr/local/bin/sccache ]] && export RUSTC_WRAPPER=/usr/local/bin/sccache

# Homebrew completions
[[ -d /usr/local/Homebrew/completions/zsh ]] && fpath=(/usr/local/Homebrew/completions/zsh $fpath)

# Homebrew OpenSSL
#[[ -d /usr/local/opt/openssl/lib ]] && export OPENSSL_LIB_DIR=/usr/local/opt/openssl/lib
#[[ -d /usr/local/opt/openssl/include ]] && export OPENSSL_INCLUDE_DIR=/usr/local/opt/openssl/include

# Node.js (nvm)
if [[ -f /usr/local/opt/nvm/nvm.sh ]]; then
	export NVM_DIR=$HOME/.nvm
	node() { unfunction node npm npx && source /usr/local/opt/nvm/nvm.sh && `whence -p node` $* }
	npm() { unfunction node npm npx && source /usr/local/opt/nvm/nvm.sh && `whence -p npm` $* }
	npx() { unfunction node npm npx && source /usr/local/opt/nvm/nvm.sh && `whence -p npx` $* }
	nvm() { source /usr/local/opt/nvm/nvm.sh && nvm $* }
fi
