# caddy-infomaniak

Caddy built with the [Infomaniak DNS plugin](https://github.com/caddy-dns/infomaniak), published as a Docker image.

## Image

```
ghcr.io/claudflare/caddy-infomaniak:latest
```

Multi-arch: `linux/amd64`, `linux/arm64`.

## Usage

Example `Caddyfile`:

```
{
    acme_dns infomaniak {env.INFOMANIAK_API_TOKEN}
}

example.com {
    respond "hello"
}
```

## Docker Compose

From the [Caddy docs](https://caddyserver.com/docs/running#docker-compose), with only the `image` replaced:

```yaml
services:
  caddy:
    image: ghcr.io/claudflare/caddy-infomaniak:latest
    restart: unless-stopped
    ports:
      - "80:80"
      - "443:443"
      - "443:443/udp"
    volumes:
      - ./conf:/etc/caddy
      - ./site:/srv
      - caddy_data:/data
      - caddy_config:/config

volumes:
  caddy_data:
  caddy_config:
```