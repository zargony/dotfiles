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
[[ -d /usr/local/opt/openssl@1.1/lib ]] && export OPENSSL_LIB_DIR=/usr/local/opt/openssl@1.1/lib
[[ -d /usr/local/opt/openssl@1.1/include ]] && export OPENSSL_INCLUDE_DIR=/usr/local/opt/openssl@1.1/include
