# Cargo test all
function cta --description 'cargo fmt, clippy and test all shorthand'
    cargo fmt --all -- --check $argv && \
    cargo clippy --workspace --all-targets --all-features -- -Dwarnings -Drust-2018-idioms -Adeprecated $argv && \
    cargo test --workspace --all-features $argv
end
