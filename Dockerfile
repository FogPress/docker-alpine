FROM alpine

ENV TINI_VERSION=0.16.1
ADD https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-muslc-amd64 /tini
RUN chmod +x /tini
ENTRYPOINT ["/tini", "--"]

RUN set -ex; \
    \
    apk add --no-cache \
        su-exec
