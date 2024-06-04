FROM alpine

RUN apk update && apk add --no-cache curl wget tar jq

RUN LATEST_RELEASE_URL=$(curl -s https://api.github.com/repos/MagaluCloud/mgccli/releases/latest | jq -r '.assets[] | select(.name | contains("linux_amd64.tar.gz")).browser_download_url') && \
    wget $LATEST_RELEASE_URL --quiet -O /tmp/mgccli_linux_amd64.tar.gz && \
    tar -xzf /tmp/mgccli_linux_amd64.tar.gz -C /tmp && \
    mv /tmp/mgc /usr/local/bin/mgc && \
    chmod +x /usr/local/bin/mgc && \
    rm -rf /tmp/*

RUN adduser -D -u 1001 nonroot

USER nonroot

WORKDIR /home/nonroot

CMD ["/bin/sh"]