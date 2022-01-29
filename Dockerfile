FROM bash:4.4

COPY test.sh /

CMD ["bash", "/test.sh"]