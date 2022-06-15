FROM rustlang/rust:nightly AS builder
RUN cargo install wrangler
WORKDIR ./root
