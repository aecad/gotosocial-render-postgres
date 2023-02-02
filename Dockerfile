FROM superseriousbusiness/gotosocial:latest


ENV GOTTY_BINARY https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_386.tar.gz

RUN wget $GOTTY_BINARY -O gotty.tar.gz && \
    tar -xzf gotty.tar.gz -C /usr/local/bin/ && \
    rm gotty.tar.gz && \
    chmod +x /usr/local/bin/gotty

# ENTRYPOINT [ "/gotosocial/gotosocial", "server", "start" ]

ENTRYPOINT ["sh", "-c"]
CMD ["/usr/local/bin/gotty --port ${PORT:-3000} --permit-write  /bin/sh"]
