FROM bash:4.4
RUN apt-get update
RUN apt-get install curl
RUN apt-get install jq
COPY test.sh /

# ENTRYPOINT [ "bash", "/test.sh" ]