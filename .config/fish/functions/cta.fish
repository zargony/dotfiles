function cta --description 'cargo fmt, clippy and test all shorthand'
    cargo fmt --all -- --check $argv && \
    #cargo clippy --workspace --all-targets --all-features -- --deny warnings --allow deprecated $argv && \
    cargo clippy --workspace --all-targets --all-features -- $argv && \
    cargo test --workspace --all-targets --all-features $argv
end
