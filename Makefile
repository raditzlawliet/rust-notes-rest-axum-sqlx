.DEFAULT_GOAL := help

.PHONY: help build run run-release watch check test fmt clippy clean \
	install-watch install-sqlx-cli migrate-add migrate-run migrate-revert

NAME ?= create_notes_table

help:
	@echo "Rust Notes REST API - Make targets"
	@echo ""
	@echo "  make build          Build project"
	@echo "  make run            Run project"
	@echo "  make run-release    Run with release profile"
	@echo "  make watch          Run with cargo-watch"
	@echo "  make install-watch	 Install watcher"
	@echo ""
	@echo "SQLx Migration"
	@echo "  make install-sqlx-cli"
	@echo "  make migrate-add NAME=create_notes_table"
	@echo "  make migrate-run"
	@echo "  make migrate-revert"

build:
	cargo build

run:
	cargo run

run-release:
	cargo run --release

watch:
	cargo watch -q -c -w src/ -x run

install-watch:
	cargo install cargo-watch

install-sqlx-cli:
	cargo install sqlx-cli

migrate-add:
	sqlx migrate add -r $(NAME)

migrate-run:
	sqlx migrate run

migrate-revert:
	sqlx migrate revert
