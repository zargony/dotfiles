set -gx EDITOR vim
set -gx LANG en_US.UTF-8
set -gx LESS -i -R
set -gx PATH /usr/local/sbin /usr/local/bin $PATH

# Homebrew
if test -d /opt/homebrew/bin
    set -gx PATH /opt/homebrew/sbin /opt/homebrew/bin $PATH
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
