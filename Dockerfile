FROM caddy:2.11.8-builder AS builder

# build Caddy with latest Infomaniak DNS plugin
RUN --mount=type=cache,target=/go/pkg/mod \
    --mount=type=cache,target=/root/.cache/go-build \
    xcaddy build \
      --with github.com/caddy-dns/infomaniak

# final image
FROM caddy:2.11.8

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
