Current Development Stack

- rustc 1.73.0
- cargo 1.73.0

```sh
# Init Project
cargo init raditzlawliet_rust-note-rest

# Depedency
cargo add axum
cargo add tokio -F full
cargo add tower-http -F "cors"
cargo add serde_json
cargo add serde -F derive
cargo add chrono -F serde
cargo add dotenv
cargo add uuid -F "serde v4"
cargo add sqlx --features "runtime-async-std-native-tls mysql chrono uuid"

# Build & Run Project
cargo build
cargo run

# CLI For Watch source when running & Automatically rebuild the project
cargo install cargo-watch

# Run with watch
cargo watch -q -c -w src/ -x run


# Docker Compose up & detach
docker-compose up -d

# Shutdown docker compose
docker-compose down



```
