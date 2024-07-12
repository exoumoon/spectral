FROM itzg/minecraft-server:java17-alpine

# The `fastback` (Fast backups) mod requires `git` to be installed.
# Alpine does not have it by default I guess...
RUN apk add git

ENTRYPOINT [ "/start" ]
HEALTHCHECK --start-period=1m --interval=5s --retries=24 CMD mc-health
