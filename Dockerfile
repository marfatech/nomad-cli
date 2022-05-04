FROM hendrikmaus/nomad-cli:1.2.3

WORKDIR /

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
