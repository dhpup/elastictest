FROM bash:4.4
RUN apk add --no-cache jq
RUN apk add --no-cache curl
# COPY test.sh /

# ENTRYPOINT [ "bash", "/test.sh" ]