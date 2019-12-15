set -gx EDITOR vim
set -gx LANG en_US.UTF-8
set -gx PATH $HOME/.local/bin $PATH

# Starship prompt - https://starship.rs/
if test -x /usr/local/bin/starship
    /usr/local/bin/starship init fish |source
end

# Rust - https://www.rustup.rs/
if test -x $HOME/.cargo/bin
    set -gx PATH $HOME/.cargo/bin $PATH
end

# Rust sccache - https://github.com/mozilla/sccache/
if test -x /usr/local/bin/sccache
    set -gx RUSTC_WRAPPER /usr/local/bin/sccache
end

# Homebrew OpenSSL
#if test -d /usr/local/opt/openssl
#    set -gx OPENSSL_LIB_DIR /usr/local/opt/openssl/lib
#    set -gx OPENSSL_INCLUDE_DIR /usr/local/opt/openssl/include
#end
