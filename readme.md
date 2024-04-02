## CRUD REST API with Rust 🦀and MySQL using Axum & SQLx
This repository is for medium article: https://medium.com/@raditzlawliet/build-crud-rest-api-with-rust-and-mysql-using-axum-sqlx-d7e50b3cd130

### Current Stack Version

- rustc 1.77.0
- cargo 1.77.0

### How to...
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


# CLI For migration
cargo install sqlx-cli

# create a migration
sqlx migrate add -r create_notes_table

# perform migration up
sqlx migrate run

# perform migration down/revert (optional)
sqlx migrate revert
```
