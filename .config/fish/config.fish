set -gx EDITOR vim
set -gx PATH $HOME/.local/bin $PATH

# Homebrew OpenSSL
if test -d /usr/local/opt/openssl
    set -gx OPENSSL_LIB_DIR /usr/local/opt/openssl/lib
    set -gx OPENSSL_INCLUDE_DIR /usr/local/opt/openssl/include
end

# Rust - https://www.rustup.rs/
if test -x $HOME/.cargo/bin
    set -gx PATH $HOME/.cargo/bin $PATH
end

# Rust sccache - https://github.com/mozilla/sccache/
if test -x $HOME/.cargo/bin/sccache
    set -gx RUSTC_WRAPPER $HOME/.cargo/bin/sccache
end
