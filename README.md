# rust-rweb-openapi

RWeb with openapi

# Local

    cargo run

or

    curl -sL https://github.com/humbertodias/rust-rweb-openapi/releases/download/v0.1/rust-rweb-openapi_v0.1_x86_64-unknown-linux-musl.tar.gz | tar xz && ./rust-rweb-openapi

Then

http://localhost:3030/docs

## Docker

Build

    docker build . -t rweb-openapi

Run

    docker run -p 3030:3030 rweb-openapi

Then

http://localhost:3030/docs
