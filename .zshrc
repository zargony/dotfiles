export EDITOR="vim"
export LANG="en_US.UTF-8"

alias k="kubectl"
alias ksh="kubectl run -i -t --rm --image=alpine --restart=Never shell"
alias l="exa --color=auto --color-scale -la"
alias ll="exa --color=auto --color-scale -la"
alias docker-host-sh="docker run -i -t --rm --privileged --pid=host busybox nsenter -t1 -m -u -i -n"
#alias cta="cargo fmt --all -- --check && cargo clippy --workspace --all-targets --all-features -- --deny warnings --allow deprecated && cargo test --workspace --all-features"
alias cta="cargo fmt --all -- --check && cargo clippy --workspace --all-targets --all-features && cargo test --workspace --all-features"

# Homebrew
[[ -d /opt/homebrew/bin ]] && export PATH=/opt/homebrew/bin:$PATH

# Rust - https://www.rustup.rs/
[[ -d $HOME/.cargo/bin ]] && export PATH=$HOME/.cargo/bin:$PATH

# Rust sccache - https://github.com/mozilla/sccache/
[[ -x /opt/homebrew/bin/sccache ]] && export RUSTC_WRAPPER=/opt/homebrew/bin/sccache

# Starship prompt - https://starship.rs/
[[ -x /opt/homebrew/bin/starship ]] && eval "$(/opt/homebrew/bin/starship init zsh)"

# Homebrew completions
[[ -d /opt/homebrew/completions/zsh ]] && fpath=(/opt/homebrew/completions/zsh $fpath)
