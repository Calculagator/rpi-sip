# 
FROM alpine:latest
# may need --platform=linux/arm/v7
# or similar for cross-compiling to library

LABEL maintainer="Joel Amunrud <joel@druidic.dev>"

WORKDIR /app

RUN apk add --update --no-cache \
      alsa-lib \
      pjsua 

COPY entrypoint.sh entrypoint.sh
COPY pjsua.conf pjsua.conf

ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["./help"]
