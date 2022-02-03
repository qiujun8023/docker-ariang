FROM alpine:latest as builder

ARG VERSION="1.2.1"

ENV DOWNLOAD_URL=https://github.com/mayswind/AriaNg/releases/download/${VERSION}/AriaNg-${VERSION}.zip
ENV FILE_NAME=AriaNg-${VERSION}.zip

WORKDIR /opt/ariang

RUN set -ex && \
    wget --no-check-certificate -q ${DOWNLOAD_URL} -O ${FILE_NAME} && \
    unzip ${FILE_NAME} && \
    rm ${FILE_NAME}

FROM nginx:stable-alpine

COPY --from=builder /opt/ariang /usr/share/nginx/html