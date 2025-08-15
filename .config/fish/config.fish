set -gx EDITOR vim
set -gx LANG en_US.UTF-8
set -gx LESS -i -R
set -gx PATH /usr/local/sbin /usr/local/bin $PATH

# Homebrew -- https://brew.sh/
if test -x /opt/homebrew/bin/brew
    eval "$(/opt/homebrew/bin/brew shellenv)"
end

# Rust -- https://rustup.rs/
if test -x $HOME/.cargo/bin
    set -gx PATH $HOME/.cargo/bin $PATH
end

# Rust sccache -- https://github.com/mozilla/sccache
if test -x /opt/homebrew/bin/sccache
    set -gx RUSTC_WRAPPER /opt/homebrew/bin/sccache
end

# Starship prompt -- https://starship.rs/
if test -x /opt/homebrew/bin/starship
    /opt/homebrew/bin/starship init fish | source
end

# Difftastic -- https://github.com/Wilfred/difftastic
if test -x /opt/homebrew/bin/difft
    # set -gx DFT_DISPLAY inline
    # set -gx GIT_EXTERNAL_DIFF difft
    set -gx KUBECTL_EXTERNAL_DIFF difft
end

# Krew kubectl plugin manager -- https://krew.sigs.k8s.io/
if test -x /opt/homebrew/bin/kubectl-krew
    set -gx PATH $PATH $HOME/.krew/bin
end
