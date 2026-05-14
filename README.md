# caddy-infomaniak

Caddy built with the [Infomaniak DNS plugin](https://github.com/caddy-dns/infomaniak), published as a Docker image.

## Image

```
ghcr.io/<owner>/<repo>:latest
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