export EDITOR="vim"
export GREP_OPTIONS="--color=auto"
export LANG="en_US.UTF-8"
export LESS="-i -R"

# Useful aliases
alias k="kubectl"
alias ksh="kubectl run -i -t --rm --image=alpine --restart=Never shell"
alias l="eza --color=auto --color-scale -la"

# Homebrew -- https://brew.sh/
[[ -x /opt/homebrew/bin/brew ]] && eval "$(/opt/homebrew/bin/brew shellenv)"

# Rust -- https://rustup.rs/
[[ -d $HOME/.cargo/bin ]] && export PATH=$HOME/.cargo/bin:$PATH

# Rust sccache -- https://github.com/mozilla/sccache
[[ -x /opt/homebrew/bin/sccache ]] && export RUSTC_WRAPPER=/opt/homebrew/bin/sccache

# Starship prompt -- https://starship.rs/
[[ -x /opt/homebrew/bin/starship ]] && eval "$(/opt/homebrew/bin/starship init zsh)"

# Difftastic -- https://github.com/Wilfred/difftastic
if [ -x /opt/homebrew/bin/difft ]; then
    # export DFT_DISPLAY=inline
    # export GIT_EXTERNAL_DIFF=difft
    export KUBECTL_EXTERNAL_DIFF=difft
fi
