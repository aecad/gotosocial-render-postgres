FROM superseriousbusiness/gotosocial:latest


ENV GOTTY_BINARY https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_386.tar.gz

RUN wget $GOTTY_BINARY -O gotty.tar.gz && \
    tar -xzf gotty.tar.gz -C /gotosocial/ && \
    rm gotty.tar.gz && \
    chmod +x /gotosocial/gotty

# ENTRYPOINT [ "/gotosocial/gotosocial", "server", "start" ]

ENTRYPOINT ["sh", "-c"]
CMD ["/gotosocial/gotty --port ${PORT:-3000} --permit-write  /bin/sh"]
