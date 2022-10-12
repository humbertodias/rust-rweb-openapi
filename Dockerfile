FROM rust:alpine3.16 AS builder
RUN apk add musl-dev --no-cache
WORKDIR /src
COPY . .
RUN rustup target add x86_64-unknown-linux-gnu
RUN RUSTFLAGS='-C target-feature=+crt-static' cargo build --release --target x86_64-unknown-linux-gnu

FROM alpine:3.16
WORKDIR /app
COPY --from=builder /src/target/x86_64-unknown-linux-gnu/release/rust-rweb-openapi .
ENTRYPOINT [ "./rust-rweb-openapi" ]
EXPOSE 3030