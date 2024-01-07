export EDITOR="vim"
export LANG="en_US.UTF-8"

# Useful aliases
alias k="kubectl"
alias ksh="kubectl run -i -t --rm --image=alpine --restart=Never shell"
alias l="eza --color=auto --color-scale -la"

# Homebrew
[[ -d /opt/homebrew/bin ]] && export PATH=/opt/homebrew/bin:$PATH

# Rust - https://www.rustup.rs/
[[ -d $HOME/.cargo/bin ]] && export PATH=$HOME/.cargo/bin:$PATH

# Rust sccache - https://github.com/mozilla/sccache/
[[ -x /opt/homebrew/bin/sccache ]] && export RUSTC_WRAPPER=/opt/homebrew/bin/sccache

# Starship prompt - https://starship.rs/
[[ -x /opt/homebrew/bin/starship ]] && eval "$(/opt/homebrew/bin/starship init zsh)"
