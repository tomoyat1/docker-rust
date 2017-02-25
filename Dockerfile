FROM debian:jessie-slim

RUN apt-get update \
    && apt-get install -y curl \
    && curl https://sh.rustup.rs -sSf | sh -s -- -y \
    && rm -rf /var/lib/apt/lists/*

ENV PATH $HOME/.cargo/bin:$PATH

WORKDIR /work

CMD ["bash"]
