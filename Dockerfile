FROM itzg/minecraft-server:java17-alpine

RUN apk add git

ENTRYPOINT [ "/start" ]
HEALTHCHECK --start-period=1m --interval=5s --retries=24 CMD mc-health
