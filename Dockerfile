FROM debian:jessie-slim

RUN apt-get update \
    && apt-get install -y curl \
    && rm -rf /var/lib/apt/lists/*

ENV HOME /home

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

ENV PATH $HOME/.cargo/bin:$PATH

WORKDIR /work
USER worker

CMD ["bash"]
