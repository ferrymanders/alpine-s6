ARG ALPINE=3.16

FROM alpine:${ALPINE}

ARG S6_OVERLAY_VERSION=3.1.2.1

RUN export ARCH=$(uname -m) \
    && wget -qO /tmp/s6-overlay-noarch.tar.xz \
            https://github.com/just-containers/s6-overlay/releases/download/v${S6_OVERLAY_VERSION}/s6-overlay-noarch.tar.xz \
    && wget -qO /tmp/s6-overlay-${ARCH}.tar.xz \
            https://github.com/just-containers/s6-overlay/releases/download/v${S6_OVERLAY_VERSION}/s6-overlay-${ARCH}.tar.xz \
    && tar -C / -Jxpf /tmp/s6-overlay-noarch.tar.xz \
    && tar -C / -Jxpf /tmp/s6-overlay-${ARCH}.tar.xz \
    && rm /tmp/s6-overlay-*