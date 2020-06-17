# Cargo test all
function cta
    cargo fmt --all -- --check && \
    cargo clippy --all --all-targets --all-features -- -Dwarnings -Drust-2018-idioms -Adeprecated && \
    cargo test --all
end
