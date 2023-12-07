FROM alpine:3.18.5

RUN apk update && apk add --no-cache netcat-openbsd

ENV LISTEN_PORT=6789

WORKDIR /

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]