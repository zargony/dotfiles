export CLICOLOR=1
export HISTCONTROL=erasedups
#export PS1='\u@\h:\w\$ '
export PS1='\[\033[00;32m\]\u\[\033[00m\]@\[\033[00;36m\]\h\[\033[01m\]:\[\033[00;35m\]\w\[\033]0;\u@\h: \w\a\033[01;33m\]$(__git_ps1 " %s")\[\033[00m\]\$ '

export EDITOR='vim'
export LANG='en_US.UTF-8'
export LESS='-i -R'

# Useful aliases
alias k='kubectl'
alias kpsql='kubectl -n core exec deployment/postgres -i -t -- psql -U postgres'
alias krew='kubectl krew'
alias ksh='kubectl run -i -t --rm --image=alpine --restart=Never shell'
alias l='eza --color=auto --color-scale -la'

# Homebrew -- https://brew.sh/
[[ -x /opt/homebrew/bin/brew ]] && eval "$(/opt/homebrew/bin/brew shellenv)"

# Rust -- https://rustup.rs/
[[ -d $HOME/.cargo/bin ]] && export PATH=$HOME/.cargo/bin:$PATH

# Rust sccache -- https://github.com/mozilla/sccache
[[ -x /opt/homebrew/bin/sccache ]] && export RUSTC_WRAPPER=/opt/homebrew/bin/sccache

# Starship prompt -- https://starship.rs/
[[ -x /opt/homebrew/bin/starship ]] && eval "$(/opt/homebrew/bin/starship init bash)"

# Difftastic -- https://github.com/Wilfred/difftastic
if [ -x /opt/homebrew/bin/difft ]; then
    # export DFT_DISPLAY=inline
    # export GIT_EXTERNAL_DIFF=difft
    export KUBECTL_EXTERNAL_DIFF=difft
fi

# Krew kubectl plugin manager -- https://krew.sigs.k8s.io/
if [ -x /opt/homebrew/bin/kubectl-krew ]; then
    export PATH=$PATH:$HOME/.krew/bin
end
