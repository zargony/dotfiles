set -gx EDITOR vim
set -gx LANG en_US.UTF-8
set -gx PATH $HOME/.local/bin /usr/local/sbin /usr/local/bin $PATH

# Homebrew
if test -d /opt/homebrew/bin
    set -gx PATH /opt/homebrew/bin $PATH
end

# Homebrew OpenSSL
if test -d /opt/homebrew/opt/openssl@1.1
    set -gx OPENSSL_DIR /opt/homebrew/opt/openssl@1.1
    set -gx OPENSSL_LIB_DIR $OPENSSL_DIR/lib
    set -gx OPENSSL_INCLUDE_DIR $OPENSSL_DIR/include
    set -gx PKG_CONFIG_PATH $OPENSSL_DIR/lib/pkgconfig $PKG_CONFIG_PATH
end

# Rust - https://www.rustup.rs/
if test -x $HOME/.cargo/bin
    set -gx PATH $HOME/.cargo/bin $PATH
end

# Rust sccache - https://github.com/mozilla/sccache/
if test -x /opt/homebrew/bin/sccache
    set -gx RUSTC_WRAPPER /opt/homebrew/bin/sccache
end

# Starship prompt - https://starship.rs/
if test -x /opt/homebrew/bin/starship
    /opt/homebrew/bin/starship init fish | source
end
