FROM bash:4.4

COPY test.sh

ENTRYPOINT [ "bash", "test.sh" ]